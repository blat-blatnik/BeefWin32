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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSharedHandle(ref IInspectable pObject, in SECURITY_ATTRIBUTES pSecurityAttributes, uint32 Access, HSTRING Name, out HANDLE pHandle) mut => VT.CreateSharedHandle(ref this, ref pObject, pSecurityAttributes, Access, Name, out pHandle);
			public HRESULT OpenSharedHandle(HANDLE NTHandle, Guid riid, void** ppvObj) mut => VT.OpenSharedHandle(ref this, NTHandle, riid, ppvObj);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDisplayDeviceInterop self, ref IInspectable pObject, in SECURITY_ATTRIBUTES pSecurityAttributes, uint32 Access, HSTRING Name, out HANDLE pHandle) CreateSharedHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDisplayDeviceInterop self, HANDLE NTHandle, Guid riid, void** ppvObj) OpenSharedHandle;
			}
		}
		[CRepr]
		public struct IDisplayPathInterop : IUnknown
		{
			public const new Guid IID = .(0xa6ba4205, 0xe59e, 0x4e71, 0xb2, 0x5b, 0x4e, 0x43, 0x6d, 0x21, 0xee, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSourcePresentationHandle(out HANDLE pValue) mut => VT.CreateSourcePresentationHandle(ref this, out pValue);
			public HRESULT GetSourceId(out uint32 pSourceId) mut => VT.GetSourceId(ref this, out pSourceId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDisplayPathInterop self, out HANDLE pValue) CreateSourcePresentationHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDisplayPathInterop self, out uint32 pSourceId) GetSourceId;
			}
		}
		
	}
}
