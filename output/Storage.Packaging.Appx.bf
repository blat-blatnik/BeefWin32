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
			public IUri* hashMethod;
		}
		[CRepr]
		public struct APPX_PACKAGE_WRITER_PAYLOAD_STREAM
		{
			public IStream* inputStream;
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
			public IUri* blockMapHashAlgorithm;
		}
		[CRepr]
		public struct APPX_ENCRYPTED_PACKAGE_SETTINGS2
		{
			public uint32 keyLength;
			public PWSTR encryptionAlgorithm;
			public IUri* blockMapHashAlgorithm;
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
		
		[CRepr]
		public struct IAppxFactory : IUnknown
		{
			public const new Guid IID = .(0xbeb94909, 0xe451, 0x438b, 0xb5, 0xa7, 0xd7, 0x9e, 0x76, 0x7b, 0x75, 0xd8);
			
			public function HRESULT(IAppxFactory *self, IStream* outputStream, APPX_PACKAGE_SETTINGS* settings, IAppxPackageWriter** packageWriter) CreatePackageWriter;
			public function HRESULT(IAppxFactory *self, IStream* inputStream, IAppxPackageReader** packageReader) CreatePackageReader;
			public function HRESULT(IAppxFactory *self, IStream* inputStream, IAppxManifestReader** manifestReader) CreateManifestReader;
			public function HRESULT(IAppxFactory *self, IStream* inputStream, IAppxBlockMapReader** blockMapReader) CreateBlockMapReader;
			public function HRESULT(IAppxFactory *self, IStream* blockMapStream, PWSTR signatureFileName, IAppxBlockMapReader** blockMapReader) CreateValidatedBlockMapReader;
		}
		[CRepr]
		public struct IAppxFactory2 : IUnknown
		{
			public const new Guid IID = .(0xf1346df2, 0xc282, 0x4e22, 0xb9, 0x18, 0x74, 0x3a, 0x92, 0x9a, 0x8d, 0x55);
			
			public function HRESULT(IAppxFactory2 *self, IStream* inputStream, IAppxContentGroupMapReader** contentGroupMapReader) CreateContentGroupMapReader;
			public function HRESULT(IAppxFactory2 *self, IStream* inputStream, IAppxSourceContentGroupMapReader** reader) CreateSourceContentGroupMapReader;
			public function HRESULT(IAppxFactory2 *self, IStream* stream, IAppxContentGroupMapWriter** contentGroupMapWriter) CreateContentGroupMapWriter;
		}
		[CRepr]
		public struct IAppxPackageReader : IUnknown
		{
			public const new Guid IID = .(0xb5c49650, 0x99bc, 0x481c, 0x9a, 0x34, 0x3d, 0x53, 0xa4, 0x10, 0x67, 0x08);
			
			public function HRESULT(IAppxPackageReader *self, IAppxBlockMapReader** blockMapReader) GetBlockMap;
			public function HRESULT(IAppxPackageReader *self, APPX_FOOTPRINT_FILE_TYPE type, IAppxFile** file) GetFootprintFile;
			public function HRESULT(IAppxPackageReader *self, PWSTR fileName, IAppxFile** file) GetPayloadFile;
			public function HRESULT(IAppxPackageReader *self, IAppxFilesEnumerator** filesEnumerator) GetPayloadFiles;
			public function HRESULT(IAppxPackageReader *self, IAppxManifestReader** manifestReader) GetManifest;
		}
		[CRepr]
		public struct IAppxPackageWriter : IUnknown
		{
			public const new Guid IID = .(0x9099e33b, 0x246f, 0x41e4, 0x88, 0x1a, 0x00, 0x8e, 0xb6, 0x13, 0xf8, 0x58);
			
			public function HRESULT(IAppxPackageWriter *self, PWSTR fileName, PWSTR contentType, APPX_COMPRESSION_OPTION compressionOption, IStream* inputStream) AddPayloadFile;
			public function HRESULT(IAppxPackageWriter *self, IStream* manifest) Close;
		}
		[CRepr]
		public struct IAppxPackageWriter2 : IUnknown
		{
			public const new Guid IID = .(0x2cf5c4fd, 0xe54c, 0x4ea5, 0xba, 0x4e, 0xf8, 0xc4, 0xb1, 0x05, 0xa8, 0xc8);
			
			public function HRESULT(IAppxPackageWriter2 *self, IStream* manifest, IStream* contentGroupMap) Close;
		}
		[CRepr]
		public struct IAppxPackageWriter3 : IUnknown
		{
			public const new Guid IID = .(0xa83aacd3, 0x41c0, 0x4501, 0xb8, 0xa3, 0x74, 0x16, 0x4f, 0x50, 0xb2, 0xfd);
			
			public function HRESULT(IAppxPackageWriter3 *self, uint32 fileCount, APPX_PACKAGE_WRITER_PAYLOAD_STREAM* payloadFiles, uint64 memoryLimit) AddPayloadFiles;
		}
		[CRepr]
		public struct IAppxFile : IUnknown
		{
			public const new Guid IID = .(0x91df827b, 0x94fd, 0x468f, 0x82, 0x7b, 0x57, 0xf4, 0x1b, 0x2f, 0x6f, 0x2e);
			
			public function HRESULT(IAppxFile *self, APPX_COMPRESSION_OPTION* compressionOption) GetCompressionOption;
			public function HRESULT(IAppxFile *self, PWSTR* contentType) GetContentType;
			public function HRESULT(IAppxFile *self, PWSTR* fileName) GetName;
			public function HRESULT(IAppxFile *self, uint64* size) GetSize;
			public function HRESULT(IAppxFile *self, IStream** stream) GetStream;
		}
		[CRepr]
		public struct IAppxFilesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xf007eeaf, 0x9831, 0x411c, 0x98, 0x47, 0x91, 0x7c, 0xdc, 0x62, 0xd1, 0xfe);
			
			public function HRESULT(IAppxFilesEnumerator *self, IAppxFile** file) GetCurrent;
			public function HRESULT(IAppxFilesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxFilesEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxBlockMapReader : IUnknown
		{
			public const new Guid IID = .(0x5efec991, 0xbca3, 0x42d1, 0x9e, 0xc2, 0xe9, 0x2d, 0x60, 0x9e, 0xc2, 0x2a);
			
			public function HRESULT(IAppxBlockMapReader *self, PWSTR filename, IAppxBlockMapFile** file) GetFile;
			public function HRESULT(IAppxBlockMapReader *self, IAppxBlockMapFilesEnumerator** enumerator) GetFiles;
			public function HRESULT(IAppxBlockMapReader *self, IUri** hashMethod) GetHashMethod;
			public function HRESULT(IAppxBlockMapReader *self, IStream** blockMapStream) GetStream;
		}
		[CRepr]
		public struct IAppxBlockMapFile : IUnknown
		{
			public const new Guid IID = .(0x277672ac, 0x4f63, 0x42c1, 0x8a, 0xbc, 0xbe, 0xae, 0x36, 0x00, 0xeb, 0x59);
			
			public function HRESULT(IAppxBlockMapFile *self, IAppxBlockMapBlocksEnumerator** blocks) GetBlocks;
			public function HRESULT(IAppxBlockMapFile *self, uint32* lfhSize) GetLocalFileHeaderSize;
			public function HRESULT(IAppxBlockMapFile *self, PWSTR* name) GetName;
			public function HRESULT(IAppxBlockMapFile *self, uint64* size) GetUncompressedSize;
			public function HRESULT(IAppxBlockMapFile *self, IStream* fileStream, BOOL* isValid) ValidateFileHash;
		}
		[CRepr]
		public struct IAppxBlockMapFilesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x02b856a2, 0x4262, 0x4070, 0xba, 0xcb, 0x1a, 0x8c, 0xbb, 0xc4, 0x23, 0x05);
			
			public function HRESULT(IAppxBlockMapFilesEnumerator *self, IAppxBlockMapFile** file) GetCurrent;
			public function HRESULT(IAppxBlockMapFilesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxBlockMapFilesEnumerator *self, BOOL* hasCurrent) MoveNext;
		}
		[CRepr]
		public struct IAppxBlockMapBlock : IUnknown
		{
			public const new Guid IID = .(0x75cf3930, 0x3244, 0x4fe0, 0xa8, 0xc8, 0xe0, 0xbc, 0xb2, 0x70, 0xb8, 0x89);
			
			public function HRESULT(IAppxBlockMapBlock *self, uint32* bufferSize, uint8** buffer) GetHash;
			public function HRESULT(IAppxBlockMapBlock *self, uint32* size) GetCompressedSize;
		}
		[CRepr]
		public struct IAppxBlockMapBlocksEnumerator : IUnknown
		{
			public const new Guid IID = .(0x6b429b5b, 0x36ef, 0x479e, 0xb9, 0xeb, 0x0c, 0x14, 0x82, 0xb4, 0x9e, 0x16);
			
			public function HRESULT(IAppxBlockMapBlocksEnumerator *self, IAppxBlockMapBlock** block) GetCurrent;
			public function HRESULT(IAppxBlockMapBlocksEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxBlockMapBlocksEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxManifestReader : IUnknown
		{
			public const new Guid IID = .(0x4e1bd148, 0x55a0, 0x4480, 0xa3, 0xd1, 0x15, 0x54, 0x47, 0x10, 0x63, 0x7c);
			
			public function HRESULT(IAppxManifestReader *self, IAppxManifestPackageId** packageId) GetPackageId;
			public function HRESULT(IAppxManifestReader *self, IAppxManifestProperties** packageProperties) GetProperties;
			public function HRESULT(IAppxManifestReader *self, IAppxManifestPackageDependenciesEnumerator** dependencies) GetPackageDependencies;
			public function HRESULT(IAppxManifestReader *self, APPX_CAPABILITIES* capabilities) GetCapabilities;
			public function HRESULT(IAppxManifestReader *self, IAppxManifestResourcesEnumerator** resources) GetResources;
			public function HRESULT(IAppxManifestReader *self, IAppxManifestDeviceCapabilitiesEnumerator** deviceCapabilities) GetDeviceCapabilities;
			public function HRESULT(IAppxManifestReader *self, PWSTR name, uint64* value) GetPrerequisite;
			public function HRESULT(IAppxManifestReader *self, IAppxManifestApplicationsEnumerator** applications) GetApplications;
			public function HRESULT(IAppxManifestReader *self, IStream** manifestStream) GetStream;
		}
		[CRepr]
		public struct IAppxManifestReader2 : IAppxManifestReader
		{
			public const new Guid IID = .(0xd06f67bc, 0xb31d, 0x4eba, 0xa8, 0xaf, 0x63, 0x8e, 0x73, 0xe7, 0x7b, 0x4d);
			
			public function HRESULT(IAppxManifestReader2 *self, IAppxManifestQualifiedResourcesEnumerator** resources) GetQualifiedResources;
		}
		[CRepr]
		public struct IAppxManifestReader3 : IAppxManifestReader2
		{
			public const new Guid IID = .(0xc43825ab, 0x69b7, 0x400a, 0x97, 0x09, 0xcc, 0x37, 0xf5, 0xa7, 0x2d, 0x24);
			
			public function HRESULT(IAppxManifestReader3 *self, APPX_CAPABILITY_CLASS_TYPE capabilityClass, IAppxManifestCapabilitiesEnumerator** capabilities) GetCapabilitiesByCapabilityClass;
			public function HRESULT(IAppxManifestReader3 *self, IAppxManifestTargetDeviceFamiliesEnumerator** targetDeviceFamilies) GetTargetDeviceFamilies;
		}
		[CRepr]
		public struct IAppxManifestReader4 : IAppxManifestReader3
		{
			public const new Guid IID = .(0x4579bb7c, 0x741d, 0x4161, 0xb5, 0xa1, 0x47, 0xbd, 0x3b, 0x78, 0xad, 0x9b);
			
			public function HRESULT(IAppxManifestReader4 *self, IAppxManifestOptionalPackageInfo** optionalPackageInfo) GetOptionalPackageInfo;
		}
		[CRepr]
		public struct IAppxManifestReader5 : IUnknown
		{
			public const new Guid IID = .(0x8d7ae132, 0xa690, 0x4c00, 0xb7, 0x5a, 0x6a, 0xae, 0x1f, 0xea, 0xac, 0x80);
			
			public function HRESULT(IAppxManifestReader5 *self, IAppxManifestMainPackageDependenciesEnumerator** mainPackageDependencies) GetMainPackageDependencies;
		}
		[CRepr]
		public struct IAppxManifestReader6 : IUnknown
		{
			public const new Guid IID = .(0x34deaca4, 0xd3c0, 0x4e3e, 0xb3, 0x12, 0xe4, 0x26, 0x25, 0xe3, 0x80, 0x7e);
			
			public function HRESULT(IAppxManifestReader6 *self, BOOL* isNonQualifiedResourcePackage) GetIsNonQualifiedResourcePackage;
		}
		[CRepr]
		public struct IAppxManifestReader7 : IUnknown
		{
			public const new Guid IID = .(0x8efe6f27, 0x0ce0, 0x4988, 0xb3, 0x2d, 0x73, 0x8e, 0xb6, 0x3d, 0xb3, 0xb7);
			
			public function HRESULT(IAppxManifestReader7 *self, IAppxManifestDriverDependenciesEnumerator** driverDependencies) GetDriverDependencies;
			public function HRESULT(IAppxManifestReader7 *self, IAppxManifestOSPackageDependenciesEnumerator** osPackageDependencies) GetOSPackageDependencies;
			public function HRESULT(IAppxManifestReader7 *self, IAppxManifestHostRuntimeDependenciesEnumerator** hostRuntimeDependencies) GetHostRuntimeDependencies;
		}
		[CRepr]
		public struct IAppxManifestDriverDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xfe039db2, 0x467f, 0x4755, 0x84, 0x04, 0x8f, 0x5e, 0xb6, 0x86, 0x5b, 0x33);
			
			public function HRESULT(IAppxManifestDriverDependenciesEnumerator *self, IAppxManifestDriverDependency** driverDependency) GetCurrent;
			public function HRESULT(IAppxManifestDriverDependenciesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxManifestDriverDependenciesEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxManifestDriverDependency : IUnknown
		{
			public const new Guid IID = .(0x1210cb94, 0x5a92, 0x4602, 0xbe, 0x24, 0x79, 0xf3, 0x18, 0xaf, 0x4a, 0xf9);
			
			public function HRESULT(IAppxManifestDriverDependency *self, IAppxManifestDriverConstraintsEnumerator** driverConstraints) GetDriverConstraints;
		}
		[CRepr]
		public struct IAppxManifestDriverConstraintsEnumerator : IUnknown
		{
			public const new Guid IID = .(0xd402b2d1, 0xf600, 0x49e0, 0x95, 0xe6, 0x97, 0x5d, 0x8d, 0xa1, 0x3d, 0x89);
			
			public function HRESULT(IAppxManifestDriverConstraintsEnumerator *self, IAppxManifestDriverConstraint** driverConstraint) GetCurrent;
			public function HRESULT(IAppxManifestDriverConstraintsEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxManifestDriverConstraintsEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxManifestDriverConstraint : IUnknown
		{
			public const new Guid IID = .(0xc031bee4, 0xbbcc, 0x48ea, 0xa2, 0x37, 0xc3, 0x40, 0x45, 0xc8, 0x0a, 0x07);
			
			public function HRESULT(IAppxManifestDriverConstraint *self, PWSTR* name) GetName;
			public function HRESULT(IAppxManifestDriverConstraint *self, uint64* minVersion) GetMinVersion;
			public function HRESULT(IAppxManifestDriverConstraint *self, PWSTR* minDate) GetMinDate;
		}
		[CRepr]
		public struct IAppxManifestOSPackageDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xb84e2fc3, 0xf8ec, 0x4bc1, 0x8a, 0xe2, 0x15, 0x63, 0x46, 0xf5, 0xff, 0xea);
			
			public function HRESULT(IAppxManifestOSPackageDependenciesEnumerator *self, IAppxManifestOSPackageDependency** osPackageDependency) GetCurrent;
			public function HRESULT(IAppxManifestOSPackageDependenciesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxManifestOSPackageDependenciesEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxManifestOSPackageDependency : IUnknown
		{
			public const new Guid IID = .(0x154995ee, 0x54a6, 0x4f14, 0xac, 0x97, 0xd8, 0xcf, 0x05, 0x19, 0x64, 0x4b);
			
			public function HRESULT(IAppxManifestOSPackageDependency *self, PWSTR* name) GetName;
			public function HRESULT(IAppxManifestOSPackageDependency *self, uint64* version) GetVersion;
		}
		[CRepr]
		public struct IAppxManifestHostRuntimeDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x6427a646, 0x7f49, 0x433e, 0xb1, 0xa6, 0x0d, 0xa3, 0x09, 0xf6, 0x88, 0x5a);
			
			public function HRESULT(IAppxManifestHostRuntimeDependenciesEnumerator *self, IAppxManifestHostRuntimeDependency** hostRuntimeDependency) GetCurrent;
			public function HRESULT(IAppxManifestHostRuntimeDependenciesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxManifestHostRuntimeDependenciesEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxManifestHostRuntimeDependency : IUnknown
		{
			public const new Guid IID = .(0x3455d234, 0x8414, 0x410d, 0x95, 0xc7, 0x7b, 0x35, 0x25, 0x5b, 0x83, 0x91);
			
			public function HRESULT(IAppxManifestHostRuntimeDependency *self, PWSTR* name) GetName;
			public function HRESULT(IAppxManifestHostRuntimeDependency *self, PWSTR* publisher) GetPublisher;
			public function HRESULT(IAppxManifestHostRuntimeDependency *self, uint64* minVersion) GetMinVersion;
		}
		[CRepr]
		public struct IAppxManifestHostRuntimeDependency2 : IUnknown
		{
			public const new Guid IID = .(0xc26f23a8, 0xee10, 0x4ad6, 0xb8, 0x98, 0x2b, 0x4d, 0x7a, 0xeb, 0xfe, 0x6a);
			
			public function HRESULT(IAppxManifestHostRuntimeDependency2 *self, PWSTR* packageFamilyName) GetPackageFamilyName;
		}
		[CRepr]
		public struct IAppxManifestOptionalPackageInfo : IUnknown
		{
			public const new Guid IID = .(0x2634847d, 0x5b5d, 0x4fe5, 0xa2, 0x43, 0x00, 0x2f, 0xf9, 0x5e, 0xdc, 0x7e);
			
			public function HRESULT(IAppxManifestOptionalPackageInfo *self, BOOL* isOptionalPackage) GetIsOptionalPackage;
			public function HRESULT(IAppxManifestOptionalPackageInfo *self, PWSTR* mainPackageName) GetMainPackageName;
		}
		[CRepr]
		public struct IAppxManifestMainPackageDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xa99c4f00, 0x51d2, 0x4f0f, 0xba, 0x46, 0x7e, 0xd5, 0x25, 0x5e, 0xbd, 0xff);
			
			public function HRESULT(IAppxManifestMainPackageDependenciesEnumerator *self, IAppxManifestMainPackageDependency** mainPackageDependency) GetCurrent;
			public function HRESULT(IAppxManifestMainPackageDependenciesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxManifestMainPackageDependenciesEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxManifestMainPackageDependency : IUnknown
		{
			public const new Guid IID = .(0x05d0611c, 0xbc29, 0x46d5, 0x97, 0xe2, 0x84, 0xb9, 0xc7, 0x9b, 0xd8, 0xae);
			
			public function HRESULT(IAppxManifestMainPackageDependency *self, PWSTR* name) GetName;
			public function HRESULT(IAppxManifestMainPackageDependency *self, PWSTR* publisher) GetPublisher;
			public function HRESULT(IAppxManifestMainPackageDependency *self, PWSTR* packageFamilyName) GetPackageFamilyName;
		}
		[CRepr]
		public struct IAppxManifestPackageId : IUnknown
		{
			public const new Guid IID = .(0x283ce2d7, 0x7153, 0x4a91, 0x96, 0x49, 0x7a, 0x0f, 0x72, 0x40, 0x94, 0x5f);
			
			public function HRESULT(IAppxManifestPackageId *self, PWSTR* name) GetName;
			public function HRESULT(IAppxManifestPackageId *self, APPX_PACKAGE_ARCHITECTURE* architecture) GetArchitecture;
			public function HRESULT(IAppxManifestPackageId *self, PWSTR* publisher) GetPublisher;
			public function HRESULT(IAppxManifestPackageId *self, uint64* packageVersion) GetVersion;
			public function HRESULT(IAppxManifestPackageId *self, PWSTR* resourceId) GetResourceId;
			public function HRESULT(IAppxManifestPackageId *self, PWSTR other, BOOL* isSame) ComparePublisher;
			public function HRESULT(IAppxManifestPackageId *self, PWSTR* packageFullName) GetPackageFullName;
			public function HRESULT(IAppxManifestPackageId *self, PWSTR* packageFamilyName) GetPackageFamilyName;
		}
		[CRepr]
		public struct IAppxManifestPackageId2 : IAppxManifestPackageId
		{
			public const new Guid IID = .(0x2256999d, 0xd617, 0x42f1, 0x88, 0x0e, 0x0b, 0xa4, 0x54, 0x23, 0x19, 0xd5);
			
			public function HRESULT(IAppxManifestPackageId2 *self, APPX_PACKAGE_ARCHITECTURE2* architecture) GetArchitecture2;
		}
		[CRepr]
		public struct IAppxManifestProperties : IUnknown
		{
			public const new Guid IID = .(0x03faf64d, 0xf26f, 0x4b2c, 0xaa, 0xf7, 0x8f, 0xe7, 0x78, 0x9b, 0x8b, 0xca);
			
			public function HRESULT(IAppxManifestProperties *self, PWSTR name, BOOL* value) GetBoolValue;
			public function HRESULT(IAppxManifestProperties *self, PWSTR name, PWSTR* value) GetStringValue;
		}
		[CRepr]
		public struct IAppxManifestTargetDeviceFamiliesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x36537f36, 0x27a4, 0x4788, 0x88, 0xc0, 0x73, 0x38, 0x19, 0x57, 0x50, 0x17);
			
			public function HRESULT(IAppxManifestTargetDeviceFamiliesEnumerator *self, IAppxManifestTargetDeviceFamily** targetDeviceFamily) GetCurrent;
			public function HRESULT(IAppxManifestTargetDeviceFamiliesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxManifestTargetDeviceFamiliesEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxManifestTargetDeviceFamily : IUnknown
		{
			public const new Guid IID = .(0x9091b09b, 0xc8d5, 0x4f31, 0x86, 0x87, 0xa3, 0x38, 0x25, 0x9f, 0xae, 0xfb);
			
			public function HRESULT(IAppxManifestTargetDeviceFamily *self, PWSTR* name) GetName;
			public function HRESULT(IAppxManifestTargetDeviceFamily *self, uint64* minVersion) GetMinVersion;
			public function HRESULT(IAppxManifestTargetDeviceFamily *self, uint64* maxVersionTested) GetMaxVersionTested;
		}
		[CRepr]
		public struct IAppxManifestPackageDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xb43bbcf9, 0x65a6, 0x42dd, 0xba, 0xc0, 0x8c, 0x67, 0x41, 0xe7, 0xf5, 0xa4);
			
			public function HRESULT(IAppxManifestPackageDependenciesEnumerator *self, IAppxManifestPackageDependency** dependency) GetCurrent;
			public function HRESULT(IAppxManifestPackageDependenciesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxManifestPackageDependenciesEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxManifestPackageDependency : IUnknown
		{
			public const new Guid IID = .(0xe4946b59, 0x733e, 0x43f0, 0xa7, 0x24, 0x3b, 0xde, 0x4c, 0x12, 0x85, 0xa0);
			
			public function HRESULT(IAppxManifestPackageDependency *self, PWSTR* name) GetName;
			public function HRESULT(IAppxManifestPackageDependency *self, PWSTR* publisher) GetPublisher;
			public function HRESULT(IAppxManifestPackageDependency *self, uint64* minVersion) GetMinVersion;
		}
		[CRepr]
		public struct IAppxManifestPackageDependency2 : IAppxManifestPackageDependency
		{
			public const new Guid IID = .(0xdda0b713, 0xf3ff, 0x49d3, 0x89, 0x8a, 0x27, 0x86, 0x78, 0x0c, 0x5d, 0x98);
			
			public function HRESULT(IAppxManifestPackageDependency2 *self, uint16* maxMajorVersionTested) GetMaxMajorVersionTested;
		}
		[CRepr]
		public struct IAppxManifestPackageDependency3 : IUnknown
		{
			public const new Guid IID = .(0x1ac56374, 0x6198, 0x4d6b, 0x92, 0xe4, 0x74, 0x9d, 0x5a, 0xb8, 0xa8, 0x95);
			
			public function HRESULT(IAppxManifestPackageDependency3 *self, BOOL* isOptional) GetIsOptional;
		}
		[CRepr]
		public struct IAppxManifestResourcesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xde4dfbbd, 0x881a, 0x48bb, 0x85, 0x8c, 0xd6, 0xf2, 0xba, 0xea, 0xe6, 0xed);
			
			public function HRESULT(IAppxManifestResourcesEnumerator *self, PWSTR* resource) GetCurrent;
			public function HRESULT(IAppxManifestResourcesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxManifestResourcesEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxManifestDeviceCapabilitiesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x30204541, 0x427b, 0x4a1c, 0xba, 0xcf, 0x65, 0x5b, 0xf4, 0x63, 0xa5, 0x40);
			
			public function HRESULT(IAppxManifestDeviceCapabilitiesEnumerator *self, PWSTR* deviceCapability) GetCurrent;
			public function HRESULT(IAppxManifestDeviceCapabilitiesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxManifestDeviceCapabilitiesEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxManifestCapabilitiesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x11d22258, 0xf470, 0x42c1, 0xb2, 0x91, 0x83, 0x61, 0xc5, 0x43, 0x7e, 0x41);
			
			public function HRESULT(IAppxManifestCapabilitiesEnumerator *self, PWSTR* capability) GetCurrent;
			public function HRESULT(IAppxManifestCapabilitiesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxManifestCapabilitiesEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxManifestApplicationsEnumerator : IUnknown
		{
			public const new Guid IID = .(0x9eb8a55a, 0xf04b, 0x4d0d, 0x80, 0x8d, 0x68, 0x61, 0x85, 0xd4, 0x84, 0x7a);
			
			public function HRESULT(IAppxManifestApplicationsEnumerator *self, IAppxManifestApplication** application) GetCurrent;
			public function HRESULT(IAppxManifestApplicationsEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxManifestApplicationsEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxManifestApplication : IUnknown
		{
			public const new Guid IID = .(0x5da89bf4, 0x3773, 0x46be, 0xb6, 0x50, 0x7e, 0x74, 0x48, 0x63, 0xb7, 0xe8);
			
			public function HRESULT(IAppxManifestApplication *self, PWSTR name, PWSTR* value) GetStringValue;
			public function HRESULT(IAppxManifestApplication *self, PWSTR* appUserModelId) GetAppUserModelId;
		}
		[CRepr]
		public struct IAppxManifestQualifiedResourcesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x8ef6adfe, 0x3762, 0x4a8f, 0x93, 0x73, 0x2f, 0xc5, 0xd4, 0x44, 0xc8, 0xd2);
			
			public function HRESULT(IAppxManifestQualifiedResourcesEnumerator *self, IAppxManifestQualifiedResource** resource) GetCurrent;
			public function HRESULT(IAppxManifestQualifiedResourcesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxManifestQualifiedResourcesEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxManifestQualifiedResource : IUnknown
		{
			public const new Guid IID = .(0x3b53a497, 0x3c5c, 0x48d1, 0x9e, 0xa3, 0xbb, 0x7e, 0xac, 0x8c, 0xd7, 0xd4);
			
			public function HRESULT(IAppxManifestQualifiedResource *self, PWSTR* language) GetLanguage;
			public function HRESULT(IAppxManifestQualifiedResource *self, uint32* scale) GetScale;
			public function HRESULT(IAppxManifestQualifiedResource *self, DX_FEATURE_LEVEL* dxFeatureLevel) GetDXFeatureLevel;
		}
		[CRepr]
		public struct IAppxBundleFactory : IUnknown
		{
			public const new Guid IID = .(0xbba65864, 0x965f, 0x4a5f, 0x85, 0x5f, 0xf0, 0x74, 0xbd, 0xbf, 0x3a, 0x7b);
			
			public function HRESULT(IAppxBundleFactory *self, IStream* outputStream, uint64 bundleVersion, IAppxBundleWriter** bundleWriter) CreateBundleWriter;
			public function HRESULT(IAppxBundleFactory *self, IStream* inputStream, IAppxBundleReader** bundleReader) CreateBundleReader;
			public function HRESULT(IAppxBundleFactory *self, IStream* inputStream, IAppxBundleManifestReader** manifestReader) CreateBundleManifestReader;
		}
		[CRepr]
		public struct IAppxBundleWriter : IUnknown
		{
			public const new Guid IID = .(0xec446fe8, 0xbfec, 0x4c64, 0xab, 0x4f, 0x49, 0xf0, 0x38, 0xf0, 0xc6, 0xd2);
			
			public function HRESULT(IAppxBundleWriter *self, PWSTR fileName, IStream* packageStream) AddPayloadPackage;
			public function HRESULT(IAppxBundleWriter *self) Close;
		}
		[CRepr]
		public struct IAppxBundleWriter2 : IUnknown
		{
			public const new Guid IID = .(0x6d8fe971, 0x01cc, 0x49a0, 0xb6, 0x85, 0x23, 0x38, 0x51, 0x27, 0x99, 0x62);
			
			public function HRESULT(IAppxBundleWriter2 *self, PWSTR fileName, IStream* inputStream) AddExternalPackageReference;
		}
		[CRepr]
		public struct IAppxBundleWriter3 : IUnknown
		{
			public const new Guid IID = .(0xad711152, 0xf969, 0x4193, 0x82, 0xd5, 0x9d, 0xdf, 0x27, 0x86, 0xd2, 0x1a);
			
			public function HRESULT(IAppxBundleWriter3 *self, PWSTR fileName, IStream* inputStream) AddPackageReference;
			public function HRESULT(IAppxBundleWriter3 *self, PWSTR hashMethodString) Close;
		}
		[CRepr]
		public struct IAppxBundleWriter4 : IUnknown
		{
			public const new Guid IID = .(0x9cd9d523, 0x5009, 0x4c01, 0x98, 0x82, 0xdc, 0x02, 0x9f, 0xbd, 0x47, 0xa3);
			
			public function HRESULT(IAppxBundleWriter4 *self, PWSTR fileName, IStream* packageStream, BOOL isDefaultApplicablePackage) AddPayloadPackage;
			public function HRESULT(IAppxBundleWriter4 *self, PWSTR fileName, IStream* inputStream, BOOL isDefaultApplicablePackage) AddPackageReference;
			public function HRESULT(IAppxBundleWriter4 *self, PWSTR fileName, IStream* inputStream, BOOL isDefaultApplicablePackage) AddExternalPackageReference;
		}
		[CRepr]
		public struct IAppxBundleReader : IUnknown
		{
			public const new Guid IID = .(0xdd75b8c0, 0xba76, 0x43b0, 0xae, 0x0f, 0x68, 0x65, 0x6a, 0x1d, 0xc5, 0xc8);
			
			public function HRESULT(IAppxBundleReader *self, APPX_BUNDLE_FOOTPRINT_FILE_TYPE fileType, IAppxFile** footprintFile) GetFootprintFile;
			public function HRESULT(IAppxBundleReader *self, IAppxBlockMapReader** blockMapReader) GetBlockMap;
			public function HRESULT(IAppxBundleReader *self, IAppxBundleManifestReader** manifestReader) GetManifest;
			public function HRESULT(IAppxBundleReader *self, IAppxFilesEnumerator** payloadPackages) GetPayloadPackages;
			public function HRESULT(IAppxBundleReader *self, PWSTR fileName, IAppxFile** payloadPackage) GetPayloadPackage;
		}
		[CRepr]
		public struct IAppxBundleManifestReader : IUnknown
		{
			public const new Guid IID = .(0xcf0ebbc1, 0xcc99, 0x4106, 0x91, 0xeb, 0xe6, 0x74, 0x62, 0xe0, 0x4f, 0xb0);
			
			public function HRESULT(IAppxBundleManifestReader *self, IAppxManifestPackageId** packageId) GetPackageId;
			public function HRESULT(IAppxBundleManifestReader *self, IAppxBundleManifestPackageInfoEnumerator** packageInfoItems) GetPackageInfoItems;
			public function HRESULT(IAppxBundleManifestReader *self, IStream** manifestStream) GetStream;
		}
		[CRepr]
		public struct IAppxBundleManifestReader2 : IUnknown
		{
			public const new Guid IID = .(0x5517df70, 0x033f, 0x4af2, 0x82, 0x13, 0x87, 0xd7, 0x66, 0x80, 0x5c, 0x02);
			
			public function HRESULT(IAppxBundleManifestReader2 *self, IAppxBundleManifestOptionalBundleInfoEnumerator** optionalBundles) GetOptionalBundles;
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfoEnumerator : IUnknown
		{
			public const new Guid IID = .(0xf9b856ee, 0x49a6, 0x4e19, 0xb2, 0xb0, 0x6a, 0x24, 0x06, 0xd6, 0x3a, 0x32);
			
			public function HRESULT(IAppxBundleManifestPackageInfoEnumerator *self, IAppxBundleManifestPackageInfo** packageInfo) GetCurrent;
			public function HRESULT(IAppxBundleManifestPackageInfoEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxBundleManifestPackageInfoEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfo : IUnknown
		{
			public const new Guid IID = .(0x54cd06c1, 0x268f, 0x40bb, 0x8e, 0xd2, 0x75, 0x7a, 0x9e, 0xba, 0xec, 0x8d);
			
			public function HRESULT(IAppxBundleManifestPackageInfo *self, APPX_BUNDLE_PAYLOAD_PACKAGE_TYPE* packageType) GetPackageType;
			public function HRESULT(IAppxBundleManifestPackageInfo *self, IAppxManifestPackageId** packageId) GetPackageId;
			public function HRESULT(IAppxBundleManifestPackageInfo *self, PWSTR* fileName) GetFileName;
			public function HRESULT(IAppxBundleManifestPackageInfo *self, uint64* offset) GetOffset;
			public function HRESULT(IAppxBundleManifestPackageInfo *self, uint64* size) GetSize;
			public function HRESULT(IAppxBundleManifestPackageInfo *self, IAppxManifestQualifiedResourcesEnumerator** resources) GetResources;
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfo2 : IUnknown
		{
			public const new Guid IID = .(0x44c2acbc, 0xb2cf, 0x4ccb, 0xbb, 0xdb, 0x9c, 0x6d, 0xa8, 0xc3, 0xbc, 0x9e);
			
			public function HRESULT(IAppxBundleManifestPackageInfo2 *self, BOOL* isPackageReference) GetIsPackageReference;
			public function HRESULT(IAppxBundleManifestPackageInfo2 *self, BOOL* isNonQualifiedResourcePackage) GetIsNonQualifiedResourcePackage;
			public function HRESULT(IAppxBundleManifestPackageInfo2 *self, BOOL* isDefaultApplicablePackage) GetIsDefaultApplicablePackage;
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfo3 : IUnknown
		{
			public const new Guid IID = .(0x6ba74b98, 0xbb74, 0x4296, 0x80, 0xd0, 0x5f, 0x42, 0x56, 0xa9, 0x96, 0x75);
			
			public function HRESULT(IAppxBundleManifestPackageInfo3 *self, IAppxManifestTargetDeviceFamiliesEnumerator** targetDeviceFamilies) GetTargetDeviceFamilies;
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfo4 : IUnknown
		{
			public const new Guid IID = .(0x5da6f13d, 0xa8a7, 0x4532, 0x85, 0x7c, 0x13, 0x93, 0xd6, 0x59, 0x37, 0x1d);
			
			public function HRESULT(IAppxBundleManifestPackageInfo4 *self, BOOL* isStub) GetIsStub;
		}
		[CRepr]
		public struct IAppxBundleManifestOptionalBundleInfoEnumerator : IUnknown
		{
			public const new Guid IID = .(0x9a178793, 0xf97e, 0x46ac, 0xaa, 0xca, 0xdd, 0x5b, 0xa4, 0xc1, 0x77, 0xc8);
			
			public function HRESULT(IAppxBundleManifestOptionalBundleInfoEnumerator *self, IAppxBundleManifestOptionalBundleInfo** optionalBundle) GetCurrent;
			public function HRESULT(IAppxBundleManifestOptionalBundleInfoEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxBundleManifestOptionalBundleInfoEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxBundleManifestOptionalBundleInfo : IUnknown
		{
			public const new Guid IID = .(0x515bf2e8, 0xbcb0, 0x4d69, 0x8c, 0x48, 0xe3, 0x83, 0x14, 0x7b, 0x6e, 0x12);
			
			public function HRESULT(IAppxBundleManifestOptionalBundleInfo *self, IAppxManifestPackageId** packageId) GetPackageId;
			public function HRESULT(IAppxBundleManifestOptionalBundleInfo *self, PWSTR* fileName) GetFileName;
			public function HRESULT(IAppxBundleManifestOptionalBundleInfo *self, IAppxBundleManifestPackageInfoEnumerator** packageInfoItems) GetPackageInfoItems;
		}
		[CRepr]
		public struct IAppxContentGroupFilesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x1a09a2fd, 0x7440, 0x44eb, 0x8c, 0x84, 0x84, 0x82, 0x05, 0xa6, 0xa1, 0xcc);
			
			public function HRESULT(IAppxContentGroupFilesEnumerator *self, PWSTR* file) GetCurrent;
			public function HRESULT(IAppxContentGroupFilesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxContentGroupFilesEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxContentGroup : IUnknown
		{
			public const new Guid IID = .(0x328f6468, 0xc04f, 0x4e3c, 0xb6, 0xfa, 0x6b, 0x8d, 0x27, 0xf3, 0x00, 0x3a);
			
			public function HRESULT(IAppxContentGroup *self, PWSTR* groupName) GetName;
			public function HRESULT(IAppxContentGroup *self, IAppxContentGroupFilesEnumerator** enumerator) GetFiles;
		}
		[CRepr]
		public struct IAppxContentGroupsEnumerator : IUnknown
		{
			public const new Guid IID = .(0x3264e477, 0x16d1, 0x4d63, 0x82, 0x3e, 0x7d, 0x29, 0x84, 0x69, 0x66, 0x34);
			
			public function HRESULT(IAppxContentGroupsEnumerator *self, IAppxContentGroup** stream) GetCurrent;
			public function HRESULT(IAppxContentGroupsEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
			public function HRESULT(IAppxContentGroupsEnumerator *self, BOOL* hasNext) MoveNext;
		}
		[CRepr]
		public struct IAppxContentGroupMapReader : IUnknown
		{
			public const new Guid IID = .(0x418726d8, 0xdd99, 0x4f5d, 0x98, 0x86, 0x15, 0x7a, 0xdd, 0x20, 0xde, 0x01);
			
			public function HRESULT(IAppxContentGroupMapReader *self, IAppxContentGroup** requiredGroup) GetRequiredGroup;
			public function HRESULT(IAppxContentGroupMapReader *self, IAppxContentGroupsEnumerator** automaticGroupsEnumerator) GetAutomaticGroups;
		}
		[CRepr]
		public struct IAppxSourceContentGroupMapReader : IUnknown
		{
			public const new Guid IID = .(0xf329791d, 0x540b, 0x4a9f, 0xbc, 0x75, 0x32, 0x82, 0xb7, 0xd7, 0x31, 0x93);
			
			public function HRESULT(IAppxSourceContentGroupMapReader *self, IAppxContentGroup** requiredGroup) GetRequiredGroup;
			public function HRESULT(IAppxSourceContentGroupMapReader *self, IAppxContentGroupsEnumerator** automaticGroupsEnumerator) GetAutomaticGroups;
		}
		[CRepr]
		public struct IAppxContentGroupMapWriter : IUnknown
		{
			public const new Guid IID = .(0xd07ab776, 0xa9de, 0x4798, 0x8c, 0x14, 0x3d, 0xb3, 0x1e, 0x68, 0x7c, 0x78);
			
			public function HRESULT(IAppxContentGroupMapWriter *self, PWSTR groupName) AddAutomaticGroup;
			public function HRESULT(IAppxContentGroupMapWriter *self, PWSTR fileName) AddAutomaticFile;
			public function HRESULT(IAppxContentGroupMapWriter *self) Close;
		}
		[CRepr]
		public struct IAppxPackagingDiagnosticEventSink : IUnknown
		{
			public const new Guid IID = .(0x17239d47, 0x6adb, 0x45d2, 0x80, 0xf6, 0xf9, 0xcb, 0xc3, 0xbf, 0x05, 0x9d);
			
			public function HRESULT(IAppxPackagingDiagnosticEventSink *self, APPX_PACKAGING_CONTEXT_CHANGE_TYPE changeType, int32 contextId, PSTR contextName, PWSTR contextMessage, PWSTR detailsMessage) ReportContextChange;
			public function HRESULT(IAppxPackagingDiagnosticEventSink *self, PWSTR errorMessage) ReportError;
		}
		[CRepr]
		public struct IAppxPackagingDiagnosticEventSinkManager : IUnknown
		{
			public const new Guid IID = .(0x369648fa, 0xa7eb, 0x4909, 0xa1, 0x5d, 0x69, 0x54, 0xa0, 0x78, 0xf1, 0x8a);
			
			public function HRESULT(IAppxPackagingDiagnosticEventSinkManager *self, IAppxPackagingDiagnosticEventSink* sink) SetSinkForProcess;
		}
		[CRepr]
		public struct IAppxEncryptionFactory : IUnknown
		{
			public const new Guid IID = .(0x80e8e04d, 0x8c88, 0x44ae, 0xa0, 0x11, 0x7c, 0xad, 0xf6, 0xfb, 0x2e, 0x72);
			
			public function HRESULT(IAppxEncryptionFactory *self, IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles) EncryptPackage;
			public function HRESULT(IAppxEncryptionFactory *self, IStream* inputStream, IStream* outputStream, APPX_KEY_INFO* keyInfo) DecryptPackage;
			public function HRESULT(IAppxEncryptionFactory *self, IStream* outputStream, IStream* manifestStream, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedPackageWriter** packageWriter) CreateEncryptedPackageWriter;
			public function HRESULT(IAppxEncryptionFactory *self, IStream* inputStream, APPX_KEY_INFO* keyInfo, IAppxPackageReader** packageReader) CreateEncryptedPackageReader;
			public function HRESULT(IAppxEncryptionFactory *self, IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles) EncryptBundle;
			public function HRESULT(IAppxEncryptionFactory *self, IStream* inputStream, IStream* outputStream, APPX_KEY_INFO* keyInfo) DecryptBundle;
			public function HRESULT(IAppxEncryptionFactory *self, IStream* outputStream, uint64 bundleVersion, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedBundleWriter** bundleWriter) CreateEncryptedBundleWriter;
			public function HRESULT(IAppxEncryptionFactory *self, IStream* inputStream, APPX_KEY_INFO* keyInfo, IAppxBundleReader** bundleReader) CreateEncryptedBundleReader;
		}
		[CRepr]
		public struct IAppxEncryptionFactory2 : IUnknown
		{
			public const new Guid IID = .(0xc1b11eee, 0xc4ba, 0x4ab2, 0xa5, 0x5d, 0xd0, 0x15, 0xfe, 0x8f, 0xf6, 0x4f);
			
			public function HRESULT(IAppxEncryptionFactory2 *self, IStream* outputStream, IStream* manifestStream, IStream* contentGroupMapStream, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedPackageWriter** packageWriter) CreateEncryptedPackageWriter;
		}
		[CRepr]
		public struct IAppxEncryptionFactory3 : IUnknown
		{
			public const new Guid IID = .(0x09edca37, 0xcd64, 0x47d6, 0xb7, 0xe8, 0x1c, 0xb1, 0x1d, 0x4f, 0x7e, 0x05);
			
			public function HRESULT(IAppxEncryptionFactory3 *self, IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles) EncryptPackage;
			public function HRESULT(IAppxEncryptionFactory3 *self, IStream* outputStream, IStream* manifestStream, IStream* contentGroupMapStream, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedPackageWriter** packageWriter) CreateEncryptedPackageWriter;
			public function HRESULT(IAppxEncryptionFactory3 *self, IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles) EncryptBundle;
			public function HRESULT(IAppxEncryptionFactory3 *self, IStream* outputStream, uint64 bundleVersion, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedBundleWriter** bundleWriter) CreateEncryptedBundleWriter;
		}
		[CRepr]
		public struct IAppxEncryptionFactory4 : IUnknown
		{
			public const new Guid IID = .(0xa879611f, 0x12fd, 0x41fe, 0x85, 0xd5, 0x06, 0xae, 0x77, 0x9b, 0xba, 0xf5);
			
			public function HRESULT(IAppxEncryptionFactory4 *self, IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, uint64 memoryLimit) EncryptPackage;
		}
		[CRepr]
		public struct IAppxEncryptedPackageWriter : IUnknown
		{
			public const new Guid IID = .(0xf43d0b0b, 0x1379, 0x40e2, 0x9b, 0x29, 0x68, 0x2e, 0xa2, 0xbf, 0x42, 0xaf);
			
			public function HRESULT(IAppxEncryptedPackageWriter *self, PWSTR fileName, APPX_COMPRESSION_OPTION compressionOption, IStream* inputStream) AddPayloadFileEncrypted;
			public function HRESULT(IAppxEncryptedPackageWriter *self) Close;
		}
		[CRepr]
		public struct IAppxEncryptedPackageWriter2 : IUnknown
		{
			public const new Guid IID = .(0x3e475447, 0x3a25, 0x40b5, 0x8a, 0xd2, 0xf9, 0x53, 0xae, 0x50, 0xc9, 0x2d);
			
			public function HRESULT(IAppxEncryptedPackageWriter2 *self, uint32 fileCount, APPX_PACKAGE_WRITER_PAYLOAD_STREAM* payloadFiles, uint64 memoryLimit) AddPayloadFilesEncrypted;
		}
		[CRepr]
		public struct IAppxEncryptedBundleWriter : IUnknown
		{
			public const new Guid IID = .(0x80b0902f, 0x7bf0, 0x4117, 0xb8, 0xc6, 0x42, 0x79, 0xef, 0x81, 0xee, 0x77);
			
			public function HRESULT(IAppxEncryptedBundleWriter *self, PWSTR fileName, IStream* packageStream) AddPayloadPackageEncrypted;
			public function HRESULT(IAppxEncryptedBundleWriter *self) Close;
		}
		[CRepr]
		public struct IAppxEncryptedBundleWriter2 : IUnknown
		{
			public const new Guid IID = .(0xe644be82, 0xf0fa, 0x42b8, 0xa9, 0x56, 0x8d, 0x1c, 0xb4, 0x8e, 0xe3, 0x79);
			
			public function HRESULT(IAppxEncryptedBundleWriter2 *self, PWSTR fileName, IStream* inputStream) AddExternalPackageReference;
		}
		[CRepr]
		public struct IAppxEncryptedBundleWriter3 : IUnknown
		{
			public const new Guid IID = .(0x0d34deb3, 0x5cae, 0x4dd3, 0x97, 0x7c, 0x50, 0x49, 0x32, 0xa5, 0x1d, 0x31);
			
			public function HRESULT(IAppxEncryptedBundleWriter3 *self, PWSTR fileName, IStream* packageStream, BOOL isDefaultApplicablePackage) AddPayloadPackageEncrypted;
			public function HRESULT(IAppxEncryptedBundleWriter3 *self, PWSTR fileName, IStream* inputStream, BOOL isDefaultApplicablePackage) AddExternalPackageReference;
		}
		[CRepr]
		public struct IAppxPackageEditor : IUnknown
		{
			public const new Guid IID = .(0xe2adb6dc, 0x5e71, 0x4416, 0x86, 0xb6, 0x86, 0xe5, 0xf5, 0x29, 0x1a, 0x6b);
			
			public function HRESULT(IAppxPackageEditor *self, PWSTR workingDirectory) SetWorkingDirectory;
			public function HRESULT(IAppxPackageEditor *self, IStream* updatedPackageStream, IStream* baselinePackageStream, IStream* deltaPackageStream) CreateDeltaPackage;
			public function HRESULT(IAppxPackageEditor *self, IStream* updatedPackageStream, IStream* baselineBlockMapStream, PWSTR baselinePackageFullName, IStream* deltaPackageStream) CreateDeltaPackageUsingBaselineBlockMap;
			public function HRESULT(IAppxPackageEditor *self, IStream* baselinePackageStream, IStream* deltaPackageStream, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION updateOption) UpdatePackage;
			public function HRESULT(IAppxPackageEditor *self, IStream* baselineEncryptedPackageStream, IStream* deltaPackageStream, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION updateOption, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo) UpdateEncryptedPackage;
			public function HRESULT(IAppxPackageEditor *self, IStream* packageStream, IStream* updatedManifestStream, BOOL isPackageEncrypted, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTIONS options) UpdatePackageManifest;
		}
		
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
