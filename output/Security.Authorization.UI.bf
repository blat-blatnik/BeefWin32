using System;

// namespace Security.Authorization.UI
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 SI_EDIT_PERMS = 0;
		public const int32 SI_EDIT_OWNER = 1;
		public const int32 SI_CONTAINER = 4;
		public const int32 SI_READONLY = 8;
		public const int32 SI_RESET = 32;
		public const int32 SI_OWNER_READONLY = 64;
		public const int32 SI_OWNER_RECURSE = 256;
		public const int32 SI_NO_ACL_PROTECT = 512;
		public const int32 SI_NO_TREE_APPLY = 1024;
		public const int32 SI_PAGE_TITLE = 2048;
		public const int32 SI_SERVER_IS_DC = 4096;
		public const int32 SI_RESET_DACL_TREE = 16384;
		public const int32 SI_RESET_SACL_TREE = 32768;
		public const int32 SI_OBJECT_GUID = 65536;
		public const int32 SI_ACCESS_SPECIFIC = 65536;
		public const int32 SI_ACCESS_GENERAL = 131072;
		public const int32 SI_ACCESS_CONTAINER = 262144;
		public const int32 SI_ACCESS_PROPERTY = 524288;
		public const int32 DOBJ_RES_CONT = 1;
		public const int32 DOBJ_RES_ROOT = 2;
		public const int32 DOBJ_VOL_NTACLS = 4;
		public const int32 DOBJ_COND_NTACLS = 8;
		public const int32 DOBJ_RIBBON_LAUNCH = 16;
		public const uint32 SECURITY_OBJECT_ID_OBJECT_SD = 1;
		public const uint32 SECURITY_OBJECT_ID_SHARE = 2;
		public const uint32 SECURITY_OBJECT_ID_CENTRAL_POLICY = 3;
		public const uint32 SECURITY_OBJECT_ID_CENTRAL_ACCESS_RULE = 4;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum SECURITY_INFO_PAGE_FLAGS : uint32
		{
			SI_ADVANCED = 16,
			SI_EDIT_AUDITS = 2,
			SI_EDIT_PROPERTIES = 128,
		}
		[AllowDuplicates]
		public enum SI_OBJECT_INFO_FLAGS : uint32
		{
			SI_AUDITS_ELEVATION_REQUIRED = 33554432,
			SI_DISABLE_DENY_ACE = 2147483648,
			SI_EDIT_EFFECTIVE = 131072,
			SI_ENABLE_CENTRAL_POLICY = 1073741824,
			SI_ENABLE_EDIT_ATTRIBUTE_CONDITION = 536870912,
			SI_MAY_WRITE = 268435456,
			SI_NO_ADDITIONAL_PERMISSION = 2097152,
			SI_OWNER_ELEVATION_REQUIRED = 67108864,
			SI_PERMS_ELEVATION_REQUIRED = 16777216,
			SI_RESET_DACL = 262144,
			SI_RESET_OWNER = 1048576,
			SI_RESET_SACL = 524288,
			SI_SCOPE_ELEVATION_REQUIRED = 134217728,
			SI_VIEW_ONLY = 4194304,
		}
		[AllowDuplicates]
		public enum SI_PAGE_TYPE : int32
		{
			SI_PAGE_PERM = 0,
			SI_PAGE_ADVPERM = 1,
			SI_PAGE_AUDIT = 2,
			SI_PAGE_OWNER = 3,
			SI_PAGE_EFFECTIVE = 4,
			SI_PAGE_TAKEOWNERSHIP = 5,
			SI_PAGE_SHARE = 6,
		}
		[AllowDuplicates]
		public enum SI_PAGE_ACTIVATED : int32
		{
			SI_SHOW_DEFAULT = 0,
			SI_SHOW_PERM_ACTIVATED = 1,
			SI_SHOW_AUDIT_ACTIVATED = 2,
			SI_SHOW_OWNER_ACTIVATED = 3,
			SI_SHOW_EFFECTIVE_ACTIVATED = 4,
			SI_SHOW_SHARE_ACTIVATED = 5,
			SI_SHOW_CENTRAL_POLICY_ACTIVATED = 6,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct SI_OBJECT_INFO
		{
			public SI_OBJECT_INFO_FLAGS dwFlags;
			public HINSTANCE hInstance;
			public PWSTR pszServerName;
			public PWSTR pszObjectName;
			public PWSTR pszPageTitle;
			public Guid guidObjectType;
		}
		[CRepr]
		public struct SI_ACCESS
		{
			public Guid* pguid;
			public uint32 mask;
			public PWSTR pszName;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct SI_INHERIT_TYPE
		{
			public Guid* pguid;
			public ACE_FLAGS dwFlags;
			public PWSTR pszName;
		}
		[CRepr]
		public struct SID_INFO
		{
			public PSID pSid;
			public PWSTR pwzCommonName;
			public PWSTR pwzClass;
			public PWSTR pwzUPN;
		}
		[CRepr]
		public struct SID_INFO_LIST
		{
			public uint32 cItems;
			public SID_INFO[] aSidInfo;
		}
		[CRepr]
		public struct SECURITY_OBJECT
		{
			public PWSTR pwszName;
			public void* pData;
			public uint32 cbData;
			public void* pData2;
			public uint32 cbData2;
			public uint32 Id;
			public BOOLEAN fWellKnown;
		}
		[CRepr]
		public struct EFFPERM_RESULT_LIST
		{
			public BOOLEAN fEvaluated;
			public uint32 cObjectTypeListLength;
			public OBJECT_TYPE_LIST* pObjectTypeList;
			public uint32* pGrantedAccessList;
		}
		
		// --- COM Interfaces ---
		
		public struct ISecurityInformation {}
		public struct ISecurityInformation2 {}
		public struct IEffectivePermission {}
		public struct ISecurityObjectTypeInfo {}
		public struct ISecurityInformation3 {}
		public struct ISecurityInformation4 {}
		public struct IEffectivePermission2 {}
		
		// --- Functions ---
		
		[Import("aclui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HPROPSHEETPAGE CreateSecurityPage(ISecurityInformation psi);
		[Import("aclui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EditSecurity(HWND hwndOwner, ISecurityInformation psi);
		[Import("aclui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT EditSecurityAdvanced(HWND hwndOwner, ISecurityInformation psi, SI_PAGE_TYPE uSIPage);
		
	}
}
