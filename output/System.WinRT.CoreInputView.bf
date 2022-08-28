namespace Win32.System.WinRT.CoreInputView;

using System;
using Win32.Foundation;
using Win32.System.WinRT;

static
{
	#region COM interfaces
	[CRepr]
	public struct ICoreFrameworkInputViewInterop : IInspectable
	{
		public const new Guid IID = .(0x0e3da342, 0xb11c, 0x484b, 0x9c, 0x1c, 0xbe, 0x0d, 0x61, 0xc2, 0xf6, 0xc5);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetForWindow(HWND appWindow, in Guid riid, void** coreFrameworkInputView) mut => VT.GetForWindow(ref this, appWindow, riid, coreFrameworkInputView);

		[CRepr]
		public struct VTable : IInspectable.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICoreFrameworkInputViewInterop self, HWND appWindow, in Guid riid, void** coreFrameworkInputView) GetForWindow;
		}
	}
	#endregion
	
}
