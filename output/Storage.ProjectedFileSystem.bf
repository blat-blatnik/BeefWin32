using System;

// namespace Storage.ProjectedFileSystem
namespace Win32
{
	extension Win32
	{
		// --- Typedefs ---
		
		public typealias PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT = int;
		public typealias PRJ_DIR_ENTRY_BUFFER_HANDLE = int;
		
		// --- Enums ---
		
		public enum PRJ_NOTIFY_TYPES : uint32
		{
			NONE = 0,
			SUPPRESS_NOTIFICATIONS = 1,
			FILE_OPENED = 2,
			NEW_FILE_CREATED = 4,
			FILE_OVERWRITTEN = 8,
			PRE_DELETE = 16,
			PRE_RENAME = 32,
			PRE_SET_HARDLINK = 64,
			FILE_RENAMED = 128,
			HARDLINK_CREATED = 256,
			FILE_HANDLE_CLOSED_NO_MODIFICATION = 512,
			FILE_HANDLE_CLOSED_FILE_MODIFIED = 1024,
			FILE_HANDLE_CLOSED_FILE_DELETED = 2048,
			FILE_PRE_CONVERT_TO_FULL = 4096,
			USE_EXISTING_MASK = 4294967295,
		}
		public enum PRJ_NOTIFICATION : int32
		{
			FILE_OPENED = 2,
			NEW_FILE_CREATED = 4,
			FILE_OVERWRITTEN = 8,
			PRE_DELETE = 16,
			PRE_RENAME = 32,
			PRE_SET_HARDLINK = 64,
			FILE_RENAMED = 128,
			HARDLINK_CREATED = 256,
			FILE_HANDLE_CLOSED_NO_MODIFICATION = 512,
			FILE_HANDLE_CLOSED_FILE_MODIFIED = 1024,
			FILE_HANDLE_CLOSED_FILE_DELETED = 2048,
			FILE_PRE_CONVERT_TO_FULL = 4096,
		}
		public enum PRJ_EXT_INFO_TYPE : int32
		{
			TYPE_SYMLINK = 1,
		}
		public enum PRJ_STARTVIRTUALIZING_FLAGS : uint32
		{
			NONE = 0,
			USE_NEGATIVE_PATH_CACHE = 1,
		}
		public enum PRJ_PLACEHOLDER_ID : int32
		{
			ID_LENGTH = 128,
		}
		public enum PRJ_UPDATE_TYPES : uint32
		{
			NONE = 0,
			ALLOW_DIRTY_METADATA = 1,
			ALLOW_DIRTY_DATA = 2,
			ALLOW_TOMBSTONE = 4,
			RESERVED1 = 8,
			RESERVED2 = 16,
			ALLOW_READ_ONLY = 32,
			MAX_VAL = 64,
		}
		public enum PRJ_UPDATE_FAILURE_CAUSES : uint32
		{
			NONE = 0,
			DIRTY_METADATA = 1,
			DIRTY_DATA = 2,
			TOMBSTONE = 4,
			READ_ONLY = 8,
		}
		public enum PRJ_FILE_STATE : uint32
		{
			PLACEHOLDER = 1,
			HYDRATED_PLACEHOLDER = 2,
			DIRTY_PLACEHOLDER = 4,
			FULL = 8,
			TOMBSTONE = 16,
		}
		public enum PRJ_CALLBACK_DATA_FLAGS : int32
		{
			RESTART_SCAN = 1,
			RETURN_SINGLE_ENTRY = 2,
		}
		public enum PRJ_COMPLETE_COMMAND_TYPE : int32
		{
			NOTIFICATION = 1,
			ENUMERATION = 2,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT PRJ_START_DIRECTORY_ENUMERATION_CB(in PRJ_CALLBACK_DATA callbackData, in Guid enumerationId);
		public function HRESULT PRJ_GET_DIRECTORY_ENUMERATION_CB(in PRJ_CALLBACK_DATA callbackData, in Guid enumerationId, PWSTR searchExpression, PRJ_DIR_ENTRY_BUFFER_HANDLE dirEntryBufferHandle);
		public function HRESULT PRJ_END_DIRECTORY_ENUMERATION_CB(in PRJ_CALLBACK_DATA callbackData, in Guid enumerationId);
		public function HRESULT PRJ_GET_PLACEHOLDER_INFO_CB(in PRJ_CALLBACK_DATA callbackData);
		public function HRESULT PRJ_GET_FILE_DATA_CB(in PRJ_CALLBACK_DATA callbackData, uint64 byteOffset, uint32 length);
		public function HRESULT PRJ_QUERY_FILE_NAME_CB(in PRJ_CALLBACK_DATA callbackData);
		public function HRESULT PRJ_NOTIFICATION_CB(in PRJ_CALLBACK_DATA callbackData, BOOLEAN isDirectory, PRJ_NOTIFICATION notification, PWSTR destinationFileName, out PRJ_NOTIFICATION_PARAMETERS operationParameters);
		public function void PRJ_CANCEL_COMMAND_CB(in PRJ_CALLBACK_DATA callbackData);
		
