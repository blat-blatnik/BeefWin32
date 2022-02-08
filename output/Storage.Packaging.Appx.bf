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
		
		public enum APPX_COMPRESSION_OPTION : int32
		{
			NONE = 0,
			NORMAL = 1,
			MAXIMUM = 2,
			FAST = 3,
			SUPERFAST = 4,
		}
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
		public enum APPX_PACKAGE_ARCHITECTURE : int32
		{
			X86 = 0,
			ARM = 5,
			X64 = 9,
			NEUTRAL = 11,
			ARM64 = 12,
		}
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
		public enum APPX_BUNDLE_PAYLOAD_PACKAGE_TYPE : int32
		{
			APPLICATION = 0,
			RESOURCE = 1,
		}
		public enum DX_FEATURE_LEVEL : int32
		{
			UNSPECIFIED = 0,
			_9 = 1,
			_10 = 2,
			_11 = 3,
		}
		public enum APPX_CAPABILITY_CLASS_TYPE : int32
		{
			DEFAULT = 0,
			GENERAL = 1,
			RESTRICTED = 2,
			WINDOWS = 4,
			ALL = 7,
			CUSTOM = 8,
		}
		public enum APPX_PACKAGING_CONTEXT_CHANGE_TYPE : int32
		{
			START = 0,
			CHANGE = 1,
			DETAILS = 2,
			END = 3,
		}
		public enum APPX_ENCRYPTED_PACKAGE_OPTIONS : uint32
		{
			NONE = 0,
			DIFFUSION = 1,
			PAGE_HASHING = 2,
		}
		public enum APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION : int32
		{
			OPTION_APPEND_DELTA = 0,
		}
		public enum APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTIONS : uint32
		{
			NONE = 0,
			SKIP_VALIDATION = 1,
			LOCALIZED = 2,
		}
		public enum PackagePathType : int32
		{
			Install = 0,
			Mutable = 1,
			Effective = 2,
			MachineExternal = 3,
			UserExternal = 4,
			EffectiveExternal = 5,
		}
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
		public enum CreatePackageDependencyOptions : int32
		{
			None = 0,
			DoNotVerifyDependencyResolution = 1,
			ScopeIsSystem = 2,
		}
		public enum PackageDependencyLifetimeKind : int32
		{
			Process = 0,
			FilePath = 1,
			RegistryKey = 2,
		}
		public enum AddPackageDependencyOptions : int32
		{
			None = 0,
			PrependIfRankCollision = 1,
		}
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
		public enum AppPolicyLifecycleManagement : int32
		{
			Unmanaged = 0,
			Managed = 1,
		}
		public enum AppPolicyWindowingModel : int32
		{
			None = 0,
			Universal = 1,
			ClassicDesktop = 2,
			ClassicPhone = 3,
		}
		public enum AppPolicyMediaFoundationCodecLoading : int32
		{
			All = 0,
			InboxOnly = 1,
		}
		public enum AppPolicyClrCompat : int32
		{
			Other = 0,
			ClassicDesktop = 1,
			Universal = 2,
			PackagedDesktop = 3,
		}
		public enum AppPolicyThreadInitializationType : int32
		{
			None = 0,
			InitializeWinRT = 1,
		}
		public enum AppPolicyShowDeveloperDiagnostic : int32
		{
			None = 0,
			ShowUI = 1,
		}
		public enum AppPolicyProcessTerminationMethod : int32
		{
			ExitProcess = 0,
			TerminateProcess = 1,
		}
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
			
			[CRepr, Union, Packed(4)]
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
		[CRepr, Packed(4)]
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
		[CRepr, Packed(4)]
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
			
			public HRESULT CreatePackageWriter(ref IStream outputStream, ref APPX_PACKAGE_SETTINGS settings, out IAppxPackageWriter* packageWriter) mut => VT.CreatePackageWriter(ref this, ref outputStream, ref settings, out packageWriter);
			public HRESULT CreatePackageReader(ref IStream inputStream, out IAppxPackageReader* packageReader) mut => VT.CreatePackageReader(ref this, ref inputStream, out packageReader);
			public HRESULT CreateManifestReader(ref IStream inputStream, out IAppxManifestReader* manifestReader) mut => VT.CreateManifestReader(ref this, ref inputStream, out manifestReader);
			public HRESULT CreateBlockMapReader(ref IStream inputStream, out IAppxBlockMapReader* blockMapReader) mut => VT.CreateBlockMapReader(ref this, ref inputStream, out blockMapReader);
			public HRESULT CreateValidatedBlockMapReader(ref IStream blockMapStream, PWSTR signatureFileName, out IAppxBlockMapReader* blockMapReader) mut => VT.CreateValidatedBlockMapReader(ref this, ref blockMapStream, signatureFileName, out blockMapReader);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFactory self, ref IStream outputStream, ref APPX_PACKAGE_SETTINGS settings, out IAppxPackageWriter* packageWriter) CreatePackageWriter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFactory self, ref IStream inputStream, out IAppxPackageReader* packageReader) CreatePackageReader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFactory self, ref IStream inputStream, out IAppxManifestReader* manifestReader) CreateManifestReader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFactory self, ref IStream inputStream, out IAppxBlockMapReader* blockMapReader) CreateBlockMapReader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFactory self, ref IStream blockMapStream, PWSTR signatureFileName, out IAppxBlockMapReader* blockMapReader) CreateValidatedBlockMapReader;
			}
		}
		[CRepr]
		public struct IAppxFactory2 : IUnknown
		{
			public const new Guid IID = .(0xf1346df2, 0xc282, 0x4e22, 0xb9, 0x18, 0x74, 0x3a, 0x92, 0x9a, 0x8d, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateContentGroupMapReader(ref IStream inputStream, out IAppxContentGroupMapReader* contentGroupMapReader) mut => VT.CreateContentGroupMapReader(ref this, ref inputStream, out contentGroupMapReader);
			public HRESULT CreateSourceContentGroupMapReader(ref IStream inputStream, out IAppxSourceContentGroupMapReader* reader) mut => VT.CreateSourceContentGroupMapReader(ref this, ref inputStream, out reader);
			public HRESULT CreateContentGroupMapWriter(ref IStream stream, out IAppxContentGroupMapWriter* contentGroupMapWriter) mut => VT.CreateContentGroupMapWriter(ref this, ref stream, out contentGroupMapWriter);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFactory2 self, ref IStream inputStream, out IAppxContentGroupMapReader* contentGroupMapReader) CreateContentGroupMapReader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFactory2 self, ref IStream inputStream, out IAppxSourceContentGroupMapReader* reader) CreateSourceContentGroupMapReader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFactory2 self, ref IStream stream, out IAppxContentGroupMapWriter* contentGroupMapWriter) CreateContentGroupMapWriter;
			}
		}
		[CRepr]
		public struct IAppxPackageReader : IUnknown
		{
			public const new Guid IID = .(0xb5c49650, 0x99bc, 0x481c, 0x9a, 0x34, 0x3d, 0x53, 0xa4, 0x10, 0x67, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBlockMap(out IAppxBlockMapReader* blockMapReader) mut => VT.GetBlockMap(ref this, out blockMapReader);
			public HRESULT GetFootprintFile(APPX_FOOTPRINT_FILE_TYPE type, out IAppxFile* file) mut => VT.GetFootprintFile(ref this, type, out file);
			public HRESULT GetPayloadFile(PWSTR fileName, out IAppxFile* file) mut => VT.GetPayloadFile(ref this, fileName, out file);
			public HRESULT GetPayloadFiles(out IAppxFilesEnumerator* filesEnumerator) mut => VT.GetPayloadFiles(ref this, out filesEnumerator);
			public HRESULT GetManifest(out IAppxManifestReader* manifestReader) mut => VT.GetManifest(ref this, out manifestReader);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageReader self, out IAppxBlockMapReader* blockMapReader) GetBlockMap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageReader self, APPX_FOOTPRINT_FILE_TYPE type, out IAppxFile* file) GetFootprintFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageReader self, PWSTR fileName, out IAppxFile* file) GetPayloadFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageReader self, out IAppxFilesEnumerator* filesEnumerator) GetPayloadFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageReader self, out IAppxManifestReader* manifestReader) GetManifest;
			}
		}
		[CRepr]
		public struct IAppxPackageWriter : IUnknown
		{
			public const new Guid IID = .(0x9099e33b, 0x246f, 0x41e4, 0x88, 0x1a, 0x00, 0x8e, 0xb6, 0x13, 0xf8, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadFile(PWSTR fileName, PWSTR contentType, APPX_COMPRESSION_OPTION compressionOption, ref IStream inputStream) mut => VT.AddPayloadFile(ref this, fileName, contentType, compressionOption, ref inputStream);
			public HRESULT Close(ref IStream manifest) mut => VT.Close(ref this, ref manifest);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageWriter self, PWSTR fileName, PWSTR contentType, APPX_COMPRESSION_OPTION compressionOption, ref IStream inputStream) AddPayloadFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageWriter self, ref IStream manifest) Close;
			}
		}
		[CRepr]
		public struct IAppxPackageWriter2 : IUnknown
		{
			public const new Guid IID = .(0x2cf5c4fd, 0xe54c, 0x4ea5, 0xba, 0x4e, 0xf8, 0xc4, 0xb1, 0x05, 0xa8, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Close(ref IStream manifest, ref IStream contentGroupMap) mut => VT.Close(ref this, ref manifest, ref contentGroupMap);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageWriter2 self, ref IStream manifest, ref IStream contentGroupMap) Close;
			}
		}
		[CRepr]
		public struct IAppxPackageWriter3 : IUnknown
		{
			public const new Guid IID = .(0xa83aacd3, 0x41c0, 0x4501, 0xb8, 0xa3, 0x74, 0x16, 0x4f, 0x50, 0xb2, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadFiles(uint32 fileCount, APPX_PACKAGE_WRITER_PAYLOAD_STREAM* payloadFiles, uint64 memoryLimit) mut => VT.AddPayloadFiles(ref this, fileCount, payloadFiles, memoryLimit);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageWriter3 self, uint32 fileCount, APPX_PACKAGE_WRITER_PAYLOAD_STREAM* payloadFiles, uint64 memoryLimit) AddPayloadFiles;
			}
		}
		[CRepr]
		public struct IAppxFile : IUnknown
		{
			public const new Guid IID = .(0x91df827b, 0x94fd, 0x468f, 0x82, 0x7b, 0x57, 0xf4, 0x1b, 0x2f, 0x6f, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCompressionOption(out APPX_COMPRESSION_OPTION compressionOption) mut => VT.GetCompressionOption(ref this, out compressionOption);
			public HRESULT GetContentType(out PWSTR contentType) mut => VT.GetContentType(ref this, out contentType);
			public HRESULT GetName(out PWSTR fileName) mut => VT.GetName(ref this, out fileName);
			public HRESULT GetSize(out uint64 size) mut => VT.GetSize(ref this, out size);
			public HRESULT GetStream(out IStream* stream) mut => VT.GetStream(ref this, out stream);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFile self, out APPX_COMPRESSION_OPTION compressionOption) GetCompressionOption;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFile self, out PWSTR contentType) GetContentType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFile self, out PWSTR fileName) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFile self, out uint64 size) GetSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFile self, out IStream* stream) GetStream;
			}
		}
		[CRepr]
		public struct IAppxFilesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xf007eeaf, 0x9831, 0x411c, 0x98, 0x47, 0x91, 0x7c, 0xdc, 0x62, 0xd1, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxFile* file) mut => VT.GetCurrent(ref this, out file);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFilesEnumerator self, out IAppxFile* file) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFilesEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxFilesEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxBlockMapReader : IUnknown
		{
			public const new Guid IID = .(0x5efec991, 0xbca3, 0x42d1, 0x9e, 0xc2, 0xe9, 0x2d, 0x60, 0x9e, 0xc2, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFile(PWSTR filename, out IAppxBlockMapFile* file) mut => VT.GetFile(ref this, filename, out file);
			public HRESULT GetFiles(out IAppxBlockMapFilesEnumerator* enumerator) mut => VT.GetFiles(ref this, out enumerator);
			public HRESULT GetHashMethod(out IUri* hashMethod) mut => VT.GetHashMethod(ref this, out hashMethod);
			public HRESULT GetStream(out IStream* blockMapStream) mut => VT.GetStream(ref this, out blockMapStream);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapReader self, PWSTR filename, out IAppxBlockMapFile* file) GetFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapReader self, out IAppxBlockMapFilesEnumerator* enumerator) GetFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapReader self, out IUri* hashMethod) GetHashMethod;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapReader self, out IStream* blockMapStream) GetStream;
			}
		}
		[CRepr]
		public struct IAppxBlockMapFile : IUnknown
		{
			public const new Guid IID = .(0x277672ac, 0x4f63, 0x42c1, 0x8a, 0xbc, 0xbe, 0xae, 0x36, 0x00, 0xeb, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBlocks(out IAppxBlockMapBlocksEnumerator* blocks) mut => VT.GetBlocks(ref this, out blocks);
			public HRESULT GetLocalFileHeaderSize(out uint32 lfhSize) mut => VT.GetLocalFileHeaderSize(ref this, out lfhSize);
			public HRESULT GetName(out PWSTR name) mut => VT.GetName(ref this, out name);
			public HRESULT GetUncompressedSize(out uint64 size) mut => VT.GetUncompressedSize(ref this, out size);
			public HRESULT ValidateFileHash(ref IStream fileStream, out BOOL isValid) mut => VT.ValidateFileHash(ref this, ref fileStream, out isValid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapFile self, out IAppxBlockMapBlocksEnumerator* blocks) GetBlocks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapFile self, out uint32 lfhSize) GetLocalFileHeaderSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapFile self, out PWSTR name) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapFile self, out uint64 size) GetUncompressedSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapFile self, ref IStream fileStream, out BOOL isValid) ValidateFileHash;
			}
		}
		[CRepr]
		public struct IAppxBlockMapFilesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x02b856a2, 0x4262, 0x4070, 0xba, 0xcb, 0x1a, 0x8c, 0xbb, 0xc4, 0x23, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxBlockMapFile* file) mut => VT.GetCurrent(ref this, out file);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasCurrent) mut => VT.MoveNext(ref this, out hasCurrent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapFilesEnumerator self, out IAppxBlockMapFile* file) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapFilesEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapFilesEnumerator self, out BOOL hasCurrent) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxBlockMapBlock : IUnknown
		{
			public const new Guid IID = .(0x75cf3930, 0x3244, 0x4fe0, 0xa8, 0xc8, 0xe0, 0xbc, 0xb2, 0x70, 0xb8, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHash(out uint32 bufferSize, out uint8* buffer) mut => VT.GetHash(ref this, out bufferSize, out buffer);
			public HRESULT GetCompressedSize(out uint32 size) mut => VT.GetCompressedSize(ref this, out size);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapBlock self, out uint32 bufferSize, out uint8* buffer) GetHash;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapBlock self, out uint32 size) GetCompressedSize;
			}
		}
		[CRepr]
		public struct IAppxBlockMapBlocksEnumerator : IUnknown
		{
			public const new Guid IID = .(0x6b429b5b, 0x36ef, 0x479e, 0xb9, 0xeb, 0x0c, 0x14, 0x82, 0xb4, 0x9e, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxBlockMapBlock* block) mut => VT.GetCurrent(ref this, out block);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapBlocksEnumerator self, out IAppxBlockMapBlock* block) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapBlocksEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBlockMapBlocksEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestReader : IUnknown
		{
			public const new Guid IID = .(0x4e1bd148, 0x55a0, 0x4480, 0xa3, 0xd1, 0x15, 0x54, 0x47, 0x10, 0x63, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPackageId(out IAppxManifestPackageId* packageId) mut => VT.GetPackageId(ref this, out packageId);
			public HRESULT GetProperties(out IAppxManifestProperties* packageProperties) mut => VT.GetProperties(ref this, out packageProperties);
			public HRESULT GetPackageDependencies(out IAppxManifestPackageDependenciesEnumerator* dependencies) mut => VT.GetPackageDependencies(ref this, out dependencies);
			public HRESULT GetCapabilities(out APPX_CAPABILITIES capabilities) mut => VT.GetCapabilities(ref this, out capabilities);
			public HRESULT GetResources(out IAppxManifestResourcesEnumerator* resources) mut => VT.GetResources(ref this, out resources);
			public HRESULT GetDeviceCapabilities(out IAppxManifestDeviceCapabilitiesEnumerator* deviceCapabilities) mut => VT.GetDeviceCapabilities(ref this, out deviceCapabilities);
			public HRESULT GetPrerequisite(PWSTR name, out uint64 value) mut => VT.GetPrerequisite(ref this, name, out value);
			public HRESULT GetApplications(out IAppxManifestApplicationsEnumerator* applications) mut => VT.GetApplications(ref this, out applications);
			public HRESULT GetStream(out IStream* manifestStream) mut => VT.GetStream(ref this, out manifestStream);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader self, out IAppxManifestPackageId* packageId) GetPackageId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader self, out IAppxManifestProperties* packageProperties) GetProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader self, out IAppxManifestPackageDependenciesEnumerator* dependencies) GetPackageDependencies;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader self, out APPX_CAPABILITIES capabilities) GetCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader self, out IAppxManifestResourcesEnumerator* resources) GetResources;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader self, out IAppxManifestDeviceCapabilitiesEnumerator* deviceCapabilities) GetDeviceCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader self, PWSTR name, out uint64 value) GetPrerequisite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader self, out IAppxManifestApplicationsEnumerator* applications) GetApplications;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader self, out IStream* manifestStream) GetStream;
			}
		}
		[CRepr]
		public struct IAppxManifestReader2 : IAppxManifestReader
		{
			public const new Guid IID = .(0xd06f67bc, 0xb31d, 0x4eba, 0xa8, 0xaf, 0x63, 0x8e, 0x73, 0xe7, 0x7b, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetQualifiedResources(out IAppxManifestQualifiedResourcesEnumerator* resources) mut => VT.GetQualifiedResources(ref this, out resources);

			[CRepr]
			public struct VTable : IAppxManifestReader.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader2 self, out IAppxManifestQualifiedResourcesEnumerator* resources) GetQualifiedResources;
			}
		}
		[CRepr]
		public struct IAppxManifestReader3 : IAppxManifestReader2
		{
			public const new Guid IID = .(0xc43825ab, 0x69b7, 0x400a, 0x97, 0x09, 0xcc, 0x37, 0xf5, 0xa7, 0x2d, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCapabilitiesByCapabilityClass(APPX_CAPABILITY_CLASS_TYPE capabilityClass, out IAppxManifestCapabilitiesEnumerator* capabilities) mut => VT.GetCapabilitiesByCapabilityClass(ref this, capabilityClass, out capabilities);
			public HRESULT GetTargetDeviceFamilies(out IAppxManifestTargetDeviceFamiliesEnumerator* targetDeviceFamilies) mut => VT.GetTargetDeviceFamilies(ref this, out targetDeviceFamilies);

			[CRepr]
			public struct VTable : IAppxManifestReader2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader3 self, APPX_CAPABILITY_CLASS_TYPE capabilityClass, out IAppxManifestCapabilitiesEnumerator* capabilities) GetCapabilitiesByCapabilityClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader3 self, out IAppxManifestTargetDeviceFamiliesEnumerator* targetDeviceFamilies) GetTargetDeviceFamilies;
			}
		}
		[CRepr]
		public struct IAppxManifestReader4 : IAppxManifestReader3
		{
			public const new Guid IID = .(0x4579bb7c, 0x741d, 0x4161, 0xb5, 0xa1, 0x47, 0xbd, 0x3b, 0x78, 0xad, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOptionalPackageInfo(out IAppxManifestOptionalPackageInfo* optionalPackageInfo) mut => VT.GetOptionalPackageInfo(ref this, out optionalPackageInfo);

			[CRepr]
			public struct VTable : IAppxManifestReader3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader4 self, out IAppxManifestOptionalPackageInfo* optionalPackageInfo) GetOptionalPackageInfo;
			}
		}
		[CRepr]
		public struct IAppxManifestReader5 : IUnknown
		{
			public const new Guid IID = .(0x8d7ae132, 0xa690, 0x4c00, 0xb7, 0x5a, 0x6a, 0xae, 0x1f, 0xea, 0xac, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMainPackageDependencies(out IAppxManifestMainPackageDependenciesEnumerator* mainPackageDependencies) mut => VT.GetMainPackageDependencies(ref this, out mainPackageDependencies);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader5 self, out IAppxManifestMainPackageDependenciesEnumerator* mainPackageDependencies) GetMainPackageDependencies;
			}
		}
		[CRepr]
		public struct IAppxManifestReader6 : IUnknown
		{
			public const new Guid IID = .(0x34deaca4, 0xd3c0, 0x4e3e, 0xb3, 0x12, 0xe4, 0x26, 0x25, 0xe3, 0x80, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIsNonQualifiedResourcePackage(out BOOL isNonQualifiedResourcePackage) mut => VT.GetIsNonQualifiedResourcePackage(ref this, out isNonQualifiedResourcePackage);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader6 self, out BOOL isNonQualifiedResourcePackage) GetIsNonQualifiedResourcePackage;
			}
		}
		[CRepr]
		public struct IAppxManifestReader7 : IUnknown
		{
			public const new Guid IID = .(0x8efe6f27, 0x0ce0, 0x4988, 0xb3, 0x2d, 0x73, 0x8e, 0xb6, 0x3d, 0xb3, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDriverDependencies(out IAppxManifestDriverDependenciesEnumerator* driverDependencies) mut => VT.GetDriverDependencies(ref this, out driverDependencies);
			public HRESULT GetOSPackageDependencies(out IAppxManifestOSPackageDependenciesEnumerator* osPackageDependencies) mut => VT.GetOSPackageDependencies(ref this, out osPackageDependencies);
			public HRESULT GetHostRuntimeDependencies(out IAppxManifestHostRuntimeDependenciesEnumerator* hostRuntimeDependencies) mut => VT.GetHostRuntimeDependencies(ref this, out hostRuntimeDependencies);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader7 self, out IAppxManifestDriverDependenciesEnumerator* driverDependencies) GetDriverDependencies;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader7 self, out IAppxManifestOSPackageDependenciesEnumerator* osPackageDependencies) GetOSPackageDependencies;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestReader7 self, out IAppxManifestHostRuntimeDependenciesEnumerator* hostRuntimeDependencies) GetHostRuntimeDependencies;
			}
		}
		[CRepr]
		public struct IAppxManifestDriverDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xfe039db2, 0x467f, 0x4755, 0x84, 0x04, 0x8f, 0x5e, 0xb6, 0x86, 0x5b, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxManifestDriverDependency* driverDependency) mut => VT.GetCurrent(ref this, out driverDependency);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestDriverDependenciesEnumerator self, out IAppxManifestDriverDependency* driverDependency) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestDriverDependenciesEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestDriverDependenciesEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestDriverDependency : IUnknown
		{
			public const new Guid IID = .(0x1210cb94, 0x5a92, 0x4602, 0xbe, 0x24, 0x79, 0xf3, 0x18, 0xaf, 0x4a, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDriverConstraints(out IAppxManifestDriverConstraintsEnumerator* driverConstraints) mut => VT.GetDriverConstraints(ref this, out driverConstraints);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestDriverDependency self, out IAppxManifestDriverConstraintsEnumerator* driverConstraints) GetDriverConstraints;
			}
		}
		[CRepr]
		public struct IAppxManifestDriverConstraintsEnumerator : IUnknown
		{
			public const new Guid IID = .(0xd402b2d1, 0xf600, 0x49e0, 0x95, 0xe6, 0x97, 0x5d, 0x8d, 0xa1, 0x3d, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxManifestDriverConstraint* driverConstraint) mut => VT.GetCurrent(ref this, out driverConstraint);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestDriverConstraintsEnumerator self, out IAppxManifestDriverConstraint* driverConstraint) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestDriverConstraintsEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestDriverConstraintsEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestDriverConstraint : IUnknown
		{
			public const new Guid IID = .(0xc031bee4, 0xbbcc, 0x48ea, 0xa2, 0x37, 0xc3, 0x40, 0x45, 0xc8, 0x0a, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out PWSTR name) mut => VT.GetName(ref this, out name);
			public HRESULT GetMinVersion(out uint64 minVersion) mut => VT.GetMinVersion(ref this, out minVersion);
			public HRESULT GetMinDate(out PWSTR minDate) mut => VT.GetMinDate(ref this, out minDate);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestDriverConstraint self, out PWSTR name) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestDriverConstraint self, out uint64 minVersion) GetMinVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestDriverConstraint self, out PWSTR minDate) GetMinDate;
			}
		}
		[CRepr]
		public struct IAppxManifestOSPackageDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xb84e2fc3, 0xf8ec, 0x4bc1, 0x8a, 0xe2, 0x15, 0x63, 0x46, 0xf5, 0xff, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxManifestOSPackageDependency* osPackageDependency) mut => VT.GetCurrent(ref this, out osPackageDependency);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestOSPackageDependenciesEnumerator self, out IAppxManifestOSPackageDependency* osPackageDependency) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestOSPackageDependenciesEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestOSPackageDependenciesEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestOSPackageDependency : IUnknown
		{
			public const new Guid IID = .(0x154995ee, 0x54a6, 0x4f14, 0xac, 0x97, 0xd8, 0xcf, 0x05, 0x19, 0x64, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out PWSTR name) mut => VT.GetName(ref this, out name);
			public HRESULT GetVersion(out uint64 version) mut => VT.GetVersion(ref this, out version);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestOSPackageDependency self, out PWSTR name) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestOSPackageDependency self, out uint64 version) GetVersion;
			}
		}
		[CRepr]
		public struct IAppxManifestHostRuntimeDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x6427a646, 0x7f49, 0x433e, 0xb1, 0xa6, 0x0d, 0xa3, 0x09, 0xf6, 0x88, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxManifestHostRuntimeDependency* hostRuntimeDependency) mut => VT.GetCurrent(ref this, out hostRuntimeDependency);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestHostRuntimeDependenciesEnumerator self, out IAppxManifestHostRuntimeDependency* hostRuntimeDependency) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestHostRuntimeDependenciesEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestHostRuntimeDependenciesEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestHostRuntimeDependency : IUnknown
		{
			public const new Guid IID = .(0x3455d234, 0x8414, 0x410d, 0x95, 0xc7, 0x7b, 0x35, 0x25, 0x5b, 0x83, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out PWSTR name) mut => VT.GetName(ref this, out name);
			public HRESULT GetPublisher(out PWSTR publisher) mut => VT.GetPublisher(ref this, out publisher);
			public HRESULT GetMinVersion(out uint64 minVersion) mut => VT.GetMinVersion(ref this, out minVersion);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestHostRuntimeDependency self, out PWSTR name) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestHostRuntimeDependency self, out PWSTR publisher) GetPublisher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestHostRuntimeDependency self, out uint64 minVersion) GetMinVersion;
			}
		}
		[CRepr]
		public struct IAppxManifestHostRuntimeDependency2 : IUnknown
		{
			public const new Guid IID = .(0xc26f23a8, 0xee10, 0x4ad6, 0xb8, 0x98, 0x2b, 0x4d, 0x7a, 0xeb, 0xfe, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPackageFamilyName(out PWSTR packageFamilyName) mut => VT.GetPackageFamilyName(ref this, out packageFamilyName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestHostRuntimeDependency2 self, out PWSTR packageFamilyName) GetPackageFamilyName;
			}
		}
		[CRepr]
		public struct IAppxManifestOptionalPackageInfo : IUnknown
		{
			public const new Guid IID = .(0x2634847d, 0x5b5d, 0x4fe5, 0xa2, 0x43, 0x00, 0x2f, 0xf9, 0x5e, 0xdc, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIsOptionalPackage(out BOOL isOptionalPackage) mut => VT.GetIsOptionalPackage(ref this, out isOptionalPackage);
			public HRESULT GetMainPackageName(out PWSTR mainPackageName) mut => VT.GetMainPackageName(ref this, out mainPackageName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestOptionalPackageInfo self, out BOOL isOptionalPackage) GetIsOptionalPackage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestOptionalPackageInfo self, out PWSTR mainPackageName) GetMainPackageName;
			}
		}
		[CRepr]
		public struct IAppxManifestMainPackageDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xa99c4f00, 0x51d2, 0x4f0f, 0xba, 0x46, 0x7e, 0xd5, 0x25, 0x5e, 0xbd, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxManifestMainPackageDependency* mainPackageDependency) mut => VT.GetCurrent(ref this, out mainPackageDependency);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestMainPackageDependenciesEnumerator self, out IAppxManifestMainPackageDependency* mainPackageDependency) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestMainPackageDependenciesEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestMainPackageDependenciesEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestMainPackageDependency : IUnknown
		{
			public const new Guid IID = .(0x05d0611c, 0xbc29, 0x46d5, 0x97, 0xe2, 0x84, 0xb9, 0xc7, 0x9b, 0xd8, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out PWSTR name) mut => VT.GetName(ref this, out name);
			public HRESULT GetPublisher(out PWSTR publisher) mut => VT.GetPublisher(ref this, out publisher);
			public HRESULT GetPackageFamilyName(out PWSTR packageFamilyName) mut => VT.GetPackageFamilyName(ref this, out packageFamilyName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestMainPackageDependency self, out PWSTR name) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestMainPackageDependency self, out PWSTR publisher) GetPublisher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestMainPackageDependency self, out PWSTR packageFamilyName) GetPackageFamilyName;
			}
		}
		[CRepr]
		public struct IAppxManifestPackageId : IUnknown
		{
			public const new Guid IID = .(0x283ce2d7, 0x7153, 0x4a91, 0x96, 0x49, 0x7a, 0x0f, 0x72, 0x40, 0x94, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out PWSTR name) mut => VT.GetName(ref this, out name);
			public HRESULT GetArchitecture(out APPX_PACKAGE_ARCHITECTURE architecture) mut => VT.GetArchitecture(ref this, out architecture);
			public HRESULT GetPublisher(out PWSTR publisher) mut => VT.GetPublisher(ref this, out publisher);
			public HRESULT GetVersion(out uint64 packageVersion) mut => VT.GetVersion(ref this, out packageVersion);
			public HRESULT GetResourceId(out PWSTR resourceId) mut => VT.GetResourceId(ref this, out resourceId);
			public HRESULT ComparePublisher(PWSTR other, out BOOL isSame) mut => VT.ComparePublisher(ref this, other, out isSame);
			public HRESULT GetPackageFullName(out PWSTR packageFullName) mut => VT.GetPackageFullName(ref this, out packageFullName);
			public HRESULT GetPackageFamilyName(out PWSTR packageFamilyName) mut => VT.GetPackageFamilyName(ref this, out packageFamilyName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageId self, out PWSTR name) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageId self, out APPX_PACKAGE_ARCHITECTURE architecture) GetArchitecture;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageId self, out PWSTR publisher) GetPublisher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageId self, out uint64 packageVersion) GetVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageId self, out PWSTR resourceId) GetResourceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageId self, PWSTR other, out BOOL isSame) ComparePublisher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageId self, out PWSTR packageFullName) GetPackageFullName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageId self, out PWSTR packageFamilyName) GetPackageFamilyName;
			}
		}
		[CRepr]
		public struct IAppxManifestPackageId2 : IAppxManifestPackageId
		{
			public const new Guid IID = .(0x2256999d, 0xd617, 0x42f1, 0x88, 0x0e, 0x0b, 0xa4, 0x54, 0x23, 0x19, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetArchitecture2(out APPX_PACKAGE_ARCHITECTURE2 architecture) mut => VT.GetArchitecture2(ref this, out architecture);

			[CRepr]
			public struct VTable : IAppxManifestPackageId.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageId2 self, out APPX_PACKAGE_ARCHITECTURE2 architecture) GetArchitecture2;
			}
		}
		[CRepr]
		public struct IAppxManifestProperties : IUnknown
		{
			public const new Guid IID = .(0x03faf64d, 0xf26f, 0x4b2c, 0xaa, 0xf7, 0x8f, 0xe7, 0x78, 0x9b, 0x8b, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBoolValue(PWSTR name, out BOOL value) mut => VT.GetBoolValue(ref this, name, out value);
			public HRESULT GetStringValue(PWSTR name, out PWSTR value) mut => VT.GetStringValue(ref this, name, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestProperties self, PWSTR name, out BOOL value) GetBoolValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestProperties self, PWSTR name, out PWSTR value) GetStringValue;
			}
		}
		[CRepr]
		public struct IAppxManifestTargetDeviceFamiliesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x36537f36, 0x27a4, 0x4788, 0x88, 0xc0, 0x73, 0x38, 0x19, 0x57, 0x50, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxManifestTargetDeviceFamily* targetDeviceFamily) mut => VT.GetCurrent(ref this, out targetDeviceFamily);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestTargetDeviceFamiliesEnumerator self, out IAppxManifestTargetDeviceFamily* targetDeviceFamily) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestTargetDeviceFamiliesEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestTargetDeviceFamiliesEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestTargetDeviceFamily : IUnknown
		{
			public const new Guid IID = .(0x9091b09b, 0xc8d5, 0x4f31, 0x86, 0x87, 0xa3, 0x38, 0x25, 0x9f, 0xae, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out PWSTR name) mut => VT.GetName(ref this, out name);
			public HRESULT GetMinVersion(out uint64 minVersion) mut => VT.GetMinVersion(ref this, out minVersion);
			public HRESULT GetMaxVersionTested(out uint64 maxVersionTested) mut => VT.GetMaxVersionTested(ref this, out maxVersionTested);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestTargetDeviceFamily self, out PWSTR name) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestTargetDeviceFamily self, out uint64 minVersion) GetMinVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestTargetDeviceFamily self, out uint64 maxVersionTested) GetMaxVersionTested;
			}
		}
		[CRepr]
		public struct IAppxManifestPackageDependenciesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xb43bbcf9, 0x65a6, 0x42dd, 0xba, 0xc0, 0x8c, 0x67, 0x41, 0xe7, 0xf5, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxManifestPackageDependency* dependency) mut => VT.GetCurrent(ref this, out dependency);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageDependenciesEnumerator self, out IAppxManifestPackageDependency* dependency) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageDependenciesEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageDependenciesEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestPackageDependency : IUnknown
		{
			public const new Guid IID = .(0xe4946b59, 0x733e, 0x43f0, 0xa7, 0x24, 0x3b, 0xde, 0x4c, 0x12, 0x85, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out PWSTR name) mut => VT.GetName(ref this, out name);
			public HRESULT GetPublisher(out PWSTR publisher) mut => VT.GetPublisher(ref this, out publisher);
			public HRESULT GetMinVersion(out uint64 minVersion) mut => VT.GetMinVersion(ref this, out minVersion);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageDependency self, out PWSTR name) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageDependency self, out PWSTR publisher) GetPublisher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageDependency self, out uint64 minVersion) GetMinVersion;
			}
		}
		[CRepr]
		public struct IAppxManifestPackageDependency2 : IAppxManifestPackageDependency
		{
			public const new Guid IID = .(0xdda0b713, 0xf3ff, 0x49d3, 0x89, 0x8a, 0x27, 0x86, 0x78, 0x0c, 0x5d, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMaxMajorVersionTested(out uint16 maxMajorVersionTested) mut => VT.GetMaxMajorVersionTested(ref this, out maxMajorVersionTested);

			[CRepr]
			public struct VTable : IAppxManifestPackageDependency.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageDependency2 self, out uint16 maxMajorVersionTested) GetMaxMajorVersionTested;
			}
		}
		[CRepr]
		public struct IAppxManifestPackageDependency3 : IUnknown
		{
			public const new Guid IID = .(0x1ac56374, 0x6198, 0x4d6b, 0x92, 0xe4, 0x74, 0x9d, 0x5a, 0xb8, 0xa8, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIsOptional(out BOOL isOptional) mut => VT.GetIsOptional(ref this, out isOptional);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestPackageDependency3 self, out BOOL isOptional) GetIsOptional;
			}
		}
		[CRepr]
		public struct IAppxManifestResourcesEnumerator : IUnknown
		{
			public const new Guid IID = .(0xde4dfbbd, 0x881a, 0x48bb, 0x85, 0x8c, 0xd6, 0xf2, 0xba, 0xea, 0xe6, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out PWSTR resource) mut => VT.GetCurrent(ref this, out resource);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestResourcesEnumerator self, out PWSTR resource) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestResourcesEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestResourcesEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestDeviceCapabilitiesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x30204541, 0x427b, 0x4a1c, 0xba, 0xcf, 0x65, 0x5b, 0xf4, 0x63, 0xa5, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out PWSTR deviceCapability) mut => VT.GetCurrent(ref this, out deviceCapability);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestDeviceCapabilitiesEnumerator self, out PWSTR deviceCapability) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestDeviceCapabilitiesEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestDeviceCapabilitiesEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestCapabilitiesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x11d22258, 0xf470, 0x42c1, 0xb2, 0x91, 0x83, 0x61, 0xc5, 0x43, 0x7e, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out PWSTR capability) mut => VT.GetCurrent(ref this, out capability);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestCapabilitiesEnumerator self, out PWSTR capability) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestCapabilitiesEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestCapabilitiesEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestApplicationsEnumerator : IUnknown
		{
			public const new Guid IID = .(0x9eb8a55a, 0xf04b, 0x4d0d, 0x80, 0x8d, 0x68, 0x61, 0x85, 0xd4, 0x84, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxManifestApplication* application) mut => VT.GetCurrent(ref this, out application);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestApplicationsEnumerator self, out IAppxManifestApplication* application) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestApplicationsEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestApplicationsEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestApplication : IUnknown
		{
			public const new Guid IID = .(0x5da89bf4, 0x3773, 0x46be, 0xb6, 0x50, 0x7e, 0x74, 0x48, 0x63, 0xb7, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStringValue(PWSTR name, out PWSTR value) mut => VT.GetStringValue(ref this, name, out value);
			public HRESULT GetAppUserModelId(out PWSTR appUserModelId) mut => VT.GetAppUserModelId(ref this, out appUserModelId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestApplication self, PWSTR name, out PWSTR value) GetStringValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestApplication self, out PWSTR appUserModelId) GetAppUserModelId;
			}
		}
		[CRepr]
		public struct IAppxManifestQualifiedResourcesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x8ef6adfe, 0x3762, 0x4a8f, 0x93, 0x73, 0x2f, 0xc5, 0xd4, 0x44, 0xc8, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxManifestQualifiedResource* resource) mut => VT.GetCurrent(ref this, out resource);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestQualifiedResourcesEnumerator self, out IAppxManifestQualifiedResource* resource) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestQualifiedResourcesEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestQualifiedResourcesEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxManifestQualifiedResource : IUnknown
		{
			public const new Guid IID = .(0x3b53a497, 0x3c5c, 0x48d1, 0x9e, 0xa3, 0xbb, 0x7e, 0xac, 0x8c, 0xd7, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLanguage(out PWSTR language) mut => VT.GetLanguage(ref this, out language);
			public HRESULT GetScale(out uint32 scale) mut => VT.GetScale(ref this, out scale);
			public HRESULT GetDXFeatureLevel(out DX_FEATURE_LEVEL dxFeatureLevel) mut => VT.GetDXFeatureLevel(ref this, out dxFeatureLevel);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestQualifiedResource self, out PWSTR language) GetLanguage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestQualifiedResource self, out uint32 scale) GetScale;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxManifestQualifiedResource self, out DX_FEATURE_LEVEL dxFeatureLevel) GetDXFeatureLevel;
			}
		}
		[CRepr]
		public struct IAppxBundleFactory : IUnknown
		{
			public const new Guid IID = .(0xbba65864, 0x965f, 0x4a5f, 0x85, 0x5f, 0xf0, 0x74, 0xbd, 0xbf, 0x3a, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateBundleWriter(ref IStream outputStream, uint64 bundleVersion, out IAppxBundleWriter* bundleWriter) mut => VT.CreateBundleWriter(ref this, ref outputStream, bundleVersion, out bundleWriter);
			public HRESULT CreateBundleReader(ref IStream inputStream, out IAppxBundleReader* bundleReader) mut => VT.CreateBundleReader(ref this, ref inputStream, out bundleReader);
			public HRESULT CreateBundleManifestReader(ref IStream inputStream, out IAppxBundleManifestReader* manifestReader) mut => VT.CreateBundleManifestReader(ref this, ref inputStream, out manifestReader);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleFactory self, ref IStream outputStream, uint64 bundleVersion, out IAppxBundleWriter* bundleWriter) CreateBundleWriter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleFactory self, ref IStream inputStream, out IAppxBundleReader* bundleReader) CreateBundleReader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleFactory self, ref IStream inputStream, out IAppxBundleManifestReader* manifestReader) CreateBundleManifestReader;
			}
		}
		[CRepr]
		public struct IAppxBundleWriter : IUnknown
		{
			public const new Guid IID = .(0xec446fe8, 0xbfec, 0x4c64, 0xab, 0x4f, 0x49, 0xf0, 0x38, 0xf0, 0xc6, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadPackage(PWSTR fileName, ref IStream packageStream) mut => VT.AddPayloadPackage(ref this, fileName, ref packageStream);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleWriter self, PWSTR fileName, ref IStream packageStream) AddPayloadPackage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleWriter self) Close;
			}
		}
		[CRepr]
		public struct IAppxBundleWriter2 : IUnknown
		{
			public const new Guid IID = .(0x6d8fe971, 0x01cc, 0x49a0, 0xb6, 0x85, 0x23, 0x38, 0x51, 0x27, 0x99, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddExternalPackageReference(PWSTR fileName, ref IStream inputStream) mut => VT.AddExternalPackageReference(ref this, fileName, ref inputStream);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleWriter2 self, PWSTR fileName, ref IStream inputStream) AddExternalPackageReference;
			}
		}
		[CRepr]
		public struct IAppxBundleWriter3 : IUnknown
		{
			public const new Guid IID = .(0xad711152, 0xf969, 0x4193, 0x82, 0xd5, 0x9d, 0xdf, 0x27, 0x86, 0xd2, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPackageReference(PWSTR fileName, ref IStream inputStream) mut => VT.AddPackageReference(ref this, fileName, ref inputStream);
			public HRESULT Close(PWSTR hashMethodString) mut => VT.Close(ref this, hashMethodString);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleWriter3 self, PWSTR fileName, ref IStream inputStream) AddPackageReference;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleWriter3 self, PWSTR hashMethodString) Close;
			}
		}
		[CRepr]
		public struct IAppxBundleWriter4 : IUnknown
		{
			public const new Guid IID = .(0x9cd9d523, 0x5009, 0x4c01, 0x98, 0x82, 0xdc, 0x02, 0x9f, 0xbd, 0x47, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadPackage(PWSTR fileName, ref IStream packageStream, BOOL isDefaultApplicablePackage) mut => VT.AddPayloadPackage(ref this, fileName, ref packageStream, isDefaultApplicablePackage);
			public HRESULT AddPackageReference(PWSTR fileName, ref IStream inputStream, BOOL isDefaultApplicablePackage) mut => VT.AddPackageReference(ref this, fileName, ref inputStream, isDefaultApplicablePackage);
			public HRESULT AddExternalPackageReference(PWSTR fileName, ref IStream inputStream, BOOL isDefaultApplicablePackage) mut => VT.AddExternalPackageReference(ref this, fileName, ref inputStream, isDefaultApplicablePackage);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleWriter4 self, PWSTR fileName, ref IStream packageStream, BOOL isDefaultApplicablePackage) AddPayloadPackage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleWriter4 self, PWSTR fileName, ref IStream inputStream, BOOL isDefaultApplicablePackage) AddPackageReference;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleWriter4 self, PWSTR fileName, ref IStream inputStream, BOOL isDefaultApplicablePackage) AddExternalPackageReference;
			}
		}
		[CRepr]
		public struct IAppxBundleReader : IUnknown
		{
			public const new Guid IID = .(0xdd75b8c0, 0xba76, 0x43b0, 0xae, 0x0f, 0x68, 0x65, 0x6a, 0x1d, 0xc5, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFootprintFile(APPX_BUNDLE_FOOTPRINT_FILE_TYPE fileType, out IAppxFile* footprintFile) mut => VT.GetFootprintFile(ref this, fileType, out footprintFile);
			public HRESULT GetBlockMap(out IAppxBlockMapReader* blockMapReader) mut => VT.GetBlockMap(ref this, out blockMapReader);
			public HRESULT GetManifest(out IAppxBundleManifestReader* manifestReader) mut => VT.GetManifest(ref this, out manifestReader);
			public HRESULT GetPayloadPackages(out IAppxFilesEnumerator* payloadPackages) mut => VT.GetPayloadPackages(ref this, out payloadPackages);
			public HRESULT GetPayloadPackage(PWSTR fileName, out IAppxFile* payloadPackage) mut => VT.GetPayloadPackage(ref this, fileName, out payloadPackage);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleReader self, APPX_BUNDLE_FOOTPRINT_FILE_TYPE fileType, out IAppxFile* footprintFile) GetFootprintFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleReader self, out IAppxBlockMapReader* blockMapReader) GetBlockMap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleReader self, out IAppxBundleManifestReader* manifestReader) GetManifest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleReader self, out IAppxFilesEnumerator* payloadPackages) GetPayloadPackages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleReader self, PWSTR fileName, out IAppxFile* payloadPackage) GetPayloadPackage;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestReader : IUnknown
		{
			public const new Guid IID = .(0xcf0ebbc1, 0xcc99, 0x4106, 0x91, 0xeb, 0xe6, 0x74, 0x62, 0xe0, 0x4f, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPackageId(out IAppxManifestPackageId* packageId) mut => VT.GetPackageId(ref this, out packageId);
			public HRESULT GetPackageInfoItems(out IAppxBundleManifestPackageInfoEnumerator* packageInfoItems) mut => VT.GetPackageInfoItems(ref this, out packageInfoItems);
			public HRESULT GetStream(out IStream* manifestStream) mut => VT.GetStream(ref this, out manifestStream);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestReader self, out IAppxManifestPackageId* packageId) GetPackageId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestReader self, out IAppxBundleManifestPackageInfoEnumerator* packageInfoItems) GetPackageInfoItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestReader self, out IStream* manifestStream) GetStream;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestReader2 : IUnknown
		{
			public const new Guid IID = .(0x5517df70, 0x033f, 0x4af2, 0x82, 0x13, 0x87, 0xd7, 0x66, 0x80, 0x5c, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOptionalBundles(out IAppxBundleManifestOptionalBundleInfoEnumerator* optionalBundles) mut => VT.GetOptionalBundles(ref this, out optionalBundles);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestReader2 self, out IAppxBundleManifestOptionalBundleInfoEnumerator* optionalBundles) GetOptionalBundles;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfoEnumerator : IUnknown
		{
			public const new Guid IID = .(0xf9b856ee, 0x49a6, 0x4e19, 0xb2, 0xb0, 0x6a, 0x24, 0x06, 0xd6, 0x3a, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxBundleManifestPackageInfo* packageInfo) mut => VT.GetCurrent(ref this, out packageInfo);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfoEnumerator self, out IAppxBundleManifestPackageInfo* packageInfo) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfoEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfoEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfo : IUnknown
		{
			public const new Guid IID = .(0x54cd06c1, 0x268f, 0x40bb, 0x8e, 0xd2, 0x75, 0x7a, 0x9e, 0xba, 0xec, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPackageType(out APPX_BUNDLE_PAYLOAD_PACKAGE_TYPE packageType) mut => VT.GetPackageType(ref this, out packageType);
			public HRESULT GetPackageId(out IAppxManifestPackageId* packageId) mut => VT.GetPackageId(ref this, out packageId);
			public HRESULT GetFileName(out PWSTR fileName) mut => VT.GetFileName(ref this, out fileName);
			public HRESULT GetOffset(out uint64 offset) mut => VT.GetOffset(ref this, out offset);
			public HRESULT GetSize(out uint64 size) mut => VT.GetSize(ref this, out size);
			public HRESULT GetResources(out IAppxManifestQualifiedResourcesEnumerator* resources) mut => VT.GetResources(ref this, out resources);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfo self, out APPX_BUNDLE_PAYLOAD_PACKAGE_TYPE packageType) GetPackageType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfo self, out IAppxManifestPackageId* packageId) GetPackageId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfo self, out PWSTR fileName) GetFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfo self, out uint64 offset) GetOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfo self, out uint64 size) GetSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfo self, out IAppxManifestQualifiedResourcesEnumerator* resources) GetResources;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfo2 : IUnknown
		{
			public const new Guid IID = .(0x44c2acbc, 0xb2cf, 0x4ccb, 0xbb, 0xdb, 0x9c, 0x6d, 0xa8, 0xc3, 0xbc, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIsPackageReference(out BOOL isPackageReference) mut => VT.GetIsPackageReference(ref this, out isPackageReference);
			public HRESULT GetIsNonQualifiedResourcePackage(out BOOL isNonQualifiedResourcePackage) mut => VT.GetIsNonQualifiedResourcePackage(ref this, out isNonQualifiedResourcePackage);
			public HRESULT GetIsDefaultApplicablePackage(out BOOL isDefaultApplicablePackage) mut => VT.GetIsDefaultApplicablePackage(ref this, out isDefaultApplicablePackage);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfo2 self, out BOOL isPackageReference) GetIsPackageReference;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfo2 self, out BOOL isNonQualifiedResourcePackage) GetIsNonQualifiedResourcePackage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfo2 self, out BOOL isDefaultApplicablePackage) GetIsDefaultApplicablePackage;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfo3 : IUnknown
		{
			public const new Guid IID = .(0x6ba74b98, 0xbb74, 0x4296, 0x80, 0xd0, 0x5f, 0x42, 0x56, 0xa9, 0x96, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTargetDeviceFamilies(out IAppxManifestTargetDeviceFamiliesEnumerator* targetDeviceFamilies) mut => VT.GetTargetDeviceFamilies(ref this, out targetDeviceFamilies);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfo3 self, out IAppxManifestTargetDeviceFamiliesEnumerator* targetDeviceFamilies) GetTargetDeviceFamilies;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestPackageInfo4 : IUnknown
		{
			public const new Guid IID = .(0x5da6f13d, 0xa8a7, 0x4532, 0x85, 0x7c, 0x13, 0x93, 0xd6, 0x59, 0x37, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIsStub(out BOOL isStub) mut => VT.GetIsStub(ref this, out isStub);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestPackageInfo4 self, out BOOL isStub) GetIsStub;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestOptionalBundleInfoEnumerator : IUnknown
		{
			public const new Guid IID = .(0x9a178793, 0xf97e, 0x46ac, 0xaa, 0xca, 0xdd, 0x5b, 0xa4, 0xc1, 0x77, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxBundleManifestOptionalBundleInfo* optionalBundle) mut => VT.GetCurrent(ref this, out optionalBundle);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestOptionalBundleInfoEnumerator self, out IAppxBundleManifestOptionalBundleInfo* optionalBundle) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestOptionalBundleInfoEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestOptionalBundleInfoEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxBundleManifestOptionalBundleInfo : IUnknown
		{
			public const new Guid IID = .(0x515bf2e8, 0xbcb0, 0x4d69, 0x8c, 0x48, 0xe3, 0x83, 0x14, 0x7b, 0x6e, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPackageId(out IAppxManifestPackageId* packageId) mut => VT.GetPackageId(ref this, out packageId);
			public HRESULT GetFileName(out PWSTR fileName) mut => VT.GetFileName(ref this, out fileName);
			public HRESULT GetPackageInfoItems(out IAppxBundleManifestPackageInfoEnumerator* packageInfoItems) mut => VT.GetPackageInfoItems(ref this, out packageInfoItems);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestOptionalBundleInfo self, out IAppxManifestPackageId* packageId) GetPackageId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestOptionalBundleInfo self, out PWSTR fileName) GetFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxBundleManifestOptionalBundleInfo self, out IAppxBundleManifestPackageInfoEnumerator* packageInfoItems) GetPackageInfoItems;
			}
		}
		[CRepr]
		public struct IAppxContentGroupFilesEnumerator : IUnknown
		{
			public const new Guid IID = .(0x1a09a2fd, 0x7440, 0x44eb, 0x8c, 0x84, 0x84, 0x82, 0x05, 0xa6, 0xa1, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out PWSTR file) mut => VT.GetCurrent(ref this, out file);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxContentGroupFilesEnumerator self, out PWSTR file) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxContentGroupFilesEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxContentGroupFilesEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxContentGroup : IUnknown
		{
			public const new Guid IID = .(0x328f6468, 0xc04f, 0x4e3c, 0xb6, 0xfa, 0x6b, 0x8d, 0x27, 0xf3, 0x00, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out PWSTR groupName) mut => VT.GetName(ref this, out groupName);
			public HRESULT GetFiles(out IAppxContentGroupFilesEnumerator* enumerator) mut => VT.GetFiles(ref this, out enumerator);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxContentGroup self, out PWSTR groupName) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxContentGroup self, out IAppxContentGroupFilesEnumerator* enumerator) GetFiles;
			}
		}
		[CRepr]
		public struct IAppxContentGroupsEnumerator : IUnknown
		{
			public const new Guid IID = .(0x3264e477, 0x16d1, 0x4d63, 0x82, 0x3e, 0x7d, 0x29, 0x84, 0x69, 0x66, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrent(out IAppxContentGroup* stream) mut => VT.GetCurrent(ref this, out stream);
			public HRESULT GetHasCurrent(out BOOL hasCurrent) mut => VT.GetHasCurrent(ref this, out hasCurrent);
			public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxContentGroupsEnumerator self, out IAppxContentGroup* stream) GetCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxContentGroupsEnumerator self, out BOOL hasCurrent) GetHasCurrent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxContentGroupsEnumerator self, out BOOL hasNext) MoveNext;
			}
		}
		[CRepr]
		public struct IAppxContentGroupMapReader : IUnknown
		{
			public const new Guid IID = .(0x418726d8, 0xdd99, 0x4f5d, 0x98, 0x86, 0x15, 0x7a, 0xdd, 0x20, 0xde, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRequiredGroup(out IAppxContentGroup* requiredGroup) mut => VT.GetRequiredGroup(ref this, out requiredGroup);
			public HRESULT GetAutomaticGroups(out IAppxContentGroupsEnumerator* automaticGroupsEnumerator) mut => VT.GetAutomaticGroups(ref this, out automaticGroupsEnumerator);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxContentGroupMapReader self, out IAppxContentGroup* requiredGroup) GetRequiredGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxContentGroupMapReader self, out IAppxContentGroupsEnumerator* automaticGroupsEnumerator) GetAutomaticGroups;
			}
		}
		[CRepr]
		public struct IAppxSourceContentGroupMapReader : IUnknown
		{
			public const new Guid IID = .(0xf329791d, 0x540b, 0x4a9f, 0xbc, 0x75, 0x32, 0x82, 0xb7, 0xd7, 0x31, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRequiredGroup(out IAppxContentGroup* requiredGroup) mut => VT.GetRequiredGroup(ref this, out requiredGroup);
			public HRESULT GetAutomaticGroups(out IAppxContentGroupsEnumerator* automaticGroupsEnumerator) mut => VT.GetAutomaticGroups(ref this, out automaticGroupsEnumerator);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxSourceContentGroupMapReader self, out IAppxContentGroup* requiredGroup) GetRequiredGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxSourceContentGroupMapReader self, out IAppxContentGroupsEnumerator* automaticGroupsEnumerator) GetAutomaticGroups;
			}
		}
		[CRepr]
		public struct IAppxContentGroupMapWriter : IUnknown
		{
			public const new Guid IID = .(0xd07ab776, 0xa9de, 0x4798, 0x8c, 0x14, 0x3d, 0xb3, 0x1e, 0x68, 0x7c, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddAutomaticGroup(PWSTR groupName) mut => VT.AddAutomaticGroup(ref this, groupName);
			public HRESULT AddAutomaticFile(PWSTR fileName) mut => VT.AddAutomaticFile(ref this, fileName);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxContentGroupMapWriter self, PWSTR groupName) AddAutomaticGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxContentGroupMapWriter self, PWSTR fileName) AddAutomaticFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxContentGroupMapWriter self) Close;
			}
		}
		[CRepr]
		public struct IAppxPackagingDiagnosticEventSink : IUnknown
		{
			public const new Guid IID = .(0x17239d47, 0x6adb, 0x45d2, 0x80, 0xf6, 0xf9, 0xcb, 0xc3, 0xbf, 0x05, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReportContextChange(APPX_PACKAGING_CONTEXT_CHANGE_TYPE changeType, int32 contextId, PSTR contextName, PWSTR contextMessage, PWSTR detailsMessage) mut => VT.ReportContextChange(ref this, changeType, contextId, contextName, contextMessage, detailsMessage);
			public HRESULT ReportError(PWSTR errorMessage) mut => VT.ReportError(ref this, errorMessage);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackagingDiagnosticEventSink self, APPX_PACKAGING_CONTEXT_CHANGE_TYPE changeType, int32 contextId, PSTR contextName, PWSTR contextMessage, PWSTR detailsMessage) ReportContextChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackagingDiagnosticEventSink self, PWSTR errorMessage) ReportError;
			}
		}
		[CRepr]
		public struct IAppxPackagingDiagnosticEventSinkManager : IUnknown
		{
			public const new Guid IID = .(0x369648fa, 0xa7eb, 0x4909, 0xa1, 0x5d, 0x69, 0x54, 0xa0, 0x78, 0xf1, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSinkForProcess(ref IAppxPackagingDiagnosticEventSink sink) mut => VT.SetSinkForProcess(ref this, ref sink);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackagingDiagnosticEventSinkManager self, ref IAppxPackagingDiagnosticEventSink sink) SetSinkForProcess;
			}
		}
		[CRepr]
		public struct IAppxEncryptionFactory : IUnknown
		{
			public const new Guid IID = .(0x80e8e04d, 0x8c88, 0x44ae, 0xa0, 0x11, 0x7c, 0xad, 0xf6, 0xfb, 0x2e, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EncryptPackage(ref IStream inputStream, ref IStream outputStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles) mut => VT.EncryptPackage(ref this, ref inputStream, ref outputStream, settings, keyInfo, exemptedFiles);
			public HRESULT DecryptPackage(ref IStream inputStream, ref IStream outputStream, in APPX_KEY_INFO keyInfo) mut => VT.DecryptPackage(ref this, ref inputStream, ref outputStream, keyInfo);
			public HRESULT CreateEncryptedPackageWriter(ref IStream outputStream, ref IStream manifestStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles, out IAppxEncryptedPackageWriter* packageWriter) mut => VT.CreateEncryptedPackageWriter(ref this, ref outputStream, ref manifestStream, settings, keyInfo, exemptedFiles, out packageWriter);
			public HRESULT CreateEncryptedPackageReader(ref IStream inputStream, in APPX_KEY_INFO keyInfo, out IAppxPackageReader* packageReader) mut => VT.CreateEncryptedPackageReader(ref this, ref inputStream, keyInfo, out packageReader);
			public HRESULT EncryptBundle(ref IStream inputStream, ref IStream outputStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles) mut => VT.EncryptBundle(ref this, ref inputStream, ref outputStream, settings, keyInfo, exemptedFiles);
			public HRESULT DecryptBundle(ref IStream inputStream, ref IStream outputStream, in APPX_KEY_INFO keyInfo) mut => VT.DecryptBundle(ref this, ref inputStream, ref outputStream, keyInfo);
			public HRESULT CreateEncryptedBundleWriter(ref IStream outputStream, uint64 bundleVersion, in APPX_ENCRYPTED_PACKAGE_SETTINGS settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles, out IAppxEncryptedBundleWriter* bundleWriter) mut => VT.CreateEncryptedBundleWriter(ref this, ref outputStream, bundleVersion, settings, keyInfo, exemptedFiles, out bundleWriter);
			public HRESULT CreateEncryptedBundleReader(ref IStream inputStream, in APPX_KEY_INFO keyInfo, out IAppxBundleReader* bundleReader) mut => VT.CreateEncryptedBundleReader(ref this, ref inputStream, keyInfo, out bundleReader);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory self, ref IStream inputStream, ref IStream outputStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles) EncryptPackage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory self, ref IStream inputStream, ref IStream outputStream, in APPX_KEY_INFO keyInfo) DecryptPackage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory self, ref IStream outputStream, ref IStream manifestStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles, out IAppxEncryptedPackageWriter* packageWriter) CreateEncryptedPackageWriter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory self, ref IStream inputStream, in APPX_KEY_INFO keyInfo, out IAppxPackageReader* packageReader) CreateEncryptedPackageReader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory self, ref IStream inputStream, ref IStream outputStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles) EncryptBundle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory self, ref IStream inputStream, ref IStream outputStream, in APPX_KEY_INFO keyInfo) DecryptBundle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory self, ref IStream outputStream, uint64 bundleVersion, in APPX_ENCRYPTED_PACKAGE_SETTINGS settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles, out IAppxEncryptedBundleWriter* bundleWriter) CreateEncryptedBundleWriter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory self, ref IStream inputStream, in APPX_KEY_INFO keyInfo, out IAppxBundleReader* bundleReader) CreateEncryptedBundleReader;
			}
		}
		[CRepr]
		public struct IAppxEncryptionFactory2 : IUnknown
		{
			public const new Guid IID = .(0xc1b11eee, 0xc4ba, 0x4ab2, 0xa5, 0x5d, 0xd0, 0x15, 0xfe, 0x8f, 0xf6, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateEncryptedPackageWriter(ref IStream outputStream, ref IStream manifestStream, ref IStream contentGroupMapStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles, out IAppxEncryptedPackageWriter* packageWriter) mut => VT.CreateEncryptedPackageWriter(ref this, ref outputStream, ref manifestStream, ref contentGroupMapStream, settings, keyInfo, exemptedFiles, out packageWriter);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory2 self, ref IStream outputStream, ref IStream manifestStream, ref IStream contentGroupMapStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles, out IAppxEncryptedPackageWriter* packageWriter) CreateEncryptedPackageWriter;
			}
		}
		[CRepr]
		public struct IAppxEncryptionFactory3 : IUnknown
		{
			public const new Guid IID = .(0x09edca37, 0xcd64, 0x47d6, 0xb7, 0xe8, 0x1c, 0xb1, 0x1d, 0x4f, 0x7e, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EncryptPackage(ref IStream inputStream, ref IStream outputStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS2 settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles) mut => VT.EncryptPackage(ref this, ref inputStream, ref outputStream, settings, keyInfo, exemptedFiles);
			public HRESULT CreateEncryptedPackageWriter(ref IStream outputStream, ref IStream manifestStream, ref IStream contentGroupMapStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS2 settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles, out IAppxEncryptedPackageWriter* packageWriter) mut => VT.CreateEncryptedPackageWriter(ref this, ref outputStream, ref manifestStream, ref contentGroupMapStream, settings, keyInfo, exemptedFiles, out packageWriter);
			public HRESULT EncryptBundle(ref IStream inputStream, ref IStream outputStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS2 settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles) mut => VT.EncryptBundle(ref this, ref inputStream, ref outputStream, settings, keyInfo, exemptedFiles);
			public HRESULT CreateEncryptedBundleWriter(ref IStream outputStream, uint64 bundleVersion, in APPX_ENCRYPTED_PACKAGE_SETTINGS2 settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles, out IAppxEncryptedBundleWriter* bundleWriter) mut => VT.CreateEncryptedBundleWriter(ref this, ref outputStream, bundleVersion, settings, keyInfo, exemptedFiles, out bundleWriter);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory3 self, ref IStream inputStream, ref IStream outputStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS2 settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles) EncryptPackage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory3 self, ref IStream outputStream, ref IStream manifestStream, ref IStream contentGroupMapStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS2 settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles, out IAppxEncryptedPackageWriter* packageWriter) CreateEncryptedPackageWriter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory3 self, ref IStream inputStream, ref IStream outputStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS2 settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles) EncryptBundle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory3 self, ref IStream outputStream, uint64 bundleVersion, in APPX_ENCRYPTED_PACKAGE_SETTINGS2 settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles, out IAppxEncryptedBundleWriter* bundleWriter) CreateEncryptedBundleWriter;
			}
		}
		[CRepr]
		public struct IAppxEncryptionFactory4 : IUnknown
		{
			public const new Guid IID = .(0xa879611f, 0x12fd, 0x41fe, 0x85, 0xd5, 0x06, 0xae, 0x77, 0x9b, 0xba, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EncryptPackage(ref IStream inputStream, ref IStream outputStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS2 settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles, uint64 memoryLimit) mut => VT.EncryptPackage(ref this, ref inputStream, ref outputStream, settings, keyInfo, exemptedFiles, memoryLimit);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptionFactory4 self, ref IStream inputStream, ref IStream outputStream, in APPX_ENCRYPTED_PACKAGE_SETTINGS2 settings, in APPX_KEY_INFO keyInfo, in APPX_ENCRYPTED_EXEMPTIONS exemptedFiles, uint64 memoryLimit) EncryptPackage;
			}
		}
		[CRepr]
		public struct IAppxEncryptedPackageWriter : IUnknown
		{
			public const new Guid IID = .(0xf43d0b0b, 0x1379, 0x40e2, 0x9b, 0x29, 0x68, 0x2e, 0xa2, 0xbf, 0x42, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadFileEncrypted(PWSTR fileName, APPX_COMPRESSION_OPTION compressionOption, ref IStream inputStream) mut => VT.AddPayloadFileEncrypted(ref this, fileName, compressionOption, ref inputStream);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptedPackageWriter self, PWSTR fileName, APPX_COMPRESSION_OPTION compressionOption, ref IStream inputStream) AddPayloadFileEncrypted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptedPackageWriter self) Close;
			}
		}
		[CRepr]
		public struct IAppxEncryptedPackageWriter2 : IUnknown
		{
			public const new Guid IID = .(0x3e475447, 0x3a25, 0x40b5, 0x8a, 0xd2, 0xf9, 0x53, 0xae, 0x50, 0xc9, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadFilesEncrypted(uint32 fileCount, APPX_PACKAGE_WRITER_PAYLOAD_STREAM* payloadFiles, uint64 memoryLimit) mut => VT.AddPayloadFilesEncrypted(ref this, fileCount, payloadFiles, memoryLimit);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptedPackageWriter2 self, uint32 fileCount, APPX_PACKAGE_WRITER_PAYLOAD_STREAM* payloadFiles, uint64 memoryLimit) AddPayloadFilesEncrypted;
			}
		}
		[CRepr]
		public struct IAppxEncryptedBundleWriter : IUnknown
		{
			public const new Guid IID = .(0x80b0902f, 0x7bf0, 0x4117, 0xb8, 0xc6, 0x42, 0x79, 0xef, 0x81, 0xee, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadPackageEncrypted(PWSTR fileName, ref IStream packageStream) mut => VT.AddPayloadPackageEncrypted(ref this, fileName, ref packageStream);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptedBundleWriter self, PWSTR fileName, ref IStream packageStream) AddPayloadPackageEncrypted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptedBundleWriter self) Close;
			}
		}
		[CRepr]
		public struct IAppxEncryptedBundleWriter2 : IUnknown
		{
			public const new Guid IID = .(0xe644be82, 0xf0fa, 0x42b8, 0xa9, 0x56, 0x8d, 0x1c, 0xb4, 0x8e, 0xe3, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddExternalPackageReference(PWSTR fileName, ref IStream inputStream) mut => VT.AddExternalPackageReference(ref this, fileName, ref inputStream);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptedBundleWriter2 self, PWSTR fileName, ref IStream inputStream) AddExternalPackageReference;
			}
		}
		[CRepr]
		public struct IAppxEncryptedBundleWriter3 : IUnknown
		{
			public const new Guid IID = .(0x0d34deb3, 0x5cae, 0x4dd3, 0x97, 0x7c, 0x50, 0x49, 0x32, 0xa5, 0x1d, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPayloadPackageEncrypted(PWSTR fileName, ref IStream packageStream, BOOL isDefaultApplicablePackage) mut => VT.AddPayloadPackageEncrypted(ref this, fileName, ref packageStream, isDefaultApplicablePackage);
			public HRESULT AddExternalPackageReference(PWSTR fileName, ref IStream inputStream, BOOL isDefaultApplicablePackage) mut => VT.AddExternalPackageReference(ref this, fileName, ref inputStream, isDefaultApplicablePackage);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptedBundleWriter3 self, PWSTR fileName, ref IStream packageStream, BOOL isDefaultApplicablePackage) AddPayloadPackageEncrypted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxEncryptedBundleWriter3 self, PWSTR fileName, ref IStream inputStream, BOOL isDefaultApplicablePackage) AddExternalPackageReference;
			}
		}
		[CRepr]
		public struct IAppxPackageEditor : IUnknown
		{
			public const new Guid IID = .(0xe2adb6dc, 0x5e71, 0x4416, 0x86, 0xb6, 0x86, 0xe5, 0xf5, 0x29, 0x1a, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetWorkingDirectory(PWSTR workingDirectory) mut => VT.SetWorkingDirectory(ref this, workingDirectory);
			public HRESULT CreateDeltaPackage(ref IStream updatedPackageStream, ref IStream baselinePackageStream, ref IStream deltaPackageStream) mut => VT.CreateDeltaPackage(ref this, ref updatedPackageStream, ref baselinePackageStream, ref deltaPackageStream);
			public HRESULT CreateDeltaPackageUsingBaselineBlockMap(ref IStream updatedPackageStream, ref IStream baselineBlockMapStream, PWSTR baselinePackageFullName, ref IStream deltaPackageStream) mut => VT.CreateDeltaPackageUsingBaselineBlockMap(ref this, ref updatedPackageStream, ref baselineBlockMapStream, baselinePackageFullName, ref deltaPackageStream);
			public HRESULT UpdatePackage(ref IStream baselinePackageStream, ref IStream deltaPackageStream, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION updateOption) mut => VT.UpdatePackage(ref this, ref baselinePackageStream, ref deltaPackageStream, updateOption);
			public HRESULT UpdateEncryptedPackage(ref IStream baselineEncryptedPackageStream, ref IStream deltaPackageStream, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION updateOption, in APPX_ENCRYPTED_PACKAGE_SETTINGS2 settings, in APPX_KEY_INFO keyInfo) mut => VT.UpdateEncryptedPackage(ref this, ref baselineEncryptedPackageStream, ref deltaPackageStream, updateOption, settings, keyInfo);
			public HRESULT UpdatePackageManifest(ref IStream packageStream, ref IStream updatedManifestStream, BOOL isPackageEncrypted, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTIONS options) mut => VT.UpdatePackageManifest(ref this, ref packageStream, ref updatedManifestStream, isPackageEncrypted, options);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageEditor self, PWSTR workingDirectory) SetWorkingDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageEditor self, ref IStream updatedPackageStream, ref IStream baselinePackageStream, ref IStream deltaPackageStream) CreateDeltaPackage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageEditor self, ref IStream updatedPackageStream, ref IStream baselineBlockMapStream, PWSTR baselinePackageFullName, ref IStream deltaPackageStream) CreateDeltaPackageUsingBaselineBlockMap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageEditor self, ref IStream baselinePackageStream, ref IStream deltaPackageStream, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION updateOption) UpdatePackage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageEditor self, ref IStream baselineEncryptedPackageStream, ref IStream deltaPackageStream, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION updateOption, in APPX_ENCRYPTED_PACKAGE_SETTINGS2 settings, in APPX_KEY_INFO keyInfo) UpdateEncryptedPackage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppxPackageEditor self, ref IStream packageStream, ref IStream updatedManifestStream, BOOL isPackageEncrypted, APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTIONS options) UpdatePackageManifest;
			}
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackageId(out uint32 bufferLength, uint8* buffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackageFullName(out uint32 packageFullNameLength, char16* packageFullName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackageFamilyName(out uint32 packageFamilyNameLength, char16* packageFamilyName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackagePath(out uint32 pathLength, char16* path);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageId(HANDLE hProcess, out uint32 bufferLength, uint8* buffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageFullName(HANDLE hProcess, out uint32 packageFullNameLength, char16* packageFullName);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageFullNameFromToken(HANDLE token, out uint32 packageFullNameLength, char16* packageFullName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageFamilyName(HANDLE hProcess, out uint32 packageFamilyNameLength, char16* packageFamilyName);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageFamilyNameFromToken(HANDLE token, out uint32 packageFamilyNameLength, char16* packageFamilyName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackagePath(in PACKAGE_ID packageId, uint32 reserved, out uint32 pathLength, char16* path);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackagePathByFullName(PWSTR packageFullName, out uint32 pathLength, char16* path);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetStagedPackagePathByFullName(PWSTR packageFullName, out uint32 pathLength, char16* path);
		[Import("api-ms-win-appmodel-runtime-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackagePathByFullName2(PWSTR packageFullName, PackagePathType packagePathType, out uint32 pathLength, char16* path);
		[Import("api-ms-win-appmodel-runtime-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetStagedPackagePathByFullName2(PWSTR packageFullName, PackagePathType packagePathType, out uint32 pathLength, char16* path);
		[Import("api-ms-win-appmodel-runtime-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackageInfo2(uint32 flags, PackagePathType packagePathType, out uint32 bufferLength, uint8* buffer, uint32* count);
		[Import("api-ms-win-appmodel-runtime-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackagePath2(PackagePathType packagePathType, out uint32 pathLength, char16* path);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentApplicationUserModelId(out uint32 applicationUserModelIdLength, char16* applicationUserModelId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetApplicationUserModelId(HANDLE hProcess, out uint32 applicationUserModelIdLength, char16* applicationUserModelId);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetApplicationUserModelIdFromToken(HANDLE token, out uint32 applicationUserModelIdLength, char16* applicationUserModelId);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VerifyPackageFullName(PWSTR packageFullName);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VerifyPackageFamilyName(PWSTR packageFamilyName);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VerifyPackageId(in PACKAGE_ID packageId);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VerifyApplicationUserModelId(PWSTR applicationUserModelId);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VerifyPackageRelativeApplicationId(PWSTR packageRelativeApplicationId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PackageIdFromFullName(PWSTR packageFullName, uint32 flags, out uint32 bufferLength, uint8* buffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PackageFullNameFromId(in PACKAGE_ID packageId, out uint32 packageFullNameLength, char16* packageFullName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PackageFamilyNameFromId(in PACKAGE_ID packageId, out uint32 packageFamilyNameLength, char16* packageFamilyName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PackageFamilyNameFromFullName(PWSTR packageFullName, out uint32 packageFamilyNameLength, char16* packageFamilyName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PackageNameAndPublisherIdFromFamilyName(PWSTR packageFamilyName, out uint32 packageNameLength, char16* packageName, out uint32 packagePublisherIdLength, char16* packagePublisherId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 FormatApplicationUserModelId(PWSTR packageFamilyName, PWSTR packageRelativeApplicationId, out uint32 applicationUserModelIdLength, char16* applicationUserModelId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ParseApplicationUserModelId(PWSTR applicationUserModelId, out uint32 packageFamilyNameLength, char16* packageFamilyName, out uint32 packageRelativeApplicationIdLength, char16* packageRelativeApplicationId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackagesByPackageFamily(PWSTR packageFamilyName, out uint32 count, PWSTR* packageFullNames, out uint32 bufferLength, char16* buffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 FindPackagesByPackageFamily(PWSTR packageFamilyName, uint32 packageFilters, out uint32 count, PWSTR* packageFullNames, out uint32 bufferLength, char16* buffer, uint32* packageProperties);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetStagedPackageOrigin(PWSTR packageFullName, out PackageOrigin origin);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetCurrentPackageInfo(uint32 flags, out uint32 bufferLength, uint8* buffer, uint32* count);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 OpenPackageInfoByFullName(PWSTR packageFullName, uint32 reserved, out _PACKAGE_INFO_REFERENCE* packageInfoReference);
		[Import("api-ms-win-appmodel-runtime-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 OpenPackageInfoByFullNameForUser(PSID userSid, PWSTR packageFullName, uint32 reserved, out _PACKAGE_INFO_REFERENCE* packageInfoReference);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ClosePackageInfo(ref _PACKAGE_INFO_REFERENCE packageInfoReference);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageInfo(ref _PACKAGE_INFO_REFERENCE packageInfoReference, uint32 flags, out uint32 bufferLength, uint8* buffer, uint32* count);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageApplicationIds(ref _PACKAGE_INFO_REFERENCE packageInfoReference, out uint32 bufferLength, uint8* buffer, uint32* count);
		[Import("api-ms-win-appmodel-runtime-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPackageInfo2(ref _PACKAGE_INFO_REFERENCE packageInfoReference, uint32 flags, PackagePathType packagePathType, out uint32 bufferLength, uint8* buffer, uint32* count);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CheckIsMSIXPackage(PWSTR packageFullName, out BOOL isMSIXPackage);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TryCreatePackageDependency(PSID user, PWSTR packageFamilyName, PACKAGE_VERSION minVersion, PackageDependencyProcessorArchitectures packageDependencyProcessorArchitectures, PackageDependencyLifetimeKind lifetimeKind, PWSTR lifetimeArtifact, CreatePackageDependencyOptions options, PWSTR* packageDependencyId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeletePackageDependency(PWSTR packageDependencyId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AddPackageDependency(PWSTR packageDependencyId, int32 rank, AddPackageDependencyOptions options, out PACKAGEDEPENDENCY_CONTEXT__* packageDependencyContext, PWSTR* packageFullName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RemovePackageDependency(ref PACKAGEDEPENDENCY_CONTEXT__ packageDependencyContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetResolvedPackageFullNameForPackageDependency(PWSTR packageDependencyId, PWSTR* packageFullName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetIdForPackageDependencyContext(ref PACKAGEDEPENDENCY_CONTEXT__ packageDependencyContext, PWSTR* packageDependencyId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetLifecycleManagement(HANDLE processToken, out AppPolicyLifecycleManagement policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetWindowingModel(HANDLE processToken, out AppPolicyWindowingModel policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetMediaFoundationCodecLoading(HANDLE processToken, out AppPolicyMediaFoundationCodecLoading policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetClrCompat(HANDLE processToken, out AppPolicyClrCompat policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetThreadInitializationType(HANDLE processToken, out AppPolicyThreadInitializationType policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetShowDeveloperDiagnostic(HANDLE processToken, out AppPolicyShowDeveloperDiagnostic policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetProcessTerminationMethod(HANDLE processToken, out AppPolicyProcessTerminationMethod policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AppPolicyGetCreateFileAccess(HANDLE processToken, out AppPolicyCreateFileAccess policy);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreatePackageVirtualizationContext(PWSTR packageFamilyName, out PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__* context);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ActivatePackageVirtualizationContext(ref PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__ context, out uint cookie);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ReleasePackageVirtualizationContext(ref PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__ context);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void DeactivatePackageVirtualizationContext(uint cookie);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DuplicatePackageVirtualizationContext(ref PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__ sourceContext, out PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__* destContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__* GetCurrentPackageVirtualizationContext();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetProcessesInVirtualizationContext(PWSTR packageFamilyName, out uint32 count, out HANDLE* processes);
	}
}
