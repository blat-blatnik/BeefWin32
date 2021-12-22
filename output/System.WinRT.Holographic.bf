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
			
			public function HRESULT(IHolographicCameraInterop *self, ID3D12Device* pDevice, D3D12_RESOURCE_DESC* pTexture2DDesc, ID3D12Resource** ppCreatedTexture2DResource) CreateDirect3D12BackBufferResource;
			public function HRESULT(IHolographicCameraInterop *self, ID3D12Device* pDevice, D3D12_RESOURCE_DESC* pTexture2DDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, ID3D12Resource** ppCreatedTexture2DResource) CreateDirect3D12HardwareProtectedBackBufferResource;
			public function HRESULT(IHolographicCameraInterop *self, ID3D12Resource* pResourceToAcquire, ID3D12CommandQueue* pCommandQueue) AcquireDirect3D12BufferResource;
			public function HRESULT(IHolographicCameraInterop *self, ID3D12Resource* pResourceToAcquire, ID3D12CommandQueue* pCommandQueue, uint64 duration) AcquireDirect3D12BufferResourceWithTimeout;
			public function HRESULT(IHolographicCameraInterop *self, ID3D12Resource* pResourceToUnacquire) UnacquireDirect3D12BufferResource;
		}
		[CRepr]
		public struct IHolographicCameraRenderingParametersInterop : IInspectable
		{
			public const new Guid IID = .(0xf75b68d6, 0xd1fd, 0x4707, 0xaa, 0xfd, 0xfa, 0x6f, 0x4c, 0x0e, 0x3b, 0xf4);
			
			public function HRESULT(IHolographicCameraRenderingParametersInterop *self, ID3D12Resource* pColorResourceToCommit, ID3D12Fence* pColorResourceFence, uint64 colorResourceFenceSignalValue) CommitDirect3D12Resource;
			public function HRESULT(IHolographicCameraRenderingParametersInterop *self, ID3D12Resource* pColorResourceToCommit, ID3D12Fence* pColorResourceFence, uint64 colorResourceFenceSignalValue, ID3D12Resource* pDepthResourceToCommit, ID3D12Fence* pDepthResourceFence, uint64 depthResourceFenceSignalValue) CommitDirect3D12ResourceWithDepthData;
		}
		[CRepr]
		public struct IHolographicQuadLayerInterop : IInspectable
		{
			public const new Guid IID = .(0xcfa688f0, 0x639e, 0x4a47, 0x83, 0xd7, 0x6b, 0x7f, 0x5e, 0xbf, 0x7f, 0xed);
			
			public function HRESULT(IHolographicQuadLayerInterop *self, ID3D12Device* pDevice, D3D12_RESOURCE_DESC* pTexture2DDesc, ID3D12Resource** ppTexture2DResource) CreateDirect3D12ContentBufferResource;
			public function HRESULT(IHolographicQuadLayerInterop *self, ID3D12Device* pDevice, D3D12_RESOURCE_DESC* pTexture2DDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, ID3D12Resource** ppCreatedTexture2DResource) CreateDirect3D12HardwareProtectedContentBufferResource;
			public function HRESULT(IHolographicQuadLayerInterop *self, ID3D12Resource* pResourceToAcquire, ID3D12CommandQueue* pCommandQueue) AcquireDirect3D12BufferResource;
			public function HRESULT(IHolographicQuadLayerInterop *self, ID3D12Resource* pResourceToAcquire, ID3D12CommandQueue* pCommandQueue, uint64 duration) AcquireDirect3D12BufferResourceWithTimeout;
			public function HRESULT(IHolographicQuadLayerInterop *self, ID3D12Resource* pResourceToUnacquire) UnacquireDirect3D12BufferResource;
		}
		[CRepr]
		public struct IHolographicQuadLayerUpdateParametersInterop : IInspectable
		{
			public const new Guid IID = .(0xe5f549cd, 0xc909, 0x444f, 0x88, 0x09, 0x7c, 0xc1, 0x8a, 0x9c, 0x89, 0x20);
			
			public function HRESULT(IHolographicQuadLayerUpdateParametersInterop *self, ID3D12Resource* pColorResourceToCommit, ID3D12Fence* pColorResourceFence, uint64 colorResourceFenceSignalValue) CommitDirect3D12Resource;
		}
		
	}
}