		// --- Structs ---
		
		[CRepr]
		public struct PRJ_EXTENDED_INFO
		{
			public PRJ_EXT_INFO_TYPE InfoType;
			public uint32 NextInfoOffset;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Symlink_e__Struct Symlink;
				
				[CRepr]
				public struct _Symlink_e__Struct
				{
					public PWSTR TargetName;
				}
			}
		}
		[CRepr]
		public struct PRJ_NOTIFICATION_MAPPING
		{
			public PRJ_NOTIFY_TYPES NotificationBitMask;
			public PWSTR NotificationRoot;
		}
		[CRepr]
		public struct PRJ_STARTVIRTUALIZING_OPTIONS
		{
			public PRJ_STARTVIRTUALIZING_FLAGS Flags;
			public uint32 PoolThreadCount;
			public uint32 ConcurrentThreadCount;
			public PRJ_NOTIFICATION_MAPPING* NotificationMappings;
			public uint32 NotificationMappingsCount;
		}
		[CRepr]
		public struct PRJ_VIRTUALIZATION_INSTANCE_INFO
		{
			public Guid InstanceID;
			public uint32 WriteAlignment;
		}
		[CRepr]
		public struct PRJ_PLACEHOLDER_VERSION_INFO
		{
			public uint8[128] ProviderID;
			public uint8[128] ContentID;
		}
		[CRepr]
		public struct PRJ_FILE_BASIC_INFO
		{
			public BOOLEAN IsDirectory;
			public int64 FileSize;
			public LARGE_INTEGER CreationTime;
			public LARGE_INTEGER LastAccessTime;
			public LARGE_INTEGER LastWriteTime;
			public LARGE_INTEGER ChangeTime;
			public uint32 FileAttributes;
		}
		[CRepr]
		public struct PRJ_PLACEHOLDER_INFO
		{
			public PRJ_FILE_BASIC_INFO FileBasicInfo;
			public _EaInformation_e__Struct EaInformation;
			public _SecurityInformation_e__Struct SecurityInformation;
			public _StreamsInformation_e__Struct StreamsInformation;
			public PRJ_PLACEHOLDER_VERSION_INFO VersionInfo;
			public uint8[0] VariableData;
			
			[CRepr]
			public struct _StreamsInformation_e__Struct
			{
				public uint32 StreamsInfoBufferSize;
				public uint32 OffsetToFirstStreamInfo;
			}
			[CRepr]
			public struct _EaInformation_e__Struct
			{
				public uint32 EaBufferSize;
				public uint32 OffsetToFirstEa;
			}
			[CRepr]
			public struct _SecurityInformation_e__Struct
			{
				public uint32 SecurityBufferSize;
				public uint32 OffsetToSecurityDescriptor;
			}
		}
		[CRepr]
		public struct PRJ_CALLBACK_DATA
		{
			public uint32 Size;
			public PRJ_CALLBACK_DATA_FLAGS Flags;
			public PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT NamespaceVirtualizationContext;
			public int32 CommandId;
			public Guid FileId;
			public Guid DataStreamId;
			public PWSTR FilePathName;
			public PRJ_PLACEHOLDER_VERSION_INFO* VersionInfo;
			public uint32 TriggeringProcessId;
			public PWSTR TriggeringProcessImageFileName;
			public void* InstanceContext;
		}
		[CRepr, Union]
		public struct PRJ_NOTIFICATION_PARAMETERS
		{
			public _PostCreate_e__Struct PostCreate;
			public _FileRenamed_e__Struct FileRenamed;
			public _FileDeletedOnHandleClose_e__Struct FileDeletedOnHandleClose;
			
