using System;

// namespace Security.AppLocker
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 SAFER_SCOPEID_MACHINE = 1;
		public const uint32 SAFER_SCOPEID_USER = 2;
		public const uint32 SAFER_LEVELID_FULLYTRUSTED = 262144;
		public const uint32 SAFER_LEVELID_NORMALUSER = 131072;
		public const uint32 SAFER_LEVELID_CONSTRAINED = 65536;
		public const uint32 SAFER_LEVELID_UNTRUSTED = 4096;
		public const uint32 SAFER_LEVELID_DISALLOWED = 0;
		public const uint32 SAFER_LEVEL_OPEN = 1;
		public const uint32 SAFER_MAX_FRIENDLYNAME_SIZE = 256;
		public const uint32 SAFER_MAX_DESCRIPTION_SIZE = 256;
		public const uint32 SAFER_MAX_HASH_SIZE = 64;
		public const uint32 SAFER_CRITERIA_IMAGEPATH = 1;
		public const uint32 SAFER_CRITERIA_NOSIGNEDHASH = 2;
		public const uint32 SAFER_CRITERIA_IMAGEHASH = 4;
		public const uint32 SAFER_CRITERIA_AUTHENTICODE = 8;
		public const uint32 SAFER_CRITERIA_URLZONE = 16;
		public const uint32 SAFER_CRITERIA_APPX_PACKAGE = 32;
		public const uint32 SAFER_CRITERIA_IMAGEPATH_NT = 4096;
		public const uint32 SAFER_POLICY_JOBID_MASK = 4278190080;
		public const uint32 SAFER_POLICY_JOBID_CONSTRAINED = 67108864;
		public const uint32 SAFER_POLICY_JOBID_UNTRUSTED = 50331648;
		public const uint32 SAFER_POLICY_ONLY_EXES = 65536;
		public const uint32 SAFER_POLICY_SANDBOX_INERT = 131072;
		public const uint32 SAFER_POLICY_HASH_DUPLICATE = 262144;
		public const uint32 SAFER_POLICY_ONLY_AUDIT = 4096;
		public const uint32 SAFER_POLICY_BLOCK_CLIENT_UI = 8192;
		public const uint32 SAFER_POLICY_UIFLAGS_MASK = 255;
		public const uint32 SAFER_POLICY_UIFLAGS_INFORMATION_PROMPT = 1;
		public const uint32 SAFER_POLICY_UIFLAGS_OPTION_PROMPT = 2;
		public const uint32 SAFER_POLICY_UIFLAGS_HIDDEN = 4;
		
		// --- Enums ---
		
		public enum SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS : uint32
		{
			NULL_IF_EQUAL = 1,
			COMPARE_ONLY = 2,
			MAKE_INERT = 4,
			WANT_FLAGS = 8,
		}
		public enum SAFER_POLICY_INFO_CLASS : int32
		{
			LevelList = 1,
			EnableTransparentEnforcement = 2,
			DefaultLevel = 3,
			EvaluateUserScope = 4,
			ScopeFlags = 5,
			DefaultLevelFlags = 6,
			AuthenticodeEnabled = 7,
		}
		public enum SAFER_OBJECT_INFO_CLASS : int32
		{
			LevelId = 1,
			ScopeId = 2,
			FriendlyName = 3,
			Description = 4,
			Builtin = 5,
			Disallowed = 6,
			DisableMaxPrivilege = 7,
			InvertDeletedPrivileges = 8,
			DeletedPrivileges = 9,
			DefaultOwner = 10,
			SidsToDisable = 11,
			RestrictedSidsInverted = 12,
			RestrictedSidsAdded = 13,
			AllIdentificationGuids = 14,
			SingleIdentification = 15,
			ExtendedError = 16,
		}
		public enum SAFER_IDENTIFICATION_TYPES : int32
		{
			Default = 0,
			TypeImageName = 1,
			TypeImageHash = 2,
			TypeUrlZone = 3,
			TypeCertificate = 4,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct SAFER_CODE_PROPERTIES_V1
		{
			public uint32 cbSize;
			public uint32 dwCheckFlags;
			public PWSTR ImagePath;
			public HANDLE hImageFileHandle;
			public uint32 UrlZoneId;
			public uint8[64] ImageHash;
			public uint32 dwImageHashSize;
			public LARGE_INTEGER ImageSize;
			public uint32 HashAlgorithm;
			public uint8* pByteBlock;
			public HWND hWndParent;
			public uint32 dwWVTUIChoice;
		}
		[CRepr]
		public struct SAFER_CODE_PROPERTIES_V2
		{
			public uint32 cbSize;
			public uint32 dwCheckFlags;
			public PWSTR ImagePath;
			public HANDLE hImageFileHandle;
			public uint32 UrlZoneId;
			public uint8[64] ImageHash;
			public uint32 dwImageHashSize;
			public LARGE_INTEGER ImageSize;
			public uint32 HashAlgorithm;
			public uint8* pByteBlock;
			public HWND hWndParent;
			public uint32 dwWVTUIChoice;
			public PWSTR PackageMoniker;
			public PWSTR PackagePublisher;
			public PWSTR PackageName;
			public uint64 PackageVersion;
			public BOOL PackageIsFramework;
		}
		[CRepr]
		public struct SAFER_IDENTIFICATION_HEADER
		{
			public SAFER_IDENTIFICATION_TYPES dwIdentificationType;
			public uint32 cbStructSize;
			public Guid IdentificationGuid;
			public FILETIME lastModified;
		}
		[CRepr]
		public struct SAFER_PATHNAME_IDENTIFICATION
		{
			public SAFER_IDENTIFICATION_HEADER header;
			public char16[256] Description;
			public PWSTR ImageName;
			public uint32 dwSaferFlags;
		}
		[CRepr]
		public struct SAFER_HASH_IDENTIFICATION
		{
			public SAFER_IDENTIFICATION_HEADER header;
			public char16[256] Description;
			public char16[256] FriendlyName;
			public uint32 HashSize;
			public uint8[64] ImageHash;
			public uint32 HashAlgorithm;
			public LARGE_INTEGER ImageSize;
			public uint32 dwSaferFlags;
		}
		[CRepr]
		public struct SAFER_HASH_IDENTIFICATION2
		{
			public SAFER_HASH_IDENTIFICATION hashIdentification;
			public uint32 HashSize;
			public uint8[64] ImageHash;
			public uint32 HashAlgorithm;
		}
		[CRepr]
		public struct SAFER_URLZONE_IDENTIFICATION
		{
			public SAFER_IDENTIFICATION_HEADER header;
			public uint32 UrlZoneId;
			public uint32 dwSaferFlags;
		}
		
		// --- Functions ---
		
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SaferGetPolicyInformation(uint32 dwScopeId, SAFER_POLICY_INFO_CLASS SaferPolicyInfoClass, uint32 InfoBufferSize, void* InfoBuffer, out uint32 InfoBufferRetSize, void* lpReserved);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SaferSetPolicyInformation(uint32 dwScopeId, SAFER_POLICY_INFO_CLASS SaferPolicyInfoClass, uint32 InfoBufferSize, void* InfoBuffer, void* lpReserved);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SaferCreateLevel(uint32 dwScopeId, uint32 dwLevelId, uint32 OpenFlags, out SAFER_LEVEL_HANDLE pLevelHandle, void* lpReserved);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SaferCloseLevel(SAFER_LEVEL_HANDLE hLevelHandle);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SaferIdentifyLevel(uint32 dwNumProperties, SAFER_CODE_PROPERTIES_V2* pCodeProperties, out SAFER_LEVEL_HANDLE pLevelHandle, void* lpReserved);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SaferComputeTokenFromLevel(SAFER_LEVEL_HANDLE LevelHandle, HANDLE InAccessToken, out HANDLE OutAccessToken, SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS dwFlags, void* lpReserved);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SaferGetLevelInformation(SAFER_LEVEL_HANDLE LevelHandle, SAFER_OBJECT_INFO_CLASS dwInfoType, void* lpQueryBuffer, uint32 dwInBufferSize, out uint32 lpdwOutBufferSize);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SaferSetLevelInformation(SAFER_LEVEL_HANDLE LevelHandle, SAFER_OBJECT_INFO_CLASS dwInfoType, void* lpQueryBuffer, uint32 dwInBufferSize);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SaferRecordEventLogEntry(SAFER_LEVEL_HANDLE hLevel, PWSTR szTargetPath, void* lpReserved);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SaferiIsExecutableFileType(PWSTR szFullPathname, BOOLEAN bFromShellExecute);
	}
}
