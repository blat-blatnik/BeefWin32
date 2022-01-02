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
		
		public enum SECURITY_INFO_PAGE_FLAGS : uint32
		{
			ADVANCED = 16,
			EDIT_AUDITS = 2,
			EDIT_PROPERTIES = 128,
		}
		public enum SI_OBJECT_INFO_FLAGS : uint32
		{
			AUDITS_ELEVATION_REQUIRED = 33554432,
			DISABLE_DENY_ACE = 2147483648,
			EDIT_EFFECTIVE = 131072,
			ENABLE_CENTRAL_POLICY = 1073741824,
			ENABLE_EDIT_ATTRIBUTE_CONDITION = 536870912,
			MAY_WRITE = 268435456,
			NO_ADDITIONAL_PERMISSION = 2097152,
			OWNER_ELEVATION_REQUIRED = 67108864,
			PERMS_ELEVATION_REQUIRED = 16777216,
			RESET_DACL = 262144,
			RESET_OWNER = 1048576,
			RESET_SACL = 524288,
			SCOPE_ELEVATION_REQUIRED = 134217728,
			VIEW_ONLY = 4194304,
		}
		public enum SI_PAGE_TYPE : int32
		{
			PERM = 0,
			ADVPERM = 1,
			AUDIT = 2,
			OWNER = 3,
			EFFECTIVE = 4,
			TAKEOWNERSHIP = 5,
			SHARE = 6,
		}
		public enum SI_PAGE_ACTIVATED : int32
		{
			DEFAULT = 0,
			PERM_ACTIVATED = 1,
			AUDIT_ACTIVATED = 2,
			OWNER_ACTIVATED = 3,
			EFFECTIVE_ACTIVATED = 4,
			SHARE_ACTIVATED = 5,
			CENTRAL_POLICY_ACTIVATED = 6,
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
			public SID_INFO[0] aSidInfo;
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
		
		[CRepr]
		public struct ISecurityInformation : IUnknown
		{
			public const new Guid IID = .(0x965fc360, 0x16ff, 0x11d0, 0x91, 0xcb, 0x00, 0xaa, 0x00, 0xbb, 0xb7, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObjectInformation(out SI_OBJECT_INFO pObjectInfo) mut => VT.GetObjectInformation(ref this, out pObjectInfo);
			public HRESULT GetSecurity(OBJECT_SECURITY_INFORMATION RequestedInformation, out SECURITY_DESCRIPTOR* ppSecurityDescriptor, BOOL fDefault) mut => VT.GetSecurity(ref this, RequestedInformation, out ppSecurityDescriptor, fDefault);
			public HRESULT SetSecurity(OBJECT_SECURITY_INFORMATION SecurityInformation, out SECURITY_DESCRIPTOR pSecurityDescriptor) mut => VT.SetSecurity(ref this, SecurityInformation, out pSecurityDescriptor);
			public HRESULT GetAccessRights(in Guid pguidObjectType, SECURITY_INFO_PAGE_FLAGS dwFlags, out SI_ACCESS* ppAccess, out uint32 pcAccesses, out uint32 piDefaultAccess) mut => VT.GetAccessRights(ref this, pguidObjectType, dwFlags, out ppAccess, out pcAccesses, out piDefaultAccess);
			public HRESULT MapGeneric(in Guid pguidObjectType, out uint8 pAceFlags, out uint32 pMask) mut => VT.MapGeneric(ref this, pguidObjectType, out pAceFlags, out pMask);
			public HRESULT GetInheritTypes(out SI_INHERIT_TYPE* ppInheritTypes, out uint32 pcInheritTypes) mut => VT.GetInheritTypes(ref this, out ppInheritTypes, out pcInheritTypes);
			public HRESULT PropertySheetPageCallback(HWND hwnd, PSPCB_MESSAGE uMsg, SI_PAGE_TYPE uPage) mut => VT.PropertySheetPageCallback(ref this, hwnd, uMsg, uPage);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityInformation self, out SI_OBJECT_INFO pObjectInfo) GetObjectInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityInformation self, OBJECT_SECURITY_INFORMATION RequestedInformation, out SECURITY_DESCRIPTOR* ppSecurityDescriptor, BOOL fDefault) GetSecurity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityInformation self, OBJECT_SECURITY_INFORMATION SecurityInformation, out SECURITY_DESCRIPTOR pSecurityDescriptor) SetSecurity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityInformation self, in Guid pguidObjectType, SECURITY_INFO_PAGE_FLAGS dwFlags, out SI_ACCESS* ppAccess, out uint32 pcAccesses, out uint32 piDefaultAccess) GetAccessRights;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityInformation self, in Guid pguidObjectType, out uint8 pAceFlags, out uint32 pMask) MapGeneric;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityInformation self, out SI_INHERIT_TYPE* ppInheritTypes, out uint32 pcInheritTypes) GetInheritTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityInformation self, HWND hwnd, PSPCB_MESSAGE uMsg, SI_PAGE_TYPE uPage) PropertySheetPageCallback;
			}
		}
		[CRepr]
		public struct ISecurityInformation2 : IUnknown
		{
			public const new Guid IID = .(0xc3ccfdb4, 0x6f88, 0x11d2, 0xa3, 0xce, 0x00, 0xc0, 0x4f, 0xb1, 0x78, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public BOOL IsDaclCanonical(out ACL pDacl) mut => VT.IsDaclCanonical(ref this, out pDacl);
			public HRESULT LookupSids(uint32 cSids, out PSID rgpSids, out IDataObject* ppdo) mut => VT.LookupSids(ref this, cSids, out rgpSids, out ppdo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] BOOL(ref ISecurityInformation2 self, out ACL pDacl) IsDaclCanonical;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityInformation2 self, uint32 cSids, out PSID rgpSids, out IDataObject* ppdo) LookupSids;
			}
		}
		[CRepr]
		public struct IEffectivePermission : IUnknown
		{
			public const new Guid IID = .(0x3853dc76, 0x9f35, 0x407c, 0x88, 0xa1, 0xd1, 0x93, 0x44, 0x36, 0x5f, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEffectivePermission(in Guid pguidObjectType, PSID pUserSid, PWSTR pszServerName, out SECURITY_DESCRIPTOR pSD, out OBJECT_TYPE_LIST* ppObjectTypeList, out uint32 pcObjectTypeListLength, out uint32* ppGrantedAccessList, out uint32 pcGrantedAccessListLength) mut => VT.GetEffectivePermission(ref this, pguidObjectType, pUserSid, pszServerName, out pSD, out ppObjectTypeList, out pcObjectTypeListLength, out ppGrantedAccessList, out pcGrantedAccessListLength);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEffectivePermission self, in Guid pguidObjectType, PSID pUserSid, PWSTR pszServerName, out SECURITY_DESCRIPTOR pSD, out OBJECT_TYPE_LIST* ppObjectTypeList, out uint32 pcObjectTypeListLength, out uint32* ppGrantedAccessList, out uint32 pcGrantedAccessListLength) GetEffectivePermission;
			}
		}
		[CRepr]
		public struct ISecurityObjectTypeInfo : IUnknown
		{
			public const new Guid IID = .(0xfc3066eb, 0x79ef, 0x444b, 0x91, 0x11, 0xd1, 0x8a, 0x75, 0xeb, 0xf2, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInheritSource(uint32 si, out ACL pACL, out INHERITED_FROMA* ppInheritArray) mut => VT.GetInheritSource(ref this, si, out pACL, out ppInheritArray);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityObjectTypeInfo self, uint32 si, out ACL pACL, out INHERITED_FROMA* ppInheritArray) GetInheritSource;
			}
		}
		[CRepr]
		public struct ISecurityInformation3 : IUnknown
		{
			public const new Guid IID = .(0xe2cdc9cc, 0x31bd, 0x4f8f, 0x8c, 0x8b, 0xb6, 0x41, 0xaf, 0x51, 0x6a, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFullResourceName(out PWSTR ppszResourceName) mut => VT.GetFullResourceName(ref this, out ppszResourceName);
			public HRESULT OpenElevatedEditor(HWND hWnd, SI_PAGE_TYPE uPage) mut => VT.OpenElevatedEditor(ref this, hWnd, uPage);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityInformation3 self, out PWSTR ppszResourceName) GetFullResourceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityInformation3 self, HWND hWnd, SI_PAGE_TYPE uPage) OpenElevatedEditor;
			}
		}
		[CRepr]
		public struct ISecurityInformation4 : IUnknown
		{
			public const new Guid IID = .(0xea961070, 0xcd14, 0x4621, 0xac, 0xe4, 0xf6, 0x3c, 0x03, 0xe5, 0x83, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSecondarySecurity(out SECURITY_OBJECT* pSecurityObjects, out uint32 pSecurityObjectCount) mut => VT.GetSecondarySecurity(ref this, out pSecurityObjects, out pSecurityObjectCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISecurityInformation4 self, out SECURITY_OBJECT* pSecurityObjects, out uint32 pSecurityObjectCount) GetSecondarySecurity;
			}
		}
		[CRepr]
		public struct IEffectivePermission2 : IUnknown
		{
			public const new Guid IID = .(0x941fabca, 0xdd47, 0x4fca, 0x90, 0xbb, 0xb0, 0xe1, 0x02, 0x55, 0xf2, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComputeEffectivePermissionWithSecondarySecurity(PSID pSid, PSID pDeviceSid, PWSTR pszServerName, SECURITY_OBJECT* pSecurityObjects, uint32 dwSecurityObjectCount, TOKEN_GROUPS* pUserGroups, AUTHZ_SID_OPERATION* pAuthzUserGroupsOperations, TOKEN_GROUPS* pDeviceGroups, AUTHZ_SID_OPERATION* pAuthzDeviceGroupsOperations, AUTHZ_SECURITY_ATTRIBUTES_INFORMATION* pAuthzUserClaims, AUTHZ_SECURITY_ATTRIBUTE_OPERATION* pAuthzUserClaimsOperations, AUTHZ_SECURITY_ATTRIBUTES_INFORMATION* pAuthzDeviceClaims, AUTHZ_SECURITY_ATTRIBUTE_OPERATION* pAuthzDeviceClaimsOperations, EFFPERM_RESULT_LIST* pEffpermResultLists) mut => VT.ComputeEffectivePermissionWithSecondarySecurity(ref this, pSid, pDeviceSid, pszServerName, pSecurityObjects, dwSecurityObjectCount, pUserGroups, pAuthzUserGroupsOperations, pDeviceGroups, pAuthzDeviceGroupsOperations, pAuthzUserClaims, pAuthzUserClaimsOperations, pAuthzDeviceClaims, pAuthzDeviceClaimsOperations, pEffpermResultLists);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEffectivePermission2 self, PSID pSid, PSID pDeviceSid, PWSTR pszServerName, SECURITY_OBJECT* pSecurityObjects, uint32 dwSecurityObjectCount, TOKEN_GROUPS* pUserGroups, AUTHZ_SID_OPERATION* pAuthzUserGroupsOperations, TOKEN_GROUPS* pDeviceGroups, AUTHZ_SID_OPERATION* pAuthzDeviceGroupsOperations, AUTHZ_SECURITY_ATTRIBUTES_INFORMATION* pAuthzUserClaims, AUTHZ_SECURITY_ATTRIBUTE_OPERATION* pAuthzUserClaimsOperations, AUTHZ_SECURITY_ATTRIBUTES_INFORMATION* pAuthzDeviceClaims, AUTHZ_SECURITY_ATTRIBUTE_OPERATION* pAuthzDeviceClaimsOperations, EFFPERM_RESULT_LIST* pEffpermResultLists) ComputeEffectivePermissionWithSecondarySecurity;
			}
		}
		
		// --- Functions ---
		
		[Import("aclui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HPROPSHEETPAGE CreateSecurityPage(ref ISecurityInformation psi);
		[Import("aclui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EditSecurity(HWND hwndOwner, ref ISecurityInformation psi);
		[Import("aclui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT EditSecurityAdvanced(HWND hwndOwner, ref ISecurityInformation psi, SI_PAGE_TYPE uSIPage);
	}
}
