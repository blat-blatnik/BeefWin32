using System;

// namespace System.WinRT.Isolation
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IIsolatedEnvironmentInterop : IUnknown
		{
			public const new Guid IID = .(0x85713c2e, 0x8e62, 0x46c5, 0x8d, 0xe2, 0xc6, 0x47, 0xe1, 0xd5, 0x46, 0x36);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIsolatedEnvironmentInterop *self, HWND containerHwnd, HWND* hostHwnd) GetHostHwndInterop;
			}
		}
		
	}
}
