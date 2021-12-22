using System;

// namespace System.WinRT.CoreInputView
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ICoreFrameworkInputViewInterop : IInspectable
		{
			public const new Guid IID = .(0x0e3da342, 0xb11c, 0x484b, 0x9c, 0x1c, 0xbe, 0x0d, 0x61, 0xc2, 0xf6, 0xc5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND appWindow, Guid* riid, void** coreFrameworkInputView) mut
			{
				return VT.GetForWindow(&this, appWindow, riid, coreFrameworkInputView);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(ICoreFrameworkInputViewInterop *self, HWND appWindow, Guid* riid, void** coreFrameworkInputView) GetForWindow;
			}
		}
		
	}
}
