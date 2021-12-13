using System;

// namespace System.WinRT.Direct3D11
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		public struct IDirect3DDxgiInterfaceAccess {}
		
		// --- Functions ---
		
		[Import("d3d11.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDirect3D11DeviceFromDXGIDevice(IDXGIDevice dxgiDevice, IInspectable* graphicsDevice);
		[Import("d3d11.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDirect3D11SurfaceFromDXGISurface(IDXGISurface dgxiSurface, IInspectable* graphicsSurface);
		
	}
}
