using System;

// namespace System.WinRT.Direct3D11
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDirect3DDxgiInterfaceAccess : IUnknown
		{
			public const new Guid IID = .(0xa9b3d012, 0x3df2, 0x4ee3, 0xb8, 0xd1, 0x86, 0x95, 0xf4, 0x57, 0xd3, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInterface(Guid* iid, void** p) mut
			{
				return VT.GetInterface(&this, iid, p);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirect3DDxgiInterfaceAccess *self, Guid* iid, void** p) GetInterface;
			}
		}
		
		// --- Functions ---
		
		[Import("d3d11.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDirect3D11DeviceFromDXGIDevice(IDXGIDevice* dxgiDevice, IInspectable** graphicsDevice);
		[Import("d3d11.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDirect3D11SurfaceFromDXGISurface(IDXGISurface* dgxiSurface, IInspectable** graphicsSurface);
		
	}
}
