using System;

// namespace UI.Input.Ink
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum INK_HIGH_CONTRAST_ADJUSTMENT : int32
		{
			USE_SYSTEM_COLORS_WHEN_NECESSARY = 0,
			USE_SYSTEM_COLORS = 1,
			USE_ORIGINAL_COLORS = 2,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_InkDesktopHost = .(0x062584a6, 0xf830, 0x4bdc, 0xa4, 0xd2, 0x0a, 0x10, 0xab, 0x06, 0x2b, 0x1d);
		public const Guid CLSID_InkD2DRenderer = .(0x4044e60c, 0x7b01, 0x4671, 0xa9, 0x7c, 0x04, 0xe0, 0x21, 0x0a, 0x07, 0xa5);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IInkCommitRequestHandler : IUnknown
		{
			public const new Guid IID = .(0xfabea3fc, 0xb108, 0x45b6, 0xa9, 0xfc, 0x8d, 0x08, 0xfa, 0x9f, 0x85, 0xcf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IInkCommitRequestHandler *self) OnCommitRequested;
			}
		}
		[CRepr]
		public struct IInkPresenterDesktop : IUnknown
		{
			public const new Guid IID = .(0x73f3c0d9, 0x2e8b, 0x48f3, 0x89, 0x5e, 0x20, 0xcb, 0xd2, 0x7b, 0x72, 0x3b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IInkPresenterDesktop *self, IUnknown* rootVisual, IUnknown* device) SetRootVisual;
				public function HRESULT(IInkPresenterDesktop *self, IInkCommitRequestHandler* handler) SetCommitRequestHandler;
				public function HRESULT(IInkPresenterDesktop *self, float* width, float* height) GetSize;
				public function HRESULT(IInkPresenterDesktop *self, float width, float height) SetSize;
				public function HRESULT(IInkPresenterDesktop *self) OnHighContrastChanged;
			}
		}
		[CRepr]
		public struct IInkHostWorkItem : IUnknown
		{
			public const new Guid IID = .(0xccda0a9a, 0x1b78, 0x4632, 0xbb, 0x96, 0x97, 0x80, 0x06, 0x62, 0xe2, 0x6c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IInkHostWorkItem *self) Invoke;
			}
		}
		[CRepr]
		public struct IInkDesktopHost : IUnknown
		{
			public const new Guid IID = .(0x4ce7d875, 0xa981, 0x4140, 0xa1, 0xff, 0xad, 0x93, 0x25, 0x8e, 0x8d, 0x59);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IInkDesktopHost *self, IInkHostWorkItem* workItem) QueueWorkItem;
				public function HRESULT(IInkDesktopHost *self, Guid* riid, void** ppv) CreateInkPresenter;
				public function HRESULT(IInkDesktopHost *self, IUnknown* rootVisual, float width, float height, Guid* riid, void** ppv) CreateAndInitializeInkPresenter;
			}
		}
		[CRepr]
		public struct IInkD2DRenderer : IUnknown
		{
			public const new Guid IID = .(0x407fb1de, 0xf85a, 0x4150, 0x97, 0xcf, 0xb7, 0xfb, 0x27, 0x4f, 0xb4, 0xf8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IInkD2DRenderer *self, IUnknown* pD2D1DeviceContext, IUnknown* pInkStrokeIterable, BOOL fHighContrast) Draw;
			}
		}
		[CRepr]
		public struct IInkD2DRenderer2 : IUnknown
		{
			public const new Guid IID = .(0x0a95dcd9, 0x4578, 0x4b71, 0xb2, 0x0b, 0xbf, 0x66, 0x4d, 0x4b, 0xfe, 0xee);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IInkD2DRenderer2 *self, IUnknown* pD2D1DeviceContext, IUnknown* pInkStrokeIterable, INK_HIGH_CONTRAST_ADJUSTMENT highContrastAdjustment) Draw;
			}
		}
		
	}
}
