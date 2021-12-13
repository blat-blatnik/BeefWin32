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
		
		public struct IFsrmObject {}
		public struct IFsrmCollection {}
		public struct IFsrmMutableCollection {}
		public struct IFsrmCommittableCollection {}
		public struct IFsrmAction {}
		public struct IFsrmActionEmail {}
		public struct IFsrmActionEmail2 {}
		public struct IFsrmActionReport {}
		public struct IFsrmActionEventLog {}
		public struct IFsrmActionCommand {}
		public struct IFsrmSetting {}
		public struct IFsrmPathMapper {}
		public struct IFsrmExportImport {}
		public struct IFsrmDerivedObjectsResult {}
		public struct IFsrmAccessDeniedRemediationClient {}
		public struct IFsrmQuotaBase {}
		public struct IFsrmQuotaObject {}
		public struct IFsrmQuota {}
		public struct IFsrmAutoApplyQuota {}
		public struct IFsrmQuotaManager {}
		public struct IFsrmQuotaManagerEx {}
		public struct IFsrmQuotaTemplate {}
		public struct IFsrmQuotaTemplateImported {}
		public struct IFsrmQuotaTemplateManager {}
		public struct IFsrmFileGroup {}
		public struct IFsrmFileGroupImported {}
		public struct IFsrmFileGroupManager {}
		public struct IFsrmFileScreenBase {}
		public struct IFsrmFileScreen {}
		public struct IFsrmFileScreenException {}
		public struct IFsrmFileScreenManager {}
		public struct IFsrmFileScreenTemplate {}
		public struct IFsrmFileScreenTemplateImported {}
		public struct IFsrmFileScreenTemplateManager {}
		public struct IFsrmReportManager {}
		public struct IFsrmReportJob {}
		public struct IFsrmReport {}
		public struct IFsrmReportScheduler {}
		public struct IFsrmFileManagementJobManager {}
		public struct IFsrmFileManagementJob {}
		public struct IFsrmPropertyCondition {}
		public struct IFsrmFileCondition {}
		public struct IFsrmFileConditionProperty {}
		public struct IFsrmPropertyDefinition {}
		public struct IFsrmPropertyDefinition2 {}
		public struct IFsrmPropertyDefinitionValue {}
		public struct IFsrmProperty {}
		public struct IFsrmRule {}
		public struct IFsrmClassificationRule {}
		public struct IFsrmPipelineModuleDefinition {}
		public struct IFsrmClassifierModuleDefinition {}
		public struct IFsrmStorageModuleDefinition {}
		public struct IFsrmClassificationManager {}
		public struct IFsrmClassificationManager2 {}
		public struct IFsrmPropertyBag {}
		public struct IFsrmPropertyBag2 {}
		public struct IFsrmPipelineModuleImplementation {}
		public struct IFsrmClassifierModuleImplementation {}
		public struct IFsrmStorageModuleImplementation {}
		public struct IFsrmPipelineModuleConnector {}
		public struct DIFsrmClassificationEvents {}
		
	}
}
