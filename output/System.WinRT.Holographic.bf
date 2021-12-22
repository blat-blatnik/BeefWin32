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
			
			public HRESULT CreateDirect3D12BackBufferResource(ID3D12Device* pDevice, D3D12_RESOURCE_DESC* pTexture2DDesc, ID3D12Resource** ppCreatedTexture2DResource) mut
			{
				return VT.CreateDirect3D12BackBufferResource(&this, pDevice, pTexture2DDesc, ppCreatedTexture2DResource);
			}
			public HRESULT CreateDirect3D12HardwareProtectedBackBufferResource(ID3D12Device* pDevice, D3D12_RESOURCE_DESC* pTexture2DDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, ID3D12Resource** ppCreatedTexture2DResource) mut
			{
				return VT.CreateDirect3D12HardwareProtectedBackBufferResource(&this, pDevice, pTexture2DDesc, pProtectedResourceSession, ppCreatedTexture2DResource);
			}
			public HRESULT AcquireDirect3D12BufferResource(ID3D12Resource* pResourceToAcquire, ID3D12CommandQueue* pCommandQueue) mut
			{
				return VT.AcquireDirect3D12BufferResource(&this, pResourceToAcquire, pCommandQueue);
			}
			public HRESULT AcquireDirect3D12BufferResourceWithTimeout(ID3D12Resource* pResourceToAcquire, ID3D12CommandQueue* pCommandQueue, uint64 duration) mut
			{
				return VT.AcquireDirect3D12BufferResourceWithTimeout(&this, pResourceToAcquire, pCommandQueue, duration);
			}
			public HRESULT UnacquireDirect3D12BufferResource(ID3D12Resource* pResourceToUnacquire) mut
			{
				return VT.UnacquireDirect3D12BufferResource(&this, pResourceToUnacquire);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IHolographicCameraInterop *self, ID3D12Device* pDevice, D3D12_RESOURCE_DESC* pTexture2DDesc, ID3D12Resource** ppCreatedTexture2DResource) CreateDirect3D12BackBufferResource;
				public new function HRESULT(IHolographicCameraInterop *self, ID3D12Device* pDevice, D3D12_RESOURCE_DESC* pTexture2DDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, ID3D12Resource** ppCreatedTexture2DResource) CreateDirect3D12HardwareProtectedBackBufferResource;
				public new function HRESULT(IHolographicCameraInterop *self, ID3D12Resource* pResourceToAcquire, ID3D12CommandQueue* pCommandQueue) AcquireDirect3D12BufferResource;
				public new function HRESULT(IHolographicCameraInterop *self, ID3D12Resource* pResourceToAcquire, ID3D12CommandQueue* pCommandQueue, uint64 duration) AcquireDirect3D12BufferResourceWithTimeout;
				public new function HRESULT(IHolographicCameraInterop *self, ID3D12Resource* pResourceToUnacquire) UnacquireDirect3D12BufferResource;
			}
		}
		[CRepr]
		public struct IHolographicCameraRenderingParametersInterop : IInspectable
		{
			public const new Guid IID = .(0xf75b68d6, 0xd1fd, 0x4707, 0xaa, 0xfd, 0xfa, 0x6f, 0x4c, 0x0e, 0x3b, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CommitDirect3D12Resource(ID3D12Resource* pColorResourceToCommit, ID3D12Fence* pColorResourceFence, uint64 colorResourceFenceSignalValue) mut
			{
				return VT.CommitDirect3D12Resource(&this, pColorResourceToCommit, pColorResourceFence, colorResourceFenceSignalValue);
			}
			public HRESULT CommitDirect3D12ResourceWithDepthData(ID3D12Resource* pColorResourceToCommit, ID3D12Fence* pColorResourceFence, uint64 colorResourceFenceSignalValue, ID3D12Resource* pDepthResourceToCommit, ID3D12Fence* pDepthResourceFence, uint64 depthResourceFenceSignalValue) mut
			{
				return VT.CommitDirect3D12ResourceWithDepthData(&this, pColorResourceToCommit, pColorResourceFence, colorResourceFenceSignalValue, pDepthResourceToCommit, pDepthResourceFence, depthResourceFenceSignalValue);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IHolographicCameraRenderingParametersInterop *self, ID3D12Resource* pColorResourceToCommit, ID3D12Fence* pColorResourceFence, uint64 colorResourceFenceSignalValue) CommitDirect3D12Resource;
				public new function HRESULT(IHolographicCameraRenderingParametersInterop *self, ID3D12Resource* pColorResourceToCommit, ID3D12Fence* pColorResourceFence, uint64 colorResourceFenceSignalValue, ID3D12Resource* pDepthResourceToCommit, ID3D12Fence* pDepthResourceFence, uint64 depthResourceFenceSignalValue) CommitDirect3D12ResourceWithDepthData;
			}
		}
		[CRepr]
		public struct IHolographicQuadLayerInterop : IInspectable
		{
			public const new Guid IID = .(0xcfa688f0, 0x639e, 0x4a47, 0x83, 0xd7, 0x6b, 0x7f, 0x5e, 0xbf, 0x7f, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDirect3D12ContentBufferResource(ID3D12Device* pDevice, D3D12_RESOURCE_DESC* pTexture2DDesc, ID3D12Resource** ppTexture2DResource) mut
			{
				return VT.CreateDirect3D12ContentBufferResource(&this, pDevice, pTexture2DDesc, ppTexture2DResource);
			}
			public HRESULT CreateDirect3D12HardwareProtectedContentBufferResource(ID3D12Device* pDevice, D3D12_RESOURCE_DESC* pTexture2DDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, ID3D12Resource** ppCreatedTexture2DResource) mut
			{
				return VT.CreateDirect3D12HardwareProtectedContentBufferResource(&this, pDevice, pTexture2DDesc, pProtectedResourceSession, ppCreatedTexture2DResource);
			}
			public HRESULT AcquireDirect3D12BufferResource(ID3D12Resource* pResourceToAcquire, ID3D12CommandQueue* pCommandQueue) mut
			{
				return VT.AcquireDirect3D12BufferResource(&this, pResourceToAcquire, pCommandQueue);
			}
			public HRESULT AcquireDirect3D12BufferResourceWithTimeout(ID3D12Resource* pResourceToAcquire, ID3D12CommandQueue* pCommandQueue, uint64 duration) mut
			{
				return VT.AcquireDirect3D12BufferResourceWithTimeout(&this, pResourceToAcquire, pCommandQueue, duration);
			}
			public HRESULT UnacquireDirect3D12BufferResource(ID3D12Resource* pResourceToUnacquire) mut
			{
				return VT.UnacquireDirect3D12BufferResource(&this, pResourceToUnacquire);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IHolographicQuadLayerInterop *self, ID3D12Device* pDevice, D3D12_RESOURCE_DESC* pTexture2DDesc, ID3D12Resource** ppTexture2DResource) CreateDirect3D12ContentBufferResource;
				public new function HRESULT(IHolographicQuadLayerInterop *self, ID3D12Device* pDevice, D3D12_RESOURCE_DESC* pTexture2DDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, ID3D12Resource** ppCreatedTexture2DResource) CreateDirect3D12HardwareProtectedContentBufferResource;
				public new function HRESULT(IHolographicQuadLayerInterop *self, ID3D12Resource* pResourceToAcquire, ID3D12CommandQueue* pCommandQueue) AcquireDirect3D12BufferResource;
				public new function HRESULT(IHolographicQuadLayerInterop *self, ID3D12Resource* pResourceToAcquire, ID3D12CommandQueue* pCommandQueue, uint64 duration) AcquireDirect3D12BufferResourceWithTimeout;
				public new function HRESULT(IHolographicQuadLayerInterop *self, ID3D12Resource* pResourceToUnacquire) UnacquireDirect3D12BufferResource;
			}
		}
		[CRepr]
		public struct IHolographicQuadLayerUpdateParametersInterop : IInspectable
		{
			public const new Guid IID = .(0xe5f549cd, 0xc909, 0x444f, 0x88, 0x09, 0x7c, 0xc1, 0x8a, 0x9c, 0x89, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CommitDirect3D12Resource(ID3D12Resource* pColorResourceToCommit, ID3D12Fence* pColorResourceFence, uint64 colorResourceFenceSignalValue) mut
			{
				return VT.CommitDirect3D12Resource(&this, pColorResourceToCommit, pColorResourceFence, colorResourceFenceSignalValue);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IHolographicQuadLayerUpdateParametersInterop *self, ID3D12Resource* pColorResourceToCommit, ID3D12Fence* pColorResourceFence, uint64 colorResourceFenceSignalValue) CommitDirect3D12Resource;
			}
		}
		
	}
}
