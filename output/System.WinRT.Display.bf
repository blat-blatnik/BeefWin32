using System;

// namespace System.WinRT.Display
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDisplayDeviceInterop : IUnknown
		{
			public const new Guid IID = .(0x64338358, 0x366a, 0x471b, 0xbd, 0x56, 0xdd, 0x8e, 0xf4, 0x8e, 0x43, 0x9b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDisplayDeviceInterop *self, IInspectable* pObject, SECURITY_ATTRIBUTES* pSecurityAttributes, uint32 Access, HSTRING Name, HANDLE* pHandle) CreateSharedHandle;
				public function HRESULT(IDisplayDeviceInterop *self, HANDLE NTHandle, Guid riid, void** ppvObj) OpenSharedHandle;
			}
		}
		[CRepr]
		public struct IDisplayPathInterop : IUnknown
		{
			public const new Guid IID = .(0xa6ba4205, 0xe59e, 0x4e71, 0xb2, 0x5b, 0x4e, 0x43, 0x6d, 0x21, 0xee, 0x3d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDisplayPathInterop *self, HANDLE* pValue) CreateSourcePresentationHandle;
				public function HRESULT(IDisplayPathInterop *self, uint32* pSourceId) GetSourceId;
			}
		}
		
	}
}
