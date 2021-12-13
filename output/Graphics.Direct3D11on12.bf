using System;

// namespace Graphics.Direct3D11on12
namespace Win32
{
	extension Win32
	{
		// --- Function Pointers ---
		
		public function HRESULT PFN_D3D11ON12_CREATE_DEVICE(IUnknown param0, uint32 param1, D3D_FEATURE_LEVEL* param2, uint32 FeatureLevels, IUnknown* param4, uint32 NumQueues, uint32 param6, ID3D11Device* param7, ID3D11DeviceContext* param8, D3D_FEATURE_LEVEL* param9);
		
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
		
		public struct ID3D11On12Device {}
		public struct ID3D11On12Device1 {}
		public struct ID3D11On12Device2 {}
		
		// --- Functions ---
		
		[Import("d3d11.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT D3D11On12CreateDevice(IUnknown pDevice, uint32 Flags, D3D_FEATURE_LEVEL* pFeatureLevels, uint32 FeatureLevels, IUnknown* ppCommandQueues, uint32 NumQueues, uint32 NodeMask, ID3D11Device* ppDevice, ID3D11DeviceContext* ppImmediateContext, D3D_FEATURE_LEVEL* pChosenFeatureLevel);
		
	}
}
