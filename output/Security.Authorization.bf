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
		
		[CRepr]
		public struct IAzAuthorizationStore : IDispatch
		{
			public const new Guid IID = .(0xedbd9ca9, 0x9b82, 0x4f6a, 0x9e, 0x8b, 0x98, 0x30, 0x1e, 0x45, 0x0f, 0x14);
			
			public function HRESULT(IAzAuthorizationStore *self, BSTR* pbstrDescription) get_Description;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrDescription) put_Description;
			public function HRESULT(IAzAuthorizationStore *self, BSTR* pbstrApplicationData) get_ApplicationData;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrApplicationData) put_ApplicationData;
			public function HRESULT(IAzAuthorizationStore *self, int32* plProp) get_DomainTimeout;
			public function HRESULT(IAzAuthorizationStore *self, int32 lProp) put_DomainTimeout;
			public function HRESULT(IAzAuthorizationStore *self, int32* plProp) get_ScriptEngineTimeout;
			public function HRESULT(IAzAuthorizationStore *self, int32 lProp) put_ScriptEngineTimeout;
			public function HRESULT(IAzAuthorizationStore *self, int32* plProp) get_MaxScriptEngines;
			public function HRESULT(IAzAuthorizationStore *self, int32 lProp) put_MaxScriptEngines;
			public function HRESULT(IAzAuthorizationStore *self, BOOL* pbProp) get_GenerateAudits;
			public function HRESULT(IAzAuthorizationStore *self, BOOL bProp) put_GenerateAudits;
			public function HRESULT(IAzAuthorizationStore *self, BOOL* pfProp) get_Writable;
			public function HRESULT(IAzAuthorizationStore *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
			public function HRESULT(IAzAuthorizationStore *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
			public function HRESULT(IAzAuthorizationStore *self, AZ_PROP_CONSTANTS lPropId, VARIANT varProp, VARIANT varReserved) AddPropertyItem;
			public function HRESULT(IAzAuthorizationStore *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) DeletePropertyItem;
			public function HRESULT(IAzAuthorizationStore *self, VARIANT* pvarAdmins) get_PolicyAdministrators;
			public function HRESULT(IAzAuthorizationStore *self, VARIANT* pvarReaders) get_PolicyReaders;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrAdmin, VARIANT varReserved) AddPolicyAdministrator;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrAdmin, VARIANT varReserved) DeletePolicyAdministrator;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrReader, VARIANT varReserved) AddPolicyReader;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrReader, VARIANT varReserved) DeletePolicyReader;
			public function HRESULT(IAzAuthorizationStore *self, AZ_PROP_CONSTANTS lFlags, BSTR bstrPolicyURL, VARIANT varReserved) Initialize;
			public function HRESULT(IAzAuthorizationStore *self, VARIANT varReserved) UpdateCache;
			public function HRESULT(IAzAuthorizationStore *self, VARIANT varReserved) Delete;
			public function HRESULT(IAzAuthorizationStore *self, IAzApplications** ppAppCollection) get_Applications;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrApplicationName, VARIANT varReserved, IAzApplication** ppApplication) OpenApplication;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrApplicationName, VARIANT varReserved, IAzApplication** ppApplication) CreateApplication;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrApplicationName, VARIANT varReserved) DeleteApplication;
			public function HRESULT(IAzAuthorizationStore *self, IAzApplicationGroups** ppGroupCollection) get_ApplicationGroups;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) CreateApplicationGroup;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) OpenApplicationGroup;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrGroupName, VARIANT varReserved) DeleteApplicationGroup;
			public function HRESULT(IAzAuthorizationStore *self, int32 lFlags, VARIANT varReserved) Submit;
			public function HRESULT(IAzAuthorizationStore *self, VARIANT* pvarDelegatedPolicyUsers) get_DelegatedPolicyUsers;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) AddDelegatedPolicyUser;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) DeleteDelegatedPolicyUser;
			public function HRESULT(IAzAuthorizationStore *self, BSTR* pbstrTargetMachine) get_TargetMachine;
			public function HRESULT(IAzAuthorizationStore *self, BOOL* pbApplyStoreSacl) get_ApplyStoreSacl;
			public function HRESULT(IAzAuthorizationStore *self, BOOL bApplyStoreSacl) put_ApplyStoreSacl;
			public function HRESULT(IAzAuthorizationStore *self, VARIANT* pvarAdmins) get_PolicyAdministratorsName;
			public function HRESULT(IAzAuthorizationStore *self, VARIANT* pvarReaders) get_PolicyReadersName;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrAdmin, VARIANT varReserved) AddPolicyAdministratorName;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrAdmin, VARIANT varReserved) DeletePolicyAdministratorName;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrReader, VARIANT varReserved) AddPolicyReaderName;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrReader, VARIANT varReserved) DeletePolicyReaderName;
			public function HRESULT(IAzAuthorizationStore *self, VARIANT* pvarDelegatedPolicyUsers) get_DelegatedPolicyUsersName;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) AddDelegatedPolicyUserName;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) DeleteDelegatedPolicyUserName;
			public function HRESULT(IAzAuthorizationStore *self, BSTR bstrApplicationName, int32 lFlag) CloseApplication;
		}
		[CRepr]
		public struct IAzAuthorizationStore2 : IAzAuthorizationStore
		{
			public const new Guid IID = .(0xb11e5584, 0xd577, 0x4273, 0xb6, 0xc5, 0x09, 0x73, 0xe0, 0xf8, 0xe8, 0x0d);
			
			public function HRESULT(IAzAuthorizationStore2 *self, BSTR bstrApplicationName, VARIANT varReserved, IAzApplication2** ppApplication) OpenApplication2;
			public function HRESULT(IAzAuthorizationStore2 *self, BSTR bstrApplicationName, VARIANT varReserved, IAzApplication2** ppApplication) CreateApplication2;
		}
		[CRepr]
		public struct IAzAuthorizationStore3 : IAzAuthorizationStore2
		{
			public const new Guid IID = .(0xabc08425, 0x0c86, 0x4fa0, 0x9b, 0xe3, 0x71, 0x89, 0x95, 0x6c, 0x92, 0x6e);
			
			public function HRESULT(IAzAuthorizationStore3 *self, int16* pbIsUpdateNeeded) IsUpdateNeeded;
			public function HRESULT(IAzAuthorizationStore3 *self, int16* pbSupported) BizruleGroupSupported;
			public function HRESULT(IAzAuthorizationStore3 *self, int32 lFunctionalLevel) UpgradeStoresFunctionalLevel;
			public function HRESULT(IAzAuthorizationStore3 *self, int32 lFunctionalLevel, int16* pbSupported) IsFunctionalLevelUpgradeSupported;
			public function HRESULT(IAzAuthorizationStore3 *self, int32* plMajorVersion, int32* plMinorVersion) GetSchemaVersion;
		}
		[CRepr]
		public struct IAzApplication : IDispatch
		{
			public const new Guid IID = .(0x987bc7c7, 0xb813, 0x4d27, 0xbe, 0xde, 0x6b, 0xa5, 0xae, 0x86, 0x7e, 0x95);
			
			public function HRESULT(IAzApplication *self, BSTR* pbstrName) get_Name;
			public function HRESULT(IAzApplication *self, BSTR bstrName) put_Name;
			public function HRESULT(IAzApplication *self, BSTR* pbstrDescription) get_Description;
			public function HRESULT(IAzApplication *self, BSTR bstrDescription) put_Description;
			public function HRESULT(IAzApplication *self, BSTR* pbstrApplicationData) get_ApplicationData;
			public function HRESULT(IAzApplication *self, BSTR bstrApplicationData) put_ApplicationData;
			public function HRESULT(IAzApplication *self, BSTR* pbstrProp) get_AuthzInterfaceClsid;
			public function HRESULT(IAzApplication *self, BSTR bstrProp) put_AuthzInterfaceClsid;
			public function HRESULT(IAzApplication *self, BSTR* pbstrProp) get_Version;
			public function HRESULT(IAzApplication *self, BSTR bstrProp) put_Version;
			public function HRESULT(IAzApplication *self, BOOL* pbProp) get_GenerateAudits;
			public function HRESULT(IAzApplication *self, BOOL bProp) put_GenerateAudits;
			public function HRESULT(IAzApplication *self, BOOL* pbProp) get_ApplyStoreSacl;
			public function HRESULT(IAzApplication *self, BOOL bProp) put_ApplyStoreSacl;
			public function HRESULT(IAzApplication *self, BOOL* pfProp) get_Writable;
			public function HRESULT(IAzApplication *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
			public function HRESULT(IAzApplication *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
			public function HRESULT(IAzApplication *self, VARIANT* pvarAdmins) get_PolicyAdministrators;
			public function HRESULT(IAzApplication *self, VARIANT* pvarReaders) get_PolicyReaders;
			public function HRESULT(IAzApplication *self, BSTR bstrAdmin, VARIANT varReserved) AddPolicyAdministrator;
			public function HRESULT(IAzApplication *self, BSTR bstrAdmin, VARIANT varReserved) DeletePolicyAdministrator;
			public function HRESULT(IAzApplication *self, BSTR bstrReader, VARIANT varReserved) AddPolicyReader;
			public function HRESULT(IAzApplication *self, BSTR bstrReader, VARIANT varReserved) DeletePolicyReader;
			public function HRESULT(IAzApplication *self, IAzScopes** ppScopeCollection) get_Scopes;
			public function HRESULT(IAzApplication *self, BSTR bstrScopeName, VARIANT varReserved, IAzScope** ppScope) OpenScope;
			public function HRESULT(IAzApplication *self, BSTR bstrScopeName, VARIANT varReserved, IAzScope** ppScope) CreateScope;
			public function HRESULT(IAzApplication *self, BSTR bstrScopeName, VARIANT varReserved) DeleteScope;
			public function HRESULT(IAzApplication *self, IAzOperations** ppOperationCollection) get_Operations;
			public function HRESULT(IAzApplication *self, BSTR bstrOperationName, VARIANT varReserved, IAzOperation** ppOperation) OpenOperation;
			public function HRESULT(IAzApplication *self, BSTR bstrOperationName, VARIANT varReserved, IAzOperation** ppOperation) CreateOperation;
			public function HRESULT(IAzApplication *self, BSTR bstrOperationName, VARIANT varReserved) DeleteOperation;
			public function HRESULT(IAzApplication *self, IAzTasks** ppTaskCollection) get_Tasks;
			public function HRESULT(IAzApplication *self, BSTR bstrTaskName, VARIANT varReserved, IAzTask** ppTask) OpenTask;
			public function HRESULT(IAzApplication *self, BSTR bstrTaskName, VARIANT varReserved, IAzTask** ppTask) CreateTask;
			public function HRESULT(IAzApplication *self, BSTR bstrTaskName, VARIANT varReserved) DeleteTask;
			public function HRESULT(IAzApplication *self, IAzApplicationGroups** ppGroupCollection) get_ApplicationGroups;
			public function HRESULT(IAzApplication *self, BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) OpenApplicationGroup;
			public function HRESULT(IAzApplication *self, BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) CreateApplicationGroup;
			public function HRESULT(IAzApplication *self, BSTR bstrGroupName, VARIANT varReserved) DeleteApplicationGroup;
			public function HRESULT(IAzApplication *self, IAzRoles** ppRoleCollection) get_Roles;
			public function HRESULT(IAzApplication *self, BSTR bstrRoleName, VARIANT varReserved, IAzRole** ppRole) OpenRole;
			public function HRESULT(IAzApplication *self, BSTR bstrRoleName, VARIANT varReserved, IAzRole** ppRole) CreateRole;
			public function HRESULT(IAzApplication *self, BSTR bstrRoleName, VARIANT varReserved) DeleteRole;
			public function HRESULT(IAzApplication *self, uint64 ullTokenHandle, VARIANT varReserved, IAzClientContext** ppClientContext) InitializeClientContextFromToken;
			public function HRESULT(IAzApplication *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) AddPropertyItem;
			public function HRESULT(IAzApplication *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) DeletePropertyItem;
			public function HRESULT(IAzApplication *self, int32 lFlags, VARIANT varReserved) Submit;
			public function HRESULT(IAzApplication *self, BSTR ClientName, BSTR DomainName, VARIANT varReserved, IAzClientContext** ppClientContext) InitializeClientContextFromName;
			public function HRESULT(IAzApplication *self, VARIANT* pvarDelegatedPolicyUsers) get_DelegatedPolicyUsers;
			public function HRESULT(IAzApplication *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) AddDelegatedPolicyUser;
			public function HRESULT(IAzApplication *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) DeleteDelegatedPolicyUser;
			public function HRESULT(IAzApplication *self, BSTR SidString, int32 lOptions, VARIANT varReserved, IAzClientContext** ppClientContext) InitializeClientContextFromStringSid;
			public function HRESULT(IAzApplication *self, VARIANT* pvarAdmins) get_PolicyAdministratorsName;
			public function HRESULT(IAzApplication *self, VARIANT* pvarReaders) get_PolicyReadersName;
			public function HRESULT(IAzApplication *self, BSTR bstrAdmin, VARIANT varReserved) AddPolicyAdministratorName;
			public function HRESULT(IAzApplication *self, BSTR bstrAdmin, VARIANT varReserved) DeletePolicyAdministratorName;
			public function HRESULT(IAzApplication *self, BSTR bstrReader, VARIANT varReserved) AddPolicyReaderName;
			public function HRESULT(IAzApplication *self, BSTR bstrReader, VARIANT varReserved) DeletePolicyReaderName;
			public function HRESULT(IAzApplication *self, VARIANT* pvarDelegatedPolicyUsers) get_DelegatedPolicyUsersName;
			public function HRESULT(IAzApplication *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) AddDelegatedPolicyUserName;
			public function HRESULT(IAzApplication *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) DeleteDelegatedPolicyUserName;
		}
		[CRepr]
		public struct IAzApplication2 : IAzApplication
		{
			public const new Guid IID = .(0x086a68af, 0xa249, 0x437c, 0xb1, 0x8d, 0xd4, 0xd8, 0x6d, 0x6a, 0x96, 0x60);
			
			public function HRESULT(IAzApplication2 *self, uint32 ulTokenHandleLowPart, uint32 ulTokenHandleHighPart, VARIANT varReserved, IAzClientContext2** ppClientContext) InitializeClientContextFromToken2;
			public function HRESULT(IAzApplication2 *self, BSTR IdentifyingString, VARIANT varReserved, IAzClientContext2** ppClientContext) InitializeClientContext2;
		}
		[CRepr]
		public struct IAzApplications : IDispatch
		{
			public const new Guid IID = .(0x929b11a9, 0x95c5, 0x4a84, 0xa2, 0x9a, 0x20, 0xad, 0x42, 0xc2, 0xf1, 0x6c);
			
			public function HRESULT(IAzApplications *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
			public function HRESULT(IAzApplications *self, int32* plCount) get_Count;
			public function HRESULT(IAzApplications *self, IUnknown** ppEnumPtr) get__NewEnum;
		}
		[CRepr]
		public struct IAzOperation : IDispatch
		{
			public const new Guid IID = .(0x5e56b24f, 0xea01, 0x4d61, 0xbe, 0x44, 0xc4, 0x9b, 0x5e, 0x4e, 0xaf, 0x74);
			
			public function HRESULT(IAzOperation *self, BSTR* pbstrName) get_Name;
			public function HRESULT(IAzOperation *self, BSTR bstrName) put_Name;
			public function HRESULT(IAzOperation *self, BSTR* pbstrDescription) get_Description;
			public function HRESULT(IAzOperation *self, BSTR bstrDescription) put_Description;
			public function HRESULT(IAzOperation *self, BSTR* pbstrApplicationData) get_ApplicationData;
			public function HRESULT(IAzOperation *self, BSTR bstrApplicationData) put_ApplicationData;
			public function HRESULT(IAzOperation *self, int32* plProp) get_OperationID;
			public function HRESULT(IAzOperation *self, int32 lProp) put_OperationID;
			public function HRESULT(IAzOperation *self, BOOL* pfProp) get_Writable;
			public function HRESULT(IAzOperation *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
			public function HRESULT(IAzOperation *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
			public function HRESULT(IAzOperation *self, int32 lFlags, VARIANT varReserved) Submit;
		}
		[CRepr]
		public struct IAzOperations : IDispatch
		{
			public const new Guid IID = .(0x90ef9c07, 0x9706, 0x49d9, 0xaf, 0x80, 0x04, 0x38, 0xa5, 0xf3, 0xec, 0x35);
			
			public function HRESULT(IAzOperations *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
			public function HRESULT(IAzOperations *self, int32* plCount) get_Count;
			public function HRESULT(IAzOperations *self, IUnknown** ppEnumPtr) get__NewEnum;
		}
		[CRepr]
		public struct IAzTask : IDispatch
		{
			public const new Guid IID = .(0xcb94e592, 0x2e0e, 0x4a6c, 0xa3, 0x36, 0xb8, 0x9a, 0x6d, 0xc1, 0xe3, 0x88);
			
			public function HRESULT(IAzTask *self, BSTR* pbstrName) get_Name;
			public function HRESULT(IAzTask *self, BSTR bstrName) put_Name;
			public function HRESULT(IAzTask *self, BSTR* pbstrDescription) get_Description;
			public function HRESULT(IAzTask *self, BSTR bstrDescription) put_Description;
			public function HRESULT(IAzTask *self, BSTR* pbstrApplicationData) get_ApplicationData;
			public function HRESULT(IAzTask *self, BSTR bstrApplicationData) put_ApplicationData;
			public function HRESULT(IAzTask *self, BSTR* pbstrProp) get_BizRule;
			public function HRESULT(IAzTask *self, BSTR bstrProp) put_BizRule;
			public function HRESULT(IAzTask *self, BSTR* pbstrProp) get_BizRuleLanguage;
			public function HRESULT(IAzTask *self, BSTR bstrProp) put_BizRuleLanguage;
			public function HRESULT(IAzTask *self, BSTR* pbstrProp) get_BizRuleImportedPath;
			public function HRESULT(IAzTask *self, BSTR bstrProp) put_BizRuleImportedPath;
			public function HRESULT(IAzTask *self, BOOL* pfProp) get_IsRoleDefinition;
			public function HRESULT(IAzTask *self, BOOL fProp) put_IsRoleDefinition;
			public function HRESULT(IAzTask *self, VARIANT* pvarProp) get_Operations;
			public function HRESULT(IAzTask *self, VARIANT* pvarProp) get_Tasks;
			public function HRESULT(IAzTask *self, BSTR bstrOp, VARIANT varReserved) AddOperation;
			public function HRESULT(IAzTask *self, BSTR bstrOp, VARIANT varReserved) DeleteOperation;
			public function HRESULT(IAzTask *self, BSTR bstrTask, VARIANT varReserved) AddTask;
			public function HRESULT(IAzTask *self, BSTR bstrTask, VARIANT varReserved) DeleteTask;
			public function HRESULT(IAzTask *self, BOOL* pfProp) get_Writable;
			public function HRESULT(IAzTask *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
			public function HRESULT(IAzTask *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
			public function HRESULT(IAzTask *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) AddPropertyItem;
			public function HRESULT(IAzTask *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) DeletePropertyItem;
			public function HRESULT(IAzTask *self, int32 lFlags, VARIANT varReserved) Submit;
		}
		[CRepr]
		public struct IAzTasks : IDispatch
		{
			public const new Guid IID = .(0xb338ccab, 0x4c85, 0x4388, 0x8c, 0x0a, 0xc5, 0x85, 0x92, 0xba, 0xd3, 0x98);
			
			public function HRESULT(IAzTasks *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
			public function HRESULT(IAzTasks *self, int32* plCount) get_Count;
			public function HRESULT(IAzTasks *self, IUnknown** ppEnumPtr) get__NewEnum;
		}
		[CRepr]
		public struct IAzScope : IDispatch
		{
			public const new Guid IID = .(0x00e52487, 0xe08d, 0x4514, 0xb6, 0x2e, 0x87, 0x7d, 0x56, 0x45, 0xf5, 0xab);
			
			public function HRESULT(IAzScope *self, BSTR* pbstrName) get_Name;
			public function HRESULT(IAzScope *self, BSTR bstrName) put_Name;
			public function HRESULT(IAzScope *self, BSTR* pbstrDescription) get_Description;
			public function HRESULT(IAzScope *self, BSTR bstrDescription) put_Description;
			public function HRESULT(IAzScope *self, BSTR* pbstrApplicationData) get_ApplicationData;
			public function HRESULT(IAzScope *self, BSTR bstrApplicationData) put_ApplicationData;
			public function HRESULT(IAzScope *self, BOOL* pfProp) get_Writable;
			public function HRESULT(IAzScope *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
			public function HRESULT(IAzScope *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
			public function HRESULT(IAzScope *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) AddPropertyItem;
			public function HRESULT(IAzScope *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) DeletePropertyItem;
			public function HRESULT(IAzScope *self, VARIANT* pvarAdmins) get_PolicyAdministrators;
			public function HRESULT(IAzScope *self, VARIANT* pvarReaders) get_PolicyReaders;
			public function HRESULT(IAzScope *self, BSTR bstrAdmin, VARIANT varReserved) AddPolicyAdministrator;
			public function HRESULT(IAzScope *self, BSTR bstrAdmin, VARIANT varReserved) DeletePolicyAdministrator;
			public function HRESULT(IAzScope *self, BSTR bstrReader, VARIANT varReserved) AddPolicyReader;
			public function HRESULT(IAzScope *self, BSTR bstrReader, VARIANT varReserved) DeletePolicyReader;
			public function HRESULT(IAzScope *self, IAzApplicationGroups** ppGroupCollection) get_ApplicationGroups;
			public function HRESULT(IAzScope *self, BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) OpenApplicationGroup;
			public function HRESULT(IAzScope *self, BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) CreateApplicationGroup;
			public function HRESULT(IAzScope *self, BSTR bstrGroupName, VARIANT varReserved) DeleteApplicationGroup;
			public function HRESULT(IAzScope *self, IAzRoles** ppRoleCollection) get_Roles;
			public function HRESULT(IAzScope *self, BSTR bstrRoleName, VARIANT varReserved, IAzRole** ppRole) OpenRole;
			public function HRESULT(IAzScope *self, BSTR bstrRoleName, VARIANT varReserved, IAzRole** ppRole) CreateRole;
			public function HRESULT(IAzScope *self, BSTR bstrRoleName, VARIANT varReserved) DeleteRole;
			public function HRESULT(IAzScope *self, IAzTasks** ppTaskCollection) get_Tasks;
			public function HRESULT(IAzScope *self, BSTR bstrTaskName, VARIANT varReserved, IAzTask** ppTask) OpenTask;
			public function HRESULT(IAzScope *self, BSTR bstrTaskName, VARIANT varReserved, IAzTask** ppTask) CreateTask;
			public function HRESULT(IAzScope *self, BSTR bstrTaskName, VARIANT varReserved) DeleteTask;
			public function HRESULT(IAzScope *self, int32 lFlags, VARIANT varReserved) Submit;
			public function HRESULT(IAzScope *self, BOOL* pfProp) get_CanBeDelegated;
			public function HRESULT(IAzScope *self, BOOL* pfProp) get_BizrulesWritable;
			public function HRESULT(IAzScope *self, VARIANT* pvarAdmins) get_PolicyAdministratorsName;
			public function HRESULT(IAzScope *self, VARIANT* pvarReaders) get_PolicyReadersName;
			public function HRESULT(IAzScope *self, BSTR bstrAdmin, VARIANT varReserved) AddPolicyAdministratorName;
			public function HRESULT(IAzScope *self, BSTR bstrAdmin, VARIANT varReserved) DeletePolicyAdministratorName;
			public function HRESULT(IAzScope *self, BSTR bstrReader, VARIANT varReserved) AddPolicyReaderName;
			public function HRESULT(IAzScope *self, BSTR bstrReader, VARIANT varReserved) DeletePolicyReaderName;
		}
		[CRepr]
		public struct IAzScopes : IDispatch
		{
			public const new Guid IID = .(0x78e14853, 0x9f5e, 0x406d, 0x9b, 0x91, 0x6b, 0xdb, 0xa6, 0x97, 0x35, 0x10);
			
			public function HRESULT(IAzScopes *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
			public function HRESULT(IAzScopes *self, int32* plCount) get_Count;
			public function HRESULT(IAzScopes *self, IUnknown** ppEnumPtr) get__NewEnum;
		}
		[CRepr]
		public struct IAzApplicationGroup : IDispatch
		{
			public const new Guid IID = .(0xf1b744cd, 0x58a6, 0x4e06, 0x9f, 0xbf, 0x36, 0xf6, 0xd7, 0x79, 0xe2, 0x1e);
			
			public function HRESULT(IAzApplicationGroup *self, BSTR* pbstrName) get_Name;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrName) put_Name;
			public function HRESULT(IAzApplicationGroup *self, int32* plProp) get_Type;
			public function HRESULT(IAzApplicationGroup *self, int32 lProp) put_Type;
			public function HRESULT(IAzApplicationGroup *self, BSTR* pbstrProp) get_LdapQuery;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrProp) put_LdapQuery;
			public function HRESULT(IAzApplicationGroup *self, VARIANT* pvarProp) get_AppMembers;
			public function HRESULT(IAzApplicationGroup *self, VARIANT* pvarProp) get_AppNonMembers;
			public function HRESULT(IAzApplicationGroup *self, VARIANT* pvarProp) get_Members;
			public function HRESULT(IAzApplicationGroup *self, VARIANT* pvarProp) get_NonMembers;
			public function HRESULT(IAzApplicationGroup *self, BSTR* pbstrDescription) get_Description;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrDescription) put_Description;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) AddAppMember;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) DeleteAppMember;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) AddAppNonMember;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) DeleteAppNonMember;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) AddMember;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) DeleteMember;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) AddNonMember;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) DeleteNonMember;
			public function HRESULT(IAzApplicationGroup *self, BOOL* pfProp) get_Writable;
			public function HRESULT(IAzApplicationGroup *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
			public function HRESULT(IAzApplicationGroup *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
			public function HRESULT(IAzApplicationGroup *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) AddPropertyItem;
			public function HRESULT(IAzApplicationGroup *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) DeletePropertyItem;
			public function HRESULT(IAzApplicationGroup *self, int32 lFlags, VARIANT varReserved) Submit;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) AddMemberName;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) DeleteMemberName;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) AddNonMemberName;
			public function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) DeleteNonMemberName;
			public function HRESULT(IAzApplicationGroup *self, VARIANT* pvarProp) get_MembersName;
			public function HRESULT(IAzApplicationGroup *self, VARIANT* pvarProp) get_NonMembersName;
		}
		[CRepr]
		public struct IAzApplicationGroups : IDispatch
		{
			public const new Guid IID = .(0x4ce66ad5, 0x9f3c, 0x469d, 0xa9, 0x11, 0xb9, 0x98, 0x87, 0xa7, 0xe6, 0x85);
			
			public function HRESULT(IAzApplicationGroups *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
			public function HRESULT(IAzApplicationGroups *self, int32* plCount) get_Count;
			public function HRESULT(IAzApplicationGroups *self, IUnknown** ppEnumPtr) get__NewEnum;
		}
		[CRepr]
		public struct IAzRole : IDispatch
		{
			public const new Guid IID = .(0x859e0d8d, 0x62d7, 0x41d8, 0xa0, 0x34, 0xc0, 0xcd, 0x5d, 0x43, 0xfd, 0xfa);
			
			public function HRESULT(IAzRole *self, BSTR* pbstrName) get_Name;
			public function HRESULT(IAzRole *self, BSTR bstrName) put_Name;
			public function HRESULT(IAzRole *self, BSTR* pbstrDescription) get_Description;
			public function HRESULT(IAzRole *self, BSTR bstrDescription) put_Description;
			public function HRESULT(IAzRole *self, BSTR* pbstrApplicationData) get_ApplicationData;
			public function HRESULT(IAzRole *self, BSTR bstrApplicationData) put_ApplicationData;
			public function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) AddAppMember;
			public function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) DeleteAppMember;
			public function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) AddTask;
			public function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) DeleteTask;
			public function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) AddOperation;
			public function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) DeleteOperation;
			public function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) AddMember;
			public function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) DeleteMember;
			public function HRESULT(IAzRole *self, BOOL* pfProp) get_Writable;
			public function HRESULT(IAzRole *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
			public function HRESULT(IAzRole *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
			public function HRESULT(IAzRole *self, VARIANT* pvarProp) get_AppMembers;
			public function HRESULT(IAzRole *self, VARIANT* pvarProp) get_Members;
			public function HRESULT(IAzRole *self, VARIANT* pvarProp) get_Operations;
			public function HRESULT(IAzRole *self, VARIANT* pvarProp) get_Tasks;
			public function HRESULT(IAzRole *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) AddPropertyItem;
			public function HRESULT(IAzRole *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) DeletePropertyItem;
			public function HRESULT(IAzRole *self, int32 lFlags, VARIANT varReserved) Submit;
			public function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) AddMemberName;
			public function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) DeleteMemberName;
			public function HRESULT(IAzRole *self, VARIANT* pvarProp) get_MembersName;
		}
		[CRepr]
		public struct IAzRoles : IDispatch
		{
			public const new Guid IID = .(0x95e0f119, 0x13b4, 0x4dae, 0xb6, 0x5f, 0x2f, 0x7d, 0x60, 0xd8, 0x22, 0xe4);
			
			public function HRESULT(IAzRoles *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
			public function HRESULT(IAzRoles *self, int32* plCount) get_Count;
			public function HRESULT(IAzRoles *self, IUnknown** ppEnumPtr) get__NewEnum;
		}
		[CRepr]
		public struct IAzClientContext : IDispatch
		{
			public const new Guid IID = .(0xeff1f00b, 0x488a, 0x466d, 0xaf, 0xd9, 0xa4, 0x01, 0xc5, 0xf9, 0xee, 0xf5);
			
			public function HRESULT(IAzClientContext *self, BSTR bstrObjectName, VARIANT varScopeNames, VARIANT varOperations, VARIANT varParameterNames, VARIANT varParameterValues, VARIANT varInterfaceNames, VARIANT varInterfaceFlags, VARIANT varInterfaces, VARIANT* pvarResults) AccessCheck;
			public function HRESULT(IAzClientContext *self, BSTR* pbstrBusinessRuleString) GetBusinessRuleString;
			public function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserDn;
			public function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserSamCompat;
			public function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserDisplay;
			public function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserGuid;
			public function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserCanonical;
			public function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserUpn;
			public function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserDnsSamCompat;
			public function HRESULT(IAzClientContext *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
			public function HRESULT(IAzClientContext *self, BSTR bstrScopeName, VARIANT* pvarRoleNames) GetRoles;
			public function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_RoleForAccessCheck;
			public function HRESULT(IAzClientContext *self, BSTR bstrProp) put_RoleForAccessCheck;
		}
		[CRepr]
		public struct IAzClientContext2 : IAzClientContext
		{
			public const new Guid IID = .(0x2b0c92b8, 0x208a, 0x488a, 0x8f, 0x81, 0xe4, 0xed, 0xb2, 0x21, 0x11, 0xcd);
			
			public function HRESULT(IAzClientContext2 *self, int32 lOptions, int32 PageSize, VARIANT* pvarCursor, VARIANT* pvarScopeNames) GetAssignedScopesPage;
			public function HRESULT(IAzClientContext2 *self, VARIANT varRoles, BSTR bstrScopeName) AddRoles;
			public function HRESULT(IAzClientContext2 *self, VARIANT varApplicationGroups) AddApplicationGroups;
			public function HRESULT(IAzClientContext2 *self, VARIANT varStringSids) AddStringSids;
			public function HRESULT(IAzClientContext2 *self, BSTR bstrLDAPQueryDN) put_LDAPQueryDN;
			public function HRESULT(IAzClientContext2 *self, BSTR* pbstrLDAPQueryDN) get_LDAPQueryDN;
		}
		[CRepr]
		public struct IAzBizRuleContext : IDispatch
		{
			public const new Guid IID = .(0xe192f17d, 0xd59f, 0x455e, 0xa1, 0x52, 0x94, 0x03, 0x16, 0xcd, 0x77, 0xb2);
			
			public function HRESULT(IAzBizRuleContext *self, BOOL bResult) put_BusinessRuleResult;
			public function HRESULT(IAzBizRuleContext *self, BSTR bstrBusinessRuleString) put_BusinessRuleString;
			public function HRESULT(IAzBizRuleContext *self, BSTR* pbstrBusinessRuleString) get_BusinessRuleString;
			public function HRESULT(IAzBizRuleContext *self, BSTR bstrParameterName, VARIANT* pvarParameterValue) GetParameter;
		}
		[CRepr]
		public struct IAzBizRuleParameters : IDispatch
		{
			public const new Guid IID = .(0xfc17685f, 0xe25d, 0x4dcd, 0xba, 0xe1, 0x27, 0x6e, 0xc9, 0x53, 0x3c, 0xb5);
			
			public function HRESULT(IAzBizRuleParameters *self, BSTR bstrParameterName, VARIANT varParameterValue) AddParameter;
			public function HRESULT(IAzBizRuleParameters *self, VARIANT varParameterNames, VARIANT varParameterValues) AddParameters;
			public function HRESULT(IAzBizRuleParameters *self, BSTR bstrParameterName, VARIANT* pvarParameterValue) GetParameterValue;
			public function HRESULT(IAzBizRuleParameters *self, BSTR varParameterName) Remove;
			public function HRESULT(IAzBizRuleParameters *self) RemoveAll;
			public function HRESULT(IAzBizRuleParameters *self, uint32* plCount) get_Count;
		}
		[CRepr]
		public struct IAzBizRuleInterfaces : IDispatch
		{
			public const new Guid IID = .(0xe94128c7, 0xe9da, 0x44cc, 0xb0, 0xbd, 0x53, 0x03, 0x6f, 0x3a, 0xab, 0x3d);
			
			public function HRESULT(IAzBizRuleInterfaces *self, BSTR bstrInterfaceName, int32 lInterfaceFlag, VARIANT varInterface) AddInterface;
			public function HRESULT(IAzBizRuleInterfaces *self, VARIANT varInterfaceNames, VARIANT varInterfaceFlags, VARIANT varInterfaces) AddInterfaces;
			public function HRESULT(IAzBizRuleInterfaces *self, BSTR bstrInterfaceName, int32* lInterfaceFlag, VARIANT* varInterface) GetInterfaceValue;
			public function HRESULT(IAzBizRuleInterfaces *self, BSTR bstrInterfaceName) Remove;
			public function HRESULT(IAzBizRuleInterfaces *self) RemoveAll;
			public function HRESULT(IAzBizRuleInterfaces *self, uint32* plCount) get_Count;
		}
		[CRepr]
		public struct IAzClientContext3 : IAzClientContext2
		{
			public const new Guid IID = .(0x11894fde, 0x1deb, 0x4b4b, 0x89, 0x07, 0x6d, 0x1c, 0xda, 0x1f, 0x5d, 0x4f);
			
			public function HRESULT(IAzClientContext3 *self, BSTR bstrObjectName, BSTR bstrScopeName, int32 lOperation, uint32* plResult) AccessCheck2;
			public function HRESULT(IAzClientContext3 *self, BSTR bstrScopeName, BSTR bstrRoleName, int16* pbIsInRole) IsInRoleAssignment;
			public function HRESULT(IAzClientContext3 *self, BSTR bstrScopeName, IAzOperations** ppOperationCollection) GetOperations;
			public function HRESULT(IAzClientContext3 *self, BSTR bstrScopeName, IAzTasks** ppTaskCollection) GetTasks;
			public function HRESULT(IAzClientContext3 *self, IAzBizRuleParameters** ppBizRuleParam) get_BizRuleParameters;
			public function HRESULT(IAzClientContext3 *self, IAzBizRuleInterfaces** ppBizRuleInterfaces) get_BizRuleInterfaces;
			public function HRESULT(IAzClientContext3 *self, BSTR bstrScopeName, AZ_PROP_CONSTANTS ulOptions, VARIANT* pGroupArray) GetGroups;
			public function HRESULT(IAzClientContext3 *self, VARIANT* pStringSidArray) get_Sids;
		}
		[CRepr]
		public struct IAzScope2 : IAzScope
		{
			public const new Guid IID = .(0xee9fe8c9, 0xc9f3, 0x40e2, 0xaa, 0x12, 0xd1, 0xd8, 0x59, 0x97, 0x27, 0xfd);
			
			public function HRESULT(IAzScope2 *self, IAzRoleDefinitions** ppRoleDefinitions) get_RoleDefinitions;
			public function HRESULT(IAzScope2 *self, BSTR bstrRoleDefinitionName, IAzRoleDefinition** ppRoleDefinitions) CreateRoleDefinition;
			public function HRESULT(IAzScope2 *self, BSTR bstrRoleDefinitionName, IAzRoleDefinition** ppRoleDefinitions) OpenRoleDefinition;
			public function HRESULT(IAzScope2 *self, BSTR bstrRoleDefinitionName) DeleteRoleDefinition;
			public function HRESULT(IAzScope2 *self, IAzRoleAssignments** ppRoleAssignments) get_RoleAssignments;
			public function HRESULT(IAzScope2 *self, BSTR bstrRoleAssignmentName, IAzRoleAssignment** ppRoleAssignment) CreateRoleAssignment;
			public function HRESULT(IAzScope2 *self, BSTR bstrRoleAssignmentName, IAzRoleAssignment** ppRoleAssignment) OpenRoleAssignment;
			public function HRESULT(IAzScope2 *self, BSTR bstrRoleAssignmentName) DeleteRoleAssignment;
		}
		[CRepr]
		public struct IAzApplication3 : IAzApplication2
		{
			public const new Guid IID = .(0x181c845e, 0x7196, 0x4a7d, 0xac, 0x2e, 0x02, 0x0c, 0x0b, 0xb7, 0xa3, 0x03);
			
			public function HRESULT(IAzApplication3 *self, BSTR bstrScopeName, int16* pbExist) ScopeExists;
			public function HRESULT(IAzApplication3 *self, BSTR bstrScopeName, IAzScope2** ppScope2) OpenScope2;
			public function HRESULT(IAzApplication3 *self, BSTR bstrScopeName, IAzScope2** ppScope2) CreateScope2;
			public function HRESULT(IAzApplication3 *self, BSTR bstrScopeName) DeleteScope2;
			public function HRESULT(IAzApplication3 *self, IAzRoleDefinitions** ppRoleDefinitions) get_RoleDefinitions;
			public function HRESULT(IAzApplication3 *self, BSTR bstrRoleDefinitionName, IAzRoleDefinition** ppRoleDefinitions) CreateRoleDefinition;
			public function HRESULT(IAzApplication3 *self, BSTR bstrRoleDefinitionName, IAzRoleDefinition** ppRoleDefinitions) OpenRoleDefinition;
			public function HRESULT(IAzApplication3 *self, BSTR bstrRoleDefinitionName) DeleteRoleDefinition;
			public function HRESULT(IAzApplication3 *self, IAzRoleAssignments** ppRoleAssignments) get_RoleAssignments;
			public function HRESULT(IAzApplication3 *self, BSTR bstrRoleAssignmentName, IAzRoleAssignment** ppRoleAssignment) CreateRoleAssignment;
			public function HRESULT(IAzApplication3 *self, BSTR bstrRoleAssignmentName, IAzRoleAssignment** ppRoleAssignment) OpenRoleAssignment;
			public function HRESULT(IAzApplication3 *self, BSTR bstrRoleAssignmentName) DeleteRoleAssignment;
			public function HRESULT(IAzApplication3 *self, int16* pbEnabled) get_BizRulesEnabled;
			public function HRESULT(IAzApplication3 *self, int16 bEnabled) put_BizRulesEnabled;
		}
		[CRepr]
		public struct IAzOperation2 : IAzOperation
		{
			public const new Guid IID = .(0x1f5ea01f, 0x44a2, 0x4184, 0x9c, 0x48, 0xa7, 0x5b, 0x4d, 0xcc, 0x8c, 0xcc);
			
			public function HRESULT(IAzOperation2 *self, BSTR bstrScopeName, int16 bRecursive, IAzRoleAssignments** ppRoleAssignments) RoleAssignments;
		}
		[CRepr]
		public struct IAzRoleDefinitions : IDispatch
		{
			public const new Guid IID = .(0x881f25a5, 0xd755, 0x4550, 0x95, 0x7a, 0xd5, 0x03, 0xa3, 0xb3, 0x40, 0x01);
			
			public function HRESULT(IAzRoleDefinitions *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
			public function HRESULT(IAzRoleDefinitions *self, int32* plCount) get_Count;
			public function HRESULT(IAzRoleDefinitions *self, IUnknown** ppEnumPtr) get__NewEnum;
		}
		[CRepr]
		public struct IAzRoleDefinition : IAzTask
		{
			public const new Guid IID = .(0xd97fcea1, 0x2599, 0x44f1, 0x9f, 0xc3, 0x58, 0xe9, 0xfb, 0xe0, 0x94, 0x66);
			
			public function HRESULT(IAzRoleDefinition *self, BSTR bstrScopeName, int16 bRecursive, IAzRoleAssignments** ppRoleAssignments) RoleAssignments;
			public function HRESULT(IAzRoleDefinition *self, BSTR bstrRoleDefinition) AddRoleDefinition;
			public function HRESULT(IAzRoleDefinition *self, BSTR bstrRoleDefinition) DeleteRoleDefinition;
			public function HRESULT(IAzRoleDefinition *self, IAzRoleDefinitions** ppRoleDefinitions) get_RoleDefinitions;
		}
		[CRepr]
		public struct IAzRoleAssignment : IAzRole
		{
			public const new Guid IID = .(0x55647d31, 0x0d5a, 0x4fa3, 0xb4, 0xac, 0x2b, 0x5f, 0x9a, 0xd5, 0xab, 0x76);
			
			public function HRESULT(IAzRoleAssignment *self, BSTR bstrRoleDefinition) AddRoleDefinition;
			public function HRESULT(IAzRoleAssignment *self, BSTR bstrRoleDefinition) DeleteRoleDefinition;
			public function HRESULT(IAzRoleAssignment *self, IAzRoleDefinitions** ppRoleDefinitions) get_RoleDefinitions;
			public function HRESULT(IAzRoleAssignment *self, IAzScope** ppScope) get_Scope;
		}
		[CRepr]
		public struct IAzRoleAssignments : IDispatch
		{
			public const new Guid IID = .(0x9c80b900, 0xfceb, 0x4d73, 0xa0, 0xf4, 0xc8, 0x3b, 0x0b, 0xbf, 0x24, 0x81);
			
			public function HRESULT(IAzRoleAssignments *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
			public function HRESULT(IAzRoleAssignments *self, int32* plCount) get_Count;
			public function HRESULT(IAzRoleAssignments *self, IUnknown** ppEnumPtr) get__NewEnum;
		}
		[CRepr]
		public struct IAzPrincipalLocator : IDispatch
		{
			public const new Guid IID = .(0xe5c3507d, 0xad6a, 0x4992, 0x9c, 0x7f, 0x74, 0xab, 0x48, 0x0b, 0x44, 0xcc);
			
			public function HRESULT(IAzPrincipalLocator *self, IAzNameResolver** ppNameResolver) get_NameResolver;
			public function HRESULT(IAzPrincipalLocator *self, IAzObjectPicker** ppObjectPicker) get_ObjectPicker;
		}
		[CRepr]
		public struct IAzNameResolver : IDispatch
		{
			public const new Guid IID = .(0x504d0f15, 0x73e2, 0x43df, 0xa8, 0x70, 0xa6, 0x4f, 0x40, 0x71, 0x4f, 0x53);
			
			public function HRESULT(IAzNameResolver *self, BSTR bstrSid, int32* pSidType, BSTR* pbstrName) NameFromSid;
			public function HRESULT(IAzNameResolver *self, VARIANT vSids, VARIANT* pvSidTypes, VARIANT* pvNames) NamesFromSids;
		}
		[CRepr]
		public struct IAzObjectPicker : IDispatch
		{
			public const new Guid IID = .(0x63130a48, 0x699a, 0x42d8, 0xbf, 0x01, 0xc6, 0x2a, 0xc3, 0xfb, 0x79, 0xf9);
			
			public function HRESULT(IAzObjectPicker *self, HWND hParentWnd, BSTR bstrTitle, VARIANT* pvSidTypes, VARIANT* pvNames, VARIANT* pvSids) GetPrincipals;
			public function HRESULT(IAzObjectPicker *self, BSTR* pbstrName) get_Name;
		}
		[CRepr]
		public struct IAzApplicationGroup2 : IAzApplicationGroup
		{
			public const new Guid IID = .(0x3f0613fc, 0xb71a, 0x464e, 0xa1, 0x1d, 0x5b, 0x88, 0x1a, 0x56, 0xce, 0xfa);
			
			public function HRESULT(IAzApplicationGroup2 *self, BSTR* pbstrProp) get_BizRule;
			public function HRESULT(IAzApplicationGroup2 *self, BSTR bstrProp) put_BizRule;
			public function HRESULT(IAzApplicationGroup2 *self, BSTR* pbstrProp) get_BizRuleLanguage;
			public function HRESULT(IAzApplicationGroup2 *self, BSTR bstrProp) put_BizRuleLanguage;
			public function HRESULT(IAzApplicationGroup2 *self, BSTR* pbstrProp) get_BizRuleImportedPath;
			public function HRESULT(IAzApplicationGroup2 *self, BSTR bstrProp) put_BizRuleImportedPath;
			public function HRESULT(IAzApplicationGroup2 *self, BSTR bstrScopeName, int16 bRecursive, IAzRoleAssignments** ppRoleAssignments) RoleAssignments;
		}
		[CRepr]
		public struct IAzTask2 : IAzTask
		{
			public const new Guid IID = .(0x03a9a5ee, 0x48c8, 0x4832, 0x90, 0x25, 0xaa, 0xd5, 0x03, 0xc4, 0x65, 0x26);
			
			public function HRESULT(IAzTask2 *self, BSTR bstrScopeName, int16 bRecursive, IAzRoleAssignments** ppRoleAssignments) RoleAssignments;
		}
		
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
