using System;

// namespace Graphics.Direct3D11on12
namespace Win32
{
	extension Win32
	{
		// --- Function Pointers ---
		
		public function HRESULT PFN_D3D11ON12_CREATE_DEVICE(IUnknown* param0, uint32 param1, D3D_FEATURE_LEVEL* param2, uint32 FeatureLevels, IUnknown** param4, uint32 NumQueues, uint32 param6, ID3D11Device** param7, ID3D11DeviceContext** param8, D3D_FEATURE_LEVEL* param9);
		
		// --- Structs ---
		
		[CRepr]
		public struct D3D11_RESOURCE_FLAGS
		{
			public uint32 BindFlags;
			public uint32 MiscFlags;
			public uint32 CPUAccessFlags;
			public uint32 StructureByteStride;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ID3D11On12Device : IUnknown
		{
			public const new Guid IID = .(0x85611e73, 0x70a9, 0x490e, 0x96, 0x14, 0xa9, 0xe3, 0x02, 0x77, 0x79, 0x04);
			
			public function HRESULT(ID3D11On12Device *self, IUnknown* pResource12, D3D11_RESOURCE_FLAGS* pFlags11, D3D12_RESOURCE_STATES InState, D3D12_RESOURCE_STATES OutState, Guid* riid, void** ppResource11) CreateWrappedResource;
			public function void(ID3D11On12Device *self, ID3D11Resource** ppResources, uint32 NumResources) ReleaseWrappedResources;
			public function void(ID3D11On12Device *self, ID3D11Resource** ppResources, uint32 NumResources) AcquireWrappedResources;
		}
		[CRepr]
		public struct ID3D11On12Device1 : ID3D11On12Device
		{
			public const new Guid IID = .(0xbdb64df4, 0xea2f, 0x4c70, 0xb8, 0x61, 0xaa, 0xab, 0x12, 0x58, 0xbb, 0x5d);
			
			public function HRESULT(ID3D11On12Device1 *self, Guid* riid, void** ppvDevice) GetD3D12Device;
		}
		[CRepr]
		public struct ID3D11On12Device2 : ID3D11On12Device1
		{
			public const new Guid IID = .(0xdc90f331, 0x4740, 0x43fa, 0x86, 0x6e, 0x67, 0xf1, 0x2c, 0xb5, 0x82, 0x23);
			
			public function HRESULT(ID3D11On12Device2 *self, ID3D11Resource* pResource11, ID3D12CommandQueue* pCommandQueue, Guid* riid, void** ppvResource12) UnwrapUnderlyingResource;
			public function HRESULT(ID3D11On12Device2 *self, ID3D11Resource* pResource11, uint32 NumSync, uint64* pSignalValues, ID3D12Fence** ppFences) ReturnUnderlyingResource;
		}
		
		// --- Functions ---
		
		[Import("d3d11.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT D3D11On12CreateDevice(IUnknown* pDevice, uint32 Flags, D3D_FEATURE_LEVEL* pFeatureLevels, uint32 FeatureLevels, IUnknown** ppCommandQueues, uint32 NumQueues, uint32 NodeMask, ID3D11Device** ppDevice, ID3D11DeviceContext** ppImmediateContext, D3D_FEATURE_LEVEL* pChosenFeatureLevel);
		
	}
}
