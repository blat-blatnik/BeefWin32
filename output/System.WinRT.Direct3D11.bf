namespace Win32.System.WinRT.Direct3D11;

using System;
using Win32.Foundation;
using Win32.Graphics.Dxgi;
using Win32.System.Com;
using Win32.System.WinRT;

static
{
	#region COM interfaces
	[CRepr]
	public struct IDirect3DDxgiInterfaceAccess : IUnknown
	{
		public const new Guid IID = .(0xa9b3d012, 0x3df2, 0x4ee3, 0xb8, 0xd1, 0x86, 0x95, 0xf4, 0x57, 0xd3, 0xc1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetInterface(in Guid iid, void** p) mut => VT.GetInterface(ref this, iid, p);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDxgiInterfaceAccess self, in Guid iid, void** p) GetInterface;
		}
	}
	#endregion
	
	#region Functions
	[Import("d3d11.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateDirect3D11DeviceFromDXGIDevice(ref IDXGIDevice dxgiDevice, out IInspectable* graphicsDevice);
	[Import("d3d11.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateDirect3D11SurfaceFromDXGISurface(ref IDXGISurface dgxiSurface, out IInspectable* graphicsSurface);
	#endregion
}
