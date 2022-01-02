using System;

// namespace UI.Input.Radial
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IRadialControllerInterop : IInspectable
		{
			public const new Guid IID = .(0x1b0535c9, 0x57ad, 0x45c1, 0x9d, 0x79, 0xad, 0x5c, 0x34, 0x36, 0x05, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateForWindow(HWND hwnd, in Guid riid, void** ppv) mut => VT.CreateForWindow(ref this, hwnd, riid, ppv);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRadialControllerInterop self, HWND hwnd, in Guid riid, void** ppv) CreateForWindow;
			}
		}
		[CRepr]
		public struct IRadialControllerConfigurationInterop : IInspectable
		{
			public const new Guid IID = .(0x787cdaac, 0x3186, 0x476d, 0x87, 0xe4, 0xb9, 0x37, 0x4a, 0x7b, 0x99, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND hwnd, in Guid riid, void** ppv) mut => VT.GetForWindow(ref this, hwnd, riid, ppv);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRadialControllerConfigurationInterop self, HWND hwnd, in Guid riid, void** ppv) GetForWindow;
			}
		}
		[CRepr]
		public struct IRadialControllerIndependentInputSourceInterop : IInspectable
		{
			public const new Guid IID = .(0x3d577eff, 0x4cee, 0x11e6, 0xb5, 0x35, 0x00, 0x1b, 0xdc, 0x06, 0xab, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateForWindow(HWND hwnd, in Guid riid, void** ppv) mut => VT.CreateForWindow(ref this, hwnd, riid, ppv);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRadialControllerIndependentInputSourceInterop self, HWND hwnd, in Guid riid, void** ppv) CreateForWindow;
			}
		}
		
	}
}
