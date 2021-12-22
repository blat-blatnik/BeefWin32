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
		
		public enum AUTHZ_RESOURCE_MANAGER_FLAGS : uint32
		{
			NO_AUDIT = 1,
			INITIALIZE_UNDER_IMPERSONATION = 2,
			NO_CENTRAL_ACCESS_POLICIES = 4,
		}
		public enum AUTHZ_ACCESS_CHECK_FLAGS : uint32
		{
			AUTHZ_ACCESS_CHECK_NO_DEEP_COPY_SD = 1,
		}
		public enum AUTHZ_INITIALIZE_OBJECT_ACCESS_AUDIT_EVENT_FLAGS : uint32
		{
			SUCCESS_AUDIT = 1,
			FAILURE_AUDIT = 2,
			ALLOC_STRINGS = 4,
		}
		public enum TREE_SEC_INFO : uint32
		{
			SET = 1,
			RESET = 2,
			RESET_KEEP_EXPLICIT = 3,
		}
		public enum AUTHZ_GENERATE_RESULTS : uint32
		{
			SUCCESS_AUDIT = 1,
			FAILURE_AUDIT = 2,
		}
		public enum ACTRL_ACCESS_ENTRY_ACCESS_FLAGS : uint32
		{
			CCESS_ALLOWED = 1,
			CCESS_DENIED = 2,
			UDIT_SUCCESS = 4,
			UDIT_FAILURE = 8,
		}
		public enum AUTHZ_SECURITY_ATTRIBUTE_FLAGS : uint32
		{
			NON_INHERITABLE = 1,
			VALUE_CASE_SENSITIVE = 2,
		}
		public enum SE_OBJECT_TYPE : int32
		{
			UNKNOWN_OBJECT_TYPE = 0,
			FILE_OBJECT = 1,
			SERVICE = 2,
			PRINTER = 3,
			REGISTRY_KEY = 4,
			LMSHARE = 5,
			KERNEL_OBJECT = 6,
			WINDOW_OBJECT = 7,
			DS_OBJECT = 8,
			DS_OBJECT_ALL = 9,
			PROVIDER_DEFINED_OBJECT = 10,
			WMIGUID_OBJECT = 11,
			REGISTRY_WOW64_32KEY = 12,
			REGISTRY_WOW64_64KEY = 13,
		}
		public enum TRUSTEE_TYPE : int32
		{
			UNKNOWN = 0,
			USER = 1,
			GROUP = 2,
			DOMAIN = 3,
			ALIAS = 4,
			WELL_KNOWN_GROUP = 5,
			DELETED = 6,
			INVALID = 7,
			COMPUTER = 8,
		}
		public enum TRUSTEE_FORM : int32
		{
			IS_SID = 0,
			IS_NAME = 1,
			BAD_FORM = 2,
			IS_OBJECTS_AND_SID = 3,
			IS_OBJECTS_AND_NAME = 4,
		}
		public enum MULTIPLE_TRUSTEE_OPERATION : int32
		{
			NO_MULTIPLE_TRUSTEE = 0,
			TRUSTEE_IS_IMPERSONATE = 1,
		}
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
		public enum PROG_INVOKE_SETTING : int32
		{
			InvokeNever = 1,
			InvokeEveryObject = 2,
			InvokeOnError = 3,
			CancelOperation = 4,
			RetryOperation = 5,
			InvokePrePostError = 6,
		}
		public enum AUDIT_PARAM_TYPE : int32
		{
			None = 1,
			String = 2,
			Ulong = 3,
			Pointer = 4,
			Sid = 5,
			LogonId = 6,
			ObjectTypeList = 7,
			Luid = 8,
			Guid = 9,
			Time = 10,
			Int64 = 11,
			IpAddress = 12,
			LogonIdWithSid = 13,
		}
		public enum AUTHZ_SECURITY_ATTRIBUTE_OPERATION : int32
		{
			NONE = 0,
			REPLACE_ALL = 1,
			ADD = 2,
			DELETE = 3,
			REPLACE = 4,
		}
		public enum AUTHZ_SID_OPERATION : int32
		{
			NONE = 0,
			REPLACE_ALL = 1,
			ADD = 2,
			DELETE = 3,
			REPLACE = 4,
		}
		public enum AUTHZ_CONTEXT_INFORMATION_CLASS : int32
		{
			UserSid = 1,
			GroupsSids = 2,
			RestrictedSids = 3,
			Privileges = 4,
			ExpirationTime = 5,
			ServerContext = 6,
			Identifier = 7,
			Source = 8,
			All = 9,
			AuthenticationId = 10,
			SecurityAttributes = 11,
			DeviceSids = 12,
			UserClaims = 13,
			DeviceClaims = 14,
			AppContainerSid = 15,
			CapabilitySids = 16,
		}
		public enum AUTHZ_AUDIT_EVENT_INFORMATION_CLASS : int32
		{
			Flags = 1,
			OperationType = 2,
			ObjectType = 3,
			ObjectName = 4,
			AdditionalInfo = 5,
		}
		[AllowDuplicates]
		public enum AZ_PROP_CONSTANTS : int32
		{
			PROP_NAME = 1,
			PROP_DESCRIPTION = 2,
			PROP_WRITABLE = 3,
			PROP_APPLICATION_DATA = 4,
			PROP_CHILD_CREATE = 5,
			MAX_APPLICATION_NAME_LENGTH = 512,
			MAX_OPERATION_NAME_LENGTH = 64,
			MAX_TASK_NAME_LENGTH = 64,
			MAX_SCOPE_NAME_LENGTH = 65536,
			MAX_GROUP_NAME_LENGTH = 64,
			MAX_ROLE_NAME_LENGTH = 64,
			MAX_NAME_LENGTH = 65536,
			MAX_DESCRIPTION_LENGTH = 1024,
			MAX_APPLICATION_DATA_LENGTH = 4096,
			SUBMIT_FLAG_ABORT = 1,
			SUBMIT_FLAG_FLUSH = 2,
			MAX_POLICY_URL_LENGTH = 65536,
			AZSTORE_FLAG_CREATE = 1,
			AZSTORE_FLAG_MANAGE_STORE_ONLY = 2,
			AZSTORE_FLAG_BATCH_UPDATE = 4,
			AZSTORE_FLAG_AUDIT_IS_CRITICAL = 8,
			AZSTORE_FORCE_APPLICATION_CLOSE = 16,
			AZSTORE_NT6_FUNCTION_LEVEL = 32,
			AZSTORE_FLAG_MANAGE_ONLY_PASSIVE_SUBMIT = 32768,
			PROP_AZSTORE_DOMAIN_TIMEOUT = 100,
			AZSTORE_DEFAULT_DOMAIN_TIMEOUT = 15000,
			PROP_AZSTORE_SCRIPT_ENGINE_TIMEOUT = 101,
			AZSTORE_MIN_DOMAIN_TIMEOUT = 500,
			AZSTORE_MIN_SCRIPT_ENGINE_TIMEOUT = 5000,
			AZSTORE_DEFAULT_SCRIPT_ENGINE_TIMEOUT = 45000,
			PROP_AZSTORE_MAX_SCRIPT_ENGINES = 102,
			AZSTORE_DEFAULT_MAX_SCRIPT_ENGINES = 120,
			PROP_AZSTORE_MAJOR_VERSION = 103,
			PROP_AZSTORE_MINOR_VERSION = 104,
			PROP_AZSTORE_TARGET_MACHINE = 105,
			PROP_AZTORE_IS_ADAM_INSTANCE = 106,
			PROP_OPERATION_ID = 200,
			PROP_TASK_OPERATIONS = 300,
			PROP_TASK_BIZRULE = 301,
			PROP_TASK_BIZRULE_LANGUAGE = 302,
			PROP_TASK_TASKS = 303,
			PROP_TASK_BIZRULE_IMPORTED_PATH = 304,
			PROP_TASK_IS_ROLE_DEFINITION = 305,
			MAX_TASK_BIZRULE_LENGTH = 65536,
			MAX_TASK_BIZRULE_LANGUAGE_LENGTH = 64,
			MAX_TASK_BIZRULE_IMPORTED_PATH_LENGTH = 512,
			MAX_BIZRULE_STRING = 65536,
			PROP_GROUP_TYPE = 400,
			GROUPTYPE_LDAP_QUERY = 1,
			GROUPTYPE_BASIC = 2,
			GROUPTYPE_BIZRULE = 3,
			PROP_GROUP_APP_MEMBERS = 401,
			PROP_GROUP_APP_NON_MEMBERS = 402,
			PROP_GROUP_LDAP_QUERY = 403,
			MAX_GROUP_LDAP_QUERY_LENGTH = 4096,
			PROP_GROUP_MEMBERS = 404,
			PROP_GROUP_NON_MEMBERS = 405,
			PROP_GROUP_MEMBERS_NAME = 406,
			PROP_GROUP_NON_MEMBERS_NAME = 407,
			PROP_GROUP_BIZRULE = 408,
			PROP_GROUP_BIZRULE_LANGUAGE = 409,
			PROP_GROUP_BIZRULE_IMPORTED_PATH = 410,
			MAX_GROUP_BIZRULE_LENGTH = 65536,
			MAX_GROUP_BIZRULE_LANGUAGE_LENGTH = 64,
			MAX_GROUP_BIZRULE_IMPORTED_PATH_LENGTH = 512,
			PROP_ROLE_APP_MEMBERS = 500,
			PROP_ROLE_MEMBERS = 501,
			PROP_ROLE_OPERATIONS = 502,
			PROP_ROLE_TASKS = 504,
			PROP_ROLE_MEMBERS_NAME = 505,
			PROP_SCOPE_BIZRULES_WRITABLE = 600,
			PROP_SCOPE_CAN_BE_DELEGATED = 601,
			PROP_CLIENT_CONTEXT_USER_DN = 700,
			PROP_CLIENT_CONTEXT_USER_SAM_COMPAT = 701,
			PROP_CLIENT_CONTEXT_USER_DISPLAY = 702,
			PROP_CLIENT_CONTEXT_USER_GUID = 703,
			PROP_CLIENT_CONTEXT_USER_CANONICAL = 704,
			PROP_CLIENT_CONTEXT_USER_UPN = 705,
			PROP_CLIENT_CONTEXT_USER_DNS_SAM_COMPAT = 707,
			PROP_CLIENT_CONTEXT_ROLE_FOR_ACCESS_CHECK = 708,
			PROP_CLIENT_CONTEXT_LDAP_QUERY_DN = 709,
			PROP_APPLICATION_AUTHZ_INTERFACE_CLSID = 800,
			PROP_APPLICATION_VERSION = 801,
			MAX_APPLICATION_VERSION_LENGTH = 512,
			PROP_APPLICATION_NAME = 802,
			PROP_APPLICATION_BIZRULE_ENABLED = 803,
			PROP_APPLY_STORE_SACL = 900,
			PROP_GENERATE_AUDITS = 901,
			PROP_POLICY_ADMINS = 902,
			PROP_POLICY_READERS = 903,
			PROP_DELEGATED_POLICY_USERS = 904,
			PROP_POLICY_ADMINS_NAME = 905,
			PROP_POLICY_READERS_NAME = 906,
			PROP_DELEGATED_POLICY_USERS_NAME = 907,
			CLIENT_CONTEXT_SKIP_GROUP = 1,
			CLIENT_CONTEXT_SKIP_LDAP_QUERY = 1,
			CLIENT_CONTEXT_GET_GROUP_RECURSIVE = 2,
			CLIENT_CONTEXT_GET_GROUPS_STORE_LEVEL_ONLY = 2,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* pbstrDescription) mut
			{
				return VT.get_Description(&this, pbstrDescription);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_ApplicationData(BSTR* pbstrApplicationData) mut
			{
				return VT.get_ApplicationData(&this, pbstrApplicationData);
			}
			public HRESULT put_ApplicationData(BSTR bstrApplicationData) mut
			{
				return VT.put_ApplicationData(&this, bstrApplicationData);
			}
			public HRESULT get_DomainTimeout(int32* plProp) mut
			{
				return VT.get_DomainTimeout(&this, plProp);
			}
			public HRESULT put_DomainTimeout(int32 lProp) mut
			{
				return VT.put_DomainTimeout(&this, lProp);
			}
			public HRESULT get_ScriptEngineTimeout(int32* plProp) mut
			{
				return VT.get_ScriptEngineTimeout(&this, plProp);
			}
			public HRESULT put_ScriptEngineTimeout(int32 lProp) mut
			{
				return VT.put_ScriptEngineTimeout(&this, lProp);
			}
			public HRESULT get_MaxScriptEngines(int32* plProp) mut
			{
				return VT.get_MaxScriptEngines(&this, plProp);
			}
			public HRESULT put_MaxScriptEngines(int32 lProp) mut
			{
				return VT.put_MaxScriptEngines(&this, lProp);
			}
			public HRESULT get_GenerateAudits(BOOL* pbProp) mut
			{
				return VT.get_GenerateAudits(&this, pbProp);
			}
			public HRESULT put_GenerateAudits(BOOL bProp) mut
			{
				return VT.put_GenerateAudits(&this, bProp);
			}
			public HRESULT get_Writable(BOOL* pfProp) mut
			{
				return VT.get_Writable(&this, pfProp);
			}
			public HRESULT GetProperty(int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) mut
			{
				return VT.GetProperty(&this, lPropId, varReserved, pvarProp);
			}
			public HRESULT SetProperty(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.SetProperty(&this, lPropId, varProp, varReserved);
			}
			public HRESULT AddPropertyItem(AZ_PROP_CONSTANTS lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.AddPropertyItem(&this, lPropId, varProp, varReserved);
			}
			public HRESULT DeletePropertyItem(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.DeletePropertyItem(&this, lPropId, varProp, varReserved);
			}
			public HRESULT get_PolicyAdministrators(VARIANT* pvarAdmins) mut
			{
				return VT.get_PolicyAdministrators(&this, pvarAdmins);
			}
			public HRESULT get_PolicyReaders(VARIANT* pvarReaders) mut
			{
				return VT.get_PolicyReaders(&this, pvarReaders);
			}
			public HRESULT AddPolicyAdministrator(BSTR bstrAdmin, VARIANT varReserved) mut
			{
				return VT.AddPolicyAdministrator(&this, bstrAdmin, varReserved);
			}
			public HRESULT DeletePolicyAdministrator(BSTR bstrAdmin, VARIANT varReserved) mut
			{
				return VT.DeletePolicyAdministrator(&this, bstrAdmin, varReserved);
			}
			public HRESULT AddPolicyReader(BSTR bstrReader, VARIANT varReserved) mut
			{
				return VT.AddPolicyReader(&this, bstrReader, varReserved);
			}
			public HRESULT DeletePolicyReader(BSTR bstrReader, VARIANT varReserved) mut
			{
				return VT.DeletePolicyReader(&this, bstrReader, varReserved);
			}
			public HRESULT Initialize(AZ_PROP_CONSTANTS lFlags, BSTR bstrPolicyURL, VARIANT varReserved) mut
			{
				return VT.Initialize(&this, lFlags, bstrPolicyURL, varReserved);
			}
			public HRESULT UpdateCache(VARIANT varReserved) mut
			{
				return VT.UpdateCache(&this, varReserved);
			}
			public HRESULT Delete(VARIANT varReserved) mut
			{
				return VT.Delete(&this, varReserved);
			}
			public HRESULT get_Applications(IAzApplications** ppAppCollection) mut
			{
				return VT.get_Applications(&this, ppAppCollection);
			}
			public HRESULT OpenApplication(BSTR bstrApplicationName, VARIANT varReserved, IAzApplication** ppApplication) mut
			{
				return VT.OpenApplication(&this, bstrApplicationName, varReserved, ppApplication);
			}
			public HRESULT CreateApplication(BSTR bstrApplicationName, VARIANT varReserved, IAzApplication** ppApplication) mut
			{
				return VT.CreateApplication(&this, bstrApplicationName, varReserved, ppApplication);
			}
			public HRESULT DeleteApplication(BSTR bstrApplicationName, VARIANT varReserved) mut
			{
				return VT.DeleteApplication(&this, bstrApplicationName, varReserved);
			}
			public HRESULT get_ApplicationGroups(IAzApplicationGroups** ppGroupCollection) mut
			{
				return VT.get_ApplicationGroups(&this, ppGroupCollection);
			}
			public HRESULT CreateApplicationGroup(BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) mut
			{
				return VT.CreateApplicationGroup(&this, bstrGroupName, varReserved, ppGroup);
			}
			public HRESULT OpenApplicationGroup(BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) mut
			{
				return VT.OpenApplicationGroup(&this, bstrGroupName, varReserved, ppGroup);
			}
			public HRESULT DeleteApplicationGroup(BSTR bstrGroupName, VARIANT varReserved) mut
			{
				return VT.DeleteApplicationGroup(&this, bstrGroupName, varReserved);
			}
			public HRESULT Submit(int32 lFlags, VARIANT varReserved) mut
			{
				return VT.Submit(&this, lFlags, varReserved);
			}
			public HRESULT get_DelegatedPolicyUsers(VARIANT* pvarDelegatedPolicyUsers) mut
			{
				return VT.get_DelegatedPolicyUsers(&this, pvarDelegatedPolicyUsers);
			}
			public HRESULT AddDelegatedPolicyUser(BSTR bstrDelegatedPolicyUser, VARIANT varReserved) mut
			{
				return VT.AddDelegatedPolicyUser(&this, bstrDelegatedPolicyUser, varReserved);
			}
			public HRESULT DeleteDelegatedPolicyUser(BSTR bstrDelegatedPolicyUser, VARIANT varReserved) mut
			{
				return VT.DeleteDelegatedPolicyUser(&this, bstrDelegatedPolicyUser, varReserved);
			}
			public HRESULT get_TargetMachine(BSTR* pbstrTargetMachine) mut
			{
				return VT.get_TargetMachine(&this, pbstrTargetMachine);
			}
			public HRESULT get_ApplyStoreSacl(BOOL* pbApplyStoreSacl) mut
			{
				return VT.get_ApplyStoreSacl(&this, pbApplyStoreSacl);
			}
			public HRESULT put_ApplyStoreSacl(BOOL bApplyStoreSacl) mut
			{
				return VT.put_ApplyStoreSacl(&this, bApplyStoreSacl);
			}
			public HRESULT get_PolicyAdministratorsName(VARIANT* pvarAdmins) mut
			{
				return VT.get_PolicyAdministratorsName(&this, pvarAdmins);
			}
			public HRESULT get_PolicyReadersName(VARIANT* pvarReaders) mut
			{
				return VT.get_PolicyReadersName(&this, pvarReaders);
			}
			public HRESULT AddPolicyAdministratorName(BSTR bstrAdmin, VARIANT varReserved) mut
			{
				return VT.AddPolicyAdministratorName(&this, bstrAdmin, varReserved);
			}
			public HRESULT DeletePolicyAdministratorName(BSTR bstrAdmin, VARIANT varReserved) mut
			{
				return VT.DeletePolicyAdministratorName(&this, bstrAdmin, varReserved);
			}
			public HRESULT AddPolicyReaderName(BSTR bstrReader, VARIANT varReserved) mut
			{
				return VT.AddPolicyReaderName(&this, bstrReader, varReserved);
			}
			public HRESULT DeletePolicyReaderName(BSTR bstrReader, VARIANT varReserved) mut
			{
				return VT.DeletePolicyReaderName(&this, bstrReader, varReserved);
			}
			public HRESULT get_DelegatedPolicyUsersName(VARIANT* pvarDelegatedPolicyUsers) mut
			{
				return VT.get_DelegatedPolicyUsersName(&this, pvarDelegatedPolicyUsers);
			}
			public HRESULT AddDelegatedPolicyUserName(BSTR bstrDelegatedPolicyUser, VARIANT varReserved) mut
			{
				return VT.AddDelegatedPolicyUserName(&this, bstrDelegatedPolicyUser, varReserved);
			}
			public HRESULT DeleteDelegatedPolicyUserName(BSTR bstrDelegatedPolicyUser, VARIANT varReserved) mut
			{
				return VT.DeleteDelegatedPolicyUserName(&this, bstrDelegatedPolicyUser, varReserved);
			}
			public HRESULT CloseApplication(BSTR bstrApplicationName, int32 lFlag) mut
			{
				return VT.CloseApplication(&this, bstrApplicationName, lFlag);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzAuthorizationStore *self, BSTR* pbstrDescription) get_Description;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR* pbstrApplicationData) get_ApplicationData;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrApplicationData) put_ApplicationData;
				public new function HRESULT(IAzAuthorizationStore *self, int32* plProp) get_DomainTimeout;
				public new function HRESULT(IAzAuthorizationStore *self, int32 lProp) put_DomainTimeout;
				public new function HRESULT(IAzAuthorizationStore *self, int32* plProp) get_ScriptEngineTimeout;
				public new function HRESULT(IAzAuthorizationStore *self, int32 lProp) put_ScriptEngineTimeout;
				public new function HRESULT(IAzAuthorizationStore *self, int32* plProp) get_MaxScriptEngines;
				public new function HRESULT(IAzAuthorizationStore *self, int32 lProp) put_MaxScriptEngines;
				public new function HRESULT(IAzAuthorizationStore *self, BOOL* pbProp) get_GenerateAudits;
				public new function HRESULT(IAzAuthorizationStore *self, BOOL bProp) put_GenerateAudits;
				public new function HRESULT(IAzAuthorizationStore *self, BOOL* pfProp) get_Writable;
				public new function HRESULT(IAzAuthorizationStore *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
				public new function HRESULT(IAzAuthorizationStore *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
				public new function HRESULT(IAzAuthorizationStore *self, AZ_PROP_CONSTANTS lPropId, VARIANT varProp, VARIANT varReserved) AddPropertyItem;
				public new function HRESULT(IAzAuthorizationStore *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) DeletePropertyItem;
				public new function HRESULT(IAzAuthorizationStore *self, VARIANT* pvarAdmins) get_PolicyAdministrators;
				public new function HRESULT(IAzAuthorizationStore *self, VARIANT* pvarReaders) get_PolicyReaders;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrAdmin, VARIANT varReserved) AddPolicyAdministrator;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrAdmin, VARIANT varReserved) DeletePolicyAdministrator;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrReader, VARIANT varReserved) AddPolicyReader;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrReader, VARIANT varReserved) DeletePolicyReader;
				public new function HRESULT(IAzAuthorizationStore *self, AZ_PROP_CONSTANTS lFlags, BSTR bstrPolicyURL, VARIANT varReserved) Initialize;
				public new function HRESULT(IAzAuthorizationStore *self, VARIANT varReserved) UpdateCache;
				public new function HRESULT(IAzAuthorizationStore *self, VARIANT varReserved) Delete;
				public new function HRESULT(IAzAuthorizationStore *self, IAzApplications** ppAppCollection) get_Applications;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrApplicationName, VARIANT varReserved, IAzApplication** ppApplication) OpenApplication;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrApplicationName, VARIANT varReserved, IAzApplication** ppApplication) CreateApplication;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrApplicationName, VARIANT varReserved) DeleteApplication;
				public new function HRESULT(IAzAuthorizationStore *self, IAzApplicationGroups** ppGroupCollection) get_ApplicationGroups;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) CreateApplicationGroup;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) OpenApplicationGroup;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrGroupName, VARIANT varReserved) DeleteApplicationGroup;
				public new function HRESULT(IAzAuthorizationStore *self, int32 lFlags, VARIANT varReserved) Submit;
				public new function HRESULT(IAzAuthorizationStore *self, VARIANT* pvarDelegatedPolicyUsers) get_DelegatedPolicyUsers;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) AddDelegatedPolicyUser;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) DeleteDelegatedPolicyUser;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR* pbstrTargetMachine) get_TargetMachine;
				public new function HRESULT(IAzAuthorizationStore *self, BOOL* pbApplyStoreSacl) get_ApplyStoreSacl;
				public new function HRESULT(IAzAuthorizationStore *self, BOOL bApplyStoreSacl) put_ApplyStoreSacl;
				public new function HRESULT(IAzAuthorizationStore *self, VARIANT* pvarAdmins) get_PolicyAdministratorsName;
				public new function HRESULT(IAzAuthorizationStore *self, VARIANT* pvarReaders) get_PolicyReadersName;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrAdmin, VARIANT varReserved) AddPolicyAdministratorName;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrAdmin, VARIANT varReserved) DeletePolicyAdministratorName;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrReader, VARIANT varReserved) AddPolicyReaderName;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrReader, VARIANT varReserved) DeletePolicyReaderName;
				public new function HRESULT(IAzAuthorizationStore *self, VARIANT* pvarDelegatedPolicyUsers) get_DelegatedPolicyUsersName;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) AddDelegatedPolicyUserName;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) DeleteDelegatedPolicyUserName;
				public new function HRESULT(IAzAuthorizationStore *self, BSTR bstrApplicationName, int32 lFlag) CloseApplication;
			}
		}
		[CRepr]
		public struct IAzAuthorizationStore2 : IAzAuthorizationStore
		{
			public const new Guid IID = .(0xb11e5584, 0xd577, 0x4273, 0xb6, 0xc5, 0x09, 0x73, 0xe0, 0xf8, 0xe8, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenApplication2(BSTR bstrApplicationName, VARIANT varReserved, IAzApplication2** ppApplication) mut
			{
				return VT.OpenApplication2(&this, bstrApplicationName, varReserved, ppApplication);
			}
			public HRESULT CreateApplication2(BSTR bstrApplicationName, VARIANT varReserved, IAzApplication2** ppApplication) mut
			{
				return VT.CreateApplication2(&this, bstrApplicationName, varReserved, ppApplication);
			}
			[CRepr]
			public struct VTable : IAzAuthorizationStore.VTable
			{
				public new function HRESULT(IAzAuthorizationStore2 *self, BSTR bstrApplicationName, VARIANT varReserved, IAzApplication2** ppApplication) OpenApplication2;
				public new function HRESULT(IAzAuthorizationStore2 *self, BSTR bstrApplicationName, VARIANT varReserved, IAzApplication2** ppApplication) CreateApplication2;
			}
		}
		[CRepr]
		public struct IAzAuthorizationStore3 : IAzAuthorizationStore2
		{
			public const new Guid IID = .(0xabc08425, 0x0c86, 0x4fa0, 0x9b, 0xe3, 0x71, 0x89, 0x95, 0x6c, 0x92, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsUpdateNeeded(int16* pbIsUpdateNeeded) mut
			{
				return VT.IsUpdateNeeded(&this, pbIsUpdateNeeded);
			}
			public HRESULT BizruleGroupSupported(int16* pbSupported) mut
			{
				return VT.BizruleGroupSupported(&this, pbSupported);
			}
			public HRESULT UpgradeStoresFunctionalLevel(int32 lFunctionalLevel) mut
			{
				return VT.UpgradeStoresFunctionalLevel(&this, lFunctionalLevel);
			}
			public HRESULT IsFunctionalLevelUpgradeSupported(int32 lFunctionalLevel, int16* pbSupported) mut
			{
				return VT.IsFunctionalLevelUpgradeSupported(&this, lFunctionalLevel, pbSupported);
			}
			public HRESULT GetSchemaVersion(int32* plMajorVersion, int32* plMinorVersion) mut
			{
				return VT.GetSchemaVersion(&this, plMajorVersion, plMinorVersion);
			}
			[CRepr]
			public struct VTable : IAzAuthorizationStore2.VTable
			{
				public new function HRESULT(IAzAuthorizationStore3 *self, int16* pbIsUpdateNeeded) IsUpdateNeeded;
				public new function HRESULT(IAzAuthorizationStore3 *self, int16* pbSupported) BizruleGroupSupported;
				public new function HRESULT(IAzAuthorizationStore3 *self, int32 lFunctionalLevel) UpgradeStoresFunctionalLevel;
				public new function HRESULT(IAzAuthorizationStore3 *self, int32 lFunctionalLevel, int16* pbSupported) IsFunctionalLevelUpgradeSupported;
				public new function HRESULT(IAzAuthorizationStore3 *self, int32* plMajorVersion, int32* plMinorVersion) GetSchemaVersion;
			}
		}
		[CRepr]
		public struct IAzApplication : IDispatch
		{
			public const new Guid IID = .(0x987bc7c7, 0xb813, 0x4d27, 0xbe, 0xde, 0x6b, 0xa5, 0xae, 0x86, 0x7e, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pbstrName) mut
			{
				return VT.get_Name(&this, pbstrName);
			}
			public HRESULT put_Name(BSTR bstrName) mut
			{
				return VT.put_Name(&this, bstrName);
			}
			public HRESULT get_Description(BSTR* pbstrDescription) mut
			{
				return VT.get_Description(&this, pbstrDescription);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_ApplicationData(BSTR* pbstrApplicationData) mut
			{
				return VT.get_ApplicationData(&this, pbstrApplicationData);
			}
			public HRESULT put_ApplicationData(BSTR bstrApplicationData) mut
			{
				return VT.put_ApplicationData(&this, bstrApplicationData);
			}
			public HRESULT get_AuthzInterfaceClsid(BSTR* pbstrProp) mut
			{
				return VT.get_AuthzInterfaceClsid(&this, pbstrProp);
			}
			public HRESULT put_AuthzInterfaceClsid(BSTR bstrProp) mut
			{
				return VT.put_AuthzInterfaceClsid(&this, bstrProp);
			}
			public HRESULT get_Version(BSTR* pbstrProp) mut
			{
				return VT.get_Version(&this, pbstrProp);
			}
			public HRESULT put_Version(BSTR bstrProp) mut
			{
				return VT.put_Version(&this, bstrProp);
			}
			public HRESULT get_GenerateAudits(BOOL* pbProp) mut
			{
				return VT.get_GenerateAudits(&this, pbProp);
			}
			public HRESULT put_GenerateAudits(BOOL bProp) mut
			{
				return VT.put_GenerateAudits(&this, bProp);
			}
			public HRESULT get_ApplyStoreSacl(BOOL* pbProp) mut
			{
				return VT.get_ApplyStoreSacl(&this, pbProp);
			}
			public HRESULT put_ApplyStoreSacl(BOOL bProp) mut
			{
				return VT.put_ApplyStoreSacl(&this, bProp);
			}
			public HRESULT get_Writable(BOOL* pfProp) mut
			{
				return VT.get_Writable(&this, pfProp);
			}
			public HRESULT GetProperty(int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) mut
			{
				return VT.GetProperty(&this, lPropId, varReserved, pvarProp);
			}
			public HRESULT SetProperty(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.SetProperty(&this, lPropId, varProp, varReserved);
			}
			public HRESULT get_PolicyAdministrators(VARIANT* pvarAdmins) mut
			{
				return VT.get_PolicyAdministrators(&this, pvarAdmins);
			}
			public HRESULT get_PolicyReaders(VARIANT* pvarReaders) mut
			{
				return VT.get_PolicyReaders(&this, pvarReaders);
			}
			public HRESULT AddPolicyAdministrator(BSTR bstrAdmin, VARIANT varReserved) mut
			{
				return VT.AddPolicyAdministrator(&this, bstrAdmin, varReserved);
			}
			public HRESULT DeletePolicyAdministrator(BSTR bstrAdmin, VARIANT varReserved) mut
			{
				return VT.DeletePolicyAdministrator(&this, bstrAdmin, varReserved);
			}
			public HRESULT AddPolicyReader(BSTR bstrReader, VARIANT varReserved) mut
			{
				return VT.AddPolicyReader(&this, bstrReader, varReserved);
			}
			public HRESULT DeletePolicyReader(BSTR bstrReader, VARIANT varReserved) mut
			{
				return VT.DeletePolicyReader(&this, bstrReader, varReserved);
			}
			public HRESULT get_Scopes(IAzScopes** ppScopeCollection) mut
			{
				return VT.get_Scopes(&this, ppScopeCollection);
			}
			public HRESULT OpenScope(BSTR bstrScopeName, VARIANT varReserved, IAzScope** ppScope) mut
			{
				return VT.OpenScope(&this, bstrScopeName, varReserved, ppScope);
			}
			public HRESULT CreateScope(BSTR bstrScopeName, VARIANT varReserved, IAzScope** ppScope) mut
			{
				return VT.CreateScope(&this, bstrScopeName, varReserved, ppScope);
			}
			public HRESULT DeleteScope(BSTR bstrScopeName, VARIANT varReserved) mut
			{
				return VT.DeleteScope(&this, bstrScopeName, varReserved);
			}
			public HRESULT get_Operations(IAzOperations** ppOperationCollection) mut
			{
				return VT.get_Operations(&this, ppOperationCollection);
			}
			public HRESULT OpenOperation(BSTR bstrOperationName, VARIANT varReserved, IAzOperation** ppOperation) mut
			{
				return VT.OpenOperation(&this, bstrOperationName, varReserved, ppOperation);
			}
			public HRESULT CreateOperation(BSTR bstrOperationName, VARIANT varReserved, IAzOperation** ppOperation) mut
			{
				return VT.CreateOperation(&this, bstrOperationName, varReserved, ppOperation);
			}
			public HRESULT DeleteOperation(BSTR bstrOperationName, VARIANT varReserved) mut
			{
				return VT.DeleteOperation(&this, bstrOperationName, varReserved);
			}
			public HRESULT get_Tasks(IAzTasks** ppTaskCollection) mut
			{
				return VT.get_Tasks(&this, ppTaskCollection);
			}
			public HRESULT OpenTask(BSTR bstrTaskName, VARIANT varReserved, IAzTask** ppTask) mut
			{
				return VT.OpenTask(&this, bstrTaskName, varReserved, ppTask);
			}
			public HRESULT CreateTask(BSTR bstrTaskName, VARIANT varReserved, IAzTask** ppTask) mut
			{
				return VT.CreateTask(&this, bstrTaskName, varReserved, ppTask);
			}
			public HRESULT DeleteTask(BSTR bstrTaskName, VARIANT varReserved) mut
			{
				return VT.DeleteTask(&this, bstrTaskName, varReserved);
			}
			public HRESULT get_ApplicationGroups(IAzApplicationGroups** ppGroupCollection) mut
			{
				return VT.get_ApplicationGroups(&this, ppGroupCollection);
			}
			public HRESULT OpenApplicationGroup(BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) mut
			{
				return VT.OpenApplicationGroup(&this, bstrGroupName, varReserved, ppGroup);
			}
			public HRESULT CreateApplicationGroup(BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) mut
			{
				return VT.CreateApplicationGroup(&this, bstrGroupName, varReserved, ppGroup);
			}
			public HRESULT DeleteApplicationGroup(BSTR bstrGroupName, VARIANT varReserved) mut
			{
				return VT.DeleteApplicationGroup(&this, bstrGroupName, varReserved);
			}
			public HRESULT get_Roles(IAzRoles** ppRoleCollection) mut
			{
				return VT.get_Roles(&this, ppRoleCollection);
			}
			public HRESULT OpenRole(BSTR bstrRoleName, VARIANT varReserved, IAzRole** ppRole) mut
			{
				return VT.OpenRole(&this, bstrRoleName, varReserved, ppRole);
			}
			public HRESULT CreateRole(BSTR bstrRoleName, VARIANT varReserved, IAzRole** ppRole) mut
			{
				return VT.CreateRole(&this, bstrRoleName, varReserved, ppRole);
			}
			public HRESULT DeleteRole(BSTR bstrRoleName, VARIANT varReserved) mut
			{
				return VT.DeleteRole(&this, bstrRoleName, varReserved);
			}
			public HRESULT InitializeClientContextFromToken(uint64 ullTokenHandle, VARIANT varReserved, IAzClientContext** ppClientContext) mut
			{
				return VT.InitializeClientContextFromToken(&this, ullTokenHandle, varReserved, ppClientContext);
			}
			public HRESULT AddPropertyItem(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.AddPropertyItem(&this, lPropId, varProp, varReserved);
			}
			public HRESULT DeletePropertyItem(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.DeletePropertyItem(&this, lPropId, varProp, varReserved);
			}
			public HRESULT Submit(int32 lFlags, VARIANT varReserved) mut
			{
				return VT.Submit(&this, lFlags, varReserved);
			}
			public HRESULT InitializeClientContextFromName(BSTR ClientName, BSTR DomainName, VARIANT varReserved, IAzClientContext** ppClientContext) mut
			{
				return VT.InitializeClientContextFromName(&this, ClientName, DomainName, varReserved, ppClientContext);
			}
			public HRESULT get_DelegatedPolicyUsers(VARIANT* pvarDelegatedPolicyUsers) mut
			{
				return VT.get_DelegatedPolicyUsers(&this, pvarDelegatedPolicyUsers);
			}
			public HRESULT AddDelegatedPolicyUser(BSTR bstrDelegatedPolicyUser, VARIANT varReserved) mut
			{
				return VT.AddDelegatedPolicyUser(&this, bstrDelegatedPolicyUser, varReserved);
			}
			public HRESULT DeleteDelegatedPolicyUser(BSTR bstrDelegatedPolicyUser, VARIANT varReserved) mut
			{
				return VT.DeleteDelegatedPolicyUser(&this, bstrDelegatedPolicyUser, varReserved);
			}
			public HRESULT InitializeClientContextFromStringSid(BSTR SidString, int32 lOptions, VARIANT varReserved, IAzClientContext** ppClientContext) mut
			{
				return VT.InitializeClientContextFromStringSid(&this, SidString, lOptions, varReserved, ppClientContext);
			}
			public HRESULT get_PolicyAdministratorsName(VARIANT* pvarAdmins) mut
			{
				return VT.get_PolicyAdministratorsName(&this, pvarAdmins);
			}
			public HRESULT get_PolicyReadersName(VARIANT* pvarReaders) mut
			{
				return VT.get_PolicyReadersName(&this, pvarReaders);
			}
			public HRESULT AddPolicyAdministratorName(BSTR bstrAdmin, VARIANT varReserved) mut
			{
				return VT.AddPolicyAdministratorName(&this, bstrAdmin, varReserved);
			}
			public HRESULT DeletePolicyAdministratorName(BSTR bstrAdmin, VARIANT varReserved) mut
			{
				return VT.DeletePolicyAdministratorName(&this, bstrAdmin, varReserved);
			}
			public HRESULT AddPolicyReaderName(BSTR bstrReader, VARIANT varReserved) mut
			{
				return VT.AddPolicyReaderName(&this, bstrReader, varReserved);
			}
			public HRESULT DeletePolicyReaderName(BSTR bstrReader, VARIANT varReserved) mut
			{
				return VT.DeletePolicyReaderName(&this, bstrReader, varReserved);
			}
			public HRESULT get_DelegatedPolicyUsersName(VARIANT* pvarDelegatedPolicyUsers) mut
			{
				return VT.get_DelegatedPolicyUsersName(&this, pvarDelegatedPolicyUsers);
			}
			public HRESULT AddDelegatedPolicyUserName(BSTR bstrDelegatedPolicyUser, VARIANT varReserved) mut
			{
				return VT.AddDelegatedPolicyUserName(&this, bstrDelegatedPolicyUser, varReserved);
			}
			public HRESULT DeleteDelegatedPolicyUserName(BSTR bstrDelegatedPolicyUser, VARIANT varReserved) mut
			{
				return VT.DeleteDelegatedPolicyUserName(&this, bstrDelegatedPolicyUser, varReserved);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzApplication *self, BSTR* pbstrName) get_Name;
				public new function HRESULT(IAzApplication *self, BSTR bstrName) put_Name;
				public new function HRESULT(IAzApplication *self, BSTR* pbstrDescription) get_Description;
				public new function HRESULT(IAzApplication *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IAzApplication *self, BSTR* pbstrApplicationData) get_ApplicationData;
				public new function HRESULT(IAzApplication *self, BSTR bstrApplicationData) put_ApplicationData;
				public new function HRESULT(IAzApplication *self, BSTR* pbstrProp) get_AuthzInterfaceClsid;
				public new function HRESULT(IAzApplication *self, BSTR bstrProp) put_AuthzInterfaceClsid;
				public new function HRESULT(IAzApplication *self, BSTR* pbstrProp) get_Version;
				public new function HRESULT(IAzApplication *self, BSTR bstrProp) put_Version;
				public new function HRESULT(IAzApplication *self, BOOL* pbProp) get_GenerateAudits;
				public new function HRESULT(IAzApplication *self, BOOL bProp) put_GenerateAudits;
				public new function HRESULT(IAzApplication *self, BOOL* pbProp) get_ApplyStoreSacl;
				public new function HRESULT(IAzApplication *self, BOOL bProp) put_ApplyStoreSacl;
				public new function HRESULT(IAzApplication *self, BOOL* pfProp) get_Writable;
				public new function HRESULT(IAzApplication *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
				public new function HRESULT(IAzApplication *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
				public new function HRESULT(IAzApplication *self, VARIANT* pvarAdmins) get_PolicyAdministrators;
				public new function HRESULT(IAzApplication *self, VARIANT* pvarReaders) get_PolicyReaders;
				public new function HRESULT(IAzApplication *self, BSTR bstrAdmin, VARIANT varReserved) AddPolicyAdministrator;
				public new function HRESULT(IAzApplication *self, BSTR bstrAdmin, VARIANT varReserved) DeletePolicyAdministrator;
				public new function HRESULT(IAzApplication *self, BSTR bstrReader, VARIANT varReserved) AddPolicyReader;
				public new function HRESULT(IAzApplication *self, BSTR bstrReader, VARIANT varReserved) DeletePolicyReader;
				public new function HRESULT(IAzApplication *self, IAzScopes** ppScopeCollection) get_Scopes;
				public new function HRESULT(IAzApplication *self, BSTR bstrScopeName, VARIANT varReserved, IAzScope** ppScope) OpenScope;
				public new function HRESULT(IAzApplication *self, BSTR bstrScopeName, VARIANT varReserved, IAzScope** ppScope) CreateScope;
				public new function HRESULT(IAzApplication *self, BSTR bstrScopeName, VARIANT varReserved) DeleteScope;
				public new function HRESULT(IAzApplication *self, IAzOperations** ppOperationCollection) get_Operations;
				public new function HRESULT(IAzApplication *self, BSTR bstrOperationName, VARIANT varReserved, IAzOperation** ppOperation) OpenOperation;
				public new function HRESULT(IAzApplication *self, BSTR bstrOperationName, VARIANT varReserved, IAzOperation** ppOperation) CreateOperation;
				public new function HRESULT(IAzApplication *self, BSTR bstrOperationName, VARIANT varReserved) DeleteOperation;
				public new function HRESULT(IAzApplication *self, IAzTasks** ppTaskCollection) get_Tasks;
				public new function HRESULT(IAzApplication *self, BSTR bstrTaskName, VARIANT varReserved, IAzTask** ppTask) OpenTask;
				public new function HRESULT(IAzApplication *self, BSTR bstrTaskName, VARIANT varReserved, IAzTask** ppTask) CreateTask;
				public new function HRESULT(IAzApplication *self, BSTR bstrTaskName, VARIANT varReserved) DeleteTask;
				public new function HRESULT(IAzApplication *self, IAzApplicationGroups** ppGroupCollection) get_ApplicationGroups;
				public new function HRESULT(IAzApplication *self, BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) OpenApplicationGroup;
				public new function HRESULT(IAzApplication *self, BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) CreateApplicationGroup;
				public new function HRESULT(IAzApplication *self, BSTR bstrGroupName, VARIANT varReserved) DeleteApplicationGroup;
				public new function HRESULT(IAzApplication *self, IAzRoles** ppRoleCollection) get_Roles;
				public new function HRESULT(IAzApplication *self, BSTR bstrRoleName, VARIANT varReserved, IAzRole** ppRole) OpenRole;
				public new function HRESULT(IAzApplication *self, BSTR bstrRoleName, VARIANT varReserved, IAzRole** ppRole) CreateRole;
				public new function HRESULT(IAzApplication *self, BSTR bstrRoleName, VARIANT varReserved) DeleteRole;
				public new function HRESULT(IAzApplication *self, uint64 ullTokenHandle, VARIANT varReserved, IAzClientContext** ppClientContext) InitializeClientContextFromToken;
				public new function HRESULT(IAzApplication *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) AddPropertyItem;
				public new function HRESULT(IAzApplication *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) DeletePropertyItem;
				public new function HRESULT(IAzApplication *self, int32 lFlags, VARIANT varReserved) Submit;
				public new function HRESULT(IAzApplication *self, BSTR ClientName, BSTR DomainName, VARIANT varReserved, IAzClientContext** ppClientContext) InitializeClientContextFromName;
				public new function HRESULT(IAzApplication *self, VARIANT* pvarDelegatedPolicyUsers) get_DelegatedPolicyUsers;
				public new function HRESULT(IAzApplication *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) AddDelegatedPolicyUser;
				public new function HRESULT(IAzApplication *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) DeleteDelegatedPolicyUser;
				public new function HRESULT(IAzApplication *self, BSTR SidString, int32 lOptions, VARIANT varReserved, IAzClientContext** ppClientContext) InitializeClientContextFromStringSid;
				public new function HRESULT(IAzApplication *self, VARIANT* pvarAdmins) get_PolicyAdministratorsName;
				public new function HRESULT(IAzApplication *self, VARIANT* pvarReaders) get_PolicyReadersName;
				public new function HRESULT(IAzApplication *self, BSTR bstrAdmin, VARIANT varReserved) AddPolicyAdministratorName;
				public new function HRESULT(IAzApplication *self, BSTR bstrAdmin, VARIANT varReserved) DeletePolicyAdministratorName;
				public new function HRESULT(IAzApplication *self, BSTR bstrReader, VARIANT varReserved) AddPolicyReaderName;
				public new function HRESULT(IAzApplication *self, BSTR bstrReader, VARIANT varReserved) DeletePolicyReaderName;
				public new function HRESULT(IAzApplication *self, VARIANT* pvarDelegatedPolicyUsers) get_DelegatedPolicyUsersName;
				public new function HRESULT(IAzApplication *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) AddDelegatedPolicyUserName;
				public new function HRESULT(IAzApplication *self, BSTR bstrDelegatedPolicyUser, VARIANT varReserved) DeleteDelegatedPolicyUserName;
			}
		}
		[CRepr]
		public struct IAzApplication2 : IAzApplication
		{
			public const new Guid IID = .(0x086a68af, 0xa249, 0x437c, 0xb1, 0x8d, 0xd4, 0xd8, 0x6d, 0x6a, 0x96, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeClientContextFromToken2(uint32 ulTokenHandleLowPart, uint32 ulTokenHandleHighPart, VARIANT varReserved, IAzClientContext2** ppClientContext) mut
			{
				return VT.InitializeClientContextFromToken2(&this, ulTokenHandleLowPart, ulTokenHandleHighPart, varReserved, ppClientContext);
			}
			public HRESULT InitializeClientContext2(BSTR IdentifyingString, VARIANT varReserved, IAzClientContext2** ppClientContext) mut
			{
				return VT.InitializeClientContext2(&this, IdentifyingString, varReserved, ppClientContext);
			}
			[CRepr]
			public struct VTable : IAzApplication.VTable
			{
				public new function HRESULT(IAzApplication2 *self, uint32 ulTokenHandleLowPart, uint32 ulTokenHandleHighPart, VARIANT varReserved, IAzClientContext2** ppClientContext) InitializeClientContextFromToken2;
				public new function HRESULT(IAzApplication2 *self, BSTR IdentifyingString, VARIANT varReserved, IAzClientContext2** ppClientContext) InitializeClientContext2;
			}
		}
		[CRepr]
		public struct IAzApplications : IDispatch
		{
			public const new Guid IID = .(0x929b11a9, 0x95c5, 0x4a84, 0xa2, 0x9a, 0x20, 0xad, 0x42, 0xc2, 0xf1, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 Index, VARIANT* pvarObtPtr) mut
			{
				return VT.get_Item(&this, Index, pvarObtPtr);
			}
			public HRESULT get_Count(int32* plCount) mut
			{
				return VT.get_Count(&this, plCount);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnumPtr) mut
			{
				return VT.get__NewEnum(&this, ppEnumPtr);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzApplications *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
				public new function HRESULT(IAzApplications *self, int32* plCount) get_Count;
				public new function HRESULT(IAzApplications *self, IUnknown** ppEnumPtr) get__NewEnum;
			}
		}
		[CRepr]
		public struct IAzOperation : IDispatch
		{
			public const new Guid IID = .(0x5e56b24f, 0xea01, 0x4d61, 0xbe, 0x44, 0xc4, 0x9b, 0x5e, 0x4e, 0xaf, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pbstrName) mut
			{
				return VT.get_Name(&this, pbstrName);
			}
			public HRESULT put_Name(BSTR bstrName) mut
			{
				return VT.put_Name(&this, bstrName);
			}
			public HRESULT get_Description(BSTR* pbstrDescription) mut
			{
				return VT.get_Description(&this, pbstrDescription);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_ApplicationData(BSTR* pbstrApplicationData) mut
			{
				return VT.get_ApplicationData(&this, pbstrApplicationData);
			}
			public HRESULT put_ApplicationData(BSTR bstrApplicationData) mut
			{
				return VT.put_ApplicationData(&this, bstrApplicationData);
			}
			public HRESULT get_OperationID(int32* plProp) mut
			{
				return VT.get_OperationID(&this, plProp);
			}
			public HRESULT put_OperationID(int32 lProp) mut
			{
				return VT.put_OperationID(&this, lProp);
			}
			public HRESULT get_Writable(BOOL* pfProp) mut
			{
				return VT.get_Writable(&this, pfProp);
			}
			public HRESULT GetProperty(int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) mut
			{
				return VT.GetProperty(&this, lPropId, varReserved, pvarProp);
			}
			public HRESULT SetProperty(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.SetProperty(&this, lPropId, varProp, varReserved);
			}
			public HRESULT Submit(int32 lFlags, VARIANT varReserved) mut
			{
				return VT.Submit(&this, lFlags, varReserved);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzOperation *self, BSTR* pbstrName) get_Name;
				public new function HRESULT(IAzOperation *self, BSTR bstrName) put_Name;
				public new function HRESULT(IAzOperation *self, BSTR* pbstrDescription) get_Description;
				public new function HRESULT(IAzOperation *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IAzOperation *self, BSTR* pbstrApplicationData) get_ApplicationData;
				public new function HRESULT(IAzOperation *self, BSTR bstrApplicationData) put_ApplicationData;
				public new function HRESULT(IAzOperation *self, int32* plProp) get_OperationID;
				public new function HRESULT(IAzOperation *self, int32 lProp) put_OperationID;
				public new function HRESULT(IAzOperation *self, BOOL* pfProp) get_Writable;
				public new function HRESULT(IAzOperation *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
				public new function HRESULT(IAzOperation *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
				public new function HRESULT(IAzOperation *self, int32 lFlags, VARIANT varReserved) Submit;
			}
		}
		[CRepr]
		public struct IAzOperations : IDispatch
		{
			public const new Guid IID = .(0x90ef9c07, 0x9706, 0x49d9, 0xaf, 0x80, 0x04, 0x38, 0xa5, 0xf3, 0xec, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 Index, VARIANT* pvarObtPtr) mut
			{
				return VT.get_Item(&this, Index, pvarObtPtr);
			}
			public HRESULT get_Count(int32* plCount) mut
			{
				return VT.get_Count(&this, plCount);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnumPtr) mut
			{
				return VT.get__NewEnum(&this, ppEnumPtr);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzOperations *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
				public new function HRESULT(IAzOperations *self, int32* plCount) get_Count;
				public new function HRESULT(IAzOperations *self, IUnknown** ppEnumPtr) get__NewEnum;
			}
		}
		[CRepr]
		public struct IAzTask : IDispatch
		{
			public const new Guid IID = .(0xcb94e592, 0x2e0e, 0x4a6c, 0xa3, 0x36, 0xb8, 0x9a, 0x6d, 0xc1, 0xe3, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pbstrName) mut
			{
				return VT.get_Name(&this, pbstrName);
			}
			public HRESULT put_Name(BSTR bstrName) mut
			{
				return VT.put_Name(&this, bstrName);
			}
			public HRESULT get_Description(BSTR* pbstrDescription) mut
			{
				return VT.get_Description(&this, pbstrDescription);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_ApplicationData(BSTR* pbstrApplicationData) mut
			{
				return VT.get_ApplicationData(&this, pbstrApplicationData);
			}
			public HRESULT put_ApplicationData(BSTR bstrApplicationData) mut
			{
				return VT.put_ApplicationData(&this, bstrApplicationData);
			}
			public HRESULT get_BizRule(BSTR* pbstrProp) mut
			{
				return VT.get_BizRule(&this, pbstrProp);
			}
			public HRESULT put_BizRule(BSTR bstrProp) mut
			{
				return VT.put_BizRule(&this, bstrProp);
			}
			public HRESULT get_BizRuleLanguage(BSTR* pbstrProp) mut
			{
				return VT.get_BizRuleLanguage(&this, pbstrProp);
			}
			public HRESULT put_BizRuleLanguage(BSTR bstrProp) mut
			{
				return VT.put_BizRuleLanguage(&this, bstrProp);
			}
			public HRESULT get_BizRuleImportedPath(BSTR* pbstrProp) mut
			{
				return VT.get_BizRuleImportedPath(&this, pbstrProp);
			}
			public HRESULT put_BizRuleImportedPath(BSTR bstrProp) mut
			{
				return VT.put_BizRuleImportedPath(&this, bstrProp);
			}
			public HRESULT get_IsRoleDefinition(BOOL* pfProp) mut
			{
				return VT.get_IsRoleDefinition(&this, pfProp);
			}
			public HRESULT put_IsRoleDefinition(BOOL fProp) mut
			{
				return VT.put_IsRoleDefinition(&this, fProp);
			}
			public HRESULT get_Operations(VARIANT* pvarProp) mut
			{
				return VT.get_Operations(&this, pvarProp);
			}
			public HRESULT get_Tasks(VARIANT* pvarProp) mut
			{
				return VT.get_Tasks(&this, pvarProp);
			}
			public HRESULT AddOperation(BSTR bstrOp, VARIANT varReserved) mut
			{
				return VT.AddOperation(&this, bstrOp, varReserved);
			}
			public HRESULT DeleteOperation(BSTR bstrOp, VARIANT varReserved) mut
			{
				return VT.DeleteOperation(&this, bstrOp, varReserved);
			}
			public HRESULT AddTask(BSTR bstrTask, VARIANT varReserved) mut
			{
				return VT.AddTask(&this, bstrTask, varReserved);
			}
			public HRESULT DeleteTask(BSTR bstrTask, VARIANT varReserved) mut
			{
				return VT.DeleteTask(&this, bstrTask, varReserved);
			}
			public HRESULT get_Writable(BOOL* pfProp) mut
			{
				return VT.get_Writable(&this, pfProp);
			}
			public HRESULT GetProperty(int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) mut
			{
				return VT.GetProperty(&this, lPropId, varReserved, pvarProp);
			}
			public HRESULT SetProperty(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.SetProperty(&this, lPropId, varProp, varReserved);
			}
			public HRESULT AddPropertyItem(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.AddPropertyItem(&this, lPropId, varProp, varReserved);
			}
			public HRESULT DeletePropertyItem(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.DeletePropertyItem(&this, lPropId, varProp, varReserved);
			}
			public HRESULT Submit(int32 lFlags, VARIANT varReserved) mut
			{
				return VT.Submit(&this, lFlags, varReserved);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzTask *self, BSTR* pbstrName) get_Name;
				public new function HRESULT(IAzTask *self, BSTR bstrName) put_Name;
				public new function HRESULT(IAzTask *self, BSTR* pbstrDescription) get_Description;
				public new function HRESULT(IAzTask *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IAzTask *self, BSTR* pbstrApplicationData) get_ApplicationData;
				public new function HRESULT(IAzTask *self, BSTR bstrApplicationData) put_ApplicationData;
				public new function HRESULT(IAzTask *self, BSTR* pbstrProp) get_BizRule;
				public new function HRESULT(IAzTask *self, BSTR bstrProp) put_BizRule;
				public new function HRESULT(IAzTask *self, BSTR* pbstrProp) get_BizRuleLanguage;
				public new function HRESULT(IAzTask *self, BSTR bstrProp) put_BizRuleLanguage;
				public new function HRESULT(IAzTask *self, BSTR* pbstrProp) get_BizRuleImportedPath;
				public new function HRESULT(IAzTask *self, BSTR bstrProp) put_BizRuleImportedPath;
				public new function HRESULT(IAzTask *self, BOOL* pfProp) get_IsRoleDefinition;
				public new function HRESULT(IAzTask *self, BOOL fProp) put_IsRoleDefinition;
				public new function HRESULT(IAzTask *self, VARIANT* pvarProp) get_Operations;
				public new function HRESULT(IAzTask *self, VARIANT* pvarProp) get_Tasks;
				public new function HRESULT(IAzTask *self, BSTR bstrOp, VARIANT varReserved) AddOperation;
				public new function HRESULT(IAzTask *self, BSTR bstrOp, VARIANT varReserved) DeleteOperation;
				public new function HRESULT(IAzTask *self, BSTR bstrTask, VARIANT varReserved) AddTask;
				public new function HRESULT(IAzTask *self, BSTR bstrTask, VARIANT varReserved) DeleteTask;
				public new function HRESULT(IAzTask *self, BOOL* pfProp) get_Writable;
				public new function HRESULT(IAzTask *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
				public new function HRESULT(IAzTask *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
				public new function HRESULT(IAzTask *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) AddPropertyItem;
				public new function HRESULT(IAzTask *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) DeletePropertyItem;
				public new function HRESULT(IAzTask *self, int32 lFlags, VARIANT varReserved) Submit;
			}
		}
		[CRepr]
		public struct IAzTasks : IDispatch
		{
			public const new Guid IID = .(0xb338ccab, 0x4c85, 0x4388, 0x8c, 0x0a, 0xc5, 0x85, 0x92, 0xba, 0xd3, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 Index, VARIANT* pvarObtPtr) mut
			{
				return VT.get_Item(&this, Index, pvarObtPtr);
			}
			public HRESULT get_Count(int32* plCount) mut
			{
				return VT.get_Count(&this, plCount);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnumPtr) mut
			{
				return VT.get__NewEnum(&this, ppEnumPtr);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzTasks *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
				public new function HRESULT(IAzTasks *self, int32* plCount) get_Count;
				public new function HRESULT(IAzTasks *self, IUnknown** ppEnumPtr) get__NewEnum;
			}
		}
		[CRepr]
		public struct IAzScope : IDispatch
		{
			public const new Guid IID = .(0x00e52487, 0xe08d, 0x4514, 0xb6, 0x2e, 0x87, 0x7d, 0x56, 0x45, 0xf5, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pbstrName) mut
			{
				return VT.get_Name(&this, pbstrName);
			}
			public HRESULT put_Name(BSTR bstrName) mut
			{
				return VT.put_Name(&this, bstrName);
			}
			public HRESULT get_Description(BSTR* pbstrDescription) mut
			{
				return VT.get_Description(&this, pbstrDescription);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_ApplicationData(BSTR* pbstrApplicationData) mut
			{
				return VT.get_ApplicationData(&this, pbstrApplicationData);
			}
			public HRESULT put_ApplicationData(BSTR bstrApplicationData) mut
			{
				return VT.put_ApplicationData(&this, bstrApplicationData);
			}
			public HRESULT get_Writable(BOOL* pfProp) mut
			{
				return VT.get_Writable(&this, pfProp);
			}
			public HRESULT GetProperty(int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) mut
			{
				return VT.GetProperty(&this, lPropId, varReserved, pvarProp);
			}
			public HRESULT SetProperty(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.SetProperty(&this, lPropId, varProp, varReserved);
			}
			public HRESULT AddPropertyItem(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.AddPropertyItem(&this, lPropId, varProp, varReserved);
			}
			public HRESULT DeletePropertyItem(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.DeletePropertyItem(&this, lPropId, varProp, varReserved);
			}
			public HRESULT get_PolicyAdministrators(VARIANT* pvarAdmins) mut
			{
				return VT.get_PolicyAdministrators(&this, pvarAdmins);
			}
			public HRESULT get_PolicyReaders(VARIANT* pvarReaders) mut
			{
				return VT.get_PolicyReaders(&this, pvarReaders);
			}
			public HRESULT AddPolicyAdministrator(BSTR bstrAdmin, VARIANT varReserved) mut
			{
				return VT.AddPolicyAdministrator(&this, bstrAdmin, varReserved);
			}
			public HRESULT DeletePolicyAdministrator(BSTR bstrAdmin, VARIANT varReserved) mut
			{
				return VT.DeletePolicyAdministrator(&this, bstrAdmin, varReserved);
			}
			public HRESULT AddPolicyReader(BSTR bstrReader, VARIANT varReserved) mut
			{
				return VT.AddPolicyReader(&this, bstrReader, varReserved);
			}
			public HRESULT DeletePolicyReader(BSTR bstrReader, VARIANT varReserved) mut
			{
				return VT.DeletePolicyReader(&this, bstrReader, varReserved);
			}
			public HRESULT get_ApplicationGroups(IAzApplicationGroups** ppGroupCollection) mut
			{
				return VT.get_ApplicationGroups(&this, ppGroupCollection);
			}
			public HRESULT OpenApplicationGroup(BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) mut
			{
				return VT.OpenApplicationGroup(&this, bstrGroupName, varReserved, ppGroup);
			}
			public HRESULT CreateApplicationGroup(BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) mut
			{
				return VT.CreateApplicationGroup(&this, bstrGroupName, varReserved, ppGroup);
			}
			public HRESULT DeleteApplicationGroup(BSTR bstrGroupName, VARIANT varReserved) mut
			{
				return VT.DeleteApplicationGroup(&this, bstrGroupName, varReserved);
			}
			public HRESULT get_Roles(IAzRoles** ppRoleCollection) mut
			{
				return VT.get_Roles(&this, ppRoleCollection);
			}
			public HRESULT OpenRole(BSTR bstrRoleName, VARIANT varReserved, IAzRole** ppRole) mut
			{
				return VT.OpenRole(&this, bstrRoleName, varReserved, ppRole);
			}
			public HRESULT CreateRole(BSTR bstrRoleName, VARIANT varReserved, IAzRole** ppRole) mut
			{
				return VT.CreateRole(&this, bstrRoleName, varReserved, ppRole);
			}
			public HRESULT DeleteRole(BSTR bstrRoleName, VARIANT varReserved) mut
			{
				return VT.DeleteRole(&this, bstrRoleName, varReserved);
			}
			public HRESULT get_Tasks(IAzTasks** ppTaskCollection) mut
			{
				return VT.get_Tasks(&this, ppTaskCollection);
			}
			public HRESULT OpenTask(BSTR bstrTaskName, VARIANT varReserved, IAzTask** ppTask) mut
			{
				return VT.OpenTask(&this, bstrTaskName, varReserved, ppTask);
			}
			public HRESULT CreateTask(BSTR bstrTaskName, VARIANT varReserved, IAzTask** ppTask) mut
			{
				return VT.CreateTask(&this, bstrTaskName, varReserved, ppTask);
			}
			public HRESULT DeleteTask(BSTR bstrTaskName, VARIANT varReserved) mut
			{
				return VT.DeleteTask(&this, bstrTaskName, varReserved);
			}
			public HRESULT Submit(int32 lFlags, VARIANT varReserved) mut
			{
				return VT.Submit(&this, lFlags, varReserved);
			}
			public HRESULT get_CanBeDelegated(BOOL* pfProp) mut
			{
				return VT.get_CanBeDelegated(&this, pfProp);
			}
			public HRESULT get_BizrulesWritable(BOOL* pfProp) mut
			{
				return VT.get_BizrulesWritable(&this, pfProp);
			}
			public HRESULT get_PolicyAdministratorsName(VARIANT* pvarAdmins) mut
			{
				return VT.get_PolicyAdministratorsName(&this, pvarAdmins);
			}
			public HRESULT get_PolicyReadersName(VARIANT* pvarReaders) mut
			{
				return VT.get_PolicyReadersName(&this, pvarReaders);
			}
			public HRESULT AddPolicyAdministratorName(BSTR bstrAdmin, VARIANT varReserved) mut
			{
				return VT.AddPolicyAdministratorName(&this, bstrAdmin, varReserved);
			}
			public HRESULT DeletePolicyAdministratorName(BSTR bstrAdmin, VARIANT varReserved) mut
			{
				return VT.DeletePolicyAdministratorName(&this, bstrAdmin, varReserved);
			}
			public HRESULT AddPolicyReaderName(BSTR bstrReader, VARIANT varReserved) mut
			{
				return VT.AddPolicyReaderName(&this, bstrReader, varReserved);
			}
			public HRESULT DeletePolicyReaderName(BSTR bstrReader, VARIANT varReserved) mut
			{
				return VT.DeletePolicyReaderName(&this, bstrReader, varReserved);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzScope *self, BSTR* pbstrName) get_Name;
				public new function HRESULT(IAzScope *self, BSTR bstrName) put_Name;
				public new function HRESULT(IAzScope *self, BSTR* pbstrDescription) get_Description;
				public new function HRESULT(IAzScope *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IAzScope *self, BSTR* pbstrApplicationData) get_ApplicationData;
				public new function HRESULT(IAzScope *self, BSTR bstrApplicationData) put_ApplicationData;
				public new function HRESULT(IAzScope *self, BOOL* pfProp) get_Writable;
				public new function HRESULT(IAzScope *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
				public new function HRESULT(IAzScope *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
				public new function HRESULT(IAzScope *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) AddPropertyItem;
				public new function HRESULT(IAzScope *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) DeletePropertyItem;
				public new function HRESULT(IAzScope *self, VARIANT* pvarAdmins) get_PolicyAdministrators;
				public new function HRESULT(IAzScope *self, VARIANT* pvarReaders) get_PolicyReaders;
				public new function HRESULT(IAzScope *self, BSTR bstrAdmin, VARIANT varReserved) AddPolicyAdministrator;
				public new function HRESULT(IAzScope *self, BSTR bstrAdmin, VARIANT varReserved) DeletePolicyAdministrator;
				public new function HRESULT(IAzScope *self, BSTR bstrReader, VARIANT varReserved) AddPolicyReader;
				public new function HRESULT(IAzScope *self, BSTR bstrReader, VARIANT varReserved) DeletePolicyReader;
				public new function HRESULT(IAzScope *self, IAzApplicationGroups** ppGroupCollection) get_ApplicationGroups;
				public new function HRESULT(IAzScope *self, BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) OpenApplicationGroup;
				public new function HRESULT(IAzScope *self, BSTR bstrGroupName, VARIANT varReserved, IAzApplicationGroup** ppGroup) CreateApplicationGroup;
				public new function HRESULT(IAzScope *self, BSTR bstrGroupName, VARIANT varReserved) DeleteApplicationGroup;
				public new function HRESULT(IAzScope *self, IAzRoles** ppRoleCollection) get_Roles;
				public new function HRESULT(IAzScope *self, BSTR bstrRoleName, VARIANT varReserved, IAzRole** ppRole) OpenRole;
				public new function HRESULT(IAzScope *self, BSTR bstrRoleName, VARIANT varReserved, IAzRole** ppRole) CreateRole;
				public new function HRESULT(IAzScope *self, BSTR bstrRoleName, VARIANT varReserved) DeleteRole;
				public new function HRESULT(IAzScope *self, IAzTasks** ppTaskCollection) get_Tasks;
				public new function HRESULT(IAzScope *self, BSTR bstrTaskName, VARIANT varReserved, IAzTask** ppTask) OpenTask;
				public new function HRESULT(IAzScope *self, BSTR bstrTaskName, VARIANT varReserved, IAzTask** ppTask) CreateTask;
				public new function HRESULT(IAzScope *self, BSTR bstrTaskName, VARIANT varReserved) DeleteTask;
				public new function HRESULT(IAzScope *self, int32 lFlags, VARIANT varReserved) Submit;
				public new function HRESULT(IAzScope *self, BOOL* pfProp) get_CanBeDelegated;
				public new function HRESULT(IAzScope *self, BOOL* pfProp) get_BizrulesWritable;
				public new function HRESULT(IAzScope *self, VARIANT* pvarAdmins) get_PolicyAdministratorsName;
				public new function HRESULT(IAzScope *self, VARIANT* pvarReaders) get_PolicyReadersName;
				public new function HRESULT(IAzScope *self, BSTR bstrAdmin, VARIANT varReserved) AddPolicyAdministratorName;
				public new function HRESULT(IAzScope *self, BSTR bstrAdmin, VARIANT varReserved) DeletePolicyAdministratorName;
				public new function HRESULT(IAzScope *self, BSTR bstrReader, VARIANT varReserved) AddPolicyReaderName;
				public new function HRESULT(IAzScope *self, BSTR bstrReader, VARIANT varReserved) DeletePolicyReaderName;
			}
		}
		[CRepr]
		public struct IAzScopes : IDispatch
		{
			public const new Guid IID = .(0x78e14853, 0x9f5e, 0x406d, 0x9b, 0x91, 0x6b, 0xdb, 0xa6, 0x97, 0x35, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 Index, VARIANT* pvarObtPtr) mut
			{
				return VT.get_Item(&this, Index, pvarObtPtr);
			}
			public HRESULT get_Count(int32* plCount) mut
			{
				return VT.get_Count(&this, plCount);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnumPtr) mut
			{
				return VT.get__NewEnum(&this, ppEnumPtr);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzScopes *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
				public new function HRESULT(IAzScopes *self, int32* plCount) get_Count;
				public new function HRESULT(IAzScopes *self, IUnknown** ppEnumPtr) get__NewEnum;
			}
		}
		[CRepr]
		public struct IAzApplicationGroup : IDispatch
		{
			public const new Guid IID = .(0xf1b744cd, 0x58a6, 0x4e06, 0x9f, 0xbf, 0x36, 0xf6, 0xd7, 0x79, 0xe2, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pbstrName) mut
			{
				return VT.get_Name(&this, pbstrName);
			}
			public HRESULT put_Name(BSTR bstrName) mut
			{
				return VT.put_Name(&this, bstrName);
			}
			public HRESULT get_Type(int32* plProp) mut
			{
				return VT.get_Type(&this, plProp);
			}
			public HRESULT put_Type(int32 lProp) mut
			{
				return VT.put_Type(&this, lProp);
			}
			public HRESULT get_LdapQuery(BSTR* pbstrProp) mut
			{
				return VT.get_LdapQuery(&this, pbstrProp);
			}
			public HRESULT put_LdapQuery(BSTR bstrProp) mut
			{
				return VT.put_LdapQuery(&this, bstrProp);
			}
			public HRESULT get_AppMembers(VARIANT* pvarProp) mut
			{
				return VT.get_AppMembers(&this, pvarProp);
			}
			public HRESULT get_AppNonMembers(VARIANT* pvarProp) mut
			{
				return VT.get_AppNonMembers(&this, pvarProp);
			}
			public HRESULT get_Members(VARIANT* pvarProp) mut
			{
				return VT.get_Members(&this, pvarProp);
			}
			public HRESULT get_NonMembers(VARIANT* pvarProp) mut
			{
				return VT.get_NonMembers(&this, pvarProp);
			}
			public HRESULT get_Description(BSTR* pbstrDescription) mut
			{
				return VT.get_Description(&this, pbstrDescription);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT AddAppMember(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.AddAppMember(&this, bstrProp, varReserved);
			}
			public HRESULT DeleteAppMember(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.DeleteAppMember(&this, bstrProp, varReserved);
			}
			public HRESULT AddAppNonMember(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.AddAppNonMember(&this, bstrProp, varReserved);
			}
			public HRESULT DeleteAppNonMember(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.DeleteAppNonMember(&this, bstrProp, varReserved);
			}
			public HRESULT AddMember(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.AddMember(&this, bstrProp, varReserved);
			}
			public HRESULT DeleteMember(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.DeleteMember(&this, bstrProp, varReserved);
			}
			public HRESULT AddNonMember(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.AddNonMember(&this, bstrProp, varReserved);
			}
			public HRESULT DeleteNonMember(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.DeleteNonMember(&this, bstrProp, varReserved);
			}
			public HRESULT get_Writable(BOOL* pfProp) mut
			{
				return VT.get_Writable(&this, pfProp);
			}
			public HRESULT GetProperty(int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) mut
			{
				return VT.GetProperty(&this, lPropId, varReserved, pvarProp);
			}
			public HRESULT SetProperty(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.SetProperty(&this, lPropId, varProp, varReserved);
			}
			public HRESULT AddPropertyItem(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.AddPropertyItem(&this, lPropId, varProp, varReserved);
			}
			public HRESULT DeletePropertyItem(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.DeletePropertyItem(&this, lPropId, varProp, varReserved);
			}
			public HRESULT Submit(int32 lFlags, VARIANT varReserved) mut
			{
				return VT.Submit(&this, lFlags, varReserved);
			}
			public HRESULT AddMemberName(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.AddMemberName(&this, bstrProp, varReserved);
			}
			public HRESULT DeleteMemberName(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.DeleteMemberName(&this, bstrProp, varReserved);
			}
			public HRESULT AddNonMemberName(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.AddNonMemberName(&this, bstrProp, varReserved);
			}
			public HRESULT DeleteNonMemberName(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.DeleteNonMemberName(&this, bstrProp, varReserved);
			}
			public HRESULT get_MembersName(VARIANT* pvarProp) mut
			{
				return VT.get_MembersName(&this, pvarProp);
			}
			public HRESULT get_NonMembersName(VARIANT* pvarProp) mut
			{
				return VT.get_NonMembersName(&this, pvarProp);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzApplicationGroup *self, BSTR* pbstrName) get_Name;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrName) put_Name;
				public new function HRESULT(IAzApplicationGroup *self, int32* plProp) get_Type;
				public new function HRESULT(IAzApplicationGroup *self, int32 lProp) put_Type;
				public new function HRESULT(IAzApplicationGroup *self, BSTR* pbstrProp) get_LdapQuery;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrProp) put_LdapQuery;
				public new function HRESULT(IAzApplicationGroup *self, VARIANT* pvarProp) get_AppMembers;
				public new function HRESULT(IAzApplicationGroup *self, VARIANT* pvarProp) get_AppNonMembers;
				public new function HRESULT(IAzApplicationGroup *self, VARIANT* pvarProp) get_Members;
				public new function HRESULT(IAzApplicationGroup *self, VARIANT* pvarProp) get_NonMembers;
				public new function HRESULT(IAzApplicationGroup *self, BSTR* pbstrDescription) get_Description;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) AddAppMember;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) DeleteAppMember;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) AddAppNonMember;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) DeleteAppNonMember;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) AddMember;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) DeleteMember;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) AddNonMember;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) DeleteNonMember;
				public new function HRESULT(IAzApplicationGroup *self, BOOL* pfProp) get_Writable;
				public new function HRESULT(IAzApplicationGroup *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
				public new function HRESULT(IAzApplicationGroup *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
				public new function HRESULT(IAzApplicationGroup *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) AddPropertyItem;
				public new function HRESULT(IAzApplicationGroup *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) DeletePropertyItem;
				public new function HRESULT(IAzApplicationGroup *self, int32 lFlags, VARIANT varReserved) Submit;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) AddMemberName;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) DeleteMemberName;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) AddNonMemberName;
				public new function HRESULT(IAzApplicationGroup *self, BSTR bstrProp, VARIANT varReserved) DeleteNonMemberName;
				public new function HRESULT(IAzApplicationGroup *self, VARIANT* pvarProp) get_MembersName;
				public new function HRESULT(IAzApplicationGroup *self, VARIANT* pvarProp) get_NonMembersName;
			}
		}
		[CRepr]
		public struct IAzApplicationGroups : IDispatch
		{
			public const new Guid IID = .(0x4ce66ad5, 0x9f3c, 0x469d, 0xa9, 0x11, 0xb9, 0x98, 0x87, 0xa7, 0xe6, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 Index, VARIANT* pvarObtPtr) mut
			{
				return VT.get_Item(&this, Index, pvarObtPtr);
			}
			public HRESULT get_Count(int32* plCount) mut
			{
				return VT.get_Count(&this, plCount);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnumPtr) mut
			{
				return VT.get__NewEnum(&this, ppEnumPtr);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzApplicationGroups *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
				public new function HRESULT(IAzApplicationGroups *self, int32* plCount) get_Count;
				public new function HRESULT(IAzApplicationGroups *self, IUnknown** ppEnumPtr) get__NewEnum;
			}
		}
		[CRepr]
		public struct IAzRole : IDispatch
		{
			public const new Guid IID = .(0x859e0d8d, 0x62d7, 0x41d8, 0xa0, 0x34, 0xc0, 0xcd, 0x5d, 0x43, 0xfd, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pbstrName) mut
			{
				return VT.get_Name(&this, pbstrName);
			}
			public HRESULT put_Name(BSTR bstrName) mut
			{
				return VT.put_Name(&this, bstrName);
			}
			public HRESULT get_Description(BSTR* pbstrDescription) mut
			{
				return VT.get_Description(&this, pbstrDescription);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_ApplicationData(BSTR* pbstrApplicationData) mut
			{
				return VT.get_ApplicationData(&this, pbstrApplicationData);
			}
			public HRESULT put_ApplicationData(BSTR bstrApplicationData) mut
			{
				return VT.put_ApplicationData(&this, bstrApplicationData);
			}
			public HRESULT AddAppMember(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.AddAppMember(&this, bstrProp, varReserved);
			}
			public HRESULT DeleteAppMember(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.DeleteAppMember(&this, bstrProp, varReserved);
			}
			public HRESULT AddTask(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.AddTask(&this, bstrProp, varReserved);
			}
			public HRESULT DeleteTask(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.DeleteTask(&this, bstrProp, varReserved);
			}
			public HRESULT AddOperation(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.AddOperation(&this, bstrProp, varReserved);
			}
			public HRESULT DeleteOperation(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.DeleteOperation(&this, bstrProp, varReserved);
			}
			public HRESULT AddMember(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.AddMember(&this, bstrProp, varReserved);
			}
			public HRESULT DeleteMember(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.DeleteMember(&this, bstrProp, varReserved);
			}
			public HRESULT get_Writable(BOOL* pfProp) mut
			{
				return VT.get_Writable(&this, pfProp);
			}
			public HRESULT GetProperty(int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) mut
			{
				return VT.GetProperty(&this, lPropId, varReserved, pvarProp);
			}
			public HRESULT SetProperty(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.SetProperty(&this, lPropId, varProp, varReserved);
			}
			public HRESULT get_AppMembers(VARIANT* pvarProp) mut
			{
				return VT.get_AppMembers(&this, pvarProp);
			}
			public HRESULT get_Members(VARIANT* pvarProp) mut
			{
				return VT.get_Members(&this, pvarProp);
			}
			public HRESULT get_Operations(VARIANT* pvarProp) mut
			{
				return VT.get_Operations(&this, pvarProp);
			}
			public HRESULT get_Tasks(VARIANT* pvarProp) mut
			{
				return VT.get_Tasks(&this, pvarProp);
			}
			public HRESULT AddPropertyItem(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.AddPropertyItem(&this, lPropId, varProp, varReserved);
			}
			public HRESULT DeletePropertyItem(int32 lPropId, VARIANT varProp, VARIANT varReserved) mut
			{
				return VT.DeletePropertyItem(&this, lPropId, varProp, varReserved);
			}
			public HRESULT Submit(int32 lFlags, VARIANT varReserved) mut
			{
				return VT.Submit(&this, lFlags, varReserved);
			}
			public HRESULT AddMemberName(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.AddMemberName(&this, bstrProp, varReserved);
			}
			public HRESULT DeleteMemberName(BSTR bstrProp, VARIANT varReserved) mut
			{
				return VT.DeleteMemberName(&this, bstrProp, varReserved);
			}
			public HRESULT get_MembersName(VARIANT* pvarProp) mut
			{
				return VT.get_MembersName(&this, pvarProp);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzRole *self, BSTR* pbstrName) get_Name;
				public new function HRESULT(IAzRole *self, BSTR bstrName) put_Name;
				public new function HRESULT(IAzRole *self, BSTR* pbstrDescription) get_Description;
				public new function HRESULT(IAzRole *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IAzRole *self, BSTR* pbstrApplicationData) get_ApplicationData;
				public new function HRESULT(IAzRole *self, BSTR bstrApplicationData) put_ApplicationData;
				public new function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) AddAppMember;
				public new function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) DeleteAppMember;
				public new function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) AddTask;
				public new function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) DeleteTask;
				public new function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) AddOperation;
				public new function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) DeleteOperation;
				public new function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) AddMember;
				public new function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) DeleteMember;
				public new function HRESULT(IAzRole *self, BOOL* pfProp) get_Writable;
				public new function HRESULT(IAzRole *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
				public new function HRESULT(IAzRole *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) SetProperty;
				public new function HRESULT(IAzRole *self, VARIANT* pvarProp) get_AppMembers;
				public new function HRESULT(IAzRole *self, VARIANT* pvarProp) get_Members;
				public new function HRESULT(IAzRole *self, VARIANT* pvarProp) get_Operations;
				public new function HRESULT(IAzRole *self, VARIANT* pvarProp) get_Tasks;
				public new function HRESULT(IAzRole *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) AddPropertyItem;
				public new function HRESULT(IAzRole *self, int32 lPropId, VARIANT varProp, VARIANT varReserved) DeletePropertyItem;
				public new function HRESULT(IAzRole *self, int32 lFlags, VARIANT varReserved) Submit;
				public new function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) AddMemberName;
				public new function HRESULT(IAzRole *self, BSTR bstrProp, VARIANT varReserved) DeleteMemberName;
				public new function HRESULT(IAzRole *self, VARIANT* pvarProp) get_MembersName;
			}
		}
		[CRepr]
		public struct IAzRoles : IDispatch
		{
			public const new Guid IID = .(0x95e0f119, 0x13b4, 0x4dae, 0xb6, 0x5f, 0x2f, 0x7d, 0x60, 0xd8, 0x22, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 Index, VARIANT* pvarObtPtr) mut
			{
				return VT.get_Item(&this, Index, pvarObtPtr);
			}
			public HRESULT get_Count(int32* plCount) mut
			{
				return VT.get_Count(&this, plCount);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnumPtr) mut
			{
				return VT.get__NewEnum(&this, ppEnumPtr);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzRoles *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
				public new function HRESULT(IAzRoles *self, int32* plCount) get_Count;
				public new function HRESULT(IAzRoles *self, IUnknown** ppEnumPtr) get__NewEnum;
			}
		}
		[CRepr]
		public struct IAzClientContext : IDispatch
		{
			public const new Guid IID = .(0xeff1f00b, 0x488a, 0x466d, 0xaf, 0xd9, 0xa4, 0x01, 0xc5, 0xf9, 0xee, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AccessCheck(BSTR bstrObjectName, VARIANT varScopeNames, VARIANT varOperations, VARIANT varParameterNames, VARIANT varParameterValues, VARIANT varInterfaceNames, VARIANT varInterfaceFlags, VARIANT varInterfaces, VARIANT* pvarResults) mut
			{
				return VT.AccessCheck(&this, bstrObjectName, varScopeNames, varOperations, varParameterNames, varParameterValues, varInterfaceNames, varInterfaceFlags, varInterfaces, pvarResults);
			}
			public HRESULT GetBusinessRuleString(BSTR* pbstrBusinessRuleString) mut
			{
				return VT.GetBusinessRuleString(&this, pbstrBusinessRuleString);
			}
			public HRESULT get_UserDn(BSTR* pbstrProp) mut
			{
				return VT.get_UserDn(&this, pbstrProp);
			}
			public HRESULT get_UserSamCompat(BSTR* pbstrProp) mut
			{
				return VT.get_UserSamCompat(&this, pbstrProp);
			}
			public HRESULT get_UserDisplay(BSTR* pbstrProp) mut
			{
				return VT.get_UserDisplay(&this, pbstrProp);
			}
			public HRESULT get_UserGuid(BSTR* pbstrProp) mut
			{
				return VT.get_UserGuid(&this, pbstrProp);
			}
			public HRESULT get_UserCanonical(BSTR* pbstrProp) mut
			{
				return VT.get_UserCanonical(&this, pbstrProp);
			}
			public HRESULT get_UserUpn(BSTR* pbstrProp) mut
			{
				return VT.get_UserUpn(&this, pbstrProp);
			}
			public HRESULT get_UserDnsSamCompat(BSTR* pbstrProp) mut
			{
				return VT.get_UserDnsSamCompat(&this, pbstrProp);
			}
			public HRESULT GetProperty(int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) mut
			{
				return VT.GetProperty(&this, lPropId, varReserved, pvarProp);
			}
			public HRESULT GetRoles(BSTR bstrScopeName, VARIANT* pvarRoleNames) mut
			{
				return VT.GetRoles(&this, bstrScopeName, pvarRoleNames);
			}
			public HRESULT get_RoleForAccessCheck(BSTR* pbstrProp) mut
			{
				return VT.get_RoleForAccessCheck(&this, pbstrProp);
			}
			public HRESULT put_RoleForAccessCheck(BSTR bstrProp) mut
			{
				return VT.put_RoleForAccessCheck(&this, bstrProp);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzClientContext *self, BSTR bstrObjectName, VARIANT varScopeNames, VARIANT varOperations, VARIANT varParameterNames, VARIANT varParameterValues, VARIANT varInterfaceNames, VARIANT varInterfaceFlags, VARIANT varInterfaces, VARIANT* pvarResults) AccessCheck;
				public new function HRESULT(IAzClientContext *self, BSTR* pbstrBusinessRuleString) GetBusinessRuleString;
				public new function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserDn;
				public new function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserSamCompat;
				public new function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserDisplay;
				public new function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserGuid;
				public new function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserCanonical;
				public new function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserUpn;
				public new function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_UserDnsSamCompat;
				public new function HRESULT(IAzClientContext *self, int32 lPropId, VARIANT varReserved, VARIANT* pvarProp) GetProperty;
				public new function HRESULT(IAzClientContext *self, BSTR bstrScopeName, VARIANT* pvarRoleNames) GetRoles;
				public new function HRESULT(IAzClientContext *self, BSTR* pbstrProp) get_RoleForAccessCheck;
				public new function HRESULT(IAzClientContext *self, BSTR bstrProp) put_RoleForAccessCheck;
			}
		}
		[CRepr]
		public struct IAzClientContext2 : IAzClientContext
		{
			public const new Guid IID = .(0x2b0c92b8, 0x208a, 0x488a, 0x8f, 0x81, 0xe4, 0xed, 0xb2, 0x21, 0x11, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAssignedScopesPage(int32 lOptions, int32 PageSize, VARIANT* pvarCursor, VARIANT* pvarScopeNames) mut
			{
				return VT.GetAssignedScopesPage(&this, lOptions, PageSize, pvarCursor, pvarScopeNames);
			}
			public HRESULT AddRoles(VARIANT varRoles, BSTR bstrScopeName) mut
			{
				return VT.AddRoles(&this, varRoles, bstrScopeName);
			}
			public HRESULT AddApplicationGroups(VARIANT varApplicationGroups) mut
			{
				return VT.AddApplicationGroups(&this, varApplicationGroups);
			}
			public HRESULT AddStringSids(VARIANT varStringSids) mut
			{
				return VT.AddStringSids(&this, varStringSids);
			}
			public HRESULT put_LDAPQueryDN(BSTR bstrLDAPQueryDN) mut
			{
				return VT.put_LDAPQueryDN(&this, bstrLDAPQueryDN);
			}
			public HRESULT get_LDAPQueryDN(BSTR* pbstrLDAPQueryDN) mut
			{
				return VT.get_LDAPQueryDN(&this, pbstrLDAPQueryDN);
			}
			[CRepr]
			public struct VTable : IAzClientContext.VTable
			{
				public new function HRESULT(IAzClientContext2 *self, int32 lOptions, int32 PageSize, VARIANT* pvarCursor, VARIANT* pvarScopeNames) GetAssignedScopesPage;
				public new function HRESULT(IAzClientContext2 *self, VARIANT varRoles, BSTR bstrScopeName) AddRoles;
				public new function HRESULT(IAzClientContext2 *self, VARIANT varApplicationGroups) AddApplicationGroups;
				public new function HRESULT(IAzClientContext2 *self, VARIANT varStringSids) AddStringSids;
				public new function HRESULT(IAzClientContext2 *self, BSTR bstrLDAPQueryDN) put_LDAPQueryDN;
				public new function HRESULT(IAzClientContext2 *self, BSTR* pbstrLDAPQueryDN) get_LDAPQueryDN;
			}
		}
		[CRepr]
		public struct IAzBizRuleContext : IDispatch
		{
			public const new Guid IID = .(0xe192f17d, 0xd59f, 0x455e, 0xa1, 0x52, 0x94, 0x03, 0x16, 0xcd, 0x77, 0xb2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_BusinessRuleResult(BOOL bResult) mut
			{
				return VT.put_BusinessRuleResult(&this, bResult);
			}
			public HRESULT put_BusinessRuleString(BSTR bstrBusinessRuleString) mut
			{
				return VT.put_BusinessRuleString(&this, bstrBusinessRuleString);
			}
			public HRESULT get_BusinessRuleString(BSTR* pbstrBusinessRuleString) mut
			{
				return VT.get_BusinessRuleString(&this, pbstrBusinessRuleString);
			}
			public HRESULT GetParameter(BSTR bstrParameterName, VARIANT* pvarParameterValue) mut
			{
				return VT.GetParameter(&this, bstrParameterName, pvarParameterValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzBizRuleContext *self, BOOL bResult) put_BusinessRuleResult;
				public new function HRESULT(IAzBizRuleContext *self, BSTR bstrBusinessRuleString) put_BusinessRuleString;
				public new function HRESULT(IAzBizRuleContext *self, BSTR* pbstrBusinessRuleString) get_BusinessRuleString;
				public new function HRESULT(IAzBizRuleContext *self, BSTR bstrParameterName, VARIANT* pvarParameterValue) GetParameter;
			}
		}
		[CRepr]
		public struct IAzBizRuleParameters : IDispatch
		{
			public const new Guid IID = .(0xfc17685f, 0xe25d, 0x4dcd, 0xba, 0xe1, 0x27, 0x6e, 0xc9, 0x53, 0x3c, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddParameter(BSTR bstrParameterName, VARIANT varParameterValue) mut
			{
				return VT.AddParameter(&this, bstrParameterName, varParameterValue);
			}
			public HRESULT AddParameters(VARIANT varParameterNames, VARIANT varParameterValues) mut
			{
				return VT.AddParameters(&this, varParameterNames, varParameterValues);
			}
			public HRESULT GetParameterValue(BSTR bstrParameterName, VARIANT* pvarParameterValue) mut
			{
				return VT.GetParameterValue(&this, bstrParameterName, pvarParameterValue);
			}
			public HRESULT Remove(BSTR varParameterName) mut
			{
				return VT.Remove(&this, varParameterName);
			}
			public HRESULT RemoveAll() mut
			{
				return VT.RemoveAll(&this);
			}
			public HRESULT get_Count(uint32* plCount) mut
			{
				return VT.get_Count(&this, plCount);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzBizRuleParameters *self, BSTR bstrParameterName, VARIANT varParameterValue) AddParameter;
				public new function HRESULT(IAzBizRuleParameters *self, VARIANT varParameterNames, VARIANT varParameterValues) AddParameters;
				public new function HRESULT(IAzBizRuleParameters *self, BSTR bstrParameterName, VARIANT* pvarParameterValue) GetParameterValue;
				public new function HRESULT(IAzBizRuleParameters *self, BSTR varParameterName) Remove;
				public new function HRESULT(IAzBizRuleParameters *self) RemoveAll;
				public new function HRESULT(IAzBizRuleParameters *self, uint32* plCount) get_Count;
			}
		}
		[CRepr]
		public struct IAzBizRuleInterfaces : IDispatch
		{
			public const new Guid IID = .(0xe94128c7, 0xe9da, 0x44cc, 0xb0, 0xbd, 0x53, 0x03, 0x6f, 0x3a, 0xab, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddInterface(BSTR bstrInterfaceName, int32 lInterfaceFlag, VARIANT varInterface) mut
			{
				return VT.AddInterface(&this, bstrInterfaceName, lInterfaceFlag, varInterface);
			}
			public HRESULT AddInterfaces(VARIANT varInterfaceNames, VARIANT varInterfaceFlags, VARIANT varInterfaces) mut
			{
				return VT.AddInterfaces(&this, varInterfaceNames, varInterfaceFlags, varInterfaces);
			}
			public HRESULT GetInterfaceValue(BSTR bstrInterfaceName, int32* lInterfaceFlag, VARIANT* varInterface) mut
			{
				return VT.GetInterfaceValue(&this, bstrInterfaceName, lInterfaceFlag, varInterface);
			}
			public HRESULT Remove(BSTR bstrInterfaceName) mut
			{
				return VT.Remove(&this, bstrInterfaceName);
			}
			public HRESULT RemoveAll() mut
			{
				return VT.RemoveAll(&this);
			}
			public HRESULT get_Count(uint32* plCount) mut
			{
				return VT.get_Count(&this, plCount);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzBizRuleInterfaces *self, BSTR bstrInterfaceName, int32 lInterfaceFlag, VARIANT varInterface) AddInterface;
				public new function HRESULT(IAzBizRuleInterfaces *self, VARIANT varInterfaceNames, VARIANT varInterfaceFlags, VARIANT varInterfaces) AddInterfaces;
				public new function HRESULT(IAzBizRuleInterfaces *self, BSTR bstrInterfaceName, int32* lInterfaceFlag, VARIANT* varInterface) GetInterfaceValue;
				public new function HRESULT(IAzBizRuleInterfaces *self, BSTR bstrInterfaceName) Remove;
				public new function HRESULT(IAzBizRuleInterfaces *self) RemoveAll;
				public new function HRESULT(IAzBizRuleInterfaces *self, uint32* plCount) get_Count;
			}
		}
		[CRepr]
		public struct IAzClientContext3 : IAzClientContext2
		{
			public const new Guid IID = .(0x11894fde, 0x1deb, 0x4b4b, 0x89, 0x07, 0x6d, 0x1c, 0xda, 0x1f, 0x5d, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AccessCheck2(BSTR bstrObjectName, BSTR bstrScopeName, int32 lOperation, uint32* plResult) mut
			{
				return VT.AccessCheck2(&this, bstrObjectName, bstrScopeName, lOperation, plResult);
			}
			public HRESULT IsInRoleAssignment(BSTR bstrScopeName, BSTR bstrRoleName, int16* pbIsInRole) mut
			{
				return VT.IsInRoleAssignment(&this, bstrScopeName, bstrRoleName, pbIsInRole);
			}
			public HRESULT GetOperations(BSTR bstrScopeName, IAzOperations** ppOperationCollection) mut
			{
				return VT.GetOperations(&this, bstrScopeName, ppOperationCollection);
			}
			public HRESULT GetTasks(BSTR bstrScopeName, IAzTasks** ppTaskCollection) mut
			{
				return VT.GetTasks(&this, bstrScopeName, ppTaskCollection);
			}
			public HRESULT get_BizRuleParameters(IAzBizRuleParameters** ppBizRuleParam) mut
			{
				return VT.get_BizRuleParameters(&this, ppBizRuleParam);
			}
			public HRESULT get_BizRuleInterfaces(IAzBizRuleInterfaces** ppBizRuleInterfaces) mut
			{
				return VT.get_BizRuleInterfaces(&this, ppBizRuleInterfaces);
			}
			public HRESULT GetGroups(BSTR bstrScopeName, AZ_PROP_CONSTANTS ulOptions, VARIANT* pGroupArray) mut
			{
				return VT.GetGroups(&this, bstrScopeName, ulOptions, pGroupArray);
			}
			public HRESULT get_Sids(VARIANT* pStringSidArray) mut
			{
				return VT.get_Sids(&this, pStringSidArray);
			}
			[CRepr]
			public struct VTable : IAzClientContext2.VTable
			{
				public new function HRESULT(IAzClientContext3 *self, BSTR bstrObjectName, BSTR bstrScopeName, int32 lOperation, uint32* plResult) AccessCheck2;
				public new function HRESULT(IAzClientContext3 *self, BSTR bstrScopeName, BSTR bstrRoleName, int16* pbIsInRole) IsInRoleAssignment;
				public new function HRESULT(IAzClientContext3 *self, BSTR bstrScopeName, IAzOperations** ppOperationCollection) GetOperations;
				public new function HRESULT(IAzClientContext3 *self, BSTR bstrScopeName, IAzTasks** ppTaskCollection) GetTasks;
				public new function HRESULT(IAzClientContext3 *self, IAzBizRuleParameters** ppBizRuleParam) get_BizRuleParameters;
				public new function HRESULT(IAzClientContext3 *self, IAzBizRuleInterfaces** ppBizRuleInterfaces) get_BizRuleInterfaces;
				public new function HRESULT(IAzClientContext3 *self, BSTR bstrScopeName, AZ_PROP_CONSTANTS ulOptions, VARIANT* pGroupArray) GetGroups;
				public new function HRESULT(IAzClientContext3 *self, VARIANT* pStringSidArray) get_Sids;
			}
		}
		[CRepr]
		public struct IAzScope2 : IAzScope
		{
			public const new Guid IID = .(0xee9fe8c9, 0xc9f3, 0x40e2, 0xaa, 0x12, 0xd1, 0xd8, 0x59, 0x97, 0x27, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RoleDefinitions(IAzRoleDefinitions** ppRoleDefinitions) mut
			{
				return VT.get_RoleDefinitions(&this, ppRoleDefinitions);
			}
			public HRESULT CreateRoleDefinition(BSTR bstrRoleDefinitionName, IAzRoleDefinition** ppRoleDefinitions) mut
			{
				return VT.CreateRoleDefinition(&this, bstrRoleDefinitionName, ppRoleDefinitions);
			}
			public HRESULT OpenRoleDefinition(BSTR bstrRoleDefinitionName, IAzRoleDefinition** ppRoleDefinitions) mut
			{
				return VT.OpenRoleDefinition(&this, bstrRoleDefinitionName, ppRoleDefinitions);
			}
			public HRESULT DeleteRoleDefinition(BSTR bstrRoleDefinitionName) mut
			{
				return VT.DeleteRoleDefinition(&this, bstrRoleDefinitionName);
			}
			public HRESULT get_RoleAssignments(IAzRoleAssignments** ppRoleAssignments) mut
			{
				return VT.get_RoleAssignments(&this, ppRoleAssignments);
			}
			public HRESULT CreateRoleAssignment(BSTR bstrRoleAssignmentName, IAzRoleAssignment** ppRoleAssignment) mut
			{
				return VT.CreateRoleAssignment(&this, bstrRoleAssignmentName, ppRoleAssignment);
			}
			public HRESULT OpenRoleAssignment(BSTR bstrRoleAssignmentName, IAzRoleAssignment** ppRoleAssignment) mut
			{
				return VT.OpenRoleAssignment(&this, bstrRoleAssignmentName, ppRoleAssignment);
			}
			public HRESULT DeleteRoleAssignment(BSTR bstrRoleAssignmentName) mut
			{
				return VT.DeleteRoleAssignment(&this, bstrRoleAssignmentName);
			}
			[CRepr]
			public struct VTable : IAzScope.VTable
			{
				public new function HRESULT(IAzScope2 *self, IAzRoleDefinitions** ppRoleDefinitions) get_RoleDefinitions;
				public new function HRESULT(IAzScope2 *self, BSTR bstrRoleDefinitionName, IAzRoleDefinition** ppRoleDefinitions) CreateRoleDefinition;
				public new function HRESULT(IAzScope2 *self, BSTR bstrRoleDefinitionName, IAzRoleDefinition** ppRoleDefinitions) OpenRoleDefinition;
				public new function HRESULT(IAzScope2 *self, BSTR bstrRoleDefinitionName) DeleteRoleDefinition;
				public new function HRESULT(IAzScope2 *self, IAzRoleAssignments** ppRoleAssignments) get_RoleAssignments;
				public new function HRESULT(IAzScope2 *self, BSTR bstrRoleAssignmentName, IAzRoleAssignment** ppRoleAssignment) CreateRoleAssignment;
				public new function HRESULT(IAzScope2 *self, BSTR bstrRoleAssignmentName, IAzRoleAssignment** ppRoleAssignment) OpenRoleAssignment;
				public new function HRESULT(IAzScope2 *self, BSTR bstrRoleAssignmentName) DeleteRoleAssignment;
			}
		}
		[CRepr]
		public struct IAzApplication3 : IAzApplication2
		{
			public const new Guid IID = .(0x181c845e, 0x7196, 0x4a7d, 0xac, 0x2e, 0x02, 0x0c, 0x0b, 0xb7, 0xa3, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ScopeExists(BSTR bstrScopeName, int16* pbExist) mut
			{
				return VT.ScopeExists(&this, bstrScopeName, pbExist);
			}
			public HRESULT OpenScope2(BSTR bstrScopeName, IAzScope2** ppScope2) mut
			{
				return VT.OpenScope2(&this, bstrScopeName, ppScope2);
			}
			public HRESULT CreateScope2(BSTR bstrScopeName, IAzScope2** ppScope2) mut
			{
				return VT.CreateScope2(&this, bstrScopeName, ppScope2);
			}
			public HRESULT DeleteScope2(BSTR bstrScopeName) mut
			{
				return VT.DeleteScope2(&this, bstrScopeName);
			}
			public HRESULT get_RoleDefinitions(IAzRoleDefinitions** ppRoleDefinitions) mut
			{
				return VT.get_RoleDefinitions(&this, ppRoleDefinitions);
			}
			public HRESULT CreateRoleDefinition(BSTR bstrRoleDefinitionName, IAzRoleDefinition** ppRoleDefinitions) mut
			{
				return VT.CreateRoleDefinition(&this, bstrRoleDefinitionName, ppRoleDefinitions);
			}
			public HRESULT OpenRoleDefinition(BSTR bstrRoleDefinitionName, IAzRoleDefinition** ppRoleDefinitions) mut
			{
				return VT.OpenRoleDefinition(&this, bstrRoleDefinitionName, ppRoleDefinitions);
			}
			public HRESULT DeleteRoleDefinition(BSTR bstrRoleDefinitionName) mut
			{
				return VT.DeleteRoleDefinition(&this, bstrRoleDefinitionName);
			}
			public HRESULT get_RoleAssignments(IAzRoleAssignments** ppRoleAssignments) mut
			{
				return VT.get_RoleAssignments(&this, ppRoleAssignments);
			}
			public HRESULT CreateRoleAssignment(BSTR bstrRoleAssignmentName, IAzRoleAssignment** ppRoleAssignment) mut
			{
				return VT.CreateRoleAssignment(&this, bstrRoleAssignmentName, ppRoleAssignment);
			}
			public HRESULT OpenRoleAssignment(BSTR bstrRoleAssignmentName, IAzRoleAssignment** ppRoleAssignment) mut
			{
				return VT.OpenRoleAssignment(&this, bstrRoleAssignmentName, ppRoleAssignment);
			}
			public HRESULT DeleteRoleAssignment(BSTR bstrRoleAssignmentName) mut
			{
				return VT.DeleteRoleAssignment(&this, bstrRoleAssignmentName);
			}
			public HRESULT get_BizRulesEnabled(int16* pbEnabled) mut
			{
				return VT.get_BizRulesEnabled(&this, pbEnabled);
			}
			public HRESULT put_BizRulesEnabled(int16 bEnabled) mut
			{
				return VT.put_BizRulesEnabled(&this, bEnabled);
			}
			[CRepr]
			public struct VTable : IAzApplication2.VTable
			{
				public new function HRESULT(IAzApplication3 *self, BSTR bstrScopeName, int16* pbExist) ScopeExists;
				public new function HRESULT(IAzApplication3 *self, BSTR bstrScopeName, IAzScope2** ppScope2) OpenScope2;
				public new function HRESULT(IAzApplication3 *self, BSTR bstrScopeName, IAzScope2** ppScope2) CreateScope2;
				public new function HRESULT(IAzApplication3 *self, BSTR bstrScopeName) DeleteScope2;
				public new function HRESULT(IAzApplication3 *self, IAzRoleDefinitions** ppRoleDefinitions) get_RoleDefinitions;
				public new function HRESULT(IAzApplication3 *self, BSTR bstrRoleDefinitionName, IAzRoleDefinition** ppRoleDefinitions) CreateRoleDefinition;
				public new function HRESULT(IAzApplication3 *self, BSTR bstrRoleDefinitionName, IAzRoleDefinition** ppRoleDefinitions) OpenRoleDefinition;
				public new function HRESULT(IAzApplication3 *self, BSTR bstrRoleDefinitionName) DeleteRoleDefinition;
				public new function HRESULT(IAzApplication3 *self, IAzRoleAssignments** ppRoleAssignments) get_RoleAssignments;
				public new function HRESULT(IAzApplication3 *self, BSTR bstrRoleAssignmentName, IAzRoleAssignment** ppRoleAssignment) CreateRoleAssignment;
				public new function HRESULT(IAzApplication3 *self, BSTR bstrRoleAssignmentName, IAzRoleAssignment** ppRoleAssignment) OpenRoleAssignment;
				public new function HRESULT(IAzApplication3 *self, BSTR bstrRoleAssignmentName) DeleteRoleAssignment;
				public new function HRESULT(IAzApplication3 *self, int16* pbEnabled) get_BizRulesEnabled;
				public new function HRESULT(IAzApplication3 *self, int16 bEnabled) put_BizRulesEnabled;
			}
		}
		[CRepr]
		public struct IAzOperation2 : IAzOperation
		{
			public const new Guid IID = .(0x1f5ea01f, 0x44a2, 0x4184, 0x9c, 0x48, 0xa7, 0x5b, 0x4d, 0xcc, 0x8c, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RoleAssignments(BSTR bstrScopeName, int16 bRecursive, IAzRoleAssignments** ppRoleAssignments) mut
			{
				return VT.RoleAssignments(&this, bstrScopeName, bRecursive, ppRoleAssignments);
			}
			[CRepr]
			public struct VTable : IAzOperation.VTable
			{
				public new function HRESULT(IAzOperation2 *self, BSTR bstrScopeName, int16 bRecursive, IAzRoleAssignments** ppRoleAssignments) RoleAssignments;
			}
		}
		[CRepr]
		public struct IAzRoleDefinitions : IDispatch
		{
			public const new Guid IID = .(0x881f25a5, 0xd755, 0x4550, 0x95, 0x7a, 0xd5, 0x03, 0xa3, 0xb3, 0x40, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 Index, VARIANT* pvarObtPtr) mut
			{
				return VT.get_Item(&this, Index, pvarObtPtr);
			}
			public HRESULT get_Count(int32* plCount) mut
			{
				return VT.get_Count(&this, plCount);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnumPtr) mut
			{
				return VT.get__NewEnum(&this, ppEnumPtr);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzRoleDefinitions *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
				public new function HRESULT(IAzRoleDefinitions *self, int32* plCount) get_Count;
				public new function HRESULT(IAzRoleDefinitions *self, IUnknown** ppEnumPtr) get__NewEnum;
			}
		}
		[CRepr]
		public struct IAzRoleDefinition : IAzTask
		{
			public const new Guid IID = .(0xd97fcea1, 0x2599, 0x44f1, 0x9f, 0xc3, 0x58, 0xe9, 0xfb, 0xe0, 0x94, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RoleAssignments(BSTR bstrScopeName, int16 bRecursive, IAzRoleAssignments** ppRoleAssignments) mut
			{
				return VT.RoleAssignments(&this, bstrScopeName, bRecursive, ppRoleAssignments);
			}
			public HRESULT AddRoleDefinition(BSTR bstrRoleDefinition) mut
			{
				return VT.AddRoleDefinition(&this, bstrRoleDefinition);
			}
			public HRESULT DeleteRoleDefinition(BSTR bstrRoleDefinition) mut
			{
				return VT.DeleteRoleDefinition(&this, bstrRoleDefinition);
			}
			public HRESULT get_RoleDefinitions(IAzRoleDefinitions** ppRoleDefinitions) mut
			{
				return VT.get_RoleDefinitions(&this, ppRoleDefinitions);
			}
			[CRepr]
			public struct VTable : IAzTask.VTable
			{
				public new function HRESULT(IAzRoleDefinition *self, BSTR bstrScopeName, int16 bRecursive, IAzRoleAssignments** ppRoleAssignments) RoleAssignments;
				public new function HRESULT(IAzRoleDefinition *self, BSTR bstrRoleDefinition) AddRoleDefinition;
				public new function HRESULT(IAzRoleDefinition *self, BSTR bstrRoleDefinition) DeleteRoleDefinition;
				public new function HRESULT(IAzRoleDefinition *self, IAzRoleDefinitions** ppRoleDefinitions) get_RoleDefinitions;
			}
		}
		[CRepr]
		public struct IAzRoleAssignment : IAzRole
		{
			public const new Guid IID = .(0x55647d31, 0x0d5a, 0x4fa3, 0xb4, 0xac, 0x2b, 0x5f, 0x9a, 0xd5, 0xab, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddRoleDefinition(BSTR bstrRoleDefinition) mut
			{
				return VT.AddRoleDefinition(&this, bstrRoleDefinition);
			}
			public HRESULT DeleteRoleDefinition(BSTR bstrRoleDefinition) mut
			{
				return VT.DeleteRoleDefinition(&this, bstrRoleDefinition);
			}
			public HRESULT get_RoleDefinitions(IAzRoleDefinitions** ppRoleDefinitions) mut
			{
				return VT.get_RoleDefinitions(&this, ppRoleDefinitions);
			}
			public HRESULT get_Scope(IAzScope** ppScope) mut
			{
				return VT.get_Scope(&this, ppScope);
			}
			[CRepr]
			public struct VTable : IAzRole.VTable
			{
				public new function HRESULT(IAzRoleAssignment *self, BSTR bstrRoleDefinition) AddRoleDefinition;
				public new function HRESULT(IAzRoleAssignment *self, BSTR bstrRoleDefinition) DeleteRoleDefinition;
				public new function HRESULT(IAzRoleAssignment *self, IAzRoleDefinitions** ppRoleDefinitions) get_RoleDefinitions;
				public new function HRESULT(IAzRoleAssignment *self, IAzScope** ppScope) get_Scope;
			}
		}
		[CRepr]
		public struct IAzRoleAssignments : IDispatch
		{
			public const new Guid IID = .(0x9c80b900, 0xfceb, 0x4d73, 0xa0, 0xf4, 0xc8, 0x3b, 0x0b, 0xbf, 0x24, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 Index, VARIANT* pvarObtPtr) mut
			{
				return VT.get_Item(&this, Index, pvarObtPtr);
			}
			public HRESULT get_Count(int32* plCount) mut
			{
				return VT.get_Count(&this, plCount);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnumPtr) mut
			{
				return VT.get__NewEnum(&this, ppEnumPtr);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzRoleAssignments *self, int32 Index, VARIANT* pvarObtPtr) get_Item;
				public new function HRESULT(IAzRoleAssignments *self, int32* plCount) get_Count;
				public new function HRESULT(IAzRoleAssignments *self, IUnknown** ppEnumPtr) get__NewEnum;
			}
		}
		[CRepr]
		public struct IAzPrincipalLocator : IDispatch
		{
			public const new Guid IID = .(0xe5c3507d, 0xad6a, 0x4992, 0x9c, 0x7f, 0x74, 0xab, 0x48, 0x0b, 0x44, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_NameResolver(IAzNameResolver** ppNameResolver) mut
			{
				return VT.get_NameResolver(&this, ppNameResolver);
			}
			public HRESULT get_ObjectPicker(IAzObjectPicker** ppObjectPicker) mut
			{
				return VT.get_ObjectPicker(&this, ppObjectPicker);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzPrincipalLocator *self, IAzNameResolver** ppNameResolver) get_NameResolver;
				public new function HRESULT(IAzPrincipalLocator *self, IAzObjectPicker** ppObjectPicker) get_ObjectPicker;
			}
		}
		[CRepr]
		public struct IAzNameResolver : IDispatch
		{
			public const new Guid IID = .(0x504d0f15, 0x73e2, 0x43df, 0xa8, 0x70, 0xa6, 0x4f, 0x40, 0x71, 0x4f, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NameFromSid(BSTR bstrSid, int32* pSidType, BSTR* pbstrName) mut
			{
				return VT.NameFromSid(&this, bstrSid, pSidType, pbstrName);
			}
			public HRESULT NamesFromSids(VARIANT vSids, VARIANT* pvSidTypes, VARIANT* pvNames) mut
			{
				return VT.NamesFromSids(&this, vSids, pvSidTypes, pvNames);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzNameResolver *self, BSTR bstrSid, int32* pSidType, BSTR* pbstrName) NameFromSid;
				public new function HRESULT(IAzNameResolver *self, VARIANT vSids, VARIANT* pvSidTypes, VARIANT* pvNames) NamesFromSids;
			}
		}
		[CRepr]
		public struct IAzObjectPicker : IDispatch
		{
			public const new Guid IID = .(0x63130a48, 0x699a, 0x42d8, 0xbf, 0x01, 0xc6, 0x2a, 0xc3, 0xfb, 0x79, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPrincipals(HWND hParentWnd, BSTR bstrTitle, VARIANT* pvSidTypes, VARIANT* pvNames, VARIANT* pvSids) mut
			{
				return VT.GetPrincipals(&this, hParentWnd, bstrTitle, pvSidTypes, pvNames, pvSids);
			}
			public HRESULT get_Name(BSTR* pbstrName) mut
			{
				return VT.get_Name(&this, pbstrName);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAzObjectPicker *self, HWND hParentWnd, BSTR bstrTitle, VARIANT* pvSidTypes, VARIANT* pvNames, VARIANT* pvSids) GetPrincipals;
				public new function HRESULT(IAzObjectPicker *self, BSTR* pbstrName) get_Name;
			}
		}
		[CRepr]
		public struct IAzApplicationGroup2 : IAzApplicationGroup
		{
			public const new Guid IID = .(0x3f0613fc, 0xb71a, 0x464e, 0xa1, 0x1d, 0x5b, 0x88, 0x1a, 0x56, 0xce, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BizRule(BSTR* pbstrProp) mut
			{
				return VT.get_BizRule(&this, pbstrProp);
			}
			public HRESULT put_BizRule(BSTR bstrProp) mut
			{
				return VT.put_BizRule(&this, bstrProp);
			}
			public HRESULT get_BizRuleLanguage(BSTR* pbstrProp) mut
			{
				return VT.get_BizRuleLanguage(&this, pbstrProp);
			}
			public HRESULT put_BizRuleLanguage(BSTR bstrProp) mut
			{
				return VT.put_BizRuleLanguage(&this, bstrProp);
			}
			public HRESULT get_BizRuleImportedPath(BSTR* pbstrProp) mut
			{
				return VT.get_BizRuleImportedPath(&this, pbstrProp);
			}
			public HRESULT put_BizRuleImportedPath(BSTR bstrProp) mut
			{
				return VT.put_BizRuleImportedPath(&this, bstrProp);
			}
			public HRESULT RoleAssignments(BSTR bstrScopeName, int16 bRecursive, IAzRoleAssignments** ppRoleAssignments) mut
			{
				return VT.RoleAssignments(&this, bstrScopeName, bRecursive, ppRoleAssignments);
			}
			[CRepr]
			public struct VTable : IAzApplicationGroup.VTable
			{
				public new function HRESULT(IAzApplicationGroup2 *self, BSTR* pbstrProp) get_BizRule;
				public new function HRESULT(IAzApplicationGroup2 *self, BSTR bstrProp) put_BizRule;
				public new function HRESULT(IAzApplicationGroup2 *self, BSTR* pbstrProp) get_BizRuleLanguage;
				public new function HRESULT(IAzApplicationGroup2 *self, BSTR bstrProp) put_BizRuleLanguage;
				public new function HRESULT(IAzApplicationGroup2 *self, BSTR* pbstrProp) get_BizRuleImportedPath;
				public new function HRESULT(IAzApplicationGroup2 *self, BSTR bstrProp) put_BizRuleImportedPath;
				public new function HRESULT(IAzApplicationGroup2 *self, BSTR bstrScopeName, int16 bRecursive, IAzRoleAssignments** ppRoleAssignments) RoleAssignments;
			}
		}
		[CRepr]
		public struct IAzTask2 : IAzTask
		{
			public const new Guid IID = .(0x03a9a5ee, 0x48c8, 0x4832, 0x90, 0x25, 0xaa, 0xd5, 0x03, 0xc4, 0x65, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RoleAssignments(BSTR bstrScopeName, int16 bRecursive, IAzRoleAssignments** ppRoleAssignments) mut
			{
				return VT.RoleAssignments(&this, bstrScopeName, bRecursive, ppRoleAssignments);
			}
			[CRepr]
			public struct VTable : IAzTask.VTable
			{
				public new function HRESULT(IAzTask2 *self, BSTR bstrScopeName, int16 bRecursive, IAzRoleAssignments** ppRoleAssignments) RoleAssignments;
			}
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
