using System;

// namespace Storage.Packaging.Appx
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 PACKAGE_PROPERTY_FRAMEWORK = 1;
		public const uint32 PACKAGE_PROPERTY_RESOURCE = 2;
		public const uint32 PACKAGE_PROPERTY_BUNDLE = 4;
		public const uint32 PACKAGE_PROPERTY_OPTIONAL = 8;
		public const uint32 PACKAGE_FILTER_HEAD = 16;
		public const uint32 PACKAGE_FILTER_DIRECT = 32;
		public const uint32 PACKAGE_FILTER_RESOURCE = 64;
		public const uint32 PACKAGE_FILTER_BUNDLE = 128;
		public const uint32 PACKAGE_INFORMATION_BASIC = 0;
		public const uint32 PACKAGE_INFORMATION_FULL = 256;
		public const uint32 PACKAGE_PROPERTY_DEVELOPMENT_MODE = 65536;
		public const uint32 PACKAGE_FILTER_OPTIONAL = 131072;
		public const uint32 PACKAGE_PROPERTY_IS_IN_RELATED_SET = 262144;
		public const uint32 PACKAGE_FILTER_IS_IN_RELATED_SET = 262144;
		public const uint32 PACKAGE_PROPERTY_STATIC = 524288;
		public const uint32 PACKAGE_FILTER_STATIC = 524288;
		public const uint32 PACKAGE_PROPERTY_DYNAMIC = 1048576;
		public const uint32 PACKAGE_FILTER_DYNAMIC = 1048576;
		public const uint32 PACKAGE_PROPERTY_HOSTRUNTIME = 2097152;
		public const uint32 PACKAGE_FILTER_HOSTRUNTIME = 2097152;
		public const uint32 PACKAGE_FILTER_ALL_LOADED = 0;
		public const uint32 PACKAGE_DEPENDENCY_RANK_DEFAULT = 0;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum APPX_COMPRESSION_OPTION : int32
		{
			APPX_COMPRESSION_OPTION_NONE = 0,
			APPX_COMPRESSION_OPTION_NORMAL = 1,
			APPX_COMPRESSION_OPTION_MAXIMUM = 2,
			APPX_COMPRESSION_OPTION_FAST = 3,
			APPX_COMPRESSION_OPTION_SUPERFAST = 4,
		}
		[AllowDuplicates]
		public enum APPX_FOOTPRINT_FILE_TYPE : int32
		{
			APPX_FOOTPRINT_FILE_TYPE_MANIFEST = 0,
			APPX_FOOTPRINT_FILE_TYPE_BLOCKMAP = 1,
			APPX_FOOTPRINT_FILE_TYPE_SIGNATURE = 2,
			APPX_FOOTPRINT_FILE_TYPE_CODEINTEGRITY = 3,
			APPX_FOOTPRINT_FILE_TYPE_CONTENTGROUPMAP = 4,
		}
		[AllowDuplicates]
		public enum APPX_BUNDLE_FOOTPRINT_FILE_TYPE : int32
		{
			APPX_BUNDLE_FOOTPRINT_FILE_TYPE_FIRST = 0,
			APPX_BUNDLE_FOOTPRINT_FILE_TYPE_MANIFEST = 0,
			APPX_BUNDLE_FOOTPRINT_FILE_TYPE_BLOCKMAP = 1,
			APPX_BUNDLE_FOOTPRINT_FILE_TYPE_SIGNATURE = 2,
			APPX_BUNDLE_FOOTPRINT_FILE_TYPE_LAST = 2,
		}
		[AllowDuplicates]
		public enum APPX_CAPABILITIES : uint32
		{
			APPX_CAPABILITY_INTERNET_CLIENT = 1,
			APPX_CAPABILITY_INTERNET_CLIENT_SERVER = 2,
			APPX_CAPABILITY_PRIVATE_NETWORK_CLIENT_SERVER = 4,
			APPX_CAPABILITY_DOCUMENTS_LIBRARY = 8,
			APPX_CAPABILITY_PICTURES_LIBRARY = 16,
			APPX_CAPABILITY_VIDEOS_LIBRARY = 32,
			APPX_CAPABILITY_MUSIC_LIBRARY = 64,
			APPX_CAPABILITY_ENTERPRISE_AUTHENTICATION = 128,
			APPX_CAPABILITY_SHARED_USER_CERTIFICATES = 256,
			APPX_CAPABILITY_REMOVABLE_STORAGE = 512,
			APPX_CAPABILITY_APPOINTMENTS = 1024,
			APPX_CAPABILITY_CONTACTS = 2048,
		}
		[AllowDuplicates]
		public enum APPX_PACKAGE_ARCHITECTURE : int32
		{
			APPX_PACKAGE_ARCHITECTURE_X86 = 0,
			APPX_PACKAGE_ARCHITECTURE_ARM = 5,
			APPX_PACKAGE_ARCHITECTURE_X64 = 9,
			APPX_PACKAGE_ARCHITECTURE_NEUTRAL = 11,
			APPX_PACKAGE_ARCHITECTURE_ARM64 = 12,
		}
		[AllowDuplicates]
		public enum APPX_PACKAGE_ARCHITECTURE2 : int32
		{
			APPX_PACKAGE_ARCHITECTURE2_X86 = 0,
			APPX_PACKAGE_ARCHITECTURE2_ARM = 5,
			APPX_PACKAGE_ARCHITECTURE2_X64 = 9,
			APPX_PACKAGE_ARCHITECTURE2_NEUTRAL = 11,
			APPX_PACKAGE_ARCHITECTURE2_ARM64 = 12,
			APPX_PACKAGE_ARCHITECTURE2_X86_ON_ARM64 = 14,
			APPX_PACKAGE_ARCHITECTURE2_UNKNOWN = 65535,
		}
		[AllowDuplicates]
		public enum APPX_BUNDLE_PAYLOAD_PACKAGE_TYPE : int32
		{
			APPX_BUNDLE_PAYLOAD_PACKAGE_TYPE_APPLICATION = 0,
			APPX_BUNDLE_PAYLOAD_PACKAGE_TYPE_RESOURCE = 1,
		}
		[AllowDuplicates]
		public enum DX_FEATURE_LEVEL : int32
		{
			DX_FEATURE_LEVEL_UNSPECIFIED = 0,
			DX_FEATURE_LEVEL_9 = 1,
			DX_FEATURE_LEVEL_10 = 2,
			DX_FEATURE_LEVEL_11 = 3,
		}
		[AllowDuplicates]
		public enum APPX_CAPABILITY_CLASS_TYPE : int32
		{
			APPX_CAPABILITY_CLASS_DEFAULT = 0,
			APPX_CAPABILITY_CLASS_GENERAL = 1,
			APPX_CAPABILITY_CLASS_RESTRICTED = 2,
			APPX_CAPABILITY_CLASS_WINDOWS = 4,
			APPX_CAPABILITY_CLASS_ALL = 7,
			APPX_CAPABILITY_CLASS_CUSTOM = 8,
		}
		[AllowDuplicates]
		public enum APPX_PACKAGING_CONTEXT_CHANGE_TYPE : int32
		{
			APPX_PACKAGING_CONTEXT_CHANGE_TYPE_START = 0,
			APPX_PACKAGING_CONTEXT_CHANGE_TYPE_CHANGE = 1,
			APPX_PACKAGING_CONTEXT_CHANGE_TYPE_DETAILS = 2,
			APPX_PACKAGING_CONTEXT_CHANGE_TYPE_END = 3,
		}
		[AllowDuplicates]
		public enum APPX_ENCRYPTED_PACKAGE_OPTIONS : uint32
		{
			APPX_ENCRYPTED_PACKAGE_OPTION_NONE = 0,
			APPX_ENCRYPTED_PACKAGE_OPTION_DIFFUSION = 1,
			APPX_ENCRYPTED_PACKAGE_OPTION_PAGE_HASHING = 2,
		}
		[AllowDuplicates]
		public enum APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION : int32
		{
			APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION_APPEND_DELTA = 0,
		}
		[AllowDuplicates]
		public enum APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTIONS : uint32
		{
			APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTION_NONE = 0,
			APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTION_SKIP_VALIDATION = 1,
			APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTION_LOCALIZED = 2,
		}
		[AllowDuplicates]
		public enum PackagePathType : int32
		{
			PackagePathType_Install = 0,
			PackagePathType_Mutable = 1,
			PackagePathType_Effective = 2,
			PackagePathType_MachineExternal = 3,
			PackagePathType_UserExternal = 4,
			PackagePathType_EffectiveExternal = 5,
		}
		[AllowDuplicates]
		public enum PackageOrigin : int32
		{
			PackageOrigin_Unknown = 0,
			PackageOrigin_Unsigned = 1,
			PackageOrigin_Inbox = 2,
			PackageOrigin_Store = 3,
			PackageOrigin_DeveloperUnsigned = 4,
			PackageOrigin_DeveloperSigned = 5,
			PackageOrigin_LineOfBusiness = 6,
		}
		[AllowDuplicates]
		public enum CreatePackageDependencyOptions : int32
		{
			CreatePackageDependencyOptions_None = 0,
			CreatePackageDependencyOptions_DoNotVerifyDependencyResolution = 1,
			CreatePackageDependencyOptions_ScopeIsSystem = 2,
		}
		[AllowDuplicates]
		public enum PackageDependencyLifetimeKind : int32
		{
			PackageDependencyLifetimeKind_Process = 0,
			PackageDependencyLifetimeKind_FilePath = 1,
			PackageDependencyLifetimeKind_RegistryKey = 2,
		}
		[AllowDuplicates]
		public enum AddPackageDependencyOptions : int32
		{
			AddPackageDependencyOptions_None = 0,
			AddPackageDependencyOptions_PrependIfRankCollision = 1,
		}
		[AllowDuplicates]
		public enum PackageDependencyProcessorArchitectures : int32
		{
			PackageDependencyProcessorArchitectures_None = 0,
			PackageDependencyProcessorArchitectures_Neutral = 1,
			PackageDependencyProcessorArchitectures_X86 = 2,
			PackageDependencyProcessorArchitectures_X64 = 4,
			PackageDependencyProcessorArchitectures_Arm = 8,
			PackageDependencyProcessorArchitectures_Arm64 = 16,
			PackageDependencyProcessorArchitectures_X86A64 = 32,
		}
		[AllowDuplicates]
		public enum AppPolicyLifecycleManagement : int32
		{
			AppPolicyLifecycleManagement_Unmanaged = 0,
			AppPolicyLifecycleManagement_Managed = 1,
		}
		[AllowDuplicates]
		public enum AppPolicyWindowingModel : int32
		{
			AppPolicyWindowingModel_None = 0,
			AppPolicyWindowingModel_Universal = 1,
			AppPolicyWindowingModel_ClassicDesktop = 2,
			AppPolicyWindowingModel_ClassicPhone = 3,
		}
		[AllowDuplicates]
		public enum AppPolicyMediaFoundationCodecLoading : int32
		{
			AppPolicyMediaFoundationCodecLoading_All = 0,
			AppPolicyMediaFoundationCodecLoading_InboxOnly = 1,
		}
		[AllowDuplicates]
		public enum AppPolicyClrCompat : int32
		{
			AppPolicyClrCompat_Other = 0,
			AppPolicyClrCompat_ClassicDesktop = 1,
			AppPolicyClrCompat_Universal = 2,
			AppPolicyClrCompat_PackagedDesktop = 3,
		}
		[AllowDuplicates]
		public enum AppPolicyThreadInitializationType : int32
		{
			AppPolicyThreadInitializationType_None = 0,
			AppPolicyThreadInitializationType_InitializeWinRT = 1,
		}
		[AllowDuplicates]
		public enum AppPolicyShowDeveloperDiagnostic : int32
		{
			AppPolicyShowDeveloperDiagnostic_None = 0,
			AppPolicyShowDeveloperDiagnostic_ShowUI = 1,
		}
		[AllowDuplicates]
		public enum AppPolicyProcessTerminationMethod : int32
		{
			AppPolicyProcessTerminationMethod_ExitProcess = 0,
			AppPolicyProcessTerminationMethod_TerminateProcess = 1,
		}
		[AllowDuplicates]
		public enum AppPolicyCreateFileAccess : int32
		{
			AppPolicyCreateFileAccess_Full = 0,
			AppPolicyCreateFileAccess_Limited = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct APPX_PACKAGE_SETTINGS
		{
			public BOOL forceZip32;
			public IUri hashMethod;
		}
		[CRepr]
		public struct APPX_PACKAGE_WRITER_PAYLOAD_STREAM
		{
			public IStream inputStream;
			public PWSTR fileName;
			public PWSTR contentType;
			public APPX_COMPRESSION_OPTION compressionOption;
		}
		[CRepr]
		public struct APPX_ENCRYPTED_PACKAGE_SETTINGS
		{
			public uint32 keyLength;
			public PWSTR encryptionAlgorithm;
			public BOOL useDiffusion;
			public IUri blockMapHashAlgorithm;
		}
		[CRepr]
		public struct APPX_ENCRYPTED_PACKAGE_SETTINGS2
		{
			public uint32 keyLength;
			public PWSTR encryptionAlgorithm;
			public IUri blockMapHashAlgorithm;
			public uint32 options;
		}
		[CRepr]
		public struct APPX_KEY_INFO
		{
			public uint32 keyLength;
			public uint32 keyIdLength;
			public uint8* key;
			public uint8* keyId;
		}
		[CRepr]
		public struct APPX_ENCRYPTED_EXEMPTIONS
		{
			public uint32 count;
			public PWSTR* plainTextFiles;
		}
		[CRepr]
		public struct PACKAGE_VERSION
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 Version;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint16 Revision;
					public uint16 Build;
					public uint16 Minor;
					public uint16 Major;
				}
			}
		}
		[CRepr]
		public struct PACKAGE_ID
		{
			public uint32 reserved;
			public uint32 processorArchitecture;
			public PACKAGE_VERSION version;
			public PWSTR name;
			public PWSTR publisher;
			public PWSTR resourceId;
			public PWSTR publisherId;
		}
		[CRepr]
		public struct _PACKAGE_INFO_REFERENCE
		{
			public void* reserved;
		}
		[CRepr]
		public struct PACKAGE_INFO
		{
			public uint32 reserved;
			public uint32 flags;
			public PWSTR path;
			public PWSTR packageFullName;
			public PWSTR packageFamilyName;
			public PACKAGE_ID packageId;
		}
		[CRepr]
		public struct PACKAGEDEPENDENCY_CONTEXT__
		{
			public int32 unused;
		}
		[CRepr]
		public struct PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__
		{
			public int32 unused;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_AppxFactory = .(0x5842a140, 0xff9f, 0x4166, 0x8f, 0x5c, 0x62, 0xf5, 0xb7, 0xb0, 0xc7, 0x81);
		public const Guid CLSID_AppxBundleFactory = .(0x378e0446, 0x5384, 0x43b7, 0x88, 0x77, 0xe7, 0xdb, 0xdd, 0x88, 0x34, 0x46);
		public const Guid CLSID_AppxPackagingDiagnosticEventSinkManager = .(0x50ca0a46, 0x1588, 0x4161, 0x8e, 0xd2, 0xef, 0x9e, 0x46, 0x9c, 0xed, 0x5d);
		public const Guid CLSID_AppxEncryptionFactory = .(0xdc664fdd, 0xd868, 0x46ee, 0x87, 0x80, 0x8d, 0x19, 0x6c, 0xb7, 0x39, 0xf7);
		public const Guid CLSID_AppxPackageEditor = .(0xf004f2ca, 0xaebc, 0x4b0d, 0xbf, 0x58, 0xe5, 0x16, 0xd5, 0xbc, 0xc0, 0xab);
		
		// --- COM Interfaces ---
		
		public struct IAppxFactory {}
		public struct IAppxFactory2 {}
		public struct IAppxPackageReader {}
		public struct IAppxPackageWriter {}
		public struct IAppxPackageWriter2 {}
		public struct IAppxPackageWriter3 {}
		public struct IAppxFile {}
		public struct IAppxFilesEnumerator {}
		public struct IAppxBlockMapReader {}
		public struct IAppxBlockMapFile {}
		public struct IAppxBlockMapFilesEnumerator {}
		public struct IAppxBlockMapBlock {}
		public struct IAppxBlockMapBlocksEnumerator {}
		public struct IAppxManifestReader {}
		public struct IAppxManifestReader2 {}
		public struct IAppxManifestReader3 {}
		public struct IAppxManifestReader4 {}
		public struct IAppxManifestReader5 {}
		public struct IAppxManifestReader6 {}
		public struct IAppxManifestReader7 {}
		public struct IAppxManifestDriverDependenciesEnumerator {}
		public struct IAppxManifestDriverDependency {}
		public struct IAppxManifestDriverConstraintsEnumerator {}
		public struct IAppxManifestDriverConstraint {}
		public struct IAppxManifestOSPackageDependenciesEnumerator {}
		public struct IAppxManifestOSPackageDependency {}
		public struct IAppxManifestHostRuntimeDependenciesEnumerator {}
		public struct IAppxManifestHostRuntimeDependency {}
		public struct IAppxManifestHostRuntimeDependency2 {}
		public struct IAppxManifestOptionalPackageInfo {}
		public struct IAppxManifestMainPackageDependenciesEnumerator {}
		public struct IAppxManifestMainPackageDependency {}
		public struct IAppxManifestPackageId {}
		public struct IAppxManifestPackageId2 {}
		public struct IAppxManifestProperties {}
		public struct IAppxManifestTargetDeviceFamiliesEnumerator {}
		public struct IAppxManifestTargetDeviceFamily {}
		public struct IAppxManifestPackageDependenciesEnumerator {}
		public struct IAppxManifestPackageDependency {}
		public struct IAppxManifestPackageDependency2 {}
		public struct IAppxManifestPackageDependency3 {}
		public struct IAppxManifestResourcesEnumerator {}
		public struct IAppxManifestDeviceCapabilitiesEnumerator {}
		public struct IAppxManifestCapabilitiesEnumerator {}
		public struct IAppxManifestApplicationsEnumerator {}
		public struct IAppxManifestApplication {}
		public struct IAppxManifestQualifiedResourcesEnumerator {}
		public struct IAppxManifestQualifiedResource {}
		public struct IAppxBundleFactory {}
		public struct IAppxBundleWriter {}
		public struct IAppxBundleWriter2 {}
		public struct IAppxBundleWriter3 {}
		public struct IAppxBundleWriter4 {}
		public struct IAppxBundleReader {}
		public struct IAppxBundleManifestReader {}
		public struct IAppxBundleManifestReader2 {}
		public struct IAppxBundleManifestPackageInfoEnumerator {}
		public struct IAppxBundleManifestPackageInfo {}
		public struct IAppxBundleManifestPackageInfo2 {}
		public struct IAppxBundleManifestPackageInfo3 {}
		public struct IAppxBundleManifestPackageInfo4 {}
		public struct IAppxBundleManifestOptionalBundleInfoEnumerator {}
		public struct IAppxBundleManifestOptionalBundleInfo {}
		public struct IAppxContentGroupFilesEnumerator {}
		public struct IAppxContentGroup {}
		public struct IAppxContentGroupsEnumerator {}
		public struct IAppxContentGroupMapReader {}
		public struct IAppxSourceContentGroupMapReader {}
		public struct IAppxContentGroupMapWriter {}
		public struct IAppxPackagingDiagnosticEventSink {}
		public struct IAppxPackagingDiagnosticEventSinkManager {}
		public struct IAppxEncryptionFactory {}
		public struct IAppxEncryptionFactory2 {}
		public struct IAppxEncryptionFactory3 {}
		public struct IAppxEncryptionFactory4 {}
		public struct IAppxEncryptedPackageWriter {}
		public struct IAppxEncryptedPackageWriter2 {}
		public struct IAppxEncryptedBundleWriter {}
		public struct IAppxEncryptedBundleWriter2 {}
		public struct IAppxEncryptedBundleWriter3 {}
		public struct IAppxPackageEditor {}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackageId(uint32* bufferLength, uint8* buffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackageFullName(uint32* packageFullNameLength, char16* packageFullName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackageFamilyName(uint32* packageFamilyNameLength, char16* packageFamilyName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackagePath(uint32* pathLength, char16* path);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageId(HANDLE hProcess, uint32* bufferLength, uint8* buffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageFullName(HANDLE hProcess, uint32* packageFullNameLength, char16* packageFullName);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageFullNameFromToken(HANDLE token, uint32* packageFullNameLength, char16* packageFullName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageFamilyName(HANDLE hProcess, uint32* packageFamilyNameLength, char16* packageFamilyName);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageFamilyNameFromToken(HANDLE token, uint32* packageFamilyNameLength, char16* packageFamilyName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackagePath(PACKAGE_ID* packageId, uint32 reserved, uint32* pathLength, char16* path);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackagePathByFullName(PWSTR packageFullName, uint32* pathLength, char16* path);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetStagedPackagePathByFullName(PWSTR packageFullName, uint32* pathLength, char16* path);
		[Import("api-ms-win-appmodel-runtime-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackagePathByFullName2(PWSTR packageFullName, PackagePathType packagePathType, uint32* pathLength, char16* path);
		[Import("api-ms-win-appmodel-runtime-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetStagedPackagePathByFullName2(PWSTR packageFullName, PackagePathType packagePathType, uint32* pathLength, char16* path);
		[Import("api-ms-win-appmodel-runtime-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackageInfo2(uint32 flags, PackagePathType packagePathType, uint32* bufferLength, uint8* buffer, uint32* count);
		[Import("api-ms-win-appmodel-runtime-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackagePath2(PackagePathType packagePathType, uint32* pathLength, char16* path);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentApplicationUserModelId(uint32* applicationUserModelIdLength, char16* applicationUserModelId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetApplicationUserModelId(HANDLE hProcess, uint32* applicationUserModelIdLength, char16* applicationUserModelId);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetApplicationUserModelIdFromToken(HANDLE token, uint32* applicationUserModelIdLength, char16* applicationUserModelId);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VerifyPackageFullName(PWSTR packageFullName);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VerifyPackageFamilyName(PWSTR packageFamilyName);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VerifyPackageId(PACKAGE_ID* packageId);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VerifyApplicationUserModelId(PWSTR applicationUserModelId);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VerifyPackageRelativeApplicationId(PWSTR packageRelativeApplicationId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PackageIdFromFullName(PWSTR packageFullName, uint32 flags, uint32* bufferLength, uint8* buffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PackageFullNameFromId(PACKAGE_ID* packageId, uint32* packageFullNameLength, char16* packageFullName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PackageFamilyNameFromId(PACKAGE_ID* packageId, uint32* packageFamilyNameLength, char16* packageFamilyName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PackageFamilyNameFromFullName(PWSTR packageFullName, uint32* packageFamilyNameLength, char16* packageFamilyName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PackageNameAndPublisherIdFromFamilyName(PWSTR packageFamilyName, uint32* packageNameLength, char16* packageName, uint32* packagePublisherIdLength, char16* packagePublisherId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 FormatApplicationUserModelId(PWSTR packageFamilyName, PWSTR packageRelativeApplicationId, uint32* applicationUserModelIdLength, char16* applicationUserModelId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ParseApplicationUserModelId(PWSTR applicationUserModelId, uint32* packageFamilyNameLength, char16* packageFamilyName, uint32* packageRelativeApplicationIdLength, char16* packageRelativeApplicationId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackagesByPackageFamily(PWSTR packageFamilyName, uint32* count, PWSTR* packageFullNames, uint32* bufferLength, char16* buffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 FindPackagesByPackageFamily(PWSTR packageFamilyName, uint32 packageFilters, uint32* count, PWSTR* packageFullNames, uint32* bufferLength, char16* buffer, uint32* packageProperties);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetStagedPackageOrigin(PWSTR packageFullName, PackageOrigin* origin);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackageInfo(uint32 flags, uint32* bufferLength, uint8* buffer, uint32* count);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 OpenPackageInfoByFullName(PWSTR packageFullName, uint32 reserved, _PACKAGE_INFO_REFERENCE** packageInfoReference);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 OpenPackageInfoByFullNameForUser(PSID userSid, PWSTR packageFullName, uint32 reserved, _PACKAGE_INFO_REFERENCE** packageInfoReference);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ClosePackageInfo(_PACKAGE_INFO_REFERENCE* packageInfoReference);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageInfo(_PACKAGE_INFO_REFERENCE* packageInfoReference, uint32 flags, uint32* bufferLength, uint8* buffer, uint32* count);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageApplicationIds(_PACKAGE_INFO_REFERENCE* packageInfoReference, uint32* bufferLength, uint8* buffer, uint32* count);
		[Import("api-ms-win-appmodel-runtime-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageInfo2(_PACKAGE_INFO_REFERENCE* packageInfoReference, uint32 flags, PackagePathType packagePathType, uint32* bufferLength, uint8* buffer, uint32* count);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CheckIsMSIXPackage(PWSTR packageFullName, BOOL* isMSIXPackage);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TryCreatePackageDependency(PSID user, PWSTR packageFamilyName, PACKAGE_VERSION minVersion, PackageDependencyProcessorArchitectures packageDependencyProcessorArchitectures, PackageDependencyLifetimeKind lifetimeKind, PWSTR lifetimeArtifact, CreatePackageDependencyOptions options, PWSTR* packageDependencyId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeletePackageDependency(PWSTR packageDependencyId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AddPackageDependency(PWSTR packageDependencyId, int32 rank, AddPackageDependencyOptions options, PACKAGEDEPENDENCY_CONTEXT__** packageDependencyContext, PWSTR* packageFullName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RemovePackageDependency(PACKAGEDEPENDENCY_CONTEXT__* packageDependencyContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetResolvedPackageFullNameForPackageDependency(PWSTR packageDependencyId, PWSTR* packageFullName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetIdForPackageDependencyContext(PACKAGEDEPENDENCY_CONTEXT__* packageDependencyContext, PWSTR* packageDependencyId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetLifecycleManagement(HANDLE processToken, AppPolicyLifecycleManagement* policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetWindowingModel(HANDLE processToken, AppPolicyWindowingModel* policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetMediaFoundationCodecLoading(HANDLE processToken, AppPolicyMediaFoundationCodecLoading* policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetClrCompat(HANDLE processToken, AppPolicyClrCompat* policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetThreadInitializationType(HANDLE processToken, AppPolicyThreadInitializationType* policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetShowDeveloperDiagnostic(HANDLE processToken, AppPolicyShowDeveloperDiagnostic* policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetProcessTerminationMethod(HANDLE processToken, AppPolicyProcessTerminationMethod* policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetCreateFileAccess(HANDLE processToken, AppPolicyCreateFileAccess* policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreatePackageVirtualizationContext(PWSTR packageFamilyName, PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__** context);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ActivatePackageVirtualizationContext(PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__* context, uint* cookie);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ReleasePackageVirtualizationContext(PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__* context);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void DeactivatePackageVirtualizationContext(uint cookie);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DuplicatePackageVirtualizationContext(PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__* sourceContext, PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__** destContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__* GetCurrentPackageVirtualizationContext();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetProcessesInVirtualizationContext(PWSTR packageFamilyName, uint32* count, HANDLE** processes);
		
	}
}
