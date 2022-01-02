using System;

// namespace Storage.Vhd
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid VIRTUAL_STORAGE_TYPE_VENDOR_UNKNOWN = .(0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		public const Guid VIRTUAL_STORAGE_TYPE_VENDOR_MICROSOFT = .(0xec984aec, 0xa0f9, 0x47e9, 0x90, 0x1f, 0x71, 0x41, 0x5a, 0x66, 0x34, 0x5b);
		public const uint32 VIRTUAL_STORAGE_TYPE_DEVICE_UNKNOWN = 0;
		public const uint32 VIRTUAL_STORAGE_TYPE_DEVICE_ISO = 1;
		public const uint32 VIRTUAL_STORAGE_TYPE_DEVICE_VHD = 2;
		public const uint32 VIRTUAL_STORAGE_TYPE_DEVICE_VHDX = 3;
		public const uint32 VIRTUAL_STORAGE_TYPE_DEVICE_VHDSET = 4;
		public const uint32 OPEN_VIRTUAL_DISK_RW_DEPTH_DEFAULT = 1;
		public const uint32 CREATE_VIRTUAL_DISK_PARAMETERS_DEFAULT_BLOCK_SIZE = 0;
		public const uint32 CREATE_VIRTUAL_DISK_PARAMETERS_DEFAULT_SECTOR_SIZE = 0;
		public const uint32 VIRTUAL_DISK_MAXIMUM_CHANGE_TRACKING_ID_LENGTH = 256;
		public const uint32 MERGE_VIRTUAL_DISK_DEFAULT_MERGE_DEPTH = 1;
		
		// --- Enums ---
		
		public enum OPEN_VIRTUAL_DISK_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
			_2 = 2,
			_3 = 3,
		}
		public enum VIRTUAL_DISK_ACCESS_MASK : uint32
		{
			NONE = 0,
			ATTACH_RO = 65536,
			ATTACH_RW = 131072,
			DETACH = 262144,
			GET_INFO = 524288,
			CREATE = 1048576,
			METAOPS = 2097152,
			READ = 851968,
			ALL = 4128768,
			WRITABLE = 3276800,
		}
		public enum OPEN_VIRTUAL_DISK_FLAG : uint32
		{
			NONE = 0,
			NO_PARENTS = 1,
			BLANK_FILE = 2,
			BOOT_DRIVE = 4,
			CACHED_IO = 8,
			CUSTOM_DIFF_CHAIN = 16,
			PARENT_CACHED_IO = 32,
			VHDSET_FILE_ONLY = 64,
			IGNORE_RELATIVE_PARENT_LOCATOR = 128,
			NO_WRITE_HARDENING = 256,
			SUPPORT_COMPRESSED_VOLUMES = 512,
			SUPPORT_SPARSE_FILES_ANY_FS = 1024,
			SUPPORT_ENCRYPTED_FILES = 2048,
		}
		public enum CREATE_VIRTUAL_DISK_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
			_2 = 2,
			_3 = 3,
			_4 = 4,
		}
		public enum CREATE_VIRTUAL_DISK_FLAG : uint32
		{
			NONE = 0,
			FULL_PHYSICAL_ALLOCATION = 1,
			PREVENT_WRITES_TO_SOURCE_DISK = 2,
			DO_NOT_COPY_METADATA_FROM_PARENT = 4,
			CREATE_BACKING_STORAGE = 8,
			USE_CHANGE_TRACKING_SOURCE_LIMIT = 16,
			PRESERVE_PARENT_CHANGE_TRACKING_STATE = 32,
			VHD_SET_USE_ORIGINAL_BACKING_STORAGE = 64,
			SPARSE_FILE = 128,
			PMEM_COMPATIBLE = 256,
			SUPPORT_COMPRESSED_VOLUMES = 512,
			SUPPORT_SPARSE_FILES_ANY_FS = 1024,
		}
		public enum ATTACH_VIRTUAL_DISK_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
			_2 = 2,
		}
		public enum ATTACH_VIRTUAL_DISK_FLAG : uint32
		{
			NONE = 0,
			READ_ONLY = 1,
			NO_DRIVE_LETTER = 2,
			PERMANENT_LIFETIME = 4,
			NO_LOCAL_HOST = 8,
			NO_SECURITY_DESCRIPTOR = 16,
			BYPASS_DEFAULT_ENCRYPTION_POLICY = 32,
			NON_PNP = 64,
			RESTRICTED_RANGE = 128,
			SINGLE_PARTITION = 256,
			REGISTER_VOLUME = 512,
		}
		public enum DETACH_VIRTUAL_DISK_FLAG : uint32
		{
			FLAG_NONE = 0,
		}
		public enum DEPENDENT_DISK_FLAG : uint32
		{
			NONE = 0,
			MULT_BACKING_FILES = 1,
			FULLY_ALLOCATED = 2,
			READ_ONLY = 4,
			REMOTE = 8,
			SYSTEM_VOLUME = 16,
			SYSTEM_VOLUME_PARENT = 32,
			REMOVABLE = 64,
			NO_DRIVE_LETTER = 128,
			PARENT = 256,
			NO_HOST_DISK = 512,
			PERMANENT_LIFETIME = 1024,
			SUPPORT_COMPRESSED_VOLUMES = 2048,
			ALWAYS_ALLOW_SPARSE = 4096,
			SUPPORT_ENCRYPTED_FILES = 8192,
		}
		public enum STORAGE_DEPENDENCY_INFO_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
			_2 = 2,
		}
		public enum GET_STORAGE_DEPENDENCY_FLAG : uint32
		{
			NONE = 0,
			HOST_VOLUMES = 1,
			DISK_HANDLE = 2,
		}
		public enum GET_VIRTUAL_DISK_INFO_VERSION : int32
		{
			UNSPECIFIED = 0,
			SIZE = 1,
			IDENTIFIER = 2,
			PARENT_LOCATION = 3,
			PARENT_IDENTIFIER = 4,
			PARENT_TIMESTAMP = 5,
			VIRTUAL_STORAGE_TYPE = 6,
			PROVIDER_SUBTYPE = 7,
			IS_4K_ALIGNED = 8,
			PHYSICAL_DISK = 9,
			VHD_PHYSICAL_SECTOR_SIZE = 10,
			SMALLEST_SAFE_VIRTUAL_SIZE = 11,
			FRAGMENTATION = 12,
			IS_LOADED = 13,
			VIRTUAL_DISK_ID = 14,
			CHANGE_TRACKING_STATE = 15,
		}
		public enum SET_VIRTUAL_DISK_INFO_VERSION : int32
		{
			UNSPECIFIED = 0,
			PARENT_PATH = 1,
			IDENTIFIER = 2,
			PARENT_PATH_WITH_DEPTH = 3,
			PHYSICAL_SECTOR_SIZE = 4,
			VIRTUAL_DISK_ID = 5,
			CHANGE_TRACKING_STATE = 6,
			PARENT_LOCATOR = 7,
		}
		public enum COMPACT_VIRTUAL_DISK_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
		}
		public enum COMPACT_VIRTUAL_DISK_FLAG : uint32
		{
			NONE = 0,
			NO_ZERO_SCAN = 1,
			NO_BLOCK_MOVES = 2,
		}
		public enum MERGE_VIRTUAL_DISK_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
			_2 = 2,
		}
		public enum MERGE_VIRTUAL_DISK_FLAG : uint32
		{
			FLAG_NONE = 0,
		}
		public enum EXPAND_VIRTUAL_DISK_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
		}
		public enum EXPAND_VIRTUAL_DISK_FLAG : uint32
		{
			NONE = 0,
			NOTIFY_CHANGE = 1,
		}
		public enum RESIZE_VIRTUAL_DISK_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
		}
		public enum RESIZE_VIRTUAL_DISK_FLAG : uint32
		{
			NONE = 0,
			ALLOW_UNSAFE_VIRTUAL_SIZE = 1,
			RESIZE_TO_SMALLEST_SAFE_VIRTUAL_SIZE = 2,
		}
		public enum MIRROR_VIRTUAL_DISK_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
		}
		public enum MIRROR_VIRTUAL_DISK_FLAG : uint32
		{
			NONE = 0,
			EXISTING_FILE = 1,
			SKIP_MIRROR_ACTIVATION = 2,
			ENABLE_SMB_COMPRESSION = 4,
			IS_LIVE_MIGRATION = 8,
		}
		public enum QUERY_CHANGES_VIRTUAL_DISK_FLAG : uint32
		{
			FLAG_NONE = 0,
		}
		public enum TAKE_SNAPSHOT_VHDSET_FLAG : uint32
		{
			NONE = 0,
			WRITEABLE = 1,
		}
		public enum TAKE_SNAPSHOT_VHDSET_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
		}
		public enum DELETE_SNAPSHOT_VHDSET_FLAG : uint32
		{
			NONE = 0,
			PERSIST_RCT = 1,
		}
		public enum DELETE_SNAPSHOT_VHDSET_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
		}
		public enum MODIFY_VHDSET_VERSION : int32
		{
			UNSPECIFIED = 0,
			SNAPSHOT_PATH = 1,
			REMOVE_SNAPSHOT = 2,
			DEFAULT_SNAPSHOT_PATH = 3,
		}
		public enum MODIFY_VHDSET_FLAG : uint32
		{
			NONE = 0,
			WRITEABLE_SNAPSHOT = 1,
		}
		public enum APPLY_SNAPSHOT_VHDSET_FLAG : uint32
		{
			NONE = 0,
			WRITEABLE = 1,
		}
		public enum APPLY_SNAPSHOT_VHDSET_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
		}
		public enum RAW_SCSI_VIRTUAL_DISK_FLAG : uint32
		{
			FLAG_NONE = 0,
		}
		public enum RAW_SCSI_VIRTUAL_DISK_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
		}
		public enum FORK_VIRTUAL_DISK_VERSION : int32
		{
			UNSPECIFIED = 0,
			_1 = 1,
		}
		public enum FORK_VIRTUAL_DISK_FLAG : uint32
		{
			NONE = 0,
			EXISTING_FILE = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct VIRTUAL_STORAGE_TYPE
		{
			public uint32 DeviceId;
			public Guid VendorId;
		}
		[CRepr]
		public struct OPEN_VIRTUAL_DISK_PARAMETERS
		{
			public OPEN_VIRTUAL_DISK_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				public _Version2_e__Struct Version2;
				public _Version3_e__Struct Version3;
				
				[CRepr]
				public struct _Version3_e__Struct
				{
					public BOOL GetInfoOnly;
					public BOOL ReadOnly;
					public Guid ResiliencyGuid;
					public Guid SnapshotId;
				}
				[CRepr]
				public struct _Version1_e__Struct
				{
					public uint32 RWDepth;
				}
				[CRepr]
				public struct _Version2_e__Struct
				{
					public BOOL GetInfoOnly;
					public BOOL ReadOnly;
					public Guid ResiliencyGuid;
				}
			}
		}
		[CRepr]
		public struct CREATE_VIRTUAL_DISK_PARAMETERS
		{
			public CREATE_VIRTUAL_DISK_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				public _Version2_e__Struct Version2;
				public _Version3_e__Struct Version3;
				public _Version4_e__Struct Version4;
				
				[CRepr]
				public struct _Version4_e__Struct
				{
					public Guid UniqueId;
					public uint64 MaximumSize;
					public uint32 BlockSizeInBytes;
					public uint32 SectorSizeInBytes;
					public uint32 PhysicalSectorSizeInBytes;
					public PWSTR ParentPath;
					public PWSTR SourcePath;
					public OPEN_VIRTUAL_DISK_FLAG OpenFlags;
					public VIRTUAL_STORAGE_TYPE ParentVirtualStorageType;
					public VIRTUAL_STORAGE_TYPE SourceVirtualStorageType;
					public Guid ResiliencyGuid;
					public PWSTR SourceLimitPath;
					public VIRTUAL_STORAGE_TYPE BackingStorageType;
					public Guid PmemAddressAbstractionType;
					public uint64 DataAlignment;
				}
				[CRepr]
				public struct _Version2_e__Struct
				{
					public Guid UniqueId;
					public uint64 MaximumSize;
					public uint32 BlockSizeInBytes;
					public uint32 SectorSizeInBytes;
					public uint32 PhysicalSectorSizeInBytes;
					public PWSTR ParentPath;
					public PWSTR SourcePath;
					public OPEN_VIRTUAL_DISK_FLAG OpenFlags;
					public VIRTUAL_STORAGE_TYPE ParentVirtualStorageType;
					public VIRTUAL_STORAGE_TYPE SourceVirtualStorageType;
					public Guid ResiliencyGuid;
				}
				[CRepr]
				public struct _Version3_e__Struct
				{
					public Guid UniqueId;
					public uint64 MaximumSize;
					public uint32 BlockSizeInBytes;
					public uint32 SectorSizeInBytes;
					public uint32 PhysicalSectorSizeInBytes;
					public PWSTR ParentPath;
					public PWSTR SourcePath;
					public OPEN_VIRTUAL_DISK_FLAG OpenFlags;
					public VIRTUAL_STORAGE_TYPE ParentVirtualStorageType;
					public VIRTUAL_STORAGE_TYPE SourceVirtualStorageType;
					public Guid ResiliencyGuid;
					public PWSTR SourceLimitPath;
					public VIRTUAL_STORAGE_TYPE BackingStorageType;
				}
				[CRepr]
				public struct _Version1_e__Struct
				{
					public Guid UniqueId;
					public uint64 MaximumSize;
					public uint32 BlockSizeInBytes;
					public uint32 SectorSizeInBytes;
					public PWSTR ParentPath;
					public PWSTR SourcePath;
				}
			}
		}
		[CRepr]
		public struct ATTACH_VIRTUAL_DISK_PARAMETERS
		{
			public ATTACH_VIRTUAL_DISK_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				public _Version2_e__Struct Version2;
				
				[CRepr]
				public struct _Version2_e__Struct
				{
					public uint64 RestrictedOffset;
					public uint64 RestrictedLength;
				}
				[CRepr]
				public struct _Version1_e__Struct
				{
					public uint32 Reserved;
				}
			}
		}
		[CRepr]
		public struct STORAGE_DEPENDENCY_INFO_TYPE_1
		{
			public DEPENDENT_DISK_FLAG DependencyTypeFlags;
			public uint32 ProviderSpecificFlags;
			public VIRTUAL_STORAGE_TYPE VirtualStorageType;
		}
		[CRepr]
		public struct STORAGE_DEPENDENCY_INFO_TYPE_2
		{
			public DEPENDENT_DISK_FLAG DependencyTypeFlags;
			public uint32 ProviderSpecificFlags;
			public VIRTUAL_STORAGE_TYPE VirtualStorageType;
			public uint32 AncestorLevel;
			public PWSTR DependencyDeviceName;
			public PWSTR HostVolumeName;
			public PWSTR DependentVolumeName;
			public PWSTR DependentVolumeRelativePath;
		}
		[CRepr]
		public struct STORAGE_DEPENDENCY_INFO
		{
			public STORAGE_DEPENDENCY_INFO_VERSION Version;
			public uint32 NumberEntries;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public STORAGE_DEPENDENCY_INFO_TYPE_1[0] Version1Entries;
				public STORAGE_DEPENDENCY_INFO_TYPE_2[0] Version2Entries;
			}
		}
		[CRepr]
		public struct GET_VIRTUAL_DISK_INFO
		{
			public GET_VIRTUAL_DISK_INFO_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Size_e__Struct Size;
				public Guid Identifier;
				public _ParentLocation_e__Struct ParentLocation;
				public Guid ParentIdentifier;
				public uint32 ParentTimestamp;
				public VIRTUAL_STORAGE_TYPE VirtualStorageType;
				public uint32 ProviderSubtype;
				public BOOL Is4kAligned;
				public BOOL IsLoaded;
				public _PhysicalDisk_e__Struct PhysicalDisk;
				public uint32 VhdPhysicalSectorSize;
				public uint64 SmallestSafeVirtualSize;
				public uint32 FragmentationPercentage;
				public Guid VirtualDiskId;
				public _ChangeTrackingState_e__Struct ChangeTrackingState;
				
				[CRepr]
				public struct _PhysicalDisk_e__Struct
				{
					public uint32 LogicalSectorSize;
					public uint32 PhysicalSectorSize;
					public BOOL IsRemote;
				}
				[CRepr]
				public struct _Size_e__Struct
				{
					public uint64 VirtualSize;
					public uint64 PhysicalSize;
					public uint32 BlockSize;
					public uint32 SectorSize;
				}
				[CRepr]
				public struct _ChangeTrackingState_e__Struct
				{
					public BOOL Enabled;
					public BOOL NewerChanges;
					public char16[0] MostRecentId;
				}
				[CRepr]
				public struct _ParentLocation_e__Struct
				{
					public BOOL ParentResolved;
					public char16[0] ParentLocationBuffer;
				}
			}
		}
		[CRepr]
		public struct SET_VIRTUAL_DISK_INFO
		{
			public SET_VIRTUAL_DISK_INFO_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PWSTR ParentFilePath;
				public Guid UniqueIdentifier;
				public _ParentPathWithDepthInfo_e__Struct ParentPathWithDepthInfo;
				public uint32 VhdPhysicalSectorSize;
				public Guid VirtualDiskId;
				public BOOL ChangeTrackingEnabled;
				public _ParentLocator_e__Struct ParentLocator;
				
				[CRepr]
				public struct _ParentPathWithDepthInfo_e__Struct
				{
					public uint32 ChildDepth;
					public PWSTR ParentFilePath;
				}
				[CRepr]
				public struct _ParentLocator_e__Struct
				{
					public Guid LinkageId;
					public PWSTR ParentFilePath;
				}
			}
		}
		[CRepr]
		public struct VIRTUAL_DISK_PROGRESS
		{
			public uint32 OperationStatus;
			public uint64 CurrentValue;
			public uint64 CompletionValue;
		}
		[CRepr]
		public struct COMPACT_VIRTUAL_DISK_PARAMETERS
		{
			public COMPACT_VIRTUAL_DISK_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				
				[CRepr]
				public struct _Version1_e__Struct
				{
					public uint32 Reserved;
				}
			}
		}
		[CRepr]
		public struct MERGE_VIRTUAL_DISK_PARAMETERS
		{
			public MERGE_VIRTUAL_DISK_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				public _Version2_e__Struct Version2;
				
				[CRepr]
				public struct _Version2_e__Struct
				{
					public uint32 MergeSourceDepth;
					public uint32 MergeTargetDepth;
				}
				[CRepr]
				public struct _Version1_e__Struct
				{
					public uint32 MergeDepth;
				}
			}
		}
		[CRepr]
		public struct EXPAND_VIRTUAL_DISK_PARAMETERS
		{
			public EXPAND_VIRTUAL_DISK_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				
				[CRepr]
				public struct _Version1_e__Struct
				{
					public uint64 NewSize;
				}
			}
		}
		[CRepr]
		public struct RESIZE_VIRTUAL_DISK_PARAMETERS
		{
			public RESIZE_VIRTUAL_DISK_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				
				[CRepr]
				public struct _Version1_e__Struct
				{
					public uint64 NewSize;
				}
			}
		}
		[CRepr]
		public struct MIRROR_VIRTUAL_DISK_PARAMETERS
		{
			public MIRROR_VIRTUAL_DISK_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				
				[CRepr]
				public struct _Version1_e__Struct
				{
					public PWSTR MirrorVirtualDiskPath;
				}
			}
		}
		[CRepr]
		public struct QUERY_CHANGES_VIRTUAL_DISK_RANGE
		{
			public uint64 ByteOffset;
			public uint64 ByteLength;
			public uint64 Reserved;
		}
		[CRepr]
		public struct TAKE_SNAPSHOT_VHDSET_PARAMETERS
		{
			public TAKE_SNAPSHOT_VHDSET_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				
				[CRepr]
				public struct _Version1_e__Struct
				{
					public Guid SnapshotId;
				}
			}
		}
		[CRepr]
		public struct DELETE_SNAPSHOT_VHDSET_PARAMETERS
		{
			public DELETE_SNAPSHOT_VHDSET_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				
				[CRepr]
				public struct _Version1_e__Struct
				{
					public Guid SnapshotId;
				}
			}
		}
		[CRepr]
		public struct MODIFY_VHDSET_PARAMETERS
		{
			public MODIFY_VHDSET_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _SnapshotPath_e__Struct SnapshotPath;
				public Guid SnapshotId;
				public PWSTR DefaultFilePath;
				
				[CRepr]
				public struct _SnapshotPath_e__Struct
				{
					public Guid SnapshotId;
					public PWSTR SnapshotFilePath;
				}
			}
		}
		[CRepr]
		public struct APPLY_SNAPSHOT_VHDSET_PARAMETERS
		{
			public APPLY_SNAPSHOT_VHDSET_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				
				[CRepr]
				public struct _Version1_e__Struct
				{
					public Guid SnapshotId;
					public Guid LeafSnapshotId;
				}
			}
		}
		[CRepr]
		public struct RAW_SCSI_VIRTUAL_DISK_PARAMETERS
		{
			public RAW_SCSI_VIRTUAL_DISK_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				
				[CRepr]
				public struct _Version1_e__Struct
				{
					public BOOL RSVDHandle;
					public uint8 DataIn;
					public uint8 CdbLength;
					public uint8 SenseInfoLength;
					public uint32 SrbFlags;
					public uint32 DataTransferLength;
					public void* DataBuffer;
					public uint8* SenseInfo;
					public uint8* Cdb;
				}
			}
		}
		[CRepr]
		public struct RAW_SCSI_VIRTUAL_DISK_RESPONSE
		{
			public RAW_SCSI_VIRTUAL_DISK_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				
				[CRepr]
				public struct _Version1_e__Struct
				{
					public uint8 ScsiStatus;
					public uint8 SenseInfoLength;
					public uint32 DataTransferLength;
				}
			}
		}
		[CRepr]
		public struct FORK_VIRTUAL_DISK_PARAMETERS
		{
			public FORK_VIRTUAL_DISK_VERSION Version;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Version1_e__Struct Version1;
				
				[CRepr]
				public struct _Version1_e__Struct
				{
					public PWSTR ForkedVirtualDiskPath;
				}
			}
		}
		
		// --- Functions ---
		
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OpenVirtualDisk(ref VIRTUAL_STORAGE_TYPE VirtualStorageType, PWSTR Path, VIRTUAL_DISK_ACCESS_MASK VirtualDiskAccessMask, OPEN_VIRTUAL_DISK_FLAG Flags, OPEN_VIRTUAL_DISK_PARAMETERS* Parameters, out HANDLE Handle);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CreateVirtualDisk(ref VIRTUAL_STORAGE_TYPE VirtualStorageType, PWSTR Path, VIRTUAL_DISK_ACCESS_MASK VirtualDiskAccessMask, SECURITY_DESCRIPTOR* SecurityDescriptor, CREATE_VIRTUAL_DISK_FLAG Flags, uint32 ProviderSpecificFlags, ref CREATE_VIRTUAL_DISK_PARAMETERS Parameters, OVERLAPPED* Overlapped, out HANDLE Handle);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 AttachVirtualDisk(HANDLE VirtualDiskHandle, SECURITY_DESCRIPTOR* SecurityDescriptor, ATTACH_VIRTUAL_DISK_FLAG Flags, uint32 ProviderSpecificFlags, ATTACH_VIRTUAL_DISK_PARAMETERS* Parameters, OVERLAPPED* Overlapped);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DetachVirtualDisk(HANDLE VirtualDiskHandle, DETACH_VIRTUAL_DISK_FLAG Flags, uint32 ProviderSpecificFlags);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetVirtualDiskPhysicalPath(HANDLE VirtualDiskHandle, out uint32 DiskPathSizeInBytes, PWSTR DiskPath);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetAllAttachedVirtualDiskPhysicalPaths(out uint32 PathsBufferSizeInBytes, PWSTR PathsBuffer);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetStorageDependencyInformation(HANDLE ObjectHandle, GET_STORAGE_DEPENDENCY_FLAG Flags, uint32 StorageDependencyInfoSize, out STORAGE_DEPENDENCY_INFO StorageDependencyInfo, uint32* SizeUsed);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetVirtualDiskInformation(HANDLE VirtualDiskHandle, out uint32 VirtualDiskInfoSize, out GET_VIRTUAL_DISK_INFO VirtualDiskInfo, uint32* SizeUsed);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetVirtualDiskInformation(HANDLE VirtualDiskHandle, ref SET_VIRTUAL_DISK_INFO VirtualDiskInfo);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumerateVirtualDiskMetadata(HANDLE VirtualDiskHandle, out uint32 NumberOfItems, Guid* Items);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetVirtualDiskMetadata(HANDLE VirtualDiskHandle, in Guid Item, out uint32 MetaDataSize, void* MetaData);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetVirtualDiskMetadata(HANDLE VirtualDiskHandle, in Guid Item, uint32 MetaDataSize, void* MetaData);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeleteVirtualDiskMetadata(HANDLE VirtualDiskHandle, in Guid Item);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetVirtualDiskOperationProgress(HANDLE VirtualDiskHandle, ref OVERLAPPED Overlapped, out VIRTUAL_DISK_PROGRESS Progress);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CompactVirtualDisk(HANDLE VirtualDiskHandle, COMPACT_VIRTUAL_DISK_FLAG Flags, COMPACT_VIRTUAL_DISK_PARAMETERS* Parameters, OVERLAPPED* Overlapped);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MergeVirtualDisk(HANDLE VirtualDiskHandle, MERGE_VIRTUAL_DISK_FLAG Flags, ref MERGE_VIRTUAL_DISK_PARAMETERS Parameters, OVERLAPPED* Overlapped);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ExpandVirtualDisk(HANDLE VirtualDiskHandle, EXPAND_VIRTUAL_DISK_FLAG Flags, ref EXPAND_VIRTUAL_DISK_PARAMETERS Parameters, OVERLAPPED* Overlapped);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ResizeVirtualDisk(HANDLE VirtualDiskHandle, RESIZE_VIRTUAL_DISK_FLAG Flags, ref RESIZE_VIRTUAL_DISK_PARAMETERS Parameters, OVERLAPPED* Overlapped);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MirrorVirtualDisk(HANDLE VirtualDiskHandle, MIRROR_VIRTUAL_DISK_FLAG Flags, ref MIRROR_VIRTUAL_DISK_PARAMETERS Parameters, ref OVERLAPPED Overlapped);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 BreakMirrorVirtualDisk(HANDLE VirtualDiskHandle);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 AddVirtualDiskParent(HANDLE VirtualDiskHandle, PWSTR ParentPath);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 QueryChangesVirtualDisk(HANDLE VirtualDiskHandle, PWSTR ChangeTrackingId, uint64 ByteOffset, uint64 ByteLength, QUERY_CHANGES_VIRTUAL_DISK_FLAG Flags, QUERY_CHANGES_VIRTUAL_DISK_RANGE* Ranges, out uint32 RangeCount, out uint64 ProcessedLength);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 TakeSnapshotVhdSet(HANDLE VirtualDiskHandle, in TAKE_SNAPSHOT_VHDSET_PARAMETERS Parameters, TAKE_SNAPSHOT_VHDSET_FLAG Flags);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeleteSnapshotVhdSet(HANDLE VirtualDiskHandle, in DELETE_SNAPSHOT_VHDSET_PARAMETERS Parameters, DELETE_SNAPSHOT_VHDSET_FLAG Flags);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ModifyVhdSet(HANDLE VirtualDiskHandle, in MODIFY_VHDSET_PARAMETERS Parameters, MODIFY_VHDSET_FLAG Flags);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ApplySnapshotVhdSet(HANDLE VirtualDiskHandle, in APPLY_SNAPSHOT_VHDSET_PARAMETERS Parameters, APPLY_SNAPSHOT_VHDSET_FLAG Flags);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RawSCSIVirtualDisk(HANDLE VirtualDiskHandle, in RAW_SCSI_VIRTUAL_DISK_PARAMETERS Parameters, RAW_SCSI_VIRTUAL_DISK_FLAG Flags, out RAW_SCSI_VIRTUAL_DISK_RESPONSE Response);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ForkVirtualDisk(HANDLE VirtualDiskHandle, FORK_VIRTUAL_DISK_FLAG Flags, in FORK_VIRTUAL_DISK_PARAMETERS Parameters, out OVERLAPPED Overlapped);
		[Import("virtdisk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CompleteForkVirtualDisk(HANDLE VirtualDiskHandle);
	}
}
