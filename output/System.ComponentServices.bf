using System;

// namespace System.ComponentServices
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 GUID_STRING_SIZE = 40;
		public const uint32 DATA_NOT_AVAILABLE = 4294967295;
		public const uint32 MTXDM_E_ENLISTRESOURCEFAILED = 2147803392;
		public const uint32 CRR_NO_REASON_SUPPLIED = 0;
		public const uint32 CRR_LIFETIME_LIMIT = 4294967295;
		public const uint32 CRR_ACTIVATION_LIMIT = 4294967294;
		public const uint32 CRR_CALL_LIMIT = 4294967293;
		public const uint32 CRR_MEMORY_LIMIT = 4294967292;
		public const uint32 CRR_RECYCLED_FROM_UI = 4294967291;
		
		// --- Enums ---
		
		public enum COMAdminInUse : int32
		{
			NotInUse = 0,
			InUseByCatalog = 1,
			InUseByRegistryUnknown = 2,
			InUseByRegistryProxyStub = 3,
			InUseByRegistryTypeLib = 4,
			InUseByRegistryClsid = 5,
		}
		public enum COMAdminComponentType : int32
		{
			COMAdmin32BitComponent = 1,
			COMAdmin64BitComponent = 2,
		}
		public enum COMAdminApplicationInstallOptions : int32
		{
			NoUsers = 0,
			Users = 1,
			ForceOverwriteOfFiles = 2,
		}
		public enum COMAdminApplicationExportOptions : int32
		{
			NoUsers = 0,
			Users = 1,
			ApplicationProxy = 2,
			ForceOverwriteOfFiles = 4,
			In10Format = 16,
		}
		public enum COMAdminThreadingModels : int32
		{
			Apartment = 0,
			Free = 1,
			Main = 2,
			Both = 3,
			Neutral = 4,
			NotSpecified = 5,
		}
		public enum COMAdminTransactionOptions : int32
		{
			Ignored = 0,
			None = 1,
			Supported = 2,
			Required = 3,
			RequiresNew = 4,
		}
		public enum COMAdminTxIsolationLevelOptions : int32
		{
			Any = 0,
			ReadUnCommitted = 1,
			ReadCommitted = 2,
			RepeatableRead = 3,
			Serializable = 4,
		}
		public enum COMAdminSynchronizationOptions : int32
		{
			Ignored = 0,
			None = 1,
			Supported = 2,
			Required = 3,
			RequiresNew = 4,
		}
		public enum COMAdminActivationOptions : int32
		{
			Inproc = 0,
			Local = 1,
		}
		public enum COMAdminAccessChecksLevelOptions : int32
		{
			Level = 0,
			ComponentLevel = 1,
		}
		public enum COMAdminAuthenticationLevelOptions : int32
		{
			Default = 0,
			None = 1,
			Connect = 2,
			Call = 3,
			Packet = 4,
			Integrity = 5,
			Privacy = 6,
		}
		public enum COMAdminImpersonationLevelOptions : int32
		{
			Anonymous = 1,
			Identify = 2,
			Impersonate = 3,
			Delegate = 4,
		}
		public enum COMAdminAuthenticationCapabilitiesOptions : int32
		{
			None = 0,
			SecureReference = 2,
			StaticCloaking = 32,
			DynamicCloaking = 64,
		}
		public enum COMAdminOS : int32
		{
			OSNotInitialized = 0,
			OSWindows3_1 = 1,
			OSWindows9x = 2,
			OSWindows2000 = 3,
			OSWindows2000AdvancedServer = 4,
			OSWindows2000Unknown = 5,
			OSUnknown = 6,
			OSWindowsXPPersonal = 11,
			OSWindowsXPProfessional = 12,
			OSWindowsNETStandardServer = 13,
			OSWindowsNETEnterpriseServer = 14,
			OSWindowsNETDatacenterServer = 15,
			OSWindowsNETWebServer = 16,
			OSWindowsLonghornPersonal = 17,
			OSWindowsLonghornProfessional = 18,
			OSWindowsLonghornStandardServer = 19,
			OSWindowsLonghornEnterpriseServer = 20,
			OSWindowsLonghornDatacenterServer = 21,
			OSWindowsLonghornWebServer = 22,
			OSWindows7Personal = 23,
			OSWindows7Professional = 24,
			OSWindows7StandardServer = 25,
			OSWindows7EnterpriseServer = 26,
			OSWindows7DatacenterServer = 27,
			OSWindows7WebServer = 28,
			OSWindows8Personal = 29,
			OSWindows8Professional = 30,
			OSWindows8StandardServer = 31,
			OSWindows8EnterpriseServer = 32,
			OSWindows8DatacenterServer = 33,
			OSWindows8WebServer = 34,
			OSWindowsBluePersonal = 35,
			OSWindowsBlueProfessional = 36,
			OSWindowsBlueStandardServer = 37,
			OSWindowsBlueEnterpriseServer = 38,
			OSWindowsBlueDatacenterServer = 39,
			OSWindowsBlueWebServer = 40,
		}
		public enum COMAdminServiceOptions : int32
		{
			LoadBalanceRouter = 1,
		}
		public enum COMAdminServiceStatusOptions : int32
		{
			Stopped = 0,
			StartPending = 1,
			StopPending = 2,
			Running = 3,
			ContinuePending = 4,
			PausePending = 5,
			Paused = 6,
			UnknownState = 7,
		}
		public enum COMAdminQCMessageAuthenticateOptions : int32
		{
			SecureApps = 0,
			Off = 1,
			On = 2,
		}
		public enum COMAdminFileFlags : int32
		{
			Loadable = 1,
			COM = 2,
			ContainsPS = 4,
			ContainsComp = 8,
			ContainsTLB = 16,
			SelfReg = 32,
			SelfUnReg = 64,
			UnloadableDLL = 128,
			DoesNotExist = 256,
			AlreadyInstalled = 512,
			BadTLB = 1024,
			GetClassObjFailed = 2048,
			ClassNotAvailable = 4096,
			Registrar = 8192,
			NoRegistrar = 16384,
			DLLRegsvrFailed = 32768,
			RegTLBFailed = 65536,
			RegistrarFailed = 131072,
			Error = 262144,
		}
		public enum COMAdminComponentFlags : int32
		{
			TypeInfoFound = 1,
			COMPlusPropertiesFound = 2,
			ProxyFound = 4,
			InterfacesFound = 8,
			AlreadyInstalled = 16,
			NotInApplication = 32,
		}
		public enum COMAdminErrorCodes : int32
		{
			ObjectErrors = -2146368511,
			ObjectInvalid = -2146368510,
			KeyMissing = -2146368509,
			AlreadyInstalled = -2146368508,
			AppFileWriteFail = -2146368505,
			AppFileReadFail = -2146368504,
			AppFileVersion = -2146368503,
			BadPath = -2146368502,
			ApplicationExists = -2146368501,
			RoleExists = -2146368500,
			CantCopyFile = -2146368499,
			NoUser = -2146368497,
			InvalidUserids = -2146368496,
			NoRegistryCLSID = -2146368495,
			BadRegistryProgID = -2146368494,
			AuthenticationLevel = -2146368493,
			UserPasswdNotValid = -2146368492,
			CLSIDOrIIDMismatch = -2146368488,
			RemoteInterface = -2146368487,
			DllRegisterServer = -2146368486,
			NoServerShare = -2146368485,
			DllLoadFailed = -2146368483,
			BadRegistryLibID = -2146368482,
			AppDirNotFound = -2146368481,
			RegistrarFailed = -2146368477,
			CompFileDoesNotExist = -2146368476,
			CompFileLoadDLLFail = -2146368475,
			CompFileGetClassObj = -2146368474,
			CompFileClassNotAvail = -2146368473,
			CompFileBadTLB = -2146368472,
			CompFileNotInstallable = -2146368471,
			NotChangeable = -2146368470,
			NotDeletable = -2146368469,
			Session = -2146368468,
			CompMoveLocked = -2146368467,
			CompMoveBadDest = -2146368466,
			RegisterTLB = -2146368464,
			SystemApp = -2146368461,
			CompFileNoRegistrar = -2146368460,
			CoReqCompInstalled = -2146368459,
			ServiceNotInstalled = -2146368458,
			PropertySaveFailed = -2146368457,
			ObjectExists = -2146368456,
			ComponentExists = -2146368455,
			RegFileCorrupt = -2146368453,
			PropertyOverflow = -2146368452,
			NotInRegistry = -2146368450,
			ObjectNotPoolable = -2146368449,
			ApplidMatchesClsid = -2146368442,
			RoleDoesNotExist = -2146368441,
			StartAppNeedsComponents = -2146368440,
			RequiresDifferentPlatform = -2146368439,
			QueuingServiceNotAvailable = -2146367998,
			ObjectParentMissing = -2146367480,
			ObjectDoesNotExist = -2146367479,
			CanNotExportAppProxy = -2146368438,
			CanNotStartApp = -2146368437,
			CanNotExportSystemApp = -2146368436,
			CanNotSubscribeToComponent = -2146368435,
			AppNotRunning = -2146367478,
			EventClassCannotBeSubscriber = -2146368434,
			LibAppProxyIncompatible = -2146368433,
			BasePartitionOnly = -2146368432,
			DuplicatePartitionName = -2146368425,
			PartitionInUse = -2146368423,
			ImportedComponentsNotAllowed = -2146368421,
			RegdbNotInitialized = -2146368398,
			RegdbNotOpen = -2146368397,
			RegdbSystemErr = -2146368396,
			RegdbAlreadyRunning = -2146368395,
			MigVersionNotSupported = -2146368384,
			MigSchemaNotFound = -2146368383,
			CatBitnessMismatch = -2146368382,
			CatUnacceptableBitness = -2146368381,
			CatWrongAppBitnessBitness = -2146368380,
			CatPauseResumeNotSupported = -2146368379,
			CatServerFault = -2146368378,
			CantRecycleLibraryApps = -2146367473,
			CantRecycleServiceApps = -2146367471,
			ProcessAlreadyRecycled = -2146367470,
			PausedProcessMayNotBeRecycled = -2146367469,
			InvalidPartition = -2146367477,
			PartitionMsiOnly = -2146367463,
			StartAppDisabled = -2146368431,
			CompMoveSource = -2146367460,
			CompMoveDest = -2146367459,
			CompMovePrivate = -2146367458,
			CannotCopyEventClass = -2146367456,
		}
		public enum TRACKING_COLL_TYPE : int32
		{
			PROCESSES = 0,
			APPLICATIONS = 1,
			COMPONENTS = 2,
		}
		public enum DUMPTYPE : int32
		{
			FULL = 0,
			MINI = 1,
			NONE = 2,
		}
		public enum COMPLUS_APPTYPE : int32
		{
			UNKNOWN = -1,
			SERVER = 1,
			LIBRARY = 0,
			SWC = 2,
		}
		public enum GetAppTrackerDataFlags : int32
		{
			PROCESS_EXE_NAME = 1,
			LIBRARY_APPS = 2,
			SWC = 4,
			CLASS_NAME = 8,
			APPLICATION_NAME = 16,
		}
		public enum TransactionVote : int32
		{
			Commit = 0,
			Abort = 1,
		}
		public enum CrmTransactionState : int32
		{
			Active = 0,
			Committed = 1,
			Aborted = 2,
			Indoubt = 3,
		}
		public enum CSC_InheritanceConfig : int32
		{
			Inherit = 0,
			Ignore = 1,
		}
		public enum CSC_ThreadPool : int32
		{
			ThreadPoolNone = 0,
			ThreadPoolInherit = 1,
			STAThreadPool = 2,
			MTAThreadPool = 3,
		}
		public enum CSC_Binding : int32
		{
			NoBinding = 0,
			BindToPoolThread = 1,
		}
		public enum CSC_TransactionConfig : int32
		{
			NoTransaction = 0,
			IfContainerIsTransactional = 1,
			CreateTransactionIfNecessary = 2,
			NewTransaction = 3,
		}
		public enum CSC_SynchronizationConfig : int32
		{
			NoSynchronization = 0,
			IfContainerIsSynchronized = 1,
			NewSynchronizationIfNecessary = 2,
			NewSynchronization = 3,
		}
		public enum CSC_TrackerConfig : int32
		{
			DontUseTracker = 0,
			UseTracker = 1,
		}
		public enum CSC_PartitionConfig : int32
		{
			NoPartition = 0,
			InheritPartition = 1,
			NewPartition = 2,
		}
		public enum CSC_IISIntrinsicsConfig : int32
		{
			NoIISIntrinsics = 0,
			InheritIISIntrinsics = 1,
		}
		public enum CSC_COMTIIntrinsicsConfig : int32
		{
			NoCOMTIIntrinsics = 0,
			InheritCOMTIIntrinsics = 1,
		}
		public enum CSC_SxsConfig : int32
		{
			NoSxs = 0,
			InheritSxs = 1,
			NewSxs = 2,
		}
		public enum AutoSvcs_Error_Constants : uint32
		{
			mtsErrCtxAborted = 2147803138,
			mtsErrCtxAborting = 2147803139,
			mtsErrCtxNoContext = 2147803140,
			mtsErrCtxNotRegistered = 2147803141,
			mtsErrCtxSynchTimeout = 2147803142,
			mtsErrCtxOldReference = 2147803143,
			mtsErrCtxRoleNotFound = 2147803148,
			mtsErrCtxNoSecurity = 2147803149,
			mtsErrCtxWrongThread = 2147803150,
			mtsErrCtxTMNotAvailable = 2147803151,
			comQCErrApplicationNotQueued = 2148599296,
			comQCErrNoQueueableInterfaces = 2148599297,
			comQCErrQueuingServiceNotAvailable = 2148599298,
			comQCErrQueueTransactMismatch = 2148599299,
			comqcErrRecorderMarshalled = 2148599300,
			comqcErrOutParam = 2148599301,
			comqcErrRecorderNotTrusted = 2148599302,
			comqcErrPSLoad = 2148599303,
			comqcErrMarshaledObjSameTxn = 2148599304,
			comqcErrInvalidMessage = 2148599376,
			comqcErrMsmqSidUnavailable = 2148599377,
			comqcErrWrongMsgExtension = 2148599378,
			comqcErrMsmqServiceUnavailable = 2148599379,
			comqcErrMsgNotAuthenticated = 2148599380,
			comqcErrMsmqConnectorUsed = 2148599381,
			comqcErrBadMarshaledObject = 2148599382,
		}
		public enum LockModes : int32
		{
			SetGet = 0,
			Method = 1,
		}
		public enum ReleaseModes : int32
		{
			Standard = 0,
			Process = 1,
		}
		public enum CRMFLAGS : int32
		{
			FORGETTARGET = 1,
			WRITTENDURINGPREPARE = 2,
			WRITTENDURINGCOMMIT = 4,
			WRITTENDURINGABORT = 8,
			WRITTENDURINGRECOVERY = 16,
			WRITTENDURINGREPLAY = 32,
			REPLAYINPROGRESS = 64,
		}
		public enum CRMREGFLAGS : int32
		{
			PREPAREPHASE = 1,
			COMMITPHASE = 2,
			ABORTPHASE = 4,
			ALLPHASES = 7,
			FAILIFINDOUBTSREMAIN = 16,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct COMSVCSEVENTINFO
		{
			public uint32 cbSize;
			public uint32 dwPid;
			public int64 lTime;
			public int32 lMicroTime;
			public int64 perfCount;
			public Guid guidApp;
			public PWSTR sMachineName;
		}
		[CRepr]
		public struct RECYCLE_INFO
		{
			public Guid guidCombaseProcessIdentifier;
			public int64 ProcessStartTime;
			public uint32 dwRecycleLifetimeLimit;
			public uint32 dwRecycleMemoryLimit;
			public uint32 dwRecycleExpirationTimeout;
		}
		[CRepr]
		public struct HANG_INFO
		{
			public BOOL fAppHangMonitorEnabled;
			public BOOL fTerminateOnHang;
			public DUMPTYPE DumpType;
			public uint32 dwHangTimeout;
			public uint32 dwDumpCount;
			public uint32 dwInfoMsgCount;
		}
		[CRepr]
		public struct CAppStatistics
		{
			public uint32 m_cTotalCalls;
			public uint32 m_cTotalInstances;
			public uint32 m_cTotalClasses;
			public uint32 m_cCallsPerSecond;
		}
		[CRepr]
		public struct CAppData
		{
			public uint32 m_idApp;
			public char16[40] m_szAppGuid;
			public uint32 m_dwAppProcessId;
			public CAppStatistics m_AppStatistics;
		}
		[CRepr]
		public struct CCLSIDData
		{
			public Guid m_clsid;
			public uint32 m_cReferences;
			public uint32 m_cBound;
			public uint32 m_cPooled;
			public uint32 m_cInCall;
			public uint32 m_dwRespTime;
			public uint32 m_cCallsCompleted;
			public uint32 m_cCallsFailed;
		}
		[CRepr]
		public struct CCLSIDData2
		{
			public Guid m_clsid;
			public Guid m_appid;
			public Guid m_partid;
			public PWSTR m_pwszAppName;
			public PWSTR m_pwszCtxName;
			public COMPLUS_APPTYPE m_eAppType;
			public uint32 m_cReferences;
			public uint32 m_cBound;
			public uint32 m_cPooled;
			public uint32 m_cInCall;
			public uint32 m_dwRespTime;
			public uint32 m_cCallsCompleted;
			public uint32 m_cCallsFailed;
		}
		[CRepr]
		public struct ApplicationProcessSummary
		{
			public Guid PartitionIdPrimaryApplication;
			public Guid ApplicationIdPrimaryApplication;
			public Guid ApplicationInstanceId;
			public uint32 ProcessId;
			public COMPLUS_APPTYPE Type;
			public PWSTR ProcessExeName;
			public BOOL IsService;
			public BOOL IsPaused;
			public BOOL IsRecycled;
		}
		[CRepr]
		public struct ApplicationProcessStatistics
		{
			public uint32 NumCallsOutstanding;
			public uint32 NumTrackedComponents;
			public uint32 NumComponentInstances;
			public uint32 AvgCallsPerSecond;
			public uint32 Reserved1;
			public uint32 Reserved2;
			public uint32 Reserved3;
			public uint32 Reserved4;
		}
		[CRepr]
		public struct ApplicationProcessRecycleInfo
		{
			public BOOL IsRecyclable;
			public BOOL IsRecycled;
			public FILETIME TimeRecycled;
			public FILETIME TimeToTerminate;
			public int32 RecycleReasonCode;
			public BOOL IsPendingRecycle;
			public BOOL HasAutomaticLifetimeRecycling;
			public FILETIME TimeForAutomaticRecycling;
			public uint32 MemoryLimitInKB;
			public uint32 MemoryUsageInKBLastCheck;
			public uint32 ActivationLimit;
			public uint32 NumActivationsLastReported;
			public uint32 CallLimit;
			public uint32 NumCallsLastReported;
		}
		[CRepr]
		public struct ApplicationSummary
		{
			public Guid ApplicationInstanceId;
			public Guid PartitionId;
			public Guid ApplicationId;
			public COMPLUS_APPTYPE Type;
			public PWSTR ApplicationName;
			public uint32 NumTrackedComponents;
			public uint32 NumComponentInstances;
		}
		[CRepr]
		public struct ComponentSummary
		{
			public Guid ApplicationInstanceId;
			public Guid PartitionId;
			public Guid ApplicationId;
			public Guid Clsid;
			public PWSTR ClassName;
			public PWSTR ApplicationName;
		}
		[CRepr]
		public struct ComponentStatistics
		{
			public uint32 NumInstances;
			public uint32 NumBoundReferences;
			public uint32 NumPooledObjects;
			public uint32 NumObjectsInCall;
			public uint32 AvgResponseTimeInMs;
			public uint32 NumCallsCompletedRecent;
			public uint32 NumCallsFailedRecent;
			public uint32 NumCallsCompletedTotal;
			public uint32 NumCallsFailedTotal;
			public uint32 Reserved1;
			public uint32 Reserved2;
			public uint32 Reserved3;
			public uint32 Reserved4;
		}
		[CRepr]
		public struct ComponentHangMonitorInfo
		{
			public BOOL IsMonitored;
			public BOOL TerminateOnHang;
			public uint32 AvgCallThresholdInMs;
		}
		[CRepr]
		public struct CrmLogRecordRead
		{
			public uint32 dwCrmFlags;
			public uint32 dwSequenceNumber;
			public BLOB blobUserData;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_SecurityIdentity = .(0xecabb0a5, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_SecurityCallers = .(0xecabb0a6, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_SecurityCallContext = .(0xecabb0a7, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_GetSecurityCallContextAppObject = .(0xecabb0a8, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_Dummy30040732 = .(0xecabb0a9, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_TransactionContext = .(0x7999fc25, 0xd3c6, 0x11cf, 0xac, 0xab, 0x00, 0xa0, 0x24, 0xa5, 0x5a, 0xef);
		public const Guid CLSID_TransactionContextEx = .(0x5cb66670, 0xd3d4, 0x11cf, 0xac, 0xab, 0x00, 0xa0, 0x24, 0xa5, 0x5a, 0xef);
		public const Guid CLSID_ByotServerEx = .(0xecabb0aa, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_CServiceConfig = .(0xecabb0c8, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_ServicePool = .(0xecabb0c9, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_ServicePoolConfig = .(0xecabb0ca, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_SharedProperty = .(0x2a005c05, 0xa5de, 0x11cf, 0x9e, 0x66, 0x00, 0xaa, 0x00, 0xa3, 0xf4, 0x64);
		public const Guid CLSID_SharedPropertyGroup = .(0x2a005c0b, 0xa5de, 0x11cf, 0x9e, 0x66, 0x00, 0xaa, 0x00, 0xa3, 0xf4, 0x64);
		public const Guid CLSID_SharedPropertyGroupManager = .(0x2a005c11, 0xa5de, 0x11cf, 0x9e, 0x66, 0x00, 0xaa, 0x00, 0xa3, 0xf4, 0x64);
		public const Guid CLSID_COMEvents = .(0xecabb0ab, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_CoMTSLocator = .(0xecabb0ac, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_MtsGrp = .(0x4b2e958d, 0x0393, 0x11d1, 0xb1, 0xab, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
		public const Guid CLSID_ComServiceEvents = .(0xecabb0c3, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_ComSystemAppEventData = .(0xecabb0c6, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_CRMClerk = .(0xecabb0bd, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_CRMRecoveryClerk = .(0xecabb0be, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_LBEvents = .(0xecabb0c1, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_MessageMover = .(0xecabb0bf, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_DispenserManager = .(0xecabb0c0, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_PoolMgr = .(0xecabafb5, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_EventServer = .(0xecabafbc, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_TrackerServer = .(0xecabafb9, 0x7f19, 0x11d2, 0x97, 0x8e, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
		public const Guid CLSID_AppDomainHelper = .(0xef24f689, 0x14f8, 0x4d92, 0xb4, 0xaf, 0xd7, 0xb1, 0xf0, 0xe7, 0x0f, 0xd4);
		public const Guid CLSID_ClrAssemblyLocator = .(0x458aa3b5, 0x265a, 0x4b75, 0xbc, 0x05, 0x9b, 0xea, 0x46, 0x30, 0xcf, 0x18);
		public const Guid CLSID_COMAdminCatalog = .(0xf618c514, 0xdfb8, 0x11d1, 0xa2, 0xcf, 0x00, 0x80, 0x5f, 0xc7, 0x92, 0x35);
		public const Guid CLSID_COMAdminCatalogObject = .(0xf618c515, 0xdfb8, 0x11d1, 0xa2, 0xcf, 0x00, 0x80, 0x5f, 0xc7, 0x92, 0x35);
		public const Guid CLSID_COMAdminCatalogCollection = .(0xf618c516, 0xdfb8, 0x11d1, 0xa2, 0xcf, 0x00, 0x80, 0x5f, 0xc7, 0x92, 0x35);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ICOMAdminCatalog : IDispatch
		{
			public const new Guid IID = .(0xdd662187, 0xdfc2, 0x11d1, 0xa2, 0xcf, 0x00, 0x80, 0x5f, 0xc7, 0x92, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCollection(BSTR bstrCollName, out IDispatch* ppCatalogCollection) mut => VT.GetCollection(ref this, bstrCollName, out ppCatalogCollection);
			public HRESULT Connect(BSTR bstrCatalogServerName, out IDispatch* ppCatalogCollection) mut => VT.Connect(ref this, bstrCatalogServerName, out ppCatalogCollection);
			public HRESULT get_MajorVersion(out int32 plMajorVersion) mut => VT.get_MajorVersion(ref this, out plMajorVersion);
			public HRESULT get_MinorVersion(out int32 plMinorVersion) mut => VT.get_MinorVersion(ref this, out plMinorVersion);
			public HRESULT GetCollectionByQuery(BSTR bstrCollName, ref SAFEARRAY* ppsaVarQuery, out IDispatch* ppCatalogCollection) mut => VT.GetCollectionByQuery(ref this, bstrCollName, ref ppsaVarQuery, out ppCatalogCollection);
			public HRESULT ImportComponent(BSTR bstrApplIDOrName, BSTR bstrCLSIDOrProgID) mut => VT.ImportComponent(ref this, bstrApplIDOrName, bstrCLSIDOrProgID);
			public HRESULT InstallComponent(BSTR bstrApplIDOrName, BSTR bstrDLL, BSTR bstrTLB, BSTR bstrPSDLL) mut => VT.InstallComponent(ref this, bstrApplIDOrName, bstrDLL, bstrTLB, bstrPSDLL);
			public HRESULT ShutdownApplication(BSTR bstrApplIDOrName) mut => VT.ShutdownApplication(ref this, bstrApplIDOrName);
			public HRESULT ExportApplication(BSTR bstrApplIDOrName, BSTR bstrApplicationFile, COMAdminApplicationExportOptions lOptions) mut => VT.ExportApplication(ref this, bstrApplIDOrName, bstrApplicationFile, lOptions);
			public HRESULT InstallApplication(BSTR bstrApplicationFile, BSTR bstrDestinationDirectory, COMAdminApplicationInstallOptions lOptions, BSTR bstrUserId, BSTR bstrPassword, BSTR bstrRSN) mut => VT.InstallApplication(ref this, bstrApplicationFile, bstrDestinationDirectory, lOptions, bstrUserId, bstrPassword, bstrRSN);
			public HRESULT StopRouter() mut => VT.StopRouter(ref this);
			public HRESULT RefreshRouter() mut => VT.RefreshRouter(ref this);
			public HRESULT StartRouter() mut => VT.StartRouter(ref this);
			public HRESULT Reserved1() mut => VT.Reserved1(ref this);
			public HRESULT Reserved2() mut => VT.Reserved2(ref this);
			public HRESULT InstallMultipleComponents(BSTR bstrApplIDOrName, ref SAFEARRAY* ppsaVarFileNames, ref SAFEARRAY* ppsaVarCLSIDs) mut => VT.InstallMultipleComponents(ref this, bstrApplIDOrName, ref ppsaVarFileNames, ref ppsaVarCLSIDs);
			public HRESULT GetMultipleComponentsInfo(BSTR bstrApplIdOrName, ref SAFEARRAY* ppsaVarFileNames, out SAFEARRAY* ppsaVarCLSIDs, out SAFEARRAY* ppsaVarClassNames, out SAFEARRAY* ppsaVarFileFlags, out SAFEARRAY* ppsaVarComponentFlags) mut => VT.GetMultipleComponentsInfo(ref this, bstrApplIdOrName, ref ppsaVarFileNames, out ppsaVarCLSIDs, out ppsaVarClassNames, out ppsaVarFileFlags, out ppsaVarComponentFlags);
			public HRESULT RefreshComponents() mut => VT.RefreshComponents(ref this);
			public HRESULT BackupREGDB(BSTR bstrBackupFilePath) mut => VT.BackupREGDB(ref this, bstrBackupFilePath);
			public HRESULT RestoreREGDB(BSTR bstrBackupFilePath) mut => VT.RestoreREGDB(ref this, bstrBackupFilePath);
			public HRESULT QueryApplicationFile(BSTR bstrApplicationFile, out BSTR pbstrApplicationName, out BSTR pbstrApplicationDescription, out int16 pbHasUsers, out int16 pbIsProxy, out SAFEARRAY* ppsaVarFileNames) mut => VT.QueryApplicationFile(ref this, bstrApplicationFile, out pbstrApplicationName, out pbstrApplicationDescription, out pbHasUsers, out pbIsProxy, out ppsaVarFileNames);
			public HRESULT StartApplication(BSTR bstrApplIdOrName) mut => VT.StartApplication(ref this, bstrApplIdOrName);
			public HRESULT ServiceCheck(int32 lService, out int32 plStatus) mut => VT.ServiceCheck(ref this, lService, out plStatus);
			public HRESULT InstallMultipleEventClasses(BSTR bstrApplIdOrName, ref SAFEARRAY* ppsaVarFileNames, ref SAFEARRAY* ppsaVarCLSIDS) mut => VT.InstallMultipleEventClasses(ref this, bstrApplIdOrName, ref ppsaVarFileNames, ref ppsaVarCLSIDS);
			public HRESULT InstallEventClass(BSTR bstrApplIdOrName, BSTR bstrDLL, BSTR bstrTLB, BSTR bstrPSDLL) mut => VT.InstallEventClass(ref this, bstrApplIdOrName, bstrDLL, bstrTLB, bstrPSDLL);
			public HRESULT GetEventClassesForIID(BSTR bstrIID, out SAFEARRAY* ppsaVarCLSIDs, out SAFEARRAY* ppsaVarProgIDs, out SAFEARRAY* ppsaVarDescriptions) mut => VT.GetEventClassesForIID(ref this, bstrIID, out ppsaVarCLSIDs, out ppsaVarProgIDs, out ppsaVarDescriptions);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrCollName, out IDispatch* ppCatalogCollection) GetCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrCatalogServerName, out IDispatch* ppCatalogCollection) Connect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, out int32 plMajorVersion) get_MajorVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, out int32 plMinorVersion) get_MinorVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrCollName, ref SAFEARRAY* ppsaVarQuery, out IDispatch* ppCatalogCollection) GetCollectionByQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrApplIDOrName, BSTR bstrCLSIDOrProgID) ImportComponent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrApplIDOrName, BSTR bstrDLL, BSTR bstrTLB, BSTR bstrPSDLL) InstallComponent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrApplIDOrName) ShutdownApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrApplIDOrName, BSTR bstrApplicationFile, COMAdminApplicationExportOptions lOptions) ExportApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrApplicationFile, BSTR bstrDestinationDirectory, COMAdminApplicationInstallOptions lOptions, BSTR bstrUserId, BSTR bstrPassword, BSTR bstrRSN) InstallApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self) StopRouter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self) RefreshRouter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self) StartRouter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self) Reserved1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self) Reserved2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrApplIDOrName, ref SAFEARRAY* ppsaVarFileNames, ref SAFEARRAY* ppsaVarCLSIDs) InstallMultipleComponents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrApplIdOrName, ref SAFEARRAY* ppsaVarFileNames, out SAFEARRAY* ppsaVarCLSIDs, out SAFEARRAY* ppsaVarClassNames, out SAFEARRAY* ppsaVarFileFlags, out SAFEARRAY* ppsaVarComponentFlags) GetMultipleComponentsInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self) RefreshComponents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrBackupFilePath) BackupREGDB;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrBackupFilePath) RestoreREGDB;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrApplicationFile, out BSTR pbstrApplicationName, out BSTR pbstrApplicationDescription, out int16 pbHasUsers, out int16 pbIsProxy, out SAFEARRAY* ppsaVarFileNames) QueryApplicationFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrApplIdOrName) StartApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, int32 lService, out int32 plStatus) ServiceCheck;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrApplIdOrName, ref SAFEARRAY* ppsaVarFileNames, ref SAFEARRAY* ppsaVarCLSIDS) InstallMultipleEventClasses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrApplIdOrName, BSTR bstrDLL, BSTR bstrTLB, BSTR bstrPSDLL) InstallEventClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog self, BSTR bstrIID, out SAFEARRAY* ppsaVarCLSIDs, out SAFEARRAY* ppsaVarProgIDs, out SAFEARRAY* ppsaVarDescriptions) GetEventClassesForIID;
			}
		}
		[CRepr]
		public struct ICOMAdminCatalog2 : ICOMAdminCatalog
		{
			public const new Guid IID = .(0x790c6e0b, 0x9194, 0x4cc9, 0x94, 0x26, 0xa4, 0x8a, 0x63, 0x18, 0x56, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCollectionByQuery2(BSTR bstrCollectionName, ref VARIANT pVarQueryStrings, out IDispatch* ppCatalogCollection) mut => VT.GetCollectionByQuery2(ref this, bstrCollectionName, ref pVarQueryStrings, out ppCatalogCollection);
			public HRESULT GetApplicationInstanceIDFromProcessID(int32 lProcessID, out BSTR pbstrApplicationInstanceID) mut => VT.GetApplicationInstanceIDFromProcessID(ref this, lProcessID, out pbstrApplicationInstanceID);
			public HRESULT ShutdownApplicationInstances(ref VARIANT pVarApplicationInstanceID) mut => VT.ShutdownApplicationInstances(ref this, ref pVarApplicationInstanceID);
			public HRESULT PauseApplicationInstances(ref VARIANT pVarApplicationInstanceID) mut => VT.PauseApplicationInstances(ref this, ref pVarApplicationInstanceID);
			public HRESULT ResumeApplicationInstances(ref VARIANT pVarApplicationInstanceID) mut => VT.ResumeApplicationInstances(ref this, ref pVarApplicationInstanceID);
			public HRESULT RecycleApplicationInstances(ref VARIANT pVarApplicationInstanceID, int32 lReasonCode) mut => VT.RecycleApplicationInstances(ref this, ref pVarApplicationInstanceID, lReasonCode);
			public HRESULT AreApplicationInstancesPaused(ref VARIANT pVarApplicationInstanceID, out int16 pVarBoolPaused) mut => VT.AreApplicationInstancesPaused(ref this, ref pVarApplicationInstanceID, out pVarBoolPaused);
			public HRESULT DumpApplicationInstance(BSTR bstrApplicationInstanceID, BSTR bstrDirectory, int32 lMaxImages, out BSTR pbstrDumpFile) mut => VT.DumpApplicationInstance(ref this, bstrApplicationInstanceID, bstrDirectory, lMaxImages, out pbstrDumpFile);
			public HRESULT get_IsApplicationInstanceDumpSupported(out int16 pVarBoolDumpSupported) mut => VT.get_IsApplicationInstanceDumpSupported(ref this, out pVarBoolDumpSupported);
			public HRESULT CreateServiceForApplication(BSTR bstrApplicationIDOrName, BSTR bstrServiceName, BSTR bstrStartType, BSTR bstrErrorControl, BSTR bstrDependencies, BSTR bstrRunAs, BSTR bstrPassword, int16 bDesktopOk) mut => VT.CreateServiceForApplication(ref this, bstrApplicationIDOrName, bstrServiceName, bstrStartType, bstrErrorControl, bstrDependencies, bstrRunAs, bstrPassword, bDesktopOk);
			public HRESULT DeleteServiceForApplication(BSTR bstrApplicationIDOrName) mut => VT.DeleteServiceForApplication(ref this, bstrApplicationIDOrName);
			public HRESULT GetPartitionID(BSTR bstrApplicationIDOrName, out BSTR pbstrPartitionID) mut => VT.GetPartitionID(ref this, bstrApplicationIDOrName, out pbstrPartitionID);
			public HRESULT GetPartitionName(BSTR bstrApplicationIDOrName, out BSTR pbstrPartitionName) mut => VT.GetPartitionName(ref this, bstrApplicationIDOrName, out pbstrPartitionName);
			public HRESULT put_CurrentPartition(BSTR bstrPartitionIDOrName) mut => VT.put_CurrentPartition(ref this, bstrPartitionIDOrName);
			public HRESULT get_CurrentPartitionID(out BSTR pbstrPartitionID) mut => VT.get_CurrentPartitionID(ref this, out pbstrPartitionID);
			public HRESULT get_CurrentPartitionName(out BSTR pbstrPartitionName) mut => VT.get_CurrentPartitionName(ref this, out pbstrPartitionName);
			public HRESULT get_GlobalPartitionID(out BSTR pbstrGlobalPartitionID) mut => VT.get_GlobalPartitionID(ref this, out pbstrGlobalPartitionID);
			public HRESULT FlushPartitionCache() mut => VT.FlushPartitionCache(ref this);
			public HRESULT CopyApplications(BSTR bstrSourcePartitionIDOrName, ref VARIANT pVarApplicationID, BSTR bstrDestinationPartitionIDOrName) mut => VT.CopyApplications(ref this, bstrSourcePartitionIDOrName, ref pVarApplicationID, bstrDestinationPartitionIDOrName);
			public HRESULT CopyComponents(BSTR bstrSourceApplicationIDOrName, ref VARIANT pVarCLSIDOrProgID, BSTR bstrDestinationApplicationIDOrName) mut => VT.CopyComponents(ref this, bstrSourceApplicationIDOrName, ref pVarCLSIDOrProgID, bstrDestinationApplicationIDOrName);
			public HRESULT MoveComponents(BSTR bstrSourceApplicationIDOrName, ref VARIANT pVarCLSIDOrProgID, BSTR bstrDestinationApplicationIDOrName) mut => VT.MoveComponents(ref this, bstrSourceApplicationIDOrName, ref pVarCLSIDOrProgID, bstrDestinationApplicationIDOrName);
			public HRESULT AliasComponent(BSTR bstrSrcApplicationIDOrName, BSTR bstrCLSIDOrProgID, BSTR bstrDestApplicationIDOrName, BSTR bstrNewProgId, BSTR bstrNewClsid) mut => VT.AliasComponent(ref this, bstrSrcApplicationIDOrName, bstrCLSIDOrProgID, bstrDestApplicationIDOrName, bstrNewProgId, bstrNewClsid);
			public HRESULT IsSafeToDelete(BSTR bstrDllName, out COMAdminInUse pCOMAdminInUse) mut => VT.IsSafeToDelete(ref this, bstrDllName, out pCOMAdminInUse);
			public HRESULT ImportUnconfiguredComponents(BSTR bstrApplicationIDOrName, ref VARIANT pVarCLSIDOrProgID, ref VARIANT pVarComponentType) mut => VT.ImportUnconfiguredComponents(ref this, bstrApplicationIDOrName, ref pVarCLSIDOrProgID, ref pVarComponentType);
			public HRESULT PromoteUnconfiguredComponents(BSTR bstrApplicationIDOrName, ref VARIANT pVarCLSIDOrProgID, ref VARIANT pVarComponentType) mut => VT.PromoteUnconfiguredComponents(ref this, bstrApplicationIDOrName, ref pVarCLSIDOrProgID, ref pVarComponentType);
			public HRESULT ImportComponents(BSTR bstrApplicationIDOrName, ref VARIANT pVarCLSIDOrProgID, ref VARIANT pVarComponentType) mut => VT.ImportComponents(ref this, bstrApplicationIDOrName, ref pVarCLSIDOrProgID, ref pVarComponentType);
			public HRESULT get_Is64BitCatalogServer(out int16 pbIs64Bit) mut => VT.get_Is64BitCatalogServer(ref this, out pbIs64Bit);
			public HRESULT ExportPartition(BSTR bstrPartitionIDOrName, BSTR bstrPartitionFileName, COMAdminApplicationExportOptions lOptions) mut => VT.ExportPartition(ref this, bstrPartitionIDOrName, bstrPartitionFileName, lOptions);
			public HRESULT InstallPartition(BSTR bstrFileName, BSTR bstrDestDirectory, COMAdminApplicationInstallOptions lOptions, BSTR bstrUserID, BSTR bstrPassword, BSTR bstrRSN) mut => VT.InstallPartition(ref this, bstrFileName, bstrDestDirectory, lOptions, bstrUserID, bstrPassword, bstrRSN);
			public HRESULT QueryApplicationFile2(BSTR bstrApplicationFile, out IDispatch* ppFilesForImport) mut => VT.QueryApplicationFile2(ref this, bstrApplicationFile, out ppFilesForImport);
			public HRESULT GetComponentVersionCount(BSTR bstrCLSIDOrProgID, out int32 plVersionCount) mut => VT.GetComponentVersionCount(ref this, bstrCLSIDOrProgID, out plVersionCount);

			[CRepr]
			public struct VTable : ICOMAdminCatalog.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrCollectionName, ref VARIANT pVarQueryStrings, out IDispatch* ppCatalogCollection) GetCollectionByQuery2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, int32 lProcessID, out BSTR pbstrApplicationInstanceID) GetApplicationInstanceIDFromProcessID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, ref VARIANT pVarApplicationInstanceID) ShutdownApplicationInstances;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, ref VARIANT pVarApplicationInstanceID) PauseApplicationInstances;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, ref VARIANT pVarApplicationInstanceID) ResumeApplicationInstances;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, ref VARIANT pVarApplicationInstanceID, int32 lReasonCode) RecycleApplicationInstances;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, ref VARIANT pVarApplicationInstanceID, out int16 pVarBoolPaused) AreApplicationInstancesPaused;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrApplicationInstanceID, BSTR bstrDirectory, int32 lMaxImages, out BSTR pbstrDumpFile) DumpApplicationInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, out int16 pVarBoolDumpSupported) get_IsApplicationInstanceDumpSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrApplicationIDOrName, BSTR bstrServiceName, BSTR bstrStartType, BSTR bstrErrorControl, BSTR bstrDependencies, BSTR bstrRunAs, BSTR bstrPassword, int16 bDesktopOk) CreateServiceForApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrApplicationIDOrName) DeleteServiceForApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrApplicationIDOrName, out BSTR pbstrPartitionID) GetPartitionID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrApplicationIDOrName, out BSTR pbstrPartitionName) GetPartitionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrPartitionIDOrName) put_CurrentPartition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, out BSTR pbstrPartitionID) get_CurrentPartitionID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, out BSTR pbstrPartitionName) get_CurrentPartitionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, out BSTR pbstrGlobalPartitionID) get_GlobalPartitionID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self) FlushPartitionCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrSourcePartitionIDOrName, ref VARIANT pVarApplicationID, BSTR bstrDestinationPartitionIDOrName) CopyApplications;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrSourceApplicationIDOrName, ref VARIANT pVarCLSIDOrProgID, BSTR bstrDestinationApplicationIDOrName) CopyComponents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrSourceApplicationIDOrName, ref VARIANT pVarCLSIDOrProgID, BSTR bstrDestinationApplicationIDOrName) MoveComponents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrSrcApplicationIDOrName, BSTR bstrCLSIDOrProgID, BSTR bstrDestApplicationIDOrName, BSTR bstrNewProgId, BSTR bstrNewClsid) AliasComponent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrDllName, out COMAdminInUse pCOMAdminInUse) IsSafeToDelete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrApplicationIDOrName, ref VARIANT pVarCLSIDOrProgID, ref VARIANT pVarComponentType) ImportUnconfiguredComponents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrApplicationIDOrName, ref VARIANT pVarCLSIDOrProgID, ref VARIANT pVarComponentType) PromoteUnconfiguredComponents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrApplicationIDOrName, ref VARIANT pVarCLSIDOrProgID, ref VARIANT pVarComponentType) ImportComponents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, out int16 pbIs64Bit) get_Is64BitCatalogServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrPartitionIDOrName, BSTR bstrPartitionFileName, COMAdminApplicationExportOptions lOptions) ExportPartition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrFileName, BSTR bstrDestDirectory, COMAdminApplicationInstallOptions lOptions, BSTR bstrUserID, BSTR bstrPassword, BSTR bstrRSN) InstallPartition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrApplicationFile, out IDispatch* ppFilesForImport) QueryApplicationFile2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMAdminCatalog2 self, BSTR bstrCLSIDOrProgID, out int32 plVersionCount) GetComponentVersionCount;
			}
		}
		[CRepr]
		public struct ICatalogObject : IDispatch
		{
			public const new Guid IID = .(0x6eb22871, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(BSTR bstrPropName, out VARIANT pvarRetVal) mut => VT.get_Value(ref this, bstrPropName, out pvarRetVal);
			public HRESULT put_Value(BSTR bstrPropName, VARIANT val) mut => VT.put_Value(ref this, bstrPropName, val);
			public HRESULT get_Key(out VARIANT pvarRetVal) mut => VT.get_Key(ref this, out pvarRetVal);
			public HRESULT get_Name(out VARIANT pvarRetVal) mut => VT.get_Name(ref this, out pvarRetVal);
			public HRESULT IsPropertyReadOnly(BSTR bstrPropName, out int16 pbRetVal) mut => VT.IsPropertyReadOnly(ref this, bstrPropName, out pbRetVal);
			public HRESULT get_Valid(out int16 pbRetVal) mut => VT.get_Valid(ref this, out pbRetVal);
			public HRESULT IsPropertyWriteOnly(BSTR bstrPropName, out int16 pbRetVal) mut => VT.IsPropertyWriteOnly(ref this, bstrPropName, out pbRetVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogObject self, BSTR bstrPropName, out VARIANT pvarRetVal) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogObject self, BSTR bstrPropName, VARIANT val) put_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogObject self, out VARIANT pvarRetVal) get_Key;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogObject self, out VARIANT pvarRetVal) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogObject self, BSTR bstrPropName, out int16 pbRetVal) IsPropertyReadOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogObject self, out int16 pbRetVal) get_Valid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogObject self, BSTR bstrPropName, out int16 pbRetVal) IsPropertyWriteOnly;
			}
		}
		[CRepr]
		public struct ICatalogCollection : IDispatch
		{
			public const new Guid IID = .(0x6eb22872, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* ppEnumVariant) mut => VT.get__NewEnum(ref this, out ppEnumVariant);
			public HRESULT get_Item(int32 lIndex, out IDispatch* ppCatalogObject) mut => VT.get_Item(ref this, lIndex, out ppCatalogObject);
			public HRESULT get_Count(out int32 plObjectCount) mut => VT.get_Count(ref this, out plObjectCount);
			public HRESULT Remove(int32 lIndex) mut => VT.Remove(ref this, lIndex);
			public HRESULT Add(out IDispatch* ppCatalogObject) mut => VT.Add(ref this, out ppCatalogObject);
			public HRESULT Populate() mut => VT.Populate(ref this);
			public HRESULT SaveChanges(out int32 pcChanges) mut => VT.SaveChanges(ref this, out pcChanges);
			public HRESULT GetCollection(BSTR bstrCollName, VARIANT varObjectKey, out IDispatch* ppCatalogCollection) mut => VT.GetCollection(ref this, bstrCollName, varObjectKey, out ppCatalogCollection);
			public HRESULT get_Name(out VARIANT pVarNamel) mut => VT.get_Name(ref this, out pVarNamel);
			public HRESULT get_AddEnabled(out int16 pVarBool) mut => VT.get_AddEnabled(ref this, out pVarBool);
			public HRESULT get_RemoveEnabled(out int16 pVarBool) mut => VT.get_RemoveEnabled(ref this, out pVarBool);
			public HRESULT GetUtilInterface(out IDispatch* ppIDispatch) mut => VT.GetUtilInterface(ref this, out ppIDispatch);
			public HRESULT get_DataStoreMajorVersion(out int32 plMajorVersion) mut => VT.get_DataStoreMajorVersion(ref this, out plMajorVersion);
			public HRESULT get_DataStoreMinorVersion(out int32 plMinorVersionl) mut => VT.get_DataStoreMinorVersion(ref this, out plMinorVersionl);
			public HRESULT PopulateByKey(ref SAFEARRAY psaKeys) mut => VT.PopulateByKey(ref this, ref psaKeys);
			public HRESULT PopulateByQuery(BSTR bstrQueryString, int32 lQueryType) mut => VT.PopulateByQuery(ref this, bstrQueryString, lQueryType);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, out IUnknown* ppEnumVariant) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, int32 lIndex, out IDispatch* ppCatalogObject) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, out int32 plObjectCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, int32 lIndex) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, out IDispatch* ppCatalogObject) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self) Populate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, out int32 pcChanges) SaveChanges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, BSTR bstrCollName, VARIANT varObjectKey, out IDispatch* ppCatalogCollection) GetCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, out VARIANT pVarNamel) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, out int16 pVarBool) get_AddEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, out int16 pVarBool) get_RemoveEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, out IDispatch* ppIDispatch) GetUtilInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, out int32 plMajorVersion) get_DataStoreMajorVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, out int32 plMinorVersionl) get_DataStoreMinorVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, ref SAFEARRAY psaKeys) PopulateByKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalogCollection self, BSTR bstrQueryString, int32 lQueryType) PopulateByQuery;
			}
		}
		[CRepr]
		public struct ISecurityIdentityColl : IDispatch
		{
			public const new Guid IID = .(0xcafc823c, 0xb441, 0x11d1, 0xb8, 0x2b, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
			public HRESULT get_Item(BSTR name, out VARIANT pItem) mut => VT.get_Item(ref this, name, out pItem);
			public HRESULT get__NewEnum(IUnknown** ppEnum) mut => VT.get__NewEnum(ref this, ppEnum);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityIdentityColl self, out int32 plCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityIdentityColl self, BSTR name, out VARIANT pItem) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityIdentityColl self, IUnknown** ppEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISecurityCallersColl : IDispatch
		{
			public const new Guid IID = .(0xcafc823d, 0xb441, 0x11d1, 0xb8, 0x2b, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
			public HRESULT get_Item(int32 lIndex, ISecurityIdentityColl** pObj) mut => VT.get_Item(ref this, lIndex, pObj);
			public HRESULT get__NewEnum(IUnknown** ppEnum) mut => VT.get__NewEnum(ref this, ppEnum);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityCallersColl self, out int32 plCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityCallersColl self, int32 lIndex, ISecurityIdentityColl** pObj) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityCallersColl self, IUnknown** ppEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISecurityCallContext : IDispatch
		{
			public const new Guid IID = .(0xcafc823e, 0xb441, 0x11d1, 0xb8, 0x2b, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
			public HRESULT get_Item(BSTR name, out VARIANT pItem) mut => VT.get_Item(ref this, name, out pItem);
			public HRESULT get__NewEnum(IUnknown** ppEnum) mut => VT.get__NewEnum(ref this, ppEnum);
			public HRESULT IsCallerInRole(BSTR bstrRole, out int16 pfInRole) mut => VT.IsCallerInRole(ref this, bstrRole, out pfInRole);
			public HRESULT IsSecurityEnabled(out int16 pfIsEnabled) mut => VT.IsSecurityEnabled(ref this, out pfIsEnabled);
			public HRESULT IsUserInRole(ref VARIANT pUser, BSTR bstrRole, out int16 pfInRole) mut => VT.IsUserInRole(ref this, ref pUser, bstrRole, out pfInRole);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityCallContext self, out int32 plCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityCallContext self, BSTR name, out VARIANT pItem) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityCallContext self, IUnknown** ppEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityCallContext self, BSTR bstrRole, out int16 pfInRole) IsCallerInRole;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityCallContext self, out int16 pfIsEnabled) IsSecurityEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityCallContext self, ref VARIANT pUser, BSTR bstrRole, out int16 pfInRole) IsUserInRole;
			}
		}
		[CRepr]
		public struct IGetSecurityCallContext : IDispatch
		{
			public const new Guid IID = .(0xcafc823f, 0xb441, 0x11d1, 0xb8, 0x2b, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSecurityCallContext(ISecurityCallContext** ppObject) mut => VT.GetSecurityCallContext(ref this, ppObject);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetSecurityCallContext self, ISecurityCallContext** ppObject) GetSecurityCallContext;
			}
		}
		[CRepr]
		public struct SecurityProperty : IDispatch
		{
			public const new Guid IID = .(0xe74a7215, 0x014d, 0x11d1, 0xa6, 0x3c, 0x00, 0xa0, 0xc9, 0x11, 0xb4, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDirectCallerName(BSTR* bstrUserName) mut => VT.GetDirectCallerName(ref this, bstrUserName);
			public HRESULT GetDirectCreatorName(BSTR* bstrUserName) mut => VT.GetDirectCreatorName(ref this, bstrUserName);
			public HRESULT GetOriginalCallerName(BSTR* bstrUserName) mut => VT.GetOriginalCallerName(ref this, bstrUserName);
			public HRESULT GetOriginalCreatorName(BSTR* bstrUserName) mut => VT.GetOriginalCreatorName(ref this, bstrUserName);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SecurityProperty self, BSTR* bstrUserName) GetDirectCallerName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SecurityProperty self, BSTR* bstrUserName) GetDirectCreatorName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SecurityProperty self, BSTR* bstrUserName) GetOriginalCallerName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref SecurityProperty self, BSTR* bstrUserName) GetOriginalCreatorName;
			}
		}
		[CRepr]
		public struct ContextInfo : IDispatch
		{
			public const new Guid IID = .(0x19a5a02c, 0x0ac8, 0x11d2, 0xb2, 0x86, 0x00, 0xc0, 0x4f, 0x8e, 0xf9, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsInTransaction(out int16 pbIsInTx) mut => VT.IsInTransaction(ref this, out pbIsInTx);
			public HRESULT GetTransaction(IUnknown** ppTx) mut => VT.GetTransaction(ref this, ppTx);
			public HRESULT GetTransactionId(BSTR* pbstrTxId) mut => VT.GetTransactionId(ref this, pbstrTxId);
			public HRESULT GetActivityId(BSTR* pbstrActivityId) mut => VT.GetActivityId(ref this, pbstrActivityId);
			public HRESULT GetContextId(BSTR* pbstrCtxId) mut => VT.GetContextId(ref this, pbstrCtxId);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ContextInfo self, out int16 pbIsInTx) IsInTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ContextInfo self, IUnknown** ppTx) GetTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ContextInfo self, BSTR* pbstrTxId) GetTransactionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ContextInfo self, BSTR* pbstrActivityId) GetActivityId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ContextInfo self, BSTR* pbstrCtxId) GetContextId;
			}
		}
		[CRepr]
		public struct ContextInfo2 : ContextInfo
		{
			public const new Guid IID = .(0xc99d6e75, 0x2375, 0x11d4, 0x83, 0x31, 0x00, 0xc0, 0x4f, 0x60, 0x55, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPartitionId(BSTR* __MIDL__ContextInfo20000) mut => VT.GetPartitionId(ref this, __MIDL__ContextInfo20000);
			public HRESULT GetApplicationId(BSTR* __MIDL__ContextInfo20001) mut => VT.GetApplicationId(ref this, __MIDL__ContextInfo20001);
			public HRESULT GetApplicationInstanceId(BSTR* __MIDL__ContextInfo20002) mut => VT.GetApplicationInstanceId(ref this, __MIDL__ContextInfo20002);

			[CRepr]
			public struct VTable : ContextInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ContextInfo2 self, BSTR* __MIDL__ContextInfo20000) GetPartitionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ContextInfo2 self, BSTR* __MIDL__ContextInfo20001) GetApplicationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ContextInfo2 self, BSTR* __MIDL__ContextInfo20002) GetApplicationInstanceId;
			}
		}
		[CRepr]
		public struct ObjectContext : IDispatch
		{
			public const new Guid IID = .(0x74c08646, 0xcedb, 0x11cf, 0x8b, 0x49, 0x00, 0xaa, 0x00, 0xb8, 0xa7, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstance(BSTR bstrProgID, out VARIANT pObject) mut => VT.CreateInstance(ref this, bstrProgID, out pObject);
			public HRESULT SetComplete() mut => VT.SetComplete(ref this);
			public HRESULT SetAbort() mut => VT.SetAbort(ref this);
			public HRESULT EnableCommit() mut => VT.EnableCommit(ref this);
			public HRESULT DisableCommit() mut => VT.DisableCommit(ref this);
			public HRESULT IsInTransaction(out int16 pbIsInTx) mut => VT.IsInTransaction(ref this, out pbIsInTx);
			public HRESULT IsSecurityEnabled(out int16 pbIsEnabled) mut => VT.IsSecurityEnabled(ref this, out pbIsEnabled);
			public HRESULT IsCallerInRole(BSTR bstrRole, out int16 pbInRole) mut => VT.IsCallerInRole(ref this, bstrRole, out pbInRole);
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
			public HRESULT get_Item(BSTR name, out VARIANT pItem) mut => VT.get_Item(ref this, name, out pItem);
			public HRESULT get__NewEnum(IUnknown** ppEnum) mut => VT.get__NewEnum(ref this, ppEnum);
			public HRESULT get_Security(SecurityProperty** ppSecurityProperty) mut => VT.get_Security(ref this, ppSecurityProperty);
			public HRESULT get_ContextInfo(ContextInfo** ppContextInfo) mut => VT.get_ContextInfo(ref this, ppContextInfo);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectContext self, BSTR bstrProgID, out VARIANT pObject) CreateInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectContext self) SetComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectContext self) SetAbort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectContext self) EnableCommit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectContext self) DisableCommit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectContext self, out int16 pbIsInTx) IsInTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectContext self, out int16 pbIsEnabled) IsSecurityEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectContext self, BSTR bstrRole, out int16 pbInRole) IsCallerInRole;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectContext self, out int32 plCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectContext self, BSTR name, out VARIANT pItem) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectContext self, IUnknown** ppEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectContext self, SecurityProperty** ppSecurityProperty) get_Security;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectContext self, ContextInfo** ppContextInfo) get_ContextInfo;
			}
		}
		[CRepr]
		public struct ITransactionContextEx : IUnknown
		{
			public const new Guid IID = .(0x7999fc22, 0xd3c6, 0x11cf, 0xac, 0xab, 0x00, 0xa0, 0x24, 0xa5, 0x5a, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstance(in Guid rclsid, in Guid riid, void** pObject) mut => VT.CreateInstance(ref this, rclsid, riid, pObject);
			public HRESULT Commit() mut => VT.Commit(ref this);
			public HRESULT Abort() mut => VT.Abort(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionContextEx self, in Guid rclsid, in Guid riid, void** pObject) CreateInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionContextEx self) Commit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionContextEx self) Abort;
			}
		}
		[CRepr]
		public struct ITransactionContext : IDispatch
		{
			public const new Guid IID = .(0x7999fc21, 0xd3c6, 0x11cf, 0xac, 0xab, 0x00, 0xa0, 0x24, 0xa5, 0x5a, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstance(BSTR pszProgId, out VARIANT pObject) mut => VT.CreateInstance(ref this, pszProgId, out pObject);
			public HRESULT Commit() mut => VT.Commit(ref this);
			public HRESULT Abort() mut => VT.Abort(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionContext self, BSTR pszProgId, out VARIANT pObject) CreateInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionContext self) Commit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionContext self) Abort;
			}
		}
		[CRepr]
		public struct ICreateWithTransactionEx : IUnknown
		{
			public const new Guid IID = .(0x455acf57, 0x5345, 0x11d2, 0x99, 0xcf, 0x00, 0xc0, 0x4f, 0x79, 0x7b, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstance(ITransaction* pTransaction, in Guid rclsid, in Guid riid, void** pObject) mut => VT.CreateInstance(ref this, pTransaction, rclsid, riid, pObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateWithTransactionEx self, ITransaction* pTransaction, in Guid rclsid, in Guid riid, void** pObject) CreateInstance;
			}
		}
		[CRepr]
		public struct ICreateWithLocalTransaction : IUnknown
		{
			public const new Guid IID = .(0x227ac7a8, 0x8423, 0x42ce, 0xb7, 0xcf, 0x03, 0x06, 0x1e, 0xc9, 0xaa, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstanceWithSysTx(ref IUnknown pTransaction, in Guid rclsid, in Guid riid, void** pObject) mut => VT.CreateInstanceWithSysTx(ref this, ref pTransaction, rclsid, riid, pObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateWithLocalTransaction self, ref IUnknown pTransaction, in Guid rclsid, in Guid riid, void** pObject) CreateInstanceWithSysTx;
			}
		}
		[CRepr]
		public struct ICreateWithTipTransactionEx : IUnknown
		{
			public const new Guid IID = .(0x455acf59, 0x5345, 0x11d2, 0x99, 0xcf, 0x00, 0xc0, 0x4f, 0x79, 0x7b, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstance(BSTR bstrTipUrl, in Guid rclsid, in Guid riid, void** pObject) mut => VT.CreateInstance(ref this, bstrTipUrl, rclsid, riid, pObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateWithTipTransactionEx self, BSTR bstrTipUrl, in Guid rclsid, in Guid riid, void** pObject) CreateInstance;
			}
		}
		[CRepr]
		public struct IComLTxEvents : IUnknown
		{
			public const new Guid IID = .(0x605cf82c, 0x578e, 0x4298, 0x97, 0x5d, 0x82, 0xba, 0xbc, 0xd9, 0xe0, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnLtxTransactionStart(ref COMSVCSEVENTINFO pInfo, Guid guidLtx, Guid tsid, BOOL fRoot, int32 nIsolationLevel) mut => VT.OnLtxTransactionStart(ref this, ref pInfo, guidLtx, tsid, fRoot, nIsolationLevel);
			public HRESULT OnLtxTransactionPrepare(ref COMSVCSEVENTINFO pInfo, Guid guidLtx, BOOL fVote) mut => VT.OnLtxTransactionPrepare(ref this, ref pInfo, guidLtx, fVote);
			public HRESULT OnLtxTransactionAbort(ref COMSVCSEVENTINFO pInfo, Guid guidLtx) mut => VT.OnLtxTransactionAbort(ref this, ref pInfo, guidLtx);
			public HRESULT OnLtxTransactionCommit(ref COMSVCSEVENTINFO pInfo, Guid guidLtx) mut => VT.OnLtxTransactionCommit(ref this, ref pInfo, guidLtx);
			public HRESULT OnLtxTransactionPromote(ref COMSVCSEVENTINFO pInfo, Guid guidLtx, Guid txnId) mut => VT.OnLtxTransactionPromote(ref this, ref pInfo, guidLtx, txnId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComLTxEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidLtx, Guid tsid, BOOL fRoot, int32 nIsolationLevel) OnLtxTransactionStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComLTxEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidLtx, BOOL fVote) OnLtxTransactionPrepare;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComLTxEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidLtx) OnLtxTransactionAbort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComLTxEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidLtx) OnLtxTransactionCommit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComLTxEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidLtx, Guid txnId) OnLtxTransactionPromote;
			}
		}
		[CRepr]
		public struct IComUserEvent : IUnknown
		{
			public const new Guid IID = .(0x683130a4, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUserEvent(ref COMSVCSEVENTINFO pInfo, ref VARIANT pvarEvent) mut => VT.OnUserEvent(ref this, ref pInfo, ref pvarEvent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComUserEvent self, ref COMSVCSEVENTINFO pInfo, ref VARIANT pvarEvent) OnUserEvent;
			}
		}
		[CRepr]
		public struct IComThreadEvents : IUnknown
		{
			public const new Guid IID = .(0x683130a5, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnThreadStart(ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint32 dwThread, uint32 dwTheadCnt) mut => VT.OnThreadStart(ref this, ref pInfo, ThreadID, dwThread, dwTheadCnt);
			public HRESULT OnThreadTerminate(ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint32 dwThread, uint32 dwTheadCnt) mut => VT.OnThreadTerminate(ref this, ref pInfo, ThreadID, dwThread, dwTheadCnt);
			public HRESULT OnThreadBindToApartment(ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 AptID, uint32 dwActCnt, uint32 dwLowCnt) mut => VT.OnThreadBindToApartment(ref this, ref pInfo, ThreadID, AptID, dwActCnt, dwLowCnt);
			public HRESULT OnThreadUnBind(ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 AptID, uint32 dwActCnt) mut => VT.OnThreadUnBind(ref this, ref pInfo, ThreadID, AptID, dwActCnt);
			public HRESULT OnThreadWorkEnque(ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 MsgWorkID, uint32 QueueLen) mut => VT.OnThreadWorkEnque(ref this, ref pInfo, ThreadID, MsgWorkID, QueueLen);
			public HRESULT OnThreadWorkPrivate(ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 MsgWorkID) mut => VT.OnThreadWorkPrivate(ref this, ref pInfo, ThreadID, MsgWorkID);
			public HRESULT OnThreadWorkPublic(ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 MsgWorkID, uint32 QueueLen) mut => VT.OnThreadWorkPublic(ref this, ref pInfo, ThreadID, MsgWorkID, QueueLen);
			public HRESULT OnThreadWorkRedirect(ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 MsgWorkID, uint32 QueueLen, uint64 ThreadNum) mut => VT.OnThreadWorkRedirect(ref this, ref pInfo, ThreadID, MsgWorkID, QueueLen, ThreadNum);
			public HRESULT OnThreadWorkReject(ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 MsgWorkID, uint32 QueueLen) mut => VT.OnThreadWorkReject(ref this, ref pInfo, ThreadID, MsgWorkID, QueueLen);
			public HRESULT OnThreadAssignApartment(ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, uint64 AptID) mut => VT.OnThreadAssignApartment(ref this, ref pInfo, guidActivity, AptID);
			public HRESULT OnThreadUnassignApartment(ref COMSVCSEVENTINFO pInfo, uint64 AptID) mut => VT.OnThreadUnassignApartment(ref this, ref pInfo, AptID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint32 dwThread, uint32 dwTheadCnt) OnThreadStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint32 dwThread, uint32 dwTheadCnt) OnThreadTerminate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 AptID, uint32 dwActCnt, uint32 dwLowCnt) OnThreadBindToApartment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 AptID, uint32 dwActCnt) OnThreadUnBind;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 MsgWorkID, uint32 QueueLen) OnThreadWorkEnque;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 MsgWorkID) OnThreadWorkPrivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 MsgWorkID, uint32 QueueLen) OnThreadWorkPublic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 MsgWorkID, uint32 QueueLen, uint64 ThreadNum) OnThreadWorkRedirect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ThreadID, uint64 MsgWorkID, uint32 QueueLen) OnThreadWorkReject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, uint64 AptID) OnThreadAssignApartment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadEvents self, ref COMSVCSEVENTINFO pInfo, uint64 AptID) OnThreadUnassignApartment;
			}
		}
		[CRepr]
		public struct IComAppEvents : IUnknown
		{
			public const new Guid IID = .(0x683130a6, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnAppActivation(ref COMSVCSEVENTINFO pInfo, Guid guidApp) mut => VT.OnAppActivation(ref this, ref pInfo, guidApp);
			public HRESULT OnAppShutdown(ref COMSVCSEVENTINFO pInfo, Guid guidApp) mut => VT.OnAppShutdown(ref this, ref pInfo, guidApp);
			public HRESULT OnAppForceShutdown(ref COMSVCSEVENTINFO pInfo, Guid guidApp) mut => VT.OnAppForceShutdown(ref this, ref pInfo, guidApp);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComAppEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidApp) OnAppActivation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComAppEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidApp) OnAppShutdown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComAppEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidApp) OnAppForceShutdown;
			}
		}
		[CRepr]
		public struct IComInstanceEvents : IUnknown
		{
			public const new Guid IID = .(0x683130a7, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnObjectCreate(ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid clsid, in Guid tsid, uint64 CtxtID, uint64 ObjectID) mut => VT.OnObjectCreate(ref this, ref pInfo, guidActivity, clsid, tsid, CtxtID, ObjectID);
			public HRESULT OnObjectDestroy(ref COMSVCSEVENTINFO pInfo, uint64 CtxtID) mut => VT.OnObjectDestroy(ref this, ref pInfo, CtxtID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComInstanceEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid clsid, in Guid tsid, uint64 CtxtID, uint64 ObjectID) OnObjectCreate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComInstanceEvents self, ref COMSVCSEVENTINFO pInfo, uint64 CtxtID) OnObjectDestroy;
			}
		}
		[CRepr]
		public struct IComTransactionEvents : IUnknown
		{
			public const new Guid IID = .(0x683130a8, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTransactionStart(ref COMSVCSEVENTINFO pInfo, in Guid guidTx, in Guid tsid, BOOL fRoot) mut => VT.OnTransactionStart(ref this, ref pInfo, guidTx, tsid, fRoot);
			public HRESULT OnTransactionPrepare(ref COMSVCSEVENTINFO pInfo, in Guid guidTx, BOOL fVoteYes) mut => VT.OnTransactionPrepare(ref this, ref pInfo, guidTx, fVoteYes);
			public HRESULT OnTransactionAbort(ref COMSVCSEVENTINFO pInfo, in Guid guidTx) mut => VT.OnTransactionAbort(ref this, ref pInfo, guidTx);
			public HRESULT OnTransactionCommit(ref COMSVCSEVENTINFO pInfo, in Guid guidTx) mut => VT.OnTransactionCommit(ref this, ref pInfo, guidTx);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTransactionEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidTx, in Guid tsid, BOOL fRoot) OnTransactionStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTransactionEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidTx, BOOL fVoteYes) OnTransactionPrepare;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTransactionEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidTx) OnTransactionAbort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTransactionEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidTx) OnTransactionCommit;
			}
		}
		[CRepr]
		public struct IComMethodEvents : IUnknown
		{
			public const new Guid IID = .(0x683130a9, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnMethodCall(ref COMSVCSEVENTINFO pInfo, uint64 oid, in Guid guidCid, in Guid guidRid, uint32 iMeth) mut => VT.OnMethodCall(ref this, ref pInfo, oid, guidCid, guidRid, iMeth);
			public HRESULT OnMethodReturn(ref COMSVCSEVENTINFO pInfo, uint64 oid, in Guid guidCid, in Guid guidRid, uint32 iMeth, HRESULT hresult) mut => VT.OnMethodReturn(ref this, ref pInfo, oid, guidCid, guidRid, iMeth, hresult);
			public HRESULT OnMethodException(ref COMSVCSEVENTINFO pInfo, uint64 oid, in Guid guidCid, in Guid guidRid, uint32 iMeth) mut => VT.OnMethodException(ref this, ref pInfo, oid, guidCid, guidRid, iMeth);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComMethodEvents self, ref COMSVCSEVENTINFO pInfo, uint64 oid, in Guid guidCid, in Guid guidRid, uint32 iMeth) OnMethodCall;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComMethodEvents self, ref COMSVCSEVENTINFO pInfo, uint64 oid, in Guid guidCid, in Guid guidRid, uint32 iMeth, HRESULT hresult) OnMethodReturn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComMethodEvents self, ref COMSVCSEVENTINFO pInfo, uint64 oid, in Guid guidCid, in Guid guidRid, uint32 iMeth) OnMethodException;
			}
		}
		[CRepr]
		public struct IComObjectEvents : IUnknown
		{
			public const new Guid IID = .(0x683130aa, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnObjectActivate(ref COMSVCSEVENTINFO pInfo, uint64 CtxtID, uint64 ObjectID) mut => VT.OnObjectActivate(ref this, ref pInfo, CtxtID, ObjectID);
			public HRESULT OnObjectDeactivate(ref COMSVCSEVENTINFO pInfo, uint64 CtxtID, uint64 ObjectID) mut => VT.OnObjectDeactivate(ref this, ref pInfo, CtxtID, ObjectID);
			public HRESULT OnDisableCommit(ref COMSVCSEVENTINFO pInfo, uint64 CtxtID) mut => VT.OnDisableCommit(ref this, ref pInfo, CtxtID);
			public HRESULT OnEnableCommit(ref COMSVCSEVENTINFO pInfo, uint64 CtxtID) mut => VT.OnEnableCommit(ref this, ref pInfo, CtxtID);
			public HRESULT OnSetComplete(ref COMSVCSEVENTINFO pInfo, uint64 CtxtID) mut => VT.OnSetComplete(ref this, ref pInfo, CtxtID);
			public HRESULT OnSetAbort(ref COMSVCSEVENTINFO pInfo, uint64 CtxtID) mut => VT.OnSetAbort(ref this, ref pInfo, CtxtID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectEvents self, ref COMSVCSEVENTINFO pInfo, uint64 CtxtID, uint64 ObjectID) OnObjectActivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectEvents self, ref COMSVCSEVENTINFO pInfo, uint64 CtxtID, uint64 ObjectID) OnObjectDeactivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectEvents self, ref COMSVCSEVENTINFO pInfo, uint64 CtxtID) OnDisableCommit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectEvents self, ref COMSVCSEVENTINFO pInfo, uint64 CtxtID) OnEnableCommit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectEvents self, ref COMSVCSEVENTINFO pInfo, uint64 CtxtID) OnSetComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectEvents self, ref COMSVCSEVENTINFO pInfo, uint64 CtxtID) OnSetAbort;
			}
		}
		[CRepr]
		public struct IComResourceEvents : IUnknown
		{
			public const new Guid IID = .(0x683130ab, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnResourceCreate(ref COMSVCSEVENTINFO pInfo, uint64 ObjectID, PWSTR pszType, uint64 resId, BOOL enlisted) mut => VT.OnResourceCreate(ref this, ref pInfo, ObjectID, pszType, resId, enlisted);
			public HRESULT OnResourceAllocate(ref COMSVCSEVENTINFO pInfo, uint64 ObjectID, PWSTR pszType, uint64 resId, BOOL enlisted, uint32 NumRated, uint32 Rating) mut => VT.OnResourceAllocate(ref this, ref pInfo, ObjectID, pszType, resId, enlisted, NumRated, Rating);
			public HRESULT OnResourceRecycle(ref COMSVCSEVENTINFO pInfo, uint64 ObjectID, PWSTR pszType, uint64 resId) mut => VT.OnResourceRecycle(ref this, ref pInfo, ObjectID, pszType, resId);
			public HRESULT OnResourceDestroy(ref COMSVCSEVENTINFO pInfo, uint64 ObjectID, HRESULT hr, PWSTR pszType, uint64 resId) mut => VT.OnResourceDestroy(ref this, ref pInfo, ObjectID, hr, pszType, resId);
			public HRESULT OnResourceTrack(ref COMSVCSEVENTINFO pInfo, uint64 ObjectID, PWSTR pszType, uint64 resId, BOOL enlisted) mut => VT.OnResourceTrack(ref this, ref pInfo, ObjectID, pszType, resId, enlisted);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComResourceEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ObjectID, PWSTR pszType, uint64 resId, BOOL enlisted) OnResourceCreate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComResourceEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ObjectID, PWSTR pszType, uint64 resId, BOOL enlisted, uint32 NumRated, uint32 Rating) OnResourceAllocate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComResourceEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ObjectID, PWSTR pszType, uint64 resId) OnResourceRecycle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComResourceEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ObjectID, HRESULT hr, PWSTR pszType, uint64 resId) OnResourceDestroy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComResourceEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ObjectID, PWSTR pszType, uint64 resId, BOOL enlisted) OnResourceTrack;
			}
		}
		[CRepr]
		public struct IComSecurityEvents : IUnknown
		{
			public const new Guid IID = .(0x683130ac, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnAuthenticate(ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, uint64 ObjectID, in Guid guidIID, uint32 iMeth, uint32 cbByteOrig, uint8* pSidOriginalUser, uint32 cbByteCur, uint8* pSidCurrentUser, BOOL bCurrentUserInpersonatingInProc) mut => VT.OnAuthenticate(ref this, ref pInfo, guidActivity, ObjectID, guidIID, iMeth, cbByteOrig, pSidOriginalUser, cbByteCur, pSidCurrentUser, bCurrentUserInpersonatingInProc);
			public HRESULT OnAuthenticateFail(ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, uint64 ObjectID, in Guid guidIID, uint32 iMeth, uint32 cbByteOrig, uint8* pSidOriginalUser, uint32 cbByteCur, uint8* pSidCurrentUser, BOOL bCurrentUserInpersonatingInProc) mut => VT.OnAuthenticateFail(ref this, ref pInfo, guidActivity, ObjectID, guidIID, iMeth, cbByteOrig, pSidOriginalUser, cbByteCur, pSidCurrentUser, bCurrentUserInpersonatingInProc);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComSecurityEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, uint64 ObjectID, in Guid guidIID, uint32 iMeth, uint32 cbByteOrig, uint8* pSidOriginalUser, uint32 cbByteCur, uint8* pSidCurrentUser, BOOL bCurrentUserInpersonatingInProc) OnAuthenticate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComSecurityEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, uint64 ObjectID, in Guid guidIID, uint32 iMeth, uint32 cbByteOrig, uint8* pSidOriginalUser, uint32 cbByteCur, uint8* pSidCurrentUser, BOOL bCurrentUserInpersonatingInProc) OnAuthenticateFail;
			}
		}
		[CRepr]
		public struct IComObjectPoolEvents : IUnknown
		{
			public const new Guid IID = .(0x683130ad, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnObjPoolPutObject(ref COMSVCSEVENTINFO pInfo, in Guid guidObject, int32 nReason, uint32 dwAvailable, uint64 oid) mut => VT.OnObjPoolPutObject(ref this, ref pInfo, guidObject, nReason, dwAvailable, oid);
			public HRESULT OnObjPoolGetObject(ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid guidObject, uint32 dwAvailable, uint64 oid) mut => VT.OnObjPoolGetObject(ref this, ref pInfo, guidActivity, guidObject, dwAvailable, oid);
			public HRESULT OnObjPoolRecycleToTx(ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid guidObject, in Guid guidTx, uint64 objid) mut => VT.OnObjPoolRecycleToTx(ref this, ref pInfo, guidActivity, guidObject, guidTx, objid);
			public HRESULT OnObjPoolGetFromTx(ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid guidObject, in Guid guidTx, uint64 objid) mut => VT.OnObjPoolGetFromTx(ref this, ref pInfo, guidActivity, guidObject, guidTx, objid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectPoolEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidObject, int32 nReason, uint32 dwAvailable, uint64 oid) OnObjPoolPutObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectPoolEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid guidObject, uint32 dwAvailable, uint64 oid) OnObjPoolGetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectPoolEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid guidObject, in Guid guidTx, uint64 objid) OnObjPoolRecycleToTx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectPoolEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid guidObject, in Guid guidTx, uint64 objid) OnObjPoolGetFromTx;
			}
		}
		[CRepr]
		public struct IComObjectPoolEvents2 : IUnknown
		{
			public const new Guid IID = .(0x683130ae, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnObjPoolCreateObject(ref COMSVCSEVENTINFO pInfo, in Guid guidObject, uint32 dwObjsCreated, uint64 oid) mut => VT.OnObjPoolCreateObject(ref this, ref pInfo, guidObject, dwObjsCreated, oid);
			public HRESULT OnObjPoolDestroyObject(ref COMSVCSEVENTINFO pInfo, in Guid guidObject, uint32 dwObjsCreated, uint64 oid) mut => VT.OnObjPoolDestroyObject(ref this, ref pInfo, guidObject, dwObjsCreated, oid);
			public HRESULT OnObjPoolCreateDecision(ref COMSVCSEVENTINFO pInfo, uint32 dwThreadsWaiting, uint32 dwAvail, uint32 dwCreated, uint32 dwMin, uint32 dwMax) mut => VT.OnObjPoolCreateDecision(ref this, ref pInfo, dwThreadsWaiting, dwAvail, dwCreated, dwMin, dwMax);
			public HRESULT OnObjPoolTimeout(ref COMSVCSEVENTINFO pInfo, in Guid guidObject, in Guid guidActivity, uint32 dwTimeout) mut => VT.OnObjPoolTimeout(ref this, ref pInfo, guidObject, guidActivity, dwTimeout);
			public HRESULT OnObjPoolCreatePool(ref COMSVCSEVENTINFO pInfo, in Guid guidObject, uint32 dwMin, uint32 dwMax, uint32 dwTimeout) mut => VT.OnObjPoolCreatePool(ref this, ref pInfo, guidObject, dwMin, dwMax, dwTimeout);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectPoolEvents2 self, ref COMSVCSEVENTINFO pInfo, in Guid guidObject, uint32 dwObjsCreated, uint64 oid) OnObjPoolCreateObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectPoolEvents2 self, ref COMSVCSEVENTINFO pInfo, in Guid guidObject, uint32 dwObjsCreated, uint64 oid) OnObjPoolDestroyObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectPoolEvents2 self, ref COMSVCSEVENTINFO pInfo, uint32 dwThreadsWaiting, uint32 dwAvail, uint32 dwCreated, uint32 dwMin, uint32 dwMax) OnObjPoolCreateDecision;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectPoolEvents2 self, ref COMSVCSEVENTINFO pInfo, in Guid guidObject, in Guid guidActivity, uint32 dwTimeout) OnObjPoolTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectPoolEvents2 self, ref COMSVCSEVENTINFO pInfo, in Guid guidObject, uint32 dwMin, uint32 dwMax, uint32 dwTimeout) OnObjPoolCreatePool;
			}
		}
		[CRepr]
		public struct IComObjectConstructionEvents : IUnknown
		{
			public const new Guid IID = .(0x683130af, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnObjectConstruct(ref COMSVCSEVENTINFO pInfo, in Guid guidObject, PWSTR sConstructString, uint64 oid) mut => VT.OnObjectConstruct(ref this, ref pInfo, guidObject, sConstructString, oid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectConstructionEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidObject, PWSTR sConstructString, uint64 oid) OnObjectConstruct;
			}
		}
		[CRepr]
		public struct IComActivityEvents : IUnknown
		{
			public const new Guid IID = .(0x683130b0, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnActivityCreate(ref COMSVCSEVENTINFO pInfo, in Guid guidActivity) mut => VT.OnActivityCreate(ref this, ref pInfo, guidActivity);
			public HRESULT OnActivityDestroy(ref COMSVCSEVENTINFO pInfo, in Guid guidActivity) mut => VT.OnActivityDestroy(ref this, ref pInfo, guidActivity);
			public HRESULT OnActivityEnter(ref COMSVCSEVENTINFO pInfo, in Guid guidCurrent, in Guid guidEntered, uint32 dwThread) mut => VT.OnActivityEnter(ref this, ref pInfo, guidCurrent, guidEntered, dwThread);
			public HRESULT OnActivityTimeout(ref COMSVCSEVENTINFO pInfo, in Guid guidCurrent, in Guid guidEntered, uint32 dwThread, uint32 dwTimeout) mut => VT.OnActivityTimeout(ref this, ref pInfo, guidCurrent, guidEntered, dwThread, dwTimeout);
			public HRESULT OnActivityReenter(ref COMSVCSEVENTINFO pInfo, in Guid guidCurrent, uint32 dwThread, uint32 dwCallDepth) mut => VT.OnActivityReenter(ref this, ref pInfo, guidCurrent, dwThread, dwCallDepth);
			public HRESULT OnActivityLeave(ref COMSVCSEVENTINFO pInfo, in Guid guidCurrent, in Guid guidLeft) mut => VT.OnActivityLeave(ref this, ref pInfo, guidCurrent, guidLeft);
			public HRESULT OnActivityLeaveSame(ref COMSVCSEVENTINFO pInfo, in Guid guidCurrent, uint32 dwCallDepth) mut => VT.OnActivityLeaveSame(ref this, ref pInfo, guidCurrent, dwCallDepth);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComActivityEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidActivity) OnActivityCreate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComActivityEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidActivity) OnActivityDestroy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComActivityEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidCurrent, in Guid guidEntered, uint32 dwThread) OnActivityEnter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComActivityEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidCurrent, in Guid guidEntered, uint32 dwThread, uint32 dwTimeout) OnActivityTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComActivityEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidCurrent, uint32 dwThread, uint32 dwCallDepth) OnActivityReenter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComActivityEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidCurrent, in Guid guidLeft) OnActivityLeave;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComActivityEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidCurrent, uint32 dwCallDepth) OnActivityLeaveSame;
			}
		}
		[CRepr]
		public struct IComIdentityEvents : IUnknown
		{
			public const new Guid IID = .(0x683130b1, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnIISRequestInfo(ref COMSVCSEVENTINFO pInfo, uint64 ObjId, PWSTR pszClientIP, PWSTR pszServerIP, PWSTR pszURL) mut => VT.OnIISRequestInfo(ref this, ref pInfo, ObjId, pszClientIP, pszServerIP, pszURL);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComIdentityEvents self, ref COMSVCSEVENTINFO pInfo, uint64 ObjId, PWSTR pszClientIP, PWSTR pszServerIP, PWSTR pszURL) OnIISRequestInfo;
			}
		}
		[CRepr]
		public struct IComQCEvents : IUnknown
		{
			public const new Guid IID = .(0x683130b2, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnQCRecord(ref COMSVCSEVENTINFO pInfo, uint64 objid, char16* szQueue, in Guid guidMsgId, in Guid guidWorkFlowId, HRESULT msmqhr) mut => VT.OnQCRecord(ref this, ref pInfo, objid, szQueue, guidMsgId, guidWorkFlowId, msmqhr);
			public HRESULT OnQCQueueOpen(ref COMSVCSEVENTINFO pInfo, char16* szQueue, uint64 QueueID, HRESULT hr) mut => VT.OnQCQueueOpen(ref this, ref pInfo, szQueue, QueueID, hr);
			public HRESULT OnQCReceive(ref COMSVCSEVENTINFO pInfo, uint64 QueueID, in Guid guidMsgId, in Guid guidWorkFlowId, HRESULT hr) mut => VT.OnQCReceive(ref this, ref pInfo, QueueID, guidMsgId, guidWorkFlowId, hr);
			public HRESULT OnQCReceiveFail(ref COMSVCSEVENTINFO pInfo, uint64 QueueID, HRESULT msmqhr) mut => VT.OnQCReceiveFail(ref this, ref pInfo, QueueID, msmqhr);
			public HRESULT OnQCMoveToReTryQueue(ref COMSVCSEVENTINFO pInfo, in Guid guidMsgId, in Guid guidWorkFlowId, uint32 RetryIndex) mut => VT.OnQCMoveToReTryQueue(ref this, ref pInfo, guidMsgId, guidWorkFlowId, RetryIndex);
			public HRESULT OnQCMoveToDeadQueue(ref COMSVCSEVENTINFO pInfo, in Guid guidMsgId, in Guid guidWorkFlowId) mut => VT.OnQCMoveToDeadQueue(ref this, ref pInfo, guidMsgId, guidWorkFlowId);
			public HRESULT OnQCPlayback(ref COMSVCSEVENTINFO pInfo, uint64 objid, in Guid guidMsgId, in Guid guidWorkFlowId, HRESULT hr) mut => VT.OnQCPlayback(ref this, ref pInfo, objid, guidMsgId, guidWorkFlowId, hr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComQCEvents self, ref COMSVCSEVENTINFO pInfo, uint64 objid, char16* szQueue, in Guid guidMsgId, in Guid guidWorkFlowId, HRESULT msmqhr) OnQCRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComQCEvents self, ref COMSVCSEVENTINFO pInfo, char16* szQueue, uint64 QueueID, HRESULT hr) OnQCQueueOpen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComQCEvents self, ref COMSVCSEVENTINFO pInfo, uint64 QueueID, in Guid guidMsgId, in Guid guidWorkFlowId, HRESULT hr) OnQCReceive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComQCEvents self, ref COMSVCSEVENTINFO pInfo, uint64 QueueID, HRESULT msmqhr) OnQCReceiveFail;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComQCEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidMsgId, in Guid guidWorkFlowId, uint32 RetryIndex) OnQCMoveToReTryQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComQCEvents self, ref COMSVCSEVENTINFO pInfo, in Guid guidMsgId, in Guid guidWorkFlowId) OnQCMoveToDeadQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComQCEvents self, ref COMSVCSEVENTINFO pInfo, uint64 objid, in Guid guidMsgId, in Guid guidWorkFlowId, HRESULT hr) OnQCPlayback;
			}
		}
		[CRepr]
		public struct IComExceptionEvents : IUnknown
		{
			public const new Guid IID = .(0x683130b3, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnExceptionUser(ref COMSVCSEVENTINFO pInfo, uint32 code, uint64 address, PWSTR pszStackTrace) mut => VT.OnExceptionUser(ref this, ref pInfo, code, address, pszStackTrace);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComExceptionEvents self, ref COMSVCSEVENTINFO pInfo, uint32 code, uint64 address, PWSTR pszStackTrace) OnExceptionUser;
			}
		}
		[CRepr]
		public struct ILBEvents : IUnknown
		{
			public const new Guid IID = .(0x683130b4, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TargetUp(BSTR bstrServerName, BSTR bstrClsidEng) mut => VT.TargetUp(ref this, bstrServerName, bstrClsidEng);
			public HRESULT TargetDown(BSTR bstrServerName, BSTR bstrClsidEng) mut => VT.TargetDown(ref this, bstrServerName, bstrClsidEng);
			public HRESULT EngineDefined(BSTR bstrPropName, ref VARIANT varPropValue, BSTR bstrClsidEng) mut => VT.EngineDefined(ref this, bstrPropName, ref varPropValue, bstrClsidEng);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILBEvents self, BSTR bstrServerName, BSTR bstrClsidEng) TargetUp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILBEvents self, BSTR bstrServerName, BSTR bstrClsidEng) TargetDown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILBEvents self, BSTR bstrPropName, ref VARIANT varPropValue, BSTR bstrClsidEng) EngineDefined;
			}
		}
		[CRepr]
		public struct IComCRMEvents : IUnknown
		{
			public const new Guid IID = .(0x683130b5, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCRMRecoveryStart(ref COMSVCSEVENTINFO pInfo, Guid guidApp) mut => VT.OnCRMRecoveryStart(ref this, ref pInfo, guidApp);
			public HRESULT OnCRMRecoveryDone(ref COMSVCSEVENTINFO pInfo, Guid guidApp) mut => VT.OnCRMRecoveryDone(ref this, ref pInfo, guidApp);
			public HRESULT OnCRMCheckpoint(ref COMSVCSEVENTINFO pInfo, Guid guidApp) mut => VT.OnCRMCheckpoint(ref this, ref pInfo, guidApp);
			public HRESULT OnCRMBegin(ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID, Guid guidActivity, Guid guidTx, char16* szProgIdCompensator, char16* szDescription) mut => VT.OnCRMBegin(ref this, ref pInfo, guidClerkCLSID, guidActivity, guidTx, szProgIdCompensator, szDescription);
			public HRESULT OnCRMPrepare(ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) mut => VT.OnCRMPrepare(ref this, ref pInfo, guidClerkCLSID);
			public HRESULT OnCRMCommit(ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) mut => VT.OnCRMCommit(ref this, ref pInfo, guidClerkCLSID);
			public HRESULT OnCRMAbort(ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) mut => VT.OnCRMAbort(ref this, ref pInfo, guidClerkCLSID);
			public HRESULT OnCRMIndoubt(ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) mut => VT.OnCRMIndoubt(ref this, ref pInfo, guidClerkCLSID);
			public HRESULT OnCRMDone(ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) mut => VT.OnCRMDone(ref this, ref pInfo, guidClerkCLSID);
			public HRESULT OnCRMRelease(ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) mut => VT.OnCRMRelease(ref this, ref pInfo, guidClerkCLSID);
			public HRESULT OnCRMAnalyze(ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID, uint32 dwCrmRecordType, uint32 dwRecordSize) mut => VT.OnCRMAnalyze(ref this, ref pInfo, guidClerkCLSID, dwCrmRecordType, dwRecordSize);
			public HRESULT OnCRMWrite(ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID, BOOL fVariants, uint32 dwRecordSize) mut => VT.OnCRMWrite(ref this, ref pInfo, guidClerkCLSID, fVariants, dwRecordSize);
			public HRESULT OnCRMForget(ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) mut => VT.OnCRMForget(ref this, ref pInfo, guidClerkCLSID);
			public HRESULT OnCRMForce(ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) mut => VT.OnCRMForce(ref this, ref pInfo, guidClerkCLSID);
			public HRESULT OnCRMDeliver(ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID, BOOL fVariants, uint32 dwRecordSize) mut => VT.OnCRMDeliver(ref this, ref pInfo, guidClerkCLSID, fVariants, dwRecordSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidApp) OnCRMRecoveryStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidApp) OnCRMRecoveryDone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidApp) OnCRMCheckpoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID, Guid guidActivity, Guid guidTx, char16* szProgIdCompensator, char16* szDescription) OnCRMBegin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) OnCRMPrepare;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) OnCRMCommit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) OnCRMAbort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) OnCRMIndoubt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) OnCRMDone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) OnCRMRelease;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID, uint32 dwCrmRecordType, uint32 dwRecordSize) OnCRMAnalyze;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID, BOOL fVariants, uint32 dwRecordSize) OnCRMWrite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) OnCRMForget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID) OnCRMForce;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComCRMEvents self, ref COMSVCSEVENTINFO pInfo, Guid guidClerkCLSID, BOOL fVariants, uint32 dwRecordSize) OnCRMDeliver;
			}
		}
		[CRepr]
		public struct IComMethod2Events : IUnknown
		{
			public const new Guid IID = .(0xfb388aaa, 0x567d, 0x4024, 0xaf, 0x8e, 0x6e, 0x93, 0xee, 0x74, 0x85, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnMethodCall2(ref COMSVCSEVENTINFO pInfo, uint64 oid, in Guid guidCid, in Guid guidRid, uint32 dwThread, uint32 iMeth) mut => VT.OnMethodCall2(ref this, ref pInfo, oid, guidCid, guidRid, dwThread, iMeth);
			public HRESULT OnMethodReturn2(ref COMSVCSEVENTINFO pInfo, uint64 oid, in Guid guidCid, in Guid guidRid, uint32 dwThread, uint32 iMeth, HRESULT hresult) mut => VT.OnMethodReturn2(ref this, ref pInfo, oid, guidCid, guidRid, dwThread, iMeth, hresult);
			public HRESULT OnMethodException2(ref COMSVCSEVENTINFO pInfo, uint64 oid, in Guid guidCid, in Guid guidRid, uint32 dwThread, uint32 iMeth) mut => VT.OnMethodException2(ref this, ref pInfo, oid, guidCid, guidRid, dwThread, iMeth);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComMethod2Events self, ref COMSVCSEVENTINFO pInfo, uint64 oid, in Guid guidCid, in Guid guidRid, uint32 dwThread, uint32 iMeth) OnMethodCall2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComMethod2Events self, ref COMSVCSEVENTINFO pInfo, uint64 oid, in Guid guidCid, in Guid guidRid, uint32 dwThread, uint32 iMeth, HRESULT hresult) OnMethodReturn2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComMethod2Events self, ref COMSVCSEVENTINFO pInfo, uint64 oid, in Guid guidCid, in Guid guidRid, uint32 dwThread, uint32 iMeth) OnMethodException2;
			}
		}
		[CRepr]
		public struct IComTrackingInfoEvents : IUnknown
		{
			public const new Guid IID = .(0x4e6cdcc9, 0xfb25, 0x4fd5, 0x9c, 0xc5, 0xc9, 0xf4, 0xb6, 0x55, 0x9c, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnNewTrackingInfo(IUnknown* pToplevelCollection) mut => VT.OnNewTrackingInfo(ref this, pToplevelCollection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTrackingInfoEvents self, IUnknown* pToplevelCollection) OnNewTrackingInfo;
			}
		}
		[CRepr]
		public struct IComTrackingInfoCollection : IUnknown
		{
			public const new Guid IID = .(0xc266c677, 0xc9ad, 0x49ab, 0x9f, 0xd9, 0xd9, 0x66, 0x10, 0x78, 0x58, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Type(out TRACKING_COLL_TYPE pType) mut => VT.Type(ref this, out pType);
			public HRESULT Count(out uint32 pCount) mut => VT.Count(ref this, out pCount);
			public HRESULT Item(uint32 ulIndex, in Guid riid, void** ppv) mut => VT.Item(ref this, ulIndex, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTrackingInfoCollection self, out TRACKING_COLL_TYPE pType) Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTrackingInfoCollection self, out uint32 pCount) Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTrackingInfoCollection self, uint32 ulIndex, in Guid riid, void** ppv) Item;
			}
		}
		[CRepr]
		public struct IComTrackingInfoObject : IUnknown
		{
			public const new Guid IID = .(0x116e42c5, 0xd8b1, 0x47bf, 0xab, 0x1e, 0xc8, 0x95, 0xed, 0x3e, 0x23, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetValue(PWSTR szPropertyName, out VARIANT pvarOut) mut => VT.GetValue(ref this, szPropertyName, out pvarOut);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTrackingInfoObject self, PWSTR szPropertyName, out VARIANT pvarOut) GetValue;
			}
		}
		[CRepr]
		public struct IComTrackingInfoProperties : IUnknown
		{
			public const new Guid IID = .(0x789b42be, 0x6f6b, 0x443a, 0x89, 0x8e, 0x67, 0xab, 0xf3, 0x90, 0xaa, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PropCount(out uint32 pCount) mut => VT.PropCount(ref this, out pCount);
			public HRESULT GetPropName(uint32 ulIndex, PWSTR* ppszPropName) mut => VT.GetPropName(ref this, ulIndex, ppszPropName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTrackingInfoProperties self, out uint32 pCount) PropCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTrackingInfoProperties self, uint32 ulIndex, PWSTR* ppszPropName) GetPropName;
			}
		}
		[CRepr]
		public struct IComApp2Events : IUnknown
		{
			public const new Guid IID = .(0x1290bc1a, 0xb219, 0x418d, 0xb0, 0x78, 0x59, 0x34, 0xde, 0xd0, 0x82, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnAppActivation2(ref COMSVCSEVENTINFO pInfo, Guid guidApp, Guid guidProcess) mut => VT.OnAppActivation2(ref this, ref pInfo, guidApp, guidProcess);
			public HRESULT OnAppShutdown2(ref COMSVCSEVENTINFO pInfo, Guid guidApp) mut => VT.OnAppShutdown2(ref this, ref pInfo, guidApp);
			public HRESULT OnAppForceShutdown2(ref COMSVCSEVENTINFO pInfo, Guid guidApp) mut => VT.OnAppForceShutdown2(ref this, ref pInfo, guidApp);
			public HRESULT OnAppPaused2(ref COMSVCSEVENTINFO pInfo, Guid guidApp, BOOL bPaused) mut => VT.OnAppPaused2(ref this, ref pInfo, guidApp, bPaused);
			public HRESULT OnAppRecycle2(ref COMSVCSEVENTINFO pInfo, Guid guidApp, Guid guidProcess, int32 lReason) mut => VT.OnAppRecycle2(ref this, ref pInfo, guidApp, guidProcess, lReason);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComApp2Events self, ref COMSVCSEVENTINFO pInfo, Guid guidApp, Guid guidProcess) OnAppActivation2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComApp2Events self, ref COMSVCSEVENTINFO pInfo, Guid guidApp) OnAppShutdown2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComApp2Events self, ref COMSVCSEVENTINFO pInfo, Guid guidApp) OnAppForceShutdown2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComApp2Events self, ref COMSVCSEVENTINFO pInfo, Guid guidApp, BOOL bPaused) OnAppPaused2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComApp2Events self, ref COMSVCSEVENTINFO pInfo, Guid guidApp, Guid guidProcess, int32 lReason) OnAppRecycle2;
			}
		}
		[CRepr]
		public struct IComTransaction2Events : IUnknown
		{
			public const new Guid IID = .(0xa136f62a, 0x2f94, 0x4288, 0x86, 0xe0, 0xd8, 0xa1, 0xfa, 0x4c, 0x02, 0x99);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTransactionStart2(ref COMSVCSEVENTINFO pInfo, in Guid guidTx, in Guid tsid, BOOL fRoot, int32 nIsolationLevel) mut => VT.OnTransactionStart2(ref this, ref pInfo, guidTx, tsid, fRoot, nIsolationLevel);
			public HRESULT OnTransactionPrepare2(ref COMSVCSEVENTINFO pInfo, in Guid guidTx, BOOL fVoteYes) mut => VT.OnTransactionPrepare2(ref this, ref pInfo, guidTx, fVoteYes);
			public HRESULT OnTransactionAbort2(ref COMSVCSEVENTINFO pInfo, in Guid guidTx) mut => VT.OnTransactionAbort2(ref this, ref pInfo, guidTx);
			public HRESULT OnTransactionCommit2(ref COMSVCSEVENTINFO pInfo, in Guid guidTx) mut => VT.OnTransactionCommit2(ref this, ref pInfo, guidTx);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTransaction2Events self, ref COMSVCSEVENTINFO pInfo, in Guid guidTx, in Guid tsid, BOOL fRoot, int32 nIsolationLevel) OnTransactionStart2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTransaction2Events self, ref COMSVCSEVENTINFO pInfo, in Guid guidTx, BOOL fVoteYes) OnTransactionPrepare2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTransaction2Events self, ref COMSVCSEVENTINFO pInfo, in Guid guidTx) OnTransactionAbort2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComTransaction2Events self, ref COMSVCSEVENTINFO pInfo, in Guid guidTx) OnTransactionCommit2;
			}
		}
		[CRepr]
		public struct IComInstance2Events : IUnknown
		{
			public const new Guid IID = .(0x20e3bf07, 0xb506, 0x4ad5, 0xa5, 0x0c, 0xd2, 0xca, 0x5b, 0x9c, 0x15, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnObjectCreate2(ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid clsid, in Guid tsid, uint64 CtxtID, uint64 ObjectID, in Guid guidPartition) mut => VT.OnObjectCreate2(ref this, ref pInfo, guidActivity, clsid, tsid, CtxtID, ObjectID, guidPartition);
			public HRESULT OnObjectDestroy2(ref COMSVCSEVENTINFO pInfo, uint64 CtxtID) mut => VT.OnObjectDestroy2(ref this, ref pInfo, CtxtID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComInstance2Events self, ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid clsid, in Guid tsid, uint64 CtxtID, uint64 ObjectID, in Guid guidPartition) OnObjectCreate2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComInstance2Events self, ref COMSVCSEVENTINFO pInfo, uint64 CtxtID) OnObjectDestroy2;
			}
		}
		[CRepr]
		public struct IComObjectPool2Events : IUnknown
		{
			public const new Guid IID = .(0x65bf6534, 0x85ea, 0x4f64, 0x8c, 0xf4, 0x3d, 0x97, 0x4b, 0x2a, 0xb1, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnObjPoolPutObject2(ref COMSVCSEVENTINFO pInfo, in Guid guidObject, int32 nReason, uint32 dwAvailable, uint64 oid) mut => VT.OnObjPoolPutObject2(ref this, ref pInfo, guidObject, nReason, dwAvailable, oid);
			public HRESULT OnObjPoolGetObject2(ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid guidObject, uint32 dwAvailable, uint64 oid, in Guid guidPartition) mut => VT.OnObjPoolGetObject2(ref this, ref pInfo, guidActivity, guidObject, dwAvailable, oid, guidPartition);
			public HRESULT OnObjPoolRecycleToTx2(ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid guidObject, in Guid guidTx, uint64 objid) mut => VT.OnObjPoolRecycleToTx2(ref this, ref pInfo, guidActivity, guidObject, guidTx, objid);
			public HRESULT OnObjPoolGetFromTx2(ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid guidObject, in Guid guidTx, uint64 objid, in Guid guidPartition) mut => VT.OnObjPoolGetFromTx2(ref this, ref pInfo, guidActivity, guidObject, guidTx, objid, guidPartition);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectPool2Events self, ref COMSVCSEVENTINFO pInfo, in Guid guidObject, int32 nReason, uint32 dwAvailable, uint64 oid) OnObjPoolPutObject2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectPool2Events self, ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid guidObject, uint32 dwAvailable, uint64 oid, in Guid guidPartition) OnObjPoolGetObject2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectPool2Events self, ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid guidObject, in Guid guidTx, uint64 objid) OnObjPoolRecycleToTx2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectPool2Events self, ref COMSVCSEVENTINFO pInfo, in Guid guidActivity, in Guid guidObject, in Guid guidTx, uint64 objid, in Guid guidPartition) OnObjPoolGetFromTx2;
			}
		}
		[CRepr]
		public struct IComObjectConstruction2Events : IUnknown
		{
			public const new Guid IID = .(0x4b5a7827, 0x8df2, 0x45c0, 0x8f, 0x6f, 0x57, 0xea, 0x1f, 0x85, 0x6a, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnObjectConstruct2(ref COMSVCSEVENTINFO pInfo, in Guid guidObject, PWSTR sConstructString, uint64 oid, in Guid guidPartition) mut => VT.OnObjectConstruct2(ref this, ref pInfo, guidObject, sConstructString, oid, guidPartition);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComObjectConstruction2Events self, ref COMSVCSEVENTINFO pInfo, in Guid guidObject, PWSTR sConstructString, uint64 oid, in Guid guidPartition) OnObjectConstruct2;
			}
		}
		[CRepr]
		public struct ISystemAppEventData : IUnknown
		{
			public const new Guid IID = .(0xd6d48a3c, 0xd5c5, 0x49e7, 0x8c, 0x74, 0x99, 0xe4, 0x88, 0x9e, 0xd5, 0x2f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Startup() mut => VT.Startup(ref this);
			public HRESULT OnDataChanged(uint32 dwPID, uint32 dwMask, uint32 dwNumberSinks, BSTR bstrDwMethodMask, uint32 dwReason, uint64 u64TraceHandle) mut => VT.OnDataChanged(ref this, dwPID, dwMask, dwNumberSinks, bstrDwMethodMask, dwReason, u64TraceHandle);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemAppEventData self) Startup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISystemAppEventData self, uint32 dwPID, uint32 dwMask, uint32 dwNumberSinks, BSTR bstrDwMethodMask, uint32 dwReason, uint64 u64TraceHandle) OnDataChanged;
			}
		}
		[CRepr]
		public struct IMtsEvents : IDispatch
		{
			public const new Guid IID = .(0xbacedf4d, 0x74ab, 0x11d0, 0xb1, 0x62, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PackageName(BSTR* pVal) mut => VT.get_PackageName(ref this, pVal);
			public HRESULT get_PackageGuid(BSTR* pVal) mut => VT.get_PackageGuid(ref this, pVal);
			public HRESULT PostEvent(ref VARIANT vEvent) mut => VT.PostEvent(ref this, ref vEvent);
			public HRESULT get_FireEvents(out int16 pVal) mut => VT.get_FireEvents(ref this, out pVal);
			public HRESULT GetProcessID(out int32 id) mut => VT.GetProcessID(ref this, out id);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMtsEvents self, BSTR* pVal) get_PackageName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMtsEvents self, BSTR* pVal) get_PackageGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMtsEvents self, ref VARIANT vEvent) PostEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMtsEvents self, out int16 pVal) get_FireEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMtsEvents self, out int32 id) GetProcessID;
			}
		}
		[CRepr]
		public struct IMtsEventInfo : IDispatch
		{
			public const new Guid IID = .(0xd56c3dc1, 0x8482, 0x11d0, 0xb1, 0x70, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Names(IUnknown** pUnk) mut => VT.get_Names(ref this, pUnk);
			public HRESULT get_DisplayName(BSTR* sDisplayName) mut => VT.get_DisplayName(ref this, sDisplayName);
			public HRESULT get_EventID(BSTR* sGuidEventID) mut => VT.get_EventID(ref this, sGuidEventID);
			public HRESULT get_Count(out int32 lCount) mut => VT.get_Count(ref this, out lCount);
			public HRESULT get_Value(BSTR sKey, out VARIANT pVal) mut => VT.get_Value(ref this, sKey, out pVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMtsEventInfo self, IUnknown** pUnk) get_Names;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMtsEventInfo self, BSTR* sDisplayName) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMtsEventInfo self, BSTR* sGuidEventID) get_EventID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMtsEventInfo self, out int32 lCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMtsEventInfo self, BSTR sKey, out VARIANT pVal) get_Value;
			}
		}
		[CRepr]
		public struct IMTSLocator : IDispatch
		{
			public const new Guid IID = .(0xd19b8bfd, 0x7f88, 0x11d0, 0xb1, 0x6e, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEventDispatcher(IUnknown** pUnk) mut => VT.GetEventDispatcher(ref this, pUnk);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMTSLocator self, IUnknown** pUnk) GetEventDispatcher;
			}
		}
		[CRepr]
		public struct IMtsGrp : IDispatch
		{
			public const new Guid IID = .(0x4b2e958c, 0x0393, 0x11d1, 0xb1, 0xab, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT Item(int32 lIndex, IUnknown** ppUnkDispatcher) mut => VT.Item(ref this, lIndex, ppUnkDispatcher);
			public HRESULT Refresh() mut => VT.Refresh(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMtsGrp self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMtsGrp self, int32 lIndex, IUnknown** ppUnkDispatcher) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMtsGrp self) Refresh;
			}
		}
		[CRepr]
		public struct IMessageMover : IDispatch
		{
			public const new Guid IID = .(0x588a085a, 0xb795, 0x11d1, 0x80, 0x54, 0x00, 0xc0, 0x4f, 0xc3, 0x40, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SourcePath(BSTR* pVal) mut => VT.get_SourcePath(ref this, pVal);
			public HRESULT put_SourcePath(BSTR newVal) mut => VT.put_SourcePath(ref this, newVal);
			public HRESULT get_DestPath(BSTR* pVal) mut => VT.get_DestPath(ref this, pVal);
			public HRESULT put_DestPath(BSTR newVal) mut => VT.put_DestPath(ref this, newVal);
			public HRESULT get_CommitBatchSize(out int32 pVal) mut => VT.get_CommitBatchSize(ref this, out pVal);
			public HRESULT put_CommitBatchSize(int32 newVal) mut => VT.put_CommitBatchSize(ref this, newVal);
			public HRESULT MoveMessages(out int32 plMessagesMoved) mut => VT.MoveMessages(ref this, out plMessagesMoved);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMessageMover self, BSTR* pVal) get_SourcePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMessageMover self, BSTR newVal) put_SourcePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMessageMover self, BSTR* pVal) get_DestPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMessageMover self, BSTR newVal) put_DestPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMessageMover self, out int32 pVal) get_CommitBatchSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMessageMover self, int32 newVal) put_CommitBatchSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMessageMover self, out int32 plMessagesMoved) MoveMessages;
			}
		}
		[CRepr]
		public struct IEventServerTrace : IDispatch
		{
			public const new Guid IID = .(0x9a9f12b8, 0x80af, 0x47ab, 0xa5, 0x79, 0x35, 0xea, 0x57, 0x72, 0x53, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartTraceGuid(BSTR bstrguidEvent, BSTR bstrguidFilter, int32 lPidFilter) mut => VT.StartTraceGuid(ref this, bstrguidEvent, bstrguidFilter, lPidFilter);
			public HRESULT StopTraceGuid(BSTR bstrguidEvent, BSTR bstrguidFilter, int32 lPidFilter) mut => VT.StopTraceGuid(ref this, bstrguidEvent, bstrguidFilter, lPidFilter);
			public HRESULT EnumTraceGuid(out int32 plCntGuids, BSTR* pbstrGuidList) mut => VT.EnumTraceGuid(ref this, out plCntGuids, pbstrGuidList);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventServerTrace self, BSTR bstrguidEvent, BSTR bstrguidFilter, int32 lPidFilter) StartTraceGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventServerTrace self, BSTR bstrguidEvent, BSTR bstrguidFilter, int32 lPidFilter) StopTraceGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventServerTrace self, out int32 plCntGuids, BSTR* pbstrGuidList) EnumTraceGuid;
			}
		}
		[CRepr]
		public struct IGetAppTrackerData : IUnknown
		{
			public const new Guid IID = .(0x507c3ac8, 0x3e12, 0x4cb0, 0x93, 0x66, 0x65, 0x3d, 0x3e, 0x05, 0x06, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetApplicationProcesses(in Guid PartitionId, in Guid ApplicationId, uint32 Flags, out uint32 NumApplicationProcesses, ApplicationProcessSummary** ApplicationProcesses) mut => VT.GetApplicationProcesses(ref this, PartitionId, ApplicationId, Flags, out NumApplicationProcesses, ApplicationProcesses);
			public HRESULT GetApplicationProcessDetails(in Guid ApplicationInstanceId, uint32 ProcessId, uint32 Flags, ApplicationProcessSummary* Summary, ApplicationProcessStatistics* Statistics, ApplicationProcessRecycleInfo* RecycleInfo, BOOL* AnyComponentsHangMonitored) mut => VT.GetApplicationProcessDetails(ref this, ApplicationInstanceId, ProcessId, Flags, Summary, Statistics, RecycleInfo, AnyComponentsHangMonitored);
			public HRESULT GetApplicationsInProcess(in Guid ApplicationInstanceId, uint32 ProcessId, in Guid PartitionId, uint32 Flags, out uint32 NumApplicationsInProcess, ApplicationSummary** Applications) mut => VT.GetApplicationsInProcess(ref this, ApplicationInstanceId, ProcessId, PartitionId, Flags, out NumApplicationsInProcess, Applications);
			public HRESULT GetComponentsInProcess(in Guid ApplicationInstanceId, uint32 ProcessId, in Guid PartitionId, in Guid ApplicationId, uint32 Flags, out uint32 NumComponentsInProcess, ComponentSummary** Components) mut => VT.GetComponentsInProcess(ref this, ApplicationInstanceId, ProcessId, PartitionId, ApplicationId, Flags, out NumComponentsInProcess, Components);
			public HRESULT GetComponentDetails(in Guid ApplicationInstanceId, uint32 ProcessId, in Guid Clsid, uint32 Flags, ComponentSummary* Summary, ComponentStatistics* Statistics, ComponentHangMonitorInfo* HangMonitorInfo) mut => VT.GetComponentDetails(ref this, ApplicationInstanceId, ProcessId, Clsid, Flags, Summary, Statistics, HangMonitorInfo);
			public HRESULT GetTrackerDataAsCollectionObject(IUnknown** TopLevelCollection) mut => VT.GetTrackerDataAsCollectionObject(ref this, TopLevelCollection);
			public HRESULT GetSuggestedPollingInterval(out uint32 PollingIntervalInSeconds) mut => VT.GetSuggestedPollingInterval(ref this, out PollingIntervalInSeconds);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetAppTrackerData self, in Guid PartitionId, in Guid ApplicationId, uint32 Flags, out uint32 NumApplicationProcesses, ApplicationProcessSummary** ApplicationProcesses) GetApplicationProcesses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetAppTrackerData self, in Guid ApplicationInstanceId, uint32 ProcessId, uint32 Flags, ApplicationProcessSummary* Summary, ApplicationProcessStatistics* Statistics, ApplicationProcessRecycleInfo* RecycleInfo, BOOL* AnyComponentsHangMonitored) GetApplicationProcessDetails;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetAppTrackerData self, in Guid ApplicationInstanceId, uint32 ProcessId, in Guid PartitionId, uint32 Flags, out uint32 NumApplicationsInProcess, ApplicationSummary** Applications) GetApplicationsInProcess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetAppTrackerData self, in Guid ApplicationInstanceId, uint32 ProcessId, in Guid PartitionId, in Guid ApplicationId, uint32 Flags, out uint32 NumComponentsInProcess, ComponentSummary** Components) GetComponentsInProcess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetAppTrackerData self, in Guid ApplicationInstanceId, uint32 ProcessId, in Guid Clsid, uint32 Flags, ComponentSummary* Summary, ComponentStatistics* Statistics, ComponentHangMonitorInfo* HangMonitorInfo) GetComponentDetails;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetAppTrackerData self, IUnknown** TopLevelCollection) GetTrackerDataAsCollectionObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetAppTrackerData self, out uint32 PollingIntervalInSeconds) GetSuggestedPollingInterval;
			}
		}
		[CRepr]
		public struct IDispenserManager : IUnknown
		{
			public const new Guid IID = .(0x5cb31e10, 0x2b5f, 0x11cf, 0xbe, 0x10, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterDispenser(ref IDispenserDriver __MIDL__IDispenserManager0000, PWSTR szDispenserName, out IHolder* __MIDL__IDispenserManager0001) mut => VT.RegisterDispenser(ref this, ref __MIDL__IDispenserManager0000, szDispenserName, out __MIDL__IDispenserManager0001);
			public HRESULT GetContext(out uint __MIDL__IDispenserManager0002, out uint __MIDL__IDispenserManager0003) mut => VT.GetContext(ref this, out __MIDL__IDispenserManager0002, out __MIDL__IDispenserManager0003);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispenserManager self, ref IDispenserDriver __MIDL__IDispenserManager0000, PWSTR szDispenserName, out IHolder* __MIDL__IDispenserManager0001) RegisterDispenser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispenserManager self, out uint __MIDL__IDispenserManager0002, out uint __MIDL__IDispenserManager0003) GetContext;
			}
		}
		[CRepr]
		public struct IHolder : IUnknown
		{
			public const new Guid IID = .(0xbf6a1850, 0x2b45, 0x11cf, 0xbe, 0x10, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AllocResource(uint __MIDL__IHolder0000, out uint __MIDL__IHolder0001) mut => VT.AllocResource(ref this, __MIDL__IHolder0000, out __MIDL__IHolder0001);
			public HRESULT FreeResource(uint __MIDL__IHolder0002) mut => VT.FreeResource(ref this, __MIDL__IHolder0002);
			public HRESULT TrackResource(uint __MIDL__IHolder0003) mut => VT.TrackResource(ref this, __MIDL__IHolder0003);
			public HRESULT TrackResourceS(out uint16 __MIDL__IHolder0004) mut => VT.TrackResourceS(ref this, out __MIDL__IHolder0004);
			public HRESULT UntrackResource(uint __MIDL__IHolder0005, BOOL __MIDL__IHolder0006) mut => VT.UntrackResource(ref this, __MIDL__IHolder0005, __MIDL__IHolder0006);
			public HRESULT UntrackResourceS(out uint16 __MIDL__IHolder0007, BOOL __MIDL__IHolder0008) mut => VT.UntrackResourceS(ref this, out __MIDL__IHolder0007, __MIDL__IHolder0008);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT RequestDestroyResource(uint __MIDL__IHolder0009) mut => VT.RequestDestroyResource(ref this, __MIDL__IHolder0009);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolder self, uint __MIDL__IHolder0000, out uint __MIDL__IHolder0001) AllocResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolder self, uint __MIDL__IHolder0002) FreeResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolder self, uint __MIDL__IHolder0003) TrackResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolder self, out uint16 __MIDL__IHolder0004) TrackResourceS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolder self, uint __MIDL__IHolder0005, BOOL __MIDL__IHolder0006) UntrackResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolder self, out uint16 __MIDL__IHolder0007, BOOL __MIDL__IHolder0008) UntrackResourceS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolder self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolder self, uint __MIDL__IHolder0009) RequestDestroyResource;
			}
		}
		[CRepr]
		public struct IDispenserDriver : IUnknown
		{
			public const new Guid IID = .(0x208b3651, 0x2b48, 0x11cf, 0xbe, 0x10, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateResource(uint ResTypId, out uint pResId, out int32 pSecsFreeBeforeDestroy) mut => VT.CreateResource(ref this, ResTypId, out pResId, out pSecsFreeBeforeDestroy);
			public HRESULT RateResource(uint ResTypId, uint ResId, BOOL fRequiresTransactionEnlistment, out uint32 pRating) mut => VT.RateResource(ref this, ResTypId, ResId, fRequiresTransactionEnlistment, out pRating);
			public HRESULT EnlistResource(uint ResId, uint TransId) mut => VT.EnlistResource(ref this, ResId, TransId);
			public HRESULT ResetResource(uint ResId) mut => VT.ResetResource(ref this, ResId);
			public HRESULT DestroyResource(uint ResId) mut => VT.DestroyResource(ref this, ResId);
			public HRESULT DestroyResourceS(out uint16 ResId) mut => VT.DestroyResourceS(ref this, out ResId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispenserDriver self, uint ResTypId, out uint pResId, out int32 pSecsFreeBeforeDestroy) CreateResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispenserDriver self, uint ResTypId, uint ResId, BOOL fRequiresTransactionEnlistment, out uint32 pRating) RateResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispenserDriver self, uint ResId, uint TransId) EnlistResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispenserDriver self, uint ResId) ResetResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispenserDriver self, uint ResId) DestroyResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispenserDriver self, out uint16 ResId) DestroyResourceS;
			}
		}
		[CRepr]
		public struct ITransactionProxy : IUnknown
		{
			public const new Guid IID = .(0x02558374, 0xdf2e, 0x4dae, 0xbd, 0x6b, 0x1d, 0x5c, 0x99, 0x4f, 0x9b, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Commit(Guid guid) mut => VT.Commit(ref this, guid);
			public HRESULT Abort() mut => VT.Abort(ref this);
			public HRESULT Promote(out ITransaction* pTransaction) mut => VT.Promote(ref this, out pTransaction);
			public HRESULT CreateVoter(ref ITransactionVoterNotifyAsync2 pTxAsync, out ITransactionVoterBallotAsync2* ppBallot) mut => VT.CreateVoter(ref this, ref pTxAsync, out ppBallot);
			public HRESULT GetIsolationLevel(out int32 __MIDL__ITransactionProxy0000) mut => VT.GetIsolationLevel(ref this, out __MIDL__ITransactionProxy0000);
			public HRESULT GetIdentifier(out Guid pbstrIdentifier) mut => VT.GetIdentifier(ref this, out pbstrIdentifier);
			public HRESULT IsReusable(out BOOL pfIsReusable) mut => VT.IsReusable(ref this, out pfIsReusable);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionProxy self, Guid guid) Commit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionProxy self) Abort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionProxy self, out ITransaction* pTransaction) Promote;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionProxy self, ref ITransactionVoterNotifyAsync2 pTxAsync, out ITransactionVoterBallotAsync2* ppBallot) CreateVoter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionProxy self, out int32 __MIDL__ITransactionProxy0000) GetIsolationLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionProxy self, out Guid pbstrIdentifier) GetIdentifier;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionProxy self, out BOOL pfIsReusable) IsReusable;
			}
		}
		[CRepr]
		public struct IContextSecurityPerimeter : IUnknown
		{
			public const new Guid IID = .(0xa7549a29, 0xa7c4, 0x42e1, 0x8d, 0xc1, 0x7e, 0x3d, 0x74, 0x8d, 0xc2, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPerimeterFlag(out BOOL pFlag) mut => VT.GetPerimeterFlag(ref this, out pFlag);
			public HRESULT SetPerimeterFlag(BOOL fFlag) mut => VT.SetPerimeterFlag(ref this, fFlag);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextSecurityPerimeter self, out BOOL pFlag) GetPerimeterFlag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextSecurityPerimeter self, BOOL fFlag) SetPerimeterFlag;
			}
		}
		[CRepr]
		public struct ITxProxyHolder : IUnknown
		{
			public const new Guid IID = .(0x13d86f31, 0x0139, 0x41af, 0xbc, 0xad, 0xc7, 0xd5, 0x04, 0x35, 0xfe, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetIdentifier(out Guid pGuidLtx) mut => VT.GetIdentifier(ref this, out pGuidLtx);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ITxProxyHolder self, out Guid pGuidLtx) GetIdentifier;
			}
		}
		[CRepr]
		public struct IObjectContext : IUnknown
		{
			public const new Guid IID = .(0x51372ae0, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstance(in Guid rclsid, in Guid riid, void** ppv) mut => VT.CreateInstance(ref this, rclsid, riid, ppv);
			public HRESULT SetComplete() mut => VT.SetComplete(ref this);
			public HRESULT SetAbort() mut => VT.SetAbort(ref this);
			public HRESULT EnableCommit() mut => VT.EnableCommit(ref this);
			public HRESULT DisableCommit() mut => VT.DisableCommit(ref this);
			public BOOL IsInTransaction() mut => VT.IsInTransaction(ref this);
			public BOOL IsSecurityEnabled() mut => VT.IsSecurityEnabled(ref this);
			public HRESULT IsCallerInRole(BSTR bstrRole, out BOOL pfIsInRole) mut => VT.IsCallerInRole(ref this, bstrRole, out pfIsInRole);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContext self, in Guid rclsid, in Guid riid, void** ppv) CreateInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContext self) SetComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContext self) SetAbort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContext self) EnableCommit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContext self) DisableCommit;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IObjectContext self) IsInTransaction;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IObjectContext self) IsSecurityEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContext self, BSTR bstrRole, out BOOL pfIsInRole) IsCallerInRole;
			}
		}
		[CRepr]
		public struct IObjectControl : IUnknown
		{
			public const new Guid IID = .(0x51372aec, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Activate() mut => VT.Activate(ref this);
			public void Deactivate() mut => VT.Deactivate(ref this);
			public BOOL CanBePooled() mut => VT.CanBePooled(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectControl self) Activate;
				public new function [CallingConvention(.Stdcall)] void(ref IObjectControl self) Deactivate;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IObjectControl self) CanBePooled;
			}
		}
		[CRepr]
		public struct IEnumNames : IUnknown
		{
			public const new Guid IID = .(0x51372af2, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, out BSTR rgname, out uint32 pceltFetched) mut => VT.Next(ref this, celt, out rgname, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumNames* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNames self, uint32 celt, out BSTR rgname, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNames self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNames self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumNames self, out IEnumNames* ppenum) Clone;
			}
		}
		[CRepr]
		public struct ISecurityProperty : IUnknown
		{
			public const new Guid IID = .(0x51372aea, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDirectCreatorSID(out PSID pSID) mut => VT.GetDirectCreatorSID(ref this, out pSID);
			public HRESULT GetOriginalCreatorSID(out PSID pSID) mut => VT.GetOriginalCreatorSID(ref this, out pSID);
			public HRESULT GetDirectCallerSID(out PSID pSID) mut => VT.GetDirectCallerSID(ref this, out pSID);
			public HRESULT GetOriginalCallerSID(out PSID pSID) mut => VT.GetOriginalCallerSID(ref this, out pSID);
			public HRESULT ReleaseSID(PSID pSID) mut => VT.ReleaseSID(ref this, pSID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityProperty self, out PSID pSID) GetDirectCreatorSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityProperty self, out PSID pSID) GetOriginalCreatorSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityProperty self, out PSID pSID) GetDirectCallerSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityProperty self, out PSID pSID) GetOriginalCallerSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityProperty self, PSID pSID) ReleaseSID;
			}
		}
		[CRepr]
		public struct ObjectControl : IUnknown
		{
			public const new Guid IID = .(0x7dc41850, 0x0c31, 0x11d0, 0x8b, 0x79, 0x00, 0xaa, 0x00, 0xb8, 0xa7, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Activate() mut => VT.Activate(ref this);
			public HRESULT Deactivate() mut => VT.Deactivate(ref this);
			public HRESULT CanBePooled(out int16 pbPoolable) mut => VT.CanBePooled(ref this, out pbPoolable);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectControl self) Activate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectControl self) Deactivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ObjectControl self, out int16 pbPoolable) CanBePooled;
			}
		}
		[CRepr]
		public struct ISharedProperty : IDispatch
		{
			public const new Guid IID = .(0x2a005c01, 0xa5de, 0x11cf, 0x9e, 0x66, 0x00, 0xaa, 0x00, 0xa3, 0xf4, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(out VARIANT pVal) mut => VT.get_Value(ref this, out pVal);
			public HRESULT put_Value(VARIANT val) mut => VT.put_Value(ref this, val);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedProperty self, out VARIANT pVal) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedProperty self, VARIANT val) put_Value;
			}
		}
		[CRepr]
		public struct ISharedPropertyGroup : IDispatch
		{
			public const new Guid IID = .(0x2a005c07, 0xa5de, 0x11cf, 0x9e, 0x66, 0x00, 0xaa, 0x00, 0xa3, 0xf4, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreatePropertyByPosition(int32 Index, out int16 fExists, ISharedProperty** ppProp) mut => VT.CreatePropertyByPosition(ref this, Index, out fExists, ppProp);
			public HRESULT get_PropertyByPosition(int32 Index, ISharedProperty** ppProperty) mut => VT.get_PropertyByPosition(ref this, Index, ppProperty);
			public HRESULT CreateProperty(BSTR Name, out int16 fExists, ISharedProperty** ppProp) mut => VT.CreateProperty(ref this, Name, out fExists, ppProp);
			public HRESULT get_Property(BSTR Name, ISharedProperty** ppProperty) mut => VT.get_Property(ref this, Name, ppProperty);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedPropertyGroup self, int32 Index, out int16 fExists, ISharedProperty** ppProp) CreatePropertyByPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedPropertyGroup self, int32 Index, ISharedProperty** ppProperty) get_PropertyByPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedPropertyGroup self, BSTR Name, out int16 fExists, ISharedProperty** ppProp) CreateProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedPropertyGroup self, BSTR Name, ISharedProperty** ppProperty) get_Property;
			}
		}
		[CRepr]
		public struct ISharedPropertyGroupManager : IDispatch
		{
			public const new Guid IID = .(0x2a005c0d, 0xa5de, 0x11cf, 0x9e, 0x66, 0x00, 0xaa, 0x00, 0xa3, 0xf4, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreatePropertyGroup(BSTR Name, out int32 dwIsoMode, out int32 dwRelMode, out int16 fExists, ISharedPropertyGroup** ppGroup) mut => VT.CreatePropertyGroup(ref this, Name, out dwIsoMode, out dwRelMode, out fExists, ppGroup);
			public HRESULT get_Group(BSTR Name, ISharedPropertyGroup** ppGroup) mut => VT.get_Group(ref this, Name, ppGroup);
			public HRESULT get__NewEnum(IUnknown** retval) mut => VT.get__NewEnum(ref this, retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedPropertyGroupManager self, BSTR Name, out int32 dwIsoMode, out int32 dwRelMode, out int16 fExists, ISharedPropertyGroup** ppGroup) CreatePropertyGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedPropertyGroupManager self, BSTR Name, ISharedPropertyGroup** ppGroup) get_Group;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedPropertyGroupManager self, IUnknown** retval) get__NewEnum;
			}
		}
		[CRepr]
		public struct IObjectConstruct : IUnknown
		{
			public const new Guid IID = .(0x41c4f8b3, 0x7439, 0x11d2, 0x98, 0xcb, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Construct(ref IDispatch pCtorObj) mut => VT.Construct(ref this, ref pCtorObj);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectConstruct self, ref IDispatch pCtorObj) Construct;
			}
		}
		[CRepr]
		public struct IObjectConstructString : IDispatch
		{
			public const new Guid IID = .(0x41c4f8b2, 0x7439, 0x11d2, 0x98, 0xcb, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ConstructString(out BSTR pVal) mut => VT.get_ConstructString(ref this, out pVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectConstructString self, out BSTR pVal) get_ConstructString;
			}
		}
		[CRepr]
		public struct IObjectContextActivity : IUnknown
		{
			public const new Guid IID = .(0x51372afc, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetActivityId(out Guid pGUID) mut => VT.GetActivityId(ref this, out pGUID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContextActivity self, out Guid pGUID) GetActivityId;
			}
		}
		[CRepr]
		public struct IObjectContextInfo : IUnknown
		{
			public const new Guid IID = .(0x75b52ddb, 0xe8ed, 0x11d1, 0x93, 0xad, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public BOOL IsInTransaction() mut => VT.IsInTransaction(ref this);
			public HRESULT GetTransaction(out IUnknown* pptrans) mut => VT.GetTransaction(ref this, out pptrans);
			public HRESULT GetTransactionId(out Guid pGuid) mut => VT.GetTransactionId(ref this, out pGuid);
			public HRESULT GetActivityId(out Guid pGUID) mut => VT.GetActivityId(ref this, out pGUID);
			public HRESULT GetContextId(out Guid pGuid) mut => VT.GetContextId(ref this, out pGuid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] BOOL(ref IObjectContextInfo self) IsInTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContextInfo self, out IUnknown* pptrans) GetTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContextInfo self, out Guid pGuid) GetTransactionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContextInfo self, out Guid pGUID) GetActivityId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContextInfo self, out Guid pGuid) GetContextId;
			}
		}
		[CRepr]
		public struct IObjectContextInfo2 : IObjectContextInfo
		{
			public const new Guid IID = .(0x594be71a, 0x4bc4, 0x438b, 0x91, 0x97, 0xcf, 0xd1, 0x76, 0x24, 0x8b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPartitionId(out Guid pGuid) mut => VT.GetPartitionId(ref this, out pGuid);
			public HRESULT GetApplicationId(out Guid pGuid) mut => VT.GetApplicationId(ref this, out pGuid);
			public HRESULT GetApplicationInstanceId(out Guid pGuid) mut => VT.GetApplicationInstanceId(ref this, out pGuid);

			[CRepr]
			public struct VTable : IObjectContextInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContextInfo2 self, out Guid pGuid) GetPartitionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContextInfo2 self, out Guid pGuid) GetApplicationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContextInfo2 self, out Guid pGuid) GetApplicationInstanceId;
			}
		}
		[CRepr]
		public struct ITransactionStatus : IUnknown
		{
			public const new Guid IID = .(0x61f589e8, 0x3724, 0x4898, 0xa0, 0xa4, 0x66, 0x4a, 0xe9, 0xe1, 0xd1, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTransactionStatus(HRESULT hrStatus) mut => VT.SetTransactionStatus(ref this, hrStatus);
			public HRESULT GetTransactionStatus(out HRESULT pHrStatus) mut => VT.GetTransactionStatus(ref this, out pHrStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionStatus self, HRESULT hrStatus) SetTransactionStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionStatus self, out HRESULT pHrStatus) GetTransactionStatus;
			}
		}
		[CRepr]
		public struct IObjectContextTip : IUnknown
		{
			public const new Guid IID = .(0x92fd41ca, 0xbad9, 0x11d2, 0x9a, 0x2d, 0x00, 0xc0, 0x4f, 0x79, 0x7b, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTipUrl(out BSTR pTipUrl) mut => VT.GetTipUrl(ref this, out pTipUrl);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectContextTip self, out BSTR pTipUrl) GetTipUrl;
			}
		}
		[CRepr]
		public struct IPlaybackControl : IUnknown
		{
			public const new Guid IID = .(0x51372afd, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FinalClientRetry() mut => VT.FinalClientRetry(ref this);
			public HRESULT FinalServerRetry() mut => VT.FinalServerRetry(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPlaybackControl self) FinalClientRetry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPlaybackControl self) FinalServerRetry;
			}
		}
		[CRepr]
		public struct IGetContextProperties : IUnknown
		{
			public const new Guid IID = .(0x51372af4, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Count(out int32 plCount) mut => VT.Count(ref this, out plCount);
			public HRESULT GetProperty(BSTR name, out VARIANT pProperty) mut => VT.GetProperty(ref this, name, out pProperty);
			public HRESULT EnumNames(out IEnumNames* ppenum) mut => VT.EnumNames(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetContextProperties self, out int32 plCount) Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetContextProperties self, BSTR name, out VARIANT pProperty) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetContextProperties self, out IEnumNames* ppenum) EnumNames;
			}
		}
		[CRepr]
		public struct IContextState : IUnknown
		{
			public const new Guid IID = .(0x3c05e54b, 0xa42a, 0x11d2, 0xaf, 0xc4, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDeactivateOnReturn(int16 bDeactivate) mut => VT.SetDeactivateOnReturn(ref this, bDeactivate);
			public HRESULT GetDeactivateOnReturn(out int16 pbDeactivate) mut => VT.GetDeactivateOnReturn(ref this, out pbDeactivate);
			public HRESULT SetMyTransactionVote(TransactionVote txVote) mut => VT.SetMyTransactionVote(ref this, txVote);
			public HRESULT GetMyTransactionVote(out TransactionVote ptxVote) mut => VT.GetMyTransactionVote(ref this, out ptxVote);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextState self, int16 bDeactivate) SetDeactivateOnReturn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextState self, out int16 pbDeactivate) GetDeactivateOnReturn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextState self, TransactionVote txVote) SetMyTransactionVote;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextState self, out TransactionVote ptxVote) GetMyTransactionVote;
			}
		}
		[CRepr]
		public struct IPoolManager : IDispatch
		{
			public const new Guid IID = .(0x0a469861, 0x5a91, 0x43a0, 0x99, 0xb6, 0xd5, 0xe1, 0x79, 0xbb, 0x06, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShutdownPool(BSTR CLSIDOrProgID) mut => VT.ShutdownPool(ref this, CLSIDOrProgID);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPoolManager self, BSTR CLSIDOrProgID) ShutdownPool;
			}
		}
		[CRepr]
		public struct ISelectCOMLBServer : IUnknown
		{
			public const new Guid IID = .(0xdcf443f4, 0x3f8a, 0x4872, 0xb9, 0xf0, 0x36, 0x9a, 0x79, 0x6d, 0x12, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init() mut => VT.Init(ref this);
			public HRESULT GetLBServer(ref IUnknown pUnk) mut => VT.GetLBServer(ref this, ref pUnk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectCOMLBServer self) Init;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectCOMLBServer self, ref IUnknown pUnk) GetLBServer;
			}
		}
		[CRepr]
		public struct ICOMLBArguments : IUnknown
		{
			public const new Guid IID = .(0x3a0f150f, 0x8ee5, 0x4b94, 0xb4, 0x0e, 0xae, 0xf2, 0xf9, 0xe4, 0x2e, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCLSID(out Guid pCLSID) mut => VT.GetCLSID(ref this, out pCLSID);
			public HRESULT SetCLSID(out Guid pCLSID) mut => VT.SetCLSID(ref this, out pCLSID);
			public HRESULT GetMachineName(uint32 cchSvr, char16* szServerName) mut => VT.GetMachineName(ref this, cchSvr, szServerName);
			public HRESULT SetMachineName(uint32 cchSvr, char16* szServerName) mut => VT.SetMachineName(ref this, cchSvr, szServerName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMLBArguments self, out Guid pCLSID) GetCLSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMLBArguments self, out Guid pCLSID) SetCLSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMLBArguments self, uint32 cchSvr, char16* szServerName) GetMachineName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICOMLBArguments self, uint32 cchSvr, char16* szServerName) SetMachineName;
			}
		}
		[CRepr]
		public struct ICrmLogControl : IUnknown
		{
			public const new Guid IID = .(0xa0e174b3, 0xd26e, 0x11d2, 0x8f, 0x84, 0x00, 0x80, 0x5f, 0xc7, 0xbc, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TransactionUOW(BSTR* pVal) mut => VT.get_TransactionUOW(ref this, pVal);
			public HRESULT RegisterCompensator(PWSTR lpcwstrProgIdCompensator, PWSTR lpcwstrDescription, int32 lCrmRegFlags) mut => VT.RegisterCompensator(ref this, lpcwstrProgIdCompensator, lpcwstrDescription, lCrmRegFlags);
			public HRESULT WriteLogRecordVariants(ref VARIANT pLogRecord) mut => VT.WriteLogRecordVariants(ref this, ref pLogRecord);
			public HRESULT ForceLog() mut => VT.ForceLog(ref this);
			public HRESULT ForgetLogRecord() mut => VT.ForgetLogRecord(ref this);
			public HRESULT ForceTransactionToAbort() mut => VT.ForceTransactionToAbort(ref this);
			public HRESULT WriteLogRecord(BLOB* rgBlob, uint32 cBlob) mut => VT.WriteLogRecord(ref this, rgBlob, cBlob);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmLogControl self, BSTR* pVal) get_TransactionUOW;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmLogControl self, PWSTR lpcwstrProgIdCompensator, PWSTR lpcwstrDescription, int32 lCrmRegFlags) RegisterCompensator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmLogControl self, ref VARIANT pLogRecord) WriteLogRecordVariants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmLogControl self) ForceLog;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmLogControl self) ForgetLogRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmLogControl self) ForceTransactionToAbort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmLogControl self, BLOB* rgBlob, uint32 cBlob) WriteLogRecord;
			}
		}
		[CRepr]
		public struct ICrmCompensatorVariants : IUnknown
		{
			public const new Guid IID = .(0xf0baf8e4, 0x7804, 0x11d1, 0x82, 0xe9, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetLogControlVariants(ICrmLogControl* pLogControl) mut => VT.SetLogControlVariants(ref this, pLogControl);
			public HRESULT BeginPrepareVariants() mut => VT.BeginPrepareVariants(ref this);
			public HRESULT PrepareRecordVariants(ref VARIANT pLogRecord, out int16 pbForget) mut => VT.PrepareRecordVariants(ref this, ref pLogRecord, out pbForget);
			public HRESULT EndPrepareVariants(out int16 pbOkToPrepare) mut => VT.EndPrepareVariants(ref this, out pbOkToPrepare);
			public HRESULT BeginCommitVariants(int16 bRecovery) mut => VT.BeginCommitVariants(ref this, bRecovery);
			public HRESULT CommitRecordVariants(ref VARIANT pLogRecord, out int16 pbForget) mut => VT.CommitRecordVariants(ref this, ref pLogRecord, out pbForget);
			public HRESULT EndCommitVariants() mut => VT.EndCommitVariants(ref this);
			public HRESULT BeginAbortVariants(int16 bRecovery) mut => VT.BeginAbortVariants(ref this, bRecovery);
			public HRESULT AbortRecordVariants(ref VARIANT pLogRecord, out int16 pbForget) mut => VT.AbortRecordVariants(ref this, ref pLogRecord, out pbForget);
			public HRESULT EndAbortVariants() mut => VT.EndAbortVariants(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensatorVariants self, ICrmLogControl* pLogControl) SetLogControlVariants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensatorVariants self) BeginPrepareVariants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensatorVariants self, ref VARIANT pLogRecord, out int16 pbForget) PrepareRecordVariants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensatorVariants self, out int16 pbOkToPrepare) EndPrepareVariants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensatorVariants self, int16 bRecovery) BeginCommitVariants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensatorVariants self, ref VARIANT pLogRecord, out int16 pbForget) CommitRecordVariants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensatorVariants self) EndCommitVariants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensatorVariants self, int16 bRecovery) BeginAbortVariants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensatorVariants self, ref VARIANT pLogRecord, out int16 pbForget) AbortRecordVariants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensatorVariants self) EndAbortVariants;
			}
		}
		[CRepr]
		public struct ICrmCompensator : IUnknown
		{
			public const new Guid IID = .(0xbbc01830, 0x8d3b, 0x11d1, 0x82, 0xec, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetLogControl(ICrmLogControl* pLogControl) mut => VT.SetLogControl(ref this, pLogControl);
			public HRESULT BeginPrepare() mut => VT.BeginPrepare(ref this);
			public HRESULT PrepareRecord(CrmLogRecordRead crmLogRec, out BOOL pfForget) mut => VT.PrepareRecord(ref this, crmLogRec, out pfForget);
			public HRESULT EndPrepare(out BOOL pfOkToPrepare) mut => VT.EndPrepare(ref this, out pfOkToPrepare);
			public HRESULT BeginCommit(BOOL fRecovery) mut => VT.BeginCommit(ref this, fRecovery);
			public HRESULT CommitRecord(CrmLogRecordRead crmLogRec, out BOOL pfForget) mut => VT.CommitRecord(ref this, crmLogRec, out pfForget);
			public HRESULT EndCommit() mut => VT.EndCommit(ref this);
			public HRESULT BeginAbort(BOOL fRecovery) mut => VT.BeginAbort(ref this, fRecovery);
			public HRESULT AbortRecord(CrmLogRecordRead crmLogRec, out BOOL pfForget) mut => VT.AbortRecord(ref this, crmLogRec, out pfForget);
			public HRESULT EndAbort() mut => VT.EndAbort(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensator self, ICrmLogControl* pLogControl) SetLogControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensator self) BeginPrepare;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensator self, CrmLogRecordRead crmLogRec, out BOOL pfForget) PrepareRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensator self, out BOOL pfOkToPrepare) EndPrepare;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensator self, BOOL fRecovery) BeginCommit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensator self, CrmLogRecordRead crmLogRec, out BOOL pfForget) CommitRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensator self) EndCommit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensator self, BOOL fRecovery) BeginAbort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensator self, CrmLogRecordRead crmLogRec, out BOOL pfForget) AbortRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmCompensator self) EndAbort;
			}
		}
		[CRepr]
		public struct ICrmMonitorLogRecords : IUnknown
		{
			public const new Guid IID = .(0x70c8e441, 0xc7ed, 0x11d1, 0x82, 0xfb, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT get_TransactionState(out CrmTransactionState pVal) mut => VT.get_TransactionState(ref this, out pVal);
			public HRESULT get_StructuredRecords(out int16 pVal) mut => VT.get_StructuredRecords(ref this, out pVal);
			public HRESULT GetLogRecord(uint32 dwIndex, out CrmLogRecordRead pCrmLogRec) mut => VT.GetLogRecord(ref this, dwIndex, out pCrmLogRec);
			public HRESULT GetLogRecordVariants(VARIANT IndexNumber, out VARIANT pLogRecord) mut => VT.GetLogRecordVariants(ref this, IndexNumber, out pLogRecord);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitorLogRecords self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitorLogRecords self, out CrmTransactionState pVal) get_TransactionState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitorLogRecords self, out int16 pVal) get_StructuredRecords;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitorLogRecords self, uint32 dwIndex, out CrmLogRecordRead pCrmLogRec) GetLogRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitorLogRecords self, VARIANT IndexNumber, out VARIANT pLogRecord) GetLogRecordVariants;
			}
		}
		[CRepr]
		public struct ICrmMonitorClerks : IDispatch
		{
			public const new Guid IID = .(0x70c8e442, 0xc7ed, 0x11d1, 0x82, 0xfb, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Item(VARIANT Index, out VARIANT pItem) mut => VT.Item(ref this, Index, out pItem);
			public HRESULT get__NewEnum(IUnknown** pVal) mut => VT.get__NewEnum(ref this, pVal);
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT ProgIdCompensator(VARIANT Index, out VARIANT pItem) mut => VT.ProgIdCompensator(ref this, Index, out pItem);
			public HRESULT Description(VARIANT Index, out VARIANT pItem) mut => VT.Description(ref this, Index, out pItem);
			public HRESULT TransactionUOW(VARIANT Index, out VARIANT pItem) mut => VT.TransactionUOW(ref this, Index, out pItem);
			public HRESULT ActivityId(VARIANT Index, out VARIANT pItem) mut => VT.ActivityId(ref this, Index, out pItem);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitorClerks self, VARIANT Index, out VARIANT pItem) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitorClerks self, IUnknown** pVal) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitorClerks self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitorClerks self, VARIANT Index, out VARIANT pItem) ProgIdCompensator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitorClerks self, VARIANT Index, out VARIANT pItem) Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitorClerks self, VARIANT Index, out VARIANT pItem) TransactionUOW;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitorClerks self, VARIANT Index, out VARIANT pItem) ActivityId;
			}
		}
		[CRepr]
		public struct ICrmMonitor : IUnknown
		{
			public const new Guid IID = .(0x70c8e443, 0xc7ed, 0x11d1, 0x82, 0xfb, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClerks(ICrmMonitorClerks** pClerks) mut => VT.GetClerks(ref this, pClerks);
			public HRESULT HoldClerk(VARIANT Index, out VARIANT pItem) mut => VT.HoldClerk(ref this, Index, out pItem);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitor self, ICrmMonitorClerks** pClerks) GetClerks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmMonitor self, VARIANT Index, out VARIANT pItem) HoldClerk;
			}
		}
		[CRepr]
		public struct ICrmFormatLogRecords : IUnknown
		{
			public const new Guid IID = .(0x9c51d821, 0xc98b, 0x11d1, 0x82, 0xfb, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetColumnCount(out int32 plColumnCount) mut => VT.GetColumnCount(ref this, out plColumnCount);
			public HRESULT GetColumnHeaders(out VARIANT pHeaders) mut => VT.GetColumnHeaders(ref this, out pHeaders);
			public HRESULT GetColumn(CrmLogRecordRead CrmLogRec, out VARIANT pFormattedLogRecord) mut => VT.GetColumn(ref this, CrmLogRec, out pFormattedLogRecord);
			public HRESULT GetColumnVariants(VARIANT LogRecord, out VARIANT pFormattedLogRecord) mut => VT.GetColumnVariants(ref this, LogRecord, out pFormattedLogRecord);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmFormatLogRecords self, out int32 plColumnCount) GetColumnCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmFormatLogRecords self, out VARIANT pHeaders) GetColumnHeaders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmFormatLogRecords self, CrmLogRecordRead CrmLogRec, out VARIANT pFormattedLogRecord) GetColumn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICrmFormatLogRecords self, VARIANT LogRecord, out VARIANT pFormattedLogRecord) GetColumnVariants;
			}
		}
		[CRepr]
		public struct IServiceIISIntrinsicsConfig : IUnknown
		{
			public const new Guid IID = .(0x1a0cf920, 0xd452, 0x46f4, 0xbc, 0x36, 0x48, 0x11, 0x8d, 0x54, 0xea, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IISIntrinsicsConfig(CSC_IISIntrinsicsConfig iisIntrinsicsConfig) mut => VT.IISIntrinsicsConfig(ref this, iisIntrinsicsConfig);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceIISIntrinsicsConfig self, CSC_IISIntrinsicsConfig iisIntrinsicsConfig) IISIntrinsicsConfig;
			}
		}
		[CRepr]
		public struct IServiceComTIIntrinsicsConfig : IUnknown
		{
			public const new Guid IID = .(0x09e6831e, 0x04e1, 0x4ed4, 0x9d, 0x0f, 0xe8, 0xb1, 0x68, 0xba, 0xfe, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComTIIntrinsicsConfig(CSC_COMTIIntrinsicsConfig comtiIntrinsicsConfig) mut => VT.ComTIIntrinsicsConfig(ref this, comtiIntrinsicsConfig);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceComTIIntrinsicsConfig self, CSC_COMTIIntrinsicsConfig comtiIntrinsicsConfig) ComTIIntrinsicsConfig;
			}
		}
		[CRepr]
		public struct IServiceSxsConfig : IUnknown
		{
			public const new Guid IID = .(0xc7cd7379, 0xf3f2, 0x4634, 0x81, 0x1b, 0x70, 0x32, 0x81, 0xd7, 0x3e, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SxsConfig(CSC_SxsConfig scsConfig) mut => VT.SxsConfig(ref this, scsConfig);
			public HRESULT SxsName(PWSTR szSxsName) mut => VT.SxsName(ref this, szSxsName);
			public HRESULT SxsDirectory(PWSTR szSxsDirectory) mut => VT.SxsDirectory(ref this, szSxsDirectory);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceSxsConfig self, CSC_SxsConfig scsConfig) SxsConfig;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceSxsConfig self, PWSTR szSxsName) SxsName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceSxsConfig self, PWSTR szSxsDirectory) SxsDirectory;
			}
		}
		[CRepr]
		public struct ICheckSxsConfig : IUnknown
		{
			public const new Guid IID = .(0x0ff5a96f, 0x11fc, 0x47d1, 0xba, 0xa6, 0x25, 0xdd, 0x34, 0x7e, 0x72, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsSameSxsConfig(PWSTR wszSxsName, PWSTR wszSxsDirectory, PWSTR wszSxsAppName) mut => VT.IsSameSxsConfig(ref this, wszSxsName, wszSxsDirectory, wszSxsAppName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICheckSxsConfig self, PWSTR wszSxsName, PWSTR wszSxsDirectory, PWSTR wszSxsAppName) IsSameSxsConfig;
			}
		}
		[CRepr]
		public struct IServiceInheritanceConfig : IUnknown
		{
			public const new Guid IID = .(0x92186771, 0xd3b4, 0x4d77, 0xa8, 0xea, 0xee, 0x84, 0x2d, 0x58, 0x6f, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ContainingContextTreatment(CSC_InheritanceConfig inheritanceConfig) mut => VT.ContainingContextTreatment(ref this, inheritanceConfig);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceInheritanceConfig self, CSC_InheritanceConfig inheritanceConfig) ContainingContextTreatment;
			}
		}
		[CRepr]
		public struct IServiceThreadPoolConfig : IUnknown
		{
			public const new Guid IID = .(0x186d89bc, 0xf277, 0x4bcc, 0x80, 0xd5, 0x4d, 0xf7, 0xb8, 0x36, 0xef, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SelectThreadPool(CSC_ThreadPool threadPool) mut => VT.SelectThreadPool(ref this, threadPool);
			public HRESULT SetBindingInfo(CSC_Binding binding) mut => VT.SetBindingInfo(ref this, binding);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceThreadPoolConfig self, CSC_ThreadPool threadPool) SelectThreadPool;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceThreadPoolConfig self, CSC_Binding binding) SetBindingInfo;
			}
		}
		[CRepr]
		public struct IServiceTransactionConfigBase : IUnknown
		{
			public const new Guid IID = .(0x772b3fbe, 0x6ffd, 0x42fb, 0xb5, 0xf8, 0x8f, 0x9b, 0x26, 0x0f, 0x38, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConfigureTransaction(CSC_TransactionConfig transactionConfig) mut => VT.ConfigureTransaction(ref this, transactionConfig);
			public HRESULT IsolationLevel(COMAdminTxIsolationLevelOptions option) mut => VT.IsolationLevel(ref this, option);
			public HRESULT TransactionTimeout(uint32 ulTimeoutSec) mut => VT.TransactionTimeout(ref this, ulTimeoutSec);
			public HRESULT BringYourOwnTransaction(PWSTR szTipURL) mut => VT.BringYourOwnTransaction(ref this, szTipURL);
			public HRESULT NewTransactionDescription(PWSTR szTxDesc) mut => VT.NewTransactionDescription(ref this, szTxDesc);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceTransactionConfigBase self, CSC_TransactionConfig transactionConfig) ConfigureTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceTransactionConfigBase self, COMAdminTxIsolationLevelOptions option) IsolationLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceTransactionConfigBase self, uint32 ulTimeoutSec) TransactionTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceTransactionConfigBase self, PWSTR szTipURL) BringYourOwnTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceTransactionConfigBase self, PWSTR szTxDesc) NewTransactionDescription;
			}
		}
		[CRepr]
		public struct IServiceTransactionConfig : IServiceTransactionConfigBase
		{
			public const new Guid IID = .(0x59f4c2a3, 0xd3d7, 0x4a31, 0xb6, 0xe4, 0x6a, 0xb3, 0x17, 0x7c, 0x50, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConfigureBYOT(ITransaction* pITxByot) mut => VT.ConfigureBYOT(ref this, pITxByot);

			[CRepr]
			public struct VTable : IServiceTransactionConfigBase.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceTransactionConfig self, ITransaction* pITxByot) ConfigureBYOT;
			}
		}
		[CRepr]
		public struct IServiceSysTxnConfig : IServiceTransactionConfig
		{
			public const new Guid IID = .(0x33caf1a1, 0xfcb8, 0x472b, 0xb4, 0x5e, 0x96, 0x74, 0x48, 0xde, 0xd6, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConfigureBYOTSysTxn(ref ITransactionProxy pTxProxy) mut => VT.ConfigureBYOTSysTxn(ref this, ref pTxProxy);

			[CRepr]
			public struct VTable : IServiceTransactionConfig.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceSysTxnConfig self, ref ITransactionProxy pTxProxy) ConfigureBYOTSysTxn;
			}
		}
		[CRepr]
		public struct IServiceSynchronizationConfig : IUnknown
		{
			public const new Guid IID = .(0xfd880e81, 0x6dce, 0x4c58, 0xaf, 0x83, 0xa2, 0x08, 0x84, 0x6c, 0x00, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConfigureSynchronization(CSC_SynchronizationConfig synchConfig) mut => VT.ConfigureSynchronization(ref this, synchConfig);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceSynchronizationConfig self, CSC_SynchronizationConfig synchConfig) ConfigureSynchronization;
			}
		}
		[CRepr]
		public struct IServiceTrackerConfig : IUnknown
		{
			public const new Guid IID = .(0x6c3a3e1d, 0x0ba6, 0x4036, 0xb7, 0x6f, 0xd0, 0x40, 0x4d, 0xb8, 0x16, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TrackerConfig(CSC_TrackerConfig trackerConfig, PWSTR szTrackerAppName, PWSTR szTrackerCtxName) mut => VT.TrackerConfig(ref this, trackerConfig, szTrackerAppName, szTrackerCtxName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceTrackerConfig self, CSC_TrackerConfig trackerConfig, PWSTR szTrackerAppName, PWSTR szTrackerCtxName) TrackerConfig;
			}
		}
		[CRepr]
		public struct IServicePartitionConfig : IUnknown
		{
			public const new Guid IID = .(0x80182d03, 0x5ea4, 0x4831, 0xae, 0x97, 0x55, 0xbe, 0xff, 0xc2, 0xe5, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PartitionConfig(CSC_PartitionConfig partitionConfig) mut => VT.PartitionConfig(ref this, partitionConfig);
			public HRESULT PartitionID(in Guid guidPartitionID) mut => VT.PartitionID(ref this, guidPartitionID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePartitionConfig self, CSC_PartitionConfig partitionConfig) PartitionConfig;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePartitionConfig self, in Guid guidPartitionID) PartitionID;
			}
		}
		[CRepr]
		public struct IServiceCall : IUnknown
		{
			public const new Guid IID = .(0xbd3e2e12, 0x42dd, 0x40f4, 0xa0, 0x9a, 0x95, 0xa5, 0x0c, 0x58, 0x30, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCall() mut => VT.OnCall(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceCall self) OnCall;
			}
		}
		[CRepr]
		public struct IAsyncErrorNotify : IUnknown
		{
			public const new Guid IID = .(0xfe6777fb, 0xa674, 0x4177, 0x8f, 0x32, 0x6d, 0x70, 0x7e, 0x11, 0x34, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnError(HRESULT hr) mut => VT.OnError(ref this, hr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsyncErrorNotify self, HRESULT hr) OnError;
			}
		}
		[CRepr]
		public struct IServiceActivity : IUnknown
		{
			public const new Guid IID = .(0x67532e0c, 0x9e2f, 0x4450, 0xa3, 0x54, 0x03, 0x56, 0x33, 0x94, 0x4e, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SynchronousCall(IServiceCall* pIServiceCall) mut => VT.SynchronousCall(ref this, pIServiceCall);
			public HRESULT AsynchronousCall(IServiceCall* pIServiceCall) mut => VT.AsynchronousCall(ref this, pIServiceCall);
			public HRESULT BindToCurrentThread() mut => VT.BindToCurrentThread(ref this);
			public HRESULT UnbindFromThread() mut => VT.UnbindFromThread(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceActivity self, IServiceCall* pIServiceCall) SynchronousCall;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceActivity self, IServiceCall* pIServiceCall) AsynchronousCall;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceActivity self) BindToCurrentThread;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceActivity self) UnbindFromThread;
			}
		}
		[CRepr]
		public struct IThreadPoolKnobs : IUnknown
		{
			public const new Guid IID = .(0x51372af7, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMaxThreads(out int32 plcMaxThreads) mut => VT.GetMaxThreads(ref this, out plcMaxThreads);
			public HRESULT GetCurrentThreads(out int32 plcCurrentThreads) mut => VT.GetCurrentThreads(ref this, out plcCurrentThreads);
			public HRESULT SetMaxThreads(int32 lcMaxThreads) mut => VT.SetMaxThreads(ref this, lcMaxThreads);
			public HRESULT GetDeleteDelay(out int32 pmsecDeleteDelay) mut => VT.GetDeleteDelay(ref this, out pmsecDeleteDelay);
			public HRESULT SetDeleteDelay(int32 msecDeleteDelay) mut => VT.SetDeleteDelay(ref this, msecDeleteDelay);
			public HRESULT GetMaxQueuedRequests(out int32 plcMaxQueuedRequests) mut => VT.GetMaxQueuedRequests(ref this, out plcMaxQueuedRequests);
			public HRESULT GetCurrentQueuedRequests(out int32 plcCurrentQueuedRequests) mut => VT.GetCurrentQueuedRequests(ref this, out plcCurrentQueuedRequests);
			public HRESULT SetMaxQueuedRequests(int32 lcMaxQueuedRequests) mut => VT.SetMaxQueuedRequests(ref this, lcMaxQueuedRequests);
			public HRESULT SetMinThreads(int32 lcMinThreads) mut => VT.SetMinThreads(ref this, lcMinThreads);
			public HRESULT SetQueueDepth(int32 lcQueueDepth) mut => VT.SetQueueDepth(ref this, lcQueueDepth);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IThreadPoolKnobs self, out int32 plcMaxThreads) GetMaxThreads;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IThreadPoolKnobs self, out int32 plcCurrentThreads) GetCurrentThreads;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IThreadPoolKnobs self, int32 lcMaxThreads) SetMaxThreads;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IThreadPoolKnobs self, out int32 pmsecDeleteDelay) GetDeleteDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IThreadPoolKnobs self, int32 msecDeleteDelay) SetDeleteDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IThreadPoolKnobs self, out int32 plcMaxQueuedRequests) GetMaxQueuedRequests;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IThreadPoolKnobs self, out int32 plcCurrentQueuedRequests) GetCurrentQueuedRequests;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IThreadPoolKnobs self, int32 lcMaxQueuedRequests) SetMaxQueuedRequests;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IThreadPoolKnobs self, int32 lcMinThreads) SetMinThreads;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IThreadPoolKnobs self, int32 lcQueueDepth) SetQueueDepth;
			}
		}
		[CRepr]
		public struct IComStaThreadPoolKnobs : IUnknown
		{
			public const new Guid IID = .(0x324b64fa, 0x33b6, 0x11d2, 0x98, 0xb7, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMinThreadCount(uint32 minThreads) mut => VT.SetMinThreadCount(ref this, minThreads);
			public HRESULT GetMinThreadCount(out uint32 minThreads) mut => VT.GetMinThreadCount(ref this, out minThreads);
			public HRESULT SetMaxThreadCount(uint32 maxThreads) mut => VT.SetMaxThreadCount(ref this, maxThreads);
			public HRESULT GetMaxThreadCount(out uint32 maxThreads) mut => VT.GetMaxThreadCount(ref this, out maxThreads);
			public HRESULT SetActivityPerThread(uint32 activitiesPerThread) mut => VT.SetActivityPerThread(ref this, activitiesPerThread);
			public HRESULT GetActivityPerThread(out uint32 activitiesPerThread) mut => VT.GetActivityPerThread(ref this, out activitiesPerThread);
			public HRESULT SetActivityRatio(double activityRatio) mut => VT.SetActivityRatio(ref this, activityRatio);
			public HRESULT GetActivityRatio(out double activityRatio) mut => VT.GetActivityRatio(ref this, out activityRatio);
			public HRESULT GetThreadCount(out uint32 pdwThreads) mut => VT.GetThreadCount(ref this, out pdwThreads);
			public HRESULT GetQueueDepth(out uint32 pdwQDepth) mut => VT.GetQueueDepth(ref this, out pdwQDepth);
			public HRESULT SetQueueDepth(int32 dwQDepth) mut => VT.SetQueueDepth(ref this, dwQDepth);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs self, uint32 minThreads) SetMinThreadCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs self, out uint32 minThreads) GetMinThreadCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs self, uint32 maxThreads) SetMaxThreadCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs self, out uint32 maxThreads) GetMaxThreadCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs self, uint32 activitiesPerThread) SetActivityPerThread;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs self, out uint32 activitiesPerThread) GetActivityPerThread;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs self, double activityRatio) SetActivityRatio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs self, out double activityRatio) GetActivityRatio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs self, out uint32 pdwThreads) GetThreadCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs self, out uint32 pdwQDepth) GetQueueDepth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs self, int32 dwQDepth) SetQueueDepth;
			}
		}
		[CRepr]
		public struct IComMtaThreadPoolKnobs : IUnknown
		{
			public const new Guid IID = .(0xf9a76d2e, 0x76a5, 0x43eb, 0xa0, 0xc4, 0x49, 0xbe, 0xc8, 0xe4, 0x84, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MTASetMaxThreadCount(uint32 dwMaxThreads) mut => VT.MTASetMaxThreadCount(ref this, dwMaxThreads);
			public HRESULT MTAGetMaxThreadCount(out uint32 pdwMaxThreads) mut => VT.MTAGetMaxThreadCount(ref this, out pdwMaxThreads);
			public HRESULT MTASetThrottleValue(uint32 dwThrottle) mut => VT.MTASetThrottleValue(ref this, dwThrottle);
			public HRESULT MTAGetThrottleValue(out uint32 pdwThrottle) mut => VT.MTAGetThrottleValue(ref this, out pdwThrottle);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComMtaThreadPoolKnobs self, uint32 dwMaxThreads) MTASetMaxThreadCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComMtaThreadPoolKnobs self, out uint32 pdwMaxThreads) MTAGetMaxThreadCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComMtaThreadPoolKnobs self, uint32 dwThrottle) MTASetThrottleValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComMtaThreadPoolKnobs self, out uint32 pdwThrottle) MTAGetThrottleValue;
			}
		}
		[CRepr]
		public struct IComStaThreadPoolKnobs2 : IComStaThreadPoolKnobs
		{
			public const new Guid IID = .(0x73707523, 0xff9a, 0x4974, 0xbf, 0x84, 0x21, 0x08, 0xdc, 0x21, 0x37, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMaxCPULoad(out uint32 pdwLoad) mut => VT.GetMaxCPULoad(ref this, out pdwLoad);
			public HRESULT SetMaxCPULoad(int32 pdwLoad) mut => VT.SetMaxCPULoad(ref this, pdwLoad);
			public HRESULT GetCPUMetricEnabled(out BOOL pbMetricEnabled) mut => VT.GetCPUMetricEnabled(ref this, out pbMetricEnabled);
			public HRESULT SetCPUMetricEnabled(BOOL bMetricEnabled) mut => VT.SetCPUMetricEnabled(ref this, bMetricEnabled);
			public HRESULT GetCreateThreadsAggressively(out BOOL pbMetricEnabled) mut => VT.GetCreateThreadsAggressively(ref this, out pbMetricEnabled);
			public HRESULT SetCreateThreadsAggressively(BOOL bMetricEnabled) mut => VT.SetCreateThreadsAggressively(ref this, bMetricEnabled);
			public HRESULT GetMaxCSR(out uint32 pdwCSR) mut => VT.GetMaxCSR(ref this, out pdwCSR);
			public HRESULT SetMaxCSR(int32 dwCSR) mut => VT.SetMaxCSR(ref this, dwCSR);
			public HRESULT GetWaitTimeForThreadCleanup(out uint32 pdwThreadCleanupWaitTime) mut => VT.GetWaitTimeForThreadCleanup(ref this, out pdwThreadCleanupWaitTime);
			public HRESULT SetWaitTimeForThreadCleanup(int32 dwThreadCleanupWaitTime) mut => VT.SetWaitTimeForThreadCleanup(ref this, dwThreadCleanupWaitTime);

			[CRepr]
			public struct VTable : IComStaThreadPoolKnobs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs2 self, out uint32 pdwLoad) GetMaxCPULoad;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs2 self, int32 pdwLoad) SetMaxCPULoad;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs2 self, out BOOL pbMetricEnabled) GetCPUMetricEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs2 self, BOOL bMetricEnabled) SetCPUMetricEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs2 self, out BOOL pbMetricEnabled) GetCreateThreadsAggressively;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs2 self, BOOL bMetricEnabled) SetCreateThreadsAggressively;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs2 self, out uint32 pdwCSR) GetMaxCSR;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs2 self, int32 dwCSR) SetMaxCSR;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs2 self, out uint32 pdwThreadCleanupWaitTime) GetWaitTimeForThreadCleanup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComStaThreadPoolKnobs2 self, int32 dwThreadCleanupWaitTime) SetWaitTimeForThreadCleanup;
			}
		}
		[CRepr]
		public struct IProcessInitializer : IUnknown
		{
			public const new Guid IID = .(0x1113f52d, 0xdc7f, 0x4943, 0xae, 0xd6, 0x88, 0xd0, 0x40, 0x27, 0xe3, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Startup(IUnknown* punkProcessControl) mut => VT.Startup(ref this, punkProcessControl);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProcessInitializer self, IUnknown* punkProcessControl) Startup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProcessInitializer self) Shutdown;
			}
		}
		[CRepr]
		public struct IServicePoolConfig : IUnknown
		{
			public const new Guid IID = .(0xa9690656, 0x5bca, 0x470c, 0x84, 0x51, 0x25, 0x0c, 0x1f, 0x43, 0xa3, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_MaxPoolSize(uint32 dwMaxPool) mut => VT.put_MaxPoolSize(ref this, dwMaxPool);
			public HRESULT get_MaxPoolSize(out uint32 pdwMaxPool) mut => VT.get_MaxPoolSize(ref this, out pdwMaxPool);
			public HRESULT put_MinPoolSize(uint32 dwMinPool) mut => VT.put_MinPoolSize(ref this, dwMinPool);
			public HRESULT get_MinPoolSize(out uint32 pdwMinPool) mut => VT.get_MinPoolSize(ref this, out pdwMinPool);
			public HRESULT put_CreationTimeout(uint32 dwCreationTimeout) mut => VT.put_CreationTimeout(ref this, dwCreationTimeout);
			public HRESULT get_CreationTimeout(out uint32 pdwCreationTimeout) mut => VT.get_CreationTimeout(ref this, out pdwCreationTimeout);
			public HRESULT put_TransactionAffinity(BOOL fTxAffinity) mut => VT.put_TransactionAffinity(ref this, fTxAffinity);
			public HRESULT get_TransactionAffinity(out BOOL pfTxAffinity) mut => VT.get_TransactionAffinity(ref this, out pfTxAffinity);
			public HRESULT put_ClassFactory(ref IClassFactory pFactory) mut => VT.put_ClassFactory(ref this, ref pFactory);
			public HRESULT get_ClassFactory(out IClassFactory* pFactory) mut => VT.get_ClassFactory(ref this, out pFactory);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePoolConfig self, uint32 dwMaxPool) put_MaxPoolSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePoolConfig self, out uint32 pdwMaxPool) get_MaxPoolSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePoolConfig self, uint32 dwMinPool) put_MinPoolSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePoolConfig self, out uint32 pdwMinPool) get_MinPoolSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePoolConfig self, uint32 dwCreationTimeout) put_CreationTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePoolConfig self, out uint32 pdwCreationTimeout) get_CreationTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePoolConfig self, BOOL fTxAffinity) put_TransactionAffinity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePoolConfig self, out BOOL pfTxAffinity) get_TransactionAffinity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePoolConfig self, ref IClassFactory pFactory) put_ClassFactory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePoolConfig self, out IClassFactory* pFactory) get_ClassFactory;
			}
		}
		[CRepr]
		public struct IServicePool : IUnknown
		{
			public const new Guid IID = .(0xb302df81, 0xea45, 0x451e, 0x99, 0xa2, 0x09, 0xf9, 0xfd, 0x1b, 0x1e, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IUnknown pPoolConfig) mut => VT.Initialize(ref this, ref pPoolConfig);
			public HRESULT GetObject(in Guid riid, void** ppv) mut => VT.GetObject(ref this, riid, ppv);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePool self, ref IUnknown pPoolConfig) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePool self, in Guid riid, void** ppv) GetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServicePool self) Shutdown;
			}
		}
		[CRepr]
		public struct IManagedPooledObj : IUnknown
		{
			public const new Guid IID = .(0xc5da4bea, 0x1b42, 0x4437, 0x89, 0x26, 0xb6, 0xa3, 0x88, 0x60, 0xa7, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetHeld(BOOL m_bHeld) mut => VT.SetHeld(ref this, m_bHeld);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManagedPooledObj self, BOOL m_bHeld) SetHeld;
			}
		}
		[CRepr]
		public struct IManagedPoolAction : IUnknown
		{
			public const new Guid IID = .(0xda91b74e, 0x5388, 0x4783, 0x94, 0x9d, 0xc1, 0xcd, 0x5f, 0xb0, 0x05, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LastRelease() mut => VT.LastRelease(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManagedPoolAction self) LastRelease;
			}
		}
		[CRepr]
		public struct IManagedObjectInfo : IUnknown
		{
			public const new Guid IID = .(0x1427c51a, 0x4584, 0x49d8, 0x90, 0xa0, 0xc5, 0x0d, 0x80, 0x86, 0xcb, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIUnknown(out IUnknown* pUnk) mut => VT.GetIUnknown(ref this, out pUnk);
			public HRESULT GetIObjectControl(out IObjectControl* pCtrl) mut => VT.GetIObjectControl(ref this, out pCtrl);
			public HRESULT SetInPool(BOOL bInPool, ref IManagedPooledObj pPooledObj) mut => VT.SetInPool(ref this, bInPool, ref pPooledObj);
			public HRESULT SetWrapperStrength(BOOL bStrong) mut => VT.SetWrapperStrength(ref this, bStrong);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManagedObjectInfo self, out IUnknown* pUnk) GetIUnknown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManagedObjectInfo self, out IObjectControl* pCtrl) GetIObjectControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManagedObjectInfo self, BOOL bInPool, ref IManagedPooledObj pPooledObj) SetInPool;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManagedObjectInfo self, BOOL bStrong) SetWrapperStrength;
			}
		}
		[CRepr]
		public struct IAppDomainHelper : IDispatch
		{
			public const new Guid IID = .(0xc7b67079, 0x8255, 0x42c6, 0x9e, 0xc0, 0x69, 0x94, 0xa3, 0x54, 0x87, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IUnknown pUnkAD, int __MIDL__IAppDomainHelper0000, void* pPool) mut => VT.Initialize(ref this, ref pUnkAD, __MIDL__IAppDomainHelper0000, pPool);
			public HRESULT DoCallback(ref IUnknown pUnkAD, int __MIDL__IAppDomainHelper0001, void* pPool) mut => VT.DoCallback(ref this, ref pUnkAD, __MIDL__IAppDomainHelper0001, pPool);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppDomainHelper self, ref IUnknown pUnkAD, int __MIDL__IAppDomainHelper0000, void* pPool) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppDomainHelper self, ref IUnknown pUnkAD, int __MIDL__IAppDomainHelper0001, void* pPool) DoCallback;
			}
		}
		[CRepr]
		public struct IAssemblyLocator : IDispatch
		{
			public const new Guid IID = .(0x391ffbb9, 0xa8ee, 0x432a, 0xab, 0xc8, 0xba, 0xa2, 0x38, 0xda, 0xb9, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetModules(BSTR applicationDir, BSTR applicationName, BSTR assemblyName, SAFEARRAY** pModules) mut => VT.GetModules(ref this, applicationDir, applicationName, assemblyName, pModules);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAssemblyLocator self, BSTR applicationDir, BSTR applicationName, BSTR assemblyName, SAFEARRAY** pModules) GetModules;
			}
		}
		[CRepr]
		public struct IManagedActivationEvents : IUnknown
		{
			public const new Guid IID = .(0xa5f325af, 0x572f, 0x46da, 0xb8, 0xab, 0x82, 0x7c, 0x3d, 0x95, 0xd9, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateManagedStub(ref IManagedObjectInfo pInfo, BOOL fDist) mut => VT.CreateManagedStub(ref this, ref pInfo, fDist);
			public HRESULT DestroyManagedStub(ref IManagedObjectInfo pInfo) mut => VT.DestroyManagedStub(ref this, ref pInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManagedActivationEvents self, ref IManagedObjectInfo pInfo, BOOL fDist) CreateManagedStub;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManagedActivationEvents self, ref IManagedObjectInfo pInfo) DestroyManagedStub;
			}
		}
		[CRepr]
		public struct ISendMethodEvents : IUnknown
		{
			public const new Guid IID = .(0x2732fd59, 0xb2b4, 0x4d44, 0x87, 0x8c, 0x8b, 0x8f, 0x09, 0x62, 0x60, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SendMethodCall(void* pIdentity, in Guid riid, uint32 dwMeth) mut => VT.SendMethodCall(ref this, pIdentity, riid, dwMeth);
			public HRESULT SendMethodReturn(void* pIdentity, in Guid riid, uint32 dwMeth, HRESULT hrCall, HRESULT hrServer) mut => VT.SendMethodReturn(ref this, pIdentity, riid, dwMeth, hrCall, hrServer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISendMethodEvents self, void* pIdentity, in Guid riid, uint32 dwMeth) SendMethodCall;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISendMethodEvents self, void* pIdentity, in Guid riid, uint32 dwMeth, HRESULT hrCall, HRESULT hrServer) SendMethodReturn;
			}
		}
		[CRepr]
		public struct ITransactionResourcePool : IUnknown
		{
			public const new Guid IID = .(0xc5feb7c1, 0x346a, 0x11d1, 0xb1, 0xcc, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PutResource(ref IObjPool pPool, ref IUnknown pUnk) mut => VT.PutResource(ref this, ref pPool, ref pUnk);
			public HRESULT GetResource(ref IObjPool pPool, out IUnknown* ppUnk) mut => VT.GetResource(ref this, ref pPool, out ppUnk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionResourcePool self, ref IObjPool pPool, ref IUnknown pUnk) PutResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionResourcePool self, ref IObjPool pPool, out IUnknown* ppUnk) GetResource;
			}
		}
		[CRepr]
		public struct IMTSCall : IUnknown
		{
			public const new Guid IID = .(0x51372aef, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCall() mut => VT.OnCall(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMTSCall self) OnCall;
			}
		}
		[CRepr]
		public struct IContextProperties : IUnknown
		{
			public const new Guid IID = .(0xd396da85, 0xbf8f, 0x11d1, 0xbb, 0xae, 0x00, 0xc0, 0x4f, 0xc2, 0xfa, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Count(out int32 plCount) mut => VT.Count(ref this, out plCount);
			public HRESULT GetProperty(BSTR name, out VARIANT pProperty) mut => VT.GetProperty(ref this, name, out pProperty);
			public HRESULT EnumNames(out IEnumNames* ppenum) mut => VT.EnumNames(ref this, out ppenum);
			public HRESULT SetProperty(BSTR name, VARIANT property) mut => VT.SetProperty(ref this, name, property);
			public HRESULT RemoveProperty(BSTR name) mut => VT.RemoveProperty(ref this, name);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextProperties self, out int32 plCount) Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextProperties self, BSTR name, out VARIANT pProperty) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextProperties self, out IEnumNames* ppenum) EnumNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextProperties self, BSTR name, VARIANT property) SetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextProperties self, BSTR name) RemoveProperty;
			}
		}
		[CRepr]
		public struct IObjPool : IUnknown
		{
			public const new Guid IID = .(0x7d8805a0, 0x2ea7, 0x11d1, 0xb1, 0xcc, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public void Reserved1() mut => VT.Reserved1(ref this);
			public void Reserved2() mut => VT.Reserved2(ref this);
			public void Reserved3() mut => VT.Reserved3(ref this);
			public void Reserved4() mut => VT.Reserved4(ref this);
			public void PutEndTx(ref IUnknown pObj) mut => VT.PutEndTx(ref this, ref pObj);
			public void Reserved5() mut => VT.Reserved5(ref this);
			public void Reserved6() mut => VT.Reserved6(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IObjPool self) Reserved1;
				public new function [CallingConvention(.Stdcall)] void(ref IObjPool self) Reserved2;
				public new function [CallingConvention(.Stdcall)] void(ref IObjPool self) Reserved3;
				public new function [CallingConvention(.Stdcall)] void(ref IObjPool self) Reserved4;
				public new function [CallingConvention(.Stdcall)] void(ref IObjPool self, ref IUnknown pObj) PutEndTx;
				public new function [CallingConvention(.Stdcall)] void(ref IObjPool self) Reserved5;
				public new function [CallingConvention(.Stdcall)] void(ref IObjPool self) Reserved6;
			}
		}
		[CRepr]
		public struct ITransactionProperty : IUnknown
		{
			public const new Guid IID = .(0x788ea814, 0x87b1, 0x11d1, 0xbb, 0xa6, 0x00, 0xc0, 0x4f, 0xc2, 0xfa, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public void Reserved1() mut => VT.Reserved1(ref this);
			public void Reserved2() mut => VT.Reserved2(ref this);
			public void Reserved3() mut => VT.Reserved3(ref this);
			public void Reserved4() mut => VT.Reserved4(ref this);
			public void Reserved5() mut => VT.Reserved5(ref this);
			public void Reserved6() mut => VT.Reserved6(ref this);
			public void Reserved7() mut => VT.Reserved7(ref this);
			public void Reserved8() mut => VT.Reserved8(ref this);
			public void Reserved9() mut => VT.Reserved9(ref this);
			public HRESULT GetTransactionResourcePool(out ITransactionResourcePool* ppTxPool) mut => VT.GetTransactionResourcePool(ref this, out ppTxPool);
			public void Reserved10() mut => VT.Reserved10(ref this);
			public void Reserved11() mut => VT.Reserved11(ref this);
			public void Reserved12() mut => VT.Reserved12(ref this);
			public void Reserved13() mut => VT.Reserved13(ref this);
			public void Reserved14() mut => VT.Reserved14(ref this);
			public void Reserved15() mut => VT.Reserved15(ref this);
			public void Reserved16() mut => VT.Reserved16(ref this);
			public void Reserved17() mut => VT.Reserved17(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved1;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved2;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved3;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved4;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved5;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved6;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved7;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved8;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved9;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransactionProperty self, out ITransactionResourcePool* ppTxPool) GetTransactionResourcePool;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved10;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved11;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved12;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved13;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved14;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved15;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved16;
				public new function [CallingConvention(.Stdcall)] void(ref ITransactionProperty self) Reserved17;
			}
		}
		[CRepr]
		public struct IMTSActivity : IUnknown
		{
			public const new Guid IID = .(0x51372af0, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SynchronousCall(ref IMTSCall pCall) mut => VT.SynchronousCall(ref this, ref pCall);
			public HRESULT AsyncCall(ref IMTSCall pCall) mut => VT.AsyncCall(ref this, ref pCall);
			public void Reserved1() mut => VT.Reserved1(ref this);
			public HRESULT BindToCurrentThread() mut => VT.BindToCurrentThread(ref this);
			public HRESULT UnbindFromThread() mut => VT.UnbindFromThread(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMTSActivity self, ref IMTSCall pCall) SynchronousCall;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMTSActivity self, ref IMTSCall pCall) AsyncCall;
				public new function [CallingConvention(.Stdcall)] void(ref IMTSActivity self) Reserved1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMTSActivity self) BindToCurrentThread;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMTSActivity self) UnbindFromThread;
			}
		}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetDefaultContext(APTTYPE aptType, in Guid riid, void** ppv);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateActivity(ref IUnknown pIUnknown, in Guid riid, void** ppObj);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoEnterServiceDomain(ref IUnknown pConfigObject);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoLeaveServiceDomain(ref IUnknown pUnkStatus);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetManagedExtensions(out uint32 dwExts);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* SafeRef(in Guid rid, ref IUnknown pUnk);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RecycleSurrogate(int32 lReasonCode);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MTSCreateActivity(in Guid riid, void** ppobj);
		[Import("mtxdm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetDispenserManager(out IDispenserManager* param0);
	}
}
