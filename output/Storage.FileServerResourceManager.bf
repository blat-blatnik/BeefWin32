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
			Flags_Enforce = 1,
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
			Files = 1,
			Folders = 2,
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
			
			public HRESULT get_Id(out Guid id) mut => VT.get_Id(ref this, out id);
			public HRESULT get_Description(out BSTR description) mut => VT.get_Description(ref this, out description);
			public HRESULT put_Description(BSTR description) mut => VT.put_Description(ref this, description);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Commit() mut => VT.Commit(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmObject self, out Guid id) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmObject self, out BSTR description) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmObject self, BSTR description) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmObject self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmObject self) Commit;
			}
		}
		[CRepr]
		public struct IFsrmCollection : IDispatch
		{
			public const new Guid IID = .(0xf76fbf3b, 0x8ddd, 0x4b42, 0xb0, 0x5a, 0xcb, 0x1c, 0x3f, 0xf1, 0xfe, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* unknown) mut => VT.get__NewEnum(ref this, out unknown);
			public HRESULT get_Item(int32 index, out VARIANT item) mut => VT.get_Item(ref this, index, out item);
			public HRESULT get_Count(out int32 count) mut => VT.get_Count(ref this, out count);
			public HRESULT get_State(out FsrmCollectionState state) mut => VT.get_State(ref this, out state);
			public HRESULT Cancel() mut => VT.Cancel(ref this);
			public HRESULT WaitForCompletion(int32 waitSeconds, out int16 completed) mut => VT.WaitForCompletion(ref this, waitSeconds, out completed);
			public HRESULT GetById(Guid id, out VARIANT entry) mut => VT.GetById(ref this, id, out entry);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmCollection self, out IUnknown* unknown) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmCollection self, int32 index, out VARIANT item) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmCollection self, out int32 count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmCollection self, out FsrmCollectionState state) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmCollection self) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmCollection self, int32 waitSeconds, out int16 completed) WaitForCompletion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmCollection self, Guid id, out VARIANT entry) GetById;
			}
		}
		[CRepr]
		public struct IFsrmMutableCollection : IFsrmCollection
		{
			public const new Guid IID = .(0x1bb617b8, 0x3886, 0x49dc, 0xaf, 0x82, 0xa6, 0xc9, 0x0f, 0xa3, 0x5d, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Add(VARIANT item) mut => VT.Add(ref this, item);
			public HRESULT Remove(int32 index) mut => VT.Remove(ref this, index);
			public HRESULT RemoveById(Guid id) mut => VT.RemoveById(ref this, id);
			public HRESULT Clone(out IFsrmMutableCollection* collection) mut => VT.Clone(ref this, out collection);

			[CRepr]
			public struct VTable : IFsrmCollection.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmMutableCollection self, VARIANT item) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmMutableCollection self, int32 index) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmMutableCollection self, Guid id) RemoveById;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmMutableCollection self, out IFsrmMutableCollection* collection) Clone;
			}
		}
		[CRepr]
		public struct IFsrmCommittableCollection : IFsrmMutableCollection
		{
			public const new Guid IID = .(0x96deb3b5, 0x8b91, 0x4a2a, 0x9d, 0x93, 0x80, 0xa3, 0x5d, 0x8a, 0xa8, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Commit(FsrmCommitOptions options, out IFsrmCollection* results) mut => VT.Commit(ref this, options, out results);

			[CRepr]
			public struct VTable : IFsrmMutableCollection.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmCommittableCollection self, FsrmCommitOptions options, out IFsrmCollection* results) Commit;
			}
		}
		[CRepr]
		public struct IFsrmAction : IDispatch
		{
			public const new Guid IID = .(0x6cd6408a, 0xae60, 0x463b, 0x9e, 0xf1, 0xe1, 0x17, 0x53, 0x4d, 0x69, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(out Guid id) mut => VT.get_Id(ref this, out id);
			public HRESULT get_ActionType(out FsrmActionType actionType) mut => VT.get_ActionType(ref this, out actionType);
			public HRESULT get_RunLimitInterval(out int32 minutes) mut => VT.get_RunLimitInterval(ref this, out minutes);
			public HRESULT put_RunLimitInterval(int32 minutes) mut => VT.put_RunLimitInterval(ref this, minutes);
			public HRESULT Delete() mut => VT.Delete(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmAction self, out Guid id) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmAction self, out FsrmActionType actionType) get_ActionType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmAction self, out int32 minutes) get_RunLimitInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmAction self, int32 minutes) put_RunLimitInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmAction self) Delete;
			}
		}
		[CRepr]
		public struct IFsrmActionEmail : IFsrmAction
		{
			public const new Guid IID = .(0xd646567d, 0x26ae, 0x4caa, 0x9f, 0x84, 0x4e, 0x0a, 0xad, 0x20, 0x7f, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_MailFrom(out BSTR mailFrom) mut => VT.get_MailFrom(ref this, out mailFrom);
			public HRESULT put_MailFrom(BSTR mailFrom) mut => VT.put_MailFrom(ref this, mailFrom);
			public HRESULT get_MailReplyTo(out BSTR mailReplyTo) mut => VT.get_MailReplyTo(ref this, out mailReplyTo);
			public HRESULT put_MailReplyTo(BSTR mailReplyTo) mut => VT.put_MailReplyTo(ref this, mailReplyTo);
			public HRESULT get_MailTo(out BSTR mailTo) mut => VT.get_MailTo(ref this, out mailTo);
			public HRESULT put_MailTo(BSTR mailTo) mut => VT.put_MailTo(ref this, mailTo);
			public HRESULT get_MailCc(out BSTR mailCc) mut => VT.get_MailCc(ref this, out mailCc);
			public HRESULT put_MailCc(BSTR mailCc) mut => VT.put_MailCc(ref this, mailCc);
			public HRESULT get_MailBcc(out BSTR mailBcc) mut => VT.get_MailBcc(ref this, out mailBcc);
			public HRESULT put_MailBcc(BSTR mailBcc) mut => VT.put_MailBcc(ref this, mailBcc);
			public HRESULT get_MailSubject(out BSTR mailSubject) mut => VT.get_MailSubject(ref this, out mailSubject);
			public HRESULT put_MailSubject(BSTR mailSubject) mut => VT.put_MailSubject(ref this, mailSubject);
			public HRESULT get_MessageText(out BSTR messageText) mut => VT.get_MessageText(ref this, out messageText);
			public HRESULT put_MessageText(BSTR messageText) mut => VT.put_MessageText(ref this, messageText);

			[CRepr]
			public struct VTable : IFsrmAction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, out BSTR mailFrom) get_MailFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, BSTR mailFrom) put_MailFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, out BSTR mailReplyTo) get_MailReplyTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, BSTR mailReplyTo) put_MailReplyTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, out BSTR mailTo) get_MailTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, BSTR mailTo) put_MailTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, out BSTR mailCc) get_MailCc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, BSTR mailCc) put_MailCc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, out BSTR mailBcc) get_MailBcc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, BSTR mailBcc) put_MailBcc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, out BSTR mailSubject) get_MailSubject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, BSTR mailSubject) put_MailSubject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, out BSTR messageText) get_MessageText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail self, BSTR messageText) put_MessageText;
			}
		}
		[CRepr]
		public struct IFsrmActionEmail2 : IFsrmActionEmail
		{
			public const new Guid IID = .(0x8276702f, 0x2532, 0x4839, 0x89, 0xbf, 0x48, 0x72, 0x60, 0x9a, 0x2e, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AttachmentFileListSize(out int32 attachmentFileListSize) mut => VT.get_AttachmentFileListSize(ref this, out attachmentFileListSize);
			public HRESULT put_AttachmentFileListSize(int32 attachmentFileListSize) mut => VT.put_AttachmentFileListSize(ref this, attachmentFileListSize);

			[CRepr]
			public struct VTable : IFsrmActionEmail.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail2 self, out int32 attachmentFileListSize) get_AttachmentFileListSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEmail2 self, int32 attachmentFileListSize) put_AttachmentFileListSize;
			}
		}
		[CRepr]
		public struct IFsrmActionReport : IFsrmAction
		{
			public const new Guid IID = .(0x2dbe63c4, 0xb340, 0x48a0, 0xa5, 0xb0, 0x15, 0x8e, 0x07, 0xfc, 0x56, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ReportTypes(out SAFEARRAY* reportTypes) mut => VT.get_ReportTypes(ref this, out reportTypes);
			public HRESULT put_ReportTypes(ref SAFEARRAY reportTypes) mut => VT.put_ReportTypes(ref this, ref reportTypes);
			public HRESULT get_MailTo(out BSTR mailTo) mut => VT.get_MailTo(ref this, out mailTo);
			public HRESULT put_MailTo(BSTR mailTo) mut => VT.put_MailTo(ref this, mailTo);

			[CRepr]
			public struct VTable : IFsrmAction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionReport self, out SAFEARRAY* reportTypes) get_ReportTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionReport self, ref SAFEARRAY reportTypes) put_ReportTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionReport self, out BSTR mailTo) get_MailTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionReport self, BSTR mailTo) put_MailTo;
			}
		}
		[CRepr]
		public struct IFsrmActionEventLog : IFsrmAction
		{
			public const new Guid IID = .(0x4c8f96c3, 0x5d94, 0x4f37, 0xa4, 0xf4, 0xf5, 0x6a, 0xb4, 0x63, 0x54, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventType(out FsrmEventType eventType) mut => VT.get_EventType(ref this, out eventType);
			public HRESULT put_EventType(FsrmEventType eventType) mut => VT.put_EventType(ref this, eventType);
			public HRESULT get_MessageText(out BSTR messageText) mut => VT.get_MessageText(ref this, out messageText);
			public HRESULT put_MessageText(BSTR messageText) mut => VT.put_MessageText(ref this, messageText);

			[CRepr]
			public struct VTable : IFsrmAction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEventLog self, out FsrmEventType eventType) get_EventType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEventLog self, FsrmEventType eventType) put_EventType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEventLog self, out BSTR messageText) get_MessageText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionEventLog self, BSTR messageText) put_MessageText;
			}
		}
		[CRepr]
		public struct IFsrmActionCommand : IFsrmAction
		{
			public const new Guid IID = .(0x12937789, 0xe247, 0x4917, 0x9c, 0x20, 0xf3, 0xee, 0x9c, 0x7e, 0xe7, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ExecutablePath(out BSTR executablePath) mut => VT.get_ExecutablePath(ref this, out executablePath);
			public HRESULT put_ExecutablePath(BSTR executablePath) mut => VT.put_ExecutablePath(ref this, executablePath);
			public HRESULT get_Arguments(out BSTR arguments) mut => VT.get_Arguments(ref this, out arguments);
			public HRESULT put_Arguments(BSTR arguments) mut => VT.put_Arguments(ref this, arguments);
			public HRESULT get_Account(out FsrmAccountType account) mut => VT.get_Account(ref this, out account);
			public HRESULT put_Account(FsrmAccountType account) mut => VT.put_Account(ref this, account);
			public HRESULT get_WorkingDirectory(out BSTR workingDirectory) mut => VT.get_WorkingDirectory(ref this, out workingDirectory);
			public HRESULT put_WorkingDirectory(BSTR workingDirectory) mut => VT.put_WorkingDirectory(ref this, workingDirectory);
			public HRESULT get_MonitorCommand(out int16 monitorCommand) mut => VT.get_MonitorCommand(ref this, out monitorCommand);
			public HRESULT put_MonitorCommand(int16 monitorCommand) mut => VT.put_MonitorCommand(ref this, monitorCommand);
			public HRESULT get_KillTimeOut(out int32 minutes) mut => VT.get_KillTimeOut(ref this, out minutes);
			public HRESULT put_KillTimeOut(int32 minutes) mut => VT.put_KillTimeOut(ref this, minutes);
			public HRESULT get_LogResult(out int16 logResults) mut => VT.get_LogResult(ref this, out logResults);
			public HRESULT put_LogResult(int16 logResults) mut => VT.put_LogResult(ref this, logResults);

			[CRepr]
			public struct VTable : IFsrmAction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, out BSTR executablePath) get_ExecutablePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, BSTR executablePath) put_ExecutablePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, out BSTR arguments) get_Arguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, BSTR arguments) put_Arguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, out FsrmAccountType account) get_Account;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, FsrmAccountType account) put_Account;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, out BSTR workingDirectory) get_WorkingDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, BSTR workingDirectory) put_WorkingDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, out int16 monitorCommand) get_MonitorCommand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, int16 monitorCommand) put_MonitorCommand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, out int32 minutes) get_KillTimeOut;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, int32 minutes) put_KillTimeOut;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, out int16 logResults) get_LogResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmActionCommand self, int16 logResults) put_LogResult;
			}
		}
		[CRepr]
		public struct IFsrmSetting : IDispatch
		{
			public const new Guid IID = .(0xf411d4fd, 0x14be, 0x4260, 0x8c, 0x40, 0x03, 0xb7, 0xc9, 0x5e, 0x60, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SmtpServer(out BSTR smtpServer) mut => VT.get_SmtpServer(ref this, out smtpServer);
			public HRESULT put_SmtpServer(BSTR smtpServer) mut => VT.put_SmtpServer(ref this, smtpServer);
			public HRESULT get_MailFrom(out BSTR mailFrom) mut => VT.get_MailFrom(ref this, out mailFrom);
			public HRESULT put_MailFrom(BSTR mailFrom) mut => VT.put_MailFrom(ref this, mailFrom);
			public HRESULT get_AdminEmail(out BSTR adminEmail) mut => VT.get_AdminEmail(ref this, out adminEmail);
			public HRESULT put_AdminEmail(BSTR adminEmail) mut => VT.put_AdminEmail(ref this, adminEmail);
			public HRESULT get_DisableCommandLine(out int16 disableCommandLine) mut => VT.get_DisableCommandLine(ref this, out disableCommandLine);
			public HRESULT put_DisableCommandLine(int16 disableCommandLine) mut => VT.put_DisableCommandLine(ref this, disableCommandLine);
			public HRESULT get_EnableScreeningAudit(out int16 enableScreeningAudit) mut => VT.get_EnableScreeningAudit(ref this, out enableScreeningAudit);
			public HRESULT put_EnableScreeningAudit(int16 enableScreeningAudit) mut => VT.put_EnableScreeningAudit(ref this, enableScreeningAudit);
			public HRESULT EmailTest(BSTR mailTo) mut => VT.EmailTest(ref this, mailTo);
			public HRESULT SetActionRunLimitInterval(FsrmActionType actionType, int32 delayTimeMinutes) mut => VT.SetActionRunLimitInterval(ref this, actionType, delayTimeMinutes);
			public HRESULT GetActionRunLimitInterval(FsrmActionType actionType, out int32 delayTimeMinutes) mut => VT.GetActionRunLimitInterval(ref this, actionType, out delayTimeMinutes);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmSetting self, out BSTR smtpServer) get_SmtpServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmSetting self, BSTR smtpServer) put_SmtpServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmSetting self, out BSTR mailFrom) get_MailFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmSetting self, BSTR mailFrom) put_MailFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmSetting self, out BSTR adminEmail) get_AdminEmail;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmSetting self, BSTR adminEmail) put_AdminEmail;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmSetting self, out int16 disableCommandLine) get_DisableCommandLine;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmSetting self, int16 disableCommandLine) put_DisableCommandLine;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmSetting self, out int16 enableScreeningAudit) get_EnableScreeningAudit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmSetting self, int16 enableScreeningAudit) put_EnableScreeningAudit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmSetting self, BSTR mailTo) EmailTest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmSetting self, FsrmActionType actionType, int32 delayTimeMinutes) SetActionRunLimitInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmSetting self, FsrmActionType actionType, out int32 delayTimeMinutes) GetActionRunLimitInterval;
			}
		}
		[CRepr]
		public struct IFsrmPathMapper : IDispatch
		{
			public const new Guid IID = .(0x6f4dbfff, 0x6920, 0x4821, 0xa6, 0xc3, 0xb7, 0xe9, 0x4c, 0x1f, 0xd6, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSharePathsForLocalPath(BSTR localPath, out SAFEARRAY* sharePaths) mut => VT.GetSharePathsForLocalPath(ref this, localPath, out sharePaths);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPathMapper self, BSTR localPath, out SAFEARRAY* sharePaths) GetSharePathsForLocalPath;
			}
		}
		[CRepr]
		public struct IFsrmExportImport : IDispatch
		{
			public const new Guid IID = .(0xefcb0ab1, 0x16c4, 0x4a79, 0x81, 0x2c, 0x72, 0x56, 0x14, 0xc3, 0x30, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ExportFileGroups(BSTR filePath, ref VARIANT fileGroupNamesSafeArray, BSTR remoteHost) mut => VT.ExportFileGroups(ref this, filePath, ref fileGroupNamesSafeArray, remoteHost);
			public HRESULT ImportFileGroups(BSTR filePath, ref VARIANT fileGroupNamesSafeArray, BSTR remoteHost, out IFsrmCommittableCollection* fileGroups) mut => VT.ImportFileGroups(ref this, filePath, ref fileGroupNamesSafeArray, remoteHost, out fileGroups);
			public HRESULT ExportFileScreenTemplates(BSTR filePath, ref VARIANT templateNamesSafeArray, BSTR remoteHost) mut => VT.ExportFileScreenTemplates(ref this, filePath, ref templateNamesSafeArray, remoteHost);
			public HRESULT ImportFileScreenTemplates(BSTR filePath, ref VARIANT templateNamesSafeArray, BSTR remoteHost, out IFsrmCommittableCollection* templates) mut => VT.ImportFileScreenTemplates(ref this, filePath, ref templateNamesSafeArray, remoteHost, out templates);
			public HRESULT ExportQuotaTemplates(BSTR filePath, ref VARIANT templateNamesSafeArray, BSTR remoteHost) mut => VT.ExportQuotaTemplates(ref this, filePath, ref templateNamesSafeArray, remoteHost);
			public HRESULT ImportQuotaTemplates(BSTR filePath, ref VARIANT templateNamesSafeArray, BSTR remoteHost, out IFsrmCommittableCollection* templates) mut => VT.ImportQuotaTemplates(ref this, filePath, ref templateNamesSafeArray, remoteHost, out templates);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmExportImport self, BSTR filePath, ref VARIANT fileGroupNamesSafeArray, BSTR remoteHost) ExportFileGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmExportImport self, BSTR filePath, ref VARIANT fileGroupNamesSafeArray, BSTR remoteHost, out IFsrmCommittableCollection* fileGroups) ImportFileGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmExportImport self, BSTR filePath, ref VARIANT templateNamesSafeArray, BSTR remoteHost) ExportFileScreenTemplates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmExportImport self, BSTR filePath, ref VARIANT templateNamesSafeArray, BSTR remoteHost, out IFsrmCommittableCollection* templates) ImportFileScreenTemplates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmExportImport self, BSTR filePath, ref VARIANT templateNamesSafeArray, BSTR remoteHost) ExportQuotaTemplates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmExportImport self, BSTR filePath, ref VARIANT templateNamesSafeArray, BSTR remoteHost, out IFsrmCommittableCollection* templates) ImportQuotaTemplates;
			}
		}
		[CRepr]
		public struct IFsrmDerivedObjectsResult : IDispatch
		{
			public const new Guid IID = .(0x39322a2d, 0x38ee, 0x4d0d, 0x80, 0x95, 0x42, 0x1a, 0x80, 0x84, 0x9a, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DerivedObjects(out IFsrmCollection* derivedObjects) mut => VT.get_DerivedObjects(ref this, out derivedObjects);
			public HRESULT get_Results(out IFsrmCollection* results) mut => VT.get_Results(ref this, out results);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmDerivedObjectsResult self, out IFsrmCollection* derivedObjects) get_DerivedObjects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmDerivedObjectsResult self, out IFsrmCollection* results) get_Results;
			}
		}
		[CRepr]
		public struct IFsrmAccessDeniedRemediationClient : IDispatch
		{
			public const new Guid IID = .(0x40002314, 0x590b, 0x45a5, 0x8e, 0x1b, 0x8c, 0x05, 0xda, 0x52, 0x7e, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Show(uint parentWnd, BSTR accessPath, AdrClientErrorType errorType, int32 flags, BSTR windowTitle, BSTR windowMessage, out int32 result) mut => VT.Show(ref this, parentWnd, accessPath, errorType, flags, windowTitle, windowMessage, out result);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmAccessDeniedRemediationClient self, uint parentWnd, BSTR accessPath, AdrClientErrorType errorType, int32 flags, BSTR windowTitle, BSTR windowMessage, out int32 result) Show;
			}
		}
		[CRepr]
		public struct IFsrmQuotaBase : IFsrmObject
		{
			public const new Guid IID = .(0x1568a795, 0x3924, 0x4118, 0xb7, 0x4b, 0x68, 0xd8, 0xf0, 0xfa, 0x5d, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_QuotaLimit(out VARIANT quotaLimit) mut => VT.get_QuotaLimit(ref this, out quotaLimit);
			public HRESULT put_QuotaLimit(VARIANT quotaLimit) mut => VT.put_QuotaLimit(ref this, quotaLimit);
			public HRESULT get_QuotaFlags(out int32 quotaFlags) mut => VT.get_QuotaFlags(ref this, out quotaFlags);
			public HRESULT put_QuotaFlags(int32 quotaFlags) mut => VT.put_QuotaFlags(ref this, quotaFlags);
			public HRESULT get_Thresholds(out SAFEARRAY* thresholds) mut => VT.get_Thresholds(ref this, out thresholds);
			public HRESULT AddThreshold(int32 threshold) mut => VT.AddThreshold(ref this, threshold);
			public HRESULT DeleteThreshold(int32 threshold) mut => VT.DeleteThreshold(ref this, threshold);
			public HRESULT ModifyThreshold(int32 threshold, int32 newThreshold) mut => VT.ModifyThreshold(ref this, threshold, newThreshold);
			public HRESULT CreateThresholdAction(int32 threshold, FsrmActionType actionType, out IFsrmAction* action) mut => VT.CreateThresholdAction(ref this, threshold, actionType, out action);
			public HRESULT EnumThresholdActions(int32 threshold, out IFsrmCollection* actions) mut => VT.EnumThresholdActions(ref this, threshold, out actions);

			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaBase self, out VARIANT quotaLimit) get_QuotaLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaBase self, VARIANT quotaLimit) put_QuotaLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaBase self, out int32 quotaFlags) get_QuotaFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaBase self, int32 quotaFlags) put_QuotaFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaBase self, out SAFEARRAY* thresholds) get_Thresholds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaBase self, int32 threshold) AddThreshold;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaBase self, int32 threshold) DeleteThreshold;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaBase self, int32 threshold, int32 newThreshold) ModifyThreshold;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaBase self, int32 threshold, FsrmActionType actionType, out IFsrmAction* action) CreateThresholdAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaBase self, int32 threshold, out IFsrmCollection* actions) EnumThresholdActions;
			}
		}
		[CRepr]
		public struct IFsrmQuotaObject : IFsrmQuotaBase
		{
			public const new Guid IID = .(0x42dc3511, 0x61d5, 0x48ae, 0xb6, 0xdc, 0x59, 0xfc, 0x00, 0xc0, 0xa8, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(out BSTR path) mut => VT.get_Path(ref this, out path);
			public HRESULT get_UserSid(out BSTR userSid) mut => VT.get_UserSid(ref this, out userSid);
			public HRESULT get_UserAccount(out BSTR userAccount) mut => VT.get_UserAccount(ref this, out userAccount);
			public HRESULT get_SourceTemplateName(out BSTR quotaTemplateName) mut => VT.get_SourceTemplateName(ref this, out quotaTemplateName);
			public HRESULT get_MatchesSourceTemplate(out int16 matches) mut => VT.get_MatchesSourceTemplate(ref this, out matches);
			public HRESULT ApplyTemplate(BSTR quotaTemplateName) mut => VT.ApplyTemplate(ref this, quotaTemplateName);

			[CRepr]
			public struct VTable : IFsrmQuotaBase.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaObject self, out BSTR path) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaObject self, out BSTR userSid) get_UserSid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaObject self, out BSTR userAccount) get_UserAccount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaObject self, out BSTR quotaTemplateName) get_SourceTemplateName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaObject self, out int16 matches) get_MatchesSourceTemplate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaObject self, BSTR quotaTemplateName) ApplyTemplate;
			}
		}
		[CRepr]
		public struct IFsrmQuota : IFsrmQuotaObject
		{
			public const new Guid IID = .(0x377f739d, 0x9647, 0x4b8e, 0x97, 0xd2, 0x5f, 0xfc, 0xe6, 0xd7, 0x59, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_QuotaUsed(out VARIANT used) mut => VT.get_QuotaUsed(ref this, out used);
			public HRESULT get_QuotaPeakUsage(out VARIANT peakUsage) mut => VT.get_QuotaPeakUsage(ref this, out peakUsage);
			public HRESULT get_QuotaPeakUsageTime(out double peakUsageDateTime) mut => VT.get_QuotaPeakUsageTime(ref this, out peakUsageDateTime);
			public HRESULT ResetPeakUsage() mut => VT.ResetPeakUsage(ref this);
			public HRESULT RefreshUsageProperties() mut => VT.RefreshUsageProperties(ref this);

			[CRepr]
			public struct VTable : IFsrmQuotaObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuota self, out VARIANT used) get_QuotaUsed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuota self, out VARIANT peakUsage) get_QuotaPeakUsage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuota self, out double peakUsageDateTime) get_QuotaPeakUsageTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuota self) ResetPeakUsage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuota self) RefreshUsageProperties;
			}
		}
		[CRepr]
		public struct IFsrmAutoApplyQuota : IFsrmQuotaObject
		{
			public const new Guid IID = .(0xf82e5729, 0x6aba, 0x4740, 0xbf, 0xc7, 0xc7, 0xf5, 0x8f, 0x75, 0xfb, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ExcludeFolders(out SAFEARRAY* folders) mut => VT.get_ExcludeFolders(ref this, out folders);
			public HRESULT put_ExcludeFolders(ref SAFEARRAY folders) mut => VT.put_ExcludeFolders(ref this, ref folders);
			public HRESULT CommitAndUpdateDerived(FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, out IFsrmDerivedObjectsResult* derivedObjectsResult) mut => VT.CommitAndUpdateDerived(ref this, commitOptions, applyOptions, out derivedObjectsResult);

			[CRepr]
			public struct VTable : IFsrmQuotaObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmAutoApplyQuota self, out SAFEARRAY* folders) get_ExcludeFolders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmAutoApplyQuota self, ref SAFEARRAY folders) put_ExcludeFolders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmAutoApplyQuota self, FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, out IFsrmDerivedObjectsResult* derivedObjectsResult) CommitAndUpdateDerived;
			}
		}
		[CRepr]
		public struct IFsrmQuotaManager : IDispatch
		{
			public const new Guid IID = .(0x8bb68c7d, 0x19d8, 0x4ffb, 0x80, 0x9e, 0xbe, 0x4f, 0xc1, 0x73, 0x40, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ActionVariables(out SAFEARRAY* variables) mut => VT.get_ActionVariables(ref this, out variables);
			public HRESULT get_ActionVariableDescriptions(out SAFEARRAY* descriptions) mut => VT.get_ActionVariableDescriptions(ref this, out descriptions);
			public HRESULT CreateQuota(BSTR path, out IFsrmQuota* quota) mut => VT.CreateQuota(ref this, path, out quota);
			public HRESULT CreateAutoApplyQuota(BSTR quotaTemplateName, BSTR path, out IFsrmAutoApplyQuota* quota) mut => VT.CreateAutoApplyQuota(ref this, quotaTemplateName, path, out quota);
			public HRESULT GetQuota(BSTR path, out IFsrmQuota* quota) mut => VT.GetQuota(ref this, path, out quota);
			public HRESULT GetAutoApplyQuota(BSTR path, out IFsrmAutoApplyQuota* quota) mut => VT.GetAutoApplyQuota(ref this, path, out quota);
			public HRESULT GetRestrictiveQuota(BSTR path, out IFsrmQuota* quota) mut => VT.GetRestrictiveQuota(ref this, path, out quota);
			public HRESULT EnumQuotas(BSTR path, FsrmEnumOptions options, out IFsrmCommittableCollection* quotas) mut => VT.EnumQuotas(ref this, path, options, out quotas);
			public HRESULT EnumAutoApplyQuotas(BSTR path, FsrmEnumOptions options, out IFsrmCommittableCollection* quotas) mut => VT.EnumAutoApplyQuotas(ref this, path, options, out quotas);
			public HRESULT EnumEffectiveQuotas(BSTR path, FsrmEnumOptions options, out IFsrmCommittableCollection* quotas) mut => VT.EnumEffectiveQuotas(ref this, path, options, out quotas);
			public HRESULT Scan(BSTR strPath) mut => VT.Scan(ref this, strPath);
			public HRESULT CreateQuotaCollection(out IFsrmCommittableCollection* collection) mut => VT.CreateQuotaCollection(ref this, out collection);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaManager self, out SAFEARRAY* variables) get_ActionVariables;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaManager self, out SAFEARRAY* descriptions) get_ActionVariableDescriptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaManager self, BSTR path, out IFsrmQuota* quota) CreateQuota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaManager self, BSTR quotaTemplateName, BSTR path, out IFsrmAutoApplyQuota* quota) CreateAutoApplyQuota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaManager self, BSTR path, out IFsrmQuota* quota) GetQuota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaManager self, BSTR path, out IFsrmAutoApplyQuota* quota) GetAutoApplyQuota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaManager self, BSTR path, out IFsrmQuota* quota) GetRestrictiveQuota;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaManager self, BSTR path, FsrmEnumOptions options, out IFsrmCommittableCollection* quotas) EnumQuotas;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaManager self, BSTR path, FsrmEnumOptions options, out IFsrmCommittableCollection* quotas) EnumAutoApplyQuotas;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaManager self, BSTR path, FsrmEnumOptions options, out IFsrmCommittableCollection* quotas) EnumEffectiveQuotas;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaManager self, BSTR strPath) Scan;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaManager self, out IFsrmCommittableCollection* collection) CreateQuotaCollection;
			}
		}
		[CRepr]
		public struct IFsrmQuotaManagerEx : IFsrmQuotaManager
		{
			public const new Guid IID = .(0x4846cb01, 0xd430, 0x494f, 0xab, 0xb4, 0xb1, 0x05, 0x49, 0x99, 0xfb, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsAffectedByQuota(BSTR path, FsrmEnumOptions options, out int16 affected) mut => VT.IsAffectedByQuota(ref this, path, options, out affected);

			[CRepr]
			public struct VTable : IFsrmQuotaManager.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaManagerEx self, BSTR path, FsrmEnumOptions options, out int16 affected) IsAffectedByQuota;
			}
		}
		[CRepr]
		public struct IFsrmQuotaTemplate : IFsrmQuotaBase
		{
			public const new Guid IID = .(0xa2efab31, 0x295e, 0x46bb, 0xb9, 0x76, 0xe8, 0x6d, 0x58, 0xb5, 0x2e, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT CopyTemplate(BSTR quotaTemplateName) mut => VT.CopyTemplate(ref this, quotaTemplateName);
			public HRESULT CommitAndUpdateDerived(FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, out IFsrmDerivedObjectsResult* derivedObjectsResult) mut => VT.CommitAndUpdateDerived(ref this, commitOptions, applyOptions, out derivedObjectsResult);

			[CRepr]
			public struct VTable : IFsrmQuotaBase.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaTemplate self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaTemplate self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaTemplate self, BSTR quotaTemplateName) CopyTemplate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaTemplate self, FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, out IFsrmDerivedObjectsResult* derivedObjectsResult) CommitAndUpdateDerived;
			}
		}
		[CRepr]
		public struct IFsrmQuotaTemplateImported : IFsrmQuotaTemplate
		{
			public const new Guid IID = .(0x9a2bf113, 0xa329, 0x44cc, 0x80, 0x9a, 0x5c, 0x00, 0xfc, 0xe8, 0xda, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OverwriteOnCommit(out int16 overwrite) mut => VT.get_OverwriteOnCommit(ref this, out overwrite);
			public HRESULT put_OverwriteOnCommit(int16 overwrite) mut => VT.put_OverwriteOnCommit(ref this, overwrite);

			[CRepr]
			public struct VTable : IFsrmQuotaTemplate.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaTemplateImported self, out int16 overwrite) get_OverwriteOnCommit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaTemplateImported self, int16 overwrite) put_OverwriteOnCommit;
			}
		}
		[CRepr]
		public struct IFsrmQuotaTemplateManager : IDispatch
		{
			public const new Guid IID = .(0x4173ac41, 0x172d, 0x4d52, 0x96, 0x3c, 0xfd, 0xc7, 0xe4, 0x15, 0xf7, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTemplate(out IFsrmQuotaTemplate* quotaTemplate) mut => VT.CreateTemplate(ref this, out quotaTemplate);
			public HRESULT GetTemplate(BSTR name, out IFsrmQuotaTemplate* quotaTemplate) mut => VT.GetTemplate(ref this, name, out quotaTemplate);
			public HRESULT EnumTemplates(FsrmEnumOptions options, out IFsrmCommittableCollection* quotaTemplates) mut => VT.EnumTemplates(ref this, options, out quotaTemplates);
			public HRESULT ExportTemplates(ref VARIANT quotaTemplateNamesArray, out BSTR serializedQuotaTemplates) mut => VT.ExportTemplates(ref this, ref quotaTemplateNamesArray, out serializedQuotaTemplates);
			public HRESULT ImportTemplates(BSTR serializedQuotaTemplates, ref VARIANT quotaTemplateNamesArray, out IFsrmCommittableCollection* quotaTemplates) mut => VT.ImportTemplates(ref this, serializedQuotaTemplates, ref quotaTemplateNamesArray, out quotaTemplates);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaTemplateManager self, out IFsrmQuotaTemplate* quotaTemplate) CreateTemplate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaTemplateManager self, BSTR name, out IFsrmQuotaTemplate* quotaTemplate) GetTemplate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaTemplateManager self, FsrmEnumOptions options, out IFsrmCommittableCollection* quotaTemplates) EnumTemplates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaTemplateManager self, ref VARIANT quotaTemplateNamesArray, out BSTR serializedQuotaTemplates) ExportTemplates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmQuotaTemplateManager self, BSTR serializedQuotaTemplates, ref VARIANT quotaTemplateNamesArray, out IFsrmCommittableCollection* quotaTemplates) ImportTemplates;
			}
		}
		[CRepr]
		public struct IFsrmFileGroup : IFsrmObject
		{
			public const new Guid IID = .(0x8dd04909, 0x0e34, 0x4d55, 0xaf, 0xaa, 0x89, 0xe1, 0xf1, 0xa1, 0xbb, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT get_Members(out IFsrmMutableCollection* members) mut => VT.get_Members(ref this, out members);
			public HRESULT put_Members(ref IFsrmMutableCollection members) mut => VT.put_Members(ref this, ref members);
			public HRESULT get_NonMembers(out IFsrmMutableCollection* nonMembers) mut => VT.get_NonMembers(ref this, out nonMembers);
			public HRESULT put_NonMembers(ref IFsrmMutableCollection nonMembers) mut => VT.put_NonMembers(ref this, ref nonMembers);

			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileGroup self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileGroup self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileGroup self, out IFsrmMutableCollection* members) get_Members;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileGroup self, ref IFsrmMutableCollection members) put_Members;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileGroup self, out IFsrmMutableCollection* nonMembers) get_NonMembers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileGroup self, ref IFsrmMutableCollection nonMembers) put_NonMembers;
			}
		}
		[CRepr]
		public struct IFsrmFileGroupImported : IFsrmFileGroup
		{
			public const new Guid IID = .(0xad55f10b, 0x5f11, 0x4be7, 0x94, 0xef, 0xd9, 0xee, 0x2e, 0x47, 0x0d, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OverwriteOnCommit(out int16 overwrite) mut => VT.get_OverwriteOnCommit(ref this, out overwrite);
			public HRESULT put_OverwriteOnCommit(int16 overwrite) mut => VT.put_OverwriteOnCommit(ref this, overwrite);

			[CRepr]
			public struct VTable : IFsrmFileGroup.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileGroupImported self, out int16 overwrite) get_OverwriteOnCommit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileGroupImported self, int16 overwrite) put_OverwriteOnCommit;
			}
		}
		[CRepr]
		public struct IFsrmFileGroupManager : IDispatch
		{
			public const new Guid IID = .(0x426677d5, 0x018c, 0x485c, 0x8a, 0x51, 0x20, 0xb8, 0x6d, 0x00, 0xbd, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFileGroup(out IFsrmFileGroup* fileGroup) mut => VT.CreateFileGroup(ref this, out fileGroup);
			public HRESULT GetFileGroup(BSTR name, out IFsrmFileGroup* fileGroup) mut => VT.GetFileGroup(ref this, name, out fileGroup);
			public HRESULT EnumFileGroups(FsrmEnumOptions options, out IFsrmCommittableCollection* fileGroups) mut => VT.EnumFileGroups(ref this, options, out fileGroups);
			public HRESULT ExportFileGroups(ref VARIANT fileGroupNamesArray, out BSTR serializedFileGroups) mut => VT.ExportFileGroups(ref this, ref fileGroupNamesArray, out serializedFileGroups);
			public HRESULT ImportFileGroups(BSTR serializedFileGroups, ref VARIANT fileGroupNamesArray, out IFsrmCommittableCollection* fileGroups) mut => VT.ImportFileGroups(ref this, serializedFileGroups, ref fileGroupNamesArray, out fileGroups);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileGroupManager self, out IFsrmFileGroup* fileGroup) CreateFileGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileGroupManager self, BSTR name, out IFsrmFileGroup* fileGroup) GetFileGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileGroupManager self, FsrmEnumOptions options, out IFsrmCommittableCollection* fileGroups) EnumFileGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileGroupManager self, ref VARIANT fileGroupNamesArray, out BSTR serializedFileGroups) ExportFileGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileGroupManager self, BSTR serializedFileGroups, ref VARIANT fileGroupNamesArray, out IFsrmCommittableCollection* fileGroups) ImportFileGroups;
			}
		}
		[CRepr]
		public struct IFsrmFileScreenBase : IFsrmObject
		{
			public const new Guid IID = .(0xf3637e80, 0x5b22, 0x4a2b, 0xa6, 0x37, 0xbb, 0xb6, 0x42, 0xb4, 0x1c, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BlockedFileGroups(out IFsrmMutableCollection* blockList) mut => VT.get_BlockedFileGroups(ref this, out blockList);
			public HRESULT put_BlockedFileGroups(ref IFsrmMutableCollection blockList) mut => VT.put_BlockedFileGroups(ref this, ref blockList);
			public HRESULT get_FileScreenFlags(out int32 fileScreenFlags) mut => VT.get_FileScreenFlags(ref this, out fileScreenFlags);
			public HRESULT put_FileScreenFlags(int32 fileScreenFlags) mut => VT.put_FileScreenFlags(ref this, fileScreenFlags);
			public HRESULT CreateAction(FsrmActionType actionType, out IFsrmAction* action) mut => VT.CreateAction(ref this, actionType, out action);
			public HRESULT EnumActions(out IFsrmCollection* actions) mut => VT.EnumActions(ref this, out actions);

			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenBase self, out IFsrmMutableCollection* blockList) get_BlockedFileGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenBase self, ref IFsrmMutableCollection blockList) put_BlockedFileGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenBase self, out int32 fileScreenFlags) get_FileScreenFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenBase self, int32 fileScreenFlags) put_FileScreenFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenBase self, FsrmActionType actionType, out IFsrmAction* action) CreateAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenBase self, out IFsrmCollection* actions) EnumActions;
			}
		}
		[CRepr]
		public struct IFsrmFileScreen : IFsrmFileScreenBase
		{
			public const new Guid IID = .(0x5f6325d3, 0xce88, 0x4733, 0x84, 0xc1, 0x2d, 0x6a, 0xef, 0xc5, 0xea, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(out BSTR path) mut => VT.get_Path(ref this, out path);
			public HRESULT get_SourceTemplateName(out BSTR fileScreenTemplateName) mut => VT.get_SourceTemplateName(ref this, out fileScreenTemplateName);
			public HRESULT get_MatchesSourceTemplate(out int16 matches) mut => VT.get_MatchesSourceTemplate(ref this, out matches);
			public HRESULT get_UserSid(out BSTR userSid) mut => VT.get_UserSid(ref this, out userSid);
			public HRESULT get_UserAccount(out BSTR userAccount) mut => VT.get_UserAccount(ref this, out userAccount);
			public HRESULT ApplyTemplate(BSTR fileScreenTemplateName) mut => VT.ApplyTemplate(ref this, fileScreenTemplateName);

			[CRepr]
			public struct VTable : IFsrmFileScreenBase.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreen self, out BSTR path) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreen self, out BSTR fileScreenTemplateName) get_SourceTemplateName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreen self, out int16 matches) get_MatchesSourceTemplate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreen self, out BSTR userSid) get_UserSid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreen self, out BSTR userAccount) get_UserAccount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreen self, BSTR fileScreenTemplateName) ApplyTemplate;
			}
		}
		[CRepr]
		public struct IFsrmFileScreenException : IFsrmObject
		{
			public const new Guid IID = .(0xbee7ce02, 0xdf77, 0x4515, 0x93, 0x89, 0x78, 0xf0, 0x1c, 0x5a, 0xfc, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(out BSTR path) mut => VT.get_Path(ref this, out path);
			public HRESULT get_AllowedFileGroups(out IFsrmMutableCollection* allowList) mut => VT.get_AllowedFileGroups(ref this, out allowList);
			public HRESULT put_AllowedFileGroups(ref IFsrmMutableCollection allowList) mut => VT.put_AllowedFileGroups(ref this, ref allowList);

			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenException self, out BSTR path) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenException self, out IFsrmMutableCollection* allowList) get_AllowedFileGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenException self, ref IFsrmMutableCollection allowList) put_AllowedFileGroups;
			}
		}
		[CRepr]
		public struct IFsrmFileScreenManager : IDispatch
		{
			public const new Guid IID = .(0xff4fa04e, 0x5a94, 0x4bda, 0xa3, 0xa0, 0xd5, 0xb4, 0xd3, 0xc5, 0x2e, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ActionVariables(out SAFEARRAY* variables) mut => VT.get_ActionVariables(ref this, out variables);
			public HRESULT get_ActionVariableDescriptions(out SAFEARRAY* descriptions) mut => VT.get_ActionVariableDescriptions(ref this, out descriptions);
			public HRESULT CreateFileScreen(BSTR path, out IFsrmFileScreen* fileScreen) mut => VT.CreateFileScreen(ref this, path, out fileScreen);
			public HRESULT GetFileScreen(BSTR path, out IFsrmFileScreen* fileScreen) mut => VT.GetFileScreen(ref this, path, out fileScreen);
			public HRESULT EnumFileScreens(BSTR path, FsrmEnumOptions options, out IFsrmCommittableCollection* fileScreens) mut => VT.EnumFileScreens(ref this, path, options, out fileScreens);
			public HRESULT CreateFileScreenException(BSTR path, out IFsrmFileScreenException* fileScreenException) mut => VT.CreateFileScreenException(ref this, path, out fileScreenException);
			public HRESULT GetFileScreenException(BSTR path, out IFsrmFileScreenException* fileScreenException) mut => VT.GetFileScreenException(ref this, path, out fileScreenException);
			public HRESULT EnumFileScreenExceptions(BSTR path, FsrmEnumOptions options, out IFsrmCommittableCollection* fileScreenExceptions) mut => VT.EnumFileScreenExceptions(ref this, path, options, out fileScreenExceptions);
			public HRESULT CreateFileScreenCollection(out IFsrmCommittableCollection* collection) mut => VT.CreateFileScreenCollection(ref this, out collection);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenManager self, out SAFEARRAY* variables) get_ActionVariables;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenManager self, out SAFEARRAY* descriptions) get_ActionVariableDescriptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenManager self, BSTR path, out IFsrmFileScreen* fileScreen) CreateFileScreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenManager self, BSTR path, out IFsrmFileScreen* fileScreen) GetFileScreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenManager self, BSTR path, FsrmEnumOptions options, out IFsrmCommittableCollection* fileScreens) EnumFileScreens;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenManager self, BSTR path, out IFsrmFileScreenException* fileScreenException) CreateFileScreenException;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenManager self, BSTR path, out IFsrmFileScreenException* fileScreenException) GetFileScreenException;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenManager self, BSTR path, FsrmEnumOptions options, out IFsrmCommittableCollection* fileScreenExceptions) EnumFileScreenExceptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenManager self, out IFsrmCommittableCollection* collection) CreateFileScreenCollection;
			}
		}
		[CRepr]
		public struct IFsrmFileScreenTemplate : IFsrmFileScreenBase
		{
			public const new Guid IID = .(0x205bebf8, 0xdd93, 0x452a, 0x95, 0xa6, 0x32, 0xb5, 0x66, 0xb3, 0x58, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT CopyTemplate(BSTR fileScreenTemplateName) mut => VT.CopyTemplate(ref this, fileScreenTemplateName);
			public HRESULT CommitAndUpdateDerived(FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, out IFsrmDerivedObjectsResult* derivedObjectsResult) mut => VT.CommitAndUpdateDerived(ref this, commitOptions, applyOptions, out derivedObjectsResult);

			[CRepr]
			public struct VTable : IFsrmFileScreenBase.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenTemplate self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenTemplate self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenTemplate self, BSTR fileScreenTemplateName) CopyTemplate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenTemplate self, FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, out IFsrmDerivedObjectsResult* derivedObjectsResult) CommitAndUpdateDerived;
			}
		}
		[CRepr]
		public struct IFsrmFileScreenTemplateImported : IFsrmFileScreenTemplate
		{
			public const new Guid IID = .(0xe1010359, 0x3e5d, 0x4ecd, 0x9f, 0xe4, 0xef, 0x48, 0x62, 0x2f, 0xdf, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OverwriteOnCommit(out int16 overwrite) mut => VT.get_OverwriteOnCommit(ref this, out overwrite);
			public HRESULT put_OverwriteOnCommit(int16 overwrite) mut => VT.put_OverwriteOnCommit(ref this, overwrite);

			[CRepr]
			public struct VTable : IFsrmFileScreenTemplate.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenTemplateImported self, out int16 overwrite) get_OverwriteOnCommit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenTemplateImported self, int16 overwrite) put_OverwriteOnCommit;
			}
		}
		[CRepr]
		public struct IFsrmFileScreenTemplateManager : IDispatch
		{
			public const new Guid IID = .(0xcfe36cba, 0x1949, 0x4e74, 0xa1, 0x4f, 0xf1, 0xd5, 0x80, 0xce, 0xaf, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTemplate(out IFsrmFileScreenTemplate* fileScreenTemplate) mut => VT.CreateTemplate(ref this, out fileScreenTemplate);
			public HRESULT GetTemplate(BSTR name, out IFsrmFileScreenTemplate* fileScreenTemplate) mut => VT.GetTemplate(ref this, name, out fileScreenTemplate);
			public HRESULT EnumTemplates(FsrmEnumOptions options, out IFsrmCommittableCollection* fileScreenTemplates) mut => VT.EnumTemplates(ref this, options, out fileScreenTemplates);
			public HRESULT ExportTemplates(ref VARIANT fileScreenTemplateNamesArray, out BSTR serializedFileScreenTemplates) mut => VT.ExportTemplates(ref this, ref fileScreenTemplateNamesArray, out serializedFileScreenTemplates);
			public HRESULT ImportTemplates(BSTR serializedFileScreenTemplates, ref VARIANT fileScreenTemplateNamesArray, out IFsrmCommittableCollection* fileScreenTemplates) mut => VT.ImportTemplates(ref this, serializedFileScreenTemplates, ref fileScreenTemplateNamesArray, out fileScreenTemplates);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenTemplateManager self, out IFsrmFileScreenTemplate* fileScreenTemplate) CreateTemplate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenTemplateManager self, BSTR name, out IFsrmFileScreenTemplate* fileScreenTemplate) GetTemplate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenTemplateManager self, FsrmEnumOptions options, out IFsrmCommittableCollection* fileScreenTemplates) EnumTemplates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenTemplateManager self, ref VARIANT fileScreenTemplateNamesArray, out BSTR serializedFileScreenTemplates) ExportTemplates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileScreenTemplateManager self, BSTR serializedFileScreenTemplates, ref VARIANT fileScreenTemplateNamesArray, out IFsrmCommittableCollection* fileScreenTemplates) ImportTemplates;
			}
		}
		[CRepr]
		public struct IFsrmReportManager : IDispatch
		{
			public const new Guid IID = .(0x27b899fe, 0x6ffa, 0x4481, 0xa1, 0x84, 0xd3, 0xda, 0xad, 0xe8, 0xa0, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumReportJobs(FsrmEnumOptions options, out IFsrmCollection* reportJobs) mut => VT.EnumReportJobs(ref this, options, out reportJobs);
			public HRESULT CreateReportJob(out IFsrmReportJob* reportJob) mut => VT.CreateReportJob(ref this, out reportJob);
			public HRESULT GetReportJob(BSTR taskName, out IFsrmReportJob* reportJob) mut => VT.GetReportJob(ref this, taskName, out reportJob);
			public HRESULT GetOutputDirectory(FsrmReportGenerationContext context, out BSTR path) mut => VT.GetOutputDirectory(ref this, context, out path);
			public HRESULT SetOutputDirectory(FsrmReportGenerationContext context, BSTR path) mut => VT.SetOutputDirectory(ref this, context, path);
			public HRESULT IsFilterValidForReportType(FsrmReportType reportType, FsrmReportFilter filter, out int16 valid) mut => VT.IsFilterValidForReportType(ref this, reportType, filter, out valid);
			public HRESULT GetDefaultFilter(FsrmReportType reportType, FsrmReportFilter filter, out VARIANT filterValue) mut => VT.GetDefaultFilter(ref this, reportType, filter, out filterValue);
			public HRESULT SetDefaultFilter(FsrmReportType reportType, FsrmReportFilter filter, VARIANT filterValue) mut => VT.SetDefaultFilter(ref this, reportType, filter, filterValue);
			public HRESULT GetReportSizeLimit(FsrmReportLimit limit, out VARIANT limitValue) mut => VT.GetReportSizeLimit(ref this, limit, out limitValue);
			public HRESULT SetReportSizeLimit(FsrmReportLimit limit, VARIANT limitValue) mut => VT.SetReportSizeLimit(ref this, limit, limitValue);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportManager self, FsrmEnumOptions options, out IFsrmCollection* reportJobs) EnumReportJobs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportManager self, out IFsrmReportJob* reportJob) CreateReportJob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportManager self, BSTR taskName, out IFsrmReportJob* reportJob) GetReportJob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportManager self, FsrmReportGenerationContext context, out BSTR path) GetOutputDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportManager self, FsrmReportGenerationContext context, BSTR path) SetOutputDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportManager self, FsrmReportType reportType, FsrmReportFilter filter, out int16 valid) IsFilterValidForReportType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportManager self, FsrmReportType reportType, FsrmReportFilter filter, out VARIANT filterValue) GetDefaultFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportManager self, FsrmReportType reportType, FsrmReportFilter filter, VARIANT filterValue) SetDefaultFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportManager self, FsrmReportLimit limit, out VARIANT limitValue) GetReportSizeLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportManager self, FsrmReportLimit limit, VARIANT limitValue) SetReportSizeLimit;
			}
		}
		[CRepr]
		public struct IFsrmReportJob : IFsrmObject
		{
			public const new Guid IID = .(0x38e87280, 0x715c, 0x4c7d, 0xa2, 0x80, 0xea, 0x16, 0x51, 0xa1, 0x9f, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Task(out BSTR taskName) mut => VT.get_Task(ref this, out taskName);
			public HRESULT put_Task(BSTR taskName) mut => VT.put_Task(ref this, taskName);
			public HRESULT get_NamespaceRoots(out SAFEARRAY* namespaceRoots) mut => VT.get_NamespaceRoots(ref this, out namespaceRoots);
			public HRESULT put_NamespaceRoots(ref SAFEARRAY namespaceRoots) mut => VT.put_NamespaceRoots(ref this, ref namespaceRoots);
			public HRESULT get_Formats(out SAFEARRAY* formats) mut => VT.get_Formats(ref this, out formats);
			public HRESULT put_Formats(ref SAFEARRAY formats) mut => VT.put_Formats(ref this, ref formats);
			public HRESULT get_MailTo(out BSTR mailTo) mut => VT.get_MailTo(ref this, out mailTo);
			public HRESULT put_MailTo(BSTR mailTo) mut => VT.put_MailTo(ref this, mailTo);
			public HRESULT get_RunningStatus(out FsrmReportRunningStatus runningStatus) mut => VT.get_RunningStatus(ref this, out runningStatus);
			public HRESULT get_LastRun(out double lastRun) mut => VT.get_LastRun(ref this, out lastRun);
			public HRESULT get_LastError(out BSTR lastError) mut => VT.get_LastError(ref this, out lastError);
			public HRESULT get_LastGeneratedInDirectory(out BSTR path) mut => VT.get_LastGeneratedInDirectory(ref this, out path);
			public HRESULT EnumReports(out IFsrmCollection* reports) mut => VT.EnumReports(ref this, out reports);
			public HRESULT CreateReport(FsrmReportType reportType, out IFsrmReport* report) mut => VT.CreateReport(ref this, reportType, out report);
			public HRESULT Run(FsrmReportGenerationContext context) mut => VT.Run(ref this, context);
			public HRESULT WaitForCompletion(int32 waitSeconds, out int16 completed) mut => VT.WaitForCompletion(ref this, waitSeconds, out completed);
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, out BSTR taskName) get_Task;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, BSTR taskName) put_Task;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, out SAFEARRAY* namespaceRoots) get_NamespaceRoots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, ref SAFEARRAY namespaceRoots) put_NamespaceRoots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, out SAFEARRAY* formats) get_Formats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, ref SAFEARRAY formats) put_Formats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, out BSTR mailTo) get_MailTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, BSTR mailTo) put_MailTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, out FsrmReportRunningStatus runningStatus) get_RunningStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, out double lastRun) get_LastRun;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, out BSTR lastError) get_LastError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, out BSTR path) get_LastGeneratedInDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, out IFsrmCollection* reports) EnumReports;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, FsrmReportType reportType, out IFsrmReport* report) CreateReport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, FsrmReportGenerationContext context) Run;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self, int32 waitSeconds, out int16 completed) WaitForCompletion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportJob self) Cancel;
			}
		}
		[CRepr]
		public struct IFsrmReport : IDispatch
		{
			public const new Guid IID = .(0xd8cc81d9, 0x46b8, 0x4fa4, 0xbf, 0xa5, 0x4a, 0xa9, 0xde, 0xc9, 0xb6, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(out FsrmReportType reportType) mut => VT.get_Type(ref this, out reportType);
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT get_Description(out BSTR description) mut => VT.get_Description(ref this, out description);
			public HRESULT put_Description(BSTR description) mut => VT.put_Description(ref this, description);
			public HRESULT get_LastGeneratedFileNamePrefix(out BSTR prefix) mut => VT.get_LastGeneratedFileNamePrefix(ref this, out prefix);
			public HRESULT GetFilter(FsrmReportFilter filter, out VARIANT filterValue) mut => VT.GetFilter(ref this, filter, out filterValue);
			public HRESULT SetFilter(FsrmReportFilter filter, VARIANT filterValue) mut => VT.SetFilter(ref this, filter, filterValue);
			public HRESULT Delete() mut => VT.Delete(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReport self, out FsrmReportType reportType) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReport self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReport self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReport self, out BSTR description) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReport self, BSTR description) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReport self, out BSTR prefix) get_LastGeneratedFileNamePrefix;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReport self, FsrmReportFilter filter, out VARIANT filterValue) GetFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReport self, FsrmReportFilter filter, VARIANT filterValue) SetFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReport self) Delete;
			}
		}
		[CRepr]
		public struct IFsrmReportScheduler : IDispatch
		{
			public const new Guid IID = .(0x6879caf9, 0x6617, 0x4484, 0x87, 0x19, 0x71, 0xc3, 0xd8, 0x64, 0x5f, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT VerifyNamespaces(ref VARIANT namespacesSafeArray) mut => VT.VerifyNamespaces(ref this, ref namespacesSafeArray);
			public HRESULT CreateScheduleTask(BSTR taskName, ref VARIANT namespacesSafeArray, BSTR serializedTask) mut => VT.CreateScheduleTask(ref this, taskName, ref namespacesSafeArray, serializedTask);
			public HRESULT ModifyScheduleTask(BSTR taskName, ref VARIANT namespacesSafeArray, BSTR serializedTask) mut => VT.ModifyScheduleTask(ref this, taskName, ref namespacesSafeArray, serializedTask);
			public HRESULT DeleteScheduleTask(BSTR taskName) mut => VT.DeleteScheduleTask(ref this, taskName);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportScheduler self, ref VARIANT namespacesSafeArray) VerifyNamespaces;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportScheduler self, BSTR taskName, ref VARIANT namespacesSafeArray, BSTR serializedTask) CreateScheduleTask;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportScheduler self, BSTR taskName, ref VARIANT namespacesSafeArray, BSTR serializedTask) ModifyScheduleTask;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmReportScheduler self, BSTR taskName) DeleteScheduleTask;
			}
		}
		[CRepr]
		public struct IFsrmFileManagementJobManager : IDispatch
		{
			public const new Guid IID = .(0xee321ecb, 0xd95e, 0x48e9, 0x90, 0x7c, 0xc7, 0x68, 0x5a, 0x01, 0x32, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ActionVariables(out SAFEARRAY* variables) mut => VT.get_ActionVariables(ref this, out variables);
			public HRESULT get_ActionVariableDescriptions(out SAFEARRAY* descriptions) mut => VT.get_ActionVariableDescriptions(ref this, out descriptions);
			public HRESULT EnumFileManagementJobs(FsrmEnumOptions options, out IFsrmCollection* fileManagementJobs) mut => VT.EnumFileManagementJobs(ref this, options, out fileManagementJobs);
			public HRESULT CreateFileManagementJob(out IFsrmFileManagementJob* fileManagementJob) mut => VT.CreateFileManagementJob(ref this, out fileManagementJob);
			public HRESULT GetFileManagementJob(BSTR name, out IFsrmFileManagementJob* fileManagementJob) mut => VT.GetFileManagementJob(ref this, name, out fileManagementJob);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJobManager self, out SAFEARRAY* variables) get_ActionVariables;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJobManager self, out SAFEARRAY* descriptions) get_ActionVariableDescriptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJobManager self, FsrmEnumOptions options, out IFsrmCollection* fileManagementJobs) EnumFileManagementJobs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJobManager self, out IFsrmFileManagementJob* fileManagementJob) CreateFileManagementJob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJobManager self, BSTR name, out IFsrmFileManagementJob* fileManagementJob) GetFileManagementJob;
			}
		}
		[CRepr]
		public struct IFsrmFileManagementJob : IFsrmObject
		{
			public const new Guid IID = .(0x0770687e, 0x9f36, 0x4d6f, 0x87, 0x78, 0x59, 0x9d, 0x18, 0x84, 0x61, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT get_NamespaceRoots(out SAFEARRAY* namespaceRoots) mut => VT.get_NamespaceRoots(ref this, out namespaceRoots);
			public HRESULT put_NamespaceRoots(ref SAFEARRAY namespaceRoots) mut => VT.put_NamespaceRoots(ref this, ref namespaceRoots);
			public HRESULT get_Enabled(out int16 enabled) mut => VT.get_Enabled(ref this, out enabled);
			public HRESULT put_Enabled(int16 enabled) mut => VT.put_Enabled(ref this, enabled);
			public HRESULT get_OperationType(out FsrmFileManagementType operationType) mut => VT.get_OperationType(ref this, out operationType);
			public HRESULT put_OperationType(FsrmFileManagementType operationType) mut => VT.put_OperationType(ref this, operationType);
			public HRESULT get_ExpirationDirectory(out BSTR expirationDirectory) mut => VT.get_ExpirationDirectory(ref this, out expirationDirectory);
			public HRESULT put_ExpirationDirectory(BSTR expirationDirectory) mut => VT.put_ExpirationDirectory(ref this, expirationDirectory);
			public HRESULT get_CustomAction(out IFsrmActionCommand* action) mut => VT.get_CustomAction(ref this, out action);
			public HRESULT get_Notifications(out SAFEARRAY* notifications) mut => VT.get_Notifications(ref this, out notifications);
			public HRESULT get_Logging(out int32 loggingFlags) mut => VT.get_Logging(ref this, out loggingFlags);
			public HRESULT put_Logging(int32 loggingFlags) mut => VT.put_Logging(ref this, loggingFlags);
			public HRESULT get_ReportEnabled(out int16 reportEnabled) mut => VT.get_ReportEnabled(ref this, out reportEnabled);
			public HRESULT put_ReportEnabled(int16 reportEnabled) mut => VT.put_ReportEnabled(ref this, reportEnabled);
			public HRESULT get_Formats(out SAFEARRAY* formats) mut => VT.get_Formats(ref this, out formats);
			public HRESULT put_Formats(ref SAFEARRAY formats) mut => VT.put_Formats(ref this, ref formats);
			public HRESULT get_MailTo(out BSTR mailTo) mut => VT.get_MailTo(ref this, out mailTo);
			public HRESULT put_MailTo(BSTR mailTo) mut => VT.put_MailTo(ref this, mailTo);
			public HRESULT get_DaysSinceFileCreated(out int32 daysSinceCreation) mut => VT.get_DaysSinceFileCreated(ref this, out daysSinceCreation);
			public HRESULT put_DaysSinceFileCreated(int32 daysSinceCreation) mut => VT.put_DaysSinceFileCreated(ref this, daysSinceCreation);
			public HRESULT get_DaysSinceFileLastAccessed(out int32 daysSinceAccess) mut => VT.get_DaysSinceFileLastAccessed(ref this, out daysSinceAccess);
			public HRESULT put_DaysSinceFileLastAccessed(int32 daysSinceAccess) mut => VT.put_DaysSinceFileLastAccessed(ref this, daysSinceAccess);
			public HRESULT get_DaysSinceFileLastModified(out int32 daysSinceModify) mut => VT.get_DaysSinceFileLastModified(ref this, out daysSinceModify);
			public HRESULT put_DaysSinceFileLastModified(int32 daysSinceModify) mut => VT.put_DaysSinceFileLastModified(ref this, daysSinceModify);
			public HRESULT get_PropertyConditions(out IFsrmCollection* propertyConditions) mut => VT.get_PropertyConditions(ref this, out propertyConditions);
			public HRESULT get_FromDate(out double fromDate) mut => VT.get_FromDate(ref this, out fromDate);
			public HRESULT put_FromDate(double fromDate) mut => VT.put_FromDate(ref this, fromDate);
			public HRESULT get_Task(out BSTR taskName) mut => VT.get_Task(ref this, out taskName);
			public HRESULT put_Task(BSTR taskName) mut => VT.put_Task(ref this, taskName);
			public HRESULT get_Parameters(out SAFEARRAY* parameters) mut => VT.get_Parameters(ref this, out parameters);
			public HRESULT put_Parameters(ref SAFEARRAY parameters) mut => VT.put_Parameters(ref this, ref parameters);
			public HRESULT get_RunningStatus(out FsrmReportRunningStatus runningStatus) mut => VT.get_RunningStatus(ref this, out runningStatus);
			public HRESULT get_LastError(out BSTR lastError) mut => VT.get_LastError(ref this, out lastError);
			public HRESULT get_LastReportPathWithoutExtension(out BSTR path) mut => VT.get_LastReportPathWithoutExtension(ref this, out path);
			public HRESULT get_LastRun(out double lastRun) mut => VT.get_LastRun(ref this, out lastRun);
			public HRESULT get_FileNamePattern(out BSTR fileNamePattern) mut => VT.get_FileNamePattern(ref this, out fileNamePattern);
			public HRESULT put_FileNamePattern(BSTR fileNamePattern) mut => VT.put_FileNamePattern(ref this, fileNamePattern);
			public HRESULT Run(FsrmReportGenerationContext context) mut => VT.Run(ref this, context);
			public HRESULT WaitForCompletion(int32 waitSeconds, out int16 completed) mut => VT.WaitForCompletion(ref this, waitSeconds, out completed);
			public HRESULT Cancel() mut => VT.Cancel(ref this);
			public HRESULT AddNotification(int32 days) mut => VT.AddNotification(ref this, days);
			public HRESULT DeleteNotification(int32 days) mut => VT.DeleteNotification(ref this, days);
			public HRESULT ModifyNotification(int32 days, int32 newDays) mut => VT.ModifyNotification(ref this, days, newDays);
			public HRESULT CreateNotificationAction(int32 days, FsrmActionType actionType, out IFsrmAction* action) mut => VT.CreateNotificationAction(ref this, days, actionType, out action);
			public HRESULT EnumNotificationActions(int32 days, out IFsrmCollection* actions) mut => VT.EnumNotificationActions(ref this, days, out actions);
			public HRESULT CreatePropertyCondition(BSTR name, out IFsrmPropertyCondition* propertyCondition) mut => VT.CreatePropertyCondition(ref this, name, out propertyCondition);
			public HRESULT CreateCustomAction(out IFsrmActionCommand* customAction) mut => VT.CreateCustomAction(ref this, out customAction);

			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out SAFEARRAY* namespaceRoots) get_NamespaceRoots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, ref SAFEARRAY namespaceRoots) put_NamespaceRoots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out int16 enabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, int16 enabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out FsrmFileManagementType operationType) get_OperationType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, FsrmFileManagementType operationType) put_OperationType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out BSTR expirationDirectory) get_ExpirationDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, BSTR expirationDirectory) put_ExpirationDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out IFsrmActionCommand* action) get_CustomAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out SAFEARRAY* notifications) get_Notifications;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out int32 loggingFlags) get_Logging;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, int32 loggingFlags) put_Logging;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out int16 reportEnabled) get_ReportEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, int16 reportEnabled) put_ReportEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out SAFEARRAY* formats) get_Formats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, ref SAFEARRAY formats) put_Formats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out BSTR mailTo) get_MailTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, BSTR mailTo) put_MailTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out int32 daysSinceCreation) get_DaysSinceFileCreated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, int32 daysSinceCreation) put_DaysSinceFileCreated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out int32 daysSinceAccess) get_DaysSinceFileLastAccessed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, int32 daysSinceAccess) put_DaysSinceFileLastAccessed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out int32 daysSinceModify) get_DaysSinceFileLastModified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, int32 daysSinceModify) put_DaysSinceFileLastModified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out IFsrmCollection* propertyConditions) get_PropertyConditions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out double fromDate) get_FromDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, double fromDate) put_FromDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out BSTR taskName) get_Task;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, BSTR taskName) put_Task;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out SAFEARRAY* parameters) get_Parameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, ref SAFEARRAY parameters) put_Parameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out FsrmReportRunningStatus runningStatus) get_RunningStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out BSTR lastError) get_LastError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out BSTR path) get_LastReportPathWithoutExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out double lastRun) get_LastRun;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out BSTR fileNamePattern) get_FileNamePattern;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, BSTR fileNamePattern) put_FileNamePattern;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, FsrmReportGenerationContext context) Run;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, int32 waitSeconds, out int16 completed) WaitForCompletion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, int32 days) AddNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, int32 days) DeleteNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, int32 days, int32 newDays) ModifyNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, int32 days, FsrmActionType actionType, out IFsrmAction* action) CreateNotificationAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, int32 days, out IFsrmCollection* actions) EnumNotificationActions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, BSTR name, out IFsrmPropertyCondition* propertyCondition) CreatePropertyCondition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileManagementJob self, out IFsrmActionCommand* customAction) CreateCustomAction;
			}
		}
		[CRepr]
		public struct IFsrmPropertyCondition : IDispatch
		{
			public const new Guid IID = .(0x326af66f, 0x2ac0, 0x4f68, 0xbf, 0x8c, 0x47, 0x59, 0xf0, 0x54, 0xfa, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT get_Type(out FsrmPropertyConditionType type) mut => VT.get_Type(ref this, out type);
			public HRESULT put_Type(FsrmPropertyConditionType type) mut => VT.put_Type(ref this, type);
			public HRESULT get_Value(out BSTR value) mut => VT.get_Value(ref this, out value);
			public HRESULT put_Value(BSTR value) mut => VT.put_Value(ref this, value);
			public HRESULT Delete() mut => VT.Delete(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyCondition self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyCondition self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyCondition self, out FsrmPropertyConditionType type) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyCondition self, FsrmPropertyConditionType type) put_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyCondition self, out BSTR value) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyCondition self, BSTR value) put_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyCondition self) Delete;
			}
		}
		[CRepr]
		public struct IFsrmFileCondition : IDispatch
		{
			public const new Guid IID = .(0x70684ffc, 0x691a, 0x4a1a, 0xb9, 0x22, 0x97, 0x75, 0x2e, 0x13, 0x8c, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(out FsrmFileConditionType pVal) mut => VT.get_Type(ref this, out pVal);
			public HRESULT Delete() mut => VT.Delete(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileCondition self, out FsrmFileConditionType pVal) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileCondition self) Delete;
			}
		}
		[CRepr]
		public struct IFsrmFileConditionProperty : IFsrmFileCondition
		{
			public const new Guid IID = .(0x81926775, 0xb981, 0x4479, 0x98, 0x8f, 0xda, 0x17, 0x1d, 0x62, 0x73, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PropertyName(out BSTR pVal) mut => VT.get_PropertyName(ref this, out pVal);
			public HRESULT put_PropertyName(BSTR newVal) mut => VT.put_PropertyName(ref this, newVal);
			public HRESULT get_PropertyId(out FsrmFileSystemPropertyId pVal) mut => VT.get_PropertyId(ref this, out pVal);
			public HRESULT put_PropertyId(FsrmFileSystemPropertyId newVal) mut => VT.put_PropertyId(ref this, newVal);
			public HRESULT get_Operator(out FsrmPropertyConditionType pVal) mut => VT.get_Operator(ref this, out pVal);
			public HRESULT put_Operator(FsrmPropertyConditionType newVal) mut => VT.put_Operator(ref this, newVal);
			public HRESULT get_ValueType(out FsrmPropertyValueType pVal) mut => VT.get_ValueType(ref this, out pVal);
			public HRESULT put_ValueType(FsrmPropertyValueType newVal) mut => VT.put_ValueType(ref this, newVal);
			public HRESULT get_Value(out VARIANT pVal) mut => VT.get_Value(ref this, out pVal);
			public HRESULT put_Value(VARIANT newVal) mut => VT.put_Value(ref this, newVal);

			[CRepr]
			public struct VTable : IFsrmFileCondition.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileConditionProperty self, out BSTR pVal) get_PropertyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileConditionProperty self, BSTR newVal) put_PropertyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileConditionProperty self, out FsrmFileSystemPropertyId pVal) get_PropertyId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileConditionProperty self, FsrmFileSystemPropertyId newVal) put_PropertyId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileConditionProperty self, out FsrmPropertyConditionType pVal) get_Operator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileConditionProperty self, FsrmPropertyConditionType newVal) put_Operator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileConditionProperty self, out FsrmPropertyValueType pVal) get_ValueType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileConditionProperty self, FsrmPropertyValueType newVal) put_ValueType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileConditionProperty self, out VARIANT pVal) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmFileConditionProperty self, VARIANT newVal) put_Value;
			}
		}
		[CRepr]
		public struct IFsrmPropertyDefinition : IFsrmObject
		{
			public const new Guid IID = .(0xede0150f, 0xe9a3, 0x419c, 0x87, 0x7c, 0x01, 0xfe, 0x5d, 0x24, 0xc5, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT get_Type(out FsrmPropertyDefinitionType type) mut => VT.get_Type(ref this, out type);
			public HRESULT put_Type(FsrmPropertyDefinitionType type) mut => VT.put_Type(ref this, type);
			public HRESULT get_PossibleValues(out SAFEARRAY* possibleValues) mut => VT.get_PossibleValues(ref this, out possibleValues);
			public HRESULT put_PossibleValues(ref SAFEARRAY possibleValues) mut => VT.put_PossibleValues(ref this, ref possibleValues);
			public HRESULT get_ValueDescriptions(out SAFEARRAY* valueDescriptions) mut => VT.get_ValueDescriptions(ref this, out valueDescriptions);
			public HRESULT put_ValueDescriptions(ref SAFEARRAY valueDescriptions) mut => VT.put_ValueDescriptions(ref this, ref valueDescriptions);
			public HRESULT get_Parameters(out SAFEARRAY* parameters) mut => VT.get_Parameters(ref this, out parameters);
			public HRESULT put_Parameters(ref SAFEARRAY parameters) mut => VT.put_Parameters(ref this, ref parameters);

			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition self, out FsrmPropertyDefinitionType type) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition self, FsrmPropertyDefinitionType type) put_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition self, out SAFEARRAY* possibleValues) get_PossibleValues;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition self, ref SAFEARRAY possibleValues) put_PossibleValues;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition self, out SAFEARRAY* valueDescriptions) get_ValueDescriptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition self, ref SAFEARRAY valueDescriptions) put_ValueDescriptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition self, out SAFEARRAY* parameters) get_Parameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition self, ref SAFEARRAY parameters) put_Parameters;
			}
		}
		[CRepr]
		public struct IFsrmPropertyDefinition2 : IFsrmPropertyDefinition
		{
			public const new Guid IID = .(0x47782152, 0xd16c, 0x4229, 0xb4, 0xe1, 0x0d, 0xdf, 0xe3, 0x08, 0xb9, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PropertyDefinitionFlags(out int32 propertyDefinitionFlags) mut => VT.get_PropertyDefinitionFlags(ref this, out propertyDefinitionFlags);
			public HRESULT get_DisplayName(out BSTR name) mut => VT.get_DisplayName(ref this, out name);
			public HRESULT put_DisplayName(BSTR name) mut => VT.put_DisplayName(ref this, name);
			public HRESULT get_AppliesTo(out int32 appliesTo) mut => VT.get_AppliesTo(ref this, out appliesTo);
			public HRESULT get_ValueDefinitions(out IFsrmCollection* valueDefinitions) mut => VT.get_ValueDefinitions(ref this, out valueDefinitions);

			[CRepr]
			public struct VTable : IFsrmPropertyDefinition.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition2 self, out int32 propertyDefinitionFlags) get_PropertyDefinitionFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition2 self, out BSTR name) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition2 self, BSTR name) put_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition2 self, out int32 appliesTo) get_AppliesTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinition2 self, out IFsrmCollection* valueDefinitions) get_ValueDefinitions;
			}
		}
		[CRepr]
		public struct IFsrmPropertyDefinitionValue : IDispatch
		{
			public const new Guid IID = .(0xe946d148, 0xbd67, 0x4178, 0x8e, 0x22, 0x1c, 0x44, 0x92, 0x5e, 0xd7, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT get_DisplayName(out BSTR displayName) mut => VT.get_DisplayName(ref this, out displayName);
			public HRESULT get_Description(out BSTR description) mut => VT.get_Description(ref this, out description);
			public HRESULT get_UniqueID(out BSTR uniqueID) mut => VT.get_UniqueID(ref this, out uniqueID);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinitionValue self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinitionValue self, out BSTR displayName) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinitionValue self, out BSTR description) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyDefinitionValue self, out BSTR uniqueID) get_UniqueID;
			}
		}
		[CRepr]
		public struct IFsrmProperty : IDispatch
		{
			public const new Guid IID = .(0x4a73fee4, 0x4102, 0x4fcc, 0x9f, 0xfb, 0x38, 0x61, 0x4f, 0x9e, 0xe7, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT get_Value(out BSTR value) mut => VT.get_Value(ref this, out value);
			public HRESULT get_Sources(out SAFEARRAY* sources) mut => VT.get_Sources(ref this, out sources);
			public HRESULT get_PropertyFlags(out int32 flags) mut => VT.get_PropertyFlags(ref this, out flags);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmProperty self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmProperty self, out BSTR value) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmProperty self, out SAFEARRAY* sources) get_Sources;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmProperty self, out int32 flags) get_PropertyFlags;
			}
		}
		[CRepr]
		public struct IFsrmRule : IFsrmObject
		{
			public const new Guid IID = .(0xcb0df960, 0x16f5, 0x4495, 0x90, 0x79, 0x3f, 0x93, 0x60, 0xd8, 0x31, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT get_RuleType(out FsrmRuleType ruleType) mut => VT.get_RuleType(ref this, out ruleType);
			public HRESULT get_ModuleDefinitionName(out BSTR moduleDefinitionName) mut => VT.get_ModuleDefinitionName(ref this, out moduleDefinitionName);
			public HRESULT put_ModuleDefinitionName(BSTR moduleDefinitionName) mut => VT.put_ModuleDefinitionName(ref this, moduleDefinitionName);
			public HRESULT get_NamespaceRoots(out SAFEARRAY* namespaceRoots) mut => VT.get_NamespaceRoots(ref this, out namespaceRoots);
			public HRESULT put_NamespaceRoots(ref SAFEARRAY namespaceRoots) mut => VT.put_NamespaceRoots(ref this, ref namespaceRoots);
			public HRESULT get_RuleFlags(out int32 ruleFlags) mut => VT.get_RuleFlags(ref this, out ruleFlags);
			public HRESULT put_RuleFlags(int32 ruleFlags) mut => VT.put_RuleFlags(ref this, ruleFlags);
			public HRESULT get_Parameters(out SAFEARRAY* parameters) mut => VT.get_Parameters(ref this, out parameters);
			public HRESULT put_Parameters(ref SAFEARRAY parameters) mut => VT.put_Parameters(ref this, ref parameters);
			public HRESULT get_LastModified(out VARIANT lastModified) mut => VT.get_LastModified(ref this, out lastModified);

			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmRule self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmRule self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmRule self, out FsrmRuleType ruleType) get_RuleType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmRule self, out BSTR moduleDefinitionName) get_ModuleDefinitionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmRule self, BSTR moduleDefinitionName) put_ModuleDefinitionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmRule self, out SAFEARRAY* namespaceRoots) get_NamespaceRoots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmRule self, ref SAFEARRAY namespaceRoots) put_NamespaceRoots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmRule self, out int32 ruleFlags) get_RuleFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmRule self, int32 ruleFlags) put_RuleFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmRule self, out SAFEARRAY* parameters) get_Parameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmRule self, ref SAFEARRAY parameters) put_Parameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmRule self, out VARIANT lastModified) get_LastModified;
			}
		}
		[CRepr]
		public struct IFsrmClassificationRule : IFsrmRule
		{
			public const new Guid IID = .(0xafc052c2, 0x5315, 0x45ab, 0x84, 0x1b, 0xc6, 0xdb, 0x0e, 0x12, 0x01, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ExecutionOption(out FsrmExecutionOption executionOption) mut => VT.get_ExecutionOption(ref this, out executionOption);
			public HRESULT put_ExecutionOption(FsrmExecutionOption executionOption) mut => VT.put_ExecutionOption(ref this, executionOption);
			public HRESULT get_PropertyAffected(out BSTR property) mut => VT.get_PropertyAffected(ref this, out property);
			public HRESULT put_PropertyAffected(BSTR property) mut => VT.put_PropertyAffected(ref this, property);
			public HRESULT get_Value(out BSTR value) mut => VT.get_Value(ref this, out value);
			public HRESULT put_Value(BSTR value) mut => VT.put_Value(ref this, value);

			[CRepr]
			public struct VTable : IFsrmRule.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationRule self, out FsrmExecutionOption executionOption) get_ExecutionOption;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationRule self, FsrmExecutionOption executionOption) put_ExecutionOption;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationRule self, out BSTR property) get_PropertyAffected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationRule self, BSTR property) put_PropertyAffected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationRule self, out BSTR value) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationRule self, BSTR value) put_Value;
			}
		}
		[CRepr]
		public struct IFsrmPipelineModuleDefinition : IFsrmObject
		{
			public const new Guid IID = .(0x515c1277, 0x2c81, 0x440e, 0x8f, 0xcf, 0x36, 0x79, 0x21, 0xed, 0x4f, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ModuleClsid(out BSTR moduleClsid) mut => VT.get_ModuleClsid(ref this, out moduleClsid);
			public HRESULT put_ModuleClsid(BSTR moduleClsid) mut => VT.put_ModuleClsid(ref this, moduleClsid);
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
			public HRESULT get_Company(out BSTR company) mut => VT.get_Company(ref this, out company);
			public HRESULT put_Company(BSTR company) mut => VT.put_Company(ref this, company);
			public HRESULT get_Version(out BSTR version) mut => VT.get_Version(ref this, out version);
			public HRESULT put_Version(BSTR version) mut => VT.put_Version(ref this, version);
			public HRESULT get_ModuleType(out FsrmPipelineModuleType moduleType) mut => VT.get_ModuleType(ref this, out moduleType);
			public HRESULT get_Enabled(out int16 enabled) mut => VT.get_Enabled(ref this, out enabled);
			public HRESULT put_Enabled(int16 enabled) mut => VT.put_Enabled(ref this, enabled);
			public HRESULT get_NeedsFileContent(out int16 needsFileContent) mut => VT.get_NeedsFileContent(ref this, out needsFileContent);
			public HRESULT put_NeedsFileContent(int16 needsFileContent) mut => VT.put_NeedsFileContent(ref this, needsFileContent);
			public HRESULT get_Account(out FsrmAccountType retrievalAccount) mut => VT.get_Account(ref this, out retrievalAccount);
			public HRESULT put_Account(FsrmAccountType retrievalAccount) mut => VT.put_Account(ref this, retrievalAccount);
			public HRESULT get_SupportedExtensions(out SAFEARRAY* supportedExtensions) mut => VT.get_SupportedExtensions(ref this, out supportedExtensions);
			public HRESULT put_SupportedExtensions(ref SAFEARRAY supportedExtensions) mut => VT.put_SupportedExtensions(ref this, ref supportedExtensions);
			public HRESULT get_Parameters(out SAFEARRAY* parameters) mut => VT.get_Parameters(ref this, out parameters);
			public HRESULT put_Parameters(ref SAFEARRAY parameters) mut => VT.put_Parameters(ref this, ref parameters);

			[CRepr]
			public struct VTable : IFsrmObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, out BSTR moduleClsid) get_ModuleClsid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, BSTR moduleClsid) put_ModuleClsid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, BSTR name) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, out BSTR company) get_Company;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, BSTR company) put_Company;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, out BSTR version) get_Version;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, BSTR version) put_Version;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, out FsrmPipelineModuleType moduleType) get_ModuleType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, out int16 enabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, int16 enabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, out int16 needsFileContent) get_NeedsFileContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, int16 needsFileContent) put_NeedsFileContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, out FsrmAccountType retrievalAccount) get_Account;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, FsrmAccountType retrievalAccount) put_Account;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, out SAFEARRAY* supportedExtensions) get_SupportedExtensions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, ref SAFEARRAY supportedExtensions) put_SupportedExtensions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, out SAFEARRAY* parameters) get_Parameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleDefinition self, ref SAFEARRAY parameters) put_Parameters;
			}
		}
		[CRepr]
		public struct IFsrmClassifierModuleDefinition : IFsrmPipelineModuleDefinition
		{
			public const new Guid IID = .(0xbb36ea26, 0x6318, 0x4b8c, 0x85, 0x92, 0xf7, 0x2d, 0xd6, 0x02, 0xe7, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PropertiesAffected(out SAFEARRAY* propertiesAffected) mut => VT.get_PropertiesAffected(ref this, out propertiesAffected);
			public HRESULT put_PropertiesAffected(ref SAFEARRAY propertiesAffected) mut => VT.put_PropertiesAffected(ref this, ref propertiesAffected);
			public HRESULT get_PropertiesUsed(out SAFEARRAY* propertiesUsed) mut => VT.get_PropertiesUsed(ref this, out propertiesUsed);
			public HRESULT put_PropertiesUsed(ref SAFEARRAY propertiesUsed) mut => VT.put_PropertiesUsed(ref this, ref propertiesUsed);
			public HRESULT get_NeedsExplicitValue(out int16 needsExplicitValue) mut => VT.get_NeedsExplicitValue(ref this, out needsExplicitValue);
			public HRESULT put_NeedsExplicitValue(int16 needsExplicitValue) mut => VT.put_NeedsExplicitValue(ref this, needsExplicitValue);

			[CRepr]
			public struct VTable : IFsrmPipelineModuleDefinition.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassifierModuleDefinition self, out SAFEARRAY* propertiesAffected) get_PropertiesAffected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassifierModuleDefinition self, ref SAFEARRAY propertiesAffected) put_PropertiesAffected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassifierModuleDefinition self, out SAFEARRAY* propertiesUsed) get_PropertiesUsed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassifierModuleDefinition self, ref SAFEARRAY propertiesUsed) put_PropertiesUsed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassifierModuleDefinition self, out int16 needsExplicitValue) get_NeedsExplicitValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassifierModuleDefinition self, int16 needsExplicitValue) put_NeedsExplicitValue;
			}
		}
		[CRepr]
		public struct IFsrmStorageModuleDefinition : IFsrmPipelineModuleDefinition
		{
			public const new Guid IID = .(0x15a81350, 0x497d, 0x4aba, 0x80, 0xe9, 0xd4, 0xdb, 0xcc, 0x55, 0x21, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Capabilities(out FsrmStorageModuleCaps capabilities) mut => VT.get_Capabilities(ref this, out capabilities);
			public HRESULT put_Capabilities(FsrmStorageModuleCaps capabilities) mut => VT.put_Capabilities(ref this, capabilities);
			public HRESULT get_StorageType(out FsrmStorageModuleType storageType) mut => VT.get_StorageType(ref this, out storageType);
			public HRESULT put_StorageType(FsrmStorageModuleType storageType) mut => VT.put_StorageType(ref this, storageType);
			public HRESULT get_UpdatesFileContent(out int16 updatesFileContent) mut => VT.get_UpdatesFileContent(ref this, out updatesFileContent);
			public HRESULT put_UpdatesFileContent(int16 updatesFileContent) mut => VT.put_UpdatesFileContent(ref this, updatesFileContent);

			[CRepr]
			public struct VTable : IFsrmPipelineModuleDefinition.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmStorageModuleDefinition self, out FsrmStorageModuleCaps capabilities) get_Capabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmStorageModuleDefinition self, FsrmStorageModuleCaps capabilities) put_Capabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmStorageModuleDefinition self, out FsrmStorageModuleType storageType) get_StorageType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmStorageModuleDefinition self, FsrmStorageModuleType storageType) put_StorageType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmStorageModuleDefinition self, out int16 updatesFileContent) get_UpdatesFileContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmStorageModuleDefinition self, int16 updatesFileContent) put_UpdatesFileContent;
			}
		}
		[CRepr]
		public struct IFsrmClassificationManager : IDispatch
		{
			public const new Guid IID = .(0xd2dc89da, 0xee91, 0x48a0, 0x85, 0xd8, 0xcc, 0x72, 0xa5, 0x6f, 0x7d, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ClassificationReportFormats(out SAFEARRAY* formats) mut => VT.get_ClassificationReportFormats(ref this, out formats);
			public HRESULT put_ClassificationReportFormats(ref SAFEARRAY formats) mut => VT.put_ClassificationReportFormats(ref this, ref formats);
			public HRESULT get_Logging(out int32 logging) mut => VT.get_Logging(ref this, out logging);
			public HRESULT put_Logging(int32 logging) mut => VT.put_Logging(ref this, logging);
			public HRESULT get_ClassificationReportMailTo(out BSTR mailTo) mut => VT.get_ClassificationReportMailTo(ref this, out mailTo);
			public HRESULT put_ClassificationReportMailTo(BSTR mailTo) mut => VT.put_ClassificationReportMailTo(ref this, mailTo);
			public HRESULT get_ClassificationReportEnabled(out int16 reportEnabled) mut => VT.get_ClassificationReportEnabled(ref this, out reportEnabled);
			public HRESULT put_ClassificationReportEnabled(int16 reportEnabled) mut => VT.put_ClassificationReportEnabled(ref this, reportEnabled);
			public HRESULT get_ClassificationLastReportPathWithoutExtension(out BSTR lastReportPath) mut => VT.get_ClassificationLastReportPathWithoutExtension(ref this, out lastReportPath);
			public HRESULT get_ClassificationLastError(out BSTR lastError) mut => VT.get_ClassificationLastError(ref this, out lastError);
			public HRESULT get_ClassificationRunningStatus(out FsrmReportRunningStatus runningStatus) mut => VT.get_ClassificationRunningStatus(ref this, out runningStatus);
			public HRESULT EnumPropertyDefinitions(FsrmEnumOptions options, out IFsrmCollection* propertyDefinitions) mut => VT.EnumPropertyDefinitions(ref this, options, out propertyDefinitions);
			public HRESULT CreatePropertyDefinition(out IFsrmPropertyDefinition* propertyDefinition) mut => VT.CreatePropertyDefinition(ref this, out propertyDefinition);
			public HRESULT GetPropertyDefinition(BSTR propertyName, out IFsrmPropertyDefinition* propertyDefinition) mut => VT.GetPropertyDefinition(ref this, propertyName, out propertyDefinition);
			public HRESULT EnumRules(FsrmRuleType ruleType, FsrmEnumOptions options, out IFsrmCollection* Rules) mut => VT.EnumRules(ref this, ruleType, options, out Rules);
			public HRESULT CreateRule(FsrmRuleType ruleType, out IFsrmRule* Rule) mut => VT.CreateRule(ref this, ruleType, out Rule);
			public HRESULT GetRule(BSTR ruleName, FsrmRuleType ruleType, out IFsrmRule* Rule) mut => VT.GetRule(ref this, ruleName, ruleType, out Rule);
			public HRESULT EnumModuleDefinitions(FsrmPipelineModuleType moduleType, FsrmEnumOptions options, out IFsrmCollection* moduleDefinitions) mut => VT.EnumModuleDefinitions(ref this, moduleType, options, out moduleDefinitions);
			public HRESULT CreateModuleDefinition(FsrmPipelineModuleType moduleType, out IFsrmPipelineModuleDefinition* moduleDefinition) mut => VT.CreateModuleDefinition(ref this, moduleType, out moduleDefinition);
			public HRESULT GetModuleDefinition(BSTR moduleName, FsrmPipelineModuleType moduleType, out IFsrmPipelineModuleDefinition* moduleDefinition) mut => VT.GetModuleDefinition(ref this, moduleName, moduleType, out moduleDefinition);
			public HRESULT RunClassification(FsrmReportGenerationContext context, BSTR reserved) mut => VT.RunClassification(ref this, context, reserved);
			public HRESULT WaitForClassificationCompletion(int32 waitSeconds, out int16 completed) mut => VT.WaitForClassificationCompletion(ref this, waitSeconds, out completed);
			public HRESULT CancelClassification() mut => VT.CancelClassification(ref this);
			public HRESULT EnumFileProperties(BSTR filePath, FsrmGetFilePropertyOptions options, out IFsrmCollection* fileProperties) mut => VT.EnumFileProperties(ref this, filePath, options, out fileProperties);
			public HRESULT GetFileProperty(BSTR filePath, BSTR propertyName, FsrmGetFilePropertyOptions options, out IFsrmProperty* property) mut => VT.GetFileProperty(ref this, filePath, propertyName, options, out property);
			public HRESULT SetFileProperty(BSTR filePath, BSTR propertyName, BSTR propertyValue) mut => VT.SetFileProperty(ref this, filePath, propertyName, propertyValue);
			public HRESULT ClearFileProperty(BSTR filePath, BSTR property) mut => VT.ClearFileProperty(ref this, filePath, property);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, out SAFEARRAY* formats) get_ClassificationReportFormats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, ref SAFEARRAY formats) put_ClassificationReportFormats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, out int32 logging) get_Logging;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, int32 logging) put_Logging;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, out BSTR mailTo) get_ClassificationReportMailTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, BSTR mailTo) put_ClassificationReportMailTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, out int16 reportEnabled) get_ClassificationReportEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, int16 reportEnabled) put_ClassificationReportEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, out BSTR lastReportPath) get_ClassificationLastReportPathWithoutExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, out BSTR lastError) get_ClassificationLastError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, out FsrmReportRunningStatus runningStatus) get_ClassificationRunningStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, FsrmEnumOptions options, out IFsrmCollection* propertyDefinitions) EnumPropertyDefinitions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, out IFsrmPropertyDefinition* propertyDefinition) CreatePropertyDefinition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, BSTR propertyName, out IFsrmPropertyDefinition* propertyDefinition) GetPropertyDefinition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, FsrmRuleType ruleType, FsrmEnumOptions options, out IFsrmCollection* Rules) EnumRules;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, FsrmRuleType ruleType, out IFsrmRule* Rule) CreateRule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, BSTR ruleName, FsrmRuleType ruleType, out IFsrmRule* Rule) GetRule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, FsrmPipelineModuleType moduleType, FsrmEnumOptions options, out IFsrmCollection* moduleDefinitions) EnumModuleDefinitions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, FsrmPipelineModuleType moduleType, out IFsrmPipelineModuleDefinition* moduleDefinition) CreateModuleDefinition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, BSTR moduleName, FsrmPipelineModuleType moduleType, out IFsrmPipelineModuleDefinition* moduleDefinition) GetModuleDefinition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, FsrmReportGenerationContext context, BSTR reserved) RunClassification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, int32 waitSeconds, out int16 completed) WaitForClassificationCompletion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self) CancelClassification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, BSTR filePath, FsrmGetFilePropertyOptions options, out IFsrmCollection* fileProperties) EnumFileProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, BSTR filePath, BSTR propertyName, FsrmGetFilePropertyOptions options, out IFsrmProperty* property) GetFileProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, BSTR filePath, BSTR propertyName, BSTR propertyValue) SetFileProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager self, BSTR filePath, BSTR property) ClearFileProperty;
			}
		}
		[CRepr]
		public struct IFsrmClassificationManager2 : IFsrmClassificationManager
		{
			public const new Guid IID = .(0x0004c1c9, 0x127e, 0x4765, 0xba, 0x07, 0x6a, 0x31, 0x47, 0xbc, 0xa1, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ClassifyFiles(ref SAFEARRAY filePaths, ref SAFEARRAY propertyNames, ref SAFEARRAY propertyValues, FsrmGetFilePropertyOptions options) mut => VT.ClassifyFiles(ref this, ref filePaths, ref propertyNames, ref propertyValues, options);

			[CRepr]
			public struct VTable : IFsrmClassificationManager.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassificationManager2 self, ref SAFEARRAY filePaths, ref SAFEARRAY propertyNames, ref SAFEARRAY propertyValues, FsrmGetFilePropertyOptions options) ClassifyFiles;
			}
		}
		[CRepr]
		public struct IFsrmPropertyBag : IDispatch
		{
			public const new Guid IID = .(0x774589d1, 0xd300, 0x4f7a, 0x9a, 0x24, 0xf7, 0xb7, 0x66, 0x80, 0x02, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT get_RelativePath(out BSTR path) mut => VT.get_RelativePath(ref this, out path);
			public HRESULT get_VolumeName(out BSTR volumeName) mut => VT.get_VolumeName(ref this, out volumeName);
			public HRESULT get_RelativeNamespaceRoot(out BSTR relativeNamespaceRoot) mut => VT.get_RelativeNamespaceRoot(ref this, out relativeNamespaceRoot);
			public HRESULT get_VolumeIndex(out uint32 volumeId) mut => VT.get_VolumeIndex(ref this, out volumeId);
			public HRESULT get_FileId(out VARIANT fileId) mut => VT.get_FileId(ref this, out fileId);
			public HRESULT get_ParentDirectoryId(out VARIANT parentDirectoryId) mut => VT.get_ParentDirectoryId(ref this, out parentDirectoryId);
			public HRESULT get_Size(out VARIANT size) mut => VT.get_Size(ref this, out size);
			public HRESULT get_SizeAllocated(out VARIANT sizeAllocated) mut => VT.get_SizeAllocated(ref this, out sizeAllocated);
			public HRESULT get_CreationTime(out VARIANT creationTime) mut => VT.get_CreationTime(ref this, out creationTime);
			public HRESULT get_LastAccessTime(out VARIANT lastAccessTime) mut => VT.get_LastAccessTime(ref this, out lastAccessTime);
			public HRESULT get_LastModificationTime(out VARIANT lastModificationTime) mut => VT.get_LastModificationTime(ref this, out lastModificationTime);
			public HRESULT get_Attributes(out uint32 attributes) mut => VT.get_Attributes(ref this, out attributes);
			public HRESULT get_OwnerSid(out BSTR ownerSid) mut => VT.get_OwnerSid(ref this, out ownerSid);
			public HRESULT get_FilePropertyNames(out SAFEARRAY* filePropertyNames) mut => VT.get_FilePropertyNames(ref this, out filePropertyNames);
			public HRESULT get_Messages(out SAFEARRAY* messages) mut => VT.get_Messages(ref this, out messages);
			public HRESULT get_PropertyBagFlags(out uint32 flags) mut => VT.get_PropertyBagFlags(ref this, out flags);
			public HRESULT GetFileProperty(BSTR name, out IFsrmProperty* fileProperty) mut => VT.GetFileProperty(ref this, name, out fileProperty);
			public HRESULT SetFileProperty(BSTR name, BSTR value) mut => VT.SetFileProperty(ref this, name, value);
			public HRESULT AddMessage(BSTR message) mut => VT.AddMessage(ref this, message);
			public HRESULT GetFileStreamInterface(FsrmFileStreamingMode accessMode, FsrmFileStreamingInterfaceType interfaceType, out VARIANT pStreamInterface) mut => VT.GetFileStreamInterface(ref this, accessMode, interfaceType, out pStreamInterface);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out BSTR path) get_RelativePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out BSTR volumeName) get_VolumeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out BSTR relativeNamespaceRoot) get_RelativeNamespaceRoot;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out uint32 volumeId) get_VolumeIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out VARIANT fileId) get_FileId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out VARIANT parentDirectoryId) get_ParentDirectoryId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out VARIANT size) get_Size;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out VARIANT sizeAllocated) get_SizeAllocated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out VARIANT creationTime) get_CreationTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out VARIANT lastAccessTime) get_LastAccessTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out VARIANT lastModificationTime) get_LastModificationTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out uint32 attributes) get_Attributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out BSTR ownerSid) get_OwnerSid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out SAFEARRAY* filePropertyNames) get_FilePropertyNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out SAFEARRAY* messages) get_Messages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, out uint32 flags) get_PropertyBagFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, BSTR name, out IFsrmProperty* fileProperty) GetFileProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, BSTR name, BSTR value) SetFileProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, BSTR message) AddMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag self, FsrmFileStreamingMode accessMode, FsrmFileStreamingInterfaceType interfaceType, out VARIANT pStreamInterface) GetFileStreamInterface;
			}
		}
		[CRepr]
		public struct IFsrmPropertyBag2 : IFsrmPropertyBag
		{
			public const new Guid IID = .(0x0e46bdbd, 0x2402, 0x4fed, 0x9c, 0x30, 0x92, 0x66, 0xe6, 0xeb, 0x2c, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFieldValue(FsrmPropertyBagField field, out VARIANT value) mut => VT.GetFieldValue(ref this, field, out value);
			public HRESULT GetUntrustedInFileProperties(out IFsrmCollection* props) mut => VT.GetUntrustedInFileProperties(ref this, out props);

			[CRepr]
			public struct VTable : IFsrmPropertyBag.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag2 self, FsrmPropertyBagField field, out VARIANT value) GetFieldValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPropertyBag2 self, out IFsrmCollection* props) GetUntrustedInFileProperties;
			}
		}
		[CRepr]
		public struct IFsrmPipelineModuleImplementation : IDispatch
		{
			public const new Guid IID = .(0xb7907906, 0x2b02, 0x4cb5, 0x84, 0xa9, 0xfd, 0xf5, 0x46, 0x13, 0xd6, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnLoad(ref IFsrmPipelineModuleDefinition moduleDefinition, out IFsrmPipelineModuleConnector* moduleConnector) mut => VT.OnLoad(ref this, ref moduleDefinition, out moduleConnector);
			public HRESULT OnUnload() mut => VT.OnUnload(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleImplementation self, ref IFsrmPipelineModuleDefinition moduleDefinition, out IFsrmPipelineModuleConnector* moduleConnector) OnLoad;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleImplementation self) OnUnload;
			}
		}
		[CRepr]
		public struct IFsrmClassifierModuleImplementation : IFsrmPipelineModuleImplementation
		{
			public const new Guid IID = .(0x4c968fc6, 0x6edb, 0x4051, 0x9c, 0x18, 0x73, 0xb7, 0x29, 0x1a, 0xe1, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LastModified(out VARIANT lastModified) mut => VT.get_LastModified(ref this, out lastModified);
			public HRESULT UseRulesAndDefinitions(ref IFsrmCollection rules, ref IFsrmCollection propertyDefinitions) mut => VT.UseRulesAndDefinitions(ref this, ref rules, ref propertyDefinitions);
			public HRESULT OnBeginFile(ref IFsrmPropertyBag propertyBag, ref SAFEARRAY arrayRuleIds) mut => VT.OnBeginFile(ref this, ref propertyBag, ref arrayRuleIds);
			public HRESULT DoesPropertyValueApply(BSTR property, BSTR value, out int16 applyValue, Guid idRule, Guid idPropDef) mut => VT.DoesPropertyValueApply(ref this, property, value, out applyValue, idRule, idPropDef);
			public HRESULT GetPropertyValueToApply(BSTR property, out BSTR value, Guid idRule, Guid idPropDef) mut => VT.GetPropertyValueToApply(ref this, property, out value, idRule, idPropDef);
			public HRESULT OnEndFile() mut => VT.OnEndFile(ref this);

			[CRepr]
			public struct VTable : IFsrmPipelineModuleImplementation.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassifierModuleImplementation self, out VARIANT lastModified) get_LastModified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassifierModuleImplementation self, ref IFsrmCollection rules, ref IFsrmCollection propertyDefinitions) UseRulesAndDefinitions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassifierModuleImplementation self, ref IFsrmPropertyBag propertyBag, ref SAFEARRAY arrayRuleIds) OnBeginFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassifierModuleImplementation self, BSTR property, BSTR value, out int16 applyValue, Guid idRule, Guid idPropDef) DoesPropertyValueApply;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassifierModuleImplementation self, BSTR property, out BSTR value, Guid idRule, Guid idPropDef) GetPropertyValueToApply;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmClassifierModuleImplementation self) OnEndFile;
			}
		}
		[CRepr]
		public struct IFsrmStorageModuleImplementation : IFsrmPipelineModuleImplementation
		{
			public const new Guid IID = .(0x0af4a0da, 0x895a, 0x4e50, 0x87, 0x12, 0xa9, 0x67, 0x24, 0xbc, 0xec, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UseDefinitions(ref IFsrmCollection propertyDefinitions) mut => VT.UseDefinitions(ref this, ref propertyDefinitions);
			public HRESULT LoadProperties(ref IFsrmPropertyBag propertyBag) mut => VT.LoadProperties(ref this, ref propertyBag);
			public HRESULT SaveProperties(ref IFsrmPropertyBag propertyBag) mut => VT.SaveProperties(ref this, ref propertyBag);

			[CRepr]
			public struct VTable : IFsrmPipelineModuleImplementation.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmStorageModuleImplementation self, ref IFsrmCollection propertyDefinitions) UseDefinitions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmStorageModuleImplementation self, ref IFsrmPropertyBag propertyBag) LoadProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmStorageModuleImplementation self, ref IFsrmPropertyBag propertyBag) SaveProperties;
			}
		}
		[CRepr]
		public struct IFsrmPipelineModuleConnector : IDispatch
		{
			public const new Guid IID = .(0xc16014f3, 0x9aa1, 0x46b3, 0xb0, 0xa7, 0xab, 0x14, 0x6e, 0xb2, 0x05, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ModuleImplementation(out IFsrmPipelineModuleImplementation* pipelineModuleImplementation) mut => VT.get_ModuleImplementation(ref this, out pipelineModuleImplementation);
			public HRESULT get_ModuleName(out BSTR userName) mut => VT.get_ModuleName(ref this, out userName);
			public HRESULT get_HostingUserAccount(out BSTR userAccount) mut => VT.get_HostingUserAccount(ref this, out userAccount);
			public HRESULT get_HostingProcessPid(out int32 pid) mut => VT.get_HostingProcessPid(ref this, out pid);
			public HRESULT Bind(ref IFsrmPipelineModuleDefinition moduleDefinition, ref IFsrmPipelineModuleImplementation moduleImplementation) mut => VT.Bind(ref this, ref moduleDefinition, ref moduleImplementation);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleConnector self, out IFsrmPipelineModuleImplementation* pipelineModuleImplementation) get_ModuleImplementation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleConnector self, out BSTR userName) get_ModuleName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleConnector self, out BSTR userAccount) get_HostingUserAccount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleConnector self, out int32 pid) get_HostingProcessPid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsrmPipelineModuleConnector self, ref IFsrmPipelineModuleDefinition moduleDefinition, ref IFsrmPipelineModuleImplementation moduleImplementation) Bind;
			}
		}
		[CRepr]
		public struct DIFsrmClassificationEvents : IDispatch
		{
			public const new Guid IID = .(0x26942db0, 0xdabf, 0x41d8, 0xbb, 0xdd, 0xb1, 0x29, 0xa9, 0xf7, 0x04, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		
	}
}
