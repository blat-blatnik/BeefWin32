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
		
		public struct ICOMAdminCatalog {}
		public struct ICOMAdminCatalog2 {}
		public struct ICatalogObject {}
		public struct ICatalogCollection {}
		public struct ISecurityIdentityColl {}
		public struct ISecurityCallersColl {}
		public struct ISecurityCallContext {}
		public struct IGetSecurityCallContext {}
		public struct SecurityProperty {}
		public struct ContextInfo {}
		public struct ContextInfo2 {}
		public struct ObjectContext {}
		public struct ITransactionContextEx {}
		public struct ITransactionContext {}
		public struct ICreateWithTransactionEx {}
		public struct ICreateWithLocalTransaction {}
		public struct ICreateWithTipTransactionEx {}
		public struct IComLTxEvents {}
		public struct IComUserEvent {}
		public struct IComThreadEvents {}
		public struct IComAppEvents {}
		public struct IComInstanceEvents {}
		public struct IComTransactionEvents {}
		public struct IComMethodEvents {}
		public struct IComObjectEvents {}
		public struct IComResourceEvents {}
		public struct IComSecurityEvents {}
		public struct IComObjectPoolEvents {}
		public struct IComObjectPoolEvents2 {}
		public struct IComObjectConstructionEvents {}
		public struct IComActivityEvents {}
		public struct IComIdentityEvents {}
		public struct IComQCEvents {}
		public struct IComExceptionEvents {}
		public struct ILBEvents {}
		public struct IComCRMEvents {}
		public struct IComMethod2Events {}
		public struct IComTrackingInfoEvents {}
		public struct IComTrackingInfoCollection {}
		public struct IComTrackingInfoObject {}
		public struct IComTrackingInfoProperties {}
		public struct IComApp2Events {}
		public struct IComTransaction2Events {}
		public struct IComInstance2Events {}
		public struct IComObjectPool2Events {}
		public struct IComObjectConstruction2Events {}
		public struct ISystemAppEventData {}
		public struct IMtsEvents {}
		public struct IMtsEventInfo {}
		public struct IMTSLocator {}
		public struct IMtsGrp {}
		public struct IMessageMover {}
		public struct IEventServerTrace {}
		public struct IGetAppTrackerData {}
		public struct IDispenserManager {}
		public struct IHolder {}
		public struct IDispenserDriver {}
		public struct ITransactionProxy {}
		public struct IContextSecurityPerimeter {}
		public struct ITxProxyHolder {}
		public struct IObjectContext {}
		public struct IObjectControl {}
		public struct IEnumNames {}
		public struct ISecurityProperty {}
		public struct ObjectControl {}
		public struct ISharedProperty {}
		public struct ISharedPropertyGroup {}
		public struct ISharedPropertyGroupManager {}
		public struct IObjectConstruct {}
		public struct IObjectConstructString {}
		public struct IObjectContextActivity {}
		public struct IObjectContextInfo {}
		public struct IObjectContextInfo2 {}
		public struct ITransactionStatus {}
		public struct IObjectContextTip {}
		public struct IPlaybackControl {}
		public struct IGetContextProperties {}
		public struct IContextState {}
		public struct IPoolManager {}
		public struct ISelectCOMLBServer {}
		public struct ICOMLBArguments {}
		public struct ICrmLogControl {}
		public struct ICrmCompensatorVariants {}
		public struct ICrmCompensator {}
		public struct ICrmMonitorLogRecords {}
		public struct ICrmMonitorClerks {}
		public struct ICrmMonitor {}
		public struct ICrmFormatLogRecords {}
		public struct IServiceIISIntrinsicsConfig {}
		public struct IServiceComTIIntrinsicsConfig {}
		public struct IServiceSxsConfig {}
		public struct ICheckSxsConfig {}
		public struct IServiceInheritanceConfig {}
		public struct IServiceThreadPoolConfig {}
		public struct IServiceTransactionConfigBase {}
		public struct IServiceTransactionConfig {}
		public struct IServiceSysTxnConfig {}
		public struct IServiceSynchronizationConfig {}
		public struct IServiceTrackerConfig {}
		public struct IServicePartitionConfig {}
		public struct IServiceCall {}
		public struct IAsyncErrorNotify {}
		public struct IServiceActivity {}
		public struct IThreadPoolKnobs {}
		public struct IComStaThreadPoolKnobs {}
		public struct IComMtaThreadPoolKnobs {}
		public struct IComStaThreadPoolKnobs2 {}
		public struct IProcessInitializer {}
		public struct IServicePoolConfig {}
		public struct IServicePool {}
		public struct IManagedPooledObj {}
		public struct IManagedPoolAction {}
		public struct IManagedObjectInfo {}
		public struct IAppDomainHelper {}
		public struct IAssemblyLocator {}
		public struct IManagedActivationEvents {}
		public struct ISendMethodEvents {}
		public struct ITransactionResourcePool {}
		public struct IMTSCall {}
		public struct IContextProperties {}
		public struct IObjPool {}
		public struct ITransactionProperty {}
		public struct IMTSActivity {}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetDefaultContext(APTTYPE aptType, Guid* riid, void** ppv);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateActivity(IUnknown pIUnknown, Guid* riid, void** ppObj);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoEnterServiceDomain(IUnknown pConfigObject);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoLeaveServiceDomain(IUnknown pUnkStatus);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetManagedExtensions(uint32* dwExts);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* SafeRef(Guid* rid, IUnknown pUnk);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RecycleSurrogate(int32 lReasonCode);
		[Import("comsvcs.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MTSCreateActivity(Guid* riid, void** ppobj);
		[Import("mtxdm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetDispenserManager(IDispenserManager* param0);
		
	}
}
