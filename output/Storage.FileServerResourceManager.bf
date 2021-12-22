using System;

// namespace Storage.FileServerResourceManager
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 FSRM_DISPID_FEATURE_MASK = 251658240;
		public const uint32 FSRM_DISPID_INTERFACE_A_MASK = 15728640;
		public const uint32 FSRM_DISPID_INTERFACE_B_MASK = 983040;
		public const uint32 FSRM_DISPID_INTERFACE_C_MASK = 61440;
		public const uint32 FSRM_DISPID_INTERFACE_D_MASK = 3840;
		public const uint32 FSRM_DISPID_IS_PROPERTY = 128;
		public const uint32 FSRM_DISPID_METHOD_NUM_MASK = 127;
		public const uint32 FSRM_DISPID_FEATURE_GENERAL = 16777216;
		public const uint32 FSRM_DISPID_FEATURE_QUOTA = 33554432;
		public const uint32 FSRM_DISPID_FEATURE_FILESCREEN = 50331648;
		public const uint32 FSRM_DISPID_FEATURE_REPORTS = 67108864;
		public const uint32 FSRM_DISPID_FEATURE_CLASSIFICATION = 83886080;
		public const uint32 FSRM_DISPID_FEATURE_PIPELINE = 100663296;
		public const uint32 FsrmMaxNumberThresholds = 16;
		public const uint32 FsrmMinThresholdValue = 1;
		public const uint32 FsrmMaxThresholdValue = 250;
		public const uint32 FsrmMinQuotaLimit = 1024;
		public const uint32 FsrmMaxExcludeFolders = 32;
		public const uint32 FsrmMaxNumberPropertyDefinitions = 100;
		public const uint32 MessageSizeLimit = 4096;
		public const int32 FsrmDaysNotSpecified = -1;
		public const HRESULT FSRM_S_PARTIAL_BATCH = 283396;
		public const HRESULT FSRM_S_PARTIAL_CLASSIFICATION = 283397;
		public const HRESULT FSRM_S_CLASSIFICATION_SCAN_FAILURES = 283398;
		public const HRESULT FSRM_E_NOT_FOUND = -2147200255;
		public const HRESULT FSRM_E_INVALID_SCHEDULER_ARGUMENT = -2147200254;
		public const HRESULT FSRM_E_ALREADY_EXISTS = -2147200253;
		public const HRESULT FSRM_E_PATH_NOT_FOUND = -2147200252;
		public const HRESULT FSRM_E_INVALID_USER = -2147200251;
		public const HRESULT FSRM_E_INVALID_PATH = -2147200250;
		public const HRESULT FSRM_E_INVALID_LIMIT = -2147200249;
		public const HRESULT FSRM_E_INVALID_NAME = -2147200248;
		public const HRESULT FSRM_E_FAIL_BATCH = -2147200247;
		public const HRESULT FSRM_E_INVALID_TEXT = -2147200246;
		public const HRESULT FSRM_E_INVALID_IMPORT_VERSION = -2147200245;
		public const HRESULT FSRM_E_OUT_OF_RANGE = -2147200243;
		public const HRESULT FSRM_E_REQD_PARAM_MISSING = -2147200242;
		public const HRESULT FSRM_E_INVALID_COMBINATION = -2147200241;
		public const HRESULT FSRM_E_DUPLICATE_NAME = -2147200240;
		public const HRESULT FSRM_E_NOT_SUPPORTED = -2147200239;
		public const HRESULT FSRM_E_DRIVER_NOT_READY = -2147200237;
		public const HRESULT FSRM_E_INSUFFICIENT_DISK = -2147200236;
		public const HRESULT FSRM_E_VOLUME_UNSUPPORTED = -2147200235;
		public const HRESULT FSRM_E_UNEXPECTED = -2147200234;
		public const HRESULT FSRM_E_INSECURE_PATH = -2147200233;
		public const HRESULT FSRM_E_INVALID_SMTP_SERVER = -2147200232;
		public const HRESULT FSRM_E_AUTO_QUOTA = 283419;
		public const HRESULT FSRM_E_EMAIL_NOT_SENT = -2147200228;
		public const HRESULT FSRM_E_INVALID_EMAIL_ADDRESS = -2147200226;
		public const HRESULT FSRM_E_FILE_SYSTEM_CORRUPT = -2147200225;
		public const HRESULT FSRM_E_LONG_CMDLINE = -2147200224;
		public const HRESULT FSRM_E_INVALID_FILEGROUP_DEFINITION = -2147200223;
		public const HRESULT FSRM_E_INVALID_DATASCREEN_DEFINITION = -2147200220;
		public const HRESULT FSRM_E_INVALID_REPORT_FORMAT = -2147200216;
		public const HRESULT FSRM_E_INVALID_REPORT_DESC = -2147200215;
		public const HRESULT FSRM_E_INVALID_FILENAME = -2147200214;
		public const HRESULT FSRM_E_SHADOW_COPY = -2147200212;
		public const HRESULT FSRM_E_XML_CORRUPTED = -2147200211;
		public const HRESULT FSRM_E_CLUSTER_NOT_RUNNING = -2147200210;
		public const HRESULT FSRM_E_STORE_NOT_INSTALLED = -2147200209;
		public const HRESULT FSRM_E_NOT_CLUSTER_VOLUME = -2147200208;
		public const HRESULT FSRM_E_DIFFERENT_CLUSTER_GROUP = -2147200207;
		public const HRESULT FSRM_E_REPORT_TYPE_ALREADY_EXISTS = -2147200206;
		public const HRESULT FSRM_E_REPORT_JOB_ALREADY_RUNNING = -2147200205;
		public const HRESULT FSRM_E_REPORT_GENERATION_ERR = -2147200204;
		public const HRESULT FSRM_E_REPORT_TASK_TRIGGER = -2147200203;
		public const HRESULT FSRM_E_LOADING_DISABLED_MODULE = -2147200202;
		public const HRESULT FSRM_E_CANNOT_AGGREGATE = -2147200201;
		public const HRESULT FSRM_E_MESSAGE_LIMIT_EXCEEDED = -2147200200;
		public const HRESULT FSRM_E_OBJECT_IN_USE = -2147200199;
		public const HRESULT FSRM_E_CANNOT_RENAME_PROPERTY = -2147200198;
		public const HRESULT FSRM_E_CANNOT_CHANGE_PROPERTY_TYPE = -2147200197;
		public const HRESULT FSRM_E_MAX_PROPERTY_DEFINITIONS = -2147200196;
		public const HRESULT FSRM_E_CLASSIFICATION_ALREADY_RUNNING = -2147200195;
		public const HRESULT FSRM_E_CLASSIFICATION_NOT_RUNNING = -2147200194;
		public const HRESULT FSRM_E_FILE_MANAGEMENT_JOB_ALREADY_RUNNING = -2147200193;
		public const HRESULT FSRM_E_FILE_MANAGEMENT_JOB_EXPIRATION = -2147200192;
		public const HRESULT FSRM_E_FILE_MANAGEMENT_JOB_CUSTOM = -2147200191;
		public const HRESULT FSRM_E_FILE_MANAGEMENT_JOB_NOTIFICATION = -2147200190;
		public const HRESULT FSRM_E_FILE_OPEN_ERROR = -2147200189;
		public const HRESULT FSRM_E_UNSECURE_LINK_TO_HOSTED_MODULE = -2147200188;
		public const HRESULT FSRM_E_CACHE_INVALID = -2147200187;
		public const HRESULT FSRM_E_CACHE_MODULE_ALREADY_EXISTS = -2147200186;
		public const HRESULT FSRM_E_FILE_MANAGEMENT_EXPIRATION_DIR_IN_SCOPE = -2147200185;
		public const HRESULT FSRM_E_FILE_MANAGEMENT_JOB_ALREADY_EXISTS = -2147200184;
		public const HRESULT FSRM_E_PROPERTY_DELETED = -2147200183;
		public const HRESULT FSRM_E_LAST_ACCESS_UPDATE_DISABLED = -2147200176;
		public const HRESULT FSRM_E_NO_PROPERTY_VALUE = -2147200175;
		public const HRESULT FSRM_E_INPROC_MODULE_BLOCKED = -2147200174;
		public const HRESULT FSRM_E_ENUM_PROPERTIES_FAILED = -2147200173;
		public const HRESULT FSRM_E_SET_PROPERTY_FAILED = -2147200172;
		public const HRESULT FSRM_E_CANNOT_STORE_PROPERTIES = -2147200171;
		public const HRESULT FSRM_E_CANNOT_ALLOW_REPARSE_POINT_TAG = -2147200170;
		public const HRESULT FSRM_E_PARTIAL_CLASSIFICATION_PROPERTY_NOT_FOUND = -2147200169;
		public const HRESULT FSRM_E_TEXTREADER_NOT_INITIALIZED = -2147200168;
		public const HRESULT FSRM_E_TEXTREADER_IFILTER_NOT_FOUND = -2147200167;
		public const HRESULT FSRM_E_PERSIST_PROPERTIES_FAILED_ENCRYPTED = -2147200166;
		public const HRESULT FSRM_E_TEXTREADER_IFILTER_CLSID_MALFORMED = -2147200160;
		public const HRESULT FSRM_E_TEXTREADER_STREAM_ERROR = -2147200159;
		public const HRESULT FSRM_E_TEXTREADER_FILENAME_TOO_LONG = -2147200158;
		public const HRESULT FSRM_E_INCOMPATIBLE_FORMAT = -2147200157;
		public const HRESULT FSRM_E_FILE_ENCRYPTED = -2147200156;
		public const HRESULT FSRM_E_PERSIST_PROPERTIES_FAILED = -2147200155;
		public const HRESULT FSRM_E_VOLUME_OFFLINE = -2147200154;
		public const HRESULT FSRM_E_FILE_MANAGEMENT_ACTION_TIMEOUT = -2147200153;
		public const HRESULT FSRM_E_FILE_MANAGEMENT_ACTION_GET_EXITCODE_FAILED = -2147200152;
		public const HRESULT FSRM_E_MODULE_INVALID_PARAM = -2147200151;
		public const HRESULT FSRM_E_MODULE_INITIALIZATION = -2147200150;
		public const HRESULT FSRM_E_MODULE_SESSION_INITIALIZATION = -2147200149;
		public const HRESULT FSRM_E_CLASSIFICATION_SCAN_FAIL = -2147200148;
		public const HRESULT FSRM_E_FILE_MANAGEMENT_JOB_NOT_LEGACY_ACCESSIBLE = -2147200147;
		public const HRESULT FSRM_E_FILE_MANAGEMENT_JOB_MAX_FILE_CONDITIONS = -2147200146;
		public const HRESULT FSRM_E_CANNOT_USE_DEPRECATED_PROPERTY = -2147200145;
		public const HRESULT FSRM_E_SYNC_TASK_TIMEOUT = -2147200144;
		public const HRESULT FSRM_E_CANNOT_USE_DELETED_PROPERTY = -2147200143;
		public const HRESULT FSRM_E_INVALID_AD_CLAIM = -2147200142;
		public const HRESULT FSRM_E_CLASSIFICATION_CANCELED = -2147200141;
		public const HRESULT FSRM_E_INVALID_FOLDER_PROPERTY_STORE = -2147200140;
		public const HRESULT FSRM_E_REBUILDING_FODLER_TYPE_INDEX = -2147200139;
		public const HRESULT FSRM_E_PROPERTY_MUST_APPLY_TO_FILES = -2147200138;
		public const HRESULT FSRM_E_CLASSIFICATION_TIMEOUT = -2147200137;
		public const HRESULT FSRM_E_CLASSIFICATION_PARTIAL_BATCH = -2147200136;
		public const HRESULT FSRM_E_CANNOT_DELETE_SYSTEM_PROPERTY = -2147200135;
		public const HRESULT FSRM_E_FILE_IN_USE = -2147200134;
		public const HRESULT FSRM_E_ERROR_NOT_ENABLED = -2147200133;
		public const HRESULT FSRM_E_CANNOT_CREATE_TEMP_COPY = -2147200132;
		public const HRESULT FSRM_E_NO_EMAIL_ADDRESS = -2147200131;
		public const HRESULT FSRM_E_ADR_MAX_EMAILS_SENT = -2147200130;
		public const HRESULT FSRM_E_PATH_NOT_IN_NAMESPACE = -2147200129;
		public const HRESULT FSRM_E_RMS_TEMPLATE_NOT_FOUND = -2147200128;
		public const HRESULT FSRM_E_SECURE_PROPERTIES_NOT_SUPPORTED = -2147200127;
		public const HRESULT FSRM_E_RMS_NO_PROTECTORS_INSTALLED = -2147200126;
		public const HRESULT FSRM_E_RMS_NO_PROTECTOR_INSTALLED_FOR_FILE = -2147200125;
		public const HRESULT FSRM_E_PROPERTY_MUST_APPLY_TO_FOLDERS = -2147200124;
		public const HRESULT FSRM_E_PROPERTY_MUST_BE_SECURE = -2147200123;
		public const HRESULT FSRM_E_PROPERTY_MUST_BE_GLOBAL = -2147200122;
		public const HRESULT FSRM_E_WMI_FAILURE = -2147200121;
		public const HRESULT FSRM_E_FILE_MANAGEMENT_JOB_RMS = -2147200120;
		public const HRESULT FSRM_E_SYNC_TASK_HAD_ERRORS = -2147200119;
		public const HRESULT FSRM_E_ADR_SRV_NOT_SUPPORTED = -2147200112;
		public const HRESULT FSRM_E_ADR_PATH_IS_LOCAL = -2147200111;
		public const HRESULT FSRM_E_ADR_NOT_DOMAIN_JOINED = -2147200110;
		public const HRESULT FSRM_E_CANNOT_REMOVE_READONLY = -2147200109;
		public const HRESULT FSRM_E_FILE_MANAGEMENT_JOB_INVALID_CONTINUOUS_CONFIG = -2147200108;
		public const HRESULT FSRM_E_LEGACY_SCHEDULE = -2147200107;
		public const HRESULT FSRM_E_CSC_PATH_NOT_SUPPORTED = -2147200106;
		public const HRESULT FSRM_E_EXPIRATION_PATH_NOT_WRITEABLE = -2147200105;
		public const HRESULT FSRM_E_EXPIRATION_PATH_TOO_LONG = -2147200104;
		public const HRESULT FSRM_E_EXPIRATION_VOLUME_NOT_NTFS = -2147200103;
		public const HRESULT FSRM_E_FILE_MANAGEMENT_JOB_DEPRECATED = -2147200102;
		public const HRESULT FSRM_E_MODULE_TIMEOUT = -2147200101;
		
		// --- Enums ---
		
		public enum FsrmQuotaFlags : int32
		{
			Enforce = 256,
			Disable = 512,
			StatusIncomplete = 65536,
			StatusRebuilding = 131072,
		}
		public enum FsrmFileScreenFlags : int32
		{
			FsrmFileScreenFlags_Enforce = 1,
		}
		public enum FsrmCollectionState : int32
		{
			Fetching = 1,
			Committing = 2,
			Complete = 3,
			Cancelled = 4,
		}
		public enum FsrmEnumOptions : int32
		{
			None = 0,
			Asynchronous = 1,
			CheckRecycleBin = 2,
			IncludeClusterNodes = 4,
			IncludeDeprecatedObjects = 8,
		}
		public enum FsrmCommitOptions : int32
		{
			None = 0,
			Asynchronous = 1,
		}
		public enum FsrmTemplateApplyOptions : int32
		{
			Matching = 1,
			All = 2,
		}
		public enum FsrmActionType : int32
		{
			Unknown = 0,
			EventLog = 1,
			Email = 2,
			Command = 3,
			Report = 4,
		}
		public enum FsrmEventType : int32
		{
			Unknown = 0,
			Information = 1,
			Warning = 2,
			Error = 3,
		}
		public enum FsrmAccountType : int32
		{
			Unknown = 0,
			NetworkService = 1,
			LocalService = 2,
			LocalSystem = 3,
			InProc = 4,
			External = 5,
			Automatic = 500,
		}
		public enum FsrmReportType : int32
		{
			Unknown = 0,
			LargeFiles = 1,
			FilesByType = 2,
			LeastRecentlyAccessed = 3,
			MostRecentlyAccessed = 4,
			QuotaUsage = 5,
			FilesByOwner = 6,
			ExportReport = 7,
			DuplicateFiles = 8,
			FileScreenAudit = 9,
			FilesByProperty = 10,
			AutomaticClassification = 11,
			Expiration = 12,
			FoldersByProperty = 13,
		}
		public enum FsrmReportFormat : int32
		{
			Unknown = 0,
			DHtml = 1,
			Html = 2,
			Txt = 3,
			Csv = 4,
			Xml = 5,
		}
		public enum FsrmReportRunningStatus : int32
		{
			Unknown = 0,
			NotRunning = 1,
			Queued = 2,
			Running = 3,
		}
		public enum FsrmReportGenerationContext : int32
		{
			Undefined = 1,
			ScheduledReport = 2,
			InteractiveReport = 3,
			IncidentReport = 4,
		}
		public enum FsrmReportFilter : int32
		{
			MinSize = 1,
			MinAgeDays = 2,
			MaxAgeDays = 3,
			MinQuotaUsage = 4,
			FileGroups = 5,
			Owners = 6,
			NamePattern = 7,
			Property = 8,
		}
		public enum FsrmReportLimit : int32
		{
			Files = 1,
			FileGroups = 2,
			Owners = 3,
			FilesPerFileGroup = 4,
			FilesPerOwner = 5,
			FilesPerDuplGroup = 6,
			DuplicateGroups = 7,
			Quotas = 8,
			FileScreenEvents = 9,
			PropertyValues = 10,
			FilesPerPropertyValue = 11,
			Folders = 12,
		}
		public enum FsrmPropertyDefinitionType : int32
		{
			Unknown = 0,
			OrderedList = 1,
			MultiChoiceList = 2,
			SingleChoiceList = 3,
			String = 4,
			MultiString = 5,
			Int = 6,
			Bool = 7,
			Date = 8,
		}
		public enum FsrmPropertyDefinitionFlags : int32
		{
			Global = 1,
			Deprecated = 2,
			Secure = 4,
		}
		public enum FsrmPropertyDefinitionAppliesTo : int32
		{
			iles = 1,
			olders = 2,
		}
		public enum FsrmRuleType : int32
		{
			Unknown = 0,
			Classification = 1,
			Generic = 2,
		}
		public enum FsrmRuleFlags : int32
		{
			Disabled = 256,
			ClearAutomaticallyClassifiedProperty = 1024,
			ClearManuallyClassifiedProperty = 2048,
			Invalid = 4096,
		}
		public enum FsrmClassificationLoggingFlags : int32
		{
			None = 0,
			ClassificationsInLogFile = 1,
			ErrorsInLogFile = 2,
			ClassificationsInSystemLog = 4,
			ErrorsInSystemLog = 8,
		}
		public enum FsrmExecutionOption : int32
		{
			Unknown = 0,
			EvaluateUnset = 1,
			ReEvaluate_ConsiderExistingValue = 2,
			ReEvaluate_IgnoreExistingValue = 3,
		}
		public enum FsrmStorageModuleCaps : int32
		{
			Unknown = 0,
			CanGet = 1,
			CanSet = 2,
			CanHandleDirectories = 4,
			CanHandleFiles = 8,
		}
		public enum FsrmStorageModuleType : int32
		{
			Unknown = 0,
			Cache = 1,
			InFile = 2,
			Database = 3,
			System = 100,
		}
		public enum FsrmPropertyBagFlags : int32
		{
			UpdatedByClassifier = 1,
			FailedLoadingProperties = 2,
			FailedSavingProperties = 4,
			FailedClassifyingProperties = 8,
		}
		public enum FsrmPropertyBagField : int32
		{
			AccessVolume = 0,
			VolumeGuidName = 1,
		}
		public enum FsrmPropertyFlags : int32
		{
			None = 0,
			Orphaned = 1,
			RetrievedFromCache = 2,
			RetrievedFromStorage = 4,
			SetByClassifier = 8,
			Deleted = 16,
			Reclassified = 32,
			AggregationFailed = 64,
			Existing = 128,
			FailedLoadingProperties = 256,
			FailedClassifyingProperties = 512,
			FailedSavingProperties = 1024,
			Secure = 2048,
			PolicyDerived = 4096,
			Inherited = 8192,
			Manual = 16384,
			ExplicitValueDeleted = 32768,
			PropertyDeletedFromClear = 65536,
			PropertySourceMask = 14,
			PersistentMask = 20480,
		}
		public enum FsrmPipelineModuleType : int32
		{
			Unknown = 0,
			Storage = 1,
			Classifier = 2,
		}
		public enum FsrmGetFilePropertyOptions : int32
		{
			None = 0,
			NoRuleEvaluation = 1,
			Persistent = 2,
			FailOnPersistErrors = 4,
			SkipOrphaned = 8,
		}
		public enum FsrmFileManagementType : int32
		{
			Unknown = 0,
			Expiration = 1,
			Custom = 2,
			Rms = 3,
		}
		public enum FsrmFileManagementLoggingFlags : int32
		{
			None = 0,
			Error = 1,
			Information = 2,
			Audit = 4,
		}
		public enum FsrmPropertyConditionType : int32
		{
			Unknown = 0,
			Equal = 1,
			NotEqual = 2,
			GreaterThan = 3,
			LessThan = 4,
			Contain = 5,
			Exist = 6,
			NotExist = 7,
			StartWith = 8,
			EndWith = 9,
			ContainedIn = 10,
			PrefixOf = 11,
			SuffixOf = 12,
			MatchesPattern = 13,
		}
		public enum FsrmFileStreamingMode : int32
		{
			Unknown = 0,
			Read = 1,
			Write = 2,
		}
		public enum FsrmFileStreamingInterfaceType : int32
		{
			Unknown = 0,
			ILockBytes = 1,
			IStream = 2,
		}
		public enum FsrmFileConditionType : int32
		{
			Unknown = 0,
			Property = 1,
		}
		public enum FsrmFileSystemPropertyId : int32
		{
			Undefined = 0,
			FileName = 1,
			DateCreated = 2,
			DateLastAccessed = 3,
			DateLastModified = 4,
			DateNow = 5,
		}
		public enum FsrmPropertyValueType : int32
		{
			Undefined = 0,
			Literal = 1,
			DateOffset = 2,
		}
		public enum AdrClientDisplayFlags : int32
		{
			AllowEmailRequests = 1,
			ShowDeviceTroubleshooting = 2,
		}
		public enum AdrEmailFlags : int32
		{
			PutDataOwnerOnToLine = 1,
			PutAdminOnToLine = 2,
			IncludeDeviceClaims = 4,
			IncludeUserInfo = 8,
			GenerateEventLog = 16,
		}
		public enum AdrClientErrorType : int32
		{
			Unknown = 0,
			AccessDenied = 1,
			FileNotFound = 2,
		}
		public enum AdrClientFlags : int32
		{
			None = 0,
			FailForLocalPaths = 1,
			FailIfNotSupportedByServer = 2,
			FailIfNotDomainJoined = 4,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_FsrmSetting = .(0xf556d708, 0x6d4d, 0x4594, 0x9c, 0x61, 0x7d, 0xbb, 0x0d, 0xae, 0x2a, 0x46);
		public const Guid CLSID_FsrmPathMapper = .(0xf3be42bd, 0x8ac2, 0x409e, 0xbb, 0xd8, 0xfa, 0xf9, 0xb6, 0xb4, 0x1f, 0xeb);
		public const Guid CLSID_FsrmExportImport = .(0x1482dc37, 0xfae9, 0x4787, 0x90, 0x25, 0x8c, 0xe4, 0xe0, 0x24, 0xab, 0x56);
		public const Guid CLSID_FsrmQuotaManager = .(0x90dcab7f, 0x347c, 0x4bfc, 0xb5, 0x43, 0x54, 0x03, 0x26, 0x30, 0x5f, 0xbe);
		public const Guid CLSID_FsrmQuotaTemplateManager = .(0x97d3d443, 0x251c, 0x4337, 0x81, 0xe7, 0xb3, 0x2e, 0x8f, 0x4e, 0xe6, 0x5e);
		public const Guid CLSID_FsrmFileGroupManager = .(0x8f1363f6, 0x656f, 0x4496, 0x92, 0x26, 0x13, 0xae, 0xcb, 0xd7, 0x71, 0x8f);
		public const Guid CLSID_FsrmFileScreenManager = .(0x95941183, 0xdb53, 0x4c5f, 0xb3, 0x7b, 0x7d, 0x09, 0x21, 0xcf, 0x9d, 0xc7);
		public const Guid CLSID_FsrmFileScreenTemplateManager = .(0x243111df, 0xe474, 0x46aa, 0xa0, 0x54, 0xea, 0xa3, 0x3e, 0xdc, 0x29, 0x2a);
		public const Guid CLSID_FsrmReportManager = .(0x0058ef37, 0xaa66, 0x4c48, 0xbd, 0x5b, 0x2f, 0xce, 0x43, 0x2a, 0xb0, 0xc8);
		public const Guid CLSID_FsrmReportScheduler = .(0xea25f1b8, 0x1b8d, 0x4290, 0x8e, 0xe8, 0xe1, 0x7c, 0x12, 0xc2, 0xfe, 0x20);
		public const Guid CLSID_FsrmFileManagementJobManager = .(0xeb18f9b2, 0x4c3a, 0x4321, 0xb2, 0x03, 0x20, 0x51, 0x20, 0xcf, 0xf6, 0x14);
		public const Guid CLSID_FsrmClassificationManager = .(0xb15c0e47, 0xc391, 0x45b9, 0x95, 0xc8, 0xeb, 0x59, 0x6c, 0x85, 0x3f, 0x3a);
		public const Guid CLSID_FsrmPipelineModuleConnector = .(0xc7643375, 0x1eb5, 0x44de, 0xa0, 0x62, 0x62, 0x35, 0x47, 0xd9, 0x33, 0xbc);
		public const Guid CLSID_AdSyncTask = .(0x2ae64751, 0xb728, 0x4d6b, 0x97, 0xa0, 0xb2, 0xda, 0x2e, 0x7d, 0x2a, 0x3b);
		public const Guid CLSID_FsrmAccessDeniedRemediationClient = .(0x100b4fc8, 0x74c1, 0x470f, 0xb1, 0xb7, 0xdd, 0x7b, 0x6b, 0xae, 0x79, 0xbd);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IFsrmObject : IDispatch
		{
			public const new Guid IID = .(0x22bcef93, 0x4a3f, 0x4183, 0x89, 0xf9, 0x2f, 0x8b, 0x8a, 0x62, 0x8a, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(Guid* id) mut
			{
				return VT.get_Id(&this, id);
			}
			public HRESULT get_Description(BSTR* description) mut
			{
				return VT.get_Description(&this, description);
			}
			public HRESULT put_Description(BSTR description) mut
			{
				return VT.put_Description(&this, description);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT Commit() mut
			{
				return VT.Commit(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmObject *self, Guid* id) get_Id;
				public new function HRESULT(IFsrmObject *self, BSTR* description) get_Description;
				public new function HRESULT(IFsrmObject *self, BSTR description) put_Description;
				public new function HRESULT(IFsrmObject *self) Delete;
				public new function HRESULT(IFsrmObject *self) Commit;
			}
		}
		[CRepr]
		public struct IFsrmCollection : IDispatch
		{
			public const new Guid IID = .(0xf76fbf3b, 0x8ddd, 0x4b42, 0xb0, 0x5a, 0xcb, 0x1c, 0x3f, 0xf1, 0xfe, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** unknown) mut
			{
				return VT.get__NewEnum(&this, unknown);
			}
			public HRESULT get_Item(int32 index, VARIANT* item) mut
			{
				return VT.get_Item(&this, index, item);
			}
			public HRESULT get_Count(int32* count) mut
			{
				return VT.get_Count(&this, count);
			}
			public HRESULT get_State(FsrmCollectionState* state) mut
			{
				return VT.get_State(&this, state);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			public HRESULT WaitForCompletion(int32 waitSeconds, int16* completed) mut
			{
				return VT.WaitForCompletion(&this, waitSeconds, completed);
			}
			public HRESULT GetById(Guid id, VARIANT* entry) mut
			{
				return VT.GetById(&this, id, entry);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmCollection *self, IUnknown** unknown) get__NewEnum;
				public new function HRESULT(IFsrmCollection *self, int32 index, VARIANT* item) get_Item;
				public new function HRESULT(IFsrmCollection *self, int32* count) get_Count;
				public new function HRESULT(IFsrmCollection *self, FsrmCollectionState* state) get_State;
				public new function HRESULT(IFsrmCollection *self) Cancel;
				public new function HRESULT(IFsrmCollection *self, int32 waitSeconds, int16* completed) WaitForCompletion;
				public new function HRESULT(IFsrmCollection *self, Guid id, VARIANT* entry) GetById;
			}
		}
		[CRepr]
		public struct IFsrmMutableCollection : IFsrmCollection
		{
			public const new Guid IID = .(0x1bb617b8, 0x3886, 0x49dc, 0xaf, 0x82, 0xa6, 0xc9, 0x0f, 0xa3, 0x5d, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Add(VARIANT item) mut
			{
				return VT.Add(&this, item);
			}
			public HRESULT Remove(int32 index) mut
			{
				return VT.Remove(&this, index);
			}
			public HRESULT RemoveById(Guid id) mut
			{
				return VT.RemoveById(&this, id);
			}
			public HRESULT Clone(IFsrmMutableCollection** collection) mut
			{
				return VT.Clone(&this, collection);
			}
			[CRepr]
			public struct VTable : IFsrmCollection.VTable
			{
				public new function HRESULT(IFsrmMutableCollection *self, VARIANT item) Add;
				public new function HRESULT(IFsrmMutableCollection *self, int32 index) Remove;
				public new function HRESULT(IFsrmMutableCollection *self, Guid id) RemoveById;
				public new function HRESULT(IFsrmMutableCollection *self, IFsrmMutableCollection** collection) Clone;
			}
		}
		[CRepr]
		public struct IFsrmCommittableCollection : IFsrmMutableCollection
		{
			public const new Guid IID = .(0x96deb3b5, 0x8b91, 0x4a2a, 0x9d, 0x93, 0x80, 0xa3, 0x5d, 0x8a, 0xa8, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Commit(FsrmCommitOptions options, IFsrmCollection** results) mut
			{
				return VT.Commit(&this, options, results);
			}
			[CRepr]
			public struct VTable : IFsrmMutableCollection.VTable
			{
				public new function HRESULT(IFsrmCommittableCollection *self, FsrmCommitOptions options, IFsrmCollection** results) Commit;
			}
		}
		[CRepr]
		public struct IFsrmAction : IDispatch
		{
			public const new Guid IID = .(0x6cd6408a, 0xae60, 0x463b, 0x9e, 0xf1, 0xe1, 0x17, 0x53, 0x4d, 0x69, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(Guid* id) mut
			{
				return VT.get_Id(&this, id);
			}
			public HRESULT get_ActionType(FsrmActionType* actionType) mut
			{
				return VT.get_ActionType(&this, actionType);
			}
			public HRESULT get_RunLimitInterval(int32* minutes) mut
			{
				return VT.get_RunLimitInterval(&this, minutes);
			}
			public HRESULT put_RunLimitInterval(int32 minutes) mut
			{
				return VT.put_RunLimitInterval(&this, minutes);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmAction *self, Guid* id) get_Id;
				public new function HRESULT(IFsrmAction *self, FsrmActionType* actionType) get_ActionType;
				public new function HRESULT(IFsrmAction *self, int32* minutes) get_RunLimitInterval;
				public new function HRESULT(IFsrmAction *self, int32 minutes) put_RunLimitInterval;
				public new function HRESULT(IFsrmAction *self) Delete;
			}
		}
		[CRepr]
		public struct IFsrmActionEmail : IFsrmAction
		{
			public const new Guid IID = .(0xd646567d, 0x26ae, 0x4caa, 0x9f, 0x84, 0x4e, 0x0a, 0xad, 0x20, 0x7f, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_MailFrom(BSTR* mailFrom) mut
			{
				return VT.get_MailFrom(&this, mailFrom);
			}
			public HRESULT put_MailFrom(BSTR mailFrom) mut
			{
				return VT.put_MailFrom(&this, mailFrom);
			}
			public HRESULT get_MailReplyTo(BSTR* mailReplyTo) mut
			{
				return VT.get_MailReplyTo(&this, mailReplyTo);
			}
			public HRESULT put_MailReplyTo(BSTR mailReplyTo) mut
			{
				return VT.put_MailReplyTo(&this, mailReplyTo);
			}
			public HRESULT get_MailTo(BSTR* mailTo) mut
			{
				return VT.get_MailTo(&this, mailTo);
			}
			public HRESULT put_MailTo(BSTR mailTo) mut
			{
				return VT.put_MailTo(&this, mailTo);
			}
			public HRESULT get_MailCc(BSTR* mailCc) mut
			{
				return VT.get_MailCc(&this, mailCc);
			}
			public HRESULT put_MailCc(BSTR mailCc) mut
			{
				return VT.put_MailCc(&this, mailCc);
			}
			public HRESULT get_MailBcc(BSTR* mailBcc) mut
			{
				return VT.get_MailBcc(&this, mailBcc);
			}
			public HRESULT put_MailBcc(BSTR mailBcc) mut
			{
				return VT.put_MailBcc(&this, mailBcc);
			}
			public HRESULT get_MailSubject(BSTR* mailSubject) mut
			{
				return VT.get_MailSubject(&this, mailSubject);
			}
			public HRESULT put_MailSubject(BSTR mailSubject) mut
			{
				return VT.put_MailSubject(&this, mailSubject);
			}
			public HRESULT get_MessageText(BSTR* messageText) mut
			{
				return VT.get_MessageText(&this, messageText);
			}
			public HRESULT put_MessageText(BSTR messageText) mut
			{
				return VT.put_MessageText(&this, messageText);
			}
			[CRepr]
			public struct VTable : IFsrmAction.VTable
			{
				public new function HRESULT(IFsrmActionEmail *self, BSTR* mailFrom) get_MailFrom;
				public new function HRESULT(IFsrmActionEmail *self, BSTR mailFrom) put_MailFrom;
				public new function HRESULT(IFsrmActionEmail *self, BSTR* mailReplyTo) get_MailReplyTo;
				public new function HRESULT(IFsrmActionEmail *self, BSTR mailReplyTo) put_MailReplyTo;
				public new function HRESULT(IFsrmActionEmail *self, BSTR* mailTo) get_MailTo;
				public new function HRESULT(IFsrmActionEmail *self, BSTR mailTo) put_MailTo;
				public new function HRESULT(IFsrmActionEmail *self, BSTR* mailCc) get_MailCc;
				public new function HRESULT(IFsrmActionEmail *self, BSTR mailCc) put_MailCc;
				public new function HRESULT(IFsrmActionEmail *self, BSTR* mailBcc) get_MailBcc;
				public new function HRESULT(IFsrmActionEmail *self, BSTR mailBcc) put_MailBcc;
				public new function HRESULT(IFsrmActionEmail *self, BSTR* mailSubject) get_MailSubject;
				public new function HRESULT(IFsrmActionEmail *self, BSTR mailSubject) put_MailSubject;
				public new function HRESULT(IFsrmActionEmail *self, BSTR* messageText) get_MessageText;
				public new function HRESULT(IFsrmActionEmail *self, BSTR messageText) put_MessageText;
			}
		}
		[CRepr]
		public struct IFsrmActionEmail2 : IFsrmActionEmail
		{
			public const new Guid IID = .(0x8276702f, 0x2532, 0x4839, 0x89, 0xbf, 0x48, 0x72, 0x60, 0x9a, 0x2e, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AttachmentFileListSize(int32* attachmentFileListSize) mut
			{
				return VT.get_AttachmentFileListSize(&this, attachmentFileListSize);
			}
			public HRESULT put_AttachmentFileListSize(int32 attachmentFileListSize) mut
			{
				return VT.put_AttachmentFileListSize(&this, attachmentFileListSize);
			}
			[CRepr]
			public struct VTable : IFsrmActionEmail.VTable
			{
				public new function HRESULT(IFsrmActionEmail2 *self, int32* attachmentFileListSize) get_AttachmentFileListSize;
				public new function HRESULT(IFsrmActionEmail2 *self, int32 attachmentFileListSize) put_AttachmentFileListSize;
			}
		}
		[CRepr]
		public struct IFsrmActionReport : IFsrmAction
		{
			public const new Guid IID = .(0x2dbe63c4, 0xb340, 0x48a0, 0xa5, 0xb0, 0x15, 0x8e, 0x07, 0xfc, 0x56, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ReportTypes(SAFEARRAY** reportTypes) mut
			{
				return VT.get_ReportTypes(&this, reportTypes);
			}
			public HRESULT put_ReportTypes(SAFEARRAY* reportTypes) mut
			{
				return VT.put_ReportTypes(&this, reportTypes);
			}
			public HRESULT get_MailTo(BSTR* mailTo) mut
			{
				return VT.get_MailTo(&this, mailTo);
			}
			public HRESULT put_MailTo(BSTR mailTo) mut
			{
				return VT.put_MailTo(&this, mailTo);
			}
			[CRepr]
			public struct VTable : IFsrmAction.VTable
			{
				public new function HRESULT(IFsrmActionReport *self, SAFEARRAY** reportTypes) get_ReportTypes;
				public new function HRESULT(IFsrmActionReport *self, SAFEARRAY* reportTypes) put_ReportTypes;
				public new function HRESULT(IFsrmActionReport *self, BSTR* mailTo) get_MailTo;
				public new function HRESULT(IFsrmActionReport *self, BSTR mailTo) put_MailTo;
			}
		}
		[CRepr]
		public struct IFsrmActionEventLog : IFsrmAction
		{
			public const new Guid IID = .(0x4c8f96c3, 0x5d94, 0x4f37, 0xa4, 0xf4, 0xf5, 0x6a, 0xb4, 0x63, 0x54, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(FsrmEventType* eventType) mut
			{
				return VT.get_EventType(&this, eventType);
			}
			public HRESULT put_EventType(FsrmEventType eventType) mut
			{
				return VT.put_EventType(&this, eventType);
			}
			public HRESULT get_MessageText(BSTR* messageText) mut
			{
				return VT.get_MessageText(&this, messageText);
			}
			public HRESULT put_MessageText(BSTR messageText) mut
			{
				return VT.put_MessageText(&this, messageText);
			}
			[CRepr]
			public struct VTable : IFsrmAction.VTable
			{
				public new function HRESULT(IFsrmActionEventLog *self, FsrmEventType* eventType) get_EventType;
				public new function HRESULT(IFsrmActionEventLog *self, FsrmEventType eventType) put_EventType;
				public new function HRESULT(IFsrmActionEventLog *self, BSTR* messageText) get_MessageText;
				public new function HRESULT(IFsrmActionEventLog *self, BSTR messageText) put_MessageText;
			}
		}
		[CRepr]
		public struct IFsrmActionCommand : IFsrmAction
		{
			public const new Guid IID = .(0x12937789, 0xe247, 0x4917, 0x9c, 0x20, 0xf3, 0xee, 0x9c, 0x7e, 0xe7, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ExecutablePath(BSTR* executablePath) mut
			{
				return VT.get_ExecutablePath(&this, executablePath);
			}
			public HRESULT put_ExecutablePath(BSTR executablePath) mut
			{
				return VT.put_ExecutablePath(&this, executablePath);
			}
			public HRESULT get_Arguments(BSTR* arguments) mut
			{
				return VT.get_Arguments(&this, arguments);
			}
			public HRESULT put_Arguments(BSTR arguments) mut
			{
				return VT.put_Arguments(&this, arguments);
			}
			public HRESULT get_Account(FsrmAccountType* account) mut
			{
				return VT.get_Account(&this, account);
			}
			public HRESULT put_Account(FsrmAccountType account) mut
			{
				return VT.put_Account(&this, account);
			}
			public HRESULT get_WorkingDirectory(BSTR* workingDirectory) mut
			{
				return VT.get_WorkingDirectory(&this, workingDirectory);
			}
			public HRESULT put_WorkingDirectory(BSTR workingDirectory) mut
			{
				return VT.put_WorkingDirectory(&this, workingDirectory);
			}
			public HRESULT get_MonitorCommand(int16* monitorCommand) mut
			{
				return VT.get_MonitorCommand(&this, monitorCommand);
			}
			public HRESULT put_MonitorCommand(int16 monitorCommand) mut
			{
				return VT.put_MonitorCommand(&this, monitorCommand);
			}
			public HRESULT get_KillTimeOut(int32* minutes) mut
			{
				return VT.get_KillTimeOut(&this, minutes);
			}
			public HRESULT put_KillTimeOut(int32 minutes) mut
			{
				return VT.put_KillTimeOut(&this, minutes);
			}
			public HRESULT get_LogResult(int16* logResults) mut
			{
				return VT.get_LogResult(&this, logResults);
			}
			public HRESULT put_LogResult(int16 logResults) mut
			{
				return VT.put_LogResult(&this, logResults);
			}
			[CRepr]
			public struct VTable : IFsrmAction.VTable
			{
				public new function HRESULT(IFsrmActionCommand *self, BSTR* executablePath) get_ExecutablePath;
				public new function HRESULT(IFsrmActionCommand *self, BSTR executablePath) put_ExecutablePath;
				public new function HRESULT(IFsrmActionCommand *self, BSTR* arguments) get_Arguments;
				public new function HRESULT(IFsrmActionCommand *self, BSTR arguments) put_Arguments;
				public new function HRESULT(IFsrmActionCommand *self, FsrmAccountType* account) get_Account;
				public new function HRESULT(IFsrmActionCommand *self, FsrmAccountType account) put_Account;
				public new function HRESULT(IFsrmActionCommand *self, BSTR* workingDirectory) get_WorkingDirectory;
				public new function HRESULT(IFsrmActionCommand *self, BSTR workingDirectory) put_WorkingDirectory;
				public new function HRESULT(IFsrmActionCommand *self, int16* monitorCommand) get_MonitorCommand;
				public new function HRESULT(IFsrmActionCommand *self, int16 monitorCommand) put_MonitorCommand;
				public new function HRESULT(IFsrmActionCommand *self, int32* minutes) get_KillTimeOut;
				public new function HRESULT(IFsrmActionCommand *self, int32 minutes) put_KillTimeOut;
				public new function HRESULT(IFsrmActionCommand *self, int16* logResults) get_LogResult;
				public new function HRESULT(IFsrmActionCommand *self, int16 logResults) put_LogResult;
			}
		}
		[CRepr]
		public struct IFsrmSetting : IDispatch
		{
			public const new Guid IID = .(0xf411d4fd, 0x14be, 0x4260, 0x8c, 0x40, 0x03, 0xb7, 0xc9, 0x5e, 0x60, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SmtpServer(BSTR* smtpServer) mut
			{
				return VT.get_SmtpServer(&this, smtpServer);
			}
			public HRESULT put_SmtpServer(BSTR smtpServer) mut
			{
				return VT.put_SmtpServer(&this, smtpServer);
			}
			public HRESULT get_MailFrom(BSTR* mailFrom) mut
			{
				return VT.get_MailFrom(&this, mailFrom);
			}
			public HRESULT put_MailFrom(BSTR mailFrom) mut
			{
				return VT.put_MailFrom(&this, mailFrom);
			}
			public HRESULT get_AdminEmail(BSTR* adminEmail) mut
			{
				return VT.get_AdminEmail(&this, adminEmail);
			}
			public HRESULT put_AdminEmail(BSTR adminEmail) mut
			{
				return VT.put_AdminEmail(&this, adminEmail);
			}
			public HRESULT get_DisableCommandLine(int16* disableCommandLine) mut
			{
				return VT.get_DisableCommandLine(&this, disableCommandLine);
			}
			public HRESULT put_DisableCommandLine(int16 disableCommandLine) mut
			{
				return VT.put_DisableCommandLine(&this, disableCommandLine);
			}
			public HRESULT get_EnableScreeningAudit(int16* enableScreeningAudit) mut
			{
				return VT.get_EnableScreeningAudit(&this, enableScreeningAudit);
			}
			public HRESULT put_EnableScreeningAudit(int16 enableScreeningAudit) mut
			{
				return VT.put_EnableScreeningAudit(&this, enableScreeningAudit);
			}
			public HRESULT EmailTest(BSTR mailTo) mut
			{
				return VT.EmailTest(&this, mailTo);
			}
			public HRESULT SetActionRunLimitInterval(FsrmActionType actionType, int32 delayTimeMinutes) mut
			{
				return VT.SetActionRunLimitInterval(&this, actionType, delayTimeMinutes);
			}
			public HRESULT GetActionRunLimitInterval(FsrmActionType actionType, int32* delayTimeMinutes) mut
			{
				return VT.GetActionRunLimitInterval(&this, actionType, delayTimeMinutes);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmSetting *self, BSTR* smtpServer) get_SmtpServer;
				public new function HRESULT(IFsrmSetting *self, BSTR smtpServer) put_SmtpServer;
				public new function HRESULT(IFsrmSetting *self, BSTR* mailFrom) get_MailFrom;
				public new function HRESULT(IFsrmSetting *self, BSTR mailFrom) put_MailFrom;
				public new function HRESULT(IFsrmSetting *self, BSTR* adminEmail) get_AdminEmail;
				public new function HRESULT(IFsrmSetting *self, BSTR adminEmail) put_AdminEmail;
				public new function HRESULT(IFsrmSetting *self, int16* disableCommandLine) get_DisableCommandLine;
				public new function HRESULT(IFsrmSetting *self, int16 disableCommandLine) put_DisableCommandLine;
				public new function HRESULT(IFsrmSetting *self, int16* enableScreeningAudit) get_EnableScreeningAudit;
				public new function HRESULT(IFsrmSetting *self, int16 enableScreeningAudit) put_EnableScreeningAudit;
				public new function HRESULT(IFsrmSetting *self, BSTR mailTo) EmailTest;
				public new function HRESULT(IFsrmSetting *self, FsrmActionType actionType, int32 delayTimeMinutes) SetActionRunLimitInterval;
				public new function HRESULT(IFsrmSetting *self, FsrmActionType actionType, int32* delayTimeMinutes) GetActionRunLimitInterval;
			}
		}
		[CRepr]
		public struct IFsrmPathMapper : IDispatch
		{
			public const new Guid IID = .(0x6f4dbfff, 0x6920, 0x4821, 0xa6, 0xc3, 0xb7, 0xe9, 0x4c, 0x1f, 0xd6, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSharePathsForLocalPath(BSTR localPath, SAFEARRAY** sharePaths) mut
			{
				return VT.GetSharePathsForLocalPath(&this, localPath, sharePaths);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmPathMapper *self, BSTR localPath, SAFEARRAY** sharePaths) GetSharePathsForLocalPath;
			}
		}
		[CRepr]
		public struct IFsrmExportImport : IDispatch
		{
			public const new Guid IID = .(0xefcb0ab1, 0x16c4, 0x4a79, 0x81, 0x2c, 0x72, 0x56, 0x14, 0xc3, 0x30, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ExportFileGroups(BSTR filePath, VARIANT* fileGroupNamesSafeArray, BSTR remoteHost) mut
			{
				return VT.ExportFileGroups(&this, filePath, fileGroupNamesSafeArray, remoteHost);
			}
			public HRESULT ImportFileGroups(BSTR filePath, VARIANT* fileGroupNamesSafeArray, BSTR remoteHost, IFsrmCommittableCollection** fileGroups) mut
			{
				return VT.ImportFileGroups(&this, filePath, fileGroupNamesSafeArray, remoteHost, fileGroups);
			}
			public HRESULT ExportFileScreenTemplates(BSTR filePath, VARIANT* templateNamesSafeArray, BSTR remoteHost) mut
			{
				return VT.ExportFileScreenTemplates(&this, filePath, templateNamesSafeArray, remoteHost);
			}
			public HRESULT ImportFileScreenTemplates(BSTR filePath, VARIANT* templateNamesSafeArray, BSTR remoteHost, IFsrmCommittableCollection** templates) mut
			{
				return VT.ImportFileScreenTemplates(&this, filePath, templateNamesSafeArray, remoteHost, templates);
			}
			public HRESULT ExportQuotaTemplates(BSTR filePath, VARIANT* templateNamesSafeArray, BSTR remoteHost) mut
			{
				return VT.ExportQuotaTemplates(&this, filePath, templateNamesSafeArray, remoteHost);
			}
			public HRESULT ImportQuotaTemplates(BSTR filePath, VARIANT* templateNamesSafeArray, BSTR remoteHost, IFsrmCommittableCollection** templates) mut
			{
				return VT.ImportQuotaTemplates(&this, filePath, templateNamesSafeArray, remoteHost, templates);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmExportImport *self, BSTR filePath, VARIANT* fileGroupNamesSafeArray, BSTR remoteHost) ExportFileGroups;
				public new function HRESULT(IFsrmExportImport *self, BSTR filePath, VARIANT* fileGroupNamesSafeArray, BSTR remoteHost, IFsrmCommittableCollection** fileGroups) ImportFileGroups;
				public new function HRESULT(IFsrmExportImport *self, BSTR filePath, VARIANT* templateNamesSafeArray, BSTR remoteHost) ExportFileScreenTemplates;
				public new function HRESULT(IFsrmExportImport *self, BSTR filePath, VARIANT* templateNamesSafeArray, BSTR remoteHost, IFsrmCommittableCollection** templates) ImportFileScreenTemplates;
				public new function HRESULT(IFsrmExportImport *self, BSTR filePath, VARIANT* templateNamesSafeArray, BSTR remoteHost) ExportQuotaTemplates;
				public new function HRESULT(IFsrmExportImport *self, BSTR filePath, VARIANT* templateNamesSafeArray, BSTR remoteHost, IFsrmCommittableCollection** templates) ImportQuotaTemplates;
			}
		}
		[CRepr]
		public struct IFsrmDerivedObjectsResult : IDispatch
		{
			public const new Guid IID = .(0x39322a2d, 0x38ee, 0x4d0d, 0x80, 0x95, 0x42, 0x1a, 0x80, 0x84, 0x9a, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DerivedObjects(IFsrmCollection** derivedObjects) mut
			{
				return VT.get_DerivedObjects(&this, derivedObjects);
			}
			public HRESULT get_Results(IFsrmCollection** results) mut
			{
				return VT.get_Results(&this, results);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmDerivedObjectsResult *self, IFsrmCollection** derivedObjects) get_DerivedObjects;
				public new function HRESULT(IFsrmDerivedObjectsResult *self, IFsrmCollection** results) get_Results;
			}
		}
		[CRepr]
		public struct IFsrmAccessDeniedRemediationClient : IDispatch
		{
			public const new Guid IID = .(0x40002314, 0x590b, 0x45a5, 0x8e, 0x1b, 0x8c, 0x05, 0xda, 0x52, 0x7e, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Show(uint parentWnd, BSTR accessPath, AdrClientErrorType errorType, int32 flags, BSTR windowTitle, BSTR windowMessage, int32* result) mut
			{
				return VT.Show(&this, parentWnd, accessPath, errorType, flags, windowTitle, windowMessage, result);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmAccessDeniedRemediationClient *self, uint parentWnd, BSTR accessPath, AdrClientErrorType errorType, int32 flags, BSTR windowTitle, BSTR windowMessage, int32* result) Show;
			}
		}
		[CRepr]
		public struct IFsrmQuotaBase : IFsrmObject
		{
			public const new Guid IID = .(0x1568a795, 0x3924, 0x4118, 0xb7, 0x4b, 0x68, 0xd8, 0xf0, 0xfa, 0x5d, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_QuotaLimit(VARIANT* quotaLimit) mut
			{
				return VT.get_QuotaLimit(&this, quotaLimit);
			}
			public HRESULT put_QuotaLimit(VARIANT quotaLimit) mut
			{
				return VT.put_QuotaLimit(&this, quotaLimit);
			}
			public HRESULT get_QuotaFlags(int32* quotaFlags) mut
			{
				return VT.get_QuotaFlags(&this, quotaFlags);
			}
			public HRESULT put_QuotaFlags(int32 quotaFlags) mut
			{
				return VT.put_QuotaFlags(&this, quotaFlags);
			}
			public HRESULT get_Thresholds(SAFEARRAY** thresholds) mut
			{
				return VT.get_Thresholds(&this, thresholds);
			}
			public HRESULT AddThreshold(int32 threshold) mut
			{
				return VT.AddThreshold(&this, threshold);
			}
			public HRESULT DeleteThreshold(int32 threshold) mut
			{
				return VT.DeleteThreshold(&this, threshold);
			}
			public HRESULT ModifyThreshold(int32 threshold, int32 newThreshold) mut
			{
				return VT.ModifyThreshold(&this, threshold, newThreshold);
			}
			public HRESULT CreateThresholdAction(int32 threshold, FsrmActionType actionType, IFsrmAction** action) mut
			{
				return VT.CreateThresholdAction(&this, threshold, actionType, action);
			}
			public HRESULT EnumThresholdActions(int32 threshold, IFsrmCollection** actions) mut
			{
				return VT.EnumThresholdActions(&this, threshold, actions);
			}
			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function HRESULT(IFsrmQuotaBase *self, VARIANT* quotaLimit) get_QuotaLimit;
				public new function HRESULT(IFsrmQuotaBase *self, VARIANT quotaLimit) put_QuotaLimit;
				public new function HRESULT(IFsrmQuotaBase *self, int32* quotaFlags) get_QuotaFlags;
				public new function HRESULT(IFsrmQuotaBase *self, int32 quotaFlags) put_QuotaFlags;
				public new function HRESULT(IFsrmQuotaBase *self, SAFEARRAY** thresholds) get_Thresholds;
				public new function HRESULT(IFsrmQuotaBase *self, int32 threshold) AddThreshold;
				public new function HRESULT(IFsrmQuotaBase *self, int32 threshold) DeleteThreshold;
				public new function HRESULT(IFsrmQuotaBase *self, int32 threshold, int32 newThreshold) ModifyThreshold;
				public new function HRESULT(IFsrmQuotaBase *self, int32 threshold, FsrmActionType actionType, IFsrmAction** action) CreateThresholdAction;
				public new function HRESULT(IFsrmQuotaBase *self, int32 threshold, IFsrmCollection** actions) EnumThresholdActions;
			}
		}
		[CRepr]
		public struct IFsrmQuotaObject : IFsrmQuotaBase
		{
			public const new Guid IID = .(0x42dc3511, 0x61d5, 0x48ae, 0xb6, 0xdc, 0x59, 0xfc, 0x00, 0xc0, 0xa8, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(BSTR* path) mut
			{
				return VT.get_Path(&this, path);
			}
			public HRESULT get_UserSid(BSTR* userSid) mut
			{
				return VT.get_UserSid(&this, userSid);
			}
			public HRESULT get_UserAccount(BSTR* userAccount) mut
			{
				return VT.get_UserAccount(&this, userAccount);
			}
			public HRESULT get_SourceTemplateName(BSTR* quotaTemplateName) mut
			{
				return VT.get_SourceTemplateName(&this, quotaTemplateName);
			}
			public HRESULT get_MatchesSourceTemplate(int16* matches) mut
			{
				return VT.get_MatchesSourceTemplate(&this, matches);
			}
			public HRESULT ApplyTemplate(BSTR quotaTemplateName) mut
			{
				return VT.ApplyTemplate(&this, quotaTemplateName);
			}
			[CRepr]
			public struct VTable : IFsrmQuotaBase.VTable
			{
				public new function HRESULT(IFsrmQuotaObject *self, BSTR* path) get_Path;
				public new function HRESULT(IFsrmQuotaObject *self, BSTR* userSid) get_UserSid;
				public new function HRESULT(IFsrmQuotaObject *self, BSTR* userAccount) get_UserAccount;
				public new function HRESULT(IFsrmQuotaObject *self, BSTR* quotaTemplateName) get_SourceTemplateName;
				public new function HRESULT(IFsrmQuotaObject *self, int16* matches) get_MatchesSourceTemplate;
				public new function HRESULT(IFsrmQuotaObject *self, BSTR quotaTemplateName) ApplyTemplate;
			}
		}
		[CRepr]
		public struct IFsrmQuota : IFsrmQuotaObject
		{
			public const new Guid IID = .(0x377f739d, 0x9647, 0x4b8e, 0x97, 0xd2, 0x5f, 0xfc, 0xe6, 0xd7, 0x59, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_QuotaUsed(VARIANT* used) mut
			{
				return VT.get_QuotaUsed(&this, used);
			}
			public HRESULT get_QuotaPeakUsage(VARIANT* peakUsage) mut
			{
				return VT.get_QuotaPeakUsage(&this, peakUsage);
			}
			public HRESULT get_QuotaPeakUsageTime(double* peakUsageDateTime) mut
			{
				return VT.get_QuotaPeakUsageTime(&this, peakUsageDateTime);
			}
			public HRESULT ResetPeakUsage() mut
			{
				return VT.ResetPeakUsage(&this);
			}
			public HRESULT RefreshUsageProperties() mut
			{
				return VT.RefreshUsageProperties(&this);
			}
			[CRepr]
			public struct VTable : IFsrmQuotaObject.VTable
			{
				public new function HRESULT(IFsrmQuota *self, VARIANT* used) get_QuotaUsed;
				public new function HRESULT(IFsrmQuota *self, VARIANT* peakUsage) get_QuotaPeakUsage;
				public new function HRESULT(IFsrmQuota *self, double* peakUsageDateTime) get_QuotaPeakUsageTime;
				public new function HRESULT(IFsrmQuota *self) ResetPeakUsage;
				public new function HRESULT(IFsrmQuota *self) RefreshUsageProperties;
			}
		}
		[CRepr]
		public struct IFsrmAutoApplyQuota : IFsrmQuotaObject
		{
			public const new Guid IID = .(0xf82e5729, 0x6aba, 0x4740, 0xbf, 0xc7, 0xc7, 0xf5, 0x8f, 0x75, 0xfb, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ExcludeFolders(SAFEARRAY** folders) mut
			{
				return VT.get_ExcludeFolders(&this, folders);
			}
			public HRESULT put_ExcludeFolders(SAFEARRAY* folders) mut
			{
				return VT.put_ExcludeFolders(&this, folders);
			}
			public HRESULT CommitAndUpdateDerived(FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, IFsrmDerivedObjectsResult** derivedObjectsResult) mut
			{
				return VT.CommitAndUpdateDerived(&this, commitOptions, applyOptions, derivedObjectsResult);
			}
			[CRepr]
			public struct VTable : IFsrmQuotaObject.VTable
			{
				public new function HRESULT(IFsrmAutoApplyQuota *self, SAFEARRAY** folders) get_ExcludeFolders;
				public new function HRESULT(IFsrmAutoApplyQuota *self, SAFEARRAY* folders) put_ExcludeFolders;
				public new function HRESULT(IFsrmAutoApplyQuota *self, FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, IFsrmDerivedObjectsResult** derivedObjectsResult) CommitAndUpdateDerived;
			}
		}
		[CRepr]
		public struct IFsrmQuotaManager : IDispatch
		{
			public const new Guid IID = .(0x8bb68c7d, 0x19d8, 0x4ffb, 0x80, 0x9e, 0xbe, 0x4f, 0xc1, 0x73, 0x40, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ActionVariables(SAFEARRAY** variables) mut
			{
				return VT.get_ActionVariables(&this, variables);
			}
			public HRESULT get_ActionVariableDescriptions(SAFEARRAY** descriptions) mut
			{
				return VT.get_ActionVariableDescriptions(&this, descriptions);
			}
			public HRESULT CreateQuota(BSTR path, IFsrmQuota** quota) mut
			{
				return VT.CreateQuota(&this, path, quota);
			}
			public HRESULT CreateAutoApplyQuota(BSTR quotaTemplateName, BSTR path, IFsrmAutoApplyQuota** quota) mut
			{
				return VT.CreateAutoApplyQuota(&this, quotaTemplateName, path, quota);
			}
			public HRESULT GetQuota(BSTR path, IFsrmQuota** quota) mut
			{
				return VT.GetQuota(&this, path, quota);
			}
			public HRESULT GetAutoApplyQuota(BSTR path, IFsrmAutoApplyQuota** quota) mut
			{
				return VT.GetAutoApplyQuota(&this, path, quota);
			}
			public HRESULT GetRestrictiveQuota(BSTR path, IFsrmQuota** quota) mut
			{
				return VT.GetRestrictiveQuota(&this, path, quota);
			}
			public HRESULT EnumQuotas(BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** quotas) mut
			{
				return VT.EnumQuotas(&this, path, options, quotas);
			}
			public HRESULT EnumAutoApplyQuotas(BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** quotas) mut
			{
				return VT.EnumAutoApplyQuotas(&this, path, options, quotas);
			}
			public HRESULT EnumEffectiveQuotas(BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** quotas) mut
			{
				return VT.EnumEffectiveQuotas(&this, path, options, quotas);
			}
			public HRESULT Scan(BSTR strPath) mut
			{
				return VT.Scan(&this, strPath);
			}
			public HRESULT CreateQuotaCollection(IFsrmCommittableCollection** collection) mut
			{
				return VT.CreateQuotaCollection(&this, collection);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmQuotaManager *self, SAFEARRAY** variables) get_ActionVariables;
				public new function HRESULT(IFsrmQuotaManager *self, SAFEARRAY** descriptions) get_ActionVariableDescriptions;
				public new function HRESULT(IFsrmQuotaManager *self, BSTR path, IFsrmQuota** quota) CreateQuota;
				public new function HRESULT(IFsrmQuotaManager *self, BSTR quotaTemplateName, BSTR path, IFsrmAutoApplyQuota** quota) CreateAutoApplyQuota;
				public new function HRESULT(IFsrmQuotaManager *self, BSTR path, IFsrmQuota** quota) GetQuota;
				public new function HRESULT(IFsrmQuotaManager *self, BSTR path, IFsrmAutoApplyQuota** quota) GetAutoApplyQuota;
				public new function HRESULT(IFsrmQuotaManager *self, BSTR path, IFsrmQuota** quota) GetRestrictiveQuota;
				public new function HRESULT(IFsrmQuotaManager *self, BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** quotas) EnumQuotas;
				public new function HRESULT(IFsrmQuotaManager *self, BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** quotas) EnumAutoApplyQuotas;
				public new function HRESULT(IFsrmQuotaManager *self, BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** quotas) EnumEffectiveQuotas;
				public new function HRESULT(IFsrmQuotaManager *self, BSTR strPath) Scan;
				public new function HRESULT(IFsrmQuotaManager *self, IFsrmCommittableCollection** collection) CreateQuotaCollection;
			}
		}
		[CRepr]
		public struct IFsrmQuotaManagerEx : IFsrmQuotaManager
		{
			public const new Guid IID = .(0x4846cb01, 0xd430, 0x494f, 0xab, 0xb4, 0xb1, 0x05, 0x49, 0x99, 0xfb, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsAffectedByQuota(BSTR path, FsrmEnumOptions options, int16* affected) mut
			{
				return VT.IsAffectedByQuota(&this, path, options, affected);
			}
			[CRepr]
			public struct VTable : IFsrmQuotaManager.VTable
			{
				public new function HRESULT(IFsrmQuotaManagerEx *self, BSTR path, FsrmEnumOptions options, int16* affected) IsAffectedByQuota;
			}
		}
		[CRepr]
		public struct IFsrmQuotaTemplate : IFsrmQuotaBase
		{
			public const new Guid IID = .(0xa2efab31, 0x295e, 0x46bb, 0xb9, 0x76, 0xe8, 0x6d, 0x58, 0xb5, 0x2e, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT CopyTemplate(BSTR quotaTemplateName) mut
			{
				return VT.CopyTemplate(&this, quotaTemplateName);
			}
			public HRESULT CommitAndUpdateDerived(FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, IFsrmDerivedObjectsResult** derivedObjectsResult) mut
			{
				return VT.CommitAndUpdateDerived(&this, commitOptions, applyOptions, derivedObjectsResult);
			}
			[CRepr]
			public struct VTable : IFsrmQuotaBase.VTable
			{
				public new function HRESULT(IFsrmQuotaTemplate *self, BSTR* name) get_Name;
				public new function HRESULT(IFsrmQuotaTemplate *self, BSTR name) put_Name;
				public new function HRESULT(IFsrmQuotaTemplate *self, BSTR quotaTemplateName) CopyTemplate;
				public new function HRESULT(IFsrmQuotaTemplate *self, FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, IFsrmDerivedObjectsResult** derivedObjectsResult) CommitAndUpdateDerived;
			}
		}
		[CRepr]
		public struct IFsrmQuotaTemplateImported : IFsrmQuotaTemplate
		{
			public const new Guid IID = .(0x9a2bf113, 0xa329, 0x44cc, 0x80, 0x9a, 0x5c, 0x00, 0xfc, 0xe8, 0xda, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OverwriteOnCommit(int16* overwrite) mut
			{
				return VT.get_OverwriteOnCommit(&this, overwrite);
			}
			public HRESULT put_OverwriteOnCommit(int16 overwrite) mut
			{
				return VT.put_OverwriteOnCommit(&this, overwrite);
			}
			[CRepr]
			public struct VTable : IFsrmQuotaTemplate.VTable
			{
				public new function HRESULT(IFsrmQuotaTemplateImported *self, int16* overwrite) get_OverwriteOnCommit;
				public new function HRESULT(IFsrmQuotaTemplateImported *self, int16 overwrite) put_OverwriteOnCommit;
			}
		}
		[CRepr]
		public struct IFsrmQuotaTemplateManager : IDispatch
		{
			public const new Guid IID = .(0x4173ac41, 0x172d, 0x4d52, 0x96, 0x3c, 0xfd, 0xc7, 0xe4, 0x15, 0xf7, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTemplate(IFsrmQuotaTemplate** quotaTemplate) mut
			{
				return VT.CreateTemplate(&this, quotaTemplate);
			}
			public HRESULT GetTemplate(BSTR name, IFsrmQuotaTemplate** quotaTemplate) mut
			{
				return VT.GetTemplate(&this, name, quotaTemplate);
			}
			public HRESULT EnumTemplates(FsrmEnumOptions options, IFsrmCommittableCollection** quotaTemplates) mut
			{
				return VT.EnumTemplates(&this, options, quotaTemplates);
			}
			public HRESULT ExportTemplates(VARIANT* quotaTemplateNamesArray, BSTR* serializedQuotaTemplates) mut
			{
				return VT.ExportTemplates(&this, quotaTemplateNamesArray, serializedQuotaTemplates);
			}
			public HRESULT ImportTemplates(BSTR serializedQuotaTemplates, VARIANT* quotaTemplateNamesArray, IFsrmCommittableCollection** quotaTemplates) mut
			{
				return VT.ImportTemplates(&this, serializedQuotaTemplates, quotaTemplateNamesArray, quotaTemplates);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmQuotaTemplateManager *self, IFsrmQuotaTemplate** quotaTemplate) CreateTemplate;
				public new function HRESULT(IFsrmQuotaTemplateManager *self, BSTR name, IFsrmQuotaTemplate** quotaTemplate) GetTemplate;
				public new function HRESULT(IFsrmQuotaTemplateManager *self, FsrmEnumOptions options, IFsrmCommittableCollection** quotaTemplates) EnumTemplates;
				public new function HRESULT(IFsrmQuotaTemplateManager *self, VARIANT* quotaTemplateNamesArray, BSTR* serializedQuotaTemplates) ExportTemplates;
				public new function HRESULT(IFsrmQuotaTemplateManager *self, BSTR serializedQuotaTemplates, VARIANT* quotaTemplateNamesArray, IFsrmCommittableCollection** quotaTemplates) ImportTemplates;
			}
		}
		[CRepr]
		public struct IFsrmFileGroup : IFsrmObject
		{
			public const new Guid IID = .(0x8dd04909, 0x0e34, 0x4d55, 0xaf, 0xaa, 0x89, 0xe1, 0xf1, 0xa1, 0xbb, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_Members(IFsrmMutableCollection** members) mut
			{
				return VT.get_Members(&this, members);
			}
			public HRESULT put_Members(IFsrmMutableCollection* members) mut
			{
				return VT.put_Members(&this, members);
			}
			public HRESULT get_NonMembers(IFsrmMutableCollection** nonMembers) mut
			{
				return VT.get_NonMembers(&this, nonMembers);
			}
			public HRESULT put_NonMembers(IFsrmMutableCollection* nonMembers) mut
			{
				return VT.put_NonMembers(&this, nonMembers);
			}
			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function HRESULT(IFsrmFileGroup *self, BSTR* name) get_Name;
				public new function HRESULT(IFsrmFileGroup *self, BSTR name) put_Name;
				public new function HRESULT(IFsrmFileGroup *self, IFsrmMutableCollection** members) get_Members;
				public new function HRESULT(IFsrmFileGroup *self, IFsrmMutableCollection* members) put_Members;
				public new function HRESULT(IFsrmFileGroup *self, IFsrmMutableCollection** nonMembers) get_NonMembers;
				public new function HRESULT(IFsrmFileGroup *self, IFsrmMutableCollection* nonMembers) put_NonMembers;
			}
		}
		[CRepr]
		public struct IFsrmFileGroupImported : IFsrmFileGroup
		{
			public const new Guid IID = .(0xad55f10b, 0x5f11, 0x4be7, 0x94, 0xef, 0xd9, 0xee, 0x2e, 0x47, 0x0d, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OverwriteOnCommit(int16* overwrite) mut
			{
				return VT.get_OverwriteOnCommit(&this, overwrite);
			}
			public HRESULT put_OverwriteOnCommit(int16 overwrite) mut
			{
				return VT.put_OverwriteOnCommit(&this, overwrite);
			}
			[CRepr]
			public struct VTable : IFsrmFileGroup.VTable
			{
				public new function HRESULT(IFsrmFileGroupImported *self, int16* overwrite) get_OverwriteOnCommit;
				public new function HRESULT(IFsrmFileGroupImported *self, int16 overwrite) put_OverwriteOnCommit;
			}
		}
		[CRepr]
		public struct IFsrmFileGroupManager : IDispatch
		{
			public const new Guid IID = .(0x426677d5, 0x018c, 0x485c, 0x8a, 0x51, 0x20, 0xb8, 0x6d, 0x00, 0xbd, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFileGroup(IFsrmFileGroup** fileGroup) mut
			{
				return VT.CreateFileGroup(&this, fileGroup);
			}
			public HRESULT GetFileGroup(BSTR name, IFsrmFileGroup** fileGroup) mut
			{
				return VT.GetFileGroup(&this, name, fileGroup);
			}
			public HRESULT EnumFileGroups(FsrmEnumOptions options, IFsrmCommittableCollection** fileGroups) mut
			{
				return VT.EnumFileGroups(&this, options, fileGroups);
			}
			public HRESULT ExportFileGroups(VARIANT* fileGroupNamesArray, BSTR* serializedFileGroups) mut
			{
				return VT.ExportFileGroups(&this, fileGroupNamesArray, serializedFileGroups);
			}
			public HRESULT ImportFileGroups(BSTR serializedFileGroups, VARIANT* fileGroupNamesArray, IFsrmCommittableCollection** fileGroups) mut
			{
				return VT.ImportFileGroups(&this, serializedFileGroups, fileGroupNamesArray, fileGroups);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmFileGroupManager *self, IFsrmFileGroup** fileGroup) CreateFileGroup;
				public new function HRESULT(IFsrmFileGroupManager *self, BSTR name, IFsrmFileGroup** fileGroup) GetFileGroup;
				public new function HRESULT(IFsrmFileGroupManager *self, FsrmEnumOptions options, IFsrmCommittableCollection** fileGroups) EnumFileGroups;
				public new function HRESULT(IFsrmFileGroupManager *self, VARIANT* fileGroupNamesArray, BSTR* serializedFileGroups) ExportFileGroups;
				public new function HRESULT(IFsrmFileGroupManager *self, BSTR serializedFileGroups, VARIANT* fileGroupNamesArray, IFsrmCommittableCollection** fileGroups) ImportFileGroups;
			}
		}
		[CRepr]
		public struct IFsrmFileScreenBase : IFsrmObject
		{
			public const new Guid IID = .(0xf3637e80, 0x5b22, 0x4a2b, 0xa6, 0x37, 0xbb, 0xb6, 0x42, 0xb4, 0x1c, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BlockedFileGroups(IFsrmMutableCollection** blockList) mut
			{
				return VT.get_BlockedFileGroups(&this, blockList);
			}
			public HRESULT put_BlockedFileGroups(IFsrmMutableCollection* blockList) mut
			{
				return VT.put_BlockedFileGroups(&this, blockList);
			}
			public HRESULT get_FileScreenFlags(int32* fileScreenFlags) mut
			{
				return VT.get_FileScreenFlags(&this, fileScreenFlags);
			}
			public HRESULT put_FileScreenFlags(int32 fileScreenFlags) mut
			{
				return VT.put_FileScreenFlags(&this, fileScreenFlags);
			}
			public HRESULT CreateAction(FsrmActionType actionType, IFsrmAction** action) mut
			{
				return VT.CreateAction(&this, actionType, action);
			}
			public HRESULT EnumActions(IFsrmCollection** actions) mut
			{
				return VT.EnumActions(&this, actions);
			}
			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function HRESULT(IFsrmFileScreenBase *self, IFsrmMutableCollection** blockList) get_BlockedFileGroups;
				public new function HRESULT(IFsrmFileScreenBase *self, IFsrmMutableCollection* blockList) put_BlockedFileGroups;
				public new function HRESULT(IFsrmFileScreenBase *self, int32* fileScreenFlags) get_FileScreenFlags;
				public new function HRESULT(IFsrmFileScreenBase *self, int32 fileScreenFlags) put_FileScreenFlags;
				public new function HRESULT(IFsrmFileScreenBase *self, FsrmActionType actionType, IFsrmAction** action) CreateAction;
				public new function HRESULT(IFsrmFileScreenBase *self, IFsrmCollection** actions) EnumActions;
			}
		}
		[CRepr]
		public struct IFsrmFileScreen : IFsrmFileScreenBase
		{
			public const new Guid IID = .(0x5f6325d3, 0xce88, 0x4733, 0x84, 0xc1, 0x2d, 0x6a, 0xef, 0xc5, 0xea, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(BSTR* path) mut
			{
				return VT.get_Path(&this, path);
			}
			public HRESULT get_SourceTemplateName(BSTR* fileScreenTemplateName) mut
			{
				return VT.get_SourceTemplateName(&this, fileScreenTemplateName);
			}
			public HRESULT get_MatchesSourceTemplate(int16* matches) mut
			{
				return VT.get_MatchesSourceTemplate(&this, matches);
			}
			public HRESULT get_UserSid(BSTR* userSid) mut
			{
				return VT.get_UserSid(&this, userSid);
			}
			public HRESULT get_UserAccount(BSTR* userAccount) mut
			{
				return VT.get_UserAccount(&this, userAccount);
			}
			public HRESULT ApplyTemplate(BSTR fileScreenTemplateName) mut
			{
				return VT.ApplyTemplate(&this, fileScreenTemplateName);
			}
			[CRepr]
			public struct VTable : IFsrmFileScreenBase.VTable
			{
				public new function HRESULT(IFsrmFileScreen *self, BSTR* path) get_Path;
				public new function HRESULT(IFsrmFileScreen *self, BSTR* fileScreenTemplateName) get_SourceTemplateName;
				public new function HRESULT(IFsrmFileScreen *self, int16* matches) get_MatchesSourceTemplate;
				public new function HRESULT(IFsrmFileScreen *self, BSTR* userSid) get_UserSid;
				public new function HRESULT(IFsrmFileScreen *self, BSTR* userAccount) get_UserAccount;
				public new function HRESULT(IFsrmFileScreen *self, BSTR fileScreenTemplateName) ApplyTemplate;
			}
		}
		[CRepr]
		public struct IFsrmFileScreenException : IFsrmObject
		{
			public const new Guid IID = .(0xbee7ce02, 0xdf77, 0x4515, 0x93, 0x89, 0x78, 0xf0, 0x1c, 0x5a, 0xfc, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(BSTR* path) mut
			{
				return VT.get_Path(&this, path);
			}
			public HRESULT get_AllowedFileGroups(IFsrmMutableCollection** allowList) mut
			{
				return VT.get_AllowedFileGroups(&this, allowList);
			}
			public HRESULT put_AllowedFileGroups(IFsrmMutableCollection* allowList) mut
			{
				return VT.put_AllowedFileGroups(&this, allowList);
			}
			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function HRESULT(IFsrmFileScreenException *self, BSTR* path) get_Path;
				public new function HRESULT(IFsrmFileScreenException *self, IFsrmMutableCollection** allowList) get_AllowedFileGroups;
				public new function HRESULT(IFsrmFileScreenException *self, IFsrmMutableCollection* allowList) put_AllowedFileGroups;
			}
		}
		[CRepr]
		public struct IFsrmFileScreenManager : IDispatch
		{
			public const new Guid IID = .(0xff4fa04e, 0x5a94, 0x4bda, 0xa3, 0xa0, 0xd5, 0xb4, 0xd3, 0xc5, 0x2e, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ActionVariables(SAFEARRAY** variables) mut
			{
				return VT.get_ActionVariables(&this, variables);
			}
			public HRESULT get_ActionVariableDescriptions(SAFEARRAY** descriptions) mut
			{
				return VT.get_ActionVariableDescriptions(&this, descriptions);
			}
			public HRESULT CreateFileScreen(BSTR path, IFsrmFileScreen** fileScreen) mut
			{
				return VT.CreateFileScreen(&this, path, fileScreen);
			}
			public HRESULT GetFileScreen(BSTR path, IFsrmFileScreen** fileScreen) mut
			{
				return VT.GetFileScreen(&this, path, fileScreen);
			}
			public HRESULT EnumFileScreens(BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** fileScreens) mut
			{
				return VT.EnumFileScreens(&this, path, options, fileScreens);
			}
			public HRESULT CreateFileScreenException(BSTR path, IFsrmFileScreenException** fileScreenException) mut
			{
				return VT.CreateFileScreenException(&this, path, fileScreenException);
			}
			public HRESULT GetFileScreenException(BSTR path, IFsrmFileScreenException** fileScreenException) mut
			{
				return VT.GetFileScreenException(&this, path, fileScreenException);
			}
			public HRESULT EnumFileScreenExceptions(BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** fileScreenExceptions) mut
			{
				return VT.EnumFileScreenExceptions(&this, path, options, fileScreenExceptions);
			}
			public HRESULT CreateFileScreenCollection(IFsrmCommittableCollection** collection) mut
			{
				return VT.CreateFileScreenCollection(&this, collection);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmFileScreenManager *self, SAFEARRAY** variables) get_ActionVariables;
				public new function HRESULT(IFsrmFileScreenManager *self, SAFEARRAY** descriptions) get_ActionVariableDescriptions;
				public new function HRESULT(IFsrmFileScreenManager *self, BSTR path, IFsrmFileScreen** fileScreen) CreateFileScreen;
				public new function HRESULT(IFsrmFileScreenManager *self, BSTR path, IFsrmFileScreen** fileScreen) GetFileScreen;
				public new function HRESULT(IFsrmFileScreenManager *self, BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** fileScreens) EnumFileScreens;
				public new function HRESULT(IFsrmFileScreenManager *self, BSTR path, IFsrmFileScreenException** fileScreenException) CreateFileScreenException;
				public new function HRESULT(IFsrmFileScreenManager *self, BSTR path, IFsrmFileScreenException** fileScreenException) GetFileScreenException;
				public new function HRESULT(IFsrmFileScreenManager *self, BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** fileScreenExceptions) EnumFileScreenExceptions;
				public new function HRESULT(IFsrmFileScreenManager *self, IFsrmCommittableCollection** collection) CreateFileScreenCollection;
			}
		}
		[CRepr]
		public struct IFsrmFileScreenTemplate : IFsrmFileScreenBase
		{
			public const new Guid IID = .(0x205bebf8, 0xdd93, 0x452a, 0x95, 0xa6, 0x32, 0xb5, 0x66, 0xb3, 0x58, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT CopyTemplate(BSTR fileScreenTemplateName) mut
			{
				return VT.CopyTemplate(&this, fileScreenTemplateName);
			}
			public HRESULT CommitAndUpdateDerived(FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, IFsrmDerivedObjectsResult** derivedObjectsResult) mut
			{
				return VT.CommitAndUpdateDerived(&this, commitOptions, applyOptions, derivedObjectsResult);
			}
			[CRepr]
			public struct VTable : IFsrmFileScreenBase.VTable
			{
				public new function HRESULT(IFsrmFileScreenTemplate *self, BSTR* name) get_Name;
				public new function HRESULT(IFsrmFileScreenTemplate *self, BSTR name) put_Name;
				public new function HRESULT(IFsrmFileScreenTemplate *self, BSTR fileScreenTemplateName) CopyTemplate;
				public new function HRESULT(IFsrmFileScreenTemplate *self, FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, IFsrmDerivedObjectsResult** derivedObjectsResult) CommitAndUpdateDerived;
			}
		}
		[CRepr]
		public struct IFsrmFileScreenTemplateImported : IFsrmFileScreenTemplate
		{
			public const new Guid IID = .(0xe1010359, 0x3e5d, 0x4ecd, 0x9f, 0xe4, 0xef, 0x48, 0x62, 0x2f, 0xdf, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OverwriteOnCommit(int16* overwrite) mut
			{
				return VT.get_OverwriteOnCommit(&this, overwrite);
			}
			public HRESULT put_OverwriteOnCommit(int16 overwrite) mut
			{
				return VT.put_OverwriteOnCommit(&this, overwrite);
			}
			[CRepr]
			public struct VTable : IFsrmFileScreenTemplate.VTable
			{
				public new function HRESULT(IFsrmFileScreenTemplateImported *self, int16* overwrite) get_OverwriteOnCommit;
				public new function HRESULT(IFsrmFileScreenTemplateImported *self, int16 overwrite) put_OverwriteOnCommit;
			}
		}
		[CRepr]
		public struct IFsrmFileScreenTemplateManager : IDispatch
		{
			public const new Guid IID = .(0xcfe36cba, 0x1949, 0x4e74, 0xa1, 0x4f, 0xf1, 0xd5, 0x80, 0xce, 0xaf, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTemplate(IFsrmFileScreenTemplate** fileScreenTemplate) mut
			{
				return VT.CreateTemplate(&this, fileScreenTemplate);
			}
			public HRESULT GetTemplate(BSTR name, IFsrmFileScreenTemplate** fileScreenTemplate) mut
			{
				return VT.GetTemplate(&this, name, fileScreenTemplate);
			}
			public HRESULT EnumTemplates(FsrmEnumOptions options, IFsrmCommittableCollection** fileScreenTemplates) mut
			{
				return VT.EnumTemplates(&this, options, fileScreenTemplates);
			}
			public HRESULT ExportTemplates(VARIANT* fileScreenTemplateNamesArray, BSTR* serializedFileScreenTemplates) mut
			{
				return VT.ExportTemplates(&this, fileScreenTemplateNamesArray, serializedFileScreenTemplates);
			}
			public HRESULT ImportTemplates(BSTR serializedFileScreenTemplates, VARIANT* fileScreenTemplateNamesArray, IFsrmCommittableCollection** fileScreenTemplates) mut
			{
				return VT.ImportTemplates(&this, serializedFileScreenTemplates, fileScreenTemplateNamesArray, fileScreenTemplates);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmFileScreenTemplateManager *self, IFsrmFileScreenTemplate** fileScreenTemplate) CreateTemplate;
				public new function HRESULT(IFsrmFileScreenTemplateManager *self, BSTR name, IFsrmFileScreenTemplate** fileScreenTemplate) GetTemplate;
				public new function HRESULT(IFsrmFileScreenTemplateManager *self, FsrmEnumOptions options, IFsrmCommittableCollection** fileScreenTemplates) EnumTemplates;
				public new function HRESULT(IFsrmFileScreenTemplateManager *self, VARIANT* fileScreenTemplateNamesArray, BSTR* serializedFileScreenTemplates) ExportTemplates;
				public new function HRESULT(IFsrmFileScreenTemplateManager *self, BSTR serializedFileScreenTemplates, VARIANT* fileScreenTemplateNamesArray, IFsrmCommittableCollection** fileScreenTemplates) ImportTemplates;
			}
		}
		[CRepr]
		public struct IFsrmReportManager : IDispatch
		{
			public const new Guid IID = .(0x27b899fe, 0x6ffa, 0x4481, 0xa1, 0x84, 0xd3, 0xda, 0xad, 0xe8, 0xa0, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumReportJobs(FsrmEnumOptions options, IFsrmCollection** reportJobs) mut
			{
				return VT.EnumReportJobs(&this, options, reportJobs);
			}
			public HRESULT CreateReportJob(IFsrmReportJob** reportJob) mut
			{
				return VT.CreateReportJob(&this, reportJob);
			}
			public HRESULT GetReportJob(BSTR taskName, IFsrmReportJob** reportJob) mut
			{
				return VT.GetReportJob(&this, taskName, reportJob);
			}
			public HRESULT GetOutputDirectory(FsrmReportGenerationContext context, BSTR* path) mut
			{
				return VT.GetOutputDirectory(&this, context, path);
			}
			public HRESULT SetOutputDirectory(FsrmReportGenerationContext context, BSTR path) mut
			{
				return VT.SetOutputDirectory(&this, context, path);
			}
			public HRESULT IsFilterValidForReportType(FsrmReportType reportType, FsrmReportFilter filter, int16* valid) mut
			{
				return VT.IsFilterValidForReportType(&this, reportType, filter, valid);
			}
			public HRESULT GetDefaultFilter(FsrmReportType reportType, FsrmReportFilter filter, VARIANT* filterValue) mut
			{
				return VT.GetDefaultFilter(&this, reportType, filter, filterValue);
			}
			public HRESULT SetDefaultFilter(FsrmReportType reportType, FsrmReportFilter filter, VARIANT filterValue) mut
			{
				return VT.SetDefaultFilter(&this, reportType, filter, filterValue);
			}
			public HRESULT GetReportSizeLimit(FsrmReportLimit limit, VARIANT* limitValue) mut
			{
				return VT.GetReportSizeLimit(&this, limit, limitValue);
			}
			public HRESULT SetReportSizeLimit(FsrmReportLimit limit, VARIANT limitValue) mut
			{
				return VT.SetReportSizeLimit(&this, limit, limitValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmReportManager *self, FsrmEnumOptions options, IFsrmCollection** reportJobs) EnumReportJobs;
				public new function HRESULT(IFsrmReportManager *self, IFsrmReportJob** reportJob) CreateReportJob;
				public new function HRESULT(IFsrmReportManager *self, BSTR taskName, IFsrmReportJob** reportJob) GetReportJob;
				public new function HRESULT(IFsrmReportManager *self, FsrmReportGenerationContext context, BSTR* path) GetOutputDirectory;
				public new function HRESULT(IFsrmReportManager *self, FsrmReportGenerationContext context, BSTR path) SetOutputDirectory;
				public new function HRESULT(IFsrmReportManager *self, FsrmReportType reportType, FsrmReportFilter filter, int16* valid) IsFilterValidForReportType;
				public new function HRESULT(IFsrmReportManager *self, FsrmReportType reportType, FsrmReportFilter filter, VARIANT* filterValue) GetDefaultFilter;
				public new function HRESULT(IFsrmReportManager *self, FsrmReportType reportType, FsrmReportFilter filter, VARIANT filterValue) SetDefaultFilter;
				public new function HRESULT(IFsrmReportManager *self, FsrmReportLimit limit, VARIANT* limitValue) GetReportSizeLimit;
				public new function HRESULT(IFsrmReportManager *self, FsrmReportLimit limit, VARIANT limitValue) SetReportSizeLimit;
			}
		}
		[CRepr]
		public struct IFsrmReportJob : IFsrmObject
		{
			public const new Guid IID = .(0x38e87280, 0x715c, 0x4c7d, 0xa2, 0x80, 0xea, 0x16, 0x51, 0xa1, 0x9f, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Task(BSTR* taskName) mut
			{
				return VT.get_Task(&this, taskName);
			}
			public HRESULT put_Task(BSTR taskName) mut
			{
				return VT.put_Task(&this, taskName);
			}
			public HRESULT get_NamespaceRoots(SAFEARRAY** namespaceRoots) mut
			{
				return VT.get_NamespaceRoots(&this, namespaceRoots);
			}
			public HRESULT put_NamespaceRoots(SAFEARRAY* namespaceRoots) mut
			{
				return VT.put_NamespaceRoots(&this, namespaceRoots);
			}
			public HRESULT get_Formats(SAFEARRAY** formats) mut
			{
				return VT.get_Formats(&this, formats);
			}
			public HRESULT put_Formats(SAFEARRAY* formats) mut
			{
				return VT.put_Formats(&this, formats);
			}
			public HRESULT get_MailTo(BSTR* mailTo) mut
			{
				return VT.get_MailTo(&this, mailTo);
			}
			public HRESULT put_MailTo(BSTR mailTo) mut
			{
				return VT.put_MailTo(&this, mailTo);
			}
			public HRESULT get_RunningStatus(FsrmReportRunningStatus* runningStatus) mut
			{
				return VT.get_RunningStatus(&this, runningStatus);
			}
			public HRESULT get_LastRun(double* lastRun) mut
			{
				return VT.get_LastRun(&this, lastRun);
			}
			public HRESULT get_LastError(BSTR* lastError) mut
			{
				return VT.get_LastError(&this, lastError);
			}
			public HRESULT get_LastGeneratedInDirectory(BSTR* path) mut
			{
				return VT.get_LastGeneratedInDirectory(&this, path);
			}
			public HRESULT EnumReports(IFsrmCollection** reports) mut
			{
				return VT.EnumReports(&this, reports);
			}
			public HRESULT CreateReport(FsrmReportType reportType, IFsrmReport** report) mut
			{
				return VT.CreateReport(&this, reportType, report);
			}
			public HRESULT Run(FsrmReportGenerationContext context) mut
			{
				return VT.Run(&this, context);
			}
			public HRESULT WaitForCompletion(int32 waitSeconds, int16* completed) mut
			{
				return VT.WaitForCompletion(&this, waitSeconds, completed);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function HRESULT(IFsrmReportJob *self, BSTR* taskName) get_Task;
				public new function HRESULT(IFsrmReportJob *self, BSTR taskName) put_Task;
				public new function HRESULT(IFsrmReportJob *self, SAFEARRAY** namespaceRoots) get_NamespaceRoots;
				public new function HRESULT(IFsrmReportJob *self, SAFEARRAY* namespaceRoots) put_NamespaceRoots;
				public new function HRESULT(IFsrmReportJob *self, SAFEARRAY** formats) get_Formats;
				public new function HRESULT(IFsrmReportJob *self, SAFEARRAY* formats) put_Formats;
				public new function HRESULT(IFsrmReportJob *self, BSTR* mailTo) get_MailTo;
				public new function HRESULT(IFsrmReportJob *self, BSTR mailTo) put_MailTo;
				public new function HRESULT(IFsrmReportJob *self, FsrmReportRunningStatus* runningStatus) get_RunningStatus;
				public new function HRESULT(IFsrmReportJob *self, double* lastRun) get_LastRun;
				public new function HRESULT(IFsrmReportJob *self, BSTR* lastError) get_LastError;
				public new function HRESULT(IFsrmReportJob *self, BSTR* path) get_LastGeneratedInDirectory;
				public new function HRESULT(IFsrmReportJob *self, IFsrmCollection** reports) EnumReports;
				public new function HRESULT(IFsrmReportJob *self, FsrmReportType reportType, IFsrmReport** report) CreateReport;
				public new function HRESULT(IFsrmReportJob *self, FsrmReportGenerationContext context) Run;
				public new function HRESULT(IFsrmReportJob *self, int32 waitSeconds, int16* completed) WaitForCompletion;
				public new function HRESULT(IFsrmReportJob *self) Cancel;
			}
		}
		[CRepr]
		public struct IFsrmReport : IDispatch
		{
			public const new Guid IID = .(0xd8cc81d9, 0x46b8, 0x4fa4, 0xbf, 0xa5, 0x4a, 0xa9, 0xde, 0xc9, 0xb6, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(FsrmReportType* reportType) mut
			{
				return VT.get_Type(&this, reportType);
			}
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_Description(BSTR* description) mut
			{
				return VT.get_Description(&this, description);
			}
			public HRESULT put_Description(BSTR description) mut
			{
				return VT.put_Description(&this, description);
			}
			public HRESULT get_LastGeneratedFileNamePrefix(BSTR* prefix) mut
			{
				return VT.get_LastGeneratedFileNamePrefix(&this, prefix);
			}
			public HRESULT GetFilter(FsrmReportFilter filter, VARIANT* filterValue) mut
			{
				return VT.GetFilter(&this, filter, filterValue);
			}
			public HRESULT SetFilter(FsrmReportFilter filter, VARIANT filterValue) mut
			{
				return VT.SetFilter(&this, filter, filterValue);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmReport *self, FsrmReportType* reportType) get_Type;
				public new function HRESULT(IFsrmReport *self, BSTR* name) get_Name;
				public new function HRESULT(IFsrmReport *self, BSTR name) put_Name;
				public new function HRESULT(IFsrmReport *self, BSTR* description) get_Description;
				public new function HRESULT(IFsrmReport *self, BSTR description) put_Description;
				public new function HRESULT(IFsrmReport *self, BSTR* prefix) get_LastGeneratedFileNamePrefix;
				public new function HRESULT(IFsrmReport *self, FsrmReportFilter filter, VARIANT* filterValue) GetFilter;
				public new function HRESULT(IFsrmReport *self, FsrmReportFilter filter, VARIANT filterValue) SetFilter;
				public new function HRESULT(IFsrmReport *self) Delete;
			}
		}
		[CRepr]
		public struct IFsrmReportScheduler : IDispatch
		{
			public const new Guid IID = .(0x6879caf9, 0x6617, 0x4484, 0x87, 0x19, 0x71, 0xc3, 0xd8, 0x64, 0x5f, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT VerifyNamespaces(VARIANT* namespacesSafeArray) mut
			{
				return VT.VerifyNamespaces(&this, namespacesSafeArray);
			}
			public HRESULT CreateScheduleTask(BSTR taskName, VARIANT* namespacesSafeArray, BSTR serializedTask) mut
			{
				return VT.CreateScheduleTask(&this, taskName, namespacesSafeArray, serializedTask);
			}
			public HRESULT ModifyScheduleTask(BSTR taskName, VARIANT* namespacesSafeArray, BSTR serializedTask) mut
			{
				return VT.ModifyScheduleTask(&this, taskName, namespacesSafeArray, serializedTask);
			}
			public HRESULT DeleteScheduleTask(BSTR taskName) mut
			{
				return VT.DeleteScheduleTask(&this, taskName);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmReportScheduler *self, VARIANT* namespacesSafeArray) VerifyNamespaces;
				public new function HRESULT(IFsrmReportScheduler *self, BSTR taskName, VARIANT* namespacesSafeArray, BSTR serializedTask) CreateScheduleTask;
				public new function HRESULT(IFsrmReportScheduler *self, BSTR taskName, VARIANT* namespacesSafeArray, BSTR serializedTask) ModifyScheduleTask;
				public new function HRESULT(IFsrmReportScheduler *self, BSTR taskName) DeleteScheduleTask;
			}
		}
		[CRepr]
		public struct IFsrmFileManagementJobManager : IDispatch
		{
			public const new Guid IID = .(0xee321ecb, 0xd95e, 0x48e9, 0x90, 0x7c, 0xc7, 0x68, 0x5a, 0x01, 0x32, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ActionVariables(SAFEARRAY** variables) mut
			{
				return VT.get_ActionVariables(&this, variables);
			}
			public HRESULT get_ActionVariableDescriptions(SAFEARRAY** descriptions) mut
			{
				return VT.get_ActionVariableDescriptions(&this, descriptions);
			}
			public HRESULT EnumFileManagementJobs(FsrmEnumOptions options, IFsrmCollection** fileManagementJobs) mut
			{
				return VT.EnumFileManagementJobs(&this, options, fileManagementJobs);
			}
			public HRESULT CreateFileManagementJob(IFsrmFileManagementJob** fileManagementJob) mut
			{
				return VT.CreateFileManagementJob(&this, fileManagementJob);
			}
			public HRESULT GetFileManagementJob(BSTR name, IFsrmFileManagementJob** fileManagementJob) mut
			{
				return VT.GetFileManagementJob(&this, name, fileManagementJob);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmFileManagementJobManager *self, SAFEARRAY** variables) get_ActionVariables;
				public new function HRESULT(IFsrmFileManagementJobManager *self, SAFEARRAY** descriptions) get_ActionVariableDescriptions;
				public new function HRESULT(IFsrmFileManagementJobManager *self, FsrmEnumOptions options, IFsrmCollection** fileManagementJobs) EnumFileManagementJobs;
				public new function HRESULT(IFsrmFileManagementJobManager *self, IFsrmFileManagementJob** fileManagementJob) CreateFileManagementJob;
				public new function HRESULT(IFsrmFileManagementJobManager *self, BSTR name, IFsrmFileManagementJob** fileManagementJob) GetFileManagementJob;
			}
		}
		[CRepr]
		public struct IFsrmFileManagementJob : IFsrmObject
		{
			public const new Guid IID = .(0x0770687e, 0x9f36, 0x4d6f, 0x87, 0x78, 0x59, 0x9d, 0x18, 0x84, 0x61, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_NamespaceRoots(SAFEARRAY** namespaceRoots) mut
			{
				return VT.get_NamespaceRoots(&this, namespaceRoots);
			}
			public HRESULT put_NamespaceRoots(SAFEARRAY* namespaceRoots) mut
			{
				return VT.put_NamespaceRoots(&this, namespaceRoots);
			}
			public HRESULT get_Enabled(int16* enabled) mut
			{
				return VT.get_Enabled(&this, enabled);
			}
			public HRESULT put_Enabled(int16 enabled) mut
			{
				return VT.put_Enabled(&this, enabled);
			}
			public HRESULT get_OperationType(FsrmFileManagementType* operationType) mut
			{
				return VT.get_OperationType(&this, operationType);
			}
			public HRESULT put_OperationType(FsrmFileManagementType operationType) mut
			{
				return VT.put_OperationType(&this, operationType);
			}
			public HRESULT get_ExpirationDirectory(BSTR* expirationDirectory) mut
			{
				return VT.get_ExpirationDirectory(&this, expirationDirectory);
			}
			public HRESULT put_ExpirationDirectory(BSTR expirationDirectory) mut
			{
				return VT.put_ExpirationDirectory(&this, expirationDirectory);
			}
			public HRESULT get_CustomAction(IFsrmActionCommand** action) mut
			{
				return VT.get_CustomAction(&this, action);
			}
			public HRESULT get_Notifications(SAFEARRAY** notifications) mut
			{
				return VT.get_Notifications(&this, notifications);
			}
			public HRESULT get_Logging(int32* loggingFlags) mut
			{
				return VT.get_Logging(&this, loggingFlags);
			}
			public HRESULT put_Logging(int32 loggingFlags) mut
			{
				return VT.put_Logging(&this, loggingFlags);
			}
			public HRESULT get_ReportEnabled(int16* reportEnabled) mut
			{
				return VT.get_ReportEnabled(&this, reportEnabled);
			}
			public HRESULT put_ReportEnabled(int16 reportEnabled) mut
			{
				return VT.put_ReportEnabled(&this, reportEnabled);
			}
			public HRESULT get_Formats(SAFEARRAY** formats) mut
			{
				return VT.get_Formats(&this, formats);
			}
			public HRESULT put_Formats(SAFEARRAY* formats) mut
			{
				return VT.put_Formats(&this, formats);
			}
			public HRESULT get_MailTo(BSTR* mailTo) mut
			{
				return VT.get_MailTo(&this, mailTo);
			}
			public HRESULT put_MailTo(BSTR mailTo) mut
			{
				return VT.put_MailTo(&this, mailTo);
			}
			public HRESULT get_DaysSinceFileCreated(int32* daysSinceCreation) mut
			{
				return VT.get_DaysSinceFileCreated(&this, daysSinceCreation);
			}
			public HRESULT put_DaysSinceFileCreated(int32 daysSinceCreation) mut
			{
				return VT.put_DaysSinceFileCreated(&this, daysSinceCreation);
			}
			public HRESULT get_DaysSinceFileLastAccessed(int32* daysSinceAccess) mut
			{
				return VT.get_DaysSinceFileLastAccessed(&this, daysSinceAccess);
			}
			public HRESULT put_DaysSinceFileLastAccessed(int32 daysSinceAccess) mut
			{
				return VT.put_DaysSinceFileLastAccessed(&this, daysSinceAccess);
			}
			public HRESULT get_DaysSinceFileLastModified(int32* daysSinceModify) mut
			{
				return VT.get_DaysSinceFileLastModified(&this, daysSinceModify);
			}
			public HRESULT put_DaysSinceFileLastModified(int32 daysSinceModify) mut
			{
				return VT.put_DaysSinceFileLastModified(&this, daysSinceModify);
			}
			public HRESULT get_PropertyConditions(IFsrmCollection** propertyConditions) mut
			{
				return VT.get_PropertyConditions(&this, propertyConditions);
			}
			public HRESULT get_FromDate(double* fromDate) mut
			{
				return VT.get_FromDate(&this, fromDate);
			}
			public HRESULT put_FromDate(double fromDate) mut
			{
				return VT.put_FromDate(&this, fromDate);
			}
			public HRESULT get_Task(BSTR* taskName) mut
			{
				return VT.get_Task(&this, taskName);
			}
			public HRESULT put_Task(BSTR taskName) mut
			{
				return VT.put_Task(&this, taskName);
			}
			public HRESULT get_Parameters(SAFEARRAY** parameters) mut
			{
				return VT.get_Parameters(&this, parameters);
			}
			public HRESULT put_Parameters(SAFEARRAY* parameters) mut
			{
				return VT.put_Parameters(&this, parameters);
			}
			public HRESULT get_RunningStatus(FsrmReportRunningStatus* runningStatus) mut
			{
				return VT.get_RunningStatus(&this, runningStatus);
			}
			public HRESULT get_LastError(BSTR* lastError) mut
			{
				return VT.get_LastError(&this, lastError);
			}
			public HRESULT get_LastReportPathWithoutExtension(BSTR* path) mut
			{
				return VT.get_LastReportPathWithoutExtension(&this, path);
			}
			public HRESULT get_LastRun(double* lastRun) mut
			{
				return VT.get_LastRun(&this, lastRun);
			}
			public HRESULT get_FileNamePattern(BSTR* fileNamePattern) mut
			{
				return VT.get_FileNamePattern(&this, fileNamePattern);
			}
			public HRESULT put_FileNamePattern(BSTR fileNamePattern) mut
			{
				return VT.put_FileNamePattern(&this, fileNamePattern);
			}
			public HRESULT Run(FsrmReportGenerationContext context) mut
			{
				return VT.Run(&this, context);
			}
			public HRESULT WaitForCompletion(int32 waitSeconds, int16* completed) mut
			{
				return VT.WaitForCompletion(&this, waitSeconds, completed);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			public HRESULT AddNotification(int32 days) mut
			{
				return VT.AddNotification(&this, days);
			}
			public HRESULT DeleteNotification(int32 days) mut
			{
				return VT.DeleteNotification(&this, days);
			}
			public HRESULT ModifyNotification(int32 days, int32 newDays) mut
			{
				return VT.ModifyNotification(&this, days, newDays);
			}
			public HRESULT CreateNotificationAction(int32 days, FsrmActionType actionType, IFsrmAction** action) mut
			{
				return VT.CreateNotificationAction(&this, days, actionType, action);
			}
			public HRESULT EnumNotificationActions(int32 days, IFsrmCollection** actions) mut
			{
				return VT.EnumNotificationActions(&this, days, actions);
			}
			public HRESULT CreatePropertyCondition(BSTR name, IFsrmPropertyCondition** propertyCondition) mut
			{
				return VT.CreatePropertyCondition(&this, name, propertyCondition);
			}
			public HRESULT CreateCustomAction(IFsrmActionCommand** customAction) mut
			{
				return VT.CreateCustomAction(&this, customAction);
			}
			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function HRESULT(IFsrmFileManagementJob *self, BSTR* name) get_Name;
				public new function HRESULT(IFsrmFileManagementJob *self, BSTR name) put_Name;
				public new function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY** namespaceRoots) get_NamespaceRoots;
				public new function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY* namespaceRoots) put_NamespaceRoots;
				public new function HRESULT(IFsrmFileManagementJob *self, int16* enabled) get_Enabled;
				public new function HRESULT(IFsrmFileManagementJob *self, int16 enabled) put_Enabled;
				public new function HRESULT(IFsrmFileManagementJob *self, FsrmFileManagementType* operationType) get_OperationType;
				public new function HRESULT(IFsrmFileManagementJob *self, FsrmFileManagementType operationType) put_OperationType;
				public new function HRESULT(IFsrmFileManagementJob *self, BSTR* expirationDirectory) get_ExpirationDirectory;
				public new function HRESULT(IFsrmFileManagementJob *self, BSTR expirationDirectory) put_ExpirationDirectory;
				public new function HRESULT(IFsrmFileManagementJob *self, IFsrmActionCommand** action) get_CustomAction;
				public new function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY** notifications) get_Notifications;
				public new function HRESULT(IFsrmFileManagementJob *self, int32* loggingFlags) get_Logging;
				public new function HRESULT(IFsrmFileManagementJob *self, int32 loggingFlags) put_Logging;
				public new function HRESULT(IFsrmFileManagementJob *self, int16* reportEnabled) get_ReportEnabled;
				public new function HRESULT(IFsrmFileManagementJob *self, int16 reportEnabled) put_ReportEnabled;
				public new function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY** formats) get_Formats;
				public new function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY* formats) put_Formats;
				public new function HRESULT(IFsrmFileManagementJob *self, BSTR* mailTo) get_MailTo;
				public new function HRESULT(IFsrmFileManagementJob *self, BSTR mailTo) put_MailTo;
				public new function HRESULT(IFsrmFileManagementJob *self, int32* daysSinceCreation) get_DaysSinceFileCreated;
				public new function HRESULT(IFsrmFileManagementJob *self, int32 daysSinceCreation) put_DaysSinceFileCreated;
				public new function HRESULT(IFsrmFileManagementJob *self, int32* daysSinceAccess) get_DaysSinceFileLastAccessed;
				public new function HRESULT(IFsrmFileManagementJob *self, int32 daysSinceAccess) put_DaysSinceFileLastAccessed;
				public new function HRESULT(IFsrmFileManagementJob *self, int32* daysSinceModify) get_DaysSinceFileLastModified;
				public new function HRESULT(IFsrmFileManagementJob *self, int32 daysSinceModify) put_DaysSinceFileLastModified;
				public new function HRESULT(IFsrmFileManagementJob *self, IFsrmCollection** propertyConditions) get_PropertyConditions;
				public new function HRESULT(IFsrmFileManagementJob *self, double* fromDate) get_FromDate;
				public new function HRESULT(IFsrmFileManagementJob *self, double fromDate) put_FromDate;
				public new function HRESULT(IFsrmFileManagementJob *self, BSTR* taskName) get_Task;
				public new function HRESULT(IFsrmFileManagementJob *self, BSTR taskName) put_Task;
				public new function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY** parameters) get_Parameters;
				public new function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY* parameters) put_Parameters;
				public new function HRESULT(IFsrmFileManagementJob *self, FsrmReportRunningStatus* runningStatus) get_RunningStatus;
				public new function HRESULT(IFsrmFileManagementJob *self, BSTR* lastError) get_LastError;
				public new function HRESULT(IFsrmFileManagementJob *self, BSTR* path) get_LastReportPathWithoutExtension;
				public new function HRESULT(IFsrmFileManagementJob *self, double* lastRun) get_LastRun;
				public new function HRESULT(IFsrmFileManagementJob *self, BSTR* fileNamePattern) get_FileNamePattern;
				public new function HRESULT(IFsrmFileManagementJob *self, BSTR fileNamePattern) put_FileNamePattern;
				public new function HRESULT(IFsrmFileManagementJob *self, FsrmReportGenerationContext context) Run;
				public new function HRESULT(IFsrmFileManagementJob *self, int32 waitSeconds, int16* completed) WaitForCompletion;
				public new function HRESULT(IFsrmFileManagementJob *self) Cancel;
				public new function HRESULT(IFsrmFileManagementJob *self, int32 days) AddNotification;
				public new function HRESULT(IFsrmFileManagementJob *self, int32 days) DeleteNotification;
				public new function HRESULT(IFsrmFileManagementJob *self, int32 days, int32 newDays) ModifyNotification;
				public new function HRESULT(IFsrmFileManagementJob *self, int32 days, FsrmActionType actionType, IFsrmAction** action) CreateNotificationAction;
				public new function HRESULT(IFsrmFileManagementJob *self, int32 days, IFsrmCollection** actions) EnumNotificationActions;
				public new function HRESULT(IFsrmFileManagementJob *self, BSTR name, IFsrmPropertyCondition** propertyCondition) CreatePropertyCondition;
				public new function HRESULT(IFsrmFileManagementJob *self, IFsrmActionCommand** customAction) CreateCustomAction;
			}
		}
		[CRepr]
		public struct IFsrmPropertyCondition : IDispatch
		{
			public const new Guid IID = .(0x326af66f, 0x2ac0, 0x4f68, 0xbf, 0x8c, 0x47, 0x59, 0xf0, 0x54, 0xfa, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_Type(FsrmPropertyConditionType* type) mut
			{
				return VT.get_Type(&this, type);
			}
			public HRESULT put_Type(FsrmPropertyConditionType type) mut
			{
				return VT.put_Type(&this, type);
			}
			public HRESULT get_Value(BSTR* value) mut
			{
				return VT.get_Value(&this, value);
			}
			public HRESULT put_Value(BSTR value) mut
			{
				return VT.put_Value(&this, value);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmPropertyCondition *self, BSTR* name) get_Name;
				public new function HRESULT(IFsrmPropertyCondition *self, BSTR name) put_Name;
				public new function HRESULT(IFsrmPropertyCondition *self, FsrmPropertyConditionType* type) get_Type;
				public new function HRESULT(IFsrmPropertyCondition *self, FsrmPropertyConditionType type) put_Type;
				public new function HRESULT(IFsrmPropertyCondition *self, BSTR* value) get_Value;
				public new function HRESULT(IFsrmPropertyCondition *self, BSTR value) put_Value;
				public new function HRESULT(IFsrmPropertyCondition *self) Delete;
			}
		}
		[CRepr]
		public struct IFsrmFileCondition : IDispatch
		{
			public const new Guid IID = .(0x70684ffc, 0x691a, 0x4a1a, 0xb9, 0x22, 0x97, 0x75, 0x2e, 0x13, 0x8c, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(FsrmFileConditionType* pVal) mut
			{
				return VT.get_Type(&this, pVal);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmFileCondition *self, FsrmFileConditionType* pVal) get_Type;
				public new function HRESULT(IFsrmFileCondition *self) Delete;
			}
		}
		[CRepr]
		public struct IFsrmFileConditionProperty : IFsrmFileCondition
		{
			public const new Guid IID = .(0x81926775, 0xb981, 0x4479, 0x98, 0x8f, 0xda, 0x17, 0x1d, 0x62, 0x73, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PropertyName(BSTR* pVal) mut
			{
				return VT.get_PropertyName(&this, pVal);
			}
			public HRESULT put_PropertyName(BSTR newVal) mut
			{
				return VT.put_PropertyName(&this, newVal);
			}
			public HRESULT get_PropertyId(FsrmFileSystemPropertyId* pVal) mut
			{
				return VT.get_PropertyId(&this, pVal);
			}
			public HRESULT put_PropertyId(FsrmFileSystemPropertyId newVal) mut
			{
				return VT.put_PropertyId(&this, newVal);
			}
			public HRESULT get_Operator(FsrmPropertyConditionType* pVal) mut
			{
				return VT.get_Operator(&this, pVal);
			}
			public HRESULT put_Operator(FsrmPropertyConditionType newVal) mut
			{
				return VT.put_Operator(&this, newVal);
			}
			public HRESULT get_ValueType(FsrmPropertyValueType* pVal) mut
			{
				return VT.get_ValueType(&this, pVal);
			}
			public HRESULT put_ValueType(FsrmPropertyValueType newVal) mut
			{
				return VT.put_ValueType(&this, newVal);
			}
			public HRESULT get_Value(VARIANT* pVal) mut
			{
				return VT.get_Value(&this, pVal);
			}
			public HRESULT put_Value(VARIANT newVal) mut
			{
				return VT.put_Value(&this, newVal);
			}
			[CRepr]
			public struct VTable : IFsrmFileCondition.VTable
			{
				public new function HRESULT(IFsrmFileConditionProperty *self, BSTR* pVal) get_PropertyName;
				public new function HRESULT(IFsrmFileConditionProperty *self, BSTR newVal) put_PropertyName;
				public new function HRESULT(IFsrmFileConditionProperty *self, FsrmFileSystemPropertyId* pVal) get_PropertyId;
				public new function HRESULT(IFsrmFileConditionProperty *self, FsrmFileSystemPropertyId newVal) put_PropertyId;
				public new function HRESULT(IFsrmFileConditionProperty *self, FsrmPropertyConditionType* pVal) get_Operator;
				public new function HRESULT(IFsrmFileConditionProperty *self, FsrmPropertyConditionType newVal) put_Operator;
				public new function HRESULT(IFsrmFileConditionProperty *self, FsrmPropertyValueType* pVal) get_ValueType;
				public new function HRESULT(IFsrmFileConditionProperty *self, FsrmPropertyValueType newVal) put_ValueType;
				public new function HRESULT(IFsrmFileConditionProperty *self, VARIANT* pVal) get_Value;
				public new function HRESULT(IFsrmFileConditionProperty *self, VARIANT newVal) put_Value;
			}
		}
		[CRepr]
		public struct IFsrmPropertyDefinition : IFsrmObject
		{
			public const new Guid IID = .(0xede0150f, 0xe9a3, 0x419c, 0x87, 0x7c, 0x01, 0xfe, 0x5d, 0x24, 0xc5, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_Type(FsrmPropertyDefinitionType* type) mut
			{
				return VT.get_Type(&this, type);
			}
			public HRESULT put_Type(FsrmPropertyDefinitionType type) mut
			{
				return VT.put_Type(&this, type);
			}
			public HRESULT get_PossibleValues(SAFEARRAY** possibleValues) mut
			{
				return VT.get_PossibleValues(&this, possibleValues);
			}
			public HRESULT put_PossibleValues(SAFEARRAY* possibleValues) mut
			{
				return VT.put_PossibleValues(&this, possibleValues);
			}
			public HRESULT get_ValueDescriptions(SAFEARRAY** valueDescriptions) mut
			{
				return VT.get_ValueDescriptions(&this, valueDescriptions);
			}
			public HRESULT put_ValueDescriptions(SAFEARRAY* valueDescriptions) mut
			{
				return VT.put_ValueDescriptions(&this, valueDescriptions);
			}
			public HRESULT get_Parameters(SAFEARRAY** parameters) mut
			{
				return VT.get_Parameters(&this, parameters);
			}
			public HRESULT put_Parameters(SAFEARRAY* parameters) mut
			{
				return VT.put_Parameters(&this, parameters);
			}
			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function HRESULT(IFsrmPropertyDefinition *self, BSTR* name) get_Name;
				public new function HRESULT(IFsrmPropertyDefinition *self, BSTR name) put_Name;
				public new function HRESULT(IFsrmPropertyDefinition *self, FsrmPropertyDefinitionType* type) get_Type;
				public new function HRESULT(IFsrmPropertyDefinition *self, FsrmPropertyDefinitionType type) put_Type;
				public new function HRESULT(IFsrmPropertyDefinition *self, SAFEARRAY** possibleValues) get_PossibleValues;
				public new function HRESULT(IFsrmPropertyDefinition *self, SAFEARRAY* possibleValues) put_PossibleValues;
				public new function HRESULT(IFsrmPropertyDefinition *self, SAFEARRAY** valueDescriptions) get_ValueDescriptions;
				public new function HRESULT(IFsrmPropertyDefinition *self, SAFEARRAY* valueDescriptions) put_ValueDescriptions;
				public new function HRESULT(IFsrmPropertyDefinition *self, SAFEARRAY** parameters) get_Parameters;
				public new function HRESULT(IFsrmPropertyDefinition *self, SAFEARRAY* parameters) put_Parameters;
			}
		}
		[CRepr]
		public struct IFsrmPropertyDefinition2 : IFsrmPropertyDefinition
		{
			public const new Guid IID = .(0x47782152, 0xd16c, 0x4229, 0xb4, 0xe1, 0x0d, 0xdf, 0xe3, 0x08, 0xb9, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PropertyDefinitionFlags(int32* propertyDefinitionFlags) mut
			{
				return VT.get_PropertyDefinitionFlags(&this, propertyDefinitionFlags);
			}
			public HRESULT get_DisplayName(BSTR* name) mut
			{
				return VT.get_DisplayName(&this, name);
			}
			public HRESULT put_DisplayName(BSTR name) mut
			{
				return VT.put_DisplayName(&this, name);
			}
			public HRESULT get_AppliesTo(int32* appliesTo) mut
			{
				return VT.get_AppliesTo(&this, appliesTo);
			}
			public HRESULT get_ValueDefinitions(IFsrmCollection** valueDefinitions) mut
			{
				return VT.get_ValueDefinitions(&this, valueDefinitions);
			}
			[CRepr]
			public struct VTable : IFsrmPropertyDefinition.VTable
			{
				public new function HRESULT(IFsrmPropertyDefinition2 *self, int32* propertyDefinitionFlags) get_PropertyDefinitionFlags;
				public new function HRESULT(IFsrmPropertyDefinition2 *self, BSTR* name) get_DisplayName;
				public new function HRESULT(IFsrmPropertyDefinition2 *self, BSTR name) put_DisplayName;
				public new function HRESULT(IFsrmPropertyDefinition2 *self, int32* appliesTo) get_AppliesTo;
				public new function HRESULT(IFsrmPropertyDefinition2 *self, IFsrmCollection** valueDefinitions) get_ValueDefinitions;
			}
		}
		[CRepr]
		public struct IFsrmPropertyDefinitionValue : IDispatch
		{
			public const new Guid IID = .(0xe946d148, 0xbd67, 0x4178, 0x8e, 0x22, 0x1c, 0x44, 0x92, 0x5e, 0xd7, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT get_DisplayName(BSTR* displayName) mut
			{
				return VT.get_DisplayName(&this, displayName);
			}
			public HRESULT get_Description(BSTR* description) mut
			{
				return VT.get_Description(&this, description);
			}
			public HRESULT get_UniqueID(BSTR* uniqueID) mut
			{
				return VT.get_UniqueID(&this, uniqueID);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmPropertyDefinitionValue *self, BSTR* name) get_Name;
				public new function HRESULT(IFsrmPropertyDefinitionValue *self, BSTR* displayName) get_DisplayName;
				public new function HRESULT(IFsrmPropertyDefinitionValue *self, BSTR* description) get_Description;
				public new function HRESULT(IFsrmPropertyDefinitionValue *self, BSTR* uniqueID) get_UniqueID;
			}
		}
		[CRepr]
		public struct IFsrmProperty : IDispatch
		{
			public const new Guid IID = .(0x4a73fee4, 0x4102, 0x4fcc, 0x9f, 0xfb, 0x38, 0x61, 0x4f, 0x9e, 0xe7, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT get_Value(BSTR* value) mut
			{
				return VT.get_Value(&this, value);
			}
			public HRESULT get_Sources(SAFEARRAY** sources) mut
			{
				return VT.get_Sources(&this, sources);
			}
			public HRESULT get_PropertyFlags(int32* flags) mut
			{
				return VT.get_PropertyFlags(&this, flags);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmProperty *self, BSTR* name) get_Name;
				public new function HRESULT(IFsrmProperty *self, BSTR* value) get_Value;
				public new function HRESULT(IFsrmProperty *self, SAFEARRAY** sources) get_Sources;
				public new function HRESULT(IFsrmProperty *self, int32* flags) get_PropertyFlags;
			}
		}
		[CRepr]
		public struct IFsrmRule : IFsrmObject
		{
			public const new Guid IID = .(0xcb0df960, 0x16f5, 0x4495, 0x90, 0x79, 0x3f, 0x93, 0x60, 0xd8, 0x31, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_RuleType(FsrmRuleType* ruleType) mut
			{
				return VT.get_RuleType(&this, ruleType);
			}
			public HRESULT get_ModuleDefinitionName(BSTR* moduleDefinitionName) mut
			{
				return VT.get_ModuleDefinitionName(&this, moduleDefinitionName);
			}
			public HRESULT put_ModuleDefinitionName(BSTR moduleDefinitionName) mut
			{
				return VT.put_ModuleDefinitionName(&this, moduleDefinitionName);
			}
			public HRESULT get_NamespaceRoots(SAFEARRAY** namespaceRoots) mut
			{
				return VT.get_NamespaceRoots(&this, namespaceRoots);
			}
			public HRESULT put_NamespaceRoots(SAFEARRAY* namespaceRoots) mut
			{
				return VT.put_NamespaceRoots(&this, namespaceRoots);
			}
			public HRESULT get_RuleFlags(int32* ruleFlags) mut
			{
				return VT.get_RuleFlags(&this, ruleFlags);
			}
			public HRESULT put_RuleFlags(int32 ruleFlags) mut
			{
				return VT.put_RuleFlags(&this, ruleFlags);
			}
			public HRESULT get_Parameters(SAFEARRAY** parameters) mut
			{
				return VT.get_Parameters(&this, parameters);
			}
			public HRESULT put_Parameters(SAFEARRAY* parameters) mut
			{
				return VT.put_Parameters(&this, parameters);
			}
			public HRESULT get_LastModified(VARIANT* lastModified) mut
			{
				return VT.get_LastModified(&this, lastModified);
			}
			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function HRESULT(IFsrmRule *self, BSTR* name) get_Name;
				public new function HRESULT(IFsrmRule *self, BSTR name) put_Name;
				public new function HRESULT(IFsrmRule *self, FsrmRuleType* ruleType) get_RuleType;
				public new function HRESULT(IFsrmRule *self, BSTR* moduleDefinitionName) get_ModuleDefinitionName;
				public new function HRESULT(IFsrmRule *self, BSTR moduleDefinitionName) put_ModuleDefinitionName;
				public new function HRESULT(IFsrmRule *self, SAFEARRAY** namespaceRoots) get_NamespaceRoots;
				public new function HRESULT(IFsrmRule *self, SAFEARRAY* namespaceRoots) put_NamespaceRoots;
				public new function HRESULT(IFsrmRule *self, int32* ruleFlags) get_RuleFlags;
				public new function HRESULT(IFsrmRule *self, int32 ruleFlags) put_RuleFlags;
				public new function HRESULT(IFsrmRule *self, SAFEARRAY** parameters) get_Parameters;
				public new function HRESULT(IFsrmRule *self, SAFEARRAY* parameters) put_Parameters;
				public new function HRESULT(IFsrmRule *self, VARIANT* lastModified) get_LastModified;
			}
		}
		[CRepr]
		public struct IFsrmClassificationRule : IFsrmRule
		{
			public const new Guid IID = .(0xafc052c2, 0x5315, 0x45ab, 0x84, 0x1b, 0xc6, 0xdb, 0x0e, 0x12, 0x01, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ExecutionOption(FsrmExecutionOption* executionOption) mut
			{
				return VT.get_ExecutionOption(&this, executionOption);
			}
			public HRESULT put_ExecutionOption(FsrmExecutionOption executionOption) mut
			{
				return VT.put_ExecutionOption(&this, executionOption);
			}
			public HRESULT get_PropertyAffected(BSTR* property) mut
			{
				return VT.get_PropertyAffected(&this, property);
			}
			public HRESULT put_PropertyAffected(BSTR property) mut
			{
				return VT.put_PropertyAffected(&this, property);
			}
			public HRESULT get_Value(BSTR* value) mut
			{
				return VT.get_Value(&this, value);
			}
			public HRESULT put_Value(BSTR value) mut
			{
				return VT.put_Value(&this, value);
			}
			[CRepr]
			public struct VTable : IFsrmRule.VTable
			{
				public new function HRESULT(IFsrmClassificationRule *self, FsrmExecutionOption* executionOption) get_ExecutionOption;
				public new function HRESULT(IFsrmClassificationRule *self, FsrmExecutionOption executionOption) put_ExecutionOption;
				public new function HRESULT(IFsrmClassificationRule *self, BSTR* property) get_PropertyAffected;
				public new function HRESULT(IFsrmClassificationRule *self, BSTR property) put_PropertyAffected;
				public new function HRESULT(IFsrmClassificationRule *self, BSTR* value) get_Value;
				public new function HRESULT(IFsrmClassificationRule *self, BSTR value) put_Value;
			}
		}
		[CRepr]
		public struct IFsrmPipelineModuleDefinition : IFsrmObject
		{
			public const new Guid IID = .(0x515c1277, 0x2c81, 0x440e, 0x8f, 0xcf, 0x36, 0x79, 0x21, 0xed, 0x4f, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ModuleClsid(BSTR* moduleClsid) mut
			{
				return VT.get_ModuleClsid(&this, moduleClsid);
			}
			public HRESULT put_ModuleClsid(BSTR moduleClsid) mut
			{
				return VT.put_ModuleClsid(&this, moduleClsid);
			}
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_Company(BSTR* company) mut
			{
				return VT.get_Company(&this, company);
			}
			public HRESULT put_Company(BSTR company) mut
			{
				return VT.put_Company(&this, company);
			}
			public HRESULT get_Version(BSTR* version) mut
			{
				return VT.get_Version(&this, version);
			}
			public HRESULT put_Version(BSTR version) mut
			{
				return VT.put_Version(&this, version);
			}
			public HRESULT get_ModuleType(FsrmPipelineModuleType* moduleType) mut
			{
				return VT.get_ModuleType(&this, moduleType);
			}
			public HRESULT get_Enabled(int16* enabled) mut
			{
				return VT.get_Enabled(&this, enabled);
			}
			public HRESULT put_Enabled(int16 enabled) mut
			{
				return VT.put_Enabled(&this, enabled);
			}
			public HRESULT get_NeedsFileContent(int16* needsFileContent) mut
			{
				return VT.get_NeedsFileContent(&this, needsFileContent);
			}
			public HRESULT put_NeedsFileContent(int16 needsFileContent) mut
			{
				return VT.put_NeedsFileContent(&this, needsFileContent);
			}
			public HRESULT get_Account(FsrmAccountType* retrievalAccount) mut
			{
				return VT.get_Account(&this, retrievalAccount);
			}
			public HRESULT put_Account(FsrmAccountType retrievalAccount) mut
			{
				return VT.put_Account(&this, retrievalAccount);
			}
			public HRESULT get_SupportedExtensions(SAFEARRAY** supportedExtensions) mut
			{
				return VT.get_SupportedExtensions(&this, supportedExtensions);
			}
			public HRESULT put_SupportedExtensions(SAFEARRAY* supportedExtensions) mut
			{
				return VT.put_SupportedExtensions(&this, supportedExtensions);
			}
			public HRESULT get_Parameters(SAFEARRAY** parameters) mut
			{
				return VT.get_Parameters(&this, parameters);
			}
			public HRESULT put_Parameters(SAFEARRAY* parameters) mut
			{
				return VT.put_Parameters(&this, parameters);
			}
			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR* moduleClsid) get_ModuleClsid;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR moduleClsid) put_ModuleClsid;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR* name) get_Name;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR name) put_Name;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR* company) get_Company;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR company) put_Company;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR* version) get_Version;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR version) put_Version;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, FsrmPipelineModuleType* moduleType) get_ModuleType;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, int16* enabled) get_Enabled;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, int16 enabled) put_Enabled;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, int16* needsFileContent) get_NeedsFileContent;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, int16 needsFileContent) put_NeedsFileContent;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, FsrmAccountType* retrievalAccount) get_Account;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, FsrmAccountType retrievalAccount) put_Account;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, SAFEARRAY** supportedExtensions) get_SupportedExtensions;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, SAFEARRAY* supportedExtensions) put_SupportedExtensions;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, SAFEARRAY** parameters) get_Parameters;
				public new function HRESULT(IFsrmPipelineModuleDefinition *self, SAFEARRAY* parameters) put_Parameters;
			}
		}
		[CRepr]
		public struct IFsrmClassifierModuleDefinition : IFsrmPipelineModuleDefinition
		{
			public const new Guid IID = .(0xbb36ea26, 0x6318, 0x4b8c, 0x85, 0x92, 0xf7, 0x2d, 0xd6, 0x02, 0xe7, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PropertiesAffected(SAFEARRAY** propertiesAffected) mut
			{
				return VT.get_PropertiesAffected(&this, propertiesAffected);
			}
			public HRESULT put_PropertiesAffected(SAFEARRAY* propertiesAffected) mut
			{
				return VT.put_PropertiesAffected(&this, propertiesAffected);
			}
			public HRESULT get_PropertiesUsed(SAFEARRAY** propertiesUsed) mut
			{
				return VT.get_PropertiesUsed(&this, propertiesUsed);
			}
			public HRESULT put_PropertiesUsed(SAFEARRAY* propertiesUsed) mut
			{
				return VT.put_PropertiesUsed(&this, propertiesUsed);
			}
			public HRESULT get_NeedsExplicitValue(int16* needsExplicitValue) mut
			{
				return VT.get_NeedsExplicitValue(&this, needsExplicitValue);
			}
			public HRESULT put_NeedsExplicitValue(int16 needsExplicitValue) mut
			{
				return VT.put_NeedsExplicitValue(&this, needsExplicitValue);
			}
			[CRepr]
			public struct VTable : IFsrmPipelineModuleDefinition.VTable
			{
				public new function HRESULT(IFsrmClassifierModuleDefinition *self, SAFEARRAY** propertiesAffected) get_PropertiesAffected;
				public new function HRESULT(IFsrmClassifierModuleDefinition *self, SAFEARRAY* propertiesAffected) put_PropertiesAffected;
				public new function HRESULT(IFsrmClassifierModuleDefinition *self, SAFEARRAY** propertiesUsed) get_PropertiesUsed;
				public new function HRESULT(IFsrmClassifierModuleDefinition *self, SAFEARRAY* propertiesUsed) put_PropertiesUsed;
				public new function HRESULT(IFsrmClassifierModuleDefinition *self, int16* needsExplicitValue) get_NeedsExplicitValue;
				public new function HRESULT(IFsrmClassifierModuleDefinition *self, int16 needsExplicitValue) put_NeedsExplicitValue;
			}
		}
		[CRepr]
		public struct IFsrmStorageModuleDefinition : IFsrmPipelineModuleDefinition
		{
			public const new Guid IID = .(0x15a81350, 0x497d, 0x4aba, 0x80, 0xe9, 0xd4, 0xdb, 0xcc, 0x55, 0x21, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Capabilities(FsrmStorageModuleCaps* capabilities) mut
			{
				return VT.get_Capabilities(&this, capabilities);
			}
			public HRESULT put_Capabilities(FsrmStorageModuleCaps capabilities) mut
			{
				return VT.put_Capabilities(&this, capabilities);
			}
			public HRESULT get_StorageType(FsrmStorageModuleType* storageType) mut
			{
				return VT.get_StorageType(&this, storageType);
			}
			public HRESULT put_StorageType(FsrmStorageModuleType storageType) mut
			{
				return VT.put_StorageType(&this, storageType);
			}
			public HRESULT get_UpdatesFileContent(int16* updatesFileContent) mut
			{
				return VT.get_UpdatesFileContent(&this, updatesFileContent);
			}
			public HRESULT put_UpdatesFileContent(int16 updatesFileContent) mut
			{
				return VT.put_UpdatesFileContent(&this, updatesFileContent);
			}
			[CRepr]
			public struct VTable : IFsrmPipelineModuleDefinition.VTable
			{
				public new function HRESULT(IFsrmStorageModuleDefinition *self, FsrmStorageModuleCaps* capabilities) get_Capabilities;
				public new function HRESULT(IFsrmStorageModuleDefinition *self, FsrmStorageModuleCaps capabilities) put_Capabilities;
				public new function HRESULT(IFsrmStorageModuleDefinition *self, FsrmStorageModuleType* storageType) get_StorageType;
				public new function HRESULT(IFsrmStorageModuleDefinition *self, FsrmStorageModuleType storageType) put_StorageType;
				public new function HRESULT(IFsrmStorageModuleDefinition *self, int16* updatesFileContent) get_UpdatesFileContent;
				public new function HRESULT(IFsrmStorageModuleDefinition *self, int16 updatesFileContent) put_UpdatesFileContent;
			}
		}
		[CRepr]
		public struct IFsrmClassificationManager : IDispatch
		{
			public const new Guid IID = .(0xd2dc89da, 0xee91, 0x48a0, 0x85, 0xd8, 0xcc, 0x72, 0xa5, 0x6f, 0x7d, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ClassificationReportFormats(SAFEARRAY** formats) mut
			{
				return VT.get_ClassificationReportFormats(&this, formats);
			}
			public HRESULT put_ClassificationReportFormats(SAFEARRAY* formats) mut
			{
				return VT.put_ClassificationReportFormats(&this, formats);
			}
			public HRESULT get_Logging(int32* logging) mut
			{
				return VT.get_Logging(&this, logging);
			}
			public HRESULT put_Logging(int32 logging) mut
			{
				return VT.put_Logging(&this, logging);
			}
			public HRESULT get_ClassificationReportMailTo(BSTR* mailTo) mut
			{
				return VT.get_ClassificationReportMailTo(&this, mailTo);
			}
			public HRESULT put_ClassificationReportMailTo(BSTR mailTo) mut
			{
				return VT.put_ClassificationReportMailTo(&this, mailTo);
			}
			public HRESULT get_ClassificationReportEnabled(int16* reportEnabled) mut
			{
				return VT.get_ClassificationReportEnabled(&this, reportEnabled);
			}
			public HRESULT put_ClassificationReportEnabled(int16 reportEnabled) mut
			{
				return VT.put_ClassificationReportEnabled(&this, reportEnabled);
			}
			public HRESULT get_ClassificationLastReportPathWithoutExtension(BSTR* lastReportPath) mut
			{
				return VT.get_ClassificationLastReportPathWithoutExtension(&this, lastReportPath);
			}
			public HRESULT get_ClassificationLastError(BSTR* lastError) mut
			{
				return VT.get_ClassificationLastError(&this, lastError);
			}
			public HRESULT get_ClassificationRunningStatus(FsrmReportRunningStatus* runningStatus) mut
			{
				return VT.get_ClassificationRunningStatus(&this, runningStatus);
			}
			public HRESULT EnumPropertyDefinitions(FsrmEnumOptions options, IFsrmCollection** propertyDefinitions) mut
			{
				return VT.EnumPropertyDefinitions(&this, options, propertyDefinitions);
			}
			public HRESULT CreatePropertyDefinition(IFsrmPropertyDefinition** propertyDefinition) mut
			{
				return VT.CreatePropertyDefinition(&this, propertyDefinition);
			}
			public HRESULT GetPropertyDefinition(BSTR propertyName, IFsrmPropertyDefinition** propertyDefinition) mut
			{
				return VT.GetPropertyDefinition(&this, propertyName, propertyDefinition);
			}
			public HRESULT EnumRules(FsrmRuleType ruleType, FsrmEnumOptions options, IFsrmCollection** Rules) mut
			{
				return VT.EnumRules(&this, ruleType, options, Rules);
			}
			public HRESULT CreateRule(FsrmRuleType ruleType, IFsrmRule** Rule) mut
			{
				return VT.CreateRule(&this, ruleType, Rule);
			}
			public HRESULT GetRule(BSTR ruleName, FsrmRuleType ruleType, IFsrmRule** Rule) mut
			{
				return VT.GetRule(&this, ruleName, ruleType, Rule);
			}
			public HRESULT EnumModuleDefinitions(FsrmPipelineModuleType moduleType, FsrmEnumOptions options, IFsrmCollection** moduleDefinitions) mut
			{
				return VT.EnumModuleDefinitions(&this, moduleType, options, moduleDefinitions);
			}
			public HRESULT CreateModuleDefinition(FsrmPipelineModuleType moduleType, IFsrmPipelineModuleDefinition** moduleDefinition) mut
			{
				return VT.CreateModuleDefinition(&this, moduleType, moduleDefinition);
			}
			public HRESULT GetModuleDefinition(BSTR moduleName, FsrmPipelineModuleType moduleType, IFsrmPipelineModuleDefinition** moduleDefinition) mut
			{
				return VT.GetModuleDefinition(&this, moduleName, moduleType, moduleDefinition);
			}
			public HRESULT RunClassification(FsrmReportGenerationContext context, BSTR reserved) mut
			{
				return VT.RunClassification(&this, context, reserved);
			}
			public HRESULT WaitForClassificationCompletion(int32 waitSeconds, int16* completed) mut
			{
				return VT.WaitForClassificationCompletion(&this, waitSeconds, completed);
			}
			public HRESULT CancelClassification() mut
			{
				return VT.CancelClassification(&this);
			}
			public HRESULT EnumFileProperties(BSTR filePath, FsrmGetFilePropertyOptions options, IFsrmCollection** fileProperties) mut
			{
				return VT.EnumFileProperties(&this, filePath, options, fileProperties);
			}
			public HRESULT GetFileProperty(BSTR filePath, BSTR propertyName, FsrmGetFilePropertyOptions options, IFsrmProperty** property) mut
			{
				return VT.GetFileProperty(&this, filePath, propertyName, options, property);
			}
			public HRESULT SetFileProperty(BSTR filePath, BSTR propertyName, BSTR propertyValue) mut
			{
				return VT.SetFileProperty(&this, filePath, propertyName, propertyValue);
			}
			public HRESULT ClearFileProperty(BSTR filePath, BSTR property) mut
			{
				return VT.ClearFileProperty(&this, filePath, property);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmClassificationManager *self, SAFEARRAY** formats) get_ClassificationReportFormats;
				public new function HRESULT(IFsrmClassificationManager *self, SAFEARRAY* formats) put_ClassificationReportFormats;
				public new function HRESULT(IFsrmClassificationManager *self, int32* logging) get_Logging;
				public new function HRESULT(IFsrmClassificationManager *self, int32 logging) put_Logging;
				public new function HRESULT(IFsrmClassificationManager *self, BSTR* mailTo) get_ClassificationReportMailTo;
				public new function HRESULT(IFsrmClassificationManager *self, BSTR mailTo) put_ClassificationReportMailTo;
				public new function HRESULT(IFsrmClassificationManager *self, int16* reportEnabled) get_ClassificationReportEnabled;
				public new function HRESULT(IFsrmClassificationManager *self, int16 reportEnabled) put_ClassificationReportEnabled;
				public new function HRESULT(IFsrmClassificationManager *self, BSTR* lastReportPath) get_ClassificationLastReportPathWithoutExtension;
				public new function HRESULT(IFsrmClassificationManager *self, BSTR* lastError) get_ClassificationLastError;
				public new function HRESULT(IFsrmClassificationManager *self, FsrmReportRunningStatus* runningStatus) get_ClassificationRunningStatus;
				public new function HRESULT(IFsrmClassificationManager *self, FsrmEnumOptions options, IFsrmCollection** propertyDefinitions) EnumPropertyDefinitions;
				public new function HRESULT(IFsrmClassificationManager *self, IFsrmPropertyDefinition** propertyDefinition) CreatePropertyDefinition;
				public new function HRESULT(IFsrmClassificationManager *self, BSTR propertyName, IFsrmPropertyDefinition** propertyDefinition) GetPropertyDefinition;
				public new function HRESULT(IFsrmClassificationManager *self, FsrmRuleType ruleType, FsrmEnumOptions options, IFsrmCollection** Rules) EnumRules;
				public new function HRESULT(IFsrmClassificationManager *self, FsrmRuleType ruleType, IFsrmRule** Rule) CreateRule;
				public new function HRESULT(IFsrmClassificationManager *self, BSTR ruleName, FsrmRuleType ruleType, IFsrmRule** Rule) GetRule;
				public new function HRESULT(IFsrmClassificationManager *self, FsrmPipelineModuleType moduleType, FsrmEnumOptions options, IFsrmCollection** moduleDefinitions) EnumModuleDefinitions;
				public new function HRESULT(IFsrmClassificationManager *self, FsrmPipelineModuleType moduleType, IFsrmPipelineModuleDefinition** moduleDefinition) CreateModuleDefinition;
				public new function HRESULT(IFsrmClassificationManager *self, BSTR moduleName, FsrmPipelineModuleType moduleType, IFsrmPipelineModuleDefinition** moduleDefinition) GetModuleDefinition;
				public new function HRESULT(IFsrmClassificationManager *self, FsrmReportGenerationContext context, BSTR reserved) RunClassification;
				public new function HRESULT(IFsrmClassificationManager *self, int32 waitSeconds, int16* completed) WaitForClassificationCompletion;
				public new function HRESULT(IFsrmClassificationManager *self) CancelClassification;
				public new function HRESULT(IFsrmClassificationManager *self, BSTR filePath, FsrmGetFilePropertyOptions options, IFsrmCollection** fileProperties) EnumFileProperties;
				public new function HRESULT(IFsrmClassificationManager *self, BSTR filePath, BSTR propertyName, FsrmGetFilePropertyOptions options, IFsrmProperty** property) GetFileProperty;
				public new function HRESULT(IFsrmClassificationManager *self, BSTR filePath, BSTR propertyName, BSTR propertyValue) SetFileProperty;
				public new function HRESULT(IFsrmClassificationManager *self, BSTR filePath, BSTR property) ClearFileProperty;
			}
		}
		[CRepr]
		public struct IFsrmClassificationManager2 : IFsrmClassificationManager
		{
			public const new Guid IID = .(0x0004c1c9, 0x127e, 0x4765, 0xba, 0x07, 0x6a, 0x31, 0x47, 0xbc, 0xa1, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ClassifyFiles(SAFEARRAY* filePaths, SAFEARRAY* propertyNames, SAFEARRAY* propertyValues, FsrmGetFilePropertyOptions options) mut
			{
				return VT.ClassifyFiles(&this, filePaths, propertyNames, propertyValues, options);
			}
			[CRepr]
			public struct VTable : IFsrmClassificationManager.VTable
			{
				public new function HRESULT(IFsrmClassificationManager2 *self, SAFEARRAY* filePaths, SAFEARRAY* propertyNames, SAFEARRAY* propertyValues, FsrmGetFilePropertyOptions options) ClassifyFiles;
			}
		}
		[CRepr]
		public struct IFsrmPropertyBag : IDispatch
		{
			public const new Guid IID = .(0x774589d1, 0xd300, 0x4f7a, 0x9a, 0x24, 0xf7, 0xb7, 0x66, 0x80, 0x02, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT get_RelativePath(BSTR* path) mut
			{
				return VT.get_RelativePath(&this, path);
			}
			public HRESULT get_VolumeName(BSTR* volumeName) mut
			{
				return VT.get_VolumeName(&this, volumeName);
			}
			public HRESULT get_RelativeNamespaceRoot(BSTR* relativeNamespaceRoot) mut
			{
				return VT.get_RelativeNamespaceRoot(&this, relativeNamespaceRoot);
			}
			public HRESULT get_VolumeIndex(uint32* volumeId) mut
			{
				return VT.get_VolumeIndex(&this, volumeId);
			}
			public HRESULT get_FileId(VARIANT* fileId) mut
			{
				return VT.get_FileId(&this, fileId);
			}
			public HRESULT get_ParentDirectoryId(VARIANT* parentDirectoryId) mut
			{
				return VT.get_ParentDirectoryId(&this, parentDirectoryId);
			}
			public HRESULT get_Size(VARIANT* size) mut
			{
				return VT.get_Size(&this, size);
			}
			public HRESULT get_SizeAllocated(VARIANT* sizeAllocated) mut
			{
				return VT.get_SizeAllocated(&this, sizeAllocated);
			}
			public HRESULT get_CreationTime(VARIANT* creationTime) mut
			{
				return VT.get_CreationTime(&this, creationTime);
			}
			public HRESULT get_LastAccessTime(VARIANT* lastAccessTime) mut
			{
				return VT.get_LastAccessTime(&this, lastAccessTime);
			}
			public HRESULT get_LastModificationTime(VARIANT* lastModificationTime) mut
			{
				return VT.get_LastModificationTime(&this, lastModificationTime);
			}
			public HRESULT get_Attributes(uint32* attributes) mut
			{
				return VT.get_Attributes(&this, attributes);
			}
			public HRESULT get_OwnerSid(BSTR* ownerSid) mut
			{
				return VT.get_OwnerSid(&this, ownerSid);
			}
			public HRESULT get_FilePropertyNames(SAFEARRAY** filePropertyNames) mut
			{
				return VT.get_FilePropertyNames(&this, filePropertyNames);
			}
			public HRESULT get_Messages(SAFEARRAY** messages) mut
			{
				return VT.get_Messages(&this, messages);
			}
			public HRESULT get_PropertyBagFlags(uint32* flags) mut
			{
				return VT.get_PropertyBagFlags(&this, flags);
			}
			public HRESULT GetFileProperty(BSTR name, IFsrmProperty** fileProperty) mut
			{
				return VT.GetFileProperty(&this, name, fileProperty);
			}
			public HRESULT SetFileProperty(BSTR name, BSTR value) mut
			{
				return VT.SetFileProperty(&this, name, value);
			}
			public HRESULT AddMessage(BSTR message) mut
			{
				return VT.AddMessage(&this, message);
			}
			public HRESULT GetFileStreamInterface(FsrmFileStreamingMode accessMode, FsrmFileStreamingInterfaceType interfaceType, VARIANT* pStreamInterface) mut
			{
				return VT.GetFileStreamInterface(&this, accessMode, interfaceType, pStreamInterface);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmPropertyBag *self, BSTR* name) get_Name;
				public new function HRESULT(IFsrmPropertyBag *self, BSTR* path) get_RelativePath;
				public new function HRESULT(IFsrmPropertyBag *self, BSTR* volumeName) get_VolumeName;
				public new function HRESULT(IFsrmPropertyBag *self, BSTR* relativeNamespaceRoot) get_RelativeNamespaceRoot;
				public new function HRESULT(IFsrmPropertyBag *self, uint32* volumeId) get_VolumeIndex;
				public new function HRESULT(IFsrmPropertyBag *self, VARIANT* fileId) get_FileId;
				public new function HRESULT(IFsrmPropertyBag *self, VARIANT* parentDirectoryId) get_ParentDirectoryId;
				public new function HRESULT(IFsrmPropertyBag *self, VARIANT* size) get_Size;
				public new function HRESULT(IFsrmPropertyBag *self, VARIANT* sizeAllocated) get_SizeAllocated;
				public new function HRESULT(IFsrmPropertyBag *self, VARIANT* creationTime) get_CreationTime;
				public new function HRESULT(IFsrmPropertyBag *self, VARIANT* lastAccessTime) get_LastAccessTime;
				public new function HRESULT(IFsrmPropertyBag *self, VARIANT* lastModificationTime) get_LastModificationTime;
				public new function HRESULT(IFsrmPropertyBag *self, uint32* attributes) get_Attributes;
				public new function HRESULT(IFsrmPropertyBag *self, BSTR* ownerSid) get_OwnerSid;
				public new function HRESULT(IFsrmPropertyBag *self, SAFEARRAY** filePropertyNames) get_FilePropertyNames;
				public new function HRESULT(IFsrmPropertyBag *self, SAFEARRAY** messages) get_Messages;
				public new function HRESULT(IFsrmPropertyBag *self, uint32* flags) get_PropertyBagFlags;
				public new function HRESULT(IFsrmPropertyBag *self, BSTR name, IFsrmProperty** fileProperty) GetFileProperty;
				public new function HRESULT(IFsrmPropertyBag *self, BSTR name, BSTR value) SetFileProperty;
				public new function HRESULT(IFsrmPropertyBag *self, BSTR message) AddMessage;
				public new function HRESULT(IFsrmPropertyBag *self, FsrmFileStreamingMode accessMode, FsrmFileStreamingInterfaceType interfaceType, VARIANT* pStreamInterface) GetFileStreamInterface;
			}
		}
		[CRepr]
		public struct IFsrmPropertyBag2 : IFsrmPropertyBag
		{
			public const new Guid IID = .(0x0e46bdbd, 0x2402, 0x4fed, 0x9c, 0x30, 0x92, 0x66, 0xe6, 0xeb, 0x2c, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFieldValue(FsrmPropertyBagField field, VARIANT* value) mut
			{
				return VT.GetFieldValue(&this, field, value);
			}
			public HRESULT GetUntrustedInFileProperties(IFsrmCollection** props) mut
			{
				return VT.GetUntrustedInFileProperties(&this, props);
			}
			[CRepr]
			public struct VTable : IFsrmPropertyBag.VTable
			{
				public new function HRESULT(IFsrmPropertyBag2 *self, FsrmPropertyBagField field, VARIANT* value) GetFieldValue;
				public new function HRESULT(IFsrmPropertyBag2 *self, IFsrmCollection** props) GetUntrustedInFileProperties;
			}
		}
		[CRepr]
		public struct IFsrmPipelineModuleImplementation : IDispatch
		{
			public const new Guid IID = .(0xb7907906, 0x2b02, 0x4cb5, 0x84, 0xa9, 0xfd, 0xf5, 0x46, 0x13, 0xd6, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnLoad(IFsrmPipelineModuleDefinition* moduleDefinition, IFsrmPipelineModuleConnector** moduleConnector) mut
			{
				return VT.OnLoad(&this, moduleDefinition, moduleConnector);
			}
			public HRESULT OnUnload() mut
			{
				return VT.OnUnload(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmPipelineModuleImplementation *self, IFsrmPipelineModuleDefinition* moduleDefinition, IFsrmPipelineModuleConnector** moduleConnector) OnLoad;
				public new function HRESULT(IFsrmPipelineModuleImplementation *self) OnUnload;
			}
		}
		[CRepr]
		public struct IFsrmClassifierModuleImplementation : IFsrmPipelineModuleImplementation
		{
			public const new Guid IID = .(0x4c968fc6, 0x6edb, 0x4051, 0x9c, 0x18, 0x73, 0xb7, 0x29, 0x1a, 0xe1, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LastModified(VARIANT* lastModified) mut
			{
				return VT.get_LastModified(&this, lastModified);
			}
			public HRESULT UseRulesAndDefinitions(IFsrmCollection* rules, IFsrmCollection* propertyDefinitions) mut
			{
				return VT.UseRulesAndDefinitions(&this, rules, propertyDefinitions);
			}
			public HRESULT OnBeginFile(IFsrmPropertyBag* propertyBag, SAFEARRAY* arrayRuleIds) mut
			{
				return VT.OnBeginFile(&this, propertyBag, arrayRuleIds);
			}
			public HRESULT DoesPropertyValueApply(BSTR property, BSTR value, int16* applyValue, Guid idRule, Guid idPropDef) mut
			{
				return VT.DoesPropertyValueApply(&this, property, value, applyValue, idRule, idPropDef);
			}
			public HRESULT GetPropertyValueToApply(BSTR property, BSTR* value, Guid idRule, Guid idPropDef) mut
			{
				return VT.GetPropertyValueToApply(&this, property, value, idRule, idPropDef);
			}
			public HRESULT OnEndFile() mut
			{
				return VT.OnEndFile(&this);
			}
			[CRepr]
			public struct VTable : IFsrmPipelineModuleImplementation.VTable
			{
				public new function HRESULT(IFsrmClassifierModuleImplementation *self, VARIANT* lastModified) get_LastModified;
				public new function HRESULT(IFsrmClassifierModuleImplementation *self, IFsrmCollection* rules, IFsrmCollection* propertyDefinitions) UseRulesAndDefinitions;
				public new function HRESULT(IFsrmClassifierModuleImplementation *self, IFsrmPropertyBag* propertyBag, SAFEARRAY* arrayRuleIds) OnBeginFile;
				public new function HRESULT(IFsrmClassifierModuleImplementation *self, BSTR property, BSTR value, int16* applyValue, Guid idRule, Guid idPropDef) DoesPropertyValueApply;
				public new function HRESULT(IFsrmClassifierModuleImplementation *self, BSTR property, BSTR* value, Guid idRule, Guid idPropDef) GetPropertyValueToApply;
				public new function HRESULT(IFsrmClassifierModuleImplementation *self) OnEndFile;
			}
		}
		[CRepr]
		public struct IFsrmStorageModuleImplementation : IFsrmPipelineModuleImplementation
		{
			public const new Guid IID = .(0x0af4a0da, 0x895a, 0x4e50, 0x87, 0x12, 0xa9, 0x67, 0x24, 0xbc, 0xec, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UseDefinitions(IFsrmCollection* propertyDefinitions) mut
			{
				return VT.UseDefinitions(&this, propertyDefinitions);
			}
			public HRESULT LoadProperties(IFsrmPropertyBag* propertyBag) mut
			{
				return VT.LoadProperties(&this, propertyBag);
			}
			public HRESULT SaveProperties(IFsrmPropertyBag* propertyBag) mut
			{
				return VT.SaveProperties(&this, propertyBag);
			}
			[CRepr]
			public struct VTable : IFsrmPipelineModuleImplementation.VTable
			{
				public new function HRESULT(IFsrmStorageModuleImplementation *self, IFsrmCollection* propertyDefinitions) UseDefinitions;
				public new function HRESULT(IFsrmStorageModuleImplementation *self, IFsrmPropertyBag* propertyBag) LoadProperties;
				public new function HRESULT(IFsrmStorageModuleImplementation *self, IFsrmPropertyBag* propertyBag) SaveProperties;
			}
		}
		[CRepr]
		public struct IFsrmPipelineModuleConnector : IDispatch
		{
			public const new Guid IID = .(0xc16014f3, 0x9aa1, 0x46b3, 0xb0, 0xa7, 0xab, 0x14, 0x6e, 0xb2, 0x05, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ModuleImplementation(IFsrmPipelineModuleImplementation** pipelineModuleImplementation) mut
			{
				return VT.get_ModuleImplementation(&this, pipelineModuleImplementation);
			}
			public HRESULT get_ModuleName(BSTR* userName) mut
			{
				return VT.get_ModuleName(&this, userName);
			}
			public HRESULT get_HostingUserAccount(BSTR* userAccount) mut
			{
				return VT.get_HostingUserAccount(&this, userAccount);
			}
			public HRESULT get_HostingProcessPid(int32* pid) mut
			{
				return VT.get_HostingProcessPid(&this, pid);
			}
			public HRESULT Bind(IFsrmPipelineModuleDefinition* moduleDefinition, IFsrmPipelineModuleImplementation* moduleImplementation) mut
			{
				return VT.Bind(&this, moduleDefinition, moduleImplementation);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFsrmPipelineModuleConnector *self, IFsrmPipelineModuleImplementation** pipelineModuleImplementation) get_ModuleImplementation;
				public new function HRESULT(IFsrmPipelineModuleConnector *self, BSTR* userName) get_ModuleName;
				public new function HRESULT(IFsrmPipelineModuleConnector *self, BSTR* userAccount) get_HostingUserAccount;
				public new function HRESULT(IFsrmPipelineModuleConnector *self, int32* pid) get_HostingProcessPid;
				public new function HRESULT(IFsrmPipelineModuleConnector *self, IFsrmPipelineModuleDefinition* moduleDefinition, IFsrmPipelineModuleImplementation* moduleImplementation) Bind;
			}
		}
		[CRepr]
		public struct DIFsrmClassificationEvents : IDispatch
		{
			public const new Guid IID = .(0x26942db0, 0xdabf, 0x41d8, 0xbb, 0xdd, 0xb1, 0x29, 0xa9, 0xf7, 0x04, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		
	}
}
