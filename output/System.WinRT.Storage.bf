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
		
		[CRepr]
		public struct IRandomAccessStreamFileAccessMode : IUnknown
		{
			public const new Guid IID = .(0x332e5848, 0x2e15, 0x458e, 0x85, 0xc4, 0xc9, 0x11, 0xc0, 0xc3, 0xd6, 0xf4);
			
			public function HRESULT(IRandomAccessStreamFileAccessMode *self, uint32* fileAccessMode) GetMode;
		}
		[CRepr]
		public struct IUnbufferedFileHandleOplockCallback : IUnknown
		{
			public const new Guid IID = .(0xd1019a0e, 0x6243, 0x4329, 0x84, 0x97, 0x2e, 0x75, 0x89, 0x4d, 0x77, 0x10);
			
			public function HRESULT(IUnbufferedFileHandleOplockCallback *self) OnBrokenCallback;
		}
		[CRepr]
		public struct IUnbufferedFileHandleProvider : IUnknown
		{
			public const new Guid IID = .(0xa65c9109, 0x42ab, 0x4b94, 0xa7, 0xb1, 0xdd, 0x2e, 0x4e, 0x68, 0x51, 0x5e);
			
			public function HRESULT(IUnbufferedFileHandleProvider *self, IUnbufferedFileHandleOplockCallback* oplockBreakCallback, uint* fileHandle) OpenUnbufferedFileHandle;
			public function HRESULT(IUnbufferedFileHandleProvider *self) CloseUnbufferedFileHandle;
		}
		[CRepr]
		public struct IOplockBreakingHandler : IUnknown
		{
			public const new Guid IID = .(0x826abe3d, 0x3acd, 0x47d3, 0x84, 0xf2, 0x88, 0xaa, 0xed, 0xcf, 0x63, 0x04);
			
			public function HRESULT(IOplockBreakingHandler *self) OplockBreaking;
		}
		[CRepr]
		public struct IStorageItemHandleAccess : IUnknown
		{
			public const new Guid IID = .(0x5ca296b2, 0x2c25, 0x4d22, 0xb7, 0x85, 0xb8, 0x85, 0xc8, 0x20, 0x1e, 0x6a);
			
			public function HRESULT(IStorageItemHandleAccess *self, HANDLE_ACCESS_OPTIONS accessOptions, HANDLE_SHARING_OPTIONS sharingOptions, HANDLE_OPTIONS options, IOplockBreakingHandler* oplockBreakingHandler, HANDLE* interopHandle) Create;
		}
		[CRepr]
		public struct IStorageFolderHandleAccess : IUnknown
		{
			public const new Guid IID = .(0xdf19938f, 0x5462, 0x48a0, 0xbe, 0x65, 0xd2, 0xa3, 0x27, 0x1a, 0x08, 0xd6);
			
			public function HRESULT(IStorageFolderHandleAccess *self, PWSTR fileName, HANDLE_CREATION_OPTIONS creationOptions, HANDLE_ACCESS_OPTIONS accessOptions, HANDLE_SHARING_OPTIONS sharingOptions, HANDLE_OPTIONS options, IOplockBreakingHandler* oplockBreakingHandler, HANDLE* interopHandle) Create;
		}
		
	}
}
