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
		
		[AllowDuplicates]
		public enum COMAdminInUse : int32
		{
			COMAdminNotInUse = 0,
			COMAdminInUseByCatalog = 1,
			COMAdminInUseByRegistryUnknown = 2,
			COMAdminInUseByRegistryProxyStub = 3,
			COMAdminInUseByRegistryTypeLib = 4,
			COMAdminInUseByRegistryClsid = 5,
		}
		[AllowDuplicates]
		public enum COMAdminComponentType : int32
		{
			COMAdmin32BitComponent = 1,
			COMAdmin64BitComponent = 2,
		}
		[AllowDuplicates]
		public enum COMAdminApplicationInstallOptions : int32
		{
			COMAdminInstallNoUsers = 0,
			COMAdminInstallUsers = 1,
			COMAdminInstallForceOverwriteOfFiles = 2,
		}
		[AllowDuplicates]
		public enum COMAdminApplicationExportOptions : int32
		{
			COMAdminExportNoUsers = 0,
			COMAdminExportUsers = 1,
			COMAdminExportApplicationProxy = 2,
			COMAdminExportForceOverwriteOfFiles = 4,
			COMAdminExportIn10Format = 16,
		}
		[AllowDuplicates]
		public enum COMAdminThreadingModels : int32
		{
			COMAdminThreadingModelApartment = 0,
			COMAdminThreadingModelFree = 1,
			COMAdminThreadingModelMain = 2,
			COMAdminThreadingModelBoth = 3,
			COMAdminThreadingModelNeutral = 4,
			COMAdminThreadingModelNotSpecified = 5,
		}
		[AllowDuplicates]
		public enum COMAdminTransactionOptions : int32
		{
			COMAdminTransactionIgnored = 0,
			COMAdminTransactionNone = 1,
			COMAdminTransactionSupported = 2,
			COMAdminTransactionRequired = 3,
			COMAdminTransactionRequiresNew = 4,
		}
		[AllowDuplicates]
		public enum COMAdminTxIsolationLevelOptions : int32
		{
			COMAdminTxIsolationLevelAny = 0,
			COMAdminTxIsolationLevelReadUnCommitted = 1,
			COMAdminTxIsolationLevelReadCommitted = 2,
			COMAdminTxIsolationLevelRepeatableRead = 3,
			COMAdminTxIsolationLevelSerializable = 4,
		}
		[AllowDuplicates]
		public enum COMAdminSynchronizationOptions : int32
		{
			COMAdminSynchronizationIgnored = 0,
			COMAdminSynchronizationNone = 1,
			COMAdminSynchronizationSupported = 2,
			COMAdminSynchronizationRequired = 3,
			COMAdminSynchronizationRequiresNew = 4,
		}
		[AllowDuplicates]
		public enum COMAdminActivationOptions : int32
		{
			COMAdminActivationInproc = 0,
			COMAdminActivationLocal = 1,
		}
		[AllowDuplicates]
		public enum COMAdminAccessChecksLevelOptions : int32
		{
			COMAdminAccessChecksApplicationLevel = 0,
			COMAdminAccessChecksApplicationComponentLevel = 1,
		}
		[AllowDuplicates]
		public enum COMAdminAuthenticationLevelOptions : int32
		{
			COMAdminAuthenticationDefault = 0,
			COMAdminAuthenticationNone = 1,
			COMAdminAuthenticationConnect = 2,
			COMAdminAuthenticationCall = 3,
			COMAdminAuthenticationPacket = 4,
			COMAdminAuthenticationIntegrity = 5,
			COMAdminAuthenticationPrivacy = 6,
		}
		[AllowDuplicates]
		public enum COMAdminImpersonationLevelOptions : int32
		{
			COMAdminImpersonationAnonymous = 1,
			COMAdminImpersonationIdentify = 2,
			COMAdminImpersonationImpersonate = 3,
			COMAdminImpersonationDelegate = 4,
		}
		[AllowDuplicates]
		public enum COMAdminAuthenticationCapabilitiesOptions : int32
		{
			COMAdminAuthenticationCapabilitiesNone = 0,
			COMAdminAuthenticationCapabilitiesSecureReference = 2,
			COMAdminAuthenticationCapabilitiesStaticCloaking = 32,
			COMAdminAuthenticationCapabilitiesDynamicCloaking = 64,
		}
		[AllowDuplicates]
		public enum COMAdminOS : int32
		{
			COMAdminOSNotInitialized = 0,
			COMAdminOSWindows3_1 = 1,
			COMAdminOSWindows9x = 2,
			COMAdminOSWindows2000 = 3,
			COMAdminOSWindows2000AdvancedServer = 4,
			COMAdminOSWindows2000Unknown = 5,
			COMAdminOSUnknown = 6,
			COMAdminOSWindowsXPPersonal = 11,
			COMAdminOSWindowsXPProfessional = 12,
			COMAdminOSWindowsNETStandardServer = 13,
			COMAdminOSWindowsNETEnterpriseServer = 14,
			COMAdminOSWindowsNETDatacenterServer = 15,
			COMAdminOSWindowsNETWebServer = 16,
			COMAdminOSWindowsLonghornPersonal = 17,
			COMAdminOSWindowsLonghornProfessional = 18,
			COMAdminOSWindowsLonghornStandardServer = 19,
			COMAdminOSWindowsLonghornEnterpriseServer = 20,
			COMAdminOSWindowsLonghornDatacenterServer = 21,
			COMAdminOSWindowsLonghornWebServer = 22,
			COMAdminOSWindows7Personal = 23,
			COMAdminOSWindows7Professional = 24,
			COMAdminOSWindows7StandardServer = 25,
			COMAdminOSWindows7EnterpriseServer = 26,
			COMAdminOSWindows7DatacenterServer = 27,
			COMAdminOSWindows7WebServer = 28,
			COMAdminOSWindows8Personal = 29,
			COMAdminOSWindows8Professional = 30,
			COMAdminOSWindows8StandardServer = 31,
			COMAdminOSWindows8EnterpriseServer = 32,
			COMAdminOSWindows8DatacenterServer = 33,
			COMAdminOSWindows8WebServer = 34,
			COMAdminOSWindowsBluePersonal = 35,
			COMAdminOSWindowsBlueProfessional = 36,
			COMAdminOSWindowsBlueStandardServer = 37,
			COMAdminOSWindowsBlueEnterpriseServer = 38,
			COMAdminOSWindowsBlueDatacenterServer = 39,
			COMAdminOSWindowsBlueWebServer = 40,
		}
		[AllowDuplicates]
		public enum COMAdminServiceOptions : int32
		{
			COMAdminServiceLoadBalanceRouter = 1,
		}
		[AllowDuplicates]
		public enum COMAdminServiceStatusOptions : int32
		{
			COMAdminServiceStopped = 0,
			COMAdminServiceStartPending = 1,
			COMAdminServiceStopPending = 2,
			COMAdminServiceRunning = 3,
			COMAdminServiceContinuePending = 4,
			COMAdminServicePausePending = 5,
			COMAdminServicePaused = 6,
			COMAdminServiceUnknownState = 7,
		}
		[AllowDuplicates]
		public enum COMAdminQCMessageAuthenticateOptions : int32
		{
			COMAdminQCMessageAuthenticateSecureApps = 0,
			COMAdminQCMessageAuthenticateOff = 1,
			COMAdminQCMessageAuthenticateOn = 2,
		}
		[AllowDuplicates]
		public enum COMAdminFileFlags : int32
		{
			COMAdminFileFlagLoadable = 1,
			COMAdminFileFlagCOM = 2,
			COMAdminFileFlagContainsPS = 4,
			COMAdminFileFlagContainsComp = 8,
			COMAdminFileFlagContainsTLB = 16,
			COMAdminFileFlagSelfReg = 32,
			COMAdminFileFlagSelfUnReg = 64,
			COMAdminFileFlagUnloadableDLL = 128,
			COMAdminFileFlagDoesNotExist = 256,
			COMAdminFileFlagAlreadyInstalled = 512,
			COMAdminFileFlagBadTLB = 1024,
			COMAdminFileFlagGetClassObjFailed = 2048,
			COMAdminFileFlagClassNotAvailable = 4096,
			COMAdminFileFlagRegistrar = 8192,
			COMAdminFileFlagNoRegistrar = 16384,
			COMAdminFileFlagDLLRegsvrFailed = 32768,
			COMAdminFileFlagRegTLBFailed = 65536,
			COMAdminFileFlagRegistrarFailed = 131072,
			COMAdminFileFlagError = 262144,
		}
		[AllowDuplicates]
		public enum COMAdminComponentFlags : int32
		{
			COMAdminCompFlagTypeInfoFound = 1,
			COMAdminCompFlagCOMPlusPropertiesFound = 2,
			COMAdminCompFlagProxyFound = 4,
			COMAdminCompFlagInterfacesFound = 8,
			COMAdminCompFlagAlreadyInstalled = 16,
			COMAdminCompFlagNotInApplication = 32,
		}
		[AllowDuplicates]
		public enum COMAdminErrorCodes : int32
		{
			COMAdminErrObjectErrors = -2146368511,
			COMAdminErrObjectInvalid = -2146368510,
			COMAdminErrKeyMissing = -2146368509,
			COMAdminErrAlreadyInstalled = -2146368508,
			COMAdminErrAppFileWriteFail = -2146368505,
			COMAdminErrAppFileReadFail = -2146368504,
			COMAdminErrAppFileVersion = -2146368503,
			COMAdminErrBadPath = -2146368502,
			COMAdminErrApplicationExists = -2146368501,
			COMAdminErrRoleExists = -2146368500,
			COMAdminErrCantCopyFile = -2146368499,
			COMAdminErrNoUser = -2146368497,
			COMAdminErrInvalidUserids = -2146368496,
			COMAdminErrNoRegistryCLSID = -2146368495,
			COMAdminErrBadRegistryProgID = -2146368494,
			COMAdminErrAuthenticationLevel = -2146368493,
			COMAdminErrUserPasswdNotValid = -2146368492,
			COMAdminErrCLSIDOrIIDMismatch = -2146368488,
			COMAdminErrRemoteInterface = -2146368487,
			COMAdminErrDllRegisterServer = -2146368486,
			COMAdminErrNoServerShare = -2146368485,
			COMAdminErrDllLoadFailed = -2146368483,
			COMAdminErrBadRegistryLibID = -2146368482,
			COMAdminErrAppDirNotFound = -2146368481,
			COMAdminErrRegistrarFailed = -2146368477,
			COMAdminErrCompFileDoesNotExist = -2146368476,
			COMAdminErrCompFileLoadDLLFail = -2146368475,
			COMAdminErrCompFileGetClassObj = -2146368474,
			COMAdminErrCompFileClassNotAvail = -2146368473,
			COMAdminErrCompFileBadTLB = -2146368472,
			COMAdminErrCompFileNotInstallable = -2146368471,
			COMAdminErrNotChangeable = -2146368470,
			COMAdminErrNotDeletable = -2146368469,
			COMAdminErrSession = -2146368468,
			COMAdminErrCompMoveLocked = -2146368467,
			COMAdminErrCompMoveBadDest = -2146368466,
			COMAdminErrRegisterTLB = -2146368464,
			COMAdminErrSystemApp = -2146368461,
			COMAdminErrCompFileNoRegistrar = -2146368460,
			COMAdminErrCoReqCompInstalled = -2146368459,
			COMAdminErrServiceNotInstalled = -2146368458,
			COMAdminErrPropertySaveFailed = -2146368457,
			COMAdminErrObjectExists = -2146368456,
			COMAdminErrComponentExists = -2146368455,
			COMAdminErrRegFileCorrupt = -2146368453,
			COMAdminErrPropertyOverflow = -2146368452,
			COMAdminErrNotInRegistry = -2146368450,
			COMAdminErrObjectNotPoolable = -2146368449,
			COMAdminErrApplidMatchesClsid = -2146368442,
			COMAdminErrRoleDoesNotExist = -2146368441,
			COMAdminErrStartAppNeedsComponents = -2146368440,
			COMAdminErrRequiresDifferentPlatform = -2146368439,
			COMAdminErrQueuingServiceNotAvailable = -2146367998,
			COMAdminErrObjectParentMissing = -2146367480,
			COMAdminErrObjectDoesNotExist = -2146367479,
			COMAdminErrCanNotExportAppProxy = -2146368438,
			COMAdminErrCanNotStartApp = -2146368437,
			COMAdminErrCanNotExportSystemApp = -2146368436,
			COMAdminErrCanNotSubscribeToComponent = -2146368435,
			COMAdminErrAppNotRunning = -2146367478,
			COMAdminErrEventClassCannotBeSubscriber = -2146368434,
			COMAdminErrLibAppProxyIncompatible = -2146368433,
			COMAdminErrBasePartitionOnly = -2146368432,
			COMAdminErrDuplicatePartitionName = -2146368425,
			COMAdminErrPartitionInUse = -2146368423,
			COMAdminErrImportedComponentsNotAllowed = -2146368421,
			COMAdminErrRegdbNotInitialized = -2146368398,
			COMAdminErrRegdbNotOpen = -2146368397,
			COMAdminErrRegdbSystemErr = -2146368396,
			COMAdminErrRegdbAlreadyRunning = -2146368395,
			COMAdminErrMigVersionNotSupported = -2146368384,
			COMAdminErrMigSchemaNotFound = -2146368383,
			COMAdminErrCatBitnessMismatch = -2146368382,
			COMAdminErrCatUnacceptableBitness = -2146368381,
			COMAdminErrCatWrongAppBitnessBitness = -2146368380,
			COMAdminErrCatPauseResumeNotSupported = -2146368379,
			COMAdminErrCatServerFault = -2146368378,
			COMAdminErrCantRecycleLibraryApps = -2146367473,
			COMAdminErrCantRecycleServiceApps = -2146367471,
			COMAdminErrProcessAlreadyRecycled = -2146367470,
			COMAdminErrPausedProcessMayNotBeRecycled = -2146367469,
			COMAdminErrInvalidPartition = -2146367477,
			COMAdminErrPartitionMsiOnly = -2146367463,
			COMAdminErrStartAppDisabled = -2146368431,
			COMAdminErrCompMoveSource = -2146367460,
			COMAdminErrCompMoveDest = -2146367459,
			COMAdminErrCompMovePrivate = -2146367458,
			COMAdminErrCannotCopyEventClass = -2146367456,
		}
		[AllowDuplicates]
		public enum TRACKING_COLL_TYPE : int32
		{
			TRKCOLL_PROCESSES = 0,
			TRKCOLL_APPLICATIONS = 1,
			TRKCOLL_COMPONENTS = 2,
		}
		[AllowDuplicates]
		public enum DUMPTYPE : int32
		{
			DUMPTYPE_FULL = 0,
			DUMPTYPE_MINI = 1,
			DUMPTYPE_NONE = 2,
		}
		[AllowDuplicates]
		public enum COMPLUS_APPTYPE : int32
		{
			APPTYPE_UNKNOWN = -1,
			APPTYPE_SERVER = 1,
			APPTYPE_LIBRARY = 0,
			APPTYPE_SWC = 2,
		}
		[AllowDuplicates]
		public enum GetAppTrackerDataFlags : int32
		{
			GATD_INCLUDE_PROCESS_EXE_NAME = 1,
			GATD_INCLUDE_LIBRARY_APPS = 2,
			GATD_INCLUDE_SWC = 4,
			GATD_INCLUDE_CLASS_NAME = 8,
			GATD_INCLUDE_APPLICATION_NAME = 16,
		}
		[AllowDuplicates]
		public enum TransactionVote : int32
		{
			TxCommit = 0,
			TxAbort = 1,
		}
		[AllowDuplicates]
		public enum CrmTransactionState : int32
		{
			TxState_Active = 0,
			TxState_Committed = 1,
			TxState_Aborted = 2,
			TxState_Indoubt = 3,
		}
		[AllowDuplicates]
		public enum CSC_InheritanceConfig : int32
		{
			CSC_Inherit = 0,
			CSC_Ignore = 1,
		}
		[AllowDuplicates]
		public enum CSC_ThreadPool : int32
		{
			CSC_ThreadPoolNone = 0,
			CSC_ThreadPoolInherit = 1,
			CSC_STAThreadPool = 2,
			CSC_MTAThreadPool = 3,
		}
		[AllowDuplicates]
		public enum CSC_Binding : int32
		{
			CSC_NoBinding = 0,
			CSC_BindToPoolThread = 1,
		}
		[AllowDuplicates]
		public enum CSC_TransactionConfig : int32
		{
			CSC_NoTransaction = 0,
			CSC_IfContainerIsTransactional = 1,
			CSC_CreateTransactionIfNecessary = 2,
			CSC_NewTransaction = 3,
		}
		[AllowDuplicates]
		public enum CSC_SynchronizationConfig : int32
		{
			CSC_NoSynchronization = 0,
			CSC_IfContainerIsSynchronized = 1,
			CSC_NewSynchronizationIfNecessary = 2,
			CSC_NewSynchronization = 3,
		}
		[AllowDuplicates]
		public enum CSC_TrackerConfig : int32
		{
			CSC_DontUseTracker = 0,
			CSC_UseTracker = 1,
		}
		[AllowDuplicates]
		public enum CSC_PartitionConfig : int32
		{
			CSC_NoPartition = 0,
			CSC_InheritPartition = 1,
			CSC_NewPartition = 2,
		}
		[AllowDuplicates]
		public enum CSC_IISIntrinsicsConfig : int32
		{
			CSC_NoIISIntrinsics = 0,
			CSC_InheritIISIntrinsics = 1,
		}
		[AllowDuplicates]
		public enum CSC_COMTIIntrinsicsConfig : int32
		{
			CSC_NoCOMTIIntrinsics = 0,
			CSC_InheritCOMTIIntrinsics = 1,
		}
		[AllowDuplicates]
		public enum CSC_SxsConfig : int32
		{
			CSC_NoSxs = 0,
			CSC_InheritSxs = 1,
			CSC_NewSxs = 2,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum LockModes : int32
		{
			LockSetGet = 0,
			LockMethod = 1,
		}
		[AllowDuplicates]
		public enum ReleaseModes : int32
		{
			Standard = 0,
			Process = 1,
		}
		[AllowDuplicates]
		public enum CRMFLAGS : int32
		{
			CRMFLAG_FORGETTARGET = 1,
			CRMFLAG_WRITTENDURINGPREPARE = 2,
			CRMFLAG_WRITTENDURINGCOMMIT = 4,
			CRMFLAG_WRITTENDURINGABORT = 8,
			CRMFLAG_WRITTENDURINGRECOVERY = 16,
			CRMFLAG_WRITTENDURINGREPLAY = 32,
			CRMFLAG_REPLAYINPROGRESS = 64,
		}
		[AllowDuplicates]
		public enum CRMREGFLAGS : int32
		{
			CRMREGFLAG_PREPAREPHASE = 1,
			CRMREGFLAG_COMMITPHASE = 2,
			CRMREGFLAG_ABORTPHASE = 4,
			CRMREGFLAG_ALLPHASES = 7,
			CRMREGFLAG_FAILIFINDOUBTSREMAIN = 16,
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
			
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrCollName, IDispatch** ppCatalogCollection) GetCollection;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrCatalogServerName, IDispatch** ppCatalogCollection) Connect;
			public function HRESULT(ICOMAdminCatalog *self, int32* plMajorVersion) get_MajorVersion;
			public function HRESULT(ICOMAdminCatalog *self, int32* plMinorVersion) get_MinorVersion;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrCollName, SAFEARRAY** ppsaVarQuery, IDispatch** ppCatalogCollection) GetCollectionByQuery;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrApplIDOrName, BSTR bstrCLSIDOrProgID) ImportComponent;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrApplIDOrName, BSTR bstrDLL, BSTR bstrTLB, BSTR bstrPSDLL) InstallComponent;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrApplIDOrName) ShutdownApplication;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrApplIDOrName, BSTR bstrApplicationFile, COMAdminApplicationExportOptions lOptions) ExportApplication;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrApplicationFile, BSTR bstrDestinationDirectory, COMAdminApplicationInstallOptions lOptions, BSTR bstrUserId, BSTR bstrPassword, BSTR bstrRSN) InstallApplication;
			public function HRESULT(ICOMAdminCatalog *self) StopRouter;
			public function HRESULT(ICOMAdminCatalog *self) RefreshRouter;
			public function HRESULT(ICOMAdminCatalog *self) StartRouter;
			public function HRESULT(ICOMAdminCatalog *self) Reserved1;
			public function HRESULT(ICOMAdminCatalog *self) Reserved2;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrApplIDOrName, SAFEARRAY** ppsaVarFileNames, SAFEARRAY** ppsaVarCLSIDs) InstallMultipleComponents;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrApplIdOrName, SAFEARRAY** ppsaVarFileNames, SAFEARRAY** ppsaVarCLSIDs, SAFEARRAY** ppsaVarClassNames, SAFEARRAY** ppsaVarFileFlags, SAFEARRAY** ppsaVarComponentFlags) GetMultipleComponentsInfo;
			public function HRESULT(ICOMAdminCatalog *self) RefreshComponents;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrBackupFilePath) BackupREGDB;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrBackupFilePath) RestoreREGDB;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrApplicationFile, BSTR* pbstrApplicationName, BSTR* pbstrApplicationDescription, int16* pbHasUsers, int16* pbIsProxy, SAFEARRAY** ppsaVarFileNames) QueryApplicationFile;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrApplIdOrName) StartApplication;
			public function HRESULT(ICOMAdminCatalog *self, int32 lService, int32* plStatus) ServiceCheck;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrApplIdOrName, SAFEARRAY** ppsaVarFileNames, SAFEARRAY** ppsaVarCLSIDS) InstallMultipleEventClasses;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrApplIdOrName, BSTR bstrDLL, BSTR bstrTLB, BSTR bstrPSDLL) InstallEventClass;
			public function HRESULT(ICOMAdminCatalog *self, BSTR bstrIID, SAFEARRAY** ppsaVarCLSIDs, SAFEARRAY** ppsaVarProgIDs, SAFEARRAY** ppsaVarDescriptions) GetEventClassesForIID;
		}
		[CRepr]
		public struct ICOMAdminCatalog2 : ICOMAdminCatalog
		{
			public const new Guid IID = .(0x790c6e0b, 0x9194, 0x4cc9, 0x94, 0x26, 0xa4, 0x8a, 0x63, 0x18, 0x56, 0x96);
			
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrCollectionName, VARIANT* pVarQueryStrings, IDispatch** ppCatalogCollection) GetCollectionByQuery2;
			public function HRESULT(ICOMAdminCatalog2 *self, int32 lProcessID, BSTR* pbstrApplicationInstanceID) GetApplicationInstanceIDFromProcessID;
			public function HRESULT(ICOMAdminCatalog2 *self, VARIANT* pVarApplicationInstanceID) ShutdownApplicationInstances;
			public function HRESULT(ICOMAdminCatalog2 *self, VARIANT* pVarApplicationInstanceID) PauseApplicationInstances;
			public function HRESULT(ICOMAdminCatalog2 *self, VARIANT* pVarApplicationInstanceID) ResumeApplicationInstances;
			public function HRESULT(ICOMAdminCatalog2 *self, VARIANT* pVarApplicationInstanceID, int32 lReasonCode) RecycleApplicationInstances;
			public function HRESULT(ICOMAdminCatalog2 *self, VARIANT* pVarApplicationInstanceID, int16* pVarBoolPaused) AreApplicationInstancesPaused;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrApplicationInstanceID, BSTR bstrDirectory, int32 lMaxImages, BSTR* pbstrDumpFile) DumpApplicationInstance;
			public function HRESULT(ICOMAdminCatalog2 *self, int16* pVarBoolDumpSupported) get_IsApplicationInstanceDumpSupported;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrApplicationIDOrName, BSTR bstrServiceName, BSTR bstrStartType, BSTR bstrErrorControl, BSTR bstrDependencies, BSTR bstrRunAs, BSTR bstrPassword, int16 bDesktopOk) CreateServiceForApplication;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrApplicationIDOrName) DeleteServiceForApplication;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrApplicationIDOrName, BSTR* pbstrPartitionID) GetPartitionID;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrApplicationIDOrName, BSTR* pbstrPartitionName) GetPartitionName;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrPartitionIDOrName) put_CurrentPartition;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR* pbstrPartitionID) get_CurrentPartitionID;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR* pbstrPartitionName) get_CurrentPartitionName;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR* pbstrGlobalPartitionID) get_GlobalPartitionID;
			public function HRESULT(ICOMAdminCatalog2 *self) FlushPartitionCache;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrSourcePartitionIDOrName, VARIANT* pVarApplicationID, BSTR bstrDestinationPartitionIDOrName) CopyApplications;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrSourceApplicationIDOrName, VARIANT* pVarCLSIDOrProgID, BSTR bstrDestinationApplicationIDOrName) CopyComponents;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrSourceApplicationIDOrName, VARIANT* pVarCLSIDOrProgID, BSTR bstrDestinationApplicationIDOrName) MoveComponents;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrSrcApplicationIDOrName, BSTR bstrCLSIDOrProgID, BSTR bstrDestApplicationIDOrName, BSTR bstrNewProgId, BSTR bstrNewClsid) AliasComponent;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrDllName, COMAdminInUse* pCOMAdminInUse) IsSafeToDelete;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrApplicationIDOrName, VARIANT* pVarCLSIDOrProgID, VARIANT* pVarComponentType) ImportUnconfiguredComponents;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrApplicationIDOrName, VARIANT* pVarCLSIDOrProgID, VARIANT* pVarComponentType) PromoteUnconfiguredComponents;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrApplicationIDOrName, VARIANT* pVarCLSIDOrProgID, VARIANT* pVarComponentType) ImportComponents;
			public function HRESULT(ICOMAdminCatalog2 *self, int16* pbIs64Bit) get_Is64BitCatalogServer;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrPartitionIDOrName, BSTR bstrPartitionFileName, COMAdminApplicationExportOptions lOptions) ExportPartition;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrFileName, BSTR bstrDestDirectory, COMAdminApplicationInstallOptions lOptions, BSTR bstrUserID, BSTR bstrPassword, BSTR bstrRSN) InstallPartition;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrApplicationFile, IDispatch** ppFilesForImport) QueryApplicationFile2;
			public function HRESULT(ICOMAdminCatalog2 *self, BSTR bstrCLSIDOrProgID, int32* plVersionCount) GetComponentVersionCount;
		}
		[CRepr]
		public struct ICatalogObject : IDispatch
		{
			public const new Guid IID = .(0x6eb22871, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
			
			public function HRESULT(ICatalogObject *self, BSTR bstrPropName, VARIANT* pvarRetVal) get_Value;
			public function HRESULT(ICatalogObject *self, BSTR bstrPropName, VARIANT val) put_Value;
			public function HRESULT(ICatalogObject *self, VARIANT* pvarRetVal) get_Key;
			public function HRESULT(ICatalogObject *self, VARIANT* pvarRetVal) get_Name;
			public function HRESULT(ICatalogObject *self, BSTR bstrPropName, int16* pbRetVal) IsPropertyReadOnly;
			public function HRESULT(ICatalogObject *self, int16* pbRetVal) get_Valid;
			public function HRESULT(ICatalogObject *self, BSTR bstrPropName, int16* pbRetVal) IsPropertyWriteOnly;
		}
		[CRepr]
		public struct ICatalogCollection : IDispatch
		{
			public const new Guid IID = .(0x6eb22872, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
			
			public function HRESULT(ICatalogCollection *self, IUnknown** ppEnumVariant) get__NewEnum;
			public function HRESULT(ICatalogCollection *self, int32 lIndex, IDispatch** ppCatalogObject) get_Item;
			public function HRESULT(ICatalogCollection *self, int32* plObjectCount) get_Count;
			public function HRESULT(ICatalogCollection *self, int32 lIndex) Remove;
			public function HRESULT(ICatalogCollection *self, IDispatch** ppCatalogObject) Add;
			public function HRESULT(ICatalogCollection *self) Populate;
			public function HRESULT(ICatalogCollection *self, int32* pcChanges) SaveChanges;
			public function HRESULT(ICatalogCollection *self, BSTR bstrCollName, VARIANT varObjectKey, IDispatch** ppCatalogCollection) GetCollection;
			public function HRESULT(ICatalogCollection *self, VARIANT* pVarNamel) get_Name;
			public function HRESULT(ICatalogCollection *self, int16* pVarBool) get_AddEnabled;
			public function HRESULT(ICatalogCollection *self, int16* pVarBool) get_RemoveEnabled;
			public function HRESULT(ICatalogCollection *self, IDispatch** ppIDispatch) GetUtilInterface;
			public function HRESULT(ICatalogCollection *self, int32* plMajorVersion) get_DataStoreMajorVersion;
			public function HRESULT(ICatalogCollection *self, int32* plMinorVersionl) get_DataStoreMinorVersion;
			public function HRESULT(ICatalogCollection *self, SAFEARRAY* psaKeys) PopulateByKey;
			public function HRESULT(ICatalogCollection *self, BSTR bstrQueryString, int32 lQueryType) PopulateByQuery;
		}
		[CRepr]
		public struct ISecurityIdentityColl : IDispatch
		{
			public const new Guid IID = .(0xcafc823c, 0xb441, 0x11d1, 0xb8, 0x2b, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
			
			public function HRESULT(ISecurityIdentityColl *self, int32* plCount) get_Count;
			public function HRESULT(ISecurityIdentityColl *self, BSTR name, VARIANT* pItem) get_Item;
			public function HRESULT(ISecurityIdentityColl *self, IUnknown** ppEnum) get__NewEnum;
		}
		[CRepr]
		public struct ISecurityCallersColl : IDispatch
		{
			public const new Guid IID = .(0xcafc823d, 0xb441, 0x11d1, 0xb8, 0x2b, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
			
			public function HRESULT(ISecurityCallersColl *self, int32* plCount) get_Count;
			public function HRESULT(ISecurityCallersColl *self, int32 lIndex, ISecurityIdentityColl** pObj) get_Item;
			public function HRESULT(ISecurityCallersColl *self, IUnknown** ppEnum) get__NewEnum;
		}
		[CRepr]
		public struct ISecurityCallContext : IDispatch
		{
			public const new Guid IID = .(0xcafc823e, 0xb441, 0x11d1, 0xb8, 0x2b, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
			
			public function HRESULT(ISecurityCallContext *self, int32* plCount) get_Count;
			public function HRESULT(ISecurityCallContext *self, BSTR name, VARIANT* pItem) get_Item;
			public function HRESULT(ISecurityCallContext *self, IUnknown** ppEnum) get__NewEnum;
			public function HRESULT(ISecurityCallContext *self, BSTR bstrRole, int16* pfInRole) IsCallerInRole;
			public function HRESULT(ISecurityCallContext *self, int16* pfIsEnabled) IsSecurityEnabled;
			public function HRESULT(ISecurityCallContext *self, VARIANT* pUser, BSTR bstrRole, int16* pfInRole) IsUserInRole;
		}
		[CRepr]
		public struct IGetSecurityCallContext : IDispatch
		{
			public const new Guid IID = .(0xcafc823f, 0xb441, 0x11d1, 0xb8, 0x2b, 0x00, 0x00, 0xf8, 0x75, 0x7e, 0x2a);
			
			public function HRESULT(IGetSecurityCallContext *self, ISecurityCallContext** ppObject) GetSecurityCallContext;
		}
		[CRepr]
		public struct SecurityProperty : IDispatch
		{
			public const new Guid IID = .(0xe74a7215, 0x014d, 0x11d1, 0xa6, 0x3c, 0x00, 0xa0, 0xc9, 0x11, 0xb4, 0xe0);
			
			public function HRESULT(SecurityProperty *self, BSTR* bstrUserName) GetDirectCallerName;
			public function HRESULT(SecurityProperty *self, BSTR* bstrUserName) GetDirectCreatorName;
			public function HRESULT(SecurityProperty *self, BSTR* bstrUserName) GetOriginalCallerName;
			public function HRESULT(SecurityProperty *self, BSTR* bstrUserName) GetOriginalCreatorName;
		}
		[CRepr]
		public struct ContextInfo : IDispatch
		{
			public const new Guid IID = .(0x19a5a02c, 0x0ac8, 0x11d2, 0xb2, 0x86, 0x00, 0xc0, 0x4f, 0x8e, 0xf9, 0x34);
			
			public function HRESULT(ContextInfo *self, int16* pbIsInTx) IsInTransaction;
			public function HRESULT(ContextInfo *self, IUnknown** ppTx) GetTransaction;
			public function HRESULT(ContextInfo *self, BSTR* pbstrTxId) GetTransactionId;
			public function HRESULT(ContextInfo *self, BSTR* pbstrActivityId) GetActivityId;
			public function HRESULT(ContextInfo *self, BSTR* pbstrCtxId) GetContextId;
		}
		[CRepr]
		public struct ContextInfo2 : ContextInfo
		{
			public const new Guid IID = .(0xc99d6e75, 0x2375, 0x11d4, 0x83, 0x31, 0x00, 0xc0, 0x4f, 0x60, 0x55, 0x88);
			
			public function HRESULT(ContextInfo2 *self, BSTR* __MIDL__ContextInfo20000) GetPartitionId;
			public function HRESULT(ContextInfo2 *self, BSTR* __MIDL__ContextInfo20001) GetApplicationId;
			public function HRESULT(ContextInfo2 *self, BSTR* __MIDL__ContextInfo20002) GetApplicationInstanceId;
		}
		[CRepr]
		public struct ObjectContext : IDispatch
		{
			public const new Guid IID = .(0x74c08646, 0xcedb, 0x11cf, 0x8b, 0x49, 0x00, 0xaa, 0x00, 0xb8, 0xa7, 0x90);
			
			public function HRESULT(ObjectContext *self, BSTR bstrProgID, VARIANT* pObject) CreateInstance;
			public function HRESULT(ObjectContext *self) SetComplete;
			public function HRESULT(ObjectContext *self) SetAbort;
			public function HRESULT(ObjectContext *self) EnableCommit;
			public function HRESULT(ObjectContext *self) DisableCommit;
			public function HRESULT(ObjectContext *self, int16* pbIsInTx) IsInTransaction;
			public function HRESULT(ObjectContext *self, int16* pbIsEnabled) IsSecurityEnabled;
			public function HRESULT(ObjectContext *self, BSTR bstrRole, int16* pbInRole) IsCallerInRole;
			public function HRESULT(ObjectContext *self, int32* plCount) get_Count;
			public function HRESULT(ObjectContext *self, BSTR name, VARIANT* pItem) get_Item;
			public function HRESULT(ObjectContext *self, IUnknown** ppEnum) get__NewEnum;
			public function HRESULT(ObjectContext *self, SecurityProperty** ppSecurityProperty) get_Security;
			public function HRESULT(ObjectContext *self, ContextInfo** ppContextInfo) get_ContextInfo;
		}
		[CRepr]
		public struct ITransactionContextEx : IUnknown
		{
			public const new Guid IID = .(0x7999fc22, 0xd3c6, 0x11cf, 0xac, 0xab, 0x00, 0xa0, 0x24, 0xa5, 0x5a, 0xef);
			
			public function HRESULT(ITransactionContextEx *self, Guid* rclsid, Guid* riid, void** pObject) CreateInstance;
			public function HRESULT(ITransactionContextEx *self) Commit;
			public function HRESULT(ITransactionContextEx *self) Abort;
		}
		[CRepr]
		public struct ITransactionContext : IDispatch
		{
			public const new Guid IID = .(0x7999fc21, 0xd3c6, 0x11cf, 0xac, 0xab, 0x00, 0xa0, 0x24, 0xa5, 0x5a, 0xef);
			
			public function HRESULT(ITransactionContext *self, BSTR pszProgId, VARIANT* pObject) CreateInstance;
			public function HRESULT(ITransactionContext *self) Commit;
			public function HRESULT(ITransactionContext *self) Abort;
		}
		[CRepr]
		public struct ICreateWithTransactionEx : IUnknown
		{
			public const new Guid IID = .(0x455acf57, 0x5345, 0x11d2, 0x99, 0xcf, 0x00, 0xc0, 0x4f, 0x79, 0x7b, 0xc9);
			
			public function HRESULT(ICreateWithTransactionEx *self, ITransaction* pTransaction, Guid* rclsid, Guid* riid, void** pObject) CreateInstance;
		}
		[CRepr]
		public struct ICreateWithLocalTransaction : IUnknown
		{
			public const new Guid IID = .(0x227ac7a8, 0x8423, 0x42ce, 0xb7, 0xcf, 0x03, 0x06, 0x1e, 0xc9, 0xaa, 0xa3);
			
			public function HRESULT(ICreateWithLocalTransaction *self, IUnknown* pTransaction, Guid* rclsid, Guid* riid, void** pObject) CreateInstanceWithSysTx;
		}
		[CRepr]
		public struct ICreateWithTipTransactionEx : IUnknown
		{
			public const new Guid IID = .(0x455acf59, 0x5345, 0x11d2, 0x99, 0xcf, 0x00, 0xc0, 0x4f, 0x79, 0x7b, 0xc9);
			
			public function HRESULT(ICreateWithTipTransactionEx *self, BSTR bstrTipUrl, Guid* rclsid, Guid* riid, void** pObject) CreateInstance;
		}
		[CRepr]
		public struct IComLTxEvents : IUnknown
		{
			public const new Guid IID = .(0x605cf82c, 0x578e, 0x4298, 0x97, 0x5d, 0x82, 0xba, 0xbc, 0xd9, 0xe0, 0x53);
			
			public function HRESULT(IComLTxEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidLtx, Guid tsid, BOOL fRoot, int32 nIsolationLevel) OnLtxTransactionStart;
			public function HRESULT(IComLTxEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidLtx, BOOL fVote) OnLtxTransactionPrepare;
			public function HRESULT(IComLTxEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidLtx) OnLtxTransactionAbort;
			public function HRESULT(IComLTxEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidLtx) OnLtxTransactionCommit;
			public function HRESULT(IComLTxEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidLtx, Guid txnId) OnLtxTransactionPromote;
		}
		[CRepr]
		public struct IComUserEvent : IUnknown
		{
			public const new Guid IID = .(0x683130a4, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComUserEvent *self, COMSVCSEVENTINFO* pInfo, VARIANT* pvarEvent) OnUserEvent;
		}
		[CRepr]
		public struct IComThreadEvents : IUnknown
		{
			public const new Guid IID = .(0x683130a5, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComThreadEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ThreadID, uint32 dwThread, uint32 dwTheadCnt) OnThreadStart;
			public function HRESULT(IComThreadEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ThreadID, uint32 dwThread, uint32 dwTheadCnt) OnThreadTerminate;
			public function HRESULT(IComThreadEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ThreadID, uint64 AptID, uint32 dwActCnt, uint32 dwLowCnt) OnThreadBindToApartment;
			public function HRESULT(IComThreadEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ThreadID, uint64 AptID, uint32 dwActCnt) OnThreadUnBind;
			public function HRESULT(IComThreadEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ThreadID, uint64 MsgWorkID, uint32 QueueLen) OnThreadWorkEnque;
			public function HRESULT(IComThreadEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ThreadID, uint64 MsgWorkID) OnThreadWorkPrivate;
			public function HRESULT(IComThreadEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ThreadID, uint64 MsgWorkID, uint32 QueueLen) OnThreadWorkPublic;
			public function HRESULT(IComThreadEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ThreadID, uint64 MsgWorkID, uint32 QueueLen, uint64 ThreadNum) OnThreadWorkRedirect;
			public function HRESULT(IComThreadEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ThreadID, uint64 MsgWorkID, uint32 QueueLen) OnThreadWorkReject;
			public function HRESULT(IComThreadEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidActivity, uint64 AptID) OnThreadAssignApartment;
			public function HRESULT(IComThreadEvents *self, COMSVCSEVENTINFO* pInfo, uint64 AptID) OnThreadUnassignApartment;
		}
		[CRepr]
		public struct IComAppEvents : IUnknown
		{
			public const new Guid IID = .(0x683130a6, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComAppEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidApp) OnAppActivation;
			public function HRESULT(IComAppEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidApp) OnAppShutdown;
			public function HRESULT(IComAppEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidApp) OnAppForceShutdown;
		}
		[CRepr]
		public struct IComInstanceEvents : IUnknown
		{
			public const new Guid IID = .(0x683130a7, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComInstanceEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidActivity, Guid* clsid, Guid* tsid, uint64 CtxtID, uint64 ObjectID) OnObjectCreate;
			public function HRESULT(IComInstanceEvents *self, COMSVCSEVENTINFO* pInfo, uint64 CtxtID) OnObjectDestroy;
		}
		[CRepr]
		public struct IComTransactionEvents : IUnknown
		{
			public const new Guid IID = .(0x683130a8, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComTransactionEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidTx, Guid* tsid, BOOL fRoot) OnTransactionStart;
			public function HRESULT(IComTransactionEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidTx, BOOL fVoteYes) OnTransactionPrepare;
			public function HRESULT(IComTransactionEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidTx) OnTransactionAbort;
			public function HRESULT(IComTransactionEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidTx) OnTransactionCommit;
		}
		[CRepr]
		public struct IComMethodEvents : IUnknown
		{
			public const new Guid IID = .(0x683130a9, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComMethodEvents *self, COMSVCSEVENTINFO* pInfo, uint64 oid, Guid* guidCid, Guid* guidRid, uint32 iMeth) OnMethodCall;
			public function HRESULT(IComMethodEvents *self, COMSVCSEVENTINFO* pInfo, uint64 oid, Guid* guidCid, Guid* guidRid, uint32 iMeth, HRESULT hresult) OnMethodReturn;
			public function HRESULT(IComMethodEvents *self, COMSVCSEVENTINFO* pInfo, uint64 oid, Guid* guidCid, Guid* guidRid, uint32 iMeth) OnMethodException;
		}
		[CRepr]
		public struct IComObjectEvents : IUnknown
		{
			public const new Guid IID = .(0x683130aa, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComObjectEvents *self, COMSVCSEVENTINFO* pInfo, uint64 CtxtID, uint64 ObjectID) OnObjectActivate;
			public function HRESULT(IComObjectEvents *self, COMSVCSEVENTINFO* pInfo, uint64 CtxtID, uint64 ObjectID) OnObjectDeactivate;
			public function HRESULT(IComObjectEvents *self, COMSVCSEVENTINFO* pInfo, uint64 CtxtID) OnDisableCommit;
			public function HRESULT(IComObjectEvents *self, COMSVCSEVENTINFO* pInfo, uint64 CtxtID) OnEnableCommit;
			public function HRESULT(IComObjectEvents *self, COMSVCSEVENTINFO* pInfo, uint64 CtxtID) OnSetComplete;
			public function HRESULT(IComObjectEvents *self, COMSVCSEVENTINFO* pInfo, uint64 CtxtID) OnSetAbort;
		}
		[CRepr]
		public struct IComResourceEvents : IUnknown
		{
			public const new Guid IID = .(0x683130ab, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComResourceEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ObjectID, PWSTR pszType, uint64 resId, BOOL enlisted) OnResourceCreate;
			public function HRESULT(IComResourceEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ObjectID, PWSTR pszType, uint64 resId, BOOL enlisted, uint32 NumRated, uint32 Rating) OnResourceAllocate;
			public function HRESULT(IComResourceEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ObjectID, PWSTR pszType, uint64 resId) OnResourceRecycle;
			public function HRESULT(IComResourceEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ObjectID, HRESULT hr, PWSTR pszType, uint64 resId) OnResourceDestroy;
			public function HRESULT(IComResourceEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ObjectID, PWSTR pszType, uint64 resId, BOOL enlisted) OnResourceTrack;
		}
		[CRepr]
		public struct IComSecurityEvents : IUnknown
		{
			public const new Guid IID = .(0x683130ac, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComSecurityEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidActivity, uint64 ObjectID, Guid* guidIID, uint32 iMeth, uint32 cbByteOrig, uint8* pSidOriginalUser, uint32 cbByteCur, uint8* pSidCurrentUser, BOOL bCurrentUserInpersonatingInProc) OnAuthenticate;
			public function HRESULT(IComSecurityEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidActivity, uint64 ObjectID, Guid* guidIID, uint32 iMeth, uint32 cbByteOrig, uint8* pSidOriginalUser, uint32 cbByteCur, uint8* pSidCurrentUser, BOOL bCurrentUserInpersonatingInProc) OnAuthenticateFail;
		}
		[CRepr]
		public struct IComObjectPoolEvents : IUnknown
		{
			public const new Guid IID = .(0x683130ad, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComObjectPoolEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidObject, int32 nReason, uint32 dwAvailable, uint64 oid) OnObjPoolPutObject;
			public function HRESULT(IComObjectPoolEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidActivity, Guid* guidObject, uint32 dwAvailable, uint64 oid) OnObjPoolGetObject;
			public function HRESULT(IComObjectPoolEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidActivity, Guid* guidObject, Guid* guidTx, uint64 objid) OnObjPoolRecycleToTx;
			public function HRESULT(IComObjectPoolEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidActivity, Guid* guidObject, Guid* guidTx, uint64 objid) OnObjPoolGetFromTx;
		}
		[CRepr]
		public struct IComObjectPoolEvents2 : IUnknown
		{
			public const new Guid IID = .(0x683130ae, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComObjectPoolEvents2 *self, COMSVCSEVENTINFO* pInfo, Guid* guidObject, uint32 dwObjsCreated, uint64 oid) OnObjPoolCreateObject;
			public function HRESULT(IComObjectPoolEvents2 *self, COMSVCSEVENTINFO* pInfo, Guid* guidObject, uint32 dwObjsCreated, uint64 oid) OnObjPoolDestroyObject;
			public function HRESULT(IComObjectPoolEvents2 *self, COMSVCSEVENTINFO* pInfo, uint32 dwThreadsWaiting, uint32 dwAvail, uint32 dwCreated, uint32 dwMin, uint32 dwMax) OnObjPoolCreateDecision;
			public function HRESULT(IComObjectPoolEvents2 *self, COMSVCSEVENTINFO* pInfo, Guid* guidObject, Guid* guidActivity, uint32 dwTimeout) OnObjPoolTimeout;
			public function HRESULT(IComObjectPoolEvents2 *self, COMSVCSEVENTINFO* pInfo, Guid* guidObject, uint32 dwMin, uint32 dwMax, uint32 dwTimeout) OnObjPoolCreatePool;
		}
		[CRepr]
		public struct IComObjectConstructionEvents : IUnknown
		{
			public const new Guid IID = .(0x683130af, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComObjectConstructionEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidObject, PWSTR sConstructString, uint64 oid) OnObjectConstruct;
		}
		[CRepr]
		public struct IComActivityEvents : IUnknown
		{
			public const new Guid IID = .(0x683130b0, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComActivityEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidActivity) OnActivityCreate;
			public function HRESULT(IComActivityEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidActivity) OnActivityDestroy;
			public function HRESULT(IComActivityEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidCurrent, Guid* guidEntered, uint32 dwThread) OnActivityEnter;
			public function HRESULT(IComActivityEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidCurrent, Guid* guidEntered, uint32 dwThread, uint32 dwTimeout) OnActivityTimeout;
			public function HRESULT(IComActivityEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidCurrent, uint32 dwThread, uint32 dwCallDepth) OnActivityReenter;
			public function HRESULT(IComActivityEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidCurrent, Guid* guidLeft) OnActivityLeave;
			public function HRESULT(IComActivityEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidCurrent, uint32 dwCallDepth) OnActivityLeaveSame;
		}
		[CRepr]
		public struct IComIdentityEvents : IUnknown
		{
			public const new Guid IID = .(0x683130b1, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComIdentityEvents *self, COMSVCSEVENTINFO* pInfo, uint64 ObjId, PWSTR pszClientIP, PWSTR pszServerIP, PWSTR pszURL) OnIISRequestInfo;
		}
		[CRepr]
		public struct IComQCEvents : IUnknown
		{
			public const new Guid IID = .(0x683130b2, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComQCEvents *self, COMSVCSEVENTINFO* pInfo, uint64 objid, char16* szQueue, Guid* guidMsgId, Guid* guidWorkFlowId, HRESULT msmqhr) OnQCRecord;
			public function HRESULT(IComQCEvents *self, COMSVCSEVENTINFO* pInfo, char16* szQueue, uint64 QueueID, HRESULT hr) OnQCQueueOpen;
			public function HRESULT(IComQCEvents *self, COMSVCSEVENTINFO* pInfo, uint64 QueueID, Guid* guidMsgId, Guid* guidWorkFlowId, HRESULT hr) OnQCReceive;
			public function HRESULT(IComQCEvents *self, COMSVCSEVENTINFO* pInfo, uint64 QueueID, HRESULT msmqhr) OnQCReceiveFail;
			public function HRESULT(IComQCEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidMsgId, Guid* guidWorkFlowId, uint32 RetryIndex) OnQCMoveToReTryQueue;
			public function HRESULT(IComQCEvents *self, COMSVCSEVENTINFO* pInfo, Guid* guidMsgId, Guid* guidWorkFlowId) OnQCMoveToDeadQueue;
			public function HRESULT(IComQCEvents *self, COMSVCSEVENTINFO* pInfo, uint64 objid, Guid* guidMsgId, Guid* guidWorkFlowId, HRESULT hr) OnQCPlayback;
		}
		[CRepr]
		public struct IComExceptionEvents : IUnknown
		{
			public const new Guid IID = .(0x683130b3, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComExceptionEvents *self, COMSVCSEVENTINFO* pInfo, uint32 code, uint64 address, PWSTR pszStackTrace) OnExceptionUser;
		}
		[CRepr]
		public struct ILBEvents : IUnknown
		{
			public const new Guid IID = .(0x683130b4, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(ILBEvents *self, BSTR bstrServerName, BSTR bstrClsidEng) TargetUp;
			public function HRESULT(ILBEvents *self, BSTR bstrServerName, BSTR bstrClsidEng) TargetDown;
			public function HRESULT(ILBEvents *self, BSTR bstrPropName, VARIANT* varPropValue, BSTR bstrClsidEng) EngineDefined;
		}
		[CRepr]
		public struct IComCRMEvents : IUnknown
		{
			public const new Guid IID = .(0x683130b5, 0x2e50, 0x11d2, 0x98, 0xa5, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidApp) OnCRMRecoveryStart;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidApp) OnCRMRecoveryDone;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidApp) OnCRMCheckpoint;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidClerkCLSID, Guid guidActivity, Guid guidTx, char16* szProgIdCompensator, char16* szDescription) OnCRMBegin;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidClerkCLSID) OnCRMPrepare;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidClerkCLSID) OnCRMCommit;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidClerkCLSID) OnCRMAbort;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidClerkCLSID) OnCRMIndoubt;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidClerkCLSID) OnCRMDone;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidClerkCLSID) OnCRMRelease;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidClerkCLSID, uint32 dwCrmRecordType, uint32 dwRecordSize) OnCRMAnalyze;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidClerkCLSID, BOOL fVariants, uint32 dwRecordSize) OnCRMWrite;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidClerkCLSID) OnCRMForget;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidClerkCLSID) OnCRMForce;
			public function HRESULT(IComCRMEvents *self, COMSVCSEVENTINFO* pInfo, Guid guidClerkCLSID, BOOL fVariants, uint32 dwRecordSize) OnCRMDeliver;
		}
		[CRepr]
		public struct IComMethod2Events : IUnknown
		{
			public const new Guid IID = .(0xfb388aaa, 0x567d, 0x4024, 0xaf, 0x8e, 0x6e, 0x93, 0xee, 0x74, 0x85, 0x73);
			
			public function HRESULT(IComMethod2Events *self, COMSVCSEVENTINFO* pInfo, uint64 oid, Guid* guidCid, Guid* guidRid, uint32 dwThread, uint32 iMeth) OnMethodCall2;
			public function HRESULT(IComMethod2Events *self, COMSVCSEVENTINFO* pInfo, uint64 oid, Guid* guidCid, Guid* guidRid, uint32 dwThread, uint32 iMeth, HRESULT hresult) OnMethodReturn2;
			public function HRESULT(IComMethod2Events *self, COMSVCSEVENTINFO* pInfo, uint64 oid, Guid* guidCid, Guid* guidRid, uint32 dwThread, uint32 iMeth) OnMethodException2;
		}
		[CRepr]
		public struct IComTrackingInfoEvents : IUnknown
		{
			public const new Guid IID = .(0x4e6cdcc9, 0xfb25, 0x4fd5, 0x9c, 0xc5, 0xc9, 0xf4, 0xb6, 0x55, 0x9c, 0xec);
			
			public function HRESULT(IComTrackingInfoEvents *self, IUnknown* pToplevelCollection) OnNewTrackingInfo;
		}
		[CRepr]
		public struct IComTrackingInfoCollection : IUnknown
		{
			public const new Guid IID = .(0xc266c677, 0xc9ad, 0x49ab, 0x9f, 0xd9, 0xd9, 0x66, 0x10, 0x78, 0x58, 0x8a);
			
			public function HRESULT(IComTrackingInfoCollection *self, TRACKING_COLL_TYPE* pType) Type;
			public function HRESULT(IComTrackingInfoCollection *self, uint32* pCount) Count;
			public function HRESULT(IComTrackingInfoCollection *self, uint32 ulIndex, Guid* riid, void** ppv) Item;
		}
		[CRepr]
		public struct IComTrackingInfoObject : IUnknown
		{
			public const new Guid IID = .(0x116e42c5, 0xd8b1, 0x47bf, 0xab, 0x1e, 0xc8, 0x95, 0xed, 0x3e, 0x23, 0x72);
			
			public function HRESULT(IComTrackingInfoObject *self, PWSTR szPropertyName, VARIANT* pvarOut) GetValue;
		}
		[CRepr]
		public struct IComTrackingInfoProperties : IUnknown
		{
			public const new Guid IID = .(0x789b42be, 0x6f6b, 0x443a, 0x89, 0x8e, 0x67, 0xab, 0xf3, 0x90, 0xaa, 0x14);
			
			public function HRESULT(IComTrackingInfoProperties *self, uint32* pCount) PropCount;
			public function HRESULT(IComTrackingInfoProperties *self, uint32 ulIndex, PWSTR* ppszPropName) GetPropName;
		}
		[CRepr]
		public struct IComApp2Events : IUnknown
		{
			public const new Guid IID = .(0x1290bc1a, 0xb219, 0x418d, 0xb0, 0x78, 0x59, 0x34, 0xde, 0xd0, 0x82, 0x42);
			
			public function HRESULT(IComApp2Events *self, COMSVCSEVENTINFO* pInfo, Guid guidApp, Guid guidProcess) OnAppActivation2;
			public function HRESULT(IComApp2Events *self, COMSVCSEVENTINFO* pInfo, Guid guidApp) OnAppShutdown2;
			public function HRESULT(IComApp2Events *self, COMSVCSEVENTINFO* pInfo, Guid guidApp) OnAppForceShutdown2;
			public function HRESULT(IComApp2Events *self, COMSVCSEVENTINFO* pInfo, Guid guidApp, BOOL bPaused) OnAppPaused2;
			public function HRESULT(IComApp2Events *self, COMSVCSEVENTINFO* pInfo, Guid guidApp, Guid guidProcess, int32 lReason) OnAppRecycle2;
		}
		[CRepr]
		public struct IComTransaction2Events : IUnknown
		{
			public const new Guid IID = .(0xa136f62a, 0x2f94, 0x4288, 0x86, 0xe0, 0xd8, 0xa1, 0xfa, 0x4c, 0x02, 0x99);
			
			public function HRESULT(IComTransaction2Events *self, COMSVCSEVENTINFO* pInfo, Guid* guidTx, Guid* tsid, BOOL fRoot, int32 nIsolationLevel) OnTransactionStart2;
			public function HRESULT(IComTransaction2Events *self, COMSVCSEVENTINFO* pInfo, Guid* guidTx, BOOL fVoteYes) OnTransactionPrepare2;
			public function HRESULT(IComTransaction2Events *self, COMSVCSEVENTINFO* pInfo, Guid* guidTx) OnTransactionAbort2;
			public function HRESULT(IComTransaction2Events *self, COMSVCSEVENTINFO* pInfo, Guid* guidTx) OnTransactionCommit2;
		}
		[CRepr]
		public struct IComInstance2Events : IUnknown
		{
			public const new Guid IID = .(0x20e3bf07, 0xb506, 0x4ad5, 0xa5, 0x0c, 0xd2, 0xca, 0x5b, 0x9c, 0x15, 0x8e);
			
			public function HRESULT(IComInstance2Events *self, COMSVCSEVENTINFO* pInfo, Guid* guidActivity, Guid* clsid, Guid* tsid, uint64 CtxtID, uint64 ObjectID, Guid* guidPartition) OnObjectCreate2;
			public function HRESULT(IComInstance2Events *self, COMSVCSEVENTINFO* pInfo, uint64 CtxtID) OnObjectDestroy2;
		}
		[CRepr]
		public struct IComObjectPool2Events : IUnknown
		{
			public const new Guid IID = .(0x65bf6534, 0x85ea, 0x4f64, 0x8c, 0xf4, 0x3d, 0x97, 0x4b, 0x2a, 0xb1, 0xcf);
			
			public function HRESULT(IComObjectPool2Events *self, COMSVCSEVENTINFO* pInfo, Guid* guidObject, int32 nReason, uint32 dwAvailable, uint64 oid) OnObjPoolPutObject2;
			public function HRESULT(IComObjectPool2Events *self, COMSVCSEVENTINFO* pInfo, Guid* guidActivity, Guid* guidObject, uint32 dwAvailable, uint64 oid, Guid* guidPartition) OnObjPoolGetObject2;
			public function HRESULT(IComObjectPool2Events *self, COMSVCSEVENTINFO* pInfo, Guid* guidActivity, Guid* guidObject, Guid* guidTx, uint64 objid) OnObjPoolRecycleToTx2;
			public function HRESULT(IComObjectPool2Events *self, COMSVCSEVENTINFO* pInfo, Guid* guidActivity, Guid* guidObject, Guid* guidTx, uint64 objid, Guid* guidPartition) OnObjPoolGetFromTx2;
		}
		[CRepr]
		public struct IComObjectConstruction2Events : IUnknown
		{
			public const new Guid IID = .(0x4b5a7827, 0x8df2, 0x45c0, 0x8f, 0x6f, 0x57, 0xea, 0x1f, 0x85, 0x6a, 0x9f);
			
			public function HRESULT(IComObjectConstruction2Events *self, COMSVCSEVENTINFO* pInfo, Guid* guidObject, PWSTR sConstructString, uint64 oid, Guid* guidPartition) OnObjectConstruct2;
		}
		[CRepr]
		public struct ISystemAppEventData : IUnknown
		{
			public const new Guid IID = .(0xd6d48a3c, 0xd5c5, 0x49e7, 0x8c, 0x74, 0x99, 0xe4, 0x88, 0x9e, 0xd5, 0x2f);
			
			public function HRESULT(ISystemAppEventData *self) Startup;
			public function HRESULT(ISystemAppEventData *self, uint32 dwPID, uint32 dwMask, uint32 dwNumberSinks, BSTR bstrDwMethodMask, uint32 dwReason, uint64 u64TraceHandle) OnDataChanged;
		}
		[CRepr]
		public struct IMtsEvents : IDispatch
		{
			public const new Guid IID = .(0xbacedf4d, 0x74ab, 0x11d0, 0xb1, 0x62, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public function HRESULT(IMtsEvents *self, BSTR* pVal) get_PackageName;
			public function HRESULT(IMtsEvents *self, BSTR* pVal) get_PackageGuid;
			public function HRESULT(IMtsEvents *self, VARIANT* vEvent) PostEvent;
			public function HRESULT(IMtsEvents *self, int16* pVal) get_FireEvents;
			public function HRESULT(IMtsEvents *self, int32* id) GetProcessID;
		}
		[CRepr]
		public struct IMtsEventInfo : IDispatch
		{
			public const new Guid IID = .(0xd56c3dc1, 0x8482, 0x11d0, 0xb1, 0x70, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public function HRESULT(IMtsEventInfo *self, IUnknown** pUnk) get_Names;
			public function HRESULT(IMtsEventInfo *self, BSTR* sDisplayName) get_DisplayName;
			public function HRESULT(IMtsEventInfo *self, BSTR* sGuidEventID) get_EventID;
			public function HRESULT(IMtsEventInfo *self, int32* lCount) get_Count;
			public function HRESULT(IMtsEventInfo *self, BSTR sKey, VARIANT* pVal) get_Value;
		}
		[CRepr]
		public struct IMTSLocator : IDispatch
		{
			public const new Guid IID = .(0xd19b8bfd, 0x7f88, 0x11d0, 0xb1, 0x6e, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public function HRESULT(IMTSLocator *self, IUnknown** pUnk) GetEventDispatcher;
		}
		[CRepr]
		public struct IMtsGrp : IDispatch
		{
			public const new Guid IID = .(0x4b2e958c, 0x0393, 0x11d1, 0xb1, 0xab, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public function HRESULT(IMtsGrp *self, int32* pVal) get_Count;
			public function HRESULT(IMtsGrp *self, int32 lIndex, IUnknown** ppUnkDispatcher) Item;
			public function HRESULT(IMtsGrp *self) Refresh;
		}
		[CRepr]
		public struct IMessageMover : IDispatch
		{
			public const new Guid IID = .(0x588a085a, 0xb795, 0x11d1, 0x80, 0x54, 0x00, 0xc0, 0x4f, 0xc3, 0x40, 0xee);
			
			public function HRESULT(IMessageMover *self, BSTR* pVal) get_SourcePath;
			public function HRESULT(IMessageMover *self, BSTR newVal) put_SourcePath;
			public function HRESULT(IMessageMover *self, BSTR* pVal) get_DestPath;
			public function HRESULT(IMessageMover *self, BSTR newVal) put_DestPath;
			public function HRESULT(IMessageMover *self, int32* pVal) get_CommitBatchSize;
			public function HRESULT(IMessageMover *self, int32 newVal) put_CommitBatchSize;
			public function HRESULT(IMessageMover *self, int32* plMessagesMoved) MoveMessages;
		}
		[CRepr]
		public struct IEventServerTrace : IDispatch
		{
			public const new Guid IID = .(0x9a9f12b8, 0x80af, 0x47ab, 0xa5, 0x79, 0x35, 0xea, 0x57, 0x72, 0x53, 0x70);
			
			public function HRESULT(IEventServerTrace *self, BSTR bstrguidEvent, BSTR bstrguidFilter, int32 lPidFilter) StartTraceGuid;
			public function HRESULT(IEventServerTrace *self, BSTR bstrguidEvent, BSTR bstrguidFilter, int32 lPidFilter) StopTraceGuid;
			public function HRESULT(IEventServerTrace *self, int32* plCntGuids, BSTR* pbstrGuidList) EnumTraceGuid;
		}
		[CRepr]
		public struct IGetAppTrackerData : IUnknown
		{
			public const new Guid IID = .(0x507c3ac8, 0x3e12, 0x4cb0, 0x93, 0x66, 0x65, 0x3d, 0x3e, 0x05, 0x06, 0x38);
			
			public function HRESULT(IGetAppTrackerData *self, Guid* PartitionId, Guid* ApplicationId, uint32 Flags, uint32* NumApplicationProcesses, ApplicationProcessSummary** ApplicationProcesses) GetApplicationProcesses;
			public function HRESULT(IGetAppTrackerData *self, Guid* ApplicationInstanceId, uint32 ProcessId, uint32 Flags, ApplicationProcessSummary* Summary, ApplicationProcessStatistics* Statistics, ApplicationProcessRecycleInfo* RecycleInfo, BOOL* AnyComponentsHangMonitored) GetApplicationProcessDetails;
			public function HRESULT(IGetAppTrackerData *self, Guid* ApplicationInstanceId, uint32 ProcessId, Guid* PartitionId, uint32 Flags, uint32* NumApplicationsInProcess, ApplicationSummary** Applications) GetApplicationsInProcess;
			public function HRESULT(IGetAppTrackerData *self, Guid* ApplicationInstanceId, uint32 ProcessId, Guid* PartitionId, Guid* ApplicationId, uint32 Flags, uint32* NumComponentsInProcess, ComponentSummary** Components) GetComponentsInProcess;
			public function HRESULT(IGetAppTrackerData *self, Guid* ApplicationInstanceId, uint32 ProcessId, Guid* Clsid, uint32 Flags, ComponentSummary* Summary, ComponentStatistics* Statistics, ComponentHangMonitorInfo* HangMonitorInfo) GetComponentDetails;
			public function HRESULT(IGetAppTrackerData *self, IUnknown** TopLevelCollection) GetTrackerDataAsCollectionObject;
			public function HRESULT(IGetAppTrackerData *self, uint32* PollingIntervalInSeconds) GetSuggestedPollingInterval;
		}
		[CRepr]
		public struct IDispenserManager : IUnknown
		{
			public const new Guid IID = .(0x5cb31e10, 0x2b5f, 0x11cf, 0xbe, 0x10, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public function HRESULT(IDispenserManager *self, IDispenserDriver* __MIDL__IDispenserManager0000, PWSTR szDispenserName, IHolder** __MIDL__IDispenserManager0001) RegisterDispenser;
			public function HRESULT(IDispenserManager *self, uint* __MIDL__IDispenserManager0002, uint* __MIDL__IDispenserManager0003) GetContext;
		}
		[CRepr]
		public struct IHolder : IUnknown
		{
			public const new Guid IID = .(0xbf6a1850, 0x2b45, 0x11cf, 0xbe, 0x10, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public function HRESULT(IHolder *self, uint __MIDL__IHolder0000, uint* __MIDL__IHolder0001) AllocResource;
			public function HRESULT(IHolder *self, uint __MIDL__IHolder0002) FreeResource;
			public function HRESULT(IHolder *self, uint __MIDL__IHolder0003) TrackResource;
			public function HRESULT(IHolder *self, uint16* __MIDL__IHolder0004) TrackResourceS;
			public function HRESULT(IHolder *self, uint __MIDL__IHolder0005, BOOL __MIDL__IHolder0006) UntrackResource;
			public function HRESULT(IHolder *self, uint16* __MIDL__IHolder0007, BOOL __MIDL__IHolder0008) UntrackResourceS;
			public function HRESULT(IHolder *self) Close;
			public function HRESULT(IHolder *self, uint __MIDL__IHolder0009) RequestDestroyResource;
		}
		[CRepr]
		public struct IDispenserDriver : IUnknown
		{
			public const new Guid IID = .(0x208b3651, 0x2b48, 0x11cf, 0xbe, 0x10, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public function HRESULT(IDispenserDriver *self, uint ResTypId, uint* pResId, int32* pSecsFreeBeforeDestroy) CreateResource;
			public function HRESULT(IDispenserDriver *self, uint ResTypId, uint ResId, BOOL fRequiresTransactionEnlistment, uint32* pRating) RateResource;
			public function HRESULT(IDispenserDriver *self, uint ResId, uint TransId) EnlistResource;
			public function HRESULT(IDispenserDriver *self, uint ResId) ResetResource;
			public function HRESULT(IDispenserDriver *self, uint ResId) DestroyResource;
			public function HRESULT(IDispenserDriver *self, uint16* ResId) DestroyResourceS;
		}
		[CRepr]
		public struct ITransactionProxy : IUnknown
		{
			public const new Guid IID = .(0x02558374, 0xdf2e, 0x4dae, 0xbd, 0x6b, 0x1d, 0x5c, 0x99, 0x4f, 0x9b, 0xdc);
			
			public function HRESULT(ITransactionProxy *self, Guid guid) Commit;
			public function HRESULT(ITransactionProxy *self) Abort;
			public function HRESULT(ITransactionProxy *self, ITransaction** pTransaction) Promote;
			public function HRESULT(ITransactionProxy *self, ITransactionVoterNotifyAsync2* pTxAsync, ITransactionVoterBallotAsync2** ppBallot) CreateVoter;
			public function HRESULT(ITransactionProxy *self, int32* __MIDL__ITransactionProxy0000) GetIsolationLevel;
			public function HRESULT(ITransactionProxy *self, Guid* pbstrIdentifier) GetIdentifier;
			public function HRESULT(ITransactionProxy *self, BOOL* pfIsReusable) IsReusable;
		}
		[CRepr]
		public struct IContextSecurityPerimeter : IUnknown
		{
			public const new Guid IID = .(0xa7549a29, 0xa7c4, 0x42e1, 0x8d, 0xc1, 0x7e, 0x3d, 0x74, 0x8d, 0xc2, 0x4a);
			
			public function HRESULT(IContextSecurityPerimeter *self, BOOL* pFlag) GetPerimeterFlag;
			public function HRESULT(IContextSecurityPerimeter *self, BOOL fFlag) SetPerimeterFlag;
		}
		[CRepr]
		public struct ITxProxyHolder : IUnknown
		{
			public const new Guid IID = .(0x13d86f31, 0x0139, 0x41af, 0xbc, 0xad, 0xc7, 0xd5, 0x04, 0x35, 0xfe, 0x9f);
			
			public function void(ITxProxyHolder *self, Guid* pGuidLtx) GetIdentifier;
		}
		[CRepr]
		public struct IObjectContext : IUnknown
		{
			public const new Guid IID = .(0x51372ae0, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public function HRESULT(IObjectContext *self, Guid* rclsid, Guid* riid, void** ppv) CreateInstance;
			public function HRESULT(IObjectContext *self) SetComplete;
			public function HRESULT(IObjectContext *self) SetAbort;
			public function HRESULT(IObjectContext *self) EnableCommit;
			public function HRESULT(IObjectContext *self) DisableCommit;
			public function BOOL(IObjectContext *self) IsInTransaction;
			public function BOOL(IObjectContext *self) IsSecurityEnabled;
			public function HRESULT(IObjectContext *self, BSTR bstrRole, BOOL* pfIsInRole) IsCallerInRole;
		}
		[CRepr]
		public struct IObjectControl : IUnknown
		{
			public const new Guid IID = .(0x51372aec, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public function HRESULT(IObjectControl *self) Activate;
			public function void(IObjectControl *self) Deactivate;
			public function BOOL(IObjectControl *self) CanBePooled;
		}
		[CRepr]
		public struct IEnumNames : IUnknown
		{
			public const new Guid IID = .(0x51372af2, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public function HRESULT(IEnumNames *self, uint32 celt, BSTR* rgname, uint32* pceltFetched) Next;
			public function HRESULT(IEnumNames *self, uint32 celt) Skip;
			public function HRESULT(IEnumNames *self) Reset;
			public function HRESULT(IEnumNames *self, IEnumNames** ppenum) Clone;
		}
		[CRepr]
		public struct ISecurityProperty : IUnknown
		{
			public const new Guid IID = .(0x51372aea, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public function HRESULT(ISecurityProperty *self, PSID* pSID) GetDirectCreatorSID;
			public function HRESULT(ISecurityProperty *self, PSID* pSID) GetOriginalCreatorSID;
			public function HRESULT(ISecurityProperty *self, PSID* pSID) GetDirectCallerSID;
			public function HRESULT(ISecurityProperty *self, PSID* pSID) GetOriginalCallerSID;
			public function HRESULT(ISecurityProperty *self, PSID pSID) ReleaseSID;
		}
		[CRepr]
		public struct ObjectControl : IUnknown
		{
			public const new Guid IID = .(0x7dc41850, 0x0c31, 0x11d0, 0x8b, 0x79, 0x00, 0xaa, 0x00, 0xb8, 0xa7, 0x90);
			
			public function HRESULT(ObjectControl *self) Activate;
			public function HRESULT(ObjectControl *self) Deactivate;
			public function HRESULT(ObjectControl *self, int16* pbPoolable) CanBePooled;
		}
		[CRepr]
		public struct ISharedProperty : IDispatch
		{
			public const new Guid IID = .(0x2a005c01, 0xa5de, 0x11cf, 0x9e, 0x66, 0x00, 0xaa, 0x00, 0xa3, 0xf4, 0x64);
			
			public function HRESULT(ISharedProperty *self, VARIANT* pVal) get_Value;
			public function HRESULT(ISharedProperty *self, VARIANT val) put_Value;
		}
		[CRepr]
		public struct ISharedPropertyGroup : IDispatch
		{
			public const new Guid IID = .(0x2a005c07, 0xa5de, 0x11cf, 0x9e, 0x66, 0x00, 0xaa, 0x00, 0xa3, 0xf4, 0x64);
			
			public function HRESULT(ISharedPropertyGroup *self, int32 Index, int16* fExists, ISharedProperty** ppProp) CreatePropertyByPosition;
			public function HRESULT(ISharedPropertyGroup *self, int32 Index, ISharedProperty** ppProperty) get_PropertyByPosition;
			public function HRESULT(ISharedPropertyGroup *self, BSTR Name, int16* fExists, ISharedProperty** ppProp) CreateProperty;
			public function HRESULT(ISharedPropertyGroup *self, BSTR Name, ISharedProperty** ppProperty) get_Property;
		}
		[CRepr]
		public struct ISharedPropertyGroupManager : IDispatch
		{
			public const new Guid IID = .(0x2a005c0d, 0xa5de, 0x11cf, 0x9e, 0x66, 0x00, 0xaa, 0x00, 0xa3, 0xf4, 0x64);
			
			public function HRESULT(ISharedPropertyGroupManager *self, BSTR Name, int32* dwIsoMode, int32* dwRelMode, int16* fExists, ISharedPropertyGroup** ppGroup) CreatePropertyGroup;
			public function HRESULT(ISharedPropertyGroupManager *self, BSTR Name, ISharedPropertyGroup** ppGroup) get_Group;
			public function HRESULT(ISharedPropertyGroupManager *self, IUnknown** retval) get__NewEnum;
		}
		[CRepr]
		public struct IObjectConstruct : IUnknown
		{
			public const new Guid IID = .(0x41c4f8b3, 0x7439, 0x11d2, 0x98, 0xcb, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IObjectConstruct *self, IDispatch* pCtorObj) Construct;
		}
		[CRepr]
		public struct IObjectConstructString : IDispatch
		{
			public const new Guid IID = .(0x41c4f8b2, 0x7439, 0x11d2, 0x98, 0xcb, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IObjectConstructString *self, BSTR* pVal) get_ConstructString;
		}
		[CRepr]
		public struct IObjectContextActivity : IUnknown
		{
			public const new Guid IID = .(0x51372afc, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public function HRESULT(IObjectContextActivity *self, Guid* pGUID) GetActivityId;
		}
		[CRepr]
		public struct IObjectContextInfo : IUnknown
		{
			public const new Guid IID = .(0x75b52ddb, 0xe8ed, 0x11d1, 0x93, 0xad, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public function BOOL(IObjectContextInfo *self) IsInTransaction;
			public function HRESULT(IObjectContextInfo *self, IUnknown** pptrans) GetTransaction;
			public function HRESULT(IObjectContextInfo *self, Guid* pGuid) GetTransactionId;
			public function HRESULT(IObjectContextInfo *self, Guid* pGUID) GetActivityId;
			public function HRESULT(IObjectContextInfo *self, Guid* pGuid) GetContextId;
		}
		[CRepr]
		public struct IObjectContextInfo2 : IObjectContextInfo
		{
			public const new Guid IID = .(0x594be71a, 0x4bc4, 0x438b, 0x91, 0x97, 0xcf, 0xd1, 0x76, 0x24, 0x8b, 0x09);
			
			public function HRESULT(IObjectContextInfo2 *self, Guid* pGuid) GetPartitionId;
			public function HRESULT(IObjectContextInfo2 *self, Guid* pGuid) GetApplicationId;
			public function HRESULT(IObjectContextInfo2 *self, Guid* pGuid) GetApplicationInstanceId;
		}
		[CRepr]
		public struct ITransactionStatus : IUnknown
		{
			public const new Guid IID = .(0x61f589e8, 0x3724, 0x4898, 0xa0, 0xa4, 0x66, 0x4a, 0xe9, 0xe1, 0xd1, 0xb4);
			
			public function HRESULT(ITransactionStatus *self, HRESULT hrStatus) SetTransactionStatus;
			public function HRESULT(ITransactionStatus *self, HRESULT* pHrStatus) GetTransactionStatus;
		}
		[CRepr]
		public struct IObjectContextTip : IUnknown
		{
			public const new Guid IID = .(0x92fd41ca, 0xbad9, 0x11d2, 0x9a, 0x2d, 0x00, 0xc0, 0x4f, 0x79, 0x7b, 0xc9);
			
			public function HRESULT(IObjectContextTip *self, BSTR* pTipUrl) GetTipUrl;
		}
		[CRepr]
		public struct IPlaybackControl : IUnknown
		{
			public const new Guid IID = .(0x51372afd, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public function HRESULT(IPlaybackControl *self) FinalClientRetry;
			public function HRESULT(IPlaybackControl *self) FinalServerRetry;
		}
		[CRepr]
		public struct IGetContextProperties : IUnknown
		{
			public const new Guid IID = .(0x51372af4, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public function HRESULT(IGetContextProperties *self, int32* plCount) Count;
			public function HRESULT(IGetContextProperties *self, BSTR name, VARIANT* pProperty) GetProperty;
			public function HRESULT(IGetContextProperties *self, IEnumNames** ppenum) EnumNames;
		}
		[CRepr]
		public struct IContextState : IUnknown
		{
			public const new Guid IID = .(0x3c05e54b, 0xa42a, 0x11d2, 0xaf, 0xc4, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IContextState *self, int16 bDeactivate) SetDeactivateOnReturn;
			public function HRESULT(IContextState *self, int16* pbDeactivate) GetDeactivateOnReturn;
			public function HRESULT(IContextState *self, TransactionVote txVote) SetMyTransactionVote;
			public function HRESULT(IContextState *self, TransactionVote* ptxVote) GetMyTransactionVote;
		}
		[CRepr]
		public struct IPoolManager : IDispatch
		{
			public const new Guid IID = .(0x0a469861, 0x5a91, 0x43a0, 0x99, 0xb6, 0xd5, 0xe1, 0x79, 0xbb, 0x06, 0x31);
			
			public function HRESULT(IPoolManager *self, BSTR CLSIDOrProgID) ShutdownPool;
		}
		[CRepr]
		public struct ISelectCOMLBServer : IUnknown
		{
			public const new Guid IID = .(0xdcf443f4, 0x3f8a, 0x4872, 0xb9, 0xf0, 0x36, 0x9a, 0x79, 0x6d, 0x12, 0xd6);
			
			public function HRESULT(ISelectCOMLBServer *self) Init;
			public function HRESULT(ISelectCOMLBServer *self, IUnknown* pUnk) GetLBServer;
		}
		[CRepr]
		public struct ICOMLBArguments : IUnknown
		{
			public const new Guid IID = .(0x3a0f150f, 0x8ee5, 0x4b94, 0xb4, 0x0e, 0xae, 0xf2, 0xf9, 0xe4, 0x2e, 0xd2);
			
			public function HRESULT(ICOMLBArguments *self, Guid* pCLSID) GetCLSID;
			public function HRESULT(ICOMLBArguments *self, Guid* pCLSID) SetCLSID;
			public function HRESULT(ICOMLBArguments *self, uint32 cchSvr, char16* szServerName) GetMachineName;
			public function HRESULT(ICOMLBArguments *self, uint32 cchSvr, char16* szServerName) SetMachineName;
		}
		[CRepr]
		public struct ICrmLogControl : IUnknown
		{
			public const new Guid IID = .(0xa0e174b3, 0xd26e, 0x11d2, 0x8f, 0x84, 0x00, 0x80, 0x5f, 0xc7, 0xbc, 0xd9);
			
			public function HRESULT(ICrmLogControl *self, BSTR* pVal) get_TransactionUOW;
			public function HRESULT(ICrmLogControl *self, PWSTR lpcwstrProgIdCompensator, PWSTR lpcwstrDescription, int32 lCrmRegFlags) RegisterCompensator;
			public function HRESULT(ICrmLogControl *self, VARIANT* pLogRecord) WriteLogRecordVariants;
			public function HRESULT(ICrmLogControl *self) ForceLog;
			public function HRESULT(ICrmLogControl *self) ForgetLogRecord;
			public function HRESULT(ICrmLogControl *self) ForceTransactionToAbort;
			public function HRESULT(ICrmLogControl *self, BLOB* rgBlob, uint32 cBlob) WriteLogRecord;
		}
		[CRepr]
		public struct ICrmCompensatorVariants : IUnknown
		{
			public const new Guid IID = .(0xf0baf8e4, 0x7804, 0x11d1, 0x82, 0xe9, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xe9);
			
			public function HRESULT(ICrmCompensatorVariants *self, ICrmLogControl* pLogControl) SetLogControlVariants;
			public function HRESULT(ICrmCompensatorVariants *self) BeginPrepareVariants;
			public function HRESULT(ICrmCompensatorVariants *self, VARIANT* pLogRecord, int16* pbForget) PrepareRecordVariants;
			public function HRESULT(ICrmCompensatorVariants *self, int16* pbOkToPrepare) EndPrepareVariants;
			public function HRESULT(ICrmCompensatorVariants *self, int16 bRecovery) BeginCommitVariants;
			public function HRESULT(ICrmCompensatorVariants *self, VARIANT* pLogRecord, int16* pbForget) CommitRecordVariants;
			public function HRESULT(ICrmCompensatorVariants *self) EndCommitVariants;
			public function HRESULT(ICrmCompensatorVariants *self, int16 bRecovery) BeginAbortVariants;
			public function HRESULT(ICrmCompensatorVariants *self, VARIANT* pLogRecord, int16* pbForget) AbortRecordVariants;
			public function HRESULT(ICrmCompensatorVariants *self) EndAbortVariants;
		}
		[CRepr]
		public struct ICrmCompensator : IUnknown
		{
			public const new Guid IID = .(0xbbc01830, 0x8d3b, 0x11d1, 0x82, 0xec, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xe9);
			
			public function HRESULT(ICrmCompensator *self, ICrmLogControl* pLogControl) SetLogControl;
			public function HRESULT(ICrmCompensator *self) BeginPrepare;
			public function HRESULT(ICrmCompensator *self, CrmLogRecordRead crmLogRec, BOOL* pfForget) PrepareRecord;
			public function HRESULT(ICrmCompensator *self, BOOL* pfOkToPrepare) EndPrepare;
			public function HRESULT(ICrmCompensator *self, BOOL fRecovery) BeginCommit;
			public function HRESULT(ICrmCompensator *self, CrmLogRecordRead crmLogRec, BOOL* pfForget) CommitRecord;
			public function HRESULT(ICrmCompensator *self) EndCommit;
			public function HRESULT(ICrmCompensator *self, BOOL fRecovery) BeginAbort;
			public function HRESULT(ICrmCompensator *self, CrmLogRecordRead crmLogRec, BOOL* pfForget) AbortRecord;
			public function HRESULT(ICrmCompensator *self) EndAbort;
		}
		[CRepr]
		public struct ICrmMonitorLogRecords : IUnknown
		{
			public const new Guid IID = .(0x70c8e441, 0xc7ed, 0x11d1, 0x82, 0xfb, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xe9);
			
			public function HRESULT(ICrmMonitorLogRecords *self, int32* pVal) get_Count;
			public function HRESULT(ICrmMonitorLogRecords *self, CrmTransactionState* pVal) get_TransactionState;
			public function HRESULT(ICrmMonitorLogRecords *self, int16* pVal) get_StructuredRecords;
			public function HRESULT(ICrmMonitorLogRecords *self, uint32 dwIndex, CrmLogRecordRead* pCrmLogRec) GetLogRecord;
			public function HRESULT(ICrmMonitorLogRecords *self, VARIANT IndexNumber, VARIANT* pLogRecord) GetLogRecordVariants;
		}
		[CRepr]
		public struct ICrmMonitorClerks : IDispatch
		{
			public const new Guid IID = .(0x70c8e442, 0xc7ed, 0x11d1, 0x82, 0xfb, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xe9);
			
			public function HRESULT(ICrmMonitorClerks *self, VARIANT Index, VARIANT* pItem) Item;
			public function HRESULT(ICrmMonitorClerks *self, IUnknown** pVal) get__NewEnum;
			public function HRESULT(ICrmMonitorClerks *self, int32* pVal) get_Count;
			public function HRESULT(ICrmMonitorClerks *self, VARIANT Index, VARIANT* pItem) ProgIdCompensator;
			public function HRESULT(ICrmMonitorClerks *self, VARIANT Index, VARIANT* pItem) Description;
			public function HRESULT(ICrmMonitorClerks *self, VARIANT Index, VARIANT* pItem) TransactionUOW;
			public function HRESULT(ICrmMonitorClerks *self, VARIANT Index, VARIANT* pItem) ActivityId;
		}
		[CRepr]
		public struct ICrmMonitor : IUnknown
		{
			public const new Guid IID = .(0x70c8e443, 0xc7ed, 0x11d1, 0x82, 0xfb, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xe9);
			
			public function HRESULT(ICrmMonitor *self, ICrmMonitorClerks** pClerks) GetClerks;
			public function HRESULT(ICrmMonitor *self, VARIANT Index, VARIANT* pItem) HoldClerk;
		}
		[CRepr]
		public struct ICrmFormatLogRecords : IUnknown
		{
			public const new Guid IID = .(0x9c51d821, 0xc98b, 0x11d1, 0x82, 0xfb, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xe9);
			
			public function HRESULT(ICrmFormatLogRecords *self, int32* plColumnCount) GetColumnCount;
			public function HRESULT(ICrmFormatLogRecords *self, VARIANT* pHeaders) GetColumnHeaders;
			public function HRESULT(ICrmFormatLogRecords *self, CrmLogRecordRead CrmLogRec, VARIANT* pFormattedLogRecord) GetColumn;
			public function HRESULT(ICrmFormatLogRecords *self, VARIANT LogRecord, VARIANT* pFormattedLogRecord) GetColumnVariants;
		}
		[CRepr]
		public struct IServiceIISIntrinsicsConfig : IUnknown
		{
			public const new Guid IID = .(0x1a0cf920, 0xd452, 0x46f4, 0xbc, 0x36, 0x48, 0x11, 0x8d, 0x54, 0xea, 0x52);
			
			public function HRESULT(IServiceIISIntrinsicsConfig *self, CSC_IISIntrinsicsConfig iisIntrinsicsConfig) IISIntrinsicsConfig;
		}
		[CRepr]
		public struct IServiceComTIIntrinsicsConfig : IUnknown
		{
			public const new Guid IID = .(0x09e6831e, 0x04e1, 0x4ed4, 0x9d, 0x0f, 0xe8, 0xb1, 0x68, 0xba, 0xfe, 0xaf);
			
			public function HRESULT(IServiceComTIIntrinsicsConfig *self, CSC_COMTIIntrinsicsConfig comtiIntrinsicsConfig) ComTIIntrinsicsConfig;
		}
		[CRepr]
		public struct IServiceSxsConfig : IUnknown
		{
			public const new Guid IID = .(0xc7cd7379, 0xf3f2, 0x4634, 0x81, 0x1b, 0x70, 0x32, 0x81, 0xd7, 0x3e, 0x08);
			
			public function HRESULT(IServiceSxsConfig *self, CSC_SxsConfig scsConfig) SxsConfig;
			public function HRESULT(IServiceSxsConfig *self, PWSTR szSxsName) SxsName;
			public function HRESULT(IServiceSxsConfig *self, PWSTR szSxsDirectory) SxsDirectory;
		}
		[CRepr]
		public struct ICheckSxsConfig : IUnknown
		{
			public const new Guid IID = .(0x0ff5a96f, 0x11fc, 0x47d1, 0xba, 0xa6, 0x25, 0xdd, 0x34, 0x7e, 0x72, 0x42);
			
			public function HRESULT(ICheckSxsConfig *self, PWSTR wszSxsName, PWSTR wszSxsDirectory, PWSTR wszSxsAppName) IsSameSxsConfig;
		}
		[CRepr]
		public struct IServiceInheritanceConfig : IUnknown
		{
			public const new Guid IID = .(0x92186771, 0xd3b4, 0x4d77, 0xa8, 0xea, 0xee, 0x84, 0x2d, 0x58, 0x6f, 0x35);
			
			public function HRESULT(IServiceInheritanceConfig *self, CSC_InheritanceConfig inheritanceConfig) ContainingContextTreatment;
		}
		[CRepr]
		public struct IServiceThreadPoolConfig : IUnknown
		{
			public const new Guid IID = .(0x186d89bc, 0xf277, 0x4bcc, 0x80, 0xd5, 0x4d, 0xf7, 0xb8, 0x36, 0xef, 0x4a);
			
			public function HRESULT(IServiceThreadPoolConfig *self, CSC_ThreadPool threadPool) SelectThreadPool;
			public function HRESULT(IServiceThreadPoolConfig *self, CSC_Binding binding) SetBindingInfo;
		}
		[CRepr]
		public struct IServiceTransactionConfigBase : IUnknown
		{
			public const new Guid IID = .(0x772b3fbe, 0x6ffd, 0x42fb, 0xb5, 0xf8, 0x8f, 0x9b, 0x26, 0x0f, 0x38, 0x10);
			
			public function HRESULT(IServiceTransactionConfigBase *self, CSC_TransactionConfig transactionConfig) ConfigureTransaction;
			public function HRESULT(IServiceTransactionConfigBase *self, COMAdminTxIsolationLevelOptions option) IsolationLevel;
			public function HRESULT(IServiceTransactionConfigBase *self, uint32 ulTimeoutSec) TransactionTimeout;
			public function HRESULT(IServiceTransactionConfigBase *self, PWSTR szTipURL) BringYourOwnTransaction;
			public function HRESULT(IServiceTransactionConfigBase *self, PWSTR szTxDesc) NewTransactionDescription;
		}
		[CRepr]
		public struct IServiceTransactionConfig : IServiceTransactionConfigBase
		{
			public const new Guid IID = .(0x59f4c2a3, 0xd3d7, 0x4a31, 0xb6, 0xe4, 0x6a, 0xb3, 0x17, 0x7c, 0x50, 0xb9);
			
			public function HRESULT(IServiceTransactionConfig *self, ITransaction* pITxByot) ConfigureBYOT;
		}
		[CRepr]
		public struct IServiceSysTxnConfig : IServiceTransactionConfig
		{
			public const new Guid IID = .(0x33caf1a1, 0xfcb8, 0x472b, 0xb4, 0x5e, 0x96, 0x74, 0x48, 0xde, 0xd6, 0xd8);
			
			public function HRESULT(IServiceSysTxnConfig *self, ITransactionProxy* pTxProxy) ConfigureBYOTSysTxn;
		}
		[CRepr]
		public struct IServiceSynchronizationConfig : IUnknown
		{
			public const new Guid IID = .(0xfd880e81, 0x6dce, 0x4c58, 0xaf, 0x83, 0xa2, 0x08, 0x84, 0x6c, 0x00, 0x30);
			
			public function HRESULT(IServiceSynchronizationConfig *self, CSC_SynchronizationConfig synchConfig) ConfigureSynchronization;
		}
		[CRepr]
		public struct IServiceTrackerConfig : IUnknown
		{
			public const new Guid IID = .(0x6c3a3e1d, 0x0ba6, 0x4036, 0xb7, 0x6f, 0xd0, 0x40, 0x4d, 0xb8, 0x16, 0xc9);
			
			public function HRESULT(IServiceTrackerConfig *self, CSC_TrackerConfig trackerConfig, PWSTR szTrackerAppName, PWSTR szTrackerCtxName) TrackerConfig;
		}
		[CRepr]
		public struct IServicePartitionConfig : IUnknown
		{
			public const new Guid IID = .(0x80182d03, 0x5ea4, 0x4831, 0xae, 0x97, 0x55, 0xbe, 0xff, 0xc2, 0xe5, 0x90);
			
			public function HRESULT(IServicePartitionConfig *self, CSC_PartitionConfig partitionConfig) PartitionConfig;
			public function HRESULT(IServicePartitionConfig *self, Guid* guidPartitionID) PartitionID;
		}
		[CRepr]
		public struct IServiceCall : IUnknown
		{
			public const new Guid IID = .(0xbd3e2e12, 0x42dd, 0x40f4, 0xa0, 0x9a, 0x95, 0xa5, 0x0c, 0x58, 0x30, 0x4b);
			
			public function HRESULT(IServiceCall *self) OnCall;
		}
		[CRepr]
		public struct IAsyncErrorNotify : IUnknown
		{
			public const new Guid IID = .(0xfe6777fb, 0xa674, 0x4177, 0x8f, 0x32, 0x6d, 0x70, 0x7e, 0x11, 0x34, 0x84);
			
			public function HRESULT(IAsyncErrorNotify *self, HRESULT hr) OnError;
		}
		[CRepr]
		public struct IServiceActivity : IUnknown
		{
			public const new Guid IID = .(0x67532e0c, 0x9e2f, 0x4450, 0xa3, 0x54, 0x03, 0x56, 0x33, 0x94, 0x4e, 0x17);
			
			public function HRESULT(IServiceActivity *self, IServiceCall* pIServiceCall) SynchronousCall;
			public function HRESULT(IServiceActivity *self, IServiceCall* pIServiceCall) AsynchronousCall;
			public function HRESULT(IServiceActivity *self) BindToCurrentThread;
			public function HRESULT(IServiceActivity *self) UnbindFromThread;
		}
		[CRepr]
		public struct IThreadPoolKnobs : IUnknown
		{
			public const new Guid IID = .(0x51372af7, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public function HRESULT(IThreadPoolKnobs *self, int32* plcMaxThreads) GetMaxThreads;
			public function HRESULT(IThreadPoolKnobs *self, int32* plcCurrentThreads) GetCurrentThreads;
			public function HRESULT(IThreadPoolKnobs *self, int32 lcMaxThreads) SetMaxThreads;
			public function HRESULT(IThreadPoolKnobs *self, int32* pmsecDeleteDelay) GetDeleteDelay;
			public function HRESULT(IThreadPoolKnobs *self, int32 msecDeleteDelay) SetDeleteDelay;
			public function HRESULT(IThreadPoolKnobs *self, int32* plcMaxQueuedRequests) GetMaxQueuedRequests;
			public function HRESULT(IThreadPoolKnobs *self, int32* plcCurrentQueuedRequests) GetCurrentQueuedRequests;
			public function HRESULT(IThreadPoolKnobs *self, int32 lcMaxQueuedRequests) SetMaxQueuedRequests;
			public function HRESULT(IThreadPoolKnobs *self, int32 lcMinThreads) SetMinThreads;
			public function HRESULT(IThreadPoolKnobs *self, int32 lcQueueDepth) SetQueueDepth;
		}
		[CRepr]
		public struct IComStaThreadPoolKnobs : IUnknown
		{
			public const new Guid IID = .(0x324b64fa, 0x33b6, 0x11d2, 0x98, 0xb7, 0x00, 0xc0, 0x4f, 0x8e, 0xe1, 0xc4);
			
			public function HRESULT(IComStaThreadPoolKnobs *self, uint32 minThreads) SetMinThreadCount;
			public function HRESULT(IComStaThreadPoolKnobs *self, uint32* minThreads) GetMinThreadCount;
			public function HRESULT(IComStaThreadPoolKnobs *self, uint32 maxThreads) SetMaxThreadCount;
			public function HRESULT(IComStaThreadPoolKnobs *self, uint32* maxThreads) GetMaxThreadCount;
			public function HRESULT(IComStaThreadPoolKnobs *self, uint32 activitiesPerThread) SetActivityPerThread;
			public function HRESULT(IComStaThreadPoolKnobs *self, uint32* activitiesPerThread) GetActivityPerThread;
			public function HRESULT(IComStaThreadPoolKnobs *self, double activityRatio) SetActivityRatio;
			public function HRESULT(IComStaThreadPoolKnobs *self, double* activityRatio) GetActivityRatio;
			public function HRESULT(IComStaThreadPoolKnobs *self, uint32* pdwThreads) GetThreadCount;
			public function HRESULT(IComStaThreadPoolKnobs *self, uint32* pdwQDepth) GetQueueDepth;
			public function HRESULT(IComStaThreadPoolKnobs *self, int32 dwQDepth) SetQueueDepth;
		}
		[CRepr]
		public struct IComMtaThreadPoolKnobs : IUnknown
		{
			public const new Guid IID = .(0xf9a76d2e, 0x76a5, 0x43eb, 0xa0, 0xc4, 0x49, 0xbe, 0xc8, 0xe4, 0x84, 0x80);
			
			public function HRESULT(IComMtaThreadPoolKnobs *self, uint32 dwMaxThreads) MTASetMaxThreadCount;
			public function HRESULT(IComMtaThreadPoolKnobs *self, uint32* pdwMaxThreads) MTAGetMaxThreadCount;
			public function HRESULT(IComMtaThreadPoolKnobs *self, uint32 dwThrottle) MTASetThrottleValue;
			public function HRESULT(IComMtaThreadPoolKnobs *self, uint32* pdwThrottle) MTAGetThrottleValue;
		}
		[CRepr]
		public struct IComStaThreadPoolKnobs2 : IComStaThreadPoolKnobs
		{
			public const new Guid IID = .(0x73707523, 0xff9a, 0x4974, 0xbf, 0x84, 0x21, 0x08, 0xdc, 0x21, 0x37, 0x40);
			
			public function HRESULT(IComStaThreadPoolKnobs2 *self, uint32* pdwLoad) GetMaxCPULoad;
			public function HRESULT(IComStaThreadPoolKnobs2 *self, int32 pdwLoad) SetMaxCPULoad;
			public function HRESULT(IComStaThreadPoolKnobs2 *self, BOOL* pbMetricEnabled) GetCPUMetricEnabled;
			public function HRESULT(IComStaThreadPoolKnobs2 *self, BOOL bMetricEnabled) SetCPUMetricEnabled;
			public function HRESULT(IComStaThreadPoolKnobs2 *self, BOOL* pbMetricEnabled) GetCreateThreadsAggressively;
			public function HRESULT(IComStaThreadPoolKnobs2 *self, BOOL bMetricEnabled) SetCreateThreadsAggressively;
			public function HRESULT(IComStaThreadPoolKnobs2 *self, uint32* pdwCSR) GetMaxCSR;
			public function HRESULT(IComStaThreadPoolKnobs2 *self, int32 dwCSR) SetMaxCSR;
			public function HRESULT(IComStaThreadPoolKnobs2 *self, uint32* pdwThreadCleanupWaitTime) GetWaitTimeForThreadCleanup;
			public function HRESULT(IComStaThreadPoolKnobs2 *self, int32 dwThreadCleanupWaitTime) SetWaitTimeForThreadCleanup;
		}
		[CRepr]
		public struct IProcessInitializer : IUnknown
		{
			public const new Guid IID = .(0x1113f52d, 0xdc7f, 0x4943, 0xae, 0xd6, 0x88, 0xd0, 0x40, 0x27, 0xe3, 0x2a);
			
			public function HRESULT(IProcessInitializer *self, IUnknown* punkProcessControl) Startup;
			public function HRESULT(IProcessInitializer *self) Shutdown;
		}
		[CRepr]
		public struct IServicePoolConfig : IUnknown
		{
			public const new Guid IID = .(0xa9690656, 0x5bca, 0x470c, 0x84, 0x51, 0x25, 0x0c, 0x1f, 0x43, 0xa3, 0x3e);
			
			public function HRESULT(IServicePoolConfig *self, uint32 dwMaxPool) put_MaxPoolSize;
			public function HRESULT(IServicePoolConfig *self, uint32* pdwMaxPool) get_MaxPoolSize;
			public function HRESULT(IServicePoolConfig *self, uint32 dwMinPool) put_MinPoolSize;
			public function HRESULT(IServicePoolConfig *self, uint32* pdwMinPool) get_MinPoolSize;
			public function HRESULT(IServicePoolConfig *self, uint32 dwCreationTimeout) put_CreationTimeout;
			public function HRESULT(IServicePoolConfig *self, uint32* pdwCreationTimeout) get_CreationTimeout;
			public function HRESULT(IServicePoolConfig *self, BOOL fTxAffinity) put_TransactionAffinity;
			public function HRESULT(IServicePoolConfig *self, BOOL* pfTxAffinity) get_TransactionAffinity;
			public function HRESULT(IServicePoolConfig *self, IClassFactory* pFactory) put_ClassFactory;
			public function HRESULT(IServicePoolConfig *self, IClassFactory** pFactory) get_ClassFactory;
		}
		[CRepr]
		public struct IServicePool : IUnknown
		{
			public const new Guid IID = .(0xb302df81, 0xea45, 0x451e, 0x99, 0xa2, 0x09, 0xf9, 0xfd, 0x1b, 0x1e, 0x13);
			
			public function HRESULT(IServicePool *self, IUnknown* pPoolConfig) Initialize;
			public function HRESULT(IServicePool *self, Guid* riid, void** ppv) GetObject;
			public function HRESULT(IServicePool *self) Shutdown;
		}
		[CRepr]
		public struct IManagedPooledObj : IUnknown
		{
			public const new Guid IID = .(0xc5da4bea, 0x1b42, 0x4437, 0x89, 0x26, 0xb6, 0xa3, 0x88, 0x60, 0xa7, 0x70);
			
			public function HRESULT(IManagedPooledObj *self, BOOL m_bHeld) SetHeld;
		}
		[CRepr]
		public struct IManagedPoolAction : IUnknown
		{
			public const new Guid IID = .(0xda91b74e, 0x5388, 0x4783, 0x94, 0x9d, 0xc1, 0xcd, 0x5f, 0xb0, 0x05, 0x06);
			
			public function HRESULT(IManagedPoolAction *self) LastRelease;
		}
		[CRepr]
		public struct IManagedObjectInfo : IUnknown
		{
			public const new Guid IID = .(0x1427c51a, 0x4584, 0x49d8, 0x90, 0xa0, 0xc5, 0x0d, 0x80, 0x86, 0xcb, 0xe9);
			
			public function HRESULT(IManagedObjectInfo *self, IUnknown** pUnk) GetIUnknown;
			public function HRESULT(IManagedObjectInfo *self, IObjectControl** pCtrl) GetIObjectControl;
			public function HRESULT(IManagedObjectInfo *self, BOOL bInPool, IManagedPooledObj* pPooledObj) SetInPool;
			public function HRESULT(IManagedObjectInfo *self, BOOL bStrong) SetWrapperStrength;
		}
		[CRepr]
		public struct IAppDomainHelper : IDispatch
		{
			public const new Guid IID = .(0xc7b67079, 0x8255, 0x42c6, 0x9e, 0xc0, 0x69, 0x94, 0xa3, 0x54, 0x87, 0x80);
			
			public function HRESULT(IAppDomainHelper *self, IUnknown* pUnkAD, int __MIDL__IAppDomainHelper0000, void* pPool) Initialize;
			public function HRESULT(IAppDomainHelper *self, IUnknown* pUnkAD, int __MIDL__IAppDomainHelper0001, void* pPool) DoCallback;
		}
		[CRepr]
		public struct IAssemblyLocator : IDispatch
		{
			public const new Guid IID = .(0x391ffbb9, 0xa8ee, 0x432a, 0xab, 0xc8, 0xba, 0xa2, 0x38, 0xda, 0xb9, 0x0f);
			
			public function HRESULT(IAssemblyLocator *self, BSTR applicationDir, BSTR applicationName, BSTR assemblyName, SAFEARRAY** pModules) GetModules;
		}
		[CRepr]
		public struct IManagedActivationEvents : IUnknown
		{
			public const new Guid IID = .(0xa5f325af, 0x572f, 0x46da, 0xb8, 0xab, 0x82, 0x7c, 0x3d, 0x95, 0xd9, 0x9e);
			
			public function HRESULT(IManagedActivationEvents *self, IManagedObjectInfo* pInfo, BOOL fDist) CreateManagedStub;
			public function HRESULT(IManagedActivationEvents *self, IManagedObjectInfo* pInfo) DestroyManagedStub;
		}
		[CRepr]
		public struct ISendMethodEvents : IUnknown
		{
			public const new Guid IID = .(0x2732fd59, 0xb2b4, 0x4d44, 0x87, 0x8c, 0x8b, 0x8f, 0x09, 0x62, 0x60, 0x08);
			
			public function HRESULT(ISendMethodEvents *self, void* pIdentity, Guid* riid, uint32 dwMeth) SendMethodCall;
			public function HRESULT(ISendMethodEvents *self, void* pIdentity, Guid* riid, uint32 dwMeth, HRESULT hrCall, HRESULT hrServer) SendMethodReturn;
		}
		[CRepr]
		public struct ITransactionResourcePool : IUnknown
		{
			public const new Guid IID = .(0xc5feb7c1, 0x346a, 0x11d1, 0xb1, 0xcc, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public function HRESULT(ITransactionResourcePool *self, IObjPool* pPool, IUnknown* pUnk) PutResource;
			public function HRESULT(ITransactionResourcePool *self, IObjPool* pPool, IUnknown** ppUnk) GetResource;
		}
		[CRepr]
		public struct IMTSCall : IUnknown
		{
			public const new Guid IID = .(0x51372aef, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public function HRESULT(IMTSCall *self) OnCall;
		}
		[CRepr]
		public struct IContextProperties : IUnknown
		{
			public const new Guid IID = .(0xd396da85, 0xbf8f, 0x11d1, 0xbb, 0xae, 0x00, 0xc0, 0x4f, 0xc2, 0xfa, 0x5f);
			
			public function HRESULT(IContextProperties *self, int32* plCount) Count;
			public function HRESULT(IContextProperties *self, BSTR name, VARIANT* pProperty) GetProperty;
			public function HRESULT(IContextProperties *self, IEnumNames** ppenum) EnumNames;
			public function HRESULT(IContextProperties *self, BSTR name, VARIANT property) SetProperty;
			public function HRESULT(IContextProperties *self, BSTR name) RemoveProperty;
		}
		[CRepr]
		public struct IObjPool : IUnknown
		{
			public const new Guid IID = .(0x7d8805a0, 0x2ea7, 0x11d1, 0xb1, 0xcc, 0x00, 0xaa, 0x00, 0xba, 0x32, 0x58);
			
			public function void(IObjPool *self) Reserved1;
			public function void(IObjPool *self) Reserved2;
			public function void(IObjPool *self) Reserved3;
			public function void(IObjPool *self) Reserved4;
			public function void(IObjPool *self, IUnknown* pObj) PutEndTx;
			public function void(IObjPool *self) Reserved5;
			public function void(IObjPool *self) Reserved6;
		}
		[CRepr]
		public struct ITransactionProperty : IUnknown
		{
			public const new Guid IID = .(0x788ea814, 0x87b1, 0x11d1, 0xbb, 0xa6, 0x00, 0xc0, 0x4f, 0xc2, 0xfa, 0x5f);
			
			public function void(ITransactionProperty *self) Reserved1;
			public function void(ITransactionProperty *self) Reserved2;
			public function void(ITransactionProperty *self) Reserved3;
			public function void(ITransactionProperty *self) Reserved4;
			public function void(ITransactionProperty *self) Reserved5;
			public function void(ITransactionProperty *self) Reserved6;
			public function void(ITransactionProperty *self) Reserved7;
			public function void(ITransactionProperty *self) Reserved8;
			public function void(ITransactionProperty *self) Reserved9;
			public function HRESULT(ITransactionProperty *self, ITransactionResourcePool** ppTxPool) GetTransactionResourcePool;
			public function void(ITransactionProperty *self) Reserved10;
			public function void(ITransactionProperty *self) Reserved11;
			public function void(ITransactionProperty *self) Reserved12;
			public function void(ITransactionProperty *self) Reserved13;
			public function void(ITransactionProperty *self) Reserved14;
			public function void(ITransactionProperty *self) Reserved15;
			public function void(ITransactionProperty *self) Reserved16;
			public function void(ITransactionProperty *self) Reserved17;
		}
		[CRepr]
		public struct IMTSActivity : IUnknown
		{
			public const new Guid IID = .(0x51372af0, 0xcae7, 0x11cf, 0xbe, 0x81, 0x00, 0xaa, 0x00, 0xa2, 0xfa, 0x25);
			
			public function HRESULT(IMTSActivity *self, IMTSCall* pCall) SynchronousCall;
			public function HRESULT(IMTSActivity *self, IMTSCall* pCall) AsyncCall;
			public function void(IMTSActivity *self) Reserved1;
			public function HRESULT(IMTSActivity *self) BindToCurrentThread;
			public function HRESULT(IMTSActivity *self) UnbindFromThread;
		}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetDefaultContext(APTTYPE aptType, Guid* riid, void** ppv);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateActivity(IUnknown* pIUnknown, Guid* riid, void** ppObj);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoEnterServiceDomain(IUnknown* pConfigObject);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoLeaveServiceDomain(IUnknown* pUnkStatus);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetManagedExtensions(uint32* dwExts);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* SafeRef(Guid* rid, IUnknown* pUnk);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RecycleSurrogate(int32 lReasonCode);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MTSCreateActivity(Guid* riid, void** ppobj);
		[Import("mtxdm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetDispenserManager(IDispenserManager** param0);
		
	}
}
