using System;

// namespace System.JobObjects
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum JOB_OBJECT_LIMIT : uint32
		{
			LIMIT_WORKINGSET = 1,
			LIMIT_PROCESS_TIME = 2,
			LIMIT_JOB_TIME = 4,
			LIMIT_ACTIVE_PROCESS = 8,
			LIMIT_AFFINITY = 16,
			LIMIT_PRIORITY_CLASS = 32,
			LIMIT_PRESERVE_JOB_TIME = 64,
			LIMIT_SCHEDULING_CLASS = 128,
			LIMIT_PROCESS_MEMORY = 256,
			LIMIT_JOB_MEMORY = 512,
			LIMIT_JOB_MEMORY_HIGH = 512,
			LIMIT_DIE_ON_UNHANDLED_EXCEPTION = 1024,
			LIMIT_BREAKAWAY_OK = 2048,
			LIMIT_SILENT_BREAKAWAY_OK = 4096,
			LIMIT_KILL_ON_JOB_CLOSE = 8192,
			LIMIT_SUBSET_AFFINITY = 16384,
			LIMIT_JOB_MEMORY_LOW = 32768,
			LIMIT_JOB_READ_BYTES = 65536,
			LIMIT_JOB_WRITE_BYTES = 131072,
			LIMIT_RATE_CONTROL = 262144,
			LIMIT_CPU_RATE_CONTROL = 262144,
			LIMIT_IO_RATE_CONTROL = 524288,
			LIMIT_NET_RATE_CONTROL = 1048576,
			LIMIT_VALID_FLAGS = 524287,
			BASIC_LIMIT_VALID_FLAGS = 255,
			EXTENDED_LIMIT_VALID_FLAGS = 32767,
			NOTIFICATION_LIMIT_VALID_FLAGS = 2064900,
		}
		public enum JOB_OBJECT_UILIMIT : uint32
		{
			NONE = 0,
			HANDLES = 1,
			READCLIPBOARD = 2,
			WRITECLIPBOARD = 4,
			SYSTEMPARAMETERS = 8,
			DISPLAYSETTINGS = 16,
			GLOBALATOMS = 32,
			DESKTOP = 64,
			EXITWINDOWS = 128,
		}
		public enum JOB_OBJECT_SECURITY : uint32
		{
			NO_ADMIN = 1,
			RESTRICTED_TOKEN = 2,
			ONLY_TOKEN = 4,
			FILTER_TOKENS = 8,
			VALID_FLAGS = 15,
		}
		public enum JOB_OBJECT_CPU_RATE_CONTROL : uint32
		{
			OBJECT_CPU_RATE_CONTROL_ENABLE = 1,
			OBJECT_CPU_RATE_CONTROL_WEIGHT_BASED = 2,
			OBJECT_CPU_RATE_CONTROL_HARD_CAP = 4,
			OBJECT_CPU_RATE_CONTROL_NOTIFY = 8,
			OBJECT__CPU_RATE_CONTROL_MIN_MAX_RATE = 16,
		}
		public enum JOB_OBJECT_TERMINATE_AT_END_ACTION : uint32
		{
			TERMINATE_AT_END_OF_JOB = 0,
			POST_AT_END_OF_JOB = 1,
		}
		public enum JOBOBJECT_RATE_CONTROL_TOLERANCE : int32
		{
			Low = 1,
			Medium = 2,
			High = 3,
		}
		public enum JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL : int32
		{
			Short = 1,
			Medium = 2,
			Long = 3,
		}
		public enum JOB_OBJECT_NET_RATE_CONTROL_FLAGS : int32
		{
			ENABLE = 1,
			MAX_BANDWIDTH = 2,
			DSCP_TAG = 4,
			VALID_FLAGS = 7,
		}
		public enum JOB_OBJECT_IO_RATE_CONTROL_FLAGS : int32
		{
			ENABLE = 1,
			STANDALONE_VOLUME = 2,
			FORCE_UNIT_ACCESS_ALL = 4,
			FORCE_UNIT_ACCESS_ON_SOFT_CAP = 8,
			VALID_FLAGS = 15,
		}
		public enum JOBOBJECT_IO_ATTRIBUTION_CONTROL_FLAGS : int32
		{
			ENABLE = 1,
			DISABLE = 2,
			VALID_FLAGS = 3,
		}
		public enum JOBOBJECTINFOCLASS : int32
		{
			JobObjectBasicAccountingInformation = 1,
			JobObjectBasicLimitInformation = 2,
			JobObjectBasicProcessIdList = 3,
			JobObjectBasicUIRestrictions = 4,
			JobObjectSecurityLimitInformation = 5,
			JobObjectEndOfJobTimeInformation = 6,
			JobObjectAssociateCompletionPortInformation = 7,
			JobObjectBasicAndIoAccountingInformation = 8,
			JobObjectExtendedLimitInformation = 9,
			JobObjectJobSetInformation = 10,
			JobObjectGroupInformation = 11,
			JobObjectNotificationLimitInformation = 12,
			JobObjectLimitViolationInformation = 13,
			JobObjectGroupInformationEx = 14,
			JobObjectCpuRateControlInformation = 15,
			JobObjectCompletionFilter = 16,
			JobObjectCompletionCounter = 17,
			JobObjectReserved1Information = 18,
			JobObjectReserved2Information = 19,
			JobObjectReserved3Information = 20,
			JobObjectReserved4Information = 21,
			JobObjectReserved5Information = 22,
			JobObjectReserved6Information = 23,
			JobObjectReserved7Information = 24,
			JobObjectReserved8Information = 25,
			JobObjectReserved9Information = 26,
			JobObjectReserved10Information = 27,
			JobObjectReserved11Information = 28,
			JobObjectReserved12Information = 29,
			JobObjectReserved13Information = 30,
			JobObjectReserved14Information = 31,
			JobObjectNetRateControlInformation = 32,
			JobObjectNotificationLimitInformation2 = 33,
			JobObjectLimitViolationInformation2 = 34,
			JobObjectCreateSilo = 35,
			JobObjectSiloBasicInformation = 36,
			JobObjectReserved15Information = 37,
			JobObjectReserved16Information = 38,
			JobObjectReserved17Information = 39,
			JobObjectReserved18Information = 40,
			JobObjectReserved19Information = 41,
			JobObjectReserved20Information = 42,
			JobObjectReserved21Information = 43,
			JobObjectReserved22Information = 44,
			JobObjectReserved23Information = 45,
			JobObjectReserved24Information = 46,
			JobObjectReserved25Information = 47,
			MaxJobObjectInfoClass = 48,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct JOBOBJECT_IO_RATE_CONTROL_INFORMATION
		{
			public int64 MaxIops;
			public int64 MaxBandwidth;
			public int64 ReservationIops;
			public PWSTR VolumeName;
			public uint32 BaseIoSize;
			public JOB_OBJECT_IO_RATE_CONTROL_FLAGS ControlFlags;
		}
		[CRepr]
		public struct JOB_SET_ARRAY
		{
			public HANDLE JobHandle;
			public uint32 MemberLevel;
			public uint32 Flags;
		}
		[CRepr]
		public struct JOBOBJECT_BASIC_ACCOUNTING_INFORMATION
		{
			public LARGE_INTEGER TotalUserTime;
			public LARGE_INTEGER TotalKernelTime;
			public LARGE_INTEGER ThisPeriodTotalUserTime;
			public LARGE_INTEGER ThisPeriodTotalKernelTime;
			public uint32 TotalPageFaultCount;
			public uint32 TotalProcesses;
			public uint32 ActiveProcesses;
			public uint32 TotalTerminatedProcesses;
		}
		[CRepr]
		public struct JOBOBJECT_BASIC_LIMIT_INFORMATION
		{
			public LARGE_INTEGER PerProcessUserTimeLimit;
			public LARGE_INTEGER PerJobUserTimeLimit;
			public JOB_OBJECT_LIMIT LimitFlags;
			public uint MinimumWorkingSetSize;
			public uint MaximumWorkingSetSize;
			public uint32 ActiveProcessLimit;
			public uint Affinity;
			public uint32 PriorityClass;
			public uint32 SchedulingClass;
		}
		[CRepr]
		public struct JOBOBJECT_EXTENDED_LIMIT_INFORMATION
		{
			public JOBOBJECT_BASIC_LIMIT_INFORMATION BasicLimitInformation;
			public IO_COUNTERS IoInfo;
			public uint ProcessMemoryLimit;
			public uint JobMemoryLimit;
			public uint PeakProcessMemoryUsed;
			public uint PeakJobMemoryUsed;
		}
		[CRepr]
		public struct JOBOBJECT_BASIC_PROCESS_ID_LIST
		{
			public uint32 NumberOfAssignedProcesses;
			public uint32 NumberOfProcessIdsInList;
			public uint[0] ProcessIdList;
		}
		[CRepr]
		public struct JOBOBJECT_BASIC_UI_RESTRICTIONS
		{
			public JOB_OBJECT_UILIMIT UIRestrictionsClass;
		}
		[CRepr]
		public struct JOBOBJECT_SECURITY_LIMIT_INFORMATION
		{
			public JOB_OBJECT_SECURITY SecurityLimitFlags;
			public HANDLE JobToken;
			public TOKEN_GROUPS* SidsToDisable;
			public TOKEN_PRIVILEGES* PrivilegesToDelete;
			public TOKEN_GROUPS* RestrictedSids;
		}
		[CRepr]
		public struct JOBOBJECT_END_OF_JOB_TIME_INFORMATION
		{
			public JOB_OBJECT_TERMINATE_AT_END_ACTION EndOfJobTimeAction;
		}
		[CRepr]
		public struct JOBOBJECT_ASSOCIATE_COMPLETION_PORT
		{
			public void* CompletionKey;
			public HANDLE CompletionPort;
		}
		[CRepr]
		public struct JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION
		{
			public JOBOBJECT_BASIC_ACCOUNTING_INFORMATION BasicInfo;
			public IO_COUNTERS IoInfo;
		}
		[CRepr]
		public struct JOBOBJECT_JOBSET_INFORMATION
		{
			public uint32 MemberLevel;
		}
		[CRepr]
		public struct JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION
		{
			public uint64 IoReadBytesLimit;
			public uint64 IoWriteBytesLimit;
			public LARGE_INTEGER PerJobUserTimeLimit;
			public uint64 JobMemoryLimit;
			public JOBOBJECT_RATE_CONTROL_TOLERANCE RateControlTolerance;
			public JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL RateControlToleranceInterval;
			public JOB_OBJECT_LIMIT LimitFlags;
		}
		[CRepr]
		public struct JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2
		{
			public uint64 IoReadBytesLimit;
			public uint64 IoWriteBytesLimit;
			public LARGE_INTEGER PerJobUserTimeLimit;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public _Anonymous3_e__Union Anonymous3;
			public JOB_OBJECT_LIMIT LimitFlags;
			public JOBOBJECT_RATE_CONTROL_TOLERANCE IoRateControlTolerance;
			public uint64 JobLowMemoryLimit;
			public JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL IoRateControlToleranceInterval;
			public JOBOBJECT_RATE_CONTROL_TOLERANCE NetRateControlTolerance;
			public JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL NetRateControlToleranceInterval;
			
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL RateControlToleranceInterval;
				public JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL CpuRateControlToleranceInterval;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint64 JobHighMemoryLimit;
				public uint64 JobMemoryLimit;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public JOBOBJECT_RATE_CONTROL_TOLERANCE RateControlTolerance;
				public JOBOBJECT_RATE_CONTROL_TOLERANCE CpuRateControlTolerance;
			}
		}
		[CRepr]
		public struct JOBOBJECT_LIMIT_VIOLATION_INFORMATION
		{
			public JOB_OBJECT_LIMIT LimitFlags;
			public JOB_OBJECT_LIMIT ViolationLimitFlags;
			public uint64 IoReadBytes;
			public uint64 IoReadBytesLimit;
			public uint64 IoWriteBytes;
			public uint64 IoWriteBytesLimit;
			public LARGE_INTEGER PerJobUserTime;
			public LARGE_INTEGER PerJobUserTimeLimit;
			public uint64 JobMemory;
			public uint64 JobMemoryLimit;
			public JOBOBJECT_RATE_CONTROL_TOLERANCE RateControlTolerance;
			public JOBOBJECT_RATE_CONTROL_TOLERANCE RateControlToleranceLimit;
		}
		[CRepr]
		public struct JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2
		{
			public JOB_OBJECT_LIMIT LimitFlags;
			public JOB_OBJECT_LIMIT ViolationLimitFlags;
			public uint64 IoReadBytes;
			public uint64 IoReadBytesLimit;
			public uint64 IoWriteBytes;
			public uint64 IoWriteBytesLimit;
			public LARGE_INTEGER PerJobUserTime;
			public LARGE_INTEGER PerJobUserTimeLimit;
			public uint64 JobMemory;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public _Anonymous3_e__Union Anonymous3;
			public uint64 JobLowMemoryLimit;
			public JOBOBJECT_RATE_CONTROL_TOLERANCE IoRateControlTolerance;
			public JOBOBJECT_RATE_CONTROL_TOLERANCE IoRateControlToleranceLimit;
			public JOBOBJECT_RATE_CONTROL_TOLERANCE NetRateControlTolerance;
			public JOBOBJECT_RATE_CONTROL_TOLERANCE NetRateControlToleranceLimit;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public JOBOBJECT_RATE_CONTROL_TOLERANCE RateControlTolerance;
				public JOBOBJECT_RATE_CONTROL_TOLERANCE CpuRateControlTolerance;
			}
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public JOBOBJECT_RATE_CONTROL_TOLERANCE RateControlToleranceLimit;
				public JOBOBJECT_RATE_CONTROL_TOLERANCE CpuRateControlToleranceLimit;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint64 JobHighMemoryLimit;
				public uint64 JobMemoryLimit;
			}
		}
		[CRepr]
		public struct JOBOBJECT_CPU_RATE_CONTROL_INFORMATION
		{
			public JOB_OBJECT_CPU_RATE_CONTROL ControlFlags;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 CpuRate;
				public uint32 Weight;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint16 MinRate;
					public uint16 MaxRate;
				}
			}
		}
		[CRepr]
		public struct JOBOBJECT_NET_RATE_CONTROL_INFORMATION
		{
			public uint64 MaxBandwidth;
			public JOB_OBJECT_NET_RATE_CONTROL_FLAGS ControlFlags;
			public uint8 DscpTag;
		}
		[CRepr]
		public struct JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE
		{
			public int64 MaxIops;
			public int64 MaxBandwidth;
			public int64 ReservationIops;
			public PWSTR VolumeName;
			public uint32 BaseIoSize;
			public JOB_OBJECT_IO_RATE_CONTROL_FLAGS ControlFlags;
			public uint16 VolumeNameLength;
		}
		[CRepr]
		public struct JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE_V2
		{
			public int64 MaxIops;
			public int64 MaxBandwidth;
			public int64 ReservationIops;
			public PWSTR VolumeName;
			public uint32 BaseIoSize;
			public JOB_OBJECT_IO_RATE_CONTROL_FLAGS ControlFlags;
			public uint16 VolumeNameLength;
			public int64 CriticalReservationIops;
			public int64 ReservationBandwidth;
			public int64 CriticalReservationBandwidth;
			public int64 MaxTimePercent;
			public int64 ReservationTimePercent;
			public int64 CriticalReservationTimePercent;
		}
		[CRepr]
		public struct JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE_V3
		{
			public int64 MaxIops;
			public int64 MaxBandwidth;
			public int64 ReservationIops;
			public PWSTR VolumeName;
			public uint32 BaseIoSize;
			public JOB_OBJECT_IO_RATE_CONTROL_FLAGS ControlFlags;
			public uint16 VolumeNameLength;
			public int64 CriticalReservationIops;
			public int64 ReservationBandwidth;
			public int64 CriticalReservationBandwidth;
			public int64 MaxTimePercent;
			public int64 ReservationTimePercent;
			public int64 CriticalReservationTimePercent;
			public int64 SoftMaxIops;
			public int64 SoftMaxBandwidth;
			public int64 SoftMaxTimePercent;
			public int64 LimitExcessNotifyIops;
			public int64 LimitExcessNotifyBandwidth;
			public int64 LimitExcessNotifyTimePercent;
		}
		[CRepr]
		public struct JOBOBJECT_IO_ATTRIBUTION_STATS
		{
			public uint IoCount;
			public uint64 TotalNonOverlappedQueueTime;
			public uint64 TotalNonOverlappedServiceTime;
			public uint64 TotalSize;
		}
		[CRepr]
		public struct JOBOBJECT_IO_ATTRIBUTION_INFORMATION
		{
			public uint32 ControlFlags;
			public JOBOBJECT_IO_ATTRIBUTION_STATS ReadStats;
			public JOBOBJECT_IO_ATTRIBUTION_STATS WriteStats;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsProcessInJob(HANDLE ProcessHandle, HANDLE JobHandle, out BOOL Result);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateJobObjectW(SECURITY_ATTRIBUTES* lpJobAttributes, PWSTR lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeMemoryJobObject(void* Buffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE OpenJobObjectW(uint32 dwDesiredAccess, BOOL bInheritHandle, PWSTR lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AssignProcessToJobObject(HANDLE hJob, HANDLE hProcess);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TerminateJobObject(HANDLE hJob, uint32 uExitCode);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetInformationJobObject(HANDLE hJob, JOBOBJECTINFOCLASS JobObjectInformationClass, void* lpJobObjectInformation, uint32 cbJobObjectInformationLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetIoRateControlInformationJobObject(HANDLE hJob, ref JOBOBJECT_IO_RATE_CONTROL_INFORMATION IoRateControlInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryInformationJobObject(HANDLE hJob, JOBOBJECTINFOCLASS JobObjectInformationClass, void* lpJobObjectInformation, uint32 cbJobObjectInformationLength, uint32* lpReturnLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 QueryIoRateControlInformationJobObject(HANDLE hJob, PWSTR VolumeName, out JOBOBJECT_IO_RATE_CONTROL_INFORMATION* InfoBlocks, out uint32 InfoBlockCount);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UserHandleGrantAccess(HANDLE hUserHandle, HANDLE hJob, BOOL bGrant);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateJobObjectA(SECURITY_ATTRIBUTES* lpJobAttributes, PSTR lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE OpenJobObjectA(uint32 dwDesiredAccess, BOOL bInheritHandle, PSTR lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateJobSet(uint32 NumJob, JOB_SET_ARRAY* UserJobSet, uint32 Flags);
	}
}
