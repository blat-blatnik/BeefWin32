using System;

// namespace UI.Input.Ink
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum INK_HIGH_CONTRAST_ADJUSTMENT : int32
		{
			SYSTEM_COLORS_WHEN_NECESSARY = 0,
			SYSTEM_COLORS = 1,
			ORIGINAL_COLORS = 2,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_InkDesktopHost = .(0x062584a6, 0xf830, 0x4bdc, 0xa4, 0xd2, 0x0a, 0x10, 0xab, 0x06, 0x2b, 0x1d);
		public const Guid CLSID_InkD2DRenderer = .(0x4044e60c, 0x7b01, 0x4671, 0xa9, 0x7c, 0x04, 0xe0, 0x21, 0x0a, 0x07, 0xa5);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IInkCommitRequestHandler : IUnknown
		{
			public const new Guid IID = .(0xfabea3fc, 0xb108, 0x45b6, 0xa9, 0xfc, 0x8d, 0x08, 0xfa, 0x9f, 0x85, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCommitRequested() mut => VT.OnCommitRequested(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInkCommitRequestHandler self) OnCommitRequested;
			}
		}
		[CRepr]
		public struct IInkPresenterDesktop : IUnknown
		{
			public const new Guid IID = .(0x73f3c0d9, 0x2e8b, 0x48f3, 0x89, 0x5e, 0x20, 0xcb, 0xd2, 0x7b, 0x72, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRootVisual(ref IUnknown rootVisual, ref IUnknown device) mut => VT.SetRootVisual(ref this, ref rootVisual, ref device);
			public HRESULT SetCommitRequestHandler(ref IInkCommitRequestHandler handler) mut => VT.SetCommitRequestHandler(ref this, ref handler);
			public HRESULT GetSize(out float width, out float height) mut => VT.GetSize(ref this, out width, out height);
			public HRESULT SetSize(float width, float height) mut => VT.SetSize(ref this, width, height);
			public HRESULT OnHighContrastChanged() mut => VT.OnHighContrastChanged(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInkPresenterDesktop self, ref IUnknown rootVisual, ref IUnknown device) SetRootVisual;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInkPresenterDesktop self, ref IInkCommitRequestHandler handler) SetCommitRequestHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInkPresenterDesktop self, out float width, out float height) GetSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInkPresenterDesktop self, float width, float height) SetSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInkPresenterDesktop self) OnHighContrastChanged;
			}
		}
		[CRepr]
		public struct IInkHostWorkItem : IUnknown
		{
			public const new Guid IID = .(0xccda0a9a, 0x1b78, 0x4632, 0xbb, 0x96, 0x97, 0x80, 0x06, 0x62, 0xe2, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Invoke() mut => VT.Invoke(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInkHostWorkItem self) Invoke;
			}
		}
		[CRepr]
		public struct IInkDesktopHost : IUnknown
		{
			public const new Guid IID = .(0x4ce7d875, 0xa981, 0x4140, 0xa1, 0xff, 0xad, 0x93, 0x25, 0x8e, 0x8d, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueueWorkItem(ref IInkHostWorkItem workItem) mut => VT.QueueWorkItem(ref this, ref workItem);
			public HRESULT CreateInkPresenter(in Guid riid, void** ppv) mut => VT.CreateInkPresenter(ref this, riid, ppv);
			public HRESULT CreateAndInitializeInkPresenter(ref IUnknown rootVisual, float width, float height, in Guid riid, void** ppv) mut => VT.CreateAndInitializeInkPresenter(ref this, ref rootVisual, width, height, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInkDesktopHost self, ref IInkHostWorkItem workItem) QueueWorkItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInkDesktopHost self, in Guid riid, void** ppv) CreateInkPresenter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInkDesktopHost self, ref IUnknown rootVisual, float width, float height, in Guid riid, void** ppv) CreateAndInitializeInkPresenter;
			}
		}
		[CRepr]
		public struct IInkD2DRenderer : IUnknown
		{
			public const new Guid IID = .(0x407fb1de, 0xf85a, 0x4150, 0x97, 0xcf, 0xb7, 0xfb, 0x27, 0x4f, 0xb4, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Draw(ref IUnknown pD2D1DeviceContext, ref IUnknown pInkStrokeIterable, BOOL fHighContrast) mut => VT.Draw(ref this, ref pD2D1DeviceContext, ref pInkStrokeIterable, fHighContrast);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInkD2DRenderer self, ref IUnknown pD2D1DeviceContext, ref IUnknown pInkStrokeIterable, BOOL fHighContrast) Draw;
			}
		}
		[CRepr]
		public struct IInkD2DRenderer2 : IUnknown
		{
			public const new Guid IID = .(0x0a95dcd9, 0x4578, 0x4b71, 0xb2, 0x0b, 0xbf, 0x66, 0x4d, 0x4b, 0xfe, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Draw(ref IUnknown pD2D1DeviceContext, ref IUnknown pInkStrokeIterable, INK_HIGH_CONTRAST_ADJUSTMENT highContrastAdjustment) mut => VT.Draw(ref this, ref pD2D1DeviceContext, ref pInkStrokeIterable, highContrastAdjustment);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInkD2DRenderer2 self, ref IUnknown pD2D1DeviceContext, ref IUnknown pInkStrokeIterable, INK_HIGH_CONTRAST_ADJUSTMENT highContrastAdjustment) Draw;
			}
		}
		
	}
}
