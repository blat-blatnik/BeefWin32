using System;

// namespace Security.Authorization
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 SDDL_REVISION_1 = 1;
		public const uint32 SDDL_REVISION = 1;
		public const uint32 SDDL_ALIAS_SIZE = 2;
		public const uint32 INHERITED_ACCESS_ENTRY = 16;
		public const uint32 INHERITED_PARENT = 268435456;
		public const uint32 INHERITED_GRANDPARENT = 536870912;
		public const int32 TRUSTEE_ACCESS_ALLOWED = 1;
		public const int32 TRUSTEE_ACCESS_READ = 2;
		public const int32 TRUSTEE_ACCESS_WRITE = 4;
		public const int32 TRUSTEE_ACCESS_EXPLICIT = 1;
		public const int32 TRUSTEE_ACCESS_ALL = -1;
		public const uint32 ACTRL_RESERVED = 0;
		public const uint32 ACTRL_PERM_1 = 1;
		public const uint32 ACTRL_PERM_2 = 2;
		public const uint32 ACTRL_PERM_3 = 4;
		public const uint32 ACTRL_PERM_4 = 8;
		public const uint32 ACTRL_PERM_5 = 16;
		public const uint32 ACTRL_PERM_6 = 32;
		public const uint32 ACTRL_PERM_7 = 64;
		public const uint32 ACTRL_PERM_8 = 128;
		public const uint32 ACTRL_PERM_9 = 256;
		public const uint32 ACTRL_PERM_10 = 512;
		public const uint32 ACTRL_PERM_11 = 1024;
		public const uint32 ACTRL_PERM_12 = 2048;
		public const uint32 ACTRL_PERM_13 = 4096;
		public const uint32 ACTRL_PERM_14 = 8192;
		public const uint32 ACTRL_PERM_15 = 16384;
		public const uint32 ACTRL_PERM_16 = 32768;
		public const uint32 ACTRL_PERM_17 = 65536;
		public const uint32 ACTRL_PERM_18 = 131072;
		public const uint32 ACTRL_PERM_19 = 262144;
		public const uint32 ACTRL_PERM_20 = 524288;
		public const uint32 ACTRL_ACCESS_PROTECTED = 1;
		public const uint32 ACTRL_SYSTEM_ACCESS = 67108864;
		public const uint32 ACTRL_DELETE = 134217728;
		public const uint32 ACTRL_READ_CONTROL = 268435456;
		public const uint32 ACTRL_CHANGE_ACCESS = 536870912;
		public const uint32 ACTRL_CHANGE_OWNER = 1073741824;
		public const uint32 ACTRL_SYNCHRONIZE = 2147483648;
		public const uint32 ACTRL_STD_RIGHTS_ALL = 4160749568;
		public const uint32 ACTRL_FILE_READ = 1;
		public const uint32 ACTRL_FILE_WRITE = 2;
		public const uint32 ACTRL_FILE_APPEND = 4;
		public const uint32 ACTRL_FILE_READ_PROP = 8;
		public const uint32 ACTRL_FILE_WRITE_PROP = 16;
		public const uint32 ACTRL_FILE_EXECUTE = 32;
		public const uint32 ACTRL_FILE_READ_ATTRIB = 128;
		public const uint32 ACTRL_FILE_WRITE_ATTRIB = 256;
		public const uint32 ACTRL_FILE_CREATE_PIPE = 512;
		public const uint32 ACTRL_DIR_LIST = 1;
		public const uint32 ACTRL_DIR_CREATE_OBJECT = 2;
		public const uint32 ACTRL_DIR_CREATE_CHILD = 4;
		public const uint32 ACTRL_DIR_DELETE_CHILD = 64;
		public const uint32 ACTRL_DIR_TRAVERSE = 32;
		public const uint32 ACTRL_KERNEL_TERMINATE = 1;
		public const uint32 ACTRL_KERNEL_THREAD = 2;
		public const uint32 ACTRL_KERNEL_VM = 4;
		public const uint32 ACTRL_KERNEL_VM_READ = 8;
		public const uint32 ACTRL_KERNEL_VM_WRITE = 16;
		public const uint32 ACTRL_KERNEL_DUP_HANDLE = 32;
		public const uint32 ACTRL_KERNEL_PROCESS = 64;
		public const uint32 ACTRL_KERNEL_SET_INFO = 128;
		public const uint32 ACTRL_KERNEL_GET_INFO = 256;
		public const uint32 ACTRL_KERNEL_CONTROL = 512;
		public const uint32 ACTRL_KERNEL_ALERT = 1024;
		public const uint32 ACTRL_KERNEL_GET_CONTEXT = 2048;
		public const uint32 ACTRL_KERNEL_SET_CONTEXT = 4096;
		public const uint32 ACTRL_KERNEL_TOKEN = 8192;
		public const uint32 ACTRL_KERNEL_IMPERSONATE = 16384;
		public const uint32 ACTRL_KERNEL_DIMPERSONATE = 32768;
		public const uint32 ACTRL_PRINT_SADMIN = 1;
		public const uint32 ACTRL_PRINT_SLIST = 2;
		public const uint32 ACTRL_PRINT_PADMIN = 4;
		public const uint32 ACTRL_PRINT_PUSE = 8;
		public const uint32 ACTRL_PRINT_JADMIN = 16;
		public const uint32 ACTRL_SVC_GET_INFO = 1;
		public const uint32 ACTRL_SVC_SET_INFO = 2;
		public const uint32 ACTRL_SVC_STATUS = 4;
		public const uint32 ACTRL_SVC_LIST = 8;
		public const uint32 ACTRL_SVC_START = 16;
		public const uint32 ACTRL_SVC_STOP = 32;
		public const uint32 ACTRL_SVC_PAUSE = 64;
		public const uint32 ACTRL_SVC_INTERROGATE = 128;
		public const uint32 ACTRL_SVC_UCONTROL = 256;
		public const uint32 ACTRL_REG_QUERY = 1;
		public const uint32 ACTRL_REG_SET = 2;
		public const uint32 ACTRL_REG_CREATE_CHILD = 4;
		public const uint32 ACTRL_REG_LIST = 8;
		public const uint32 ACTRL_REG_NOTIFY = 16;
		public const uint32 ACTRL_REG_LINK = 32;
		public const uint32 ACTRL_WIN_CLIPBRD = 1;
		public const uint32 ACTRL_WIN_GLOBAL_ATOMS = 2;
		public const uint32 ACTRL_WIN_CREATE = 4;
		public const uint32 ACTRL_WIN_LIST_DESK = 8;
		public const uint32 ACTRL_WIN_LIST = 16;
		public const uint32 ACTRL_WIN_READ_ATTRIBS = 32;
		public const uint32 ACTRL_WIN_WRITE_ATTRIBS = 64;
		public const uint32 ACTRL_WIN_SCREEN = 128;
		public const uint32 ACTRL_WIN_EXIT = 256;
		public const uint32 ACTRL_ACCESS_NO_OPTIONS = 0;
		public const uint32 ACTRL_ACCESS_SUPPORTS_OBJECT_ENTRIES = 1;
		public const uint32 AUDIT_TYPE_LEGACY = 1;
		public const uint32 AUDIT_TYPE_WMI = 2;
		public const uint32 AP_ParamTypeBits = 8;
		public const int32 AP_ParamTypeMask = 255;
		public const uint32 _AUTHZ_SS_MAXSIZE = 128;
		public const uint32 APF_AuditFailure = 0;
		public const uint32 APF_AuditSuccess = 1;
		public const uint32 APF_ValidFlags = 1;
		public const uint32 AUTHZP_WPD_EVENT = 16;
		public const uint32 AUTHZ_ALLOW_MULTIPLE_SOURCE_INSTANCES = 1;
		public const uint32 AUTHZ_MIGRATED_LEGACY_PUBLISHER = 2;
		public const uint32 AUTHZ_AUDIT_INSTANCE_INFORMATION = 2;
		public const uint32 AUTHZ_SKIP_TOKEN_GROUPS = 2;
		public const uint32 AUTHZ_REQUIRE_S4U_LOGON = 4;
		public const uint32 AUTHZ_COMPUTE_PRIVILEGES = 8;
		public const uint32 AUTHZ_SECURITY_ATTRIBUTE_TYPE_INVALID = 0;
		public const uint32 AUTHZ_SECURITY_ATTRIBUTE_TYPE_INT64 = 1;
		public const uint32 AUTHZ_SECURITY_ATTRIBUTE_TYPE_UINT64 = 2;
		public const uint32 AUTHZ_SECURITY_ATTRIBUTE_TYPE_STRING = 3;
		public const uint32 AUTHZ_SECURITY_ATTRIBUTE_TYPE_FQBN = 4;
		public const uint32 AUTHZ_SECURITY_ATTRIBUTE_TYPE_SID = 5;
		public const uint32 AUTHZ_SECURITY_ATTRIBUTE_TYPE_BOOLEAN = 6;
		public const uint32 AUTHZ_SECURITY_ATTRIBUTE_TYPE_OCTET_STRING = 16;
		public const uint32 AUTHZ_SECURITY_ATTRIBUTES_INFORMATION_VERSION_V1 = 1;
		public const uint32 AUTHZ_SECURITY_ATTRIBUTES_INFORMATION_VERSION = 1;
		public const uint32 AUTHZ_RPC_INIT_INFO_CLIENT_VERSION_V1 = 1;
		public const uint32 AUTHZ_INIT_INFO_VERSION_V1 = 1;
		public const uint32 AUTHZ_WPD_CATEGORY_FLAG = 16;
		public const uint32 AUTHZ_FLAG_ALLOW_MULTIPLE_SOURCE_INSTANCES = 1;
		public const HRESULT OLESCRIPT_E_SYNTAX = -2147352319;
		
		// --- Typedefs ---
		
		public typealias AUTHZ_ACCESS_CHECK_RESULTS_HANDLE = int;
		public typealias AUTHZ_CLIENT_CONTEXT_HANDLE = int;
		public typealias AUTHZ_RESOURCE_MANAGER_HANDLE = int;
		public typealias AUTHZ_AUDIT_EVENT_HANDLE = int;
		public typealias AUTHZ_AUDIT_EVENT_TYPE_HANDLE = int;
		public typealias AUTHZ_SECURITY_EVENT_PROVIDER_HANDLE = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum AUTHZ_RESOURCE_MANAGER_FLAGS : uint32
		{
			AUTHZ_RM_FLAG_NO_AUDIT = 1,
			AUTHZ_RM_FLAG_INITIALIZE_UNDER_IMPERSONATION = 2,
			AUTHZ_RM_FLAG_NO_CENTRAL_ACCESS_POLICIES = 4,
		}
		[AllowDuplicates]
		public enum AUTHZ_ACCESS_CHECK_FLAGS : uint32
		{
			AUTHZ_ACCESS_CHECK_NO_DEEP_COPY_SD = 1,
		}
		[AllowDuplicates]
		public enum AUTHZ_INITIALIZE_OBJECT_ACCESS_AUDIT_EVENT_FLAGS : uint32
		{
			AUTHZ_NO_SUCCESS_AUDIT = 1,
			AUTHZ_NO_FAILURE_AUDIT = 2,
			AUTHZ_NO_ALLOC_STRINGS = 4,
		}
		[AllowDuplicates]
		public enum TREE_SEC_INFO : uint32
		{
			TREE_SEC_INFO_SET = 1,
			TREE_SEC_INFO_RESET = 2,
			TREE_SEC_INFO_RESET_KEEP_EXPLICIT = 3,
		}
		[AllowDuplicates]
		public enum AUTHZ_GENERATE_RESULTS : uint32
		{
			AUTHZ_GENERATE_SUCCESS_AUDIT = 1,
			AUTHZ_GENERATE_FAILURE_AUDIT = 2,
		}
		[AllowDuplicates]
		public enum ACTRL_ACCESS_ENTRY_ACCESS_FLAGS : uint32
		{
			ACTRL_ACCESS_ALLOWED = 1,
			ACTRL_ACCESS_DENIED = 2,
			ACTRL_AUDIT_SUCCESS = 4,
			ACTRL_AUDIT_FAILURE = 8,
		}
		[AllowDuplicates]
		public enum AUTHZ_SECURITY_ATTRIBUTE_FLAGS : uint32
		{
			AUTHZ_SECURITY_ATTRIBUTE_NON_INHERITABLE = 1,
			AUTHZ_SECURITY_ATTRIBUTE_VALUE_CASE_SENSITIVE = 2,
		}
		[AllowDuplicates]
		public enum SE_OBJECT_TYPE : int32
		{
			SE_UNKNOWN_OBJECT_TYPE = 0,
			SE_FILE_OBJECT = 1,
			SE_SERVICE = 2,
			SE_PRINTER = 3,
			SE_REGISTRY_KEY = 4,
			SE_LMSHARE = 5,
			SE_KERNEL_OBJECT = 6,
			SE_WINDOW_OBJECT = 7,
			SE_DS_OBJECT = 8,
			SE_DS_OBJECT_ALL = 9,
			SE_PROVIDER_DEFINED_OBJECT = 10,
			SE_WMIGUID_OBJECT = 11,
			SE_REGISTRY_WOW64_32KEY = 12,
			SE_REGISTRY_WOW64_64KEY = 13,
		}
		[AllowDuplicates]
		public enum TRUSTEE_TYPE : int32
		{
			TRUSTEE_IS_UNKNOWN = 0,
			TRUSTEE_IS_USER = 1,
			TRUSTEE_IS_GROUP = 2,
			TRUSTEE_IS_DOMAIN = 3,
			TRUSTEE_IS_ALIAS = 4,
			TRUSTEE_IS_WELL_KNOWN_GROUP = 5,
			TRUSTEE_IS_DELETED = 6,
			TRUSTEE_IS_INVALID = 7,
			TRUSTEE_IS_COMPUTER = 8,
		}
		[AllowDuplicates]
		public enum TRUSTEE_FORM : int32
		{
			TRUSTEE_IS_SID = 0,
			TRUSTEE_IS_NAME = 1,
			TRUSTEE_BAD_FORM = 2,
			TRUSTEE_IS_OBJECTS_AND_SID = 3,
			TRUSTEE_IS_OBJECTS_AND_NAME = 4,
		}
		[AllowDuplicates]
		public enum MULTIPLE_TRUSTEE_OPERATION : int32
		{
			NO_MULTIPLE_TRUSTEE = 0,
			TRUSTEE_IS_IMPERSONATE = 1,
		}
		[AllowDuplicates]
		public enum ACCESS_MODE : int32
		{
			NOT_USED_ACCESS = 0,
			GRANT_ACCESS = 1,
			SET_ACCESS = 2,
			DENY_ACCESS = 3,
			REVOKE_ACCESS = 4,
			SET_AUDIT_SUCCESS = 5,
			SET_AUDIT_FAILURE = 6,
		}
		[AllowDuplicates]
		public enum PROG_INVOKE_SETTING : int32
		{
			ProgressInvokeNever = 1,
			ProgressInvokeEveryObject = 2,
			ProgressInvokeOnError = 3,
			ProgressCancelOperation = 4,
			ProgressRetryOperation = 5,
			ProgressInvokePrePostError = 6,
		}
		[AllowDuplicates]
		public enum AUDIT_PARAM_TYPE : int32
		{
			APT_None = 1,
			APT_String = 2,
			APT_Ulong = 3,
			APT_Pointer = 4,
			APT_Sid = 5,
			APT_LogonId = 6,
			APT_ObjectTypeList = 7,
			APT_Luid = 8,
			APT_Guid = 9,
			APT_Time = 10,
			APT_Int64 = 11,
			APT_IpAddress = 12,
			APT_LogonIdWithSid = 13,
		}
		[AllowDuplicates]
		public enum AUTHZ_SECURITY_ATTRIBUTE_OPERATION : int32
		{
			AUTHZ_SECURITY_ATTRIBUTE_OPERATION_NONE = 0,
			AUTHZ_SECURITY_ATTRIBUTE_OPERATION_REPLACE_ALL = 1,
			AUTHZ_SECURITY_ATTRIBUTE_OPERATION_ADD = 2,
			AUTHZ_SECURITY_ATTRIBUTE_OPERATION_DELETE = 3,
			AUTHZ_SECURITY_ATTRIBUTE_OPERATION_REPLACE = 4,
		}
		[AllowDuplicates]
		public enum AUTHZ_SID_OPERATION : int32
		{
			AUTHZ_SID_OPERATION_NONE = 0,
			AUTHZ_SID_OPERATION_REPLACE_ALL = 1,
			AUTHZ_SID_OPERATION_ADD = 2,
			AUTHZ_SID_OPERATION_DELETE = 3,
			AUTHZ_SID_OPERATION_REPLACE = 4,
		}
		[AllowDuplicates]
		public enum AUTHZ_CONTEXT_INFORMATION_CLASS : int32
		{
			AuthzContextInfoUserSid = 1,
			AuthzContextInfoGroupsSids = 2,
			AuthzContextInfoRestrictedSids = 3,
			AuthzContextInfoPrivileges = 4,
			AuthzContextInfoExpirationTime = 5,
			AuthzContextInfoServerContext = 6,
			AuthzContextInfoIdentifier = 7,
			AuthzContextInfoSource = 8,
			AuthzContextInfoAll = 9,
			AuthzContextInfoAuthenticationId = 10,
			AuthzContextInfoSecurityAttributes = 11,
			AuthzContextInfoDeviceSids = 12,
			AuthzContextInfoUserClaims = 13,
			AuthzContextInfoDeviceClaims = 14,
			AuthzContextInfoAppContainerSid = 15,
			AuthzContextInfoCapabilitySids = 16,
		}
		[AllowDuplicates]
		public enum AUTHZ_AUDIT_EVENT_INFORMATION_CLASS : int32
		{
			AuthzAuditEventInfoFlags = 1,
			AuthzAuditEventInfoOperationType = 2,
			AuthzAuditEventInfoObjectType = 3,
			AuthzAuditEventInfoObjectName = 4,
			AuthzAuditEventInfoAdditionalInfo = 5,
		}
		[AllowDuplicates]
		public enum AZ_PROP_CONSTANTS : int32
		{
			AZ_PROP_NAME = 1,
			AZ_PROP_DESCRIPTION = 2,
			AZ_PROP_WRITABLE = 3,
			AZ_PROP_APPLICATION_DATA = 4,
			AZ_PROP_CHILD_CREATE = 5,
			AZ_MAX_APPLICATION_NAME_LENGTH = 512,
			AZ_MAX_OPERATION_NAME_LENGTH = 64,
			AZ_MAX_TASK_NAME_LENGTH = 64,
			AZ_MAX_SCOPE_NAME_LENGTH = 65536,
			AZ_MAX_GROUP_NAME_LENGTH = 64,
			AZ_MAX_ROLE_NAME_LENGTH = 64,
			AZ_MAX_NAME_LENGTH = 65536,
			AZ_MAX_DESCRIPTION_LENGTH = 1024,
			AZ_MAX_APPLICATION_DATA_LENGTH = 4096,
			AZ_SUBMIT_FLAG_ABORT = 1,
			AZ_SUBMIT_FLAG_FLUSH = 2,
			AZ_MAX_POLICY_URL_LENGTH = 65536,
			AZ_AZSTORE_FLAG_CREATE = 1,
			AZ_AZSTORE_FLAG_MANAGE_STORE_ONLY = 2,
			AZ_AZSTORE_FLAG_BATCH_UPDATE = 4,
			AZ_AZSTORE_FLAG_AUDIT_IS_CRITICAL = 8,
			AZ_AZSTORE_FORCE_APPLICATION_CLOSE = 16,
			AZ_AZSTORE_NT6_FUNCTION_LEVEL = 32,
			AZ_AZSTORE_FLAG_MANAGE_ONLY_PASSIVE_SUBMIT = 32768,
			AZ_PROP_AZSTORE_DOMAIN_TIMEOUT = 100,
			AZ_AZSTORE_DEFAULT_DOMAIN_TIMEOUT = 15000,
			AZ_PROP_AZSTORE_SCRIPT_ENGINE_TIMEOUT = 101,
			AZ_AZSTORE_MIN_DOMAIN_TIMEOUT = 500,
			AZ_AZSTORE_MIN_SCRIPT_ENGINE_TIMEOUT = 5000,
			AZ_AZSTORE_DEFAULT_SCRIPT_ENGINE_TIMEOUT = 45000,
			AZ_PROP_AZSTORE_MAX_SCRIPT_ENGINES = 102,
			AZ_AZSTORE_DEFAULT_MAX_SCRIPT_ENGINES = 120,
			AZ_PROP_AZSTORE_MAJOR_VERSION = 103,
			AZ_PROP_AZSTORE_MINOR_VERSION = 104,
			AZ_PROP_AZSTORE_TARGET_MACHINE = 105,
			AZ_PROP_AZTORE_IS_ADAM_INSTANCE = 106,
			AZ_PROP_OPERATION_ID = 200,
			AZ_PROP_TASK_OPERATIONS = 300,
			AZ_PROP_TASK_BIZRULE = 301,
			AZ_PROP_TASK_BIZRULE_LANGUAGE = 302,
			AZ_PROP_TASK_TASKS = 303,
			AZ_PROP_TASK_BIZRULE_IMPORTED_PATH = 304,
			AZ_PROP_TASK_IS_ROLE_DEFINITION = 305,
			AZ_MAX_TASK_BIZRULE_LENGTH = 65536,
			AZ_MAX_TASK_BIZRULE_LANGUAGE_LENGTH = 64,
			AZ_MAX_TASK_BIZRULE_IMPORTED_PATH_LENGTH = 512,
			AZ_MAX_BIZRULE_STRING = 65536,
			AZ_PROP_GROUP_TYPE = 400,
			AZ_GROUPTYPE_LDAP_QUERY = 1,
			AZ_GROUPTYPE_BASIC = 2,
			AZ_GROUPTYPE_BIZRULE = 3,
			AZ_PROP_GROUP_APP_MEMBERS = 401,
			AZ_PROP_GROUP_APP_NON_MEMBERS = 402,
			AZ_PROP_GROUP_LDAP_QUERY = 403,
			AZ_MAX_GROUP_LDAP_QUERY_LENGTH = 4096,
			AZ_PROP_GROUP_MEMBERS = 404,
			AZ_PROP_GROUP_NON_MEMBERS = 405,
			AZ_PROP_GROUP_MEMBERS_NAME = 406,
			AZ_PROP_GROUP_NON_MEMBERS_NAME = 407,
			AZ_PROP_GROUP_BIZRULE = 408,
			AZ_PROP_GROUP_BIZRULE_LANGUAGE = 409,
			AZ_PROP_GROUP_BIZRULE_IMPORTED_PATH = 410,
			AZ_MAX_GROUP_BIZRULE_LENGTH = 65536,
			AZ_MAX_GROUP_BIZRULE_LANGUAGE_LENGTH = 64,
			AZ_MAX_GROUP_BIZRULE_IMPORTED_PATH_LENGTH = 512,
			AZ_PROP_ROLE_APP_MEMBERS = 500,
			AZ_PROP_ROLE_MEMBERS = 501,
			AZ_PROP_ROLE_OPERATIONS = 502,
			AZ_PROP_ROLE_TASKS = 504,
			AZ_PROP_ROLE_MEMBERS_NAME = 505,
			AZ_PROP_SCOPE_BIZRULES_WRITABLE = 600,
			AZ_PROP_SCOPE_CAN_BE_DELEGATED = 601,
			AZ_PROP_CLIENT_CONTEXT_USER_DN = 700,
			AZ_PROP_CLIENT_CONTEXT_USER_SAM_COMPAT = 701,
			AZ_PROP_CLIENT_CONTEXT_USER_DISPLAY = 702,
			AZ_PROP_CLIENT_CONTEXT_USER_GUID = 703,
			AZ_PROP_CLIENT_CONTEXT_USER_CANONICAL = 704,
			AZ_PROP_CLIENT_CONTEXT_USER_UPN = 705,
			AZ_PROP_CLIENT_CONTEXT_USER_DNS_SAM_COMPAT = 707,
			AZ_PROP_CLIENT_CONTEXT_ROLE_FOR_ACCESS_CHECK = 708,
			AZ_PROP_CLIENT_CONTEXT_LDAP_QUERY_DN = 709,
			AZ_PROP_APPLICATION_AUTHZ_INTERFACE_CLSID = 800,
			AZ_PROP_APPLICATION_VERSION = 801,
			AZ_MAX_APPLICATION_VERSION_LENGTH = 512,
			AZ_PROP_APPLICATION_NAME = 802,
			AZ_PROP_APPLICATION_BIZRULE_ENABLED = 803,
			AZ_PROP_APPLY_STORE_SACL = 900,
			AZ_PROP_GENERATE_AUDITS = 901,
			AZ_PROP_POLICY_ADMINS = 902,
			AZ_PROP_POLICY_READERS = 903,
			AZ_PROP_DELEGATED_POLICY_USERS = 904,
			AZ_PROP_POLICY_ADMINS_NAME = 905,
			AZ_PROP_POLICY_READERS_NAME = 906,
			AZ_PROP_DELEGATED_POLICY_USERS_NAME = 907,
			AZ_CLIENT_CONTEXT_SKIP_GROUP = 1,
			AZ_CLIENT_CONTEXT_SKIP_LDAP_QUERY = 1,
			AZ_CLIENT_CONTEXT_GET_GROUP_RECURSIVE = 2,
			AZ_CLIENT_CONTEXT_GET_GROUPS_STORE_LEVEL_ONLY = 2,
		}
		
		// --- Function Pointers ---
		
		public function BOOL PFN_AUTHZ_DYNAMIC_ACCESS_CHECK(AUTHZ_CLIENT_CONTEXT_HANDLE hAuthzClientContext, ACE_HEADER* pAce, void* pArgs, BOOL* pbAceApplicable);
		public function BOOL PFN_AUTHZ_COMPUTE_DYNAMIC_GROUPS(AUTHZ_CLIENT_CONTEXT_HANDLE hAuthzClientContext, void* Args, SID_AND_ATTRIBUTES** pSidAttrArray, uint32* pSidCount, SID_AND_ATTRIBUTES** pRestrictedSidAttrArray, uint32* pRestrictedSidCount);
		public function void PFN_AUTHZ_FREE_DYNAMIC_GROUPS(SID_AND_ATTRIBUTES* pSidAttrArray);
		public function BOOL PFN_AUTHZ_GET_CENTRAL_ACCESS_POLICY(AUTHZ_CLIENT_CONTEXT_HANDLE hAuthzClientContext, PSID capid, void* pArgs, BOOL* pCentralAccessPolicyApplicable, void** ppCentralAccessPolicy);
		public function void PFN_AUTHZ_FREE_CENTRAL_ACCESS_POLICY(void* pCentralAccessPolicy);
		public function void FN_PROGRESS(PWSTR pObjectName, uint32 Status, PROG_INVOKE_SETTING* pInvokeSetting, void* Args, BOOL SecuritySet);
		
		// --- Structs ---
		
		[CRepr]
		public struct OBJECTS_AND_SID
		{
			public SYSTEM_AUDIT_OBJECT_ACE_FLAGS ObjectsPresent;
			public Guid ObjectTypeGuid;
			public Guid InheritedObjectTypeGuid;
			public SID* pSid;
		}
		[CRepr]
		public struct OBJECTS_AND_NAME_A
		{
			public SYSTEM_AUDIT_OBJECT_ACE_FLAGS ObjectsPresent;
			public SE_OBJECT_TYPE ObjectType;
			public PSTR ObjectTypeName;
			public PSTR InheritedObjectTypeName;
			public PSTR ptstrName;
		}
		[CRepr]
		public struct OBJECTS_AND_NAME_W
		{
			public SYSTEM_AUDIT_OBJECT_ACE_FLAGS ObjectsPresent;
			public SE_OBJECT_TYPE ObjectType;
			public PWSTR ObjectTypeName;
			public PWSTR InheritedObjectTypeName;
			public PWSTR ptstrName;
		}
		[CRepr]
		public struct TRUSTEE_A
		{
			public TRUSTEE_A* pMultipleTrustee;
			public MULTIPLE_TRUSTEE_OPERATION MultipleTrusteeOperation;
			public TRUSTEE_FORM TrusteeForm;
			public TRUSTEE_TYPE TrusteeType;
			public PSTR ptstrName;
		}
		[CRepr]
		public struct TRUSTEE_W
		{
			public TRUSTEE_W* pMultipleTrustee;
			public MULTIPLE_TRUSTEE_OPERATION MultipleTrusteeOperation;
			public TRUSTEE_FORM TrusteeForm;
			public TRUSTEE_TYPE TrusteeType;
			public PWSTR ptstrName;
		}
		[CRepr]
		public struct EXPLICIT_ACCESS_A
		{
			public uint32 grfAccessPermissions;
			public ACCESS_MODE grfAccessMode;
			public ACE_FLAGS grfInheritance;
			public TRUSTEE_A Trustee;
		}
		[CRepr]
		public struct EXPLICIT_ACCESS_W
		{
			public uint32 grfAccessPermissions;
			public ACCESS_MODE grfAccessMode;
			public ACE_FLAGS grfInheritance;
			public TRUSTEE_W Trustee;
		}
		[CRepr]
		public struct ACTRL_ACCESS_ENTRYA
		{
			public TRUSTEE_A Trustee;
			public ACTRL_ACCESS_ENTRY_ACCESS_FLAGS fAccessFlags;
			public uint32 Access;
			public uint32 ProvSpecificAccess;
			public ACE_FLAGS Inheritance;
			public PSTR lpInheritProperty;
		}
		[CRepr]
		public struct ACTRL_ACCESS_ENTRYW
		{
			public TRUSTEE_W Trustee;
			public ACTRL_ACCESS_ENTRY_ACCESS_FLAGS fAccessFlags;
			public uint32 Access;
			public uint32 ProvSpecificAccess;
			public ACE_FLAGS Inheritance;
			public PWSTR lpInheritProperty;
		}
		[CRepr]
		public struct ACTRL_ACCESS_ENTRY_LISTA
		{
			public uint32 cEntries;
			public ACTRL_ACCESS_ENTRYA* pAccessList;
		}
		[CRepr]
		public struct ACTRL_ACCESS_ENTRY_LISTW
		{
			public uint32 cEntries;
			public ACTRL_ACCESS_ENTRYW* pAccessList;
		}
		[CRepr]
		public struct ACTRL_PROPERTY_ENTRYA
		{
			public PSTR lpProperty;
			public ACTRL_ACCESS_ENTRY_LISTA* pAccessEntryList;
			public uint32 fListFlags;
		}
		[CRepr]
		public struct ACTRL_PROPERTY_ENTRYW
		{
			public PWSTR lpProperty;
			public ACTRL_ACCESS_ENTRY_LISTW* pAccessEntryList;
			public uint32 fListFlags;
		}
		[CRepr]
		public struct ACTRL_ACCESSA
		{
			public uint32 cEntries;
			public ACTRL_PROPERTY_ENTRYA* pPropertyAccessList;
		}
		[CRepr]
		public struct ACTRL_ACCESSW
		{
			public uint32 cEntries;
			public ACTRL_PROPERTY_ENTRYW* pPropertyAccessList;
		}
		[CRepr]
		public struct TRUSTEE_ACCESSA
		{
			public PSTR lpProperty;
			public uint32 Access;
			public uint32 fAccessFlags;
			public uint32 fReturnedAccess;
		}
		[CRepr]
		public struct TRUSTEE_ACCESSW
		{
			public PWSTR lpProperty;
			public uint32 Access;
			public uint32 fAccessFlags;
			public uint32 fReturnedAccess;
		}
		[CRepr]
		public struct ACTRL_OVERLAPPED
		{
			public _Anonymous_e__Union Anonymous;
			public uint32 Reserved2;
			public HANDLE hEvent;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public void* Provider;
				public uint32 Reserved1;
			}
		}
		[CRepr]
		public struct ACTRL_ACCESS_INFOA
		{
			public uint32 fAccessPermission;
			public PSTR lpAccessPermissionName;
		}
		[CRepr]
		public struct ACTRL_ACCESS_INFOW
		{
			public uint32 fAccessPermission;
			public PWSTR lpAccessPermissionName;
		}
		[CRepr]
		public struct ACTRL_CONTROL_INFOA
		{
			public PSTR lpControlId;
			public PSTR lpControlName;
		}
		[CRepr]
		public struct ACTRL_CONTROL_INFOW
		{
			public PWSTR lpControlId;
			public PWSTR lpControlName;
		}
		[CRepr]
		public struct FN_OBJECT_MGR_FUNCTIONS
		{
			public uint32 Placeholder;
		}
		[CRepr]
		public struct INHERITED_FROMA
		{
			public int32 GenerationGap;
			public PSTR AncestorName;
		}
		[CRepr]
		public struct INHERITED_FROMW
		{
			public int32 GenerationGap;
			public PWSTR AncestorName;
		}
		[CRepr]
		public struct AUDIT_OBJECT_TYPE
		{
			public Guid ObjectType;
			public uint16 Flags;
			public uint16 Level;
			public uint32 AccessMask;
		}
		[CRepr]
		public struct AUDIT_OBJECT_TYPES
		{
			public uint16 Count;
			public uint16 Flags;
			public AUDIT_OBJECT_TYPE* pObjectTypes;
		}
		[CRepr]
		public struct AUDIT_IP_ADDRESS
		{
			public uint8[128] pIpAddress;
		}
		[CRepr]
		public struct AUDIT_PARAM
		{
			public AUDIT_PARAM_TYPE Type;
			public uint32 Length;
			public uint32 Flags;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint Data0;
				public PWSTR String;
				public uint u;
				public SID* psid;
				public Guid* pguid;
				public uint32 LogonId_LowPart;
				public AUDIT_OBJECT_TYPES* pObjectTypes;
				public AUDIT_IP_ADDRESS* pIpAddress;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint Data1;
				public int32 LogonId_HighPart;
			}
		}
		[CRepr]
		public struct AUDIT_PARAMS
		{
			public uint32 Length;
			public uint32 Flags;
			public uint16 Count;
			public AUDIT_PARAM* Parameters;
		}
		[CRepr]
		public struct AUTHZ_AUDIT_EVENT_TYPE_LEGACY
		{
			public uint16 CategoryId;
			public uint16 AuditId;
			public uint16 ParameterCount;
		}
		[CRepr, Union]
		public struct AUTHZ_AUDIT_EVENT_TYPE_UNION
		{
			public AUTHZ_AUDIT_EVENT_TYPE_LEGACY Legacy;
		}
		[CRepr]
		public struct AUTHZ_AUDIT_EVENT_TYPE_OLD
		{
			public uint32 Version;
			public uint32 dwFlags;
			public int32 RefCount;
			public uint hAudit;
			public LUID LinkId;
			public AUTHZ_AUDIT_EVENT_TYPE_UNION u;
		}
		[CRepr]
		public struct AUTHZ_CAP_CHANGE_SUBSCRIPTION_HANDLE__
		{
			public int32 unused;
		}
		[CRepr]
		public struct AUTHZ_ACCESS_REQUEST
		{
			public uint32 DesiredAccess;
			public PSID PrincipalSelfSid;
			public OBJECT_TYPE_LIST* ObjectTypeList;
			public uint32 ObjectTypeListLength;
			public void* OptionalArguments;
		}
		[CRepr]
		public struct AUTHZ_ACCESS_REPLY
		{
			public uint32 ResultListLength;
			public uint32* GrantedAccessMask;
			public AUTHZ_GENERATE_RESULTS* SaclEvaluationResults;
			public uint32* Error;
		}
		[CRepr]
		public struct AUTHZ_SECURITY_ATTRIBUTE_FQBN_VALUE
		{
			public uint64 Version;
			public PWSTR pName;
		}
		[CRepr]
		public struct AUTHZ_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE
		{
			public void* pValue;
			public uint32 ValueLength;
		}
		[CRepr]
		public struct AUTHZ_SECURITY_ATTRIBUTE_V1
		{
			public PWSTR pName;
			public uint16 ValueType;
			public uint16 Reserved;
			public AUTHZ_SECURITY_ATTRIBUTE_FLAGS Flags;
			public uint32 ValueCount;
			public _Values_e__Union Values;
			
			[CRepr, Union]
			public struct _Values_e__Union
			{
				public int64* pInt64;
				public uint64* pUint64;
				public PWSTR* ppString;
				public AUTHZ_SECURITY_ATTRIBUTE_FQBN_VALUE* pFqbn;
				public AUTHZ_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE* pOctetString;
			}
		}
		[CRepr]
		public struct AUTHZ_SECURITY_ATTRIBUTES_INFORMATION
		{
			public uint16 Version;
			public uint16 Reserved;
			public uint32 AttributeCount;
			public _Attribute_e__Union Attribute;
			
			[CRepr, Union]
			public struct _Attribute_e__Union
			{
				public AUTHZ_SECURITY_ATTRIBUTE_V1* pAttributeV1;
			}
		}
		[CRepr]
		public struct AUTHZ_RPC_INIT_INFO_CLIENT
		{
			public uint16 version;
			public PWSTR ObjectUuid;
			public PWSTR ProtSeq;
			public PWSTR NetworkAddr;
			public PWSTR Endpoint;
			public PWSTR Options;
			public PWSTR ServerSpn;
		}
		[CRepr]
		public struct AUTHZ_INIT_INFO
		{
			public uint16 version;
			public PWSTR szResourceManagerName;
			public PFN_AUTHZ_DYNAMIC_ACCESS_CHECK pfnDynamicAccessCheck;
			public PFN_AUTHZ_COMPUTE_DYNAMIC_GROUPS pfnComputeDynamicGroups;
			public PFN_AUTHZ_FREE_DYNAMIC_GROUPS pfnFreeDynamicGroups;
			public PFN_AUTHZ_GET_CENTRAL_ACCESS_POLICY pfnGetCentralAccessPolicy;
			public PFN_AUTHZ_FREE_CENTRAL_ACCESS_POLICY pfnFreeCentralAccessPolicy;
		}
		[CRepr]
		public struct AUTHZ_REGISTRATION_OBJECT_TYPE_NAME_OFFSET
		{
			public PWSTR szObjectTypeName;
			public uint32 dwOffset;
		}
		[CRepr]
		public struct AUTHZ_SOURCE_SCHEMA_REGISTRATION
		{
			public uint32 dwFlags;
			public PWSTR szEventSourceName;
			public PWSTR szEventMessageFile;
			public PWSTR szEventSourceXmlSchemaFile;
			public PWSTR szEventAccessStringsFile;
			public PWSTR szExecutableImagePath;
			public _Anonymous_e__Union Anonymous;
			public uint32 dwObjectTypeNameCount;
			public AUTHZ_REGISTRATION_OBJECT_TYPE_NAME_OFFSET[] ObjectTypeNames;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public void* pReserved;
				public Guid* pProviderGuid;
			}
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_AzAuthorizationStore = .(0xb2bcff59, 0xa757, 0x4b0b, 0xa1, 0xbc, 0xea, 0x69, 0x98, 0x1d, 0xa6, 0x9e);
		public const Guid CLSID_AzBizRuleContext = .(0x5c2dc96f, 0x8d51, 0x434b, 0xb3, 0x3c, 0x37, 0x9b, 0xcc, 0xae, 0x77, 0xc3);
		public const Guid CLSID_AzPrincipalLocator = .(0x483afb5d, 0x70df, 0x4e16, 0xab, 0xdc, 0xa1, 0xde, 0x4d, 0x01, 0x5a, 0x3e);
		
		// --- COM Interfaces ---
		
		public struct IAzAuthorizationStore {}
		public struct IAzAuthorizationStore2 {}
		public struct IAzAuthorizationStore3 {}
		public struct IAzApplication {}
		public struct IAzApplication2 {}
		public struct IAzApplications {}
		public struct IAzOperation {}
		public struct IAzOperations {}
		public struct IAzTask {}
		public struct IAzTasks {}
		public struct IAzScope {}
		public struct IAzScopes {}
		public struct IAzApplicationGroup {}
		public struct IAzApplicationGroups {}
		public struct IAzRole {}
		public struct IAzRoles {}
		public struct IAzClientContext {}
		public struct IAzClientContext2 {}
		public struct IAzBizRuleContext {}
		public struct IAzBizRuleParameters {}
		public struct IAzBizRuleInterfaces {}
		public struct IAzClientContext3 {}
		public struct IAzScope2 {}
		public struct IAzApplication3 {}
		public struct IAzOperation2 {}
		public struct IAzRoleDefinitions {}
		public struct IAzRoleDefinition {}
		public struct IAzRoleAssignment {}
		public struct IAzRoleAssignments {}
		public struct IAzPrincipalLocator {}
		public struct IAzNameResolver {}
		public struct IAzObjectPicker {}
		public struct IAzApplicationGroup2 {}
		public struct IAzTask2 {}
		
		// --- Functions ---
		
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzAccessCheck(AUTHZ_ACCESS_CHECK_FLAGS Flags, AUTHZ_CLIENT_CONTEXT_HANDLE hAuthzClientContext, AUTHZ_ACCESS_REQUEST* pRequest, AUTHZ_AUDIT_EVENT_HANDLE hAuditEvent, SECURITY_DESCRIPTOR* pSecurityDescriptor, SECURITY_DESCRIPTOR** OptionalSecurityDescriptorArray, uint32 OptionalSecurityDescriptorCount, AUTHZ_ACCESS_REPLY* pReply, int* phAccessCheckResults);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzCachedAccessCheck(uint32 Flags, AUTHZ_ACCESS_CHECK_RESULTS_HANDLE hAccessCheckResults, AUTHZ_ACCESS_REQUEST* pRequest, AUTHZ_AUDIT_EVENT_HANDLE hAuditEvent, AUTHZ_ACCESS_REPLY* pReply);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzOpenObjectAudit(uint32 Flags, AUTHZ_CLIENT_CONTEXT_HANDLE hAuthzClientContext, AUTHZ_ACCESS_REQUEST* pRequest, AUTHZ_AUDIT_EVENT_HANDLE hAuditEvent, SECURITY_DESCRIPTOR* pSecurityDescriptor, SECURITY_DESCRIPTOR** OptionalSecurityDescriptorArray, uint32 OptionalSecurityDescriptorCount, AUTHZ_ACCESS_REPLY* pReply);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzFreeHandle(AUTHZ_ACCESS_CHECK_RESULTS_HANDLE hAccessCheckResults);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzInitializeResourceManager(uint32 Flags, PFN_AUTHZ_DYNAMIC_ACCESS_CHECK pfnDynamicAccessCheck, PFN_AUTHZ_COMPUTE_DYNAMIC_GROUPS pfnComputeDynamicGroups, PFN_AUTHZ_FREE_DYNAMIC_GROUPS pfnFreeDynamicGroups, PWSTR szResourceManagerName, AUTHZ_RESOURCE_MANAGER_HANDLE* phAuthzResourceManager);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzInitializeResourceManagerEx(AUTHZ_RESOURCE_MANAGER_FLAGS Flags, AUTHZ_INIT_INFO* pAuthzInitInfo, AUTHZ_RESOURCE_MANAGER_HANDLE* phAuthzResourceManager);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzInitializeRemoteResourceManager(AUTHZ_RPC_INIT_INFO_CLIENT* pRpcInitInfo, AUTHZ_RESOURCE_MANAGER_HANDLE* phAuthzResourceManager);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzFreeResourceManager(AUTHZ_RESOURCE_MANAGER_HANDLE hAuthzResourceManager);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzInitializeContextFromToken(uint32 Flags, HANDLE TokenHandle, AUTHZ_RESOURCE_MANAGER_HANDLE hAuthzResourceManager, LARGE_INTEGER* pExpirationTime, LUID Identifier, void* DynamicGroupArgs, int* phAuthzClientContext);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzInitializeContextFromSid(uint32 Flags, PSID UserSid, AUTHZ_RESOURCE_MANAGER_HANDLE hAuthzResourceManager, LARGE_INTEGER* pExpirationTime, LUID Identifier, void* DynamicGroupArgs, int* phAuthzClientContext);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzInitializeContextFromAuthzContext(uint32 Flags, AUTHZ_CLIENT_CONTEXT_HANDLE hAuthzClientContext, LARGE_INTEGER* pExpirationTime, LUID Identifier, void* DynamicGroupArgs, int* phNewAuthzClientContext);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzInitializeCompoundContext(AUTHZ_CLIENT_CONTEXT_HANDLE UserContext, AUTHZ_CLIENT_CONTEXT_HANDLE DeviceContext, int* phCompoundContext);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzAddSidsToContext(AUTHZ_CLIENT_CONTEXT_HANDLE hAuthzClientContext, SID_AND_ATTRIBUTES* Sids, uint32 SidCount, SID_AND_ATTRIBUTES* RestrictedSids, uint32 RestrictedSidCount, int* phNewAuthzClientContext);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzModifySecurityAttributes(AUTHZ_CLIENT_CONTEXT_HANDLE hAuthzClientContext, AUTHZ_SECURITY_ATTRIBUTE_OPERATION* pOperations, AUTHZ_SECURITY_ATTRIBUTES_INFORMATION* pAttributes);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzModifyClaims(AUTHZ_CLIENT_CONTEXT_HANDLE hAuthzClientContext, AUTHZ_CONTEXT_INFORMATION_CLASS ClaimClass, AUTHZ_SECURITY_ATTRIBUTE_OPERATION* pClaimOperations, AUTHZ_SECURITY_ATTRIBUTES_INFORMATION* pClaims);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzModifySids(AUTHZ_CLIENT_CONTEXT_HANDLE hAuthzClientContext, AUTHZ_CONTEXT_INFORMATION_CLASS SidClass, AUTHZ_SID_OPERATION* pSidOperations, TOKEN_GROUPS* pSids);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzSetAppContainerInformation(AUTHZ_CLIENT_CONTEXT_HANDLE hAuthzClientContext, PSID pAppContainerSid, uint32 CapabilityCount, SID_AND_ATTRIBUTES* pCapabilitySids);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzGetInformationFromContext(AUTHZ_CLIENT_CONTEXT_HANDLE hAuthzClientContext, AUTHZ_CONTEXT_INFORMATION_CLASS InfoClass, uint32 BufferSize, uint32* pSizeRequired, void* Buffer);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzFreeContext(AUTHZ_CLIENT_CONTEXT_HANDLE hAuthzClientContext);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzInitializeObjectAccessAuditEvent(AUTHZ_INITIALIZE_OBJECT_ACCESS_AUDIT_EVENT_FLAGS Flags, AUTHZ_AUDIT_EVENT_TYPE_HANDLE hAuditEventType, PWSTR szOperationType, PWSTR szObjectType, PWSTR szObjectName, PWSTR szAdditionalInfo, int* phAuditEvent, uint32 dwAdditionalParameterCount);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzInitializeObjectAccessAuditEvent2(uint32 Flags, AUTHZ_AUDIT_EVENT_TYPE_HANDLE hAuditEventType, PWSTR szOperationType, PWSTR szObjectType, PWSTR szObjectName, PWSTR szAdditionalInfo, PWSTR szAdditionalInfo2, int* phAuditEvent, uint32 dwAdditionalParameterCount);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzFreeAuditEvent(AUTHZ_AUDIT_EVENT_HANDLE hAuditEvent);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzEvaluateSacl(AUTHZ_CLIENT_CONTEXT_HANDLE AuthzClientContext, AUTHZ_ACCESS_REQUEST* pRequest, ACL* Sacl, uint32 GrantedAccess, BOOL AccessGranted, BOOL* pbGenerateAudit);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzInstallSecurityEventSource(uint32 dwFlags, AUTHZ_SOURCE_SCHEMA_REGISTRATION* pRegistration);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzUninstallSecurityEventSource(uint32 dwFlags, PWSTR szEventSourceName);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzEnumerateSecurityEventSources(uint32 dwFlags, AUTHZ_SOURCE_SCHEMA_REGISTRATION* Buffer, uint32* pdwCount, uint32* pdwLength);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzRegisterSecurityEventSource(uint32 dwFlags, PWSTR szEventSourceName, int* phEventProvider);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzUnregisterSecurityEventSource(uint32 dwFlags, int* phEventProvider);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzReportSecurityEvent(uint32 dwFlags, AUTHZ_SECURITY_EVENT_PROVIDER_HANDLE hEventProvider, uint32 dwAuditId, PSID pUserSid, uint32 dwCount);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzReportSecurityEventFromParams(uint32 dwFlags, AUTHZ_SECURITY_EVENT_PROVIDER_HANDLE hEventProvider, uint32 dwAuditId, PSID pUserSid, AUDIT_PARAMS* pParams);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzRegisterCapChangeNotification(AUTHZ_CAP_CHANGE_SUBSCRIPTION_HANDLE__** phCapChangeSubscription, LPTHREAD_START_ROUTINE pfnCapChangeCallback, void* pCallbackContext);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzUnregisterCapChangeNotification(AUTHZ_CAP_CHANGE_SUBSCRIPTION_HANDLE__* hCapChangeSubscription);
		[Import("authz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AuthzFreeCentralAccessPolicyCache();
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetEntriesInAclA(uint32 cCountOfExplicitEntries, EXPLICIT_ACCESS_A* pListOfExplicitEntries, ACL* OldAcl, ACL** NewAcl);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetEntriesInAclW(uint32 cCountOfExplicitEntries, EXPLICIT_ACCESS_W* pListOfExplicitEntries, ACL* OldAcl, ACL** NewAcl);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetExplicitEntriesFromAclA(ACL* pacl, uint32* pcCountOfExplicitEntries, EXPLICIT_ACCESS_A** pListOfExplicitEntries);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetExplicitEntriesFromAclW(ACL* pacl, uint32* pcCountOfExplicitEntries, EXPLICIT_ACCESS_W** pListOfExplicitEntries);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetEffectiveRightsFromAclA(ACL* pacl, TRUSTEE_A* pTrustee, uint32* pAccessRights);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetEffectiveRightsFromAclW(ACL* pacl, TRUSTEE_W* pTrustee, uint32* pAccessRights);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetAuditedPermissionsFromAclA(ACL* pacl, TRUSTEE_A* pTrustee, uint32* pSuccessfulAuditedRights, uint32* pFailedAuditRights);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetAuditedPermissionsFromAclW(ACL* pacl, TRUSTEE_W* pTrustee, uint32* pSuccessfulAuditedRights, uint32* pFailedAuditRights);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetNamedSecurityInfoA(PSTR pObjectName, SE_OBJECT_TYPE ObjectType, OBJECT_SECURITY_INFORMATION SecurityInfo, PSID* ppsidOwner, PSID* ppsidGroup, ACL** ppDacl, ACL** ppSacl, SECURITY_DESCRIPTOR** ppSecurityDescriptor);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetNamedSecurityInfoW(PWSTR pObjectName, SE_OBJECT_TYPE ObjectType, OBJECT_SECURITY_INFORMATION SecurityInfo, PSID* ppsidOwner, PSID* ppsidGroup, ACL** ppDacl, ACL** ppSacl, SECURITY_DESCRIPTOR** ppSecurityDescriptor);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSecurityInfo(HANDLE handle, SE_OBJECT_TYPE ObjectType, uint32 SecurityInfo, PSID* ppsidOwner, PSID* ppsidGroup, ACL** ppDacl, ACL** ppSacl, SECURITY_DESCRIPTOR** ppSecurityDescriptor);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetNamedSecurityInfoA(PSTR pObjectName, SE_OBJECT_TYPE ObjectType, OBJECT_SECURITY_INFORMATION SecurityInfo, PSID psidOwner, PSID psidGroup, ACL* pDacl, ACL* pSacl);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetNamedSecurityInfoW(PWSTR pObjectName, SE_OBJECT_TYPE ObjectType, OBJECT_SECURITY_INFORMATION SecurityInfo, PSID psidOwner, PSID psidGroup, ACL* pDacl, ACL* pSacl);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetSecurityInfo(HANDLE handle, SE_OBJECT_TYPE ObjectType, uint32 SecurityInfo, PSID psidOwner, PSID psidGroup, ACL* pDacl, ACL* pSacl);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetInheritanceSourceA(PSTR pObjectName, SE_OBJECT_TYPE ObjectType, uint32 SecurityInfo, BOOL Container, Guid** pObjectClassGuids, uint32 GuidCount, ACL* pAcl, FN_OBJECT_MGR_FUNCTIONS* pfnArray, GENERIC_MAPPING* pGenericMapping, INHERITED_FROMA* pInheritArray);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetInheritanceSourceW(PWSTR pObjectName, SE_OBJECT_TYPE ObjectType, uint32 SecurityInfo, BOOL Container, Guid** pObjectClassGuids, uint32 GuidCount, ACL* pAcl, FN_OBJECT_MGR_FUNCTIONS* pfnArray, GENERIC_MAPPING* pGenericMapping, INHERITED_FROMW* pInheritArray);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 FreeInheritedFromArray(INHERITED_FROMW* pInheritArray, uint16 AceCnt, FN_OBJECT_MGR_FUNCTIONS* pfnArray);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TreeResetNamedSecurityInfoA(PSTR pObjectName, SE_OBJECT_TYPE ObjectType, uint32 SecurityInfo, PSID pOwner, PSID pGroup, ACL* pDacl, ACL* pSacl, BOOL KeepExplicit, FN_PROGRESS fnProgress, PROG_INVOKE_SETTING ProgressInvokeSetting, void* Args);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TreeResetNamedSecurityInfoW(PWSTR pObjectName, SE_OBJECT_TYPE ObjectType, uint32 SecurityInfo, PSID pOwner, PSID pGroup, ACL* pDacl, ACL* pSacl, BOOL KeepExplicit, FN_PROGRESS fnProgress, PROG_INVOKE_SETTING ProgressInvokeSetting, void* Args);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TreeSetNamedSecurityInfoA(PSTR pObjectName, SE_OBJECT_TYPE ObjectType, uint32 SecurityInfo, PSID pOwner, PSID pGroup, ACL* pDacl, ACL* pSacl, TREE_SEC_INFO dwAction, FN_PROGRESS fnProgress, PROG_INVOKE_SETTING ProgressInvokeSetting, void* Args);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TreeSetNamedSecurityInfoW(PWSTR pObjectName, SE_OBJECT_TYPE ObjectType, uint32 SecurityInfo, PSID pOwner, PSID pGroup, ACL* pDacl, ACL* pSacl, TREE_SEC_INFO dwAction, FN_PROGRESS fnProgress, PROG_INVOKE_SETTING ProgressInvokeSetting, void* Args);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 BuildSecurityDescriptorA(TRUSTEE_A* pOwner, TRUSTEE_A* pGroup, uint32 cCountOfAccessEntries, EXPLICIT_ACCESS_A* pListOfAccessEntries, uint32 cCountOfAuditEntries, EXPLICIT_ACCESS_A* pListOfAuditEntries, SECURITY_DESCRIPTOR* pOldSD, uint32* pSizeNewSD, SECURITY_DESCRIPTOR** pNewSD);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 BuildSecurityDescriptorW(TRUSTEE_W* pOwner, TRUSTEE_W* pGroup, uint32 cCountOfAccessEntries, EXPLICIT_ACCESS_W* pListOfAccessEntries, uint32 cCountOfAuditEntries, EXPLICIT_ACCESS_W* pListOfAuditEntries, SECURITY_DESCRIPTOR* pOldSD, uint32* pSizeNewSD, SECURITY_DESCRIPTOR** pNewSD);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LookupSecurityDescriptorPartsA(TRUSTEE_A** ppOwner, TRUSTEE_A** ppGroup, uint32* pcCountOfAccessEntries, EXPLICIT_ACCESS_A** ppListOfAccessEntries, uint32* pcCountOfAuditEntries, EXPLICIT_ACCESS_A** ppListOfAuditEntries, SECURITY_DESCRIPTOR* pSD);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LookupSecurityDescriptorPartsW(TRUSTEE_W** ppOwner, TRUSTEE_W** ppGroup, uint32* pcCountOfAccessEntries, EXPLICIT_ACCESS_W** ppListOfAccessEntries, uint32* pcCountOfAuditEntries, EXPLICIT_ACCESS_W** ppListOfAuditEntries, SECURITY_DESCRIPTOR* pSD);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildExplicitAccessWithNameA(EXPLICIT_ACCESS_A* pExplicitAccess, PSTR pTrusteeName, uint32 AccessPermissions, ACCESS_MODE AccessMode, ACE_FLAGS Inheritance);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildExplicitAccessWithNameW(EXPLICIT_ACCESS_W* pExplicitAccess, PWSTR pTrusteeName, uint32 AccessPermissions, ACCESS_MODE AccessMode, ACE_FLAGS Inheritance);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildImpersonateExplicitAccessWithNameA(EXPLICIT_ACCESS_A* pExplicitAccess, PSTR pTrusteeName, TRUSTEE_A* pTrustee, uint32 AccessPermissions, ACCESS_MODE AccessMode, uint32 Inheritance);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildImpersonateExplicitAccessWithNameW(EXPLICIT_ACCESS_W* pExplicitAccess, PWSTR pTrusteeName, TRUSTEE_W* pTrustee, uint32 AccessPermissions, ACCESS_MODE AccessMode, uint32 Inheritance);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildTrusteeWithNameA(TRUSTEE_A* pTrustee, PSTR pName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildTrusteeWithNameW(TRUSTEE_W* pTrustee, PWSTR pName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildImpersonateTrusteeA(TRUSTEE_A* pTrustee, TRUSTEE_A* pImpersonateTrustee);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildImpersonateTrusteeW(TRUSTEE_W* pTrustee, TRUSTEE_W* pImpersonateTrustee);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildTrusteeWithSidA(TRUSTEE_A* pTrustee, PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildTrusteeWithSidW(TRUSTEE_W* pTrustee, PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildTrusteeWithObjectsAndSidA(TRUSTEE_A* pTrustee, OBJECTS_AND_SID* pObjSid, Guid* pObjectGuid, Guid* pInheritedObjectGuid, PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildTrusteeWithObjectsAndSidW(TRUSTEE_W* pTrustee, OBJECTS_AND_SID* pObjSid, Guid* pObjectGuid, Guid* pInheritedObjectGuid, PSID pSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildTrusteeWithObjectsAndNameA(TRUSTEE_A* pTrustee, OBJECTS_AND_NAME_A* pObjName, SE_OBJECT_TYPE ObjectType, PSTR ObjectTypeName, PSTR InheritedObjectTypeName, PSTR Name);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BuildTrusteeWithObjectsAndNameW(TRUSTEE_W* pTrustee, OBJECTS_AND_NAME_W* pObjName, SE_OBJECT_TYPE ObjectType, PWSTR ObjectTypeName, PWSTR InheritedObjectTypeName, PWSTR Name);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR GetTrusteeNameA(TRUSTEE_A* pTrustee);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR GetTrusteeNameW(TRUSTEE_W* pTrustee);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern TRUSTEE_TYPE GetTrusteeTypeA(TRUSTEE_A* pTrustee);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern TRUSTEE_TYPE GetTrusteeTypeW(TRUSTEE_W* pTrustee);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern TRUSTEE_FORM GetTrusteeFormA(TRUSTEE_A* pTrustee);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern TRUSTEE_FORM GetTrusteeFormW(TRUSTEE_W* pTrustee);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern MULTIPLE_TRUSTEE_OPERATION GetMultipleTrusteeOperationA(TRUSTEE_A* pTrustee);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern MULTIPLE_TRUSTEE_OPERATION GetMultipleTrusteeOperationW(TRUSTEE_W* pTrustee);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern TRUSTEE_A* GetMultipleTrusteeA(TRUSTEE_A* pTrustee);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern TRUSTEE_W* GetMultipleTrusteeW(TRUSTEE_W* pTrustee);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ConvertSidToStringSidA(PSID Sid, PSTR* StringSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ConvertSidToStringSidW(PSID Sid, PWSTR* StringSid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ConvertStringSidToSidA(PSTR StringSid, PSID* Sid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ConvertStringSidToSidW(PWSTR StringSid, PSID* Sid);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ConvertStringSecurityDescriptorToSecurityDescriptorA(PSTR StringSecurityDescriptor, uint32 StringSDRevision, SECURITY_DESCRIPTOR** SecurityDescriptor, uint32* SecurityDescriptorSize);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ConvertStringSecurityDescriptorToSecurityDescriptorW(PWSTR StringSecurityDescriptor, uint32 StringSDRevision, SECURITY_DESCRIPTOR** SecurityDescriptor, uint32* SecurityDescriptorSize);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ConvertSecurityDescriptorToStringSecurityDescriptorA(SECURITY_DESCRIPTOR* SecurityDescriptor, uint32 RequestedStringSDRevision, uint32 SecurityInformation, PSTR* StringSecurityDescriptor, uint32* StringSecurityDescriptorLen);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ConvertSecurityDescriptorToStringSecurityDescriptorW(SECURITY_DESCRIPTOR* SecurityDescriptor, uint32 RequestedStringSDRevision, uint32 SecurityInformation, PWSTR* StringSecurityDescriptor, uint32* StringSecurityDescriptorLen);
		
	}
}
