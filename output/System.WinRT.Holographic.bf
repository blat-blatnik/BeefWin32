using System;

// namespace System.WinRT.Holographic
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IHolographicCameraInterop : IInspectable
		{
			public const new Guid IID = .(0x7cc1f9c5, 0x6d02, 0x41fa, 0x95, 0x00, 0xe1, 0x80, 0x9e, 0xb4, 0x8e, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDirect3D12BackBufferResource(ref ID3D12Device pDevice, ref D3D12_RESOURCE_DESC pTexture2DDesc, out ID3D12Resource* ppCreatedTexture2DResource) mut => VT.CreateDirect3D12BackBufferResource(ref this, ref pDevice, ref pTexture2DDesc, out ppCreatedTexture2DResource);
			public HRESULT CreateDirect3D12HardwareProtectedBackBufferResource(ref ID3D12Device pDevice, ref D3D12_RESOURCE_DESC pTexture2DDesc, ref ID3D12ProtectedResourceSession pProtectedResourceSession, out ID3D12Resource* ppCreatedTexture2DResource) mut => VT.CreateDirect3D12HardwareProtectedBackBufferResource(ref this, ref pDevice, ref pTexture2DDesc, ref pProtectedResourceSession, out ppCreatedTexture2DResource);
			public HRESULT AcquireDirect3D12BufferResource(ref ID3D12Resource pResourceToAcquire, ref ID3D12CommandQueue pCommandQueue) mut => VT.AcquireDirect3D12BufferResource(ref this, ref pResourceToAcquire, ref pCommandQueue);
			public HRESULT AcquireDirect3D12BufferResourceWithTimeout(ref ID3D12Resource pResourceToAcquire, ref ID3D12CommandQueue pCommandQueue, uint64 duration) mut => VT.AcquireDirect3D12BufferResourceWithTimeout(ref this, ref pResourceToAcquire, ref pCommandQueue, duration);
			public HRESULT UnacquireDirect3D12BufferResource(ref ID3D12Resource pResourceToUnacquire) mut => VT.UnacquireDirect3D12BufferResource(ref this, ref pResourceToUnacquire);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolographicCameraInterop self, ref ID3D12Device pDevice, ref D3D12_RESOURCE_DESC pTexture2DDesc, out ID3D12Resource* ppCreatedTexture2DResource) CreateDirect3D12BackBufferResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolographicCameraInterop self, ref ID3D12Device pDevice, ref D3D12_RESOURCE_DESC pTexture2DDesc, ref ID3D12ProtectedResourceSession pProtectedResourceSession, out ID3D12Resource* ppCreatedTexture2DResource) CreateDirect3D12HardwareProtectedBackBufferResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolographicCameraInterop self, ref ID3D12Resource pResourceToAcquire, ref ID3D12CommandQueue pCommandQueue) AcquireDirect3D12BufferResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolographicCameraInterop self, ref ID3D12Resource pResourceToAcquire, ref ID3D12CommandQueue pCommandQueue, uint64 duration) AcquireDirect3D12BufferResourceWithTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolographicCameraInterop self, ref ID3D12Resource pResourceToUnacquire) UnacquireDirect3D12BufferResource;
			}
		}
		[CRepr]
		public struct IHolographicCameraRenderingParametersInterop : IInspectable
		{
			public const new Guid IID = .(0xf75b68d6, 0xd1fd, 0x4707, 0xaa, 0xfd, 0xfa, 0x6f, 0x4c, 0x0e, 0x3b, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CommitDirect3D12Resource(ref ID3D12Resource pColorResourceToCommit, ref ID3D12Fence pColorResourceFence, uint64 colorResourceFenceSignalValue) mut => VT.CommitDirect3D12Resource(ref this, ref pColorResourceToCommit, ref pColorResourceFence, colorResourceFenceSignalValue);
			public HRESULT CommitDirect3D12ResourceWithDepthData(ref ID3D12Resource pColorResourceToCommit, ref ID3D12Fence pColorResourceFence, uint64 colorResourceFenceSignalValue, ref ID3D12Resource pDepthResourceToCommit, ref ID3D12Fence pDepthResourceFence, uint64 depthResourceFenceSignalValue) mut => VT.CommitDirect3D12ResourceWithDepthData(ref this, ref pColorResourceToCommit, ref pColorResourceFence, colorResourceFenceSignalValue, ref pDepthResourceToCommit, ref pDepthResourceFence, depthResourceFenceSignalValue);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolographicCameraRenderingParametersInterop self, ref ID3D12Resource pColorResourceToCommit, ref ID3D12Fence pColorResourceFence, uint64 colorResourceFenceSignalValue) CommitDirect3D12Resource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolographicCameraRenderingParametersInterop self, ref ID3D12Resource pColorResourceToCommit, ref ID3D12Fence pColorResourceFence, uint64 colorResourceFenceSignalValue, ref ID3D12Resource pDepthResourceToCommit, ref ID3D12Fence pDepthResourceFence, uint64 depthResourceFenceSignalValue) CommitDirect3D12ResourceWithDepthData;
			}
		}
		[CRepr]
		public struct IHolographicQuadLayerInterop : IInspectable
		{
			public const new Guid IID = .(0xcfa688f0, 0x639e, 0x4a47, 0x83, 0xd7, 0x6b, 0x7f, 0x5e, 0xbf, 0x7f, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDirect3D12ContentBufferResource(ref ID3D12Device pDevice, ref D3D12_RESOURCE_DESC pTexture2DDesc, out ID3D12Resource* ppTexture2DResource) mut => VT.CreateDirect3D12ContentBufferResource(ref this, ref pDevice, ref pTexture2DDesc, out ppTexture2DResource);
			public HRESULT CreateDirect3D12HardwareProtectedContentBufferResource(ref ID3D12Device pDevice, ref D3D12_RESOURCE_DESC pTexture2DDesc, ref ID3D12ProtectedResourceSession pProtectedResourceSession, out ID3D12Resource* ppCreatedTexture2DResource) mut => VT.CreateDirect3D12HardwareProtectedContentBufferResource(ref this, ref pDevice, ref pTexture2DDesc, ref pProtectedResourceSession, out ppCreatedTexture2DResource);
			public HRESULT AcquireDirect3D12BufferResource(ref ID3D12Resource pResourceToAcquire, ref ID3D12CommandQueue pCommandQueue) mut => VT.AcquireDirect3D12BufferResource(ref this, ref pResourceToAcquire, ref pCommandQueue);
			public HRESULT AcquireDirect3D12BufferResourceWithTimeout(ref ID3D12Resource pResourceToAcquire, ref ID3D12CommandQueue pCommandQueue, uint64 duration) mut => VT.AcquireDirect3D12BufferResourceWithTimeout(ref this, ref pResourceToAcquire, ref pCommandQueue, duration);
			public HRESULT UnacquireDirect3D12BufferResource(ref ID3D12Resource pResourceToUnacquire) mut => VT.UnacquireDirect3D12BufferResource(ref this, ref pResourceToUnacquire);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolographicQuadLayerInterop self, ref ID3D12Device pDevice, ref D3D12_RESOURCE_DESC pTexture2DDesc, out ID3D12Resource* ppTexture2DResource) CreateDirect3D12ContentBufferResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolographicQuadLayerInterop self, ref ID3D12Device pDevice, ref D3D12_RESOURCE_DESC pTexture2DDesc, ref ID3D12ProtectedResourceSession pProtectedResourceSession, out ID3D12Resource* ppCreatedTexture2DResource) CreateDirect3D12HardwareProtectedContentBufferResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolographicQuadLayerInterop self, ref ID3D12Resource pResourceToAcquire, ref ID3D12CommandQueue pCommandQueue) AcquireDirect3D12BufferResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolographicQuadLayerInterop self, ref ID3D12Resource pResourceToAcquire, ref ID3D12CommandQueue pCommandQueue, uint64 duration) AcquireDirect3D12BufferResourceWithTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolographicQuadLayerInterop self, ref ID3D12Resource pResourceToUnacquire) UnacquireDirect3D12BufferResource;
			}
		}
		[CRepr]
		public struct IHolographicQuadLayerUpdateParametersInterop : IInspectable
		{
			public const new Guid IID = .(0xe5f549cd, 0xc909, 0x444f, 0x88, 0x09, 0x7c, 0xc1, 0x8a, 0x9c, 0x89, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CommitDirect3D12Resource(ref ID3D12Resource pColorResourceToCommit, ref ID3D12Fence pColorResourceFence, uint64 colorResourceFenceSignalValue) mut => VT.CommitDirect3D12Resource(ref this, ref pColorResourceToCommit, ref pColorResourceFence, colorResourceFenceSignalValue);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IHolographicQuadLayerUpdateParametersInterop self, ref ID3D12Resource pColorResourceToCommit, ref ID3D12Fence pColorResourceFence, uint64 colorResourceFenceSignalValue) CommitDirect3D12Resource;
			}
		}
		
	}
}
