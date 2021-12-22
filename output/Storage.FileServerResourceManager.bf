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
		
		[AllowDuplicates]
		public enum FsrmQuotaFlags : int32
		{
			FsrmQuotaFlags_Enforce = 256,
			FsrmQuotaFlags_Disable = 512,
			FsrmQuotaFlags_StatusIncomplete = 65536,
			FsrmQuotaFlags_StatusRebuilding = 131072,
		}
		[AllowDuplicates]
		public enum FsrmFileScreenFlags : int32
		{
			FsrmFileScreenFlags_Enforce = 1,
		}
		[AllowDuplicates]
		public enum FsrmCollectionState : int32
		{
			FsrmCollectionState_Fetching = 1,
			FsrmCollectionState_Committing = 2,
			FsrmCollectionState_Complete = 3,
			FsrmCollectionState_Cancelled = 4,
		}
		[AllowDuplicates]
		public enum FsrmEnumOptions : int32
		{
			FsrmEnumOptions_None = 0,
			FsrmEnumOptions_Asynchronous = 1,
			FsrmEnumOptions_CheckRecycleBin = 2,
			FsrmEnumOptions_IncludeClusterNodes = 4,
			FsrmEnumOptions_IncludeDeprecatedObjects = 8,
		}
		[AllowDuplicates]
		public enum FsrmCommitOptions : int32
		{
			FsrmCommitOptions_None = 0,
			FsrmCommitOptions_Asynchronous = 1,
		}
		[AllowDuplicates]
		public enum FsrmTemplateApplyOptions : int32
		{
			FsrmTemplateApplyOptions_ApplyToDerivedMatching = 1,
			FsrmTemplateApplyOptions_ApplyToDerivedAll = 2,
		}
		[AllowDuplicates]
		public enum FsrmActionType : int32
		{
			FsrmActionType_Unknown = 0,
			FsrmActionType_EventLog = 1,
			FsrmActionType_Email = 2,
			FsrmActionType_Command = 3,
			FsrmActionType_Report = 4,
		}
		[AllowDuplicates]
		public enum FsrmEventType : int32
		{
			FsrmEventType_Unknown = 0,
			FsrmEventType_Information = 1,
			FsrmEventType_Warning = 2,
			FsrmEventType_Error = 3,
		}
		[AllowDuplicates]
		public enum FsrmAccountType : int32
		{
			FsrmAccountType_Unknown = 0,
			FsrmAccountType_NetworkService = 1,
			FsrmAccountType_LocalService = 2,
			FsrmAccountType_LocalSystem = 3,
			FsrmAccountType_InProc = 4,
			FsrmAccountType_External = 5,
			FsrmAccountType_Automatic = 500,
		}
		[AllowDuplicates]
		public enum FsrmReportType : int32
		{
			FsrmReportType_Unknown = 0,
			FsrmReportType_LargeFiles = 1,
			FsrmReportType_FilesByType = 2,
			FsrmReportType_LeastRecentlyAccessed = 3,
			FsrmReportType_MostRecentlyAccessed = 4,
			FsrmReportType_QuotaUsage = 5,
			FsrmReportType_FilesByOwner = 6,
			FsrmReportType_ExportReport = 7,
			FsrmReportType_DuplicateFiles = 8,
			FsrmReportType_FileScreenAudit = 9,
			FsrmReportType_FilesByProperty = 10,
			FsrmReportType_AutomaticClassification = 11,
			FsrmReportType_Expiration = 12,
			FsrmReportType_FoldersByProperty = 13,
		}
		[AllowDuplicates]
		public enum FsrmReportFormat : int32
		{
			FsrmReportFormat_Unknown = 0,
			FsrmReportFormat_DHtml = 1,
			FsrmReportFormat_Html = 2,
			FsrmReportFormat_Txt = 3,
			FsrmReportFormat_Csv = 4,
			FsrmReportFormat_Xml = 5,
		}
		[AllowDuplicates]
		public enum FsrmReportRunningStatus : int32
		{
			FsrmReportRunningStatus_Unknown = 0,
			FsrmReportRunningStatus_NotRunning = 1,
			FsrmReportRunningStatus_Queued = 2,
			FsrmReportRunningStatus_Running = 3,
		}
		[AllowDuplicates]
		public enum FsrmReportGenerationContext : int32
		{
			FsrmReportGenerationContext_Undefined = 1,
			FsrmReportGenerationContext_ScheduledReport = 2,
			FsrmReportGenerationContext_InteractiveReport = 3,
			FsrmReportGenerationContext_IncidentReport = 4,
		}
		[AllowDuplicates]
		public enum FsrmReportFilter : int32
		{
			FsrmReportFilter_MinSize = 1,
			FsrmReportFilter_MinAgeDays = 2,
			FsrmReportFilter_MaxAgeDays = 3,
			FsrmReportFilter_MinQuotaUsage = 4,
			FsrmReportFilter_FileGroups = 5,
			FsrmReportFilter_Owners = 6,
			FsrmReportFilter_NamePattern = 7,
			FsrmReportFilter_Property = 8,
		}
		[AllowDuplicates]
		public enum FsrmReportLimit : int32
		{
			FsrmReportLimit_MaxFiles = 1,
			FsrmReportLimit_MaxFileGroups = 2,
			FsrmReportLimit_MaxOwners = 3,
			FsrmReportLimit_MaxFilesPerFileGroup = 4,
			FsrmReportLimit_MaxFilesPerOwner = 5,
			FsrmReportLimit_MaxFilesPerDuplGroup = 6,
			FsrmReportLimit_MaxDuplicateGroups = 7,
			FsrmReportLimit_MaxQuotas = 8,
			FsrmReportLimit_MaxFileScreenEvents = 9,
			FsrmReportLimit_MaxPropertyValues = 10,
			FsrmReportLimit_MaxFilesPerPropertyValue = 11,
			FsrmReportLimit_MaxFolders = 12,
		}
		[AllowDuplicates]
		public enum FsrmPropertyDefinitionType : int32
		{
			FsrmPropertyDefinitionType_Unknown = 0,
			FsrmPropertyDefinitionType_OrderedList = 1,
			FsrmPropertyDefinitionType_MultiChoiceList = 2,
			FsrmPropertyDefinitionType_SingleChoiceList = 3,
			FsrmPropertyDefinitionType_String = 4,
			FsrmPropertyDefinitionType_MultiString = 5,
			FsrmPropertyDefinitionType_Int = 6,
			FsrmPropertyDefinitionType_Bool = 7,
			FsrmPropertyDefinitionType_Date = 8,
		}
		[AllowDuplicates]
		public enum FsrmPropertyDefinitionFlags : int32
		{
			FsrmPropertyDefinitionFlags_Global = 1,
			FsrmPropertyDefinitionFlags_Deprecated = 2,
			FsrmPropertyDefinitionFlags_Secure = 4,
		}
		[AllowDuplicates]
		public enum FsrmPropertyDefinitionAppliesTo : int32
		{
			FsrmPropertyDefinitionAppliesTo_Files = 1,
			FsrmPropertyDefinitionAppliesTo_Folders = 2,
		}
		[AllowDuplicates]
		public enum FsrmRuleType : int32
		{
			FsrmRuleType_Unknown = 0,
			FsrmRuleType_Classification = 1,
			FsrmRuleType_Generic = 2,
		}
		[AllowDuplicates]
		public enum FsrmRuleFlags : int32
		{
			FsrmRuleFlags_Disabled = 256,
			FsrmRuleFlags_ClearAutomaticallyClassifiedProperty = 1024,
			FsrmRuleFlags_ClearManuallyClassifiedProperty = 2048,
			FsrmRuleFlags_Invalid = 4096,
		}
		[AllowDuplicates]
		public enum FsrmClassificationLoggingFlags : int32
		{
			FsrmClassificationLoggingFlags_None = 0,
			FsrmClassificationLoggingFlags_ClassificationsInLogFile = 1,
			FsrmClassificationLoggingFlags_ErrorsInLogFile = 2,
			FsrmClassificationLoggingFlags_ClassificationsInSystemLog = 4,
			FsrmClassificationLoggingFlags_ErrorsInSystemLog = 8,
		}
		[AllowDuplicates]
		public enum FsrmExecutionOption : int32
		{
			FsrmExecutionOption_Unknown = 0,
			FsrmExecutionOption_EvaluateUnset = 1,
			FsrmExecutionOption_ReEvaluate_ConsiderExistingValue = 2,
			FsrmExecutionOption_ReEvaluate_IgnoreExistingValue = 3,
		}
		[AllowDuplicates]
		public enum FsrmStorageModuleCaps : int32
		{
			FsrmStorageModuleCaps_Unknown = 0,
			FsrmStorageModuleCaps_CanGet = 1,
			FsrmStorageModuleCaps_CanSet = 2,
			FsrmStorageModuleCaps_CanHandleDirectories = 4,
			FsrmStorageModuleCaps_CanHandleFiles = 8,
		}
		[AllowDuplicates]
		public enum FsrmStorageModuleType : int32
		{
			FsrmStorageModuleType_Unknown = 0,
			FsrmStorageModuleType_Cache = 1,
			FsrmStorageModuleType_InFile = 2,
			FsrmStorageModuleType_Database = 3,
			FsrmStorageModuleType_System = 100,
		}
		[AllowDuplicates]
		public enum FsrmPropertyBagFlags : int32
		{
			FsrmPropertyBagFlags_UpdatedByClassifier = 1,
			FsrmPropertyBagFlags_FailedLoadingProperties = 2,
			FsrmPropertyBagFlags_FailedSavingProperties = 4,
			FsrmPropertyBagFlags_FailedClassifyingProperties = 8,
		}
		[AllowDuplicates]
		public enum FsrmPropertyBagField : int32
		{
			FsrmPropertyBagField_AccessVolume = 0,
			FsrmPropertyBagField_VolumeGuidName = 1,
		}
		[AllowDuplicates]
		public enum FsrmPropertyFlags : int32
		{
			FsrmPropertyFlags_None = 0,
			FsrmPropertyFlags_Orphaned = 1,
			FsrmPropertyFlags_RetrievedFromCache = 2,
			FsrmPropertyFlags_RetrievedFromStorage = 4,
			FsrmPropertyFlags_SetByClassifier = 8,
			FsrmPropertyFlags_Deleted = 16,
			FsrmPropertyFlags_Reclassified = 32,
			FsrmPropertyFlags_AggregationFailed = 64,
			FsrmPropertyFlags_Existing = 128,
			FsrmPropertyFlags_FailedLoadingProperties = 256,
			FsrmPropertyFlags_FailedClassifyingProperties = 512,
			FsrmPropertyFlags_FailedSavingProperties = 1024,
			FsrmPropertyFlags_Secure = 2048,
			FsrmPropertyFlags_PolicyDerived = 4096,
			FsrmPropertyFlags_Inherited = 8192,
			FsrmPropertyFlags_Manual = 16384,
			FsrmPropertyFlags_ExplicitValueDeleted = 32768,
			FsrmPropertyFlags_PropertyDeletedFromClear = 65536,
			FsrmPropertyFlags_PropertySourceMask = 14,
			FsrmPropertyFlags_PersistentMask = 20480,
		}
		[AllowDuplicates]
		public enum FsrmPipelineModuleType : int32
		{
			FsrmPipelineModuleType_Unknown = 0,
			FsrmPipelineModuleType_Storage = 1,
			FsrmPipelineModuleType_Classifier = 2,
		}
		[AllowDuplicates]
		public enum FsrmGetFilePropertyOptions : int32
		{
			FsrmGetFilePropertyOptions_None = 0,
			FsrmGetFilePropertyOptions_NoRuleEvaluation = 1,
			FsrmGetFilePropertyOptions_Persistent = 2,
			FsrmGetFilePropertyOptions_FailOnPersistErrors = 4,
			FsrmGetFilePropertyOptions_SkipOrphaned = 8,
		}
		[AllowDuplicates]
		public enum FsrmFileManagementType : int32
		{
			FsrmFileManagementType_Unknown = 0,
			FsrmFileManagementType_Expiration = 1,
			FsrmFileManagementType_Custom = 2,
			FsrmFileManagementType_Rms = 3,
		}
		[AllowDuplicates]
		public enum FsrmFileManagementLoggingFlags : int32
		{
			FsrmFileManagementLoggingFlags_None = 0,
			FsrmFileManagementLoggingFlags_Error = 1,
			FsrmFileManagementLoggingFlags_Information = 2,
			FsrmFileManagementLoggingFlags_Audit = 4,
		}
		[AllowDuplicates]
		public enum FsrmPropertyConditionType : int32
		{
			FsrmPropertyConditionType_Unknown = 0,
			FsrmPropertyConditionType_Equal = 1,
			FsrmPropertyConditionType_NotEqual = 2,
			FsrmPropertyConditionType_GreaterThan = 3,
			FsrmPropertyConditionType_LessThan = 4,
			FsrmPropertyConditionType_Contain = 5,
			FsrmPropertyConditionType_Exist = 6,
			FsrmPropertyConditionType_NotExist = 7,
			FsrmPropertyConditionType_StartWith = 8,
			FsrmPropertyConditionType_EndWith = 9,
			FsrmPropertyConditionType_ContainedIn = 10,
			FsrmPropertyConditionType_PrefixOf = 11,
			FsrmPropertyConditionType_SuffixOf = 12,
			FsrmPropertyConditionType_MatchesPattern = 13,
		}
		[AllowDuplicates]
		public enum FsrmFileStreamingMode : int32
		{
			FsrmFileStreamingMode_Unknown = 0,
			FsrmFileStreamingMode_Read = 1,
			FsrmFileStreamingMode_Write = 2,
		}
		[AllowDuplicates]
		public enum FsrmFileStreamingInterfaceType : int32
		{
			FsrmFileStreamingInterfaceType_Unknown = 0,
			FsrmFileStreamingInterfaceType_ILockBytes = 1,
			FsrmFileStreamingInterfaceType_IStream = 2,
		}
		[AllowDuplicates]
		public enum FsrmFileConditionType : int32
		{
			FsrmFileConditionType_Unknown = 0,
			FsrmFileConditionType_Property = 1,
		}
		[AllowDuplicates]
		public enum FsrmFileSystemPropertyId : int32
		{
			FsrmFileSystemPropertyId_Undefined = 0,
			FsrmFileSystemPropertyId_FileName = 1,
			FsrmFileSystemPropertyId_DateCreated = 2,
			FsrmFileSystemPropertyId_DateLastAccessed = 3,
			FsrmFileSystemPropertyId_DateLastModified = 4,
			FsrmFileSystemPropertyId_DateNow = 5,
		}
		[AllowDuplicates]
		public enum FsrmPropertyValueType : int32
		{
			FsrmPropertyValueType_Undefined = 0,
			FsrmPropertyValueType_Literal = 1,
			FsrmPropertyValueType_DateOffset = 2,
		}
		[AllowDuplicates]
		public enum AdrClientDisplayFlags : int32
		{
			AdrClientDisplayFlags_AllowEmailRequests = 1,
			AdrClientDisplayFlags_ShowDeviceTroubleshooting = 2,
		}
		[AllowDuplicates]
		public enum AdrEmailFlags : int32
		{
			AdrEmailFlags_PutDataOwnerOnToLine = 1,
			AdrEmailFlags_PutAdminOnToLine = 2,
			AdrEmailFlags_IncludeDeviceClaims = 4,
			AdrEmailFlags_IncludeUserInfo = 8,
			AdrEmailFlags_GenerateEventLog = 16,
		}
		[AllowDuplicates]
		public enum AdrClientErrorType : int32
		{
			AdrClientErrorType_Unknown = 0,
			AdrClientErrorType_AccessDenied = 1,
			AdrClientErrorType_FileNotFound = 2,
		}
		[AllowDuplicates]
		public enum AdrClientFlags : int32
		{
			AdrClientFlags_None = 0,
			AdrClientFlags_FailForLocalPaths = 1,
			AdrClientFlags_FailIfNotSupportedByServer = 2,
			AdrClientFlags_FailIfNotDomainJoined = 4,
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
			
			public function HRESULT(IFsrmObject *self, Guid* id) get_Id;
			public function HRESULT(IFsrmObject *self, BSTR* description) get_Description;
			public function HRESULT(IFsrmObject *self, BSTR description) put_Description;
			public function HRESULT(IFsrmObject *self) Delete;
			public function HRESULT(IFsrmObject *self) Commit;
		}
		[CRepr]
		public struct IFsrmCollection : IDispatch
		{
			public const new Guid IID = .(0xf76fbf3b, 0x8ddd, 0x4b42, 0xb0, 0x5a, 0xcb, 0x1c, 0x3f, 0xf1, 0xfe, 0xe8);
			
			public function HRESULT(IFsrmCollection *self, IUnknown** unknown) get__NewEnum;
			public function HRESULT(IFsrmCollection *self, int32 index, VARIANT* item) get_Item;
			public function HRESULT(IFsrmCollection *self, int32* count) get_Count;
			public function HRESULT(IFsrmCollection *self, FsrmCollectionState* state) get_State;
			public function HRESULT(IFsrmCollection *self) Cancel;
			public function HRESULT(IFsrmCollection *self, int32 waitSeconds, int16* completed) WaitForCompletion;
			public function HRESULT(IFsrmCollection *self, Guid id, VARIANT* entry) GetById;
		}
		[CRepr]
		public struct IFsrmMutableCollection : IFsrmCollection
		{
			public const new Guid IID = .(0x1bb617b8, 0x3886, 0x49dc, 0xaf, 0x82, 0xa6, 0xc9, 0x0f, 0xa3, 0x5d, 0xda);
			
			public function HRESULT(IFsrmMutableCollection *self, VARIANT item) Add;
			public function HRESULT(IFsrmMutableCollection *self, int32 index) Remove;
			public function HRESULT(IFsrmMutableCollection *self, Guid id) RemoveById;
			public function HRESULT(IFsrmMutableCollection *self, IFsrmMutableCollection** collection) Clone;
		}
		[CRepr]
		public struct IFsrmCommittableCollection : IFsrmMutableCollection
		{
			public const new Guid IID = .(0x96deb3b5, 0x8b91, 0x4a2a, 0x9d, 0x93, 0x80, 0xa3, 0x5d, 0x8a, 0xa8, 0x47);
			
			public function HRESULT(IFsrmCommittableCollection *self, FsrmCommitOptions options, IFsrmCollection** results) Commit;
		}
		[CRepr]
		public struct IFsrmAction : IDispatch
		{
			public const new Guid IID = .(0x6cd6408a, 0xae60, 0x463b, 0x9e, 0xf1, 0xe1, 0x17, 0x53, 0x4d, 0x69, 0xdc);
			
			public function HRESULT(IFsrmAction *self, Guid* id) get_Id;
			public function HRESULT(IFsrmAction *self, FsrmActionType* actionType) get_ActionType;
			public function HRESULT(IFsrmAction *self, int32* minutes) get_RunLimitInterval;
			public function HRESULT(IFsrmAction *self, int32 minutes) put_RunLimitInterval;
			public function HRESULT(IFsrmAction *self) Delete;
		}
		[CRepr]
		public struct IFsrmActionEmail : IFsrmAction
		{
			public const new Guid IID = .(0xd646567d, 0x26ae, 0x4caa, 0x9f, 0x84, 0x4e, 0x0a, 0xad, 0x20, 0x7f, 0xca);
			
			public function HRESULT(IFsrmActionEmail *self, BSTR* mailFrom) get_MailFrom;
			public function HRESULT(IFsrmActionEmail *self, BSTR mailFrom) put_MailFrom;
			public function HRESULT(IFsrmActionEmail *self, BSTR* mailReplyTo) get_MailReplyTo;
			public function HRESULT(IFsrmActionEmail *self, BSTR mailReplyTo) put_MailReplyTo;
			public function HRESULT(IFsrmActionEmail *self, BSTR* mailTo) get_MailTo;
			public function HRESULT(IFsrmActionEmail *self, BSTR mailTo) put_MailTo;
			public function HRESULT(IFsrmActionEmail *self, BSTR* mailCc) get_MailCc;
			public function HRESULT(IFsrmActionEmail *self, BSTR mailCc) put_MailCc;
			public function HRESULT(IFsrmActionEmail *self, BSTR* mailBcc) get_MailBcc;
			public function HRESULT(IFsrmActionEmail *self, BSTR mailBcc) put_MailBcc;
			public function HRESULT(IFsrmActionEmail *self, BSTR* mailSubject) get_MailSubject;
			public function HRESULT(IFsrmActionEmail *self, BSTR mailSubject) put_MailSubject;
			public function HRESULT(IFsrmActionEmail *self, BSTR* messageText) get_MessageText;
			public function HRESULT(IFsrmActionEmail *self, BSTR messageText) put_MessageText;
		}
		[CRepr]
		public struct IFsrmActionEmail2 : IFsrmActionEmail
		{
			public const new Guid IID = .(0x8276702f, 0x2532, 0x4839, 0x89, 0xbf, 0x48, 0x72, 0x60, 0x9a, 0x2e, 0xa4);
			
			public function HRESULT(IFsrmActionEmail2 *self, int32* attachmentFileListSize) get_AttachmentFileListSize;
			public function HRESULT(IFsrmActionEmail2 *self, int32 attachmentFileListSize) put_AttachmentFileListSize;
		}
		[CRepr]
		public struct IFsrmActionReport : IFsrmAction
		{
			public const new Guid IID = .(0x2dbe63c4, 0xb340, 0x48a0, 0xa5, 0xb0, 0x15, 0x8e, 0x07, 0xfc, 0x56, 0x7e);
			
			public function HRESULT(IFsrmActionReport *self, SAFEARRAY** reportTypes) get_ReportTypes;
			public function HRESULT(IFsrmActionReport *self, SAFEARRAY* reportTypes) put_ReportTypes;
			public function HRESULT(IFsrmActionReport *self, BSTR* mailTo) get_MailTo;
			public function HRESULT(IFsrmActionReport *self, BSTR mailTo) put_MailTo;
		}
		[CRepr]
		public struct IFsrmActionEventLog : IFsrmAction
		{
			public const new Guid IID = .(0x4c8f96c3, 0x5d94, 0x4f37, 0xa4, 0xf4, 0xf5, 0x6a, 0xb4, 0x63, 0x54, 0x6f);
			
			public function HRESULT(IFsrmActionEventLog *self, FsrmEventType* eventType) get_EventType;
			public function HRESULT(IFsrmActionEventLog *self, FsrmEventType eventType) put_EventType;
			public function HRESULT(IFsrmActionEventLog *self, BSTR* messageText) get_MessageText;
			public function HRESULT(IFsrmActionEventLog *self, BSTR messageText) put_MessageText;
		}
		[CRepr]
		public struct IFsrmActionCommand : IFsrmAction
		{
			public const new Guid IID = .(0x12937789, 0xe247, 0x4917, 0x9c, 0x20, 0xf3, 0xee, 0x9c, 0x7e, 0xe7, 0x83);
			
			public function HRESULT(IFsrmActionCommand *self, BSTR* executablePath) get_ExecutablePath;
			public function HRESULT(IFsrmActionCommand *self, BSTR executablePath) put_ExecutablePath;
			public function HRESULT(IFsrmActionCommand *self, BSTR* arguments) get_Arguments;
			public function HRESULT(IFsrmActionCommand *self, BSTR arguments) put_Arguments;
			public function HRESULT(IFsrmActionCommand *self, FsrmAccountType* account) get_Account;
			public function HRESULT(IFsrmActionCommand *self, FsrmAccountType account) put_Account;
			public function HRESULT(IFsrmActionCommand *self, BSTR* workingDirectory) get_WorkingDirectory;
			public function HRESULT(IFsrmActionCommand *self, BSTR workingDirectory) put_WorkingDirectory;
			public function HRESULT(IFsrmActionCommand *self, int16* monitorCommand) get_MonitorCommand;
			public function HRESULT(IFsrmActionCommand *self, int16 monitorCommand) put_MonitorCommand;
			public function HRESULT(IFsrmActionCommand *self, int32* minutes) get_KillTimeOut;
			public function HRESULT(IFsrmActionCommand *self, int32 minutes) put_KillTimeOut;
			public function HRESULT(IFsrmActionCommand *self, int16* logResults) get_LogResult;
			public function HRESULT(IFsrmActionCommand *self, int16 logResults) put_LogResult;
		}
		[CRepr]
		public struct IFsrmSetting : IDispatch
		{
			public const new Guid IID = .(0xf411d4fd, 0x14be, 0x4260, 0x8c, 0x40, 0x03, 0xb7, 0xc9, 0x5e, 0x60, 0x8a);
			
			public function HRESULT(IFsrmSetting *self, BSTR* smtpServer) get_SmtpServer;
			public function HRESULT(IFsrmSetting *self, BSTR smtpServer) put_SmtpServer;
			public function HRESULT(IFsrmSetting *self, BSTR* mailFrom) get_MailFrom;
			public function HRESULT(IFsrmSetting *self, BSTR mailFrom) put_MailFrom;
			public function HRESULT(IFsrmSetting *self, BSTR* adminEmail) get_AdminEmail;
			public function HRESULT(IFsrmSetting *self, BSTR adminEmail) put_AdminEmail;
			public function HRESULT(IFsrmSetting *self, int16* disableCommandLine) get_DisableCommandLine;
			public function HRESULT(IFsrmSetting *self, int16 disableCommandLine) put_DisableCommandLine;
			public function HRESULT(IFsrmSetting *self, int16* enableScreeningAudit) get_EnableScreeningAudit;
			public function HRESULT(IFsrmSetting *self, int16 enableScreeningAudit) put_EnableScreeningAudit;
			public function HRESULT(IFsrmSetting *self, BSTR mailTo) EmailTest;
			public function HRESULT(IFsrmSetting *self, FsrmActionType actionType, int32 delayTimeMinutes) SetActionRunLimitInterval;
			public function HRESULT(IFsrmSetting *self, FsrmActionType actionType, int32* delayTimeMinutes) GetActionRunLimitInterval;
		}
		[CRepr]
		public struct IFsrmPathMapper : IDispatch
		{
			public const new Guid IID = .(0x6f4dbfff, 0x6920, 0x4821, 0xa6, 0xc3, 0xb7, 0xe9, 0x4c, 0x1f, 0xd6, 0x0c);
			
			public function HRESULT(IFsrmPathMapper *self, BSTR localPath, SAFEARRAY** sharePaths) GetSharePathsForLocalPath;
		}
		[CRepr]
		public struct IFsrmExportImport : IDispatch
		{
			public const new Guid IID = .(0xefcb0ab1, 0x16c4, 0x4a79, 0x81, 0x2c, 0x72, 0x56, 0x14, 0xc3, 0x30, 0x6b);
			
			public function HRESULT(IFsrmExportImport *self, BSTR filePath, VARIANT* fileGroupNamesSafeArray, BSTR remoteHost) ExportFileGroups;
			public function HRESULT(IFsrmExportImport *self, BSTR filePath, VARIANT* fileGroupNamesSafeArray, BSTR remoteHost, IFsrmCommittableCollection** fileGroups) ImportFileGroups;
			public function HRESULT(IFsrmExportImport *self, BSTR filePath, VARIANT* templateNamesSafeArray, BSTR remoteHost) ExportFileScreenTemplates;
			public function HRESULT(IFsrmExportImport *self, BSTR filePath, VARIANT* templateNamesSafeArray, BSTR remoteHost, IFsrmCommittableCollection** templates) ImportFileScreenTemplates;
			public function HRESULT(IFsrmExportImport *self, BSTR filePath, VARIANT* templateNamesSafeArray, BSTR remoteHost) ExportQuotaTemplates;
			public function HRESULT(IFsrmExportImport *self, BSTR filePath, VARIANT* templateNamesSafeArray, BSTR remoteHost, IFsrmCommittableCollection** templates) ImportQuotaTemplates;
		}
		[CRepr]
		public struct IFsrmDerivedObjectsResult : IDispatch
		{
			public const new Guid IID = .(0x39322a2d, 0x38ee, 0x4d0d, 0x80, 0x95, 0x42, 0x1a, 0x80, 0x84, 0x9a, 0x82);
			
			public function HRESULT(IFsrmDerivedObjectsResult *self, IFsrmCollection** derivedObjects) get_DerivedObjects;
			public function HRESULT(IFsrmDerivedObjectsResult *self, IFsrmCollection** results) get_Results;
		}
		[CRepr]
		public struct IFsrmAccessDeniedRemediationClient : IDispatch
		{
			public const new Guid IID = .(0x40002314, 0x590b, 0x45a5, 0x8e, 0x1b, 0x8c, 0x05, 0xda, 0x52, 0x7e, 0x52);
			
			public function HRESULT(IFsrmAccessDeniedRemediationClient *self, uint parentWnd, BSTR accessPath, AdrClientErrorType errorType, int32 flags, BSTR windowTitle, BSTR windowMessage, int32* result) Show;
		}
		[CRepr]
		public struct IFsrmQuotaBase : IFsrmObject
		{
			public const new Guid IID = .(0x1568a795, 0x3924, 0x4118, 0xb7, 0x4b, 0x68, 0xd8, 0xf0, 0xfa, 0x5d, 0xaf);
			
			public function HRESULT(IFsrmQuotaBase *self, VARIANT* quotaLimit) get_QuotaLimit;
			public function HRESULT(IFsrmQuotaBase *self, VARIANT quotaLimit) put_QuotaLimit;
			public function HRESULT(IFsrmQuotaBase *self, int32* quotaFlags) get_QuotaFlags;
			public function HRESULT(IFsrmQuotaBase *self, int32 quotaFlags) put_QuotaFlags;
			public function HRESULT(IFsrmQuotaBase *self, SAFEARRAY** thresholds) get_Thresholds;
			public function HRESULT(IFsrmQuotaBase *self, int32 threshold) AddThreshold;
			public function HRESULT(IFsrmQuotaBase *self, int32 threshold) DeleteThreshold;
			public function HRESULT(IFsrmQuotaBase *self, int32 threshold, int32 newThreshold) ModifyThreshold;
			public function HRESULT(IFsrmQuotaBase *self, int32 threshold, FsrmActionType actionType, IFsrmAction** action) CreateThresholdAction;
			public function HRESULT(IFsrmQuotaBase *self, int32 threshold, IFsrmCollection** actions) EnumThresholdActions;
		}
		[CRepr]
		public struct IFsrmQuotaObject : IFsrmQuotaBase
		{
			public const new Guid IID = .(0x42dc3511, 0x61d5, 0x48ae, 0xb6, 0xdc, 0x59, 0xfc, 0x00, 0xc0, 0xa8, 0xd6);
			
			public function HRESULT(IFsrmQuotaObject *self, BSTR* path) get_Path;
			public function HRESULT(IFsrmQuotaObject *self, BSTR* userSid) get_UserSid;
			public function HRESULT(IFsrmQuotaObject *self, BSTR* userAccount) get_UserAccount;
			public function HRESULT(IFsrmQuotaObject *self, BSTR* quotaTemplateName) get_SourceTemplateName;
			public function HRESULT(IFsrmQuotaObject *self, int16* matches) get_MatchesSourceTemplate;
			public function HRESULT(IFsrmQuotaObject *self, BSTR quotaTemplateName) ApplyTemplate;
		}
		[CRepr]
		public struct IFsrmQuota : IFsrmQuotaObject
		{
			public const new Guid IID = .(0x377f739d, 0x9647, 0x4b8e, 0x97, 0xd2, 0x5f, 0xfc, 0xe6, 0xd7, 0x59, 0xcd);
			
			public function HRESULT(IFsrmQuota *self, VARIANT* used) get_QuotaUsed;
			public function HRESULT(IFsrmQuota *self, VARIANT* peakUsage) get_QuotaPeakUsage;
			public function HRESULT(IFsrmQuota *self, double* peakUsageDateTime) get_QuotaPeakUsageTime;
			public function HRESULT(IFsrmQuota *self) ResetPeakUsage;
			public function HRESULT(IFsrmQuota *self) RefreshUsageProperties;
		}
		[CRepr]
		public struct IFsrmAutoApplyQuota : IFsrmQuotaObject
		{
			public const new Guid IID = .(0xf82e5729, 0x6aba, 0x4740, 0xbf, 0xc7, 0xc7, 0xf5, 0x8f, 0x75, 0xfb, 0x7b);
			
			public function HRESULT(IFsrmAutoApplyQuota *self, SAFEARRAY** folders) get_ExcludeFolders;
			public function HRESULT(IFsrmAutoApplyQuota *self, SAFEARRAY* folders) put_ExcludeFolders;
			public function HRESULT(IFsrmAutoApplyQuota *self, FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, IFsrmDerivedObjectsResult** derivedObjectsResult) CommitAndUpdateDerived;
		}
		[CRepr]
		public struct IFsrmQuotaManager : IDispatch
		{
			public const new Guid IID = .(0x8bb68c7d, 0x19d8, 0x4ffb, 0x80, 0x9e, 0xbe, 0x4f, 0xc1, 0x73, 0x40, 0x14);
			
			public function HRESULT(IFsrmQuotaManager *self, SAFEARRAY** variables) get_ActionVariables;
			public function HRESULT(IFsrmQuotaManager *self, SAFEARRAY** descriptions) get_ActionVariableDescriptions;
			public function HRESULT(IFsrmQuotaManager *self, BSTR path, IFsrmQuota** quota) CreateQuota;
			public function HRESULT(IFsrmQuotaManager *self, BSTR quotaTemplateName, BSTR path, IFsrmAutoApplyQuota** quota) CreateAutoApplyQuota;
			public function HRESULT(IFsrmQuotaManager *self, BSTR path, IFsrmQuota** quota) GetQuota;
			public function HRESULT(IFsrmQuotaManager *self, BSTR path, IFsrmAutoApplyQuota** quota) GetAutoApplyQuota;
			public function HRESULT(IFsrmQuotaManager *self, BSTR path, IFsrmQuota** quota) GetRestrictiveQuota;
			public function HRESULT(IFsrmQuotaManager *self, BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** quotas) EnumQuotas;
			public function HRESULT(IFsrmQuotaManager *self, BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** quotas) EnumAutoApplyQuotas;
			public function HRESULT(IFsrmQuotaManager *self, BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** quotas) EnumEffectiveQuotas;
			public function HRESULT(IFsrmQuotaManager *self, BSTR strPath) Scan;
			public function HRESULT(IFsrmQuotaManager *self, IFsrmCommittableCollection** collection) CreateQuotaCollection;
		}
		[CRepr]
		public struct IFsrmQuotaManagerEx : IFsrmQuotaManager
		{
			public const new Guid IID = .(0x4846cb01, 0xd430, 0x494f, 0xab, 0xb4, 0xb1, 0x05, 0x49, 0x99, 0xfb, 0x09);
			
			public function HRESULT(IFsrmQuotaManagerEx *self, BSTR path, FsrmEnumOptions options, int16* affected) IsAffectedByQuota;
		}
		[CRepr]
		public struct IFsrmQuotaTemplate : IFsrmQuotaBase
		{
			public const new Guid IID = .(0xa2efab31, 0x295e, 0x46bb, 0xb9, 0x76, 0xe8, 0x6d, 0x58, 0xb5, 0x2e, 0x8b);
			
			public function HRESULT(IFsrmQuotaTemplate *self, BSTR* name) get_Name;
			public function HRESULT(IFsrmQuotaTemplate *self, BSTR name) put_Name;
			public function HRESULT(IFsrmQuotaTemplate *self, BSTR quotaTemplateName) CopyTemplate;
			public function HRESULT(IFsrmQuotaTemplate *self, FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, IFsrmDerivedObjectsResult** derivedObjectsResult) CommitAndUpdateDerived;
		}
		[CRepr]
		public struct IFsrmQuotaTemplateImported : IFsrmQuotaTemplate
		{
			public const new Guid IID = .(0x9a2bf113, 0xa329, 0x44cc, 0x80, 0x9a, 0x5c, 0x00, 0xfc, 0xe8, 0xda, 0x40);
			
			public function HRESULT(IFsrmQuotaTemplateImported *self, int16* overwrite) get_OverwriteOnCommit;
			public function HRESULT(IFsrmQuotaTemplateImported *self, int16 overwrite) put_OverwriteOnCommit;
		}
		[CRepr]
		public struct IFsrmQuotaTemplateManager : IDispatch
		{
			public const new Guid IID = .(0x4173ac41, 0x172d, 0x4d52, 0x96, 0x3c, 0xfd, 0xc7, 0xe4, 0x15, 0xf7, 0x17);
			
			public function HRESULT(IFsrmQuotaTemplateManager *self, IFsrmQuotaTemplate** quotaTemplate) CreateTemplate;
			public function HRESULT(IFsrmQuotaTemplateManager *self, BSTR name, IFsrmQuotaTemplate** quotaTemplate) GetTemplate;
			public function HRESULT(IFsrmQuotaTemplateManager *self, FsrmEnumOptions options, IFsrmCommittableCollection** quotaTemplates) EnumTemplates;
			public function HRESULT(IFsrmQuotaTemplateManager *self, VARIANT* quotaTemplateNamesArray, BSTR* serializedQuotaTemplates) ExportTemplates;
			public function HRESULT(IFsrmQuotaTemplateManager *self, BSTR serializedQuotaTemplates, VARIANT* quotaTemplateNamesArray, IFsrmCommittableCollection** quotaTemplates) ImportTemplates;
		}
		[CRepr]
		public struct IFsrmFileGroup : IFsrmObject
		{
			public const new Guid IID = .(0x8dd04909, 0x0e34, 0x4d55, 0xaf, 0xaa, 0x89, 0xe1, 0xf1, 0xa1, 0xbb, 0xb9);
			
			public function HRESULT(IFsrmFileGroup *self, BSTR* name) get_Name;
			public function HRESULT(IFsrmFileGroup *self, BSTR name) put_Name;
			public function HRESULT(IFsrmFileGroup *self, IFsrmMutableCollection** members) get_Members;
			public function HRESULT(IFsrmFileGroup *self, IFsrmMutableCollection* members) put_Members;
			public function HRESULT(IFsrmFileGroup *self, IFsrmMutableCollection** nonMembers) get_NonMembers;
			public function HRESULT(IFsrmFileGroup *self, IFsrmMutableCollection* nonMembers) put_NonMembers;
		}
		[CRepr]
		public struct IFsrmFileGroupImported : IFsrmFileGroup
		{
			public const new Guid IID = .(0xad55f10b, 0x5f11, 0x4be7, 0x94, 0xef, 0xd9, 0xee, 0x2e, 0x47, 0x0d, 0xed);
			
			public function HRESULT(IFsrmFileGroupImported *self, int16* overwrite) get_OverwriteOnCommit;
			public function HRESULT(IFsrmFileGroupImported *self, int16 overwrite) put_OverwriteOnCommit;
		}
		[CRepr]
		public struct IFsrmFileGroupManager : IDispatch
		{
			public const new Guid IID = .(0x426677d5, 0x018c, 0x485c, 0x8a, 0x51, 0x20, 0xb8, 0x6d, 0x00, 0xbd, 0xc4);
			
			public function HRESULT(IFsrmFileGroupManager *self, IFsrmFileGroup** fileGroup) CreateFileGroup;
			public function HRESULT(IFsrmFileGroupManager *self, BSTR name, IFsrmFileGroup** fileGroup) GetFileGroup;
			public function HRESULT(IFsrmFileGroupManager *self, FsrmEnumOptions options, IFsrmCommittableCollection** fileGroups) EnumFileGroups;
			public function HRESULT(IFsrmFileGroupManager *self, VARIANT* fileGroupNamesArray, BSTR* serializedFileGroups) ExportFileGroups;
			public function HRESULT(IFsrmFileGroupManager *self, BSTR serializedFileGroups, VARIANT* fileGroupNamesArray, IFsrmCommittableCollection** fileGroups) ImportFileGroups;
		}
		[CRepr]
		public struct IFsrmFileScreenBase : IFsrmObject
		{
			public const new Guid IID = .(0xf3637e80, 0x5b22, 0x4a2b, 0xa6, 0x37, 0xbb, 0xb6, 0x42, 0xb4, 0x1c, 0xfc);
			
			public function HRESULT(IFsrmFileScreenBase *self, IFsrmMutableCollection** blockList) get_BlockedFileGroups;
			public function HRESULT(IFsrmFileScreenBase *self, IFsrmMutableCollection* blockList) put_BlockedFileGroups;
			public function HRESULT(IFsrmFileScreenBase *self, int32* fileScreenFlags) get_FileScreenFlags;
			public function HRESULT(IFsrmFileScreenBase *self, int32 fileScreenFlags) put_FileScreenFlags;
			public function HRESULT(IFsrmFileScreenBase *self, FsrmActionType actionType, IFsrmAction** action) CreateAction;
			public function HRESULT(IFsrmFileScreenBase *self, IFsrmCollection** actions) EnumActions;
		}
		[CRepr]
		public struct IFsrmFileScreen : IFsrmFileScreenBase
		{
			public const new Guid IID = .(0x5f6325d3, 0xce88, 0x4733, 0x84, 0xc1, 0x2d, 0x6a, 0xef, 0xc5, 0xea, 0x07);
			
			public function HRESULT(IFsrmFileScreen *self, BSTR* path) get_Path;
			public function HRESULT(IFsrmFileScreen *self, BSTR* fileScreenTemplateName) get_SourceTemplateName;
			public function HRESULT(IFsrmFileScreen *self, int16* matches) get_MatchesSourceTemplate;
			public function HRESULT(IFsrmFileScreen *self, BSTR* userSid) get_UserSid;
			public function HRESULT(IFsrmFileScreen *self, BSTR* userAccount) get_UserAccount;
			public function HRESULT(IFsrmFileScreen *self, BSTR fileScreenTemplateName) ApplyTemplate;
		}
		[CRepr]
		public struct IFsrmFileScreenException : IFsrmObject
		{
			public const new Guid IID = .(0xbee7ce02, 0xdf77, 0x4515, 0x93, 0x89, 0x78, 0xf0, 0x1c, 0x5a, 0xfc, 0x1a);
			
			public function HRESULT(IFsrmFileScreenException *self, BSTR* path) get_Path;
			public function HRESULT(IFsrmFileScreenException *self, IFsrmMutableCollection** allowList) get_AllowedFileGroups;
			public function HRESULT(IFsrmFileScreenException *self, IFsrmMutableCollection* allowList) put_AllowedFileGroups;
		}
		[CRepr]
		public struct IFsrmFileScreenManager : IDispatch
		{
			public const new Guid IID = .(0xff4fa04e, 0x5a94, 0x4bda, 0xa3, 0xa0, 0xd5, 0xb4, 0xd3, 0xc5, 0x2e, 0xba);
			
			public function HRESULT(IFsrmFileScreenManager *self, SAFEARRAY** variables) get_ActionVariables;
			public function HRESULT(IFsrmFileScreenManager *self, SAFEARRAY** descriptions) get_ActionVariableDescriptions;
			public function HRESULT(IFsrmFileScreenManager *self, BSTR path, IFsrmFileScreen** fileScreen) CreateFileScreen;
			public function HRESULT(IFsrmFileScreenManager *self, BSTR path, IFsrmFileScreen** fileScreen) GetFileScreen;
			public function HRESULT(IFsrmFileScreenManager *self, BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** fileScreens) EnumFileScreens;
			public function HRESULT(IFsrmFileScreenManager *self, BSTR path, IFsrmFileScreenException** fileScreenException) CreateFileScreenException;
			public function HRESULT(IFsrmFileScreenManager *self, BSTR path, IFsrmFileScreenException** fileScreenException) GetFileScreenException;
			public function HRESULT(IFsrmFileScreenManager *self, BSTR path, FsrmEnumOptions options, IFsrmCommittableCollection** fileScreenExceptions) EnumFileScreenExceptions;
			public function HRESULT(IFsrmFileScreenManager *self, IFsrmCommittableCollection** collection) CreateFileScreenCollection;
		}
		[CRepr]
		public struct IFsrmFileScreenTemplate : IFsrmFileScreenBase
		{
			public const new Guid IID = .(0x205bebf8, 0xdd93, 0x452a, 0x95, 0xa6, 0x32, 0xb5, 0x66, 0xb3, 0x58, 0x28);
			
			public function HRESULT(IFsrmFileScreenTemplate *self, BSTR* name) get_Name;
			public function HRESULT(IFsrmFileScreenTemplate *self, BSTR name) put_Name;
			public function HRESULT(IFsrmFileScreenTemplate *self, BSTR fileScreenTemplateName) CopyTemplate;
			public function HRESULT(IFsrmFileScreenTemplate *self, FsrmCommitOptions commitOptions, FsrmTemplateApplyOptions applyOptions, IFsrmDerivedObjectsResult** derivedObjectsResult) CommitAndUpdateDerived;
		}
		[CRepr]
		public struct IFsrmFileScreenTemplateImported : IFsrmFileScreenTemplate
		{
			public const new Guid IID = .(0xe1010359, 0x3e5d, 0x4ecd, 0x9f, 0xe4, 0xef, 0x48, 0x62, 0x2f, 0xdf, 0x30);
			
			public function HRESULT(IFsrmFileScreenTemplateImported *self, int16* overwrite) get_OverwriteOnCommit;
			public function HRESULT(IFsrmFileScreenTemplateImported *self, int16 overwrite) put_OverwriteOnCommit;
		}
		[CRepr]
		public struct IFsrmFileScreenTemplateManager : IDispatch
		{
			public const new Guid IID = .(0xcfe36cba, 0x1949, 0x4e74, 0xa1, 0x4f, 0xf1, 0xd5, 0x80, 0xce, 0xaf, 0x13);
			
			public function HRESULT(IFsrmFileScreenTemplateManager *self, IFsrmFileScreenTemplate** fileScreenTemplate) CreateTemplate;
			public function HRESULT(IFsrmFileScreenTemplateManager *self, BSTR name, IFsrmFileScreenTemplate** fileScreenTemplate) GetTemplate;
			public function HRESULT(IFsrmFileScreenTemplateManager *self, FsrmEnumOptions options, IFsrmCommittableCollection** fileScreenTemplates) EnumTemplates;
			public function HRESULT(IFsrmFileScreenTemplateManager *self, VARIANT* fileScreenTemplateNamesArray, BSTR* serializedFileScreenTemplates) ExportTemplates;
			public function HRESULT(IFsrmFileScreenTemplateManager *self, BSTR serializedFileScreenTemplates, VARIANT* fileScreenTemplateNamesArray, IFsrmCommittableCollection** fileScreenTemplates) ImportTemplates;
		}
		[CRepr]
		public struct IFsrmReportManager : IDispatch
		{
			public const new Guid IID = .(0x27b899fe, 0x6ffa, 0x4481, 0xa1, 0x84, 0xd3, 0xda, 0xad, 0xe8, 0xa0, 0x2b);
			
			public function HRESULT(IFsrmReportManager *self, FsrmEnumOptions options, IFsrmCollection** reportJobs) EnumReportJobs;
			public function HRESULT(IFsrmReportManager *self, IFsrmReportJob** reportJob) CreateReportJob;
			public function HRESULT(IFsrmReportManager *self, BSTR taskName, IFsrmReportJob** reportJob) GetReportJob;
			public function HRESULT(IFsrmReportManager *self, FsrmReportGenerationContext context, BSTR* path) GetOutputDirectory;
			public function HRESULT(IFsrmReportManager *self, FsrmReportGenerationContext context, BSTR path) SetOutputDirectory;
			public function HRESULT(IFsrmReportManager *self, FsrmReportType reportType, FsrmReportFilter filter, int16* valid) IsFilterValidForReportType;
			public function HRESULT(IFsrmReportManager *self, FsrmReportType reportType, FsrmReportFilter filter, VARIANT* filterValue) GetDefaultFilter;
			public function HRESULT(IFsrmReportManager *self, FsrmReportType reportType, FsrmReportFilter filter, VARIANT filterValue) SetDefaultFilter;
			public function HRESULT(IFsrmReportManager *self, FsrmReportLimit limit, VARIANT* limitValue) GetReportSizeLimit;
			public function HRESULT(IFsrmReportManager *self, FsrmReportLimit limit, VARIANT limitValue) SetReportSizeLimit;
		}
		[CRepr]
		public struct IFsrmReportJob : IFsrmObject
		{
			public const new Guid IID = .(0x38e87280, 0x715c, 0x4c7d, 0xa2, 0x80, 0xea, 0x16, 0x51, 0xa1, 0x9f, 0xef);
			
			public function HRESULT(IFsrmReportJob *self, BSTR* taskName) get_Task;
			public function HRESULT(IFsrmReportJob *self, BSTR taskName) put_Task;
			public function HRESULT(IFsrmReportJob *self, SAFEARRAY** namespaceRoots) get_NamespaceRoots;
			public function HRESULT(IFsrmReportJob *self, SAFEARRAY* namespaceRoots) put_NamespaceRoots;
			public function HRESULT(IFsrmReportJob *self, SAFEARRAY** formats) get_Formats;
			public function HRESULT(IFsrmReportJob *self, SAFEARRAY* formats) put_Formats;
			public function HRESULT(IFsrmReportJob *self, BSTR* mailTo) get_MailTo;
			public function HRESULT(IFsrmReportJob *self, BSTR mailTo) put_MailTo;
			public function HRESULT(IFsrmReportJob *self, FsrmReportRunningStatus* runningStatus) get_RunningStatus;
			public function HRESULT(IFsrmReportJob *self, double* lastRun) get_LastRun;
			public function HRESULT(IFsrmReportJob *self, BSTR* lastError) get_LastError;
			public function HRESULT(IFsrmReportJob *self, BSTR* path) get_LastGeneratedInDirectory;
			public function HRESULT(IFsrmReportJob *self, IFsrmCollection** reports) EnumReports;
			public function HRESULT(IFsrmReportJob *self, FsrmReportType reportType, IFsrmReport** report) CreateReport;
			public function HRESULT(IFsrmReportJob *self, FsrmReportGenerationContext context) Run;
			public function HRESULT(IFsrmReportJob *self, int32 waitSeconds, int16* completed) WaitForCompletion;
			public function HRESULT(IFsrmReportJob *self) Cancel;
		}
		[CRepr]
		public struct IFsrmReport : IDispatch
		{
			public const new Guid IID = .(0xd8cc81d9, 0x46b8, 0x4fa4, 0xbf, 0xa5, 0x4a, 0xa9, 0xde, 0xc9, 0xb6, 0x38);
			
			public function HRESULT(IFsrmReport *self, FsrmReportType* reportType) get_Type;
			public function HRESULT(IFsrmReport *self, BSTR* name) get_Name;
			public function HRESULT(IFsrmReport *self, BSTR name) put_Name;
			public function HRESULT(IFsrmReport *self, BSTR* description) get_Description;
			public function HRESULT(IFsrmReport *self, BSTR description) put_Description;
			public function HRESULT(IFsrmReport *self, BSTR* prefix) get_LastGeneratedFileNamePrefix;
			public function HRESULT(IFsrmReport *self, FsrmReportFilter filter, VARIANT* filterValue) GetFilter;
			public function HRESULT(IFsrmReport *self, FsrmReportFilter filter, VARIANT filterValue) SetFilter;
			public function HRESULT(IFsrmReport *self) Delete;
		}
		[CRepr]
		public struct IFsrmReportScheduler : IDispatch
		{
			public const new Guid IID = .(0x6879caf9, 0x6617, 0x4484, 0x87, 0x19, 0x71, 0xc3, 0xd8, 0x64, 0x5f, 0x94);
			
			public function HRESULT(IFsrmReportScheduler *self, VARIANT* namespacesSafeArray) VerifyNamespaces;
			public function HRESULT(IFsrmReportScheduler *self, BSTR taskName, VARIANT* namespacesSafeArray, BSTR serializedTask) CreateScheduleTask;
			public function HRESULT(IFsrmReportScheduler *self, BSTR taskName, VARIANT* namespacesSafeArray, BSTR serializedTask) ModifyScheduleTask;
			public function HRESULT(IFsrmReportScheduler *self, BSTR taskName) DeleteScheduleTask;
		}
		[CRepr]
		public struct IFsrmFileManagementJobManager : IDispatch
		{
			public const new Guid IID = .(0xee321ecb, 0xd95e, 0x48e9, 0x90, 0x7c, 0xc7, 0x68, 0x5a, 0x01, 0x32, 0x35);
			
			public function HRESULT(IFsrmFileManagementJobManager *self, SAFEARRAY** variables) get_ActionVariables;
			public function HRESULT(IFsrmFileManagementJobManager *self, SAFEARRAY** descriptions) get_ActionVariableDescriptions;
			public function HRESULT(IFsrmFileManagementJobManager *self, FsrmEnumOptions options, IFsrmCollection** fileManagementJobs) EnumFileManagementJobs;
			public function HRESULT(IFsrmFileManagementJobManager *self, IFsrmFileManagementJob** fileManagementJob) CreateFileManagementJob;
			public function HRESULT(IFsrmFileManagementJobManager *self, BSTR name, IFsrmFileManagementJob** fileManagementJob) GetFileManagementJob;
		}
		[CRepr]
		public struct IFsrmFileManagementJob : IFsrmObject
		{
			public const new Guid IID = .(0x0770687e, 0x9f36, 0x4d6f, 0x87, 0x78, 0x59, 0x9d, 0x18, 0x84, 0x61, 0xc9);
			
			public function HRESULT(IFsrmFileManagementJob *self, BSTR* name) get_Name;
			public function HRESULT(IFsrmFileManagementJob *self, BSTR name) put_Name;
			public function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY** namespaceRoots) get_NamespaceRoots;
			public function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY* namespaceRoots) put_NamespaceRoots;
			public function HRESULT(IFsrmFileManagementJob *self, int16* enabled) get_Enabled;
			public function HRESULT(IFsrmFileManagementJob *self, int16 enabled) put_Enabled;
			public function HRESULT(IFsrmFileManagementJob *self, FsrmFileManagementType* operationType) get_OperationType;
			public function HRESULT(IFsrmFileManagementJob *self, FsrmFileManagementType operationType) put_OperationType;
			public function HRESULT(IFsrmFileManagementJob *self, BSTR* expirationDirectory) get_ExpirationDirectory;
			public function HRESULT(IFsrmFileManagementJob *self, BSTR expirationDirectory) put_ExpirationDirectory;
			public function HRESULT(IFsrmFileManagementJob *self, IFsrmActionCommand** action) get_CustomAction;
			public function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY** notifications) get_Notifications;
			public function HRESULT(IFsrmFileManagementJob *self, int32* loggingFlags) get_Logging;
			public function HRESULT(IFsrmFileManagementJob *self, int32 loggingFlags) put_Logging;
			public function HRESULT(IFsrmFileManagementJob *self, int16* reportEnabled) get_ReportEnabled;
			public function HRESULT(IFsrmFileManagementJob *self, int16 reportEnabled) put_ReportEnabled;
			public function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY** formats) get_Formats;
			public function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY* formats) put_Formats;
			public function HRESULT(IFsrmFileManagementJob *self, BSTR* mailTo) get_MailTo;
			public function HRESULT(IFsrmFileManagementJob *self, BSTR mailTo) put_MailTo;
			public function HRESULT(IFsrmFileManagementJob *self, int32* daysSinceCreation) get_DaysSinceFileCreated;
			public function HRESULT(IFsrmFileManagementJob *self, int32 daysSinceCreation) put_DaysSinceFileCreated;
			public function HRESULT(IFsrmFileManagementJob *self, int32* daysSinceAccess) get_DaysSinceFileLastAccessed;
			public function HRESULT(IFsrmFileManagementJob *self, int32 daysSinceAccess) put_DaysSinceFileLastAccessed;
			public function HRESULT(IFsrmFileManagementJob *self, int32* daysSinceModify) get_DaysSinceFileLastModified;
			public function HRESULT(IFsrmFileManagementJob *self, int32 daysSinceModify) put_DaysSinceFileLastModified;
			public function HRESULT(IFsrmFileManagementJob *self, IFsrmCollection** propertyConditions) get_PropertyConditions;
			public function HRESULT(IFsrmFileManagementJob *self, double* fromDate) get_FromDate;
			public function HRESULT(IFsrmFileManagementJob *self, double fromDate) put_FromDate;
			public function HRESULT(IFsrmFileManagementJob *self, BSTR* taskName) get_Task;
			public function HRESULT(IFsrmFileManagementJob *self, BSTR taskName) put_Task;
			public function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY** parameters) get_Parameters;
			public function HRESULT(IFsrmFileManagementJob *self, SAFEARRAY* parameters) put_Parameters;
			public function HRESULT(IFsrmFileManagementJob *self, FsrmReportRunningStatus* runningStatus) get_RunningStatus;
			public function HRESULT(IFsrmFileManagementJob *self, BSTR* lastError) get_LastError;
			public function HRESULT(IFsrmFileManagementJob *self, BSTR* path) get_LastReportPathWithoutExtension;
			public function HRESULT(IFsrmFileManagementJob *self, double* lastRun) get_LastRun;
			public function HRESULT(IFsrmFileManagementJob *self, BSTR* fileNamePattern) get_FileNamePattern;
			public function HRESULT(IFsrmFileManagementJob *self, BSTR fileNamePattern) put_FileNamePattern;
			public function HRESULT(IFsrmFileManagementJob *self, FsrmReportGenerationContext context) Run;
			public function HRESULT(IFsrmFileManagementJob *self, int32 waitSeconds, int16* completed) WaitForCompletion;
			public function HRESULT(IFsrmFileManagementJob *self) Cancel;
			public function HRESULT(IFsrmFileManagementJob *self, int32 days) AddNotification;
			public function HRESULT(IFsrmFileManagementJob *self, int32 days) DeleteNotification;
			public function HRESULT(IFsrmFileManagementJob *self, int32 days, int32 newDays) ModifyNotification;
			public function HRESULT(IFsrmFileManagementJob *self, int32 days, FsrmActionType actionType, IFsrmAction** action) CreateNotificationAction;
			public function HRESULT(IFsrmFileManagementJob *self, int32 days, IFsrmCollection** actions) EnumNotificationActions;
			public function HRESULT(IFsrmFileManagementJob *self, BSTR name, IFsrmPropertyCondition** propertyCondition) CreatePropertyCondition;
			public function HRESULT(IFsrmFileManagementJob *self, IFsrmActionCommand** customAction) CreateCustomAction;
		}
		[CRepr]
		public struct IFsrmPropertyCondition : IDispatch
		{
			public const new Guid IID = .(0x326af66f, 0x2ac0, 0x4f68, 0xbf, 0x8c, 0x47, 0x59, 0xf0, 0x54, 0xfa, 0x29);
			
			public function HRESULT(IFsrmPropertyCondition *self, BSTR* name) get_Name;
			public function HRESULT(IFsrmPropertyCondition *self, BSTR name) put_Name;
			public function HRESULT(IFsrmPropertyCondition *self, FsrmPropertyConditionType* type) get_Type;
			public function HRESULT(IFsrmPropertyCondition *self, FsrmPropertyConditionType type) put_Type;
			public function HRESULT(IFsrmPropertyCondition *self, BSTR* value) get_Value;
			public function HRESULT(IFsrmPropertyCondition *self, BSTR value) put_Value;
			public function HRESULT(IFsrmPropertyCondition *self) Delete;
		}
		[CRepr]
		public struct IFsrmFileCondition : IDispatch
		{
			public const new Guid IID = .(0x70684ffc, 0x691a, 0x4a1a, 0xb9, 0x22, 0x97, 0x75, 0x2e, 0x13, 0x8c, 0xc1);
			
			public function HRESULT(IFsrmFileCondition *self, FsrmFileConditionType* pVal) get_Type;
			public function HRESULT(IFsrmFileCondition *self) Delete;
		}
		[CRepr]
		public struct IFsrmFileConditionProperty : IFsrmFileCondition
		{
			public const new Guid IID = .(0x81926775, 0xb981, 0x4479, 0x98, 0x8f, 0xda, 0x17, 0x1d, 0x62, 0x73, 0x60);
			
			public function HRESULT(IFsrmFileConditionProperty *self, BSTR* pVal) get_PropertyName;
			public function HRESULT(IFsrmFileConditionProperty *self, BSTR newVal) put_PropertyName;
			public function HRESULT(IFsrmFileConditionProperty *self, FsrmFileSystemPropertyId* pVal) get_PropertyId;
			public function HRESULT(IFsrmFileConditionProperty *self, FsrmFileSystemPropertyId newVal) put_PropertyId;
			public function HRESULT(IFsrmFileConditionProperty *self, FsrmPropertyConditionType* pVal) get_Operator;
			public function HRESULT(IFsrmFileConditionProperty *self, FsrmPropertyConditionType newVal) put_Operator;
			public function HRESULT(IFsrmFileConditionProperty *self, FsrmPropertyValueType* pVal) get_ValueType;
			public function HRESULT(IFsrmFileConditionProperty *self, FsrmPropertyValueType newVal) put_ValueType;
			public function HRESULT(IFsrmFileConditionProperty *self, VARIANT* pVal) get_Value;
			public function HRESULT(IFsrmFileConditionProperty *self, VARIANT newVal) put_Value;
		}
		[CRepr]
		public struct IFsrmPropertyDefinition : IFsrmObject
		{
			public const new Guid IID = .(0xede0150f, 0xe9a3, 0x419c, 0x87, 0x7c, 0x01, 0xfe, 0x5d, 0x24, 0xc5, 0xd3);
			
			public function HRESULT(IFsrmPropertyDefinition *self, BSTR* name) get_Name;
			public function HRESULT(IFsrmPropertyDefinition *self, BSTR name) put_Name;
			public function HRESULT(IFsrmPropertyDefinition *self, FsrmPropertyDefinitionType* type) get_Type;
			public function HRESULT(IFsrmPropertyDefinition *self, FsrmPropertyDefinitionType type) put_Type;
			public function HRESULT(IFsrmPropertyDefinition *self, SAFEARRAY** possibleValues) get_PossibleValues;
			public function HRESULT(IFsrmPropertyDefinition *self, SAFEARRAY* possibleValues) put_PossibleValues;
			public function HRESULT(IFsrmPropertyDefinition *self, SAFEARRAY** valueDescriptions) get_ValueDescriptions;
			public function HRESULT(IFsrmPropertyDefinition *self, SAFEARRAY* valueDescriptions) put_ValueDescriptions;
			public function HRESULT(IFsrmPropertyDefinition *self, SAFEARRAY** parameters) get_Parameters;
			public function HRESULT(IFsrmPropertyDefinition *self, SAFEARRAY* parameters) put_Parameters;
		}
		[CRepr]
		public struct IFsrmPropertyDefinition2 : IFsrmPropertyDefinition
		{
			public const new Guid IID = .(0x47782152, 0xd16c, 0x4229, 0xb4, 0xe1, 0x0d, 0xdf, 0xe3, 0x08, 0xb9, 0xf6);
			
			public function HRESULT(IFsrmPropertyDefinition2 *self, int32* propertyDefinitionFlags) get_PropertyDefinitionFlags;
			public function HRESULT(IFsrmPropertyDefinition2 *self, BSTR* name) get_DisplayName;
			public function HRESULT(IFsrmPropertyDefinition2 *self, BSTR name) put_DisplayName;
			public function HRESULT(IFsrmPropertyDefinition2 *self, int32* appliesTo) get_AppliesTo;
			public function HRESULT(IFsrmPropertyDefinition2 *self, IFsrmCollection** valueDefinitions) get_ValueDefinitions;
		}
		[CRepr]
		public struct IFsrmPropertyDefinitionValue : IDispatch
		{
			public const new Guid IID = .(0xe946d148, 0xbd67, 0x4178, 0x8e, 0x22, 0x1c, 0x44, 0x92, 0x5e, 0xd7, 0x10);
			
			public function HRESULT(IFsrmPropertyDefinitionValue *self, BSTR* name) get_Name;
			public function HRESULT(IFsrmPropertyDefinitionValue *self, BSTR* displayName) get_DisplayName;
			public function HRESULT(IFsrmPropertyDefinitionValue *self, BSTR* description) get_Description;
			public function HRESULT(IFsrmPropertyDefinitionValue *self, BSTR* uniqueID) get_UniqueID;
		}
		[CRepr]
		public struct IFsrmProperty : IDispatch
		{
			public const new Guid IID = .(0x4a73fee4, 0x4102, 0x4fcc, 0x9f, 0xfb, 0x38, 0x61, 0x4f, 0x9e, 0xe7, 0x68);
			
			public function HRESULT(IFsrmProperty *self, BSTR* name) get_Name;
			public function HRESULT(IFsrmProperty *self, BSTR* value) get_Value;
			public function HRESULT(IFsrmProperty *self, SAFEARRAY** sources) get_Sources;
			public function HRESULT(IFsrmProperty *self, int32* flags) get_PropertyFlags;
		}
		[CRepr]
		public struct IFsrmRule : IFsrmObject
		{
			public const new Guid IID = .(0xcb0df960, 0x16f5, 0x4495, 0x90, 0x79, 0x3f, 0x93, 0x60, 0xd8, 0x31, 0xdf);
			
			public function HRESULT(IFsrmRule *self, BSTR* name) get_Name;
			public function HRESULT(IFsrmRule *self, BSTR name) put_Name;
			public function HRESULT(IFsrmRule *self, FsrmRuleType* ruleType) get_RuleType;
			public function HRESULT(IFsrmRule *self, BSTR* moduleDefinitionName) get_ModuleDefinitionName;
			public function HRESULT(IFsrmRule *self, BSTR moduleDefinitionName) put_ModuleDefinitionName;
			public function HRESULT(IFsrmRule *self, SAFEARRAY** namespaceRoots) get_NamespaceRoots;
			public function HRESULT(IFsrmRule *self, SAFEARRAY* namespaceRoots) put_NamespaceRoots;
			public function HRESULT(IFsrmRule *self, int32* ruleFlags) get_RuleFlags;
			public function HRESULT(IFsrmRule *self, int32 ruleFlags) put_RuleFlags;
			public function HRESULT(IFsrmRule *self, SAFEARRAY** parameters) get_Parameters;
			public function HRESULT(IFsrmRule *self, SAFEARRAY* parameters) put_Parameters;
			public function HRESULT(IFsrmRule *self, VARIANT* lastModified) get_LastModified;
		}
		[CRepr]
		public struct IFsrmClassificationRule : IFsrmRule
		{
			public const new Guid IID = .(0xafc052c2, 0x5315, 0x45ab, 0x84, 0x1b, 0xc6, 0xdb, 0x0e, 0x12, 0x01, 0x48);
			
			public function HRESULT(IFsrmClassificationRule *self, FsrmExecutionOption* executionOption) get_ExecutionOption;
			public function HRESULT(IFsrmClassificationRule *self, FsrmExecutionOption executionOption) put_ExecutionOption;
			public function HRESULT(IFsrmClassificationRule *self, BSTR* property) get_PropertyAffected;
			public function HRESULT(IFsrmClassificationRule *self, BSTR property) put_PropertyAffected;
			public function HRESULT(IFsrmClassificationRule *self, BSTR* value) get_Value;
			public function HRESULT(IFsrmClassificationRule *self, BSTR value) put_Value;
		}
		[CRepr]
		public struct IFsrmPipelineModuleDefinition : IFsrmObject
		{
			public const new Guid IID = .(0x515c1277, 0x2c81, 0x440e, 0x8f, 0xcf, 0x36, 0x79, 0x21, 0xed, 0x4f, 0x59);
			
			public function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR* moduleClsid) get_ModuleClsid;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR moduleClsid) put_ModuleClsid;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR* name) get_Name;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR name) put_Name;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR* company) get_Company;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR company) put_Company;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR* version) get_Version;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, BSTR version) put_Version;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, FsrmPipelineModuleType* moduleType) get_ModuleType;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, int16* enabled) get_Enabled;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, int16 enabled) put_Enabled;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, int16* needsFileContent) get_NeedsFileContent;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, int16 needsFileContent) put_NeedsFileContent;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, FsrmAccountType* retrievalAccount) get_Account;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, FsrmAccountType retrievalAccount) put_Account;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, SAFEARRAY** supportedExtensions) get_SupportedExtensions;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, SAFEARRAY* supportedExtensions) put_SupportedExtensions;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, SAFEARRAY** parameters) get_Parameters;
			public function HRESULT(IFsrmPipelineModuleDefinition *self, SAFEARRAY* parameters) put_Parameters;
		}
		[CRepr]
		public struct IFsrmClassifierModuleDefinition : IFsrmPipelineModuleDefinition
		{
			public const new Guid IID = .(0xbb36ea26, 0x6318, 0x4b8c, 0x85, 0x92, 0xf7, 0x2d, 0xd6, 0x02, 0xe7, 0xa5);
			
			public function HRESULT(IFsrmClassifierModuleDefinition *self, SAFEARRAY** propertiesAffected) get_PropertiesAffected;
			public function HRESULT(IFsrmClassifierModuleDefinition *self, SAFEARRAY* propertiesAffected) put_PropertiesAffected;
			public function HRESULT(IFsrmClassifierModuleDefinition *self, SAFEARRAY** propertiesUsed) get_PropertiesUsed;
			public function HRESULT(IFsrmClassifierModuleDefinition *self, SAFEARRAY* propertiesUsed) put_PropertiesUsed;
			public function HRESULT(IFsrmClassifierModuleDefinition *self, int16* needsExplicitValue) get_NeedsExplicitValue;
			public function HRESULT(IFsrmClassifierModuleDefinition *self, int16 needsExplicitValue) put_NeedsExplicitValue;
		}
		[CRepr]
		public struct IFsrmStorageModuleDefinition : IFsrmPipelineModuleDefinition
		{
			public const new Guid IID = .(0x15a81350, 0x497d, 0x4aba, 0x80, 0xe9, 0xd4, 0xdb, 0xcc, 0x55, 0x21, 0xfe);
			
			public function HRESULT(IFsrmStorageModuleDefinition *self, FsrmStorageModuleCaps* capabilities) get_Capabilities;
			public function HRESULT(IFsrmStorageModuleDefinition *self, FsrmStorageModuleCaps capabilities) put_Capabilities;
			public function HRESULT(IFsrmStorageModuleDefinition *self, FsrmStorageModuleType* storageType) get_StorageType;
			public function HRESULT(IFsrmStorageModuleDefinition *self, FsrmStorageModuleType storageType) put_StorageType;
			public function HRESULT(IFsrmStorageModuleDefinition *self, int16* updatesFileContent) get_UpdatesFileContent;
			public function HRESULT(IFsrmStorageModuleDefinition *self, int16 updatesFileContent) put_UpdatesFileContent;
		}
		[CRepr]
		public struct IFsrmClassificationManager : IDispatch
		{
			public const new Guid IID = .(0xd2dc89da, 0xee91, 0x48a0, 0x85, 0xd8, 0xcc, 0x72, 0xa5, 0x6f, 0x7d, 0x04);
			
			public function HRESULT(IFsrmClassificationManager *self, SAFEARRAY** formats) get_ClassificationReportFormats;
			public function HRESULT(IFsrmClassificationManager *self, SAFEARRAY* formats) put_ClassificationReportFormats;
			public function HRESULT(IFsrmClassificationManager *self, int32* logging) get_Logging;
			public function HRESULT(IFsrmClassificationManager *self, int32 logging) put_Logging;
			public function HRESULT(IFsrmClassificationManager *self, BSTR* mailTo) get_ClassificationReportMailTo;
			public function HRESULT(IFsrmClassificationManager *self, BSTR mailTo) put_ClassificationReportMailTo;
			public function HRESULT(IFsrmClassificationManager *self, int16* reportEnabled) get_ClassificationReportEnabled;
			public function HRESULT(IFsrmClassificationManager *self, int16 reportEnabled) put_ClassificationReportEnabled;
			public function HRESULT(IFsrmClassificationManager *self, BSTR* lastReportPath) get_ClassificationLastReportPathWithoutExtension;
			public function HRESULT(IFsrmClassificationManager *self, BSTR* lastError) get_ClassificationLastError;
			public function HRESULT(IFsrmClassificationManager *self, FsrmReportRunningStatus* runningStatus) get_ClassificationRunningStatus;
			public function HRESULT(IFsrmClassificationManager *self, FsrmEnumOptions options, IFsrmCollection** propertyDefinitions) EnumPropertyDefinitions;
			public function HRESULT(IFsrmClassificationManager *self, IFsrmPropertyDefinition** propertyDefinition) CreatePropertyDefinition;
			public function HRESULT(IFsrmClassificationManager *self, BSTR propertyName, IFsrmPropertyDefinition** propertyDefinition) GetPropertyDefinition;
			public function HRESULT(IFsrmClassificationManager *self, FsrmRuleType ruleType, FsrmEnumOptions options, IFsrmCollection** Rules) EnumRules;
			public function HRESULT(IFsrmClassificationManager *self, FsrmRuleType ruleType, IFsrmRule** Rule) CreateRule;
			public function HRESULT(IFsrmClassificationManager *self, BSTR ruleName, FsrmRuleType ruleType, IFsrmRule** Rule) GetRule;
			public function HRESULT(IFsrmClassificationManager *self, FsrmPipelineModuleType moduleType, FsrmEnumOptions options, IFsrmCollection** moduleDefinitions) EnumModuleDefinitions;
			public function HRESULT(IFsrmClassificationManager *self, FsrmPipelineModuleType moduleType, IFsrmPipelineModuleDefinition** moduleDefinition) CreateModuleDefinition;
			public function HRESULT(IFsrmClassificationManager *self, BSTR moduleName, FsrmPipelineModuleType moduleType, IFsrmPipelineModuleDefinition** moduleDefinition) GetModuleDefinition;
			public function HRESULT(IFsrmClassificationManager *self, FsrmReportGenerationContext context, BSTR reserved) RunClassification;
			public function HRESULT(IFsrmClassificationManager *self, int32 waitSeconds, int16* completed) WaitForClassificationCompletion;
			public function HRESULT(IFsrmClassificationManager *self) CancelClassification;
			public function HRESULT(IFsrmClassificationManager *self, BSTR filePath, FsrmGetFilePropertyOptions options, IFsrmCollection** fileProperties) EnumFileProperties;
			public function HRESULT(IFsrmClassificationManager *self, BSTR filePath, BSTR propertyName, FsrmGetFilePropertyOptions options, IFsrmProperty** property) GetFileProperty;
			public function HRESULT(IFsrmClassificationManager *self, BSTR filePath, BSTR propertyName, BSTR propertyValue) SetFileProperty;
			public function HRESULT(IFsrmClassificationManager *self, BSTR filePath, BSTR property) ClearFileProperty;
		}
		[CRepr]
		public struct IFsrmClassificationManager2 : IFsrmClassificationManager
		{
			public const new Guid IID = .(0x0004c1c9, 0x127e, 0x4765, 0xba, 0x07, 0x6a, 0x31, 0x47, 0xbc, 0xa1, 0x12);
			
			public function HRESULT(IFsrmClassificationManager2 *self, SAFEARRAY* filePaths, SAFEARRAY* propertyNames, SAFEARRAY* propertyValues, FsrmGetFilePropertyOptions options) ClassifyFiles;
		}
		[CRepr]
		public struct IFsrmPropertyBag : IDispatch
		{
			public const new Guid IID = .(0x774589d1, 0xd300, 0x4f7a, 0x9a, 0x24, 0xf7, 0xb7, 0x66, 0x80, 0x02, 0x50);
			
			public function HRESULT(IFsrmPropertyBag *self, BSTR* name) get_Name;
			public function HRESULT(IFsrmPropertyBag *self, BSTR* path) get_RelativePath;
			public function HRESULT(IFsrmPropertyBag *self, BSTR* volumeName) get_VolumeName;
			public function HRESULT(IFsrmPropertyBag *self, BSTR* relativeNamespaceRoot) get_RelativeNamespaceRoot;
			public function HRESULT(IFsrmPropertyBag *self, uint32* volumeId) get_VolumeIndex;
			public function HRESULT(IFsrmPropertyBag *self, VARIANT* fileId) get_FileId;
			public function HRESULT(IFsrmPropertyBag *self, VARIANT* parentDirectoryId) get_ParentDirectoryId;
			public function HRESULT(IFsrmPropertyBag *self, VARIANT* size) get_Size;
			public function HRESULT(IFsrmPropertyBag *self, VARIANT* sizeAllocated) get_SizeAllocated;
			public function HRESULT(IFsrmPropertyBag *self, VARIANT* creationTime) get_CreationTime;
			public function HRESULT(IFsrmPropertyBag *self, VARIANT* lastAccessTime) get_LastAccessTime;
			public function HRESULT(IFsrmPropertyBag *self, VARIANT* lastModificationTime) get_LastModificationTime;
			public function HRESULT(IFsrmPropertyBag *self, uint32* attributes) get_Attributes;
			public function HRESULT(IFsrmPropertyBag *self, BSTR* ownerSid) get_OwnerSid;
			public function HRESULT(IFsrmPropertyBag *self, SAFEARRAY** filePropertyNames) get_FilePropertyNames;
			public function HRESULT(IFsrmPropertyBag *self, SAFEARRAY** messages) get_Messages;
			public function HRESULT(IFsrmPropertyBag *self, uint32* flags) get_PropertyBagFlags;
			public function HRESULT(IFsrmPropertyBag *self, BSTR name, IFsrmProperty** fileProperty) GetFileProperty;
			public function HRESULT(IFsrmPropertyBag *self, BSTR name, BSTR value) SetFileProperty;
			public function HRESULT(IFsrmPropertyBag *self, BSTR message) AddMessage;
			public function HRESULT(IFsrmPropertyBag *self, FsrmFileStreamingMode accessMode, FsrmFileStreamingInterfaceType interfaceType, VARIANT* pStreamInterface) GetFileStreamInterface;
		}
		[CRepr]
		public struct IFsrmPropertyBag2 : IFsrmPropertyBag
		{
			public const new Guid IID = .(0x0e46bdbd, 0x2402, 0x4fed, 0x9c, 0x30, 0x92, 0x66, 0xe6, 0xeb, 0x2c, 0xc9);
			
			public function HRESULT(IFsrmPropertyBag2 *self, FsrmPropertyBagField field, VARIANT* value) GetFieldValue;
			public function HRESULT(IFsrmPropertyBag2 *self, IFsrmCollection** props) GetUntrustedInFileProperties;
		}
		[CRepr]
		public struct IFsrmPipelineModuleImplementation : IDispatch
		{
			public const new Guid IID = .(0xb7907906, 0x2b02, 0x4cb5, 0x84, 0xa9, 0xfd, 0xf5, 0x46, 0x13, 0xd6, 0xcd);
			
			public function HRESULT(IFsrmPipelineModuleImplementation *self, IFsrmPipelineModuleDefinition* moduleDefinition, IFsrmPipelineModuleConnector** moduleConnector) OnLoad;
			public function HRESULT(IFsrmPipelineModuleImplementation *self) OnUnload;
		}
		[CRepr]
		public struct IFsrmClassifierModuleImplementation : IFsrmPipelineModuleImplementation
		{
			public const new Guid IID = .(0x4c968fc6, 0x6edb, 0x4051, 0x9c, 0x18, 0x73, 0xb7, 0x29, 0x1a, 0xe1, 0x06);
			
			public function HRESULT(IFsrmClassifierModuleImplementation *self, VARIANT* lastModified) get_LastModified;
			public function HRESULT(IFsrmClassifierModuleImplementation *self, IFsrmCollection* rules, IFsrmCollection* propertyDefinitions) UseRulesAndDefinitions;
			public function HRESULT(IFsrmClassifierModuleImplementation *self, IFsrmPropertyBag* propertyBag, SAFEARRAY* arrayRuleIds) OnBeginFile;
			public function HRESULT(IFsrmClassifierModuleImplementation *self, BSTR property, BSTR value, int16* applyValue, Guid idRule, Guid idPropDef) DoesPropertyValueApply;
			public function HRESULT(IFsrmClassifierModuleImplementation *self, BSTR property, BSTR* value, Guid idRule, Guid idPropDef) GetPropertyValueToApply;
			public function HRESULT(IFsrmClassifierModuleImplementation *self) OnEndFile;
		}
		[CRepr]
		public struct IFsrmStorageModuleImplementation : IFsrmPipelineModuleImplementation
		{
			public const new Guid IID = .(0x0af4a0da, 0x895a, 0x4e50, 0x87, 0x12, 0xa9, 0x67, 0x24, 0xbc, 0xec, 0x64);
			
			public function HRESULT(IFsrmStorageModuleImplementation *self, IFsrmCollection* propertyDefinitions) UseDefinitions;
			public function HRESULT(IFsrmStorageModuleImplementation *self, IFsrmPropertyBag* propertyBag) LoadProperties;
			public function HRESULT(IFsrmStorageModuleImplementation *self, IFsrmPropertyBag* propertyBag) SaveProperties;
		}
		[CRepr]
		public struct IFsrmPipelineModuleConnector : IDispatch
		{
			public const new Guid IID = .(0xc16014f3, 0x9aa1, 0x46b3, 0xb0, 0xa7, 0xab, 0x14, 0x6e, 0xb2, 0x05, 0xf2);
			
			public function HRESULT(IFsrmPipelineModuleConnector *self, IFsrmPipelineModuleImplementation** pipelineModuleImplementation) get_ModuleImplementation;
			public function HRESULT(IFsrmPipelineModuleConnector *self, BSTR* userName) get_ModuleName;
			public function HRESULT(IFsrmPipelineModuleConnector *self, BSTR* userAccount) get_HostingUserAccount;
			public function HRESULT(IFsrmPipelineModuleConnector *self, int32* pid) get_HostingProcessPid;
			public function HRESULT(IFsrmPipelineModuleConnector *self, IFsrmPipelineModuleDefinition* moduleDefinition, IFsrmPipelineModuleImplementation* moduleImplementation) Bind;
		}
		[CRepr]
		public struct DIFsrmClassificationEvents : IDispatch
		{
			public const new Guid IID = .(0x26942db0, 0xdabf, 0x41d8, 0xbb, 0xdd, 0xb1, 0x29, 0xa9, 0xf7, 0x04, 0x24);
			
		}
		
	}
}
