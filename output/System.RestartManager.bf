using System;

// namespace System.RestartManager
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 CCH_RM_SESSION_KEY = 32;
		public const uint32 CCH_RM_MAX_APP_NAME = 255;
		public const uint32 CCH_RM_MAX_SVC_NAME = 63;
		public const int32 RM_INVALID_TS_SESSION = -1;
		public const int32 RM_INVALID_PROCESS = -1;
		
		// --- Enums ---
		
		public enum RM_APP_TYPE : int32
		{
			UnknownApp = 0,
			MainWindow = 1,
			OtherWindow = 2,
			Service = 3,
			Explorer = 4,
			Console = 5,
			Critical = 1000,
		}
		public enum RM_SHUTDOWN_TYPE : int32
		{
			ForceShutdown = 1,
			ShutdownOnlyRegistered = 16,
		}
		public enum RM_APP_STATUS : int32
		{
			Unknown = 0,
			Running = 1,
			Stopped = 2,
			StoppedOther = 4,
			Restarted = 8,
			ErrorOnStop = 16,
			ErrorOnRestart = 32,
			ShutdownMasked = 64,
			RestartMasked = 128,
		}
		public enum RM_REBOOT_REASON : int32
		{
			None = 0,
			PermissionDenied = 1,
			SessionMismatch = 2,
			CriticalProcess = 4,
			CriticalService = 8,
			DetectedSelf = 16,
		}
		public enum RM_FILTER_TRIGGER : int32
		{
			Invalid = 0,
			File = 1,
			Process = 2,
			Service = 3,
		}
		public enum RM_FILTER_ACTION : int32
		{
			InvalidFilterAction = 0,
			NoRestart = 1,
			NoShutdown = 2,
		}
		
		// --- Function Pointers ---
		
		public function void RM_WRITE_STATUS_CALLBACK(uint32 nPercentComplete);
		
		// --- Structs ---
		
		[CRepr]
		public struct RM_UNIQUE_PROCESS
		{
			public uint32 dwProcessId;
			public FILETIME ProcessStartTime;
		}
		[CRepr]
		public struct RM_PROCESS_INFO
		{
			public RM_UNIQUE_PROCESS Process;
			public char16[256] strAppName;
			public char16[64] strServiceShortName;
			public RM_APP_TYPE ApplicationType;
			public uint32 AppStatus;
			public uint32 TSSessionId;
			public BOOL bRestartable;
		}
		[CRepr]
		public struct RM_FILTER_INFO
		{
			public RM_FILTER_ACTION FilterAction;
			public RM_FILTER_TRIGGER FilterTrigger;
			public uint32 cbNextOffset;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PWSTR strFilename;
				public RM_UNIQUE_PROCESS Process;
				public PWSTR strServiceShortName;
			}
		}
		
		// --- Functions ---
		
		[Import("rstrtmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RmStartSession(out uint32 pSessionHandle, uint32 dwSessionFlags, PWSTR strSessionKey);
		[Import("rstrtmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RmJoinSession(out uint32 pSessionHandle, PWSTR strSessionKey);
		[Import("rstrtmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RmEndSession(uint32 dwSessionHandle);
		[Import("rstrtmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RmRegisterResources(uint32 dwSessionHandle, uint32 nFiles, PWSTR* rgsFileNames, uint32 nApplications, RM_UNIQUE_PROCESS* rgApplications, uint32 nServices, PWSTR* rgsServiceNames);
		[Import("rstrtmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RmGetList(uint32 dwSessionHandle, out uint32 pnProcInfoNeeded, out uint32 pnProcInfo, RM_PROCESS_INFO* rgAffectedApps, out uint32 lpdwRebootReasons);
		[Import("rstrtmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RmShutdown(uint32 dwSessionHandle, uint32 lActionFlags, RM_WRITE_STATUS_CALLBACK fnStatus);
		[Import("rstrtmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RmRestart(uint32 dwSessionHandle, uint32 dwRestartFlags, RM_WRITE_STATUS_CALLBACK fnStatus);
		[Import("rstrtmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RmCancelCurrentTask(uint32 dwSessionHandle);
		[Import("rstrtmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RmAddFilter(uint32 dwSessionHandle, PWSTR strModuleName, RM_UNIQUE_PROCESS* pProcess, PWSTR strServiceShortName, RM_FILTER_ACTION FilterAction);
		[Import("rstrtmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RmRemoveFilter(uint32 dwSessionHandle, PWSTR strModuleName, RM_UNIQUE_PROCESS* pProcess, PWSTR strServiceShortName);
		[Import("rstrtmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RmGetFilterList(uint32 dwSessionHandle, uint8* pbFilterBuf, uint32 cbFilterBuf, out uint32 cbFilterBufNeeded);
	}
}
