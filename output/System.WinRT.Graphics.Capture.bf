using System;

// namespace System.WinRT.Graphics.Capture
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IGraphicsCaptureItemInterop : IUnknown
		{
			public const new Guid IID = .(0x3628e81b, 0x3cac, 0x4c60, 0xb7, 0xf4, 0x23, 0xce, 0x0e, 0x0c, 0x33, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateForWindow(HWND window, Guid* riid, void** result) mut
			{
				return VT.CreateForWindow(&this, window, riid, result);
			}
			public HRESULT CreateForMonitor(HMONITOR monitor, Guid* riid, void** result) mut
			{
				return VT.CreateForMonitor(&this, monitor, riid, result);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IGraphicsCaptureItemInterop *self, HWND window, Guid* riid, void** result) CreateForWindow;
				public new function HRESULT(IGraphicsCaptureItemInterop *self, HMONITOR monitor, Guid* riid, void** result) CreateForMonitor;
			}
		}
		
	}
}
