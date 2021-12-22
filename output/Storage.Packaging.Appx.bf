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
			NONE = 0,
			NORMAL = 1,
			MAXIMUM = 2,
			FAST = 3,
			SUPERFAST = 4,
		}
		[AllowDuplicates]
		public enum APPX_FOOTPRINT_FILE_TYPE : int32
		{
			MANIFEST = 0,
			BLOCKMAP = 1,
			SIGNATURE = 2,
			CODEINTEGRITY = 3,
			CONTENTGROUPMAP = 4,
		}
		[AllowDuplicates]
		public enum APPX_BUNDLE_FOOTPRINT_FILE_TYPE : int32
		{
			FIRST = 0,
			MANIFEST = 0,
			BLOCKMAP = 1,
			SIGNATURE = 2,
			LAST = 2,
		}
		[AllowDuplicates]
		public enum APPX_CAPABILITIES : uint32
		{
			INTERNET_CLIENT = 1,
			INTERNET_CLIENT_SERVER = 2,
			PRIVATE_NETWORK_CLIENT_SERVER = 4,
			DOCUMENTS_LIBRARY = 8,
			PICTURES_LIBRARY = 16,
			VIDEOS_LIBRARY = 32,
			MUSIC_LIBRARY = 64,
			ENTERPRISE_AUTHENTICATION = 128,
			SHARED_USER_CERTIFICATES = 256,
			REMOVABLE_STORAGE = 512,
			APPOINTMENTS = 1024,
			CONTACTS = 2048,
		}
		[AllowDuplicates]
		public enum APPX_PACKAGE_ARCHITECTURE : int32
		{
			X86 = 0,
			ARM = 5,
			X64 = 9,
			NEUTRAL = 11,
			ARM64 = 12,
		}
		[AllowDuplicates]
		public enum APPX_PACKAGE_ARCHITECTURE2 : int32
		{
			X86 = 0,
			ARM = 5,
			X64 = 9,
			NEUTRAL = 11,
			ARM64 = 12,
			X86_ON_ARM64 = 14,
			UNKNOWN = 65535,
		}
		[AllowDuplicates]
		public enum APPX_BUNDLE_PAYLOAD_PACKAGE_TYPE : int32
		{
			APPLICATION = 0,
			RESOURCE = 1,
		}
		[AllowDuplicates]
		public enum DX_FEATURE_LEVEL : int32
		{
			UNSPECIFIED = 0,
			_9 = 1,
			_10 = 2,
			_11 = 3,
		}
		[AllowDuplicates]
		public enum APPX_CAPABILITY_CLASS_TYPE : int32
		{
			DEFAULT = 0,
			GENERAL = 1,
			RESTRICTED = 2,
			WINDOWS = 4,
			ALL = 7,
			CUSTOM = 8,
		}
		[AllowDuplicates]
		public enum APPX_PACKAGING_CONTEXT_CHANGE_TYPE : int32
		{
			START = 0,
			CHANGE = 1,
			DETAILS = 2,
			END = 3,
		}
		[AllowDuplicates]
		public enum APPX_ENCRYPTED_PACKAGE_OPTIONS : uint32
		{
			NONE = 0,
			DIFFUSION = 1,
			PAGE_HASHING = 2,
		}
		[AllowDuplicates]
		public enum APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION : int32
		{
			APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION_APPEND_DELTA = 0,
		}
		[AllowDuplicates]
		public enum APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTIONS : uint32
		{
			NONE = 0,
			SKIP_VALIDATION = 1,
			LOCALIZED = 2,
		}
		[AllowDuplicates]
		public enum PackagePathType : int32
		{
			Install = 0,
			Mutable = 1,
			Effective = 2,
			MachineExternal = 3,
			UserExternal = 4,
			EffectiveExternal = 5,
		}
		[AllowDuplicates]
		public enum PackageOrigin : int32
		{
			Unknown = 0,
			Unsigned = 1,
			Inbox = 2,
			Store = 3,
			DeveloperUnsigned = 4,
			DeveloperSigned = 5,
			LineOfBusiness = 6,
		}
		[AllowDuplicates]
		public enum CreatePackageDependencyOptions : int32
		{
			None = 0,
			DoNotVerifyDependencyResolution = 1,
			ScopeIsSystem = 2,
		}
		[AllowDuplicates]
		public enum PackageDependencyLifetimeKind : int32
		{
			Process = 0,
			FilePath = 1,
			RegistryKey = 2,
		}
		[AllowDuplicates]
		public enum AddPackageDependencyOptions : int32
		{
			None = 0,
			PrependIfRankCollision = 1,
		}
		[AllowDuplicates]
		public enum PackageDependencyProcessorArchitectures : int32
		{
			None = 0,
			Neutral = 1,
			X86 = 2,
			X64 = 4,
			Arm = 8,
			Arm64 = 16,
			X86A64 = 32,
		}
		[AllowDuplicates]
		public enum AppPolicyLifecycleManagement : int32
		{
			Unmanaged = 0,
			Managed = 1,
		}
		[AllowDuplicates]
		public enum AppPolicyWindowingModel : int32
		{
			None = 0,
			Universal = 1,
			ClassicDesktop = 2,
			ClassicPhone = 3,
		}
		[AllowDuplicates]
		public enum AppPolicyMediaFoundationCodecLoading : int32
		{
			All = 0,
			InboxOnly = 1,
		}
		[AllowDuplicates]
		public enum AppPolicyClrCompat : int32
		{
			Other = 0,
			ClassicDesktop = 1,
			Universal = 2,
			PackagedDesktop = 3,
		}
		[AllowDuplicates]
		public enum AppPolicyThreadInitializationType : int32
		{
			None = 0,
			InitializeWinRT = 1,
		}
		[AllowDuplicates]
		public enum AppPolicyShowDeveloperDiagnostic : int32
		{
			None = 0,
			ShowUI = 1,
		}
		[AllowDuplicates]
		public enum AppPolicyProcessTerminationMethod : int32
		{
			ExitProcess = 0,
			TerminateProcess = 1,
		}
		[AllowDuplicates]
		public enum AppPolicyCreateFileAccess : int32
		{
			Full = 0,
			Limited = 1,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreatePackageWriter(IStream* outputStream, APPX_PACKAGE_SETTINGS* settings, IAppxPackageWriter** packageWriter) mut
			{
				return VT.CreatePackageWriter(&this, outputStream, settings, packageWriter);
			}
			public HRESULT CreatePackageReader(IStream* inputStream, IAppxPackageReader** packageReader) mut
			{
				return VT.CreatePackageReader(&this, inputStream, packageReader);
			}
			public HRESULT CreateManifestReader(IStream* inputStream, IAppxManifestReader** manifestReader) mut
			{
				return VT.CreateManifestReader(&this, inputStream, manifestReader);
			}
			public HRESULT CreateBlockMapReader(IStream* inputStream, IAppxBlockMapReader** blockMapReader) mut
			{
				return VT.CreateBlockMapReader(&this, inputStream, blockMapReader);
			}
			public HRESULT CreateValidatedBlockMapReader(IStream* blockMapStream, PWSTR signatureFileName, IAppxBlockMapReader** blockMapReader) mut
			{
				return VT.CreateValidatedBlockMapReader(&this, blockMapStream, signatureFileName, blockMapReader);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxFactory *self, IStream* outputStream, APPX_PACKAGE_SETTINGS* settings, IAppxPackageWriter** packageWriter) CreatePackageWriter;
				public new function HRESULT(IAppxFactory *self, IStream* inputStream, IAppxPackageReader** packageReader) CreatePackageReader;
				public new function HRESULT(IAppxFactory *self, IStream* inputStream, IAppxManifestReader** manifestReader) CreateManifestReader;
				public new function HRESULT(IAppxFactory *self, IStream* inputStream, IAppxBlockMapReader** blockMapReader) CreateBlockMapReader;
				public new function HRESULT(IAppxFactory *self, IStream* blockMapStream, PWSTR signatureFileName, IAppxBlockMapReader** blockMapReader) CreateValidatedBlockMapReader;
			}
		}
		[CRepr]
		public struct IAppxFactory2 : IUnknown
		{
			public const new Guid IID = .(0xf1346df2, 0xc282, 0x4e22, 0xb9, 0x18, 0x74, 0x3a, 0x92, 0x9a, 0x8d, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateContentGroupMapReader(IStream* inputStream, IAppxContentGroupMapReader** contentGroupMapReader) mut
			{
				return VT.CreateContentGroupMapReader(&this, inputStream, contentGroupMapReader);
			}
			public HRESULT CreateSourceContentGroupMapReader(IStream* inputStream, IAppxSourceContentGroupMapReader** reader) mut
			{
				return VT.CreateSourceContentGroupMapReader(&this, inputStream, reader);
			}
			public HRESULT CreateContentGroupMapWriter(IStream* stream, IAppxContentGroupMapWriter** contentGroupMapWriter) mut
			{
				return VT.CreateContentGroupMapWriter(&this, stream, contentGroupMapWriter);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxFactory2 *self, IStream* inputStream, IAppxContentGroupMapReader** contentGroupMapReader) CreateContentGroupMapReader;
				public new function HRESULT(IAppxFactory2 *self, IStream* inputStream, IAppxSourceContentGroupMapReader** reader) CreateSourceContentGroupMapReader;
				public new function HRESULT(IAppxFactory2 *self, IStream* stream, IAppxContentGroupMapWriter** contentGroupMapWriter) CreateContentGroupMapWriter;
			}
		}
		[CRepr]
		public struct IAppxPackageReader : IUnknown
		{
			public const new Guid IID = .(0xb5c49650, 0x99bc, 0x481c, 0x9a, 0x34, 0x3d, 0x53, 0xa4, 0x10, 0x67, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBlockMap(IAppxBlockMapReader** blockMapReader) mut
			{
				return VT.GetBlockMap(&this, blockMapReader);
			}
			public HRESULT GetFootprintFile(APPX_FOOTPRINT_FILE_TYPE type, IAppxFile** file) mut
			{
				return VT.GetFootprintFile(&this, type, file);
			}
			public HRESULT GetPayloadFile(PWSTR fileName, IAppxFile** file) mut
			{
				return VT.GetPayloadFile(&this, fileName, file);
			}
			public HRESULT GetPayloadFiles(IAppxFilesEnumerator** filesEnumerator) mut
			{
				return VT.GetPayloadFiles(&this, filesEnumerator);
			}
			public HRESULT GetManifest(IAppxManifestReader** manifestReader) mut
			{
				return VT.GetManifest(&this, manifestReader);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxPackageReader *self, IAppxBlockMapReader** blockMapReader) GetBlockMap;
				public new function HRESULT(IAppxPackageReader *self, APPX_FOOTPRINT_FILE_TYPE type, IAppxFile** file) GetFootprintFile;
				public new function HRESULT(IAppxPackageReader *self, PWSTR fileName, IAppxFile** file) GetPayloadFile;
				public new function HRESULT(IAppxPackageReader *self, IAppxFilesEnumerator** filesEnumerator) GetPayloadFiles;
				public new function HRESULT(IAppxPackageReader *self, IAppxManifestReader** manifestReader) GetManifest;
			}
		}
		[CRepr]
		public struct IAppxPackageWriter : IUnknown
		{
			public const new Guid IID = .(0x9099e33b, 0x246f, 0x41e4, 0x88, 0x1a, 0x00, 0x8e, 0xb6, 0x13, 0xf8, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadFile(PWSTR fileName, PWSTR contentType, APPX_COMPRESSION_OPTION compressionOption, IStream* inputStream) mut
			{
				return VT.AddPayloadFile(&this, fileName, contentType, compressionOption, inputStream);
			}
			public HRESULT Close(IStream* manifest) mut
			{
				return VT.Close(&this, manifest);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxPackageWriter *self, PWSTR fileName, PWSTR contentType, APPX_COMPRESSION_OPTION compressionOption, IStream* inputStream) AddPayloadFile;
				public new function HRESULT(IAppxPackageWriter *self, IStream* manifest) Close;
			}
		}
		[CRepr]
		public struct IAppxPackageWriter2 : IUnknown
		{
			public const new Guid IID = .(0x2cf5c4fd, 0xe54c, 0x4ea5, 0xba, 0x4e, 0xf8, 0xc4, 0xb1, 0x05, 0xa8, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Close(IStream* manifest, IStream* contentGroupMap) mut
			{
				return VT.Close(&this, manifest, contentGroupMap);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxPackageWriter2 *self, IStream* manifest, IStream* contentGroupMap) Close;
			}
		}
		[CRepr]
		public struct IAppxPackageWriter3 : IUnknown
		{
			public const new Guid IID = .(0xa83aacd3, 0x41c0, 0x4501, 0xb8, 0xa3, 0x74, 0x16, 0x4f, 0x50, 0xb2, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadFiles(uint32 fileCount, APPX_PACKAGE_WRITER_PAYLOAD_STREAM* payloadFiles, uint64 memoryLimit) mut
			{
				return VT.AddPayloadFiles(&this, fileCount, payloadFiles, memoryLimit);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxPackageWriter3 *self, uint32 fileCount, APPX_PACKAGE_WRITER_PAYLOAD_STREAM* payloadFiles, uint64 memoryLimit) AddPayloadFiles;
			}
		}
		[CRepr]
		public struct IAppxFile : IUnknown
		{
			public const new Guid IID = .(0x91df827b, 0x94fd, 0x468f, 0x82, 0x7b, 0x57, 0xf4, 0x1b, 0x2f, 0x6f, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCompressionOption(APPX_COMPRESSION_OPTION* compressionOption) mut
			{
				return VT.GetCompressionOption(&this, compressionOption);
			}
			public HRESULT GetContentType(PWSTR* contentType) mut
			{
				return VT.GetContentType(&this, contentType);
			}
			public HRESULT GetName(PWSTR* fileName) mut
			{
				return VT.GetName(&this, fileName);
			}
			public HRESULT GetSize(uint64* size) mut
			{
				return VT.GetSize(&this, size);
			}
			public HRESULT GetStream(IStream** stream) mut
			{
				return VT.GetStream(&this, stream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxFile *self, APPX_COMPRESSION_OPTION* compressionOption) GetCompressionOption;
				public new function HRESULT(IAppxFile *self, PWSTR* contentType) GetContentType;
				public new function HRESULT(IAppxFile *self, PWSTR* fileName) GetName;
				public new function HRESULT(IAppxFile *self, uint64* size) GetSize;
				public new function HRESULT(IAppxFile *self, IStream** stream) GetStream;
			}
		}
		[CRepr]
		public struct IAppxFilesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xf007eeaf, 0x9831, 0x411c, 0x98, 0x47, 0x91, 0x7c, 0xdc, 0x62, 0xd1, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxFile** file) mut
			{
				return VT.GetCurrent(&this, file);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxFilesEnumerator *self, IAppxFile** file) GetCurrent;
				public new function HRESULT(IAppxFilesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxFilesEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxBlockMapReader : IUnknown
		{
			public const new Guid IID = .(0x5efec991, 0xbca3, 0x42d1, 0x9e, 0xc2, 0xe9, 0x2d, 0x60, 0x9e, 0xc2, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFile(PWSTR filename, IAppxBlockMapFile** file) mut
			{
				return VT.GetFile(&this, filename, file);
			}
			public HRESULT GetFiles(IAppxBlockMapFilesEnumerator** enumerator) mut
			{
				return VT.GetFiles(&this, enumerator);
			}
			public HRESULT GetHashMethod(IUri** hashMethod) mut
			{
				return VT.GetHashMethod(&this, hashMethod);
			}
			public HRESULT GetStream(IStream** blockMapStream) mut
			{
				return VT.GetStream(&this, blockMapStream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBlockMapReader *self, PWSTR filename, IAppxBlockMapFile** file) GetFile;
				public new function HRESULT(IAppxBlockMapReader *self, IAppxBlockMapFilesEnumerator** enumerator) GetFiles;
				public new function HRESULT(IAppxBlockMapReader *self, IUri** hashMethod) GetHashMethod;
				public new function HRESULT(IAppxBlockMapReader *self, IStream** blockMapStream) GetStream;
			}
		}
		[CRepr]
		public struct IAppxBlockMapFile : IUnknown
		{
			public const new Guid IID = .(0x277672ac, 0x4f63, 0x42c1, 0x8a, 0xbc, 0xbe, 0xae, 0x36, 0x00, 0xeb, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBlocks(IAppxBlockMapBlocksEnumerator** blocks) mut
			{
				return VT.GetBlocks(&this, blocks);
			}
			public HRESULT GetLocalFileHeaderSize(uint32* lfhSize) mut
			{
				return VT.GetLocalFileHeaderSize(&this, lfhSize);
			}
			public HRESULT GetName(PWSTR* name) mut
			{
				return VT.GetName(&this, name);
			}
			public HRESULT GetUncompressedSize(uint64* size) mut
			{
				return VT.GetUncompressedSize(&this, size);
			}
			public HRESULT ValidateFileHash(IStream* fileStream, BOOL* isValid) mut
			{
				return VT.ValidateFileHash(&this, fileStream, isValid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBlockMapFile *self, IAppxBlockMapBlocksEnumerator** blocks) GetBlocks;
				public new function HRESULT(IAppxBlockMapFile *self, uint32* lfhSize) GetLocalFileHeaderSize;
				public new function HRESULT(IAppxBlockMapFile *self, PWSTR* name) GetName;
				public new function HRESULT(IAppxBlockMapFile *self, uint64* size) GetUncompressedSize;
				public new function HRESULT(IAppxBlockMapFile *self, IStream* fileStream, BOOL* isValid) ValidateFileHash;
			}
		}
		[CRepr]
		public struct IAppxBlockMapFilesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x02b856a2, 0x4262, 0x4070, 0xba, 0xcb, 0x1a, 0x8c, 0xbb, 0xc4, 0x23, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxBlockMapFile** file) mut
			{
				return VT.GetCurrent(&this, file);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasCurrent) mut
			{
				return VT.MoveNext(&this, hasCurrent);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBlockMapFilesEnumerator *self, IAppxBlockMapFile** file) GetCurrent;
				public new function HRESULT(IAppxBlockMapFilesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxBlockMapFilesEnumerator *self, BOOL* hasCurrent) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxBlockMapBlock : IUnknown
		{
			public const new Guid IID = .(0x75cf3930, 0x3244, 0x4fe0, 0xa8, 0xc8, 0xe0, 0xbc, 0xb2, 0x70, 0xb8, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHash(uint32* bufferSize, uint8** buffer) mut
			{
				return VT.GetHash(&this, bufferSize, buffer);
			}
			public HRESULT GetCompressedSize(uint32* size) mut
			{
				return VT.GetCompressedSize(&this, size);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBlockMapBlock *self, uint32* bufferSize, uint8** buffer) GetHash;
				public new function HRESULT(IAppxBlockMapBlock *self, uint32* size) GetCompressedSize;
			}
		}
		[CRepr]
		public struct IAppxBlockMapBlocksEnumerator : IUnknown
		{
			public const new Guid IID = .(0x6b429b5b, 0x36ef, 0x479e, 0xb9, 0xeb, 0x0c, 0x14, 0x82, 0xb4, 0x9e, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxBlockMapBlock** block) mut
			{
				return VT.GetCurrent(&this, block);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBlockMapBlocksEnumerator *self, IAppxBlockMapBlock** block) GetCurrent;
				public new function HRESULT(IAppxBlockMapBlocksEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxBlockMapBlocksEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestReader : IUnknown
		{
			public const new Guid IID = .(0x4e1bd148, 0x55a0, 0x4480, 0xa3, 0xd1, 0x15, 0x54, 0x47, 0x10, 0x63, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPackageId(IAppxManifestPackageId** packageId) mut
			{
				return VT.GetPackageId(&this, packageId);
			}
			public HRESULT GetProperties(IAppxManifestProperties** packageProperties) mut
			{
				return VT.GetProperties(&this, packageProperties);
			}
			public HRESULT GetPackageDependencies(IAppxManifestPackageDependenciesEnumerator** dependencies) mut
			{
				return VT.GetPackageDependencies(&this, dependencies);
			}
			public HRESULT GetCapabilities(APPX_CAPABILITIES* capabilities) mut
			{
				return VT.GetCapabilities(&this, capabilities);
			}
			public HRESULT GetResources(IAppxManifestResourcesEnumerator** resources) mut
			{
				return VT.GetResources(&this, resources);
			}
			public HRESULT GetDeviceCapabilities(IAppxManifestDeviceCapabilitiesEnumerator** deviceCapabilities) mut
			{
				return VT.GetDeviceCapabilities(&this, deviceCapabilities);
			}
			public HRESULT GetPrerequisite(PWSTR name, uint64* value) mut
			{
				return VT.GetPrerequisite(&this, name, value);
			}
			public HRESULT GetApplications(IAppxManifestApplicationsEnumerator** applications) mut
			{
				return VT.GetApplications(&this, applications);
			}
			public HRESULT GetStream(IStream** manifestStream) mut
			{
				return VT.GetStream(&this, manifestStream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestReader *self, IAppxManifestPackageId** packageId) GetPackageId;
				public new function HRESULT(IAppxManifestReader *self, IAppxManifestProperties** packageProperties) GetProperties;
				public new function HRESULT(IAppxManifestReader *self, IAppxManifestPackageDependenciesEnumerator** dependencies) GetPackageDependencies;
				public new function HRESULT(IAppxManifestReader *self, APPX_CAPABILITIES* capabilities) GetCapabilities;
				public new function HRESULT(IAppxManifestReader *self, IAppxManifestResourcesEnumerator** resources) GetResources;
				public new function HRESULT(IAppxManifestReader *self, IAppxManifestDeviceCapabilitiesEnumerator** deviceCapabilities) GetDeviceCapabilities;
				public new function HRESULT(IAppxManifestReader *self, PWSTR name, uint64* value) GetPrerequisite;
				public new function HRESULT(IAppxManifestReader *self, IAppxManifestApplicationsEnumerator** applications) GetApplications;
				public new function HRESULT(IAppxManifestReader *self, IStream** manifestStream) GetStream;
			}
		}
		[CRepr]
		public struct IAppxManifestReader2 : IAppxManifestReader
		{
			public const new Guid IID = .(0xd06f67bc, 0xb31d, 0x4eba, 0xa8, 0xaf, 0x63, 0x8e, 0x73, 0xe7, 0x7b, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetQualifiedResources(IAppxManifestQualifiedResourcesEnumerator** resources) mut
			{
				return VT.GetQualifiedResources(&this, resources);
			}
			[CRepr]
			public struct VTable : IAppxManifestReader.VTable
			{
				public new function HRESULT(IAppxManifestReader2 *self, IAppxManifestQualifiedResourcesEnumerator** resources) GetQualifiedResources;
			}
		}
		[CRepr]
		public struct IAppxManifestReader3 : IAppxManifestReader2
		{
			public const new Guid IID = .(0xc43825ab, 0x69b7, 0x400a, 0x97, 0x09, 0xcc, 0x37, 0xf5, 0xa7, 0x2d, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCapabilitiesByCapabilityClass(APPX_CAPABILITY_CLASS_TYPE capabilityClass, IAppxManifestCapabilitiesEnumerator** capabilities) mut
			{
				return VT.GetCapabilitiesByCapabilityClass(&this, capabilityClass, capabilities);
			}
			public HRESULT GetTargetDeviceFamilies(IAppxManifestTargetDeviceFamiliesEnumerator** targetDeviceFamilies) mut
			{
				return VT.GetTargetDeviceFamilies(&this, targetDeviceFamilies);
			}
			[CRepr]
			public struct VTable : IAppxManifestReader2.VTable
			{
				public new function HRESULT(IAppxManifestReader3 *self, APPX_CAPABILITY_CLASS_TYPE capabilityClass, IAppxManifestCapabilitiesEnumerator** capabilities) GetCapabilitiesByCapabilityClass;
				public new function HRESULT(IAppxManifestReader3 *self, IAppxManifestTargetDeviceFamiliesEnumerator** targetDeviceFamilies) GetTargetDeviceFamilies;
			}
		}
		[CRepr]
		public struct IAppxManifestReader4 : IAppxManifestReader3
		{
			public const new Guid IID = .(0x4579bb7c, 0x741d, 0x4161, 0xb5, 0xa1, 0x47, 0xbd, 0x3b, 0x78, 0xad, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOptionalPackageInfo(IAppxManifestOptionalPackageInfo** optionalPackageInfo) mut
			{
				return VT.GetOptionalPackageInfo(&this, optionalPackageInfo);
			}
			[CRepr]
			public struct VTable : IAppxManifestReader3.VTable
			{
				public new function HRESULT(IAppxManifestReader4 *self, IAppxManifestOptionalPackageInfo** optionalPackageInfo) GetOptionalPackageInfo;
			}
		}
		[CRepr]
		public struct IAppxManifestReader5 : IUnknown
		{
			public const new Guid IID = .(0x8d7ae132, 0xa690, 0x4c00, 0xb7, 0x5a, 0x6a, 0xae, 0x1f, 0xea, 0xac, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMainPackageDependencies(IAppxManifestMainPackageDependenciesEnumerator** mainPackageDependencies) mut
			{
				return VT.GetMainPackageDependencies(&this, mainPackageDependencies);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestReader5 *self, IAppxManifestMainPackageDependenciesEnumerator** mainPackageDependencies) GetMainPackageDependencies;
			}
		}
		[CRepr]
		public struct IAppxManifestReader6 : IUnknown
		{
			public const new Guid IID = .(0x34deaca4, 0xd3c0, 0x4e3e, 0xb3, 0x12, 0xe4, 0x26, 0x25, 0xe3, 0x80, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIsNonQualifiedResourcePackage(BOOL* isNonQualifiedResourcePackage) mut
			{
				return VT.GetIsNonQualifiedResourcePackage(&this, isNonQualifiedResourcePackage);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestReader6 *self, BOOL* isNonQualifiedResourcePackage) GetIsNonQualifiedResourcePackage;
			}
		}
		[CRepr]
		public struct IAppxManifestReader7 : IUnknown
		{
			public const new Guid IID = .(0x8efe6f27, 0x0ce0, 0x4988, 0xb3, 0x2d, 0x73, 0x8e, 0xb6, 0x3d, 0xb3, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDriverDependencies(IAppxManifestDriverDependenciesEnumerator** driverDependencies) mut
			{
				return VT.GetDriverDependencies(&this, driverDependencies);
			}
			public HRESULT GetOSPackageDependencies(IAppxManifestOSPackageDependenciesEnumerator** osPackageDependencies) mut
			{
				return VT.GetOSPackageDependencies(&this, osPackageDependencies);
			}
			public HRESULT GetHostRuntimeDependencies(IAppxManifestHostRuntimeDependenciesEnumerator** hostRuntimeDependencies) mut
			{
				return VT.GetHostRuntimeDependencies(&this, hostRuntimeDependencies);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestReader7 *self, IAppxManifestDriverDependenciesEnumerator** driverDependencies) GetDriverDependencies;
				public new function HRESULT(IAppxManifestReader7 *self, IAppxManifestOSPackageDependenciesEnumerator** osPackageDependencies) GetOSPackageDependencies;
				public new function HRESULT(IAppxManifestReader7 *self, IAppxManifestHostRuntimeDependenciesEnumerator** hostRuntimeDependencies) GetHostRuntimeDependencies;
			}
		}
		[CRepr]
		public struct IAppxManifestDriverDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xfe039db2, 0x467f, 0x4755, 0x84, 0x04, 0x8f, 0x5e, 0xb6, 0x86, 0x5b, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxManifestDriverDependency** driverDependency) mut
			{
				return VT.GetCurrent(&this, driverDependency);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestDriverDependenciesEnumerator *self, IAppxManifestDriverDependency** driverDependency) GetCurrent;
				public new function HRESULT(IAppxManifestDriverDependenciesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxManifestDriverDependenciesEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestDriverDependency : IUnknown
		{
			public const new Guid IID = .(0x1210cb94, 0x5a92, 0x4602, 0xbe, 0x24, 0x79, 0xf3, 0x18, 0xaf, 0x4a, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDriverConstraints(IAppxManifestDriverConstraintsEnumerator** driverConstraints) mut
			{
				return VT.GetDriverConstraints(&this, driverConstraints);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestDriverDependency *self, IAppxManifestDriverConstraintsEnumerator** driverConstraints) GetDriverConstraints;
			}
		}
		[CRepr]
		public struct IAppxManifestDriverConstraintsEnumerator : IUnknown
		{
			public const new Guid IID = .(0xd402b2d1, 0xf600, 0x49e0, 0x95, 0xe6, 0x97, 0x5d, 0x8d, 0xa1, 0x3d, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxManifestDriverConstraint** driverConstraint) mut
			{
				return VT.GetCurrent(&this, driverConstraint);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestDriverConstraintsEnumerator *self, IAppxManifestDriverConstraint** driverConstraint) GetCurrent;
				public new function HRESULT(IAppxManifestDriverConstraintsEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxManifestDriverConstraintsEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestDriverConstraint : IUnknown
		{
			public const new Guid IID = .(0xc031bee4, 0xbbcc, 0x48ea, 0xa2, 0x37, 0xc3, 0x40, 0x45, 0xc8, 0x0a, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* name) mut
			{
				return VT.GetName(&this, name);
			}
			public HRESULT GetMinVersion(uint64* minVersion) mut
			{
				return VT.GetMinVersion(&this, minVersion);
			}
			public HRESULT GetMinDate(PWSTR* minDate) mut
			{
				return VT.GetMinDate(&this, minDate);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestDriverConstraint *self, PWSTR* name) GetName;
				public new function HRESULT(IAppxManifestDriverConstraint *self, uint64* minVersion) GetMinVersion;
				public new function HRESULT(IAppxManifestDriverConstraint *self, PWSTR* minDate) GetMinDate;
			}
		}
		[CRepr]
		public struct IAppxManifestOSPackageDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xb84e2fc3, 0xf8ec, 0x4bc1, 0x8a, 0xe2, 0x15, 0x63, 0x46, 0xf5, 0xff, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxManifestOSPackageDependency** osPackageDependency) mut
			{
				return VT.GetCurrent(&this, osPackageDependency);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestOSPackageDependenciesEnumerator *self, IAppxManifestOSPackageDependency** osPackageDependency) GetCurrent;
				public new function HRESULT(IAppxManifestOSPackageDependenciesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxManifestOSPackageDependenciesEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestOSPackageDependency : IUnknown
		{
			public const new Guid IID = .(0x154995ee, 0x54a6, 0x4f14, 0xac, 0x97, 0xd8, 0xcf, 0x05, 0x19, 0x64, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* name) mut
			{
				return VT.GetName(&this, name);
			}
			public HRESULT GetVersion(uint64* version) mut
			{
				return VT.GetVersion(&this, version);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestOSPackageDependency *self, PWSTR* name) GetName;
				public new function HRESULT(IAppxManifestOSPackageDependency *self, uint64* version) GetVersion;
			}
		}
		[CRepr]
		public struct IAppxManifestHostRuntimeDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x6427a646, 0x7f49, 0x433e, 0xb1, 0xa6, 0x0d, 0xa3, 0x09, 0xf6, 0x88, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxManifestHostRuntimeDependency** hostRuntimeDependency) mut
			{
				return VT.GetCurrent(&this, hostRuntimeDependency);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestHostRuntimeDependenciesEnumerator *self, IAppxManifestHostRuntimeDependency** hostRuntimeDependency) GetCurrent;
				public new function HRESULT(IAppxManifestHostRuntimeDependenciesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxManifestHostRuntimeDependenciesEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestHostRuntimeDependency : IUnknown
		{
			public const new Guid IID = .(0x3455d234, 0x8414, 0x410d, 0x95, 0xc7, 0x7b, 0x35, 0x25, 0x5b, 0x83, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* name) mut
			{
				return VT.GetName(&this, name);
			}
			public HRESULT GetPublisher(PWSTR* publisher) mut
			{
				return VT.GetPublisher(&this, publisher);
			}
			public HRESULT GetMinVersion(uint64* minVersion) mut
			{
				return VT.GetMinVersion(&this, minVersion);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestHostRuntimeDependency *self, PWSTR* name) GetName;
				public new function HRESULT(IAppxManifestHostRuntimeDependency *self, PWSTR* publisher) GetPublisher;
				public new function HRESULT(IAppxManifestHostRuntimeDependency *self, uint64* minVersion) GetMinVersion;
			}
		}
		[CRepr]
		public struct IAppxManifestHostRuntimeDependency2 : IUnknown
		{
			public const new Guid IID = .(0xc26f23a8, 0xee10, 0x4ad6, 0xb8, 0x98, 0x2b, 0x4d, 0x7a, 0xeb, 0xfe, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPackageFamilyName(PWSTR* packageFamilyName) mut
			{
				return VT.GetPackageFamilyName(&this, packageFamilyName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestHostRuntimeDependency2 *self, PWSTR* packageFamilyName) GetPackageFamilyName;
			}
		}
		[CRepr]
		public struct IAppxManifestOptionalPackageInfo : IUnknown
		{
			public const new Guid IID = .(0x2634847d, 0x5b5d, 0x4fe5, 0xa2, 0x43, 0x00, 0x2f, 0xf9, 0x5e, 0xdc, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIsOptionalPackage(BOOL* isOptionalPackage) mut
			{
				return VT.GetIsOptionalPackage(&this, isOptionalPackage);
			}
			public HRESULT GetMainPackageName(PWSTR* mainPackageName) mut
			{
				return VT.GetMainPackageName(&this, mainPackageName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestOptionalPackageInfo *self, BOOL* isOptionalPackage) GetIsOptionalPackage;
				public new function HRESULT(IAppxManifestOptionalPackageInfo *self, PWSTR* mainPackageName) GetMainPackageName;
			}
		}
		[CRepr]
		public struct IAppxManifestMainPackageDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xa99c4f00, 0x51d2, 0x4f0f, 0xba, 0x46, 0x7e, 0xd5, 0x25, 0x5e, 0xbd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxManifestMainPackageDependency** mainPackageDependency) mut
			{
				return VT.GetCurrent(&this, mainPackageDependency);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestMainPackageDependenciesEnumerator *self, IAppxManifestMainPackageDependency** mainPackageDependency) GetCurrent;
				public new function HRESULT(IAppxManifestMainPackageDependenciesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxManifestMainPackageDependenciesEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestMainPackageDependency : IUnknown
		{
			public const new Guid IID = .(0x05d0611c, 0xbc29, 0x46d5, 0x97, 0xe2, 0x84, 0xb9, 0xc7, 0x9b, 0xd8, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* name) mut
			{
				return VT.GetName(&this, name);
			}
			public HRESULT GetPublisher(PWSTR* publisher) mut
			{
				return VT.GetPublisher(&this, publisher);
			}
			public HRESULT GetPackageFamilyName(PWSTR* packageFamilyName) mut
			{
				return VT.GetPackageFamilyName(&this, packageFamilyName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestMainPackageDependency *self, PWSTR* name) GetName;
				public new function HRESULT(IAppxManifestMainPackageDependency *self, PWSTR* publisher) GetPublisher;
				public new function HRESULT(IAppxManifestMainPackageDependency *self, PWSTR* packageFamilyName) GetPackageFamilyName;
			}
		}
		[CRepr]
		public struct IAppxManifestPackageId : IUnknown
		{
			public const new Guid IID = .(0x283ce2d7, 0x7153, 0x4a91, 0x96, 0x49, 0x7a, 0x0f, 0x72, 0x40, 0x94, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* name) mut
			{
				return VT.GetName(&this, name);
			}
			public HRESULT GetArchitecture(APPX_PACKAGE_ARCHITECTURE* architecture) mut
			{
				return VT.GetArchitecture(&this, architecture);
			}
			public HRESULT GetPublisher(PWSTR* publisher) mut
			{
				return VT.GetPublisher(&this, publisher);
			}
			public HRESULT GetVersion(uint64* packageVersion) mut
			{
				return VT.GetVersion(&this, packageVersion);
			}
			public HRESULT GetResourceId(PWSTR* resourceId) mut
			{
				return VT.GetResourceId(&this, resourceId);
			}
			public HRESULT ComparePublisher(PWSTR other, BOOL* isSame) mut
			{
				return VT.ComparePublisher(&this, other, isSame);
			}
			public HRESULT GetPackageFullName(PWSTR* packageFullName) mut
			{
				return VT.GetPackageFullName(&this, packageFullName);
			}
			public HRESULT GetPackageFamilyName(PWSTR* packageFamilyName) mut
			{
				return VT.GetPackageFamilyName(&this, packageFamilyName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestPackageId *self, PWSTR* name) GetName;
				public new function HRESULT(IAppxManifestPackageId *self, APPX_PACKAGE_ARCHITECTURE* architecture) GetArchitecture;
				public new function HRESULT(IAppxManifestPackageId *self, PWSTR* publisher) GetPublisher;
				public new function HRESULT(IAppxManifestPackageId *self, uint64* packageVersion) GetVersion;
				public new function HRESULT(IAppxManifestPackageId *self, PWSTR* resourceId) GetResourceId;
				public new function HRESULT(IAppxManifestPackageId *self, PWSTR other, BOOL* isSame) ComparePublisher;
				public new function HRESULT(IAppxManifestPackageId *self, PWSTR* packageFullName) GetPackageFullName;
				public new function HRESULT(IAppxManifestPackageId *self, PWSTR* packageFamilyName) GetPackageFamilyName;
			}
		}
		[CRepr]
		public struct IAppxManifestPackageId2 : IAppxManifestPackageId
		{
			public const new Guid IID = .(0x2256999d, 0xd617, 0x42f1, 0x88, 0x0e, 0x0b, 0xa4, 0x54, 0x23, 0x19, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetArchitecture2(APPX_PACKAGE_ARCHITECTURE2* architecture) mut
			{
				return VT.GetArchitecture2(&this, architecture);
			}
			[CRepr]
			public struct VTable : IAppxManifestPackageId.VTable
			{
				public new function HRESULT(IAppxManifestPackageId2 *self, APPX_PACKAGE_ARCHITECTURE2* architecture) GetArchitecture2;
			}
		}
		[CRepr]
		public struct IAppxManifestProperties : IUnknown
		{
			public const new Guid IID = .(0x03faf64d, 0xf26f, 0x4b2c, 0xaa, 0xf7, 0x8f, 0xe7, 0x78, 0x9b, 0x8b, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBoolValue(PWSTR name, BOOL* value) mut
			{
				return VT.GetBoolValue(&this, name, value);
			}
			public HRESULT GetStringValue(PWSTR name, PWSTR* value) mut
			{
				return VT.GetStringValue(&this, name, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestProperties *self, PWSTR name, BOOL* value) GetBoolValue;
				public new function HRESULT(IAppxManifestProperties *self, PWSTR name, PWSTR* value) GetStringValue;
			}
		}
		[CRepr]
		public struct IAppxManifestTargetDeviceFamiliesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x36537f36, 0x27a4, 0x4788, 0x88, 0xc0, 0x73, 0x38, 0x19, 0x57, 0x50, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxManifestTargetDeviceFamily** targetDeviceFamily) mut
			{
				return VT.GetCurrent(&this, targetDeviceFamily);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestTargetDeviceFamiliesEnumerator *self, IAppxManifestTargetDeviceFamily** targetDeviceFamily) GetCurrent;
				public new function HRESULT(IAppxManifestTargetDeviceFamiliesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxManifestTargetDeviceFamiliesEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestTargetDeviceFamily : IUnknown
		{
			public const new Guid IID = .(0x9091b09b, 0xc8d5, 0x4f31, 0x86, 0x87, 0xa3, 0x38, 0x25, 0x9f, 0xae, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* name) mut
			{
				return VT.GetName(&this, name);
			}
			public HRESULT GetMinVersion(uint64* minVersion) mut
			{
				return VT.GetMinVersion(&this, minVersion);
			}
			public HRESULT GetMaxVersionTested(uint64* maxVersionTested) mut
			{
				return VT.GetMaxVersionTested(&this, maxVersionTested);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestTargetDeviceFamily *self, PWSTR* name) GetName;
				public new function HRESULT(IAppxManifestTargetDeviceFamily *self, uint64* minVersion) GetMinVersion;
				public new function HRESULT(IAppxManifestTargetDeviceFamily *self, uint64* maxVersionTested) GetMaxVersionTested;
			}
		}
		[CRepr]
		public struct IAppxManifestPackageDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xb43bbcf9, 0x65a6, 0x42dd, 0xba, 0xc0, 0x8c, 0x67, 0x41, 0xe7, 0xf5, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxManifestPackageDependency** dependency) mut
			{
				return VT.GetCurrent(&this, dependency);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestPackageDependenciesEnumerator *self, IAppxManifestPackageDependency** dependency) GetCurrent;
				public new function HRESULT(IAppxManifestPackageDependenciesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxManifestPackageDependenciesEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestPackageDependency : IUnknown
		{
			public const new Guid IID = .(0xe4946b59, 0x733e, 0x43f0, 0xa7, 0x24, 0x3b, 0xde, 0x4c, 0x12, 0x85, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* name) mut
			{
				return VT.GetName(&this, name);
			}
			public HRESULT GetPublisher(PWSTR* publisher) mut
			{
				return VT.GetPublisher(&this, publisher);
			}
			public HRESULT GetMinVersion(uint64* minVersion) mut
			{
				return VT.GetMinVersion(&this, minVersion);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestPackageDependency *self, PWSTR* name) GetName;
				public new function HRESULT(IAppxManifestPackageDependency *self, PWSTR* publisher) GetPublisher;
				public new function HRESULT(IAppxManifestPackageDependency *self, uint64* minVersion) GetMinVersion;
			}
		}
		[CRepr]
		public struct IAppxManifestPackageDependency2 : IAppxManifestPackageDependency
		{
			public const new Guid IID = .(0xdda0b713, 0xf3ff, 0x49d3, 0x89, 0x8a, 0x27, 0x86, 0x78, 0x0c, 0x5d, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMaxMajorVersionTested(uint16* maxMajorVersionTested) mut
			{
				return VT.GetMaxMajorVersionTested(&this, maxMajorVersionTested);
			}
			[CRepr]
			public struct VTable : IAppxManifestPackageDependency.VTable
			{
				public new function HRESULT(IAppxManifestPackageDependency2 *self, uint16* maxMajorVersionTested) GetMaxMajorVersionTested;
			}
		}
		[CRepr]
		public struct IAppxManifestPackageDependency3 : IUnknown
		{
			public const new Guid IID = .(0x1ac56374, 0x6198, 0x4d6b, 0x92, 0xe4, 0x74, 0x9d, 0x5a, 0xb8, 0xa8, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIsOptional(BOOL* isOptional) mut
			{
				return VT.GetIsOptional(&this, isOptional);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestPackageDependency3 *self, BOOL* isOptional) GetIsOptional;
			}
		}
		[CRepr]
		public struct IAppxManifestResourcesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xde4dfbbd, 0x881a, 0x48bb, 0x85, 0x8c, 0xd6, 0xf2, 0xba, 0xea, 0xe6, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(PWSTR* resource) mut
			{
				return VT.GetCurrent(&this, resource);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestResourcesEnumerator *self, PWSTR* resource) GetCurrent;
				public new function HRESULT(IAppxManifestResourcesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxManifestResourcesEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestDeviceCapabilitiesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x30204541, 0x427b, 0x4a1c, 0xba, 0xcf, 0x65, 0x5b, 0xf4, 0x63, 0xa5, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(PWSTR* deviceCapability) mut
			{
				return VT.GetCurrent(&this, deviceCapability);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestDeviceCapabilitiesEnumerator *self, PWSTR* deviceCapability) GetCurrent;
				public new function HRESULT(IAppxManifestDeviceCapabilitiesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxManifestDeviceCapabilitiesEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestCapabilitiesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x11d22258, 0xf470, 0x42c1, 0xb2, 0x91, 0x83, 0x61, 0xc5, 0x43, 0x7e, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(PWSTR* capability) mut
			{
				return VT.GetCurrent(&this, capability);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestCapabilitiesEnumerator *self, PWSTR* capability) GetCurrent;
				public new function HRESULT(IAppxManifestCapabilitiesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxManifestCapabilitiesEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestApplicationsEnumerator : IUnknown
		{
			public const new Guid IID = .(0x9eb8a55a, 0xf04b, 0x4d0d, 0x80, 0x8d, 0x68, 0x61, 0x85, 0xd4, 0x84, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxManifestApplication** application) mut
			{
				return VT.GetCurrent(&this, application);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestApplicationsEnumerator *self, IAppxManifestApplication** application) GetCurrent;
				public new function HRESULT(IAppxManifestApplicationsEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxManifestApplicationsEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestApplication : IUnknown
		{
			public const new Guid IID = .(0x5da89bf4, 0x3773, 0x46be, 0xb6, 0x50, 0x7e, 0x74, 0x48, 0x63, 0xb7, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStringValue(PWSTR name, PWSTR* value) mut
			{
				return VT.GetStringValue(&this, name, value);
			}
			public HRESULT GetAppUserModelId(PWSTR* appUserModelId) mut
			{
				return VT.GetAppUserModelId(&this, appUserModelId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestApplication *self, PWSTR name, PWSTR* value) GetStringValue;
				public new function HRESULT(IAppxManifestApplication *self, PWSTR* appUserModelId) GetAppUserModelId;
			}
		}
		[CRepr]
		public struct IAppxManifestQualifiedResourcesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x8ef6adfe, 0x3762, 0x4a8f, 0x93, 0x73, 0x2f, 0xc5, 0xd4, 0x44, 0xc8, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxManifestQualifiedResource** resource) mut
			{
				return VT.GetCurrent(&this, resource);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestQualifiedResourcesEnumerator *self, IAppxManifestQualifiedResource** resource) GetCurrent;
				public new function HRESULT(IAppxManifestQualifiedResourcesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxManifestQualifiedResourcesEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestQualifiedResource : IUnknown
		{
			public const new Guid IID = .(0x3b53a497, 0x3c5c, 0x48d1, 0x9e, 0xa3, 0xbb, 0x7e, 0xac, 0x8c, 0xd7, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLanguage(PWSTR* language) mut
			{
				return VT.GetLanguage(&this, language);
			}
			public HRESULT GetScale(uint32* scale) mut
			{
				return VT.GetScale(&this, scale);
			}
			public HRESULT GetDXFeatureLevel(DX_FEATURE_LEVEL* dxFeatureLevel) mut
			{
				return VT.GetDXFeatureLevel(&this, dxFeatureLevel);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxManifestQualifiedResource *self, PWSTR* language) GetLanguage;
				public new function HRESULT(IAppxManifestQualifiedResource *self, uint32* scale) GetScale;
				public new function HRESULT(IAppxManifestQualifiedResource *self, DX_FEATURE_LEVEL* dxFeatureLevel) GetDXFeatureLevel;
			}
		}
		[CRepr]
		public struct IAppxBundleFactory : IUnknown
		{
			public const new Guid IID = .(0xbba65864, 0x965f, 0x4a5f, 0x85, 0x5f, 0xf0, 0x74, 0xbd, 0xbf, 0x3a, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateBundleWriter(IStream* outputStream, uint64 bundleVersion, IAppxBundleWriter** bundleWriter) mut
			{
				return VT.CreateBundleWriter(&this, outputStream, bundleVersion, bundleWriter);
			}
			public HRESULT CreateBundleReader(IStream* inputStream, IAppxBundleReader** bundleReader) mut
			{
				return VT.CreateBundleReader(&this, inputStream, bundleReader);
			}
			public HRESULT CreateBundleManifestReader(IStream* inputStream, IAppxBundleManifestReader** manifestReader) mut
			{
				return VT.CreateBundleManifestReader(&this, inputStream, manifestReader);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleFactory *self, IStream* outputStream, uint64 bundleVersion, IAppxBundleWriter** bundleWriter) CreateBundleWriter;
				public new function HRESULT(IAppxBundleFactory *self, IStream* inputStream, IAppxBundleReader** bundleReader) CreateBundleReader;
				public new function HRESULT(IAppxBundleFactory *self, IStream* inputStream, IAppxBundleManifestReader** manifestReader) CreateBundleManifestReader;
			}
		}
		[CRepr]
		public struct IAppxBundleWriter : IUnknown
		{
			public const new Guid IID = .(0xec446fe8, 0xbfec, 0x4c64, 0xab, 0x4f, 0x49, 0xf0, 0x38, 0xf0, 0xc6, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadPackage(PWSTR fileName, IStream* packageStream) mut
			{
				return VT.AddPayloadPackage(&this, fileName, packageStream);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleWriter *self, PWSTR fileName, IStream* packageStream) AddPayloadPackage;
				public new function HRESULT(IAppxBundleWriter *self) Close;
			}
		}
		[CRepr]
		public struct IAppxBundleWriter2 : IUnknown
		{
			public const new Guid IID = .(0x6d8fe971, 0x01cc, 0x49a0, 0xb6, 0x85, 0x23, 0x38, 0x51, 0x27, 0x99, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddExternalPackageReference(PWSTR fileName, IStream* inputStream) mut
			{
				return VT.AddExternalPackageReference(&this, fileName, inputStream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleWriter2 *self, PWSTR fileName, IStream* inputStream) AddExternalPackageReference;
			}
		}
		[CRepr]
		public struct IAppxBundleWriter3 : IUnknown
		{
			public const new Guid IID = .(0xad711152, 0xf969, 0x4193, 0x82, 0xd5, 0x9d, 0xdf, 0x27, 0x86, 0xd2, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPackageReference(PWSTR fileName, IStream* inputStream) mut
			{
				return VT.AddPackageReference(&this, fileName, inputStream);
			}
			public HRESULT Close(PWSTR hashMethodString) mut
			{
				return VT.Close(&this, hashMethodString);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleWriter3 *self, PWSTR fileName, IStream* inputStream) AddPackageReference;
				public new function HRESULT(IAppxBundleWriter3 *self, PWSTR hashMethodString) Close;
			}
		}
		[CRepr]
		public struct IAppxBundleWriter4 : IUnknown
		{
			public const new Guid IID = .(0x9cd9d523, 0x5009, 0x4c01, 0x98, 0x82, 0xdc, 0x02, 0x9f, 0xbd, 0x47, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadPackage(PWSTR fileName, IStream* packageStream, BOOL isDefaultApplicablePackage) mut
			{
				return VT.AddPayloadPackage(&this, fileName, packageStream, isDefaultApplicablePackage);
			}
			public HRESULT AddPackageReference(PWSTR fileName, IStream* inputStream, BOOL isDefaultApplicablePackage) mut
			{
				return VT.AddPackageReference(&this, fileName, inputStream, isDefaultApplicablePackage);
			}
			public HRESULT AddExternalPackageReference(PWSTR fileName, IStream* inputStream, BOOL isDefaultApplicablePackage) mut
			{
				return VT.AddExternalPackageReference(&this, fileName, inputStream, isDefaultApplicablePackage);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleWriter4 *self, PWSTR fileName, IStream* packageStream, BOOL isDefaultApplicablePackage) AddPayloadPackage;
				public new function HRESULT(IAppxBundleWriter4 *self, PWSTR fileName, IStream* inputStream, BOOL isDefaultApplicablePackage) AddPackageReference;
				public new function HRESULT(IAppxBundleWriter4 *self, PWSTR fileName, IStream* inputStream, BOOL isDefaultApplicablePackage) AddExternalPackageReference;
			}
		}
		[CRepr]
		public struct IAppxBundleReader : IUnknown
		{
			public const new Guid IID = .(0xdd75b8c0, 0xba76, 0x43b0, 0xae, 0x0f, 0x68, 0x65, 0x6a, 0x1d, 0xc5, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFootprintFile(APPX_BUNDLE_FOOTPRINT_FILE_TYPE fileType, IAppxFile** footprintFile) mut
			{
				return VT.GetFootprintFile(&this, fileType, footprintFile);
			}
			public HRESULT GetBlockMap(IAppxBlockMapReader** blockMapReader) mut
			{
				return VT.GetBlockMap(&this, blockMapReader);
			}
			public HRESULT GetManifest(IAppxBundleManifestReader** manifestReader) mut
			{
				return VT.GetManifest(&this, manifestReader);
			}
			public HRESULT GetPayloadPackages(IAppxFilesEnumerator** payloadPackages) mut
			{
				return VT.GetPayloadPackages(&this, payloadPackages);
			}
			public HRESULT GetPayloadPackage(PWSTR fileName, IAppxFile** payloadPackage) mut
			{
				return VT.GetPayloadPackage(&this, fileName, payloadPackage);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleReader *self, APPX_BUNDLE_FOOTPRINT_FILE_TYPE fileType, IAppxFile** footprintFile) GetFootprintFile;
				public new function HRESULT(IAppxBundleReader *self, IAppxBlockMapReader** blockMapReader) GetBlockMap;
				public new function HRESULT(IAppxBundleReader *self, IAppxBundleManifestReader** manifestReader) GetManifest;
				public new function HRESULT(IAppxBundleReader *self, IAppxFilesEnumerator** payloadPackages) GetPayloadPackages;
				public new function HRESULT(IAppxBundleReader *self, PWSTR fileName, IAppxFile** payloadPackage) GetPayloadPackage;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestReader : IUnknown
		{
			public const new Guid IID = .(0xcf0ebbc1, 0xcc99, 0x4106, 0x91, 0xeb, 0xe6, 0x74, 0x62, 0xe0, 0x4f, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPackageId(IAppxManifestPackageId** packageId) mut
			{
				return VT.GetPackageId(&this, packageId);
			}
			public HRESULT GetPackageInfoItems(IAppxBundleManifestPackageInfoEnumerator** packageInfoItems) mut
			{
				return VT.GetPackageInfoItems(&this, packageInfoItems);
			}
			public HRESULT GetStream(IStream** manifestStream) mut
			{
				return VT.GetStream(&this, manifestStream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleManifestReader *self, IAppxManifestPackageId** packageId) GetPackageId;
				public new function HRESULT(IAppxBundleManifestReader *self, IAppxBundleManifestPackageInfoEnumerator** packageInfoItems) GetPackageInfoItems;
				public new function HRESULT(IAppxBundleManifestReader *self, IStream** manifestStream) GetStream;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestReader2 : IUnknown
		{
			public const new Guid IID = .(0x5517df70, 0x033f, 0x4af2, 0x82, 0x13, 0x87, 0xd7, 0x66, 0x80, 0x5c, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOptionalBundles(IAppxBundleManifestOptionalBundleInfoEnumerator** optionalBundles) mut
			{
				return VT.GetOptionalBundles(&this, optionalBundles);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleManifestReader2 *self, IAppxBundleManifestOptionalBundleInfoEnumerator** optionalBundles) GetOptionalBundles;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfoEnumerator : IUnknown
		{
			public const new Guid IID = .(0xf9b856ee, 0x49a6, 0x4e19, 0xb2, 0xb0, 0x6a, 0x24, 0x06, 0xd6, 0x3a, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxBundleManifestPackageInfo** packageInfo) mut
			{
				return VT.GetCurrent(&this, packageInfo);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleManifestPackageInfoEnumerator *self, IAppxBundleManifestPackageInfo** packageInfo) GetCurrent;
				public new function HRESULT(IAppxBundleManifestPackageInfoEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxBundleManifestPackageInfoEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfo : IUnknown
		{
			public const new Guid IID = .(0x54cd06c1, 0x268f, 0x40bb, 0x8e, 0xd2, 0x75, 0x7a, 0x9e, 0xba, 0xec, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPackageType(APPX_BUNDLE_PAYLOAD_PACKAGE_TYPE* packageType) mut
			{
				return VT.GetPackageType(&this, packageType);
			}
			public HRESULT GetPackageId(IAppxManifestPackageId** packageId) mut
			{
				return VT.GetPackageId(&this, packageId);
			}
			public HRESULT GetFileName(PWSTR* fileName) mut
			{
				return VT.GetFileName(&this, fileName);
			}
			public HRESULT GetOffset(uint64* offset) mut
			{
				return VT.GetOffset(&this, offset);
			}
			public HRESULT GetSize(uint64* size) mut
			{
				return VT.GetSize(&this, size);
			}
			public HRESULT GetResources(IAppxManifestQualifiedResourcesEnumerator** resources) mut
			{
				return VT.GetResources(&this, resources);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleManifestPackageInfo *self, APPX_BUNDLE_PAYLOAD_PACKAGE_TYPE* packageType) GetPackageType;
				public new function HRESULT(IAppxBundleManifestPackageInfo *self, IAppxManifestPackageId** packageId) GetPackageId;
				public new function HRESULT(IAppxBundleManifestPackageInfo *self, PWSTR* fileName) GetFileName;
				public new function HRESULT(IAppxBundleManifestPackageInfo *self, uint64* offset) GetOffset;
				public new function HRESULT(IAppxBundleManifestPackageInfo *self, uint64* size) GetSize;
				public new function HRESULT(IAppxBundleManifestPackageInfo *self, IAppxManifestQualifiedResourcesEnumerator** resources) GetResources;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfo2 : IUnknown
		{
			public const new Guid IID = .(0x44c2acbc, 0xb2cf, 0x4ccb, 0xbb, 0xdb, 0x9c, 0x6d, 0xa8, 0xc3, 0xbc, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIsPackageReference(BOOL* isPackageReference) mut
			{
				return VT.GetIsPackageReference(&this, isPackageReference);
			}
			public HRESULT GetIsNonQualifiedResourcePackage(BOOL* isNonQualifiedResourcePackage) mut
			{
				return VT.GetIsNonQualifiedResourcePackage(&this, isNonQualifiedResourcePackage);
			}
			public HRESULT GetIsDefaultApplicablePackage(BOOL* isDefaultApplicablePackage) mut
			{
				return VT.GetIsDefaultApplicablePackage(&this, isDefaultApplicablePackage);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleManifestPackageInfo2 *self, BOOL* isPackageReference) GetIsPackageReference;
				public new function HRESULT(IAppxBundleManifestPackageInfo2 *self, BOOL* isNonQualifiedResourcePackage) GetIsNonQualifiedResourcePackage;
				public new function HRESULT(IAppxBundleManifestPackageInfo2 *self, BOOL* isDefaultApplicablePackage) GetIsDefaultApplicablePackage;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfo3 : IUnknown
		{
			public const new Guid IID = .(0x6ba74b98, 0xbb74, 0x4296, 0x80, 0xd0, 0x5f, 0x42, 0x56, 0xa9, 0x96, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTargetDeviceFamilies(IAppxManifestTargetDeviceFamiliesEnumerator** targetDeviceFamilies) mut
			{
				return VT.GetTargetDeviceFamilies(&this, targetDeviceFamilies);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleManifestPackageInfo3 *self, IAppxManifestTargetDeviceFamiliesEnumerator** targetDeviceFamilies) GetTargetDeviceFamilies;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfo4 : IUnknown
		{
			public const new Guid IID = .(0x5da6f13d, 0xa8a7, 0x4532, 0x85, 0x7c, 0x13, 0x93, 0xd6, 0x59, 0x37, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIsStub(BOOL* isStub) mut
			{
				return VT.GetIsStub(&this, isStub);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleManifestPackageInfo4 *self, BOOL* isStub) GetIsStub;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestOptionalBundleInfoEnumerator : IUnknown
		{
			public const new Guid IID = .(0x9a178793, 0xf97e, 0x46ac, 0xaa, 0xca, 0xdd, 0x5b, 0xa4, 0xc1, 0x77, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxBundleManifestOptionalBundleInfo** optionalBundle) mut
			{
				return VT.GetCurrent(&this, optionalBundle);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleManifestOptionalBundleInfoEnumerator *self, IAppxBundleManifestOptionalBundleInfo** optionalBundle) GetCurrent;
				public new function HRESULT(IAppxBundleManifestOptionalBundleInfoEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxBundleManifestOptionalBundleInfoEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestOptionalBundleInfo : IUnknown
		{
			public const new Guid IID = .(0x515bf2e8, 0xbcb0, 0x4d69, 0x8c, 0x48, 0xe3, 0x83, 0x14, 0x7b, 0x6e, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPackageId(IAppxManifestPackageId** packageId) mut
			{
				return VT.GetPackageId(&this, packageId);
			}
			public HRESULT GetFileName(PWSTR* fileName) mut
			{
				return VT.GetFileName(&this, fileName);
			}
			public HRESULT GetPackageInfoItems(IAppxBundleManifestPackageInfoEnumerator** packageInfoItems) mut
			{
				return VT.GetPackageInfoItems(&this, packageInfoItems);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxBundleManifestOptionalBundleInfo *self, IAppxManifestPackageId** packageId) GetPackageId;
				public new function HRESULT(IAppxBundleManifestOptionalBundleInfo *self, PWSTR* fileName) GetFileName;
				public new function HRESULT(IAppxBundleManifestOptionalBundleInfo *self, IAppxBundleManifestPackageInfoEnumerator** packageInfoItems) GetPackageInfoItems;
			}
		}
		[CRepr]
		public struct IAppxContentGroupFilesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x1a09a2fd, 0x7440, 0x44eb, 0x8c, 0x84, 0x84, 0x82, 0x05, 0xa6, 0xa1, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(PWSTR* file) mut
			{
				return VT.GetCurrent(&this, file);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxContentGroupFilesEnumerator *self, PWSTR* file) GetCurrent;
				public new function HRESULT(IAppxContentGroupFilesEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxContentGroupFilesEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxContentGroup : IUnknown
		{
			public const new Guid IID = .(0x328f6468, 0xc04f, 0x4e3c, 0xb6, 0xfa, 0x6b, 0x8d, 0x27, 0xf3, 0x00, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* groupName) mut
			{
				return VT.GetName(&this, groupName);
			}
			public HRESULT GetFiles(IAppxContentGroupFilesEnumerator** enumerator) mut
			{
				return VT.GetFiles(&this, enumerator);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxContentGroup *self, PWSTR* groupName) GetName;
				public new function HRESULT(IAppxContentGroup *self, IAppxContentGroupFilesEnumerator** enumerator) GetFiles;
			}
		}
		[CRepr]
		public struct IAppxContentGroupsEnumerator : IUnknown
		{
			public const new Guid IID = .(0x3264e477, 0x16d1, 0x4d63, 0x82, 0x3e, 0x7d, 0x29, 0x84, 0x69, 0x66, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(IAppxContentGroup** stream) mut
			{
				return VT.GetCurrent(&this, stream);
			}
			public HRESULT GetHasCurrent(BOOL* hasCurrent) mut
			{
				return VT.GetHasCurrent(&this, hasCurrent);
			}
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxContentGroupsEnumerator *self, IAppxContentGroup** stream) GetCurrent;
				public new function HRESULT(IAppxContentGroupsEnumerator *self, BOOL* hasCurrent) GetHasCurrent;
				public new function HRESULT(IAppxContentGroupsEnumerator *self, BOOL* hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxContentGroupMapReader : IUnknown
		{
			public const new Guid IID = .(0x418726d8, 0xdd99, 0x4f5d, 0x98, 0x86, 0x15, 0x7a, 0xdd, 0x20, 0xde, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRequiredGroup(IAppxContentGroup** requiredGroup) mut
			{
				return VT.GetRequiredGroup(&this, requiredGroup);
			}
			public HRESULT GetAutomaticGroups(IAppxContentGroupsEnumerator** automaticGroupsEnumerator) mut
			{
				return VT.GetAutomaticGroups(&this, automaticGroupsEnumerator);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxContentGroupMapReader *self, IAppxContentGroup** requiredGroup) GetRequiredGroup;
				public new function HRESULT(IAppxContentGroupMapReader *self, IAppxContentGroupsEnumerator** automaticGroupsEnumerator) GetAutomaticGroups;
			}
		}
		[CRepr]
		public struct IAppxSourceContentGroupMapReader : IUnknown
		{
			public const new Guid IID = .(0xf329791d, 0x540b, 0x4a9f, 0xbc, 0x75, 0x32, 0x82, 0xb7, 0xd7, 0x31, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRequiredGroup(IAppxContentGroup** requiredGroup) mut
			{
				return VT.GetRequiredGroup(&this, requiredGroup);
			}
			public HRESULT GetAutomaticGroups(IAppxContentGroupsEnumerator** automaticGroupsEnumerator) mut
			{
				return VT.GetAutomaticGroups(&this, automaticGroupsEnumerator);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxSourceContentGroupMapReader *self, IAppxContentGroup** requiredGroup) GetRequiredGroup;
				public new function HRESULT(IAppxSourceContentGroupMapReader *self, IAppxContentGroupsEnumerator** automaticGroupsEnumerator) GetAutomaticGroups;
			}
		}
		[CRepr]
		public struct IAppxContentGroupMapWriter : IUnknown
		{
			public const new Guid IID = .(0xd07ab776, 0xa9de, 0x4798, 0x8c, 0x14, 0x3d, 0xb3, 0x1e, 0x68, 0x7c, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddAutomaticGroup(PWSTR groupName) mut
			{
				return VT.AddAutomaticGroup(&this, groupName);
			}
			public HRESULT AddAutomaticFile(PWSTR fileName) mut
			{
				return VT.AddAutomaticFile(&this, fileName);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxContentGroupMapWriter *self, PWSTR groupName) AddAutomaticGroup;
				public new function HRESULT(IAppxContentGroupMapWriter *self, PWSTR fileName) AddAutomaticFile;
				public new function HRESULT(IAppxContentGroupMapWriter *self) Close;
			}
		}
		[CRepr]
		public struct IAppxPackagingDiagnosticEventSink : IUnknown
		{
			public const new Guid IID = .(0x17239d47, 0x6adb, 0x45d2, 0x80, 0xf6, 0xf9, 0xcb, 0xc3, 0xbf, 0x05, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReportContextChange(APPX_PACKAGING_CONTEXT_CHANGE_TYPE changeType, int32 contextId, PSTR contextName, PWSTR contextMessage, PWSTR detailsMessage) mut
			{
				return VT.ReportContextChange(&this, changeType, contextId, contextName, contextMessage, detailsMessage);
			}
			public HRESULT ReportError(PWSTR errorMessage) mut
			{
				return VT.ReportError(&this, errorMessage);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxPackagingDiagnosticEventSink *self, APPX_PACKAGING_CONTEXT_CHANGE_TYPE changeType, int32 contextId, PSTR contextName, PWSTR contextMessage, PWSTR detailsMessage) ReportContextChange;
				public new function HRESULT(IAppxPackagingDiagnosticEventSink *self, PWSTR errorMessage) ReportError;
			}
		}
		[CRepr]
		public struct IAppxPackagingDiagnosticEventSinkManager : IUnknown
		{
			public const new Guid IID = .(0x369648fa, 0xa7eb, 0x4909, 0xa1, 0x5d, 0x69, 0x54, 0xa0, 0x78, 0xf1, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSinkForProcess(IAppxPackagingDiagnosticEventSink* sink) mut
			{
				return VT.SetSinkForProcess(&this, sink);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxPackagingDiagnosticEventSinkManager *self, IAppxPackagingDiagnosticEventSink* sink) SetSinkForProcess;
			}
		}
		[CRepr]
		public struct IAppxEncryptionFactory : IUnknown
		{
			public const new Guid IID = .(0x80e8e04d, 0x8c88, 0x44ae, 0xa0, 0x11, 0x7c, 0xad, 0xf6, 0xfb, 0x2e, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EncryptPackage(IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles) mut
			{
				return VT.EncryptPackage(&this, inputStream, outputStream, settings, keyInfo, exemptedFiles);
			}
			public HRESULT DecryptPackage(IStream* inputStream, IStream* outputStream, APPX_KEY_INFO* keyInfo) mut
			{
				return VT.DecryptPackage(&this, inputStream, outputStream, keyInfo);
			}
			public HRESULT CreateEncryptedPackageWriter(IStream* outputStream, IStream* manifestStream, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedPackageWriter** packageWriter) mut
			{
				return VT.CreateEncryptedPackageWriter(&this, outputStream, manifestStream, settings, keyInfo, exemptedFiles, packageWriter);
			}
			public HRESULT CreateEncryptedPackageReader(IStream* inputStream, APPX_KEY_INFO* keyInfo, IAppxPackageReader** packageReader) mut
			{
				return VT.CreateEncryptedPackageReader(&this, inputStream, keyInfo, packageReader);
			}
			public HRESULT EncryptBundle(IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles) mut
			{
				return VT.EncryptBundle(&this, inputStream, outputStream, settings, keyInfo, exemptedFiles);
			}
			public HRESULT DecryptBundle(IStream* inputStream, IStream* outputStream, APPX_KEY_INFO* keyInfo) mut
			{
				return VT.DecryptBundle(&this, inputStream, outputStream, keyInfo);
			}
			public HRESULT CreateEncryptedBundleWriter(IStream* outputStream, uint64 bundleVersion, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedBundleWriter** bundleWriter) mut
			{
				return VT.CreateEncryptedBundleWriter(&this, outputStream, bundleVersion, settings, keyInfo, exemptedFiles, bundleWriter);
			}
			public HRESULT CreateEncryptedBundleReader(IStream* inputStream, APPX_KEY_INFO* keyInfo, IAppxBundleReader** bundleReader) mut
			{
				return VT.CreateEncryptedBundleReader(&this, inputStream, keyInfo, bundleReader);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxEncryptionFactory *self, IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles) EncryptPackage;
				public new function HRESULT(IAppxEncryptionFactory *self, IStream* inputStream, IStream* outputStream, APPX_KEY_INFO* keyInfo) DecryptPackage;
				public new function HRESULT(IAppxEncryptionFactory *self, IStream* outputStream, IStream* manifestStream, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedPackageWriter** packageWriter) CreateEncryptedPackageWriter;
				public new function HRESULT(IAppxEncryptionFactory *self, IStream* inputStream, APPX_KEY_INFO* keyInfo, IAppxPackageReader** packageReader) CreateEncryptedPackageReader;
				public new function HRESULT(IAppxEncryptionFactory *self, IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles) EncryptBundle;
				public new function HRESULT(IAppxEncryptionFactory *self, IStream* inputStream, IStream* outputStream, APPX_KEY_INFO* keyInfo) DecryptBundle;
				public new function HRESULT(IAppxEncryptionFactory *self, IStream* outputStream, uint64 bundleVersion, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedBundleWriter** bundleWriter) CreateEncryptedBundleWriter;
				public new function HRESULT(IAppxEncryptionFactory *self, IStream* inputStream, APPX_KEY_INFO* keyInfo, IAppxBundleReader** bundleReader) CreateEncryptedBundleReader;
			}
		}
		[CRepr]
		public struct IAppxEncryptionFactory2 : IUnknown
		{
			public const new Guid IID = .(0xc1b11eee, 0xc4ba, 0x4ab2, 0xa5, 0x5d, 0xd0, 0x15, 0xfe, 0x8f, 0xf6, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateEncryptedPackageWriter(IStream* outputStream, IStream* manifestStream, IStream* contentGroupMapStream, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedPackageWriter** packageWriter) mut
			{
				return VT.CreateEncryptedPackageWriter(&this, outputStream, manifestStream, contentGroupMapStream, settings, keyInfo, exemptedFiles, packageWriter);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxEncryptionFactory2 *self, IStream* outputStream, IStream* manifestStream, IStream* contentGroupMapStream, APPX_ENCRYPTED_PACKAGE_SETTINGS* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedPackageWriter** packageWriter) CreateEncryptedPackageWriter;
			}
		}
		[CRepr]
		public struct IAppxEncryptionFactory3 : IUnknown
		{
			public const new Guid IID = .(0x09edca37, 0xcd64, 0x47d6, 0xb7, 0xe8, 0x1c, 0xb1, 0x1d, 0x4f, 0x7e, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EncryptPackage(IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles) mut
			{
				return VT.EncryptPackage(&this, inputStream, outputStream, settings, keyInfo, exemptedFiles);
			}
			public HRESULT CreateEncryptedPackageWriter(IStream* outputStream, IStream* manifestStream, IStream* contentGroupMapStream, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedPackageWriter** packageWriter) mut
			{
				return VT.CreateEncryptedPackageWriter(&this, outputStream, manifestStream, contentGroupMapStream, settings, keyInfo, exemptedFiles, packageWriter);
			}
			public HRESULT EncryptBundle(IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles) mut
			{
				return VT.EncryptBundle(&this, inputStream, outputStream, settings, keyInfo, exemptedFiles);
			}
			public HRESULT CreateEncryptedBundleWriter(IStream* outputStream, uint64 bundleVersion, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedBundleWriter** bundleWriter) mut
			{
				return VT.CreateEncryptedBundleWriter(&this, outputStream, bundleVersion, settings, keyInfo, exemptedFiles, bundleWriter);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxEncryptionFactory3 *self, IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles) EncryptPackage;
				public new function HRESULT(IAppxEncryptionFactory3 *self, IStream* outputStream, IStream* manifestStream, IStream* contentGroupMapStream, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedPackageWriter** packageWriter) CreateEncryptedPackageWriter;
				public new function HRESULT(IAppxEncryptionFactory3 *self, IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles) EncryptBundle;
				public new function HRESULT(IAppxEncryptionFactory3 *self, IStream* outputStream, uint64 bundleVersion, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, IAppxEncryptedBundleWriter** bundleWriter) CreateEncryptedBundleWriter;
			}
		}
		[CRepr]
		public struct IAppxEncryptionFactory4 : IUnknown
		{
			public const new Guid IID = .(0xa879611f, 0x12fd, 0x41fe, 0x85, 0xd5, 0x06, 0xae, 0x77, 0x9b, 0xba, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EncryptPackage(IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, uint64 memoryLimit) mut
			{
				return VT.EncryptPackage(&this, inputStream, outputStream, settings, keyInfo, exemptedFiles, memoryLimit);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxEncryptionFactory4 *self, IStream* inputStream, IStream* outputStream, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo, APPX_ENCRYPTED_EXEMPTIONS* exemptedFiles, uint64 memoryLimit) EncryptPackage;
			}
		}
		[CRepr]
		public struct IAppxEncryptedPackageWriter : IUnknown
		{
			public const new Guid IID = .(0xf43d0b0b, 0x1379, 0x40e2, 0x9b, 0x29, 0x68, 0x2e, 0xa2, 0xbf, 0x42, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadFileEncrypted(PWSTR fileName, APPX_COMPRESSION_OPTION compressionOption, IStream* inputStream) mut
			{
				return VT.AddPayloadFileEncrypted(&this, fileName, compressionOption, inputStream);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxEncryptedPackageWriter *self, PWSTR fileName, APPX_COMPRESSION_OPTION compressionOption, IStream* inputStream) AddPayloadFileEncrypted;
				public new function HRESULT(IAppxEncryptedPackageWriter *self) Close;
			}
		}
		[CRepr]
		public struct IAppxEncryptedPackageWriter2 : IUnknown
		{
			public const new Guid IID = .(0x3e475447, 0x3a25, 0x40b5, 0x8a, 0xd2, 0xf9, 0x53, 0xae, 0x50, 0xc9, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadFilesEncrypted(uint32 fileCount, APPX_PACKAGE_WRITER_PAYLOAD_STREAM* payloadFiles, uint64 memoryLimit) mut
			{
				return VT.AddPayloadFilesEncrypted(&this, fileCount, payloadFiles, memoryLimit);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxEncryptedPackageWriter2 *self, uint32 fileCount, APPX_PACKAGE_WRITER_PAYLOAD_STREAM* payloadFiles, uint64 memoryLimit) AddPayloadFilesEncrypted;
			}
		}
		[CRepr]
		public struct IAppxEncryptedBundleWriter : IUnknown
		{
			public const new Guid IID = .(0x80b0902f, 0x7bf0, 0x4117, 0xb8, 0xc6, 0x42, 0x79, 0xef, 0x81, 0xee, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadPackageEncrypted(PWSTR fileName, IStream* packageStream) mut
			{
				return VT.AddPayloadPackageEncrypted(&this, fileName, packageStream);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxEncryptedBundleWriter *self, PWSTR fileName, IStream* packageStream) AddPayloadPackageEncrypted;
				public new function HRESULT(IAppxEncryptedBundleWriter *self) Close;
			}
		}
		[CRepr]
		public struct IAppxEncryptedBundleWriter2 : IUnknown
		{
			public const new Guid IID = .(0xe644be82, 0xf0fa, 0x42b8, 0xa9, 0x56, 0x8d, 0x1c, 0xb4, 0x8e, 0xe3, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddExternalPackageReference(PWSTR fileName, IStream* inputStream) mut
			{
				return VT.AddExternalPackageReference(&this, fileName, inputStream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxEncryptedBundleWriter2 *self, PWSTR fileName, IStream* inputStream) AddExternalPackageReference;
			}
		}
		[CRepr]
		public struct IAppxEncryptedBundleWriter3 : IUnknown
		{
			public const new Guid IID = .(0x0d34deb3, 0x5cae, 0x4dd3, 0x97, 0x7c, 0x50, 0x49, 0x32, 0xa5, 0x1d, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadPackageEncrypted(PWSTR fileName, IStream* packageStream, BOOL isDefaultApplicablePackage) mut
			{
				return VT.AddPayloadPackageEncrypted(&this, fileName, packageStream, isDefaultApplicablePackage);
			}
			public HRESULT AddExternalPackageReference(PWSTR fileName, IStream* inputStream, BOOL isDefaultApplicablePackage) mut
			{
				return VT.AddExternalPackageReference(&this, fileName, inputStream, isDefaultApplicablePackage);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxEncryptedBundleWriter3 *self, PWSTR fileName, IStream* packageStream, BOOL isDefaultApplicablePackage) AddPayloadPackageEncrypted;
				public new function HRESULT(IAppxEncryptedBundleWriter3 *self, PWSTR fileName, IStream* inputStream, BOOL isDefaultApplicablePackage) AddExternalPackageReference;
			}
		}
		[CRepr]
		public struct IAppxPackageEditor : IUnknown
		{
			public const new Guid IID = .(0xe2adb6dc, 0x5e71, 0x4416, 0x86, 0xb6, 0x86, 0xe5, 0xf5, 0x29, 0x1a, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetWorkingDirectory(PWSTR workingDirectory) mut
			{
				return VT.SetWorkingDirectory(&this, workingDirectory);
			}
			public HRESULT CreateDeltaPackage(IStream* updatedPackageStream, IStream* baselinePackageStream, IStream* deltaPackageStream) mut
			{
				return VT.CreateDeltaPackage(&this, updatedPackageStream, baselinePackageStream, deltaPackageStream);
			}
			public HRESULT CreateDeltaPackageUsingBaselineBlockMap(IStream* updatedPackageStream, IStream* baselineBlockMapStream, PWSTR baselinePackageFullName, IStream* deltaPackageStream) mut
			{
				return VT.CreateDeltaPackageUsingBaselineBlockMap(&this, updatedPackageStream, baselineBlockMapStream, baselinePackageFullName, deltaPackageStream);
			}
			public HRESULT UpdatePackage(IStream* baselinePackageStream, IStream* deltaPackageStream, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION updateOption) mut
			{
				return VT.UpdatePackage(&this, baselinePackageStream, deltaPackageStream, updateOption);
			}
			public HRESULT UpdateEncryptedPackage(IStream* baselineEncryptedPackageStream, IStream* deltaPackageStream, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION updateOption, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo) mut
			{
				return VT.UpdateEncryptedPackage(&this, baselineEncryptedPackageStream, deltaPackageStream, updateOption, settings, keyInfo);
			}
			public HRESULT UpdatePackageManifest(IStream* packageStream, IStream* updatedManifestStream, BOOL isPackageEncrypted, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTIONS options) mut
			{
				return VT.UpdatePackageManifest(&this, packageStream, updatedManifestStream, isPackageEncrypted, options);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppxPackageEditor *self, PWSTR workingDirectory) SetWorkingDirectory;
				public new function HRESULT(IAppxPackageEditor *self, IStream* updatedPackageStream, IStream* baselinePackageStream, IStream* deltaPackageStream) CreateDeltaPackage;
				public new function HRESULT(IAppxPackageEditor *self, IStream* updatedPackageStream, IStream* baselineBlockMapStream, PWSTR baselinePackageFullName, IStream* deltaPackageStream) CreateDeltaPackageUsingBaselineBlockMap;
				public new function HRESULT(IAppxPackageEditor *self, IStream* baselinePackageStream, IStream* deltaPackageStream, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION updateOption) UpdatePackage;
				public new function HRESULT(IAppxPackageEditor *self, IStream* baselineEncryptedPackageStream, IStream* deltaPackageStream, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION updateOption, APPX_ENCRYPTED_PACKAGE_SETTINGS2* settings, APPX_KEY_INFO* keyInfo) UpdateEncryptedPackage;
				public new function HRESULT(IAppxPackageEditor *self, IStream* packageStream, IStream* updatedManifestStream, BOOL isPackageEncrypted, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTIONS options) UpdatePackageManifest;
			}
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