			[CRepr]
			public struct _FileRenamed_e__Struct
			{
				public PRJ_NOTIFY_TYPES NotificationMask;
			}
			[CRepr]
			public struct _FileDeletedOnHandleClose_e__Struct
			{
				public BOOLEAN IsFileModified;
			}
			[CRepr]
			public struct _PostCreate_e__Struct
			{
				public PRJ_NOTIFY_TYPES NotificationMask;
			}
		}
		[CRepr]
		public struct PRJ_CALLBACKS
		{
			public PRJ_START_DIRECTORY_ENUMERATION_CB StartDirectoryEnumerationCallback;
			public PRJ_END_DIRECTORY_ENUMERATION_CB EndDirectoryEnumerationCallback;
			public PRJ_GET_DIRECTORY_ENUMERATION_CB GetDirectoryEnumerationCallback;
			public PRJ_GET_PLACEHOLDER_INFO_CB GetPlaceholderInfoCallback;
			public PRJ_GET_FILE_DATA_CB GetFileDataCallback;
			public PRJ_QUERY_FILE_NAME_CB QueryFileNameCallback;
			public PRJ_NOTIFICATION_CB NotificationCallback;
			public PRJ_CANCEL_COMMAND_CB CancelCommandCallback;
		}
		[CRepr]
		public struct PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS
		{
			public PRJ_COMPLETE_COMMAND_TYPE CommandType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Notification_e__Struct Notification;
				public _Enumeration_e__Struct Enumeration;
				
				[CRepr]
				public struct _Enumeration_e__Struct
				{
					public PRJ_DIR_ENTRY_BUFFER_HANDLE DirEntryBufferHandle;
				}
				[CRepr]
				public struct _Notification_e__Struct
				{
					public PRJ_NOTIFY_TYPES NotificationMask;
				}
			}
		}
		
		// --- Functions ---
		
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrjStartVirtualizing(PWSTR virtualizationRootPath, in PRJ_CALLBACKS callbacks, void* instanceContext, PRJ_STARTVIRTUALIZING_OPTIONS* options, out PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT namespaceVirtualizationContext);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PrjStopVirtualizing(PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT namespaceVirtualizationContext);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrjClearNegativePathCache(PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT namespaceVirtualizationContext, uint32* totalEntryNumber);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrjGetVirtualizationInstanceInfo(PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT namespaceVirtualizationContext, out PRJ_VIRTUALIZATION_INSTANCE_INFO virtualizationInstanceInfo);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrjMarkDirectoryAsPlaceholder(PWSTR rootPathName, PWSTR targetPathName, PRJ_PLACEHOLDER_VERSION_INFO* versionInfo, in Guid virtualizationInstanceID);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrjWritePlaceholderInfo(PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT namespaceVirtualizationContext, PWSTR destinationFileName, in PRJ_PLACEHOLDER_INFO placeholderInfo, uint32 placeholderInfoSize);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrjWritePlaceholderInfo2(PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT namespaceVirtualizationContext, PWSTR destinationFileName, in PRJ_PLACEHOLDER_INFO placeholderInfo, uint32 placeholderInfoSize, PRJ_EXTENDED_INFO* ExtendedInfo);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrjUpdateFileIfNeeded(PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT namespaceVirtualizationContext, PWSTR destinationFileName, in PRJ_PLACEHOLDER_INFO placeholderInfo, uint32 placeholderInfoSize, PRJ_UPDATE_TYPES updateFlags, PRJ_UPDATE_FAILURE_CAUSES* failureReason);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrjDeleteFile(PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT namespaceVirtualizationContext, PWSTR destinationFileName, PRJ_UPDATE_TYPES updateFlags, PRJ_UPDATE_FAILURE_CAUSES* failureReason);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrjWriteFileData(PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT namespaceVirtualizationContext, in Guid dataStreamId, void* buffer, uint64 byteOffset, uint32 length);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrjGetOnDiskFileState(PWSTR destinationFileName, out PRJ_FILE_STATE fileState);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* PrjAllocateAlignedBuffer(PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT namespaceVirtualizationContext, uint size);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PrjFreeAlignedBuffer(void* buffer);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrjCompleteCommand(PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT namespaceVirtualizationContext, int32 commandId, HRESULT completionResult, PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS* extendedParameters);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrjFillDirEntryBuffer(PWSTR fileName, PRJ_FILE_BASIC_INFO* fileBasicInfo, PRJ_DIR_ENTRY_BUFFER_HANDLE dirEntryBufferHandle);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrjFillDirEntryBuffer2(PRJ_DIR_ENTRY_BUFFER_HANDLE dirEntryBufferHandle, PWSTR fileName, PRJ_FILE_BASIC_INFO* fileBasicInfo, PRJ_EXTENDED_INFO* extendedInfo);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN PrjFileNameMatch(PWSTR fileNameToCheck, PWSTR pattern);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PrjFileNameCompare(PWSTR fileName1, PWSTR fileName2);
		[Import("projectedfslib.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN PrjDoesNameContainWildCards(PWSTR fileName);
	}
}
