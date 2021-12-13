using System;

// namespace System.WinRT.Storage
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum HANDLE_OPTIONS : uint32
		{
			HO_NONE = 0,
			HO_OPEN_REQUIRING_OPLOCK = 262144,
			HO_DELETE_ON_CLOSE = 67108864,
			HO_SEQUENTIAL_SCAN = 134217728,
			HO_RANDOM_ACCESS = 268435456,
			HO_NO_BUFFERING = 536870912,
			HO_OVERLAPPED = 1073741824,
			HO_WRITE_THROUGH = 2147483648,
		}
		[AllowDuplicates]
		public enum HANDLE_ACCESS_OPTIONS : uint32
		{
			HAO_NONE = 0,
			HAO_READ_ATTRIBUTES = 128,
			HAO_READ = 1179785,
			HAO_WRITE = 1179926,
			HAO_DELETE = 65536,
		}
		[AllowDuplicates]
		public enum HANDLE_SHARING_OPTIONS : uint32
		{
			HSO_SHARE_NONE = 0,
			HSO_SHARE_READ = 1,
			HSO_SHARE_WRITE = 2,
			HSO_SHARE_DELETE = 4,
		}
		[AllowDuplicates]
		public enum HANDLE_CREATION_OPTIONS : int32
		{
			HCO_CREATE_NEW = 1,
			HCO_CREATE_ALWAYS = 2,
			HCO_OPEN_EXISTING = 3,
			HCO_OPEN_ALWAYS = 4,
			HCO_TRUNCATE_EXISTING = 5,
		}
		
		// --- COM Interfaces ---
		
		public struct IRandomAccessStreamFileAccessMode {}
		public struct IUnbufferedFileHandleOplockCallback {}
		public struct IUnbufferedFileHandleProvider {}
		public struct IOplockBreakingHandler {}
		public struct IStorageItemHandleAccess {}
		public struct IStorageFolderHandleAccess {}
		
	}
}
