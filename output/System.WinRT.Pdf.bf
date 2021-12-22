using System;

// namespace System.WinRT.Pdf
namespace Win32
{
	extension Win32
	{
		// --- Function Pointers ---
		
		public function HRESULT PFN_PDF_CREATE_RENDERER(IDXGIDevice* param0, IPdfRendererNative** param1);
		
		// --- Structs ---
		
		[CRepr]
		public struct PDF_RENDER_PARAMS
		{
			public D2D_RECT_F SourceRect;
			public uint32 DestinationWidth;
			public uint32 DestinationHeight;
			public D2D_COLOR_F BackgroundColor;
			public BOOLEAN IgnoreHighContrast;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IPdfRendererNative : IUnknown
		{
			public const new Guid IID = .(0x7d9dcd91, 0xd277, 0x4947, 0x85, 0x27, 0x07, 0xa0, 0xda, 0xed, 0xa9, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RenderPageToSurface(IUnknown* pdfPage, IDXGISurface* pSurface, POINT offset, PDF_RENDER_PARAMS* pRenderParams) mut
			{
				return VT.RenderPageToSurface(&this, pdfPage, pSurface, offset, pRenderParams);
			}
			public HRESULT RenderPageToDeviceContext(IUnknown* pdfPage, ID2D1DeviceContext* pD2DDeviceContext, PDF_RENDER_PARAMS* pRenderParams) mut
			{
				return VT.RenderPageToDeviceContext(&this, pdfPage, pD2DDeviceContext, pRenderParams);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPdfRendererNative *self, IUnknown* pdfPage, IDXGISurface* pSurface, POINT offset, PDF_RENDER_PARAMS* pRenderParams) RenderPageToSurface;
				public new function HRESULT(IPdfRendererNative *self, IUnknown* pdfPage, ID2D1DeviceContext* pD2DDeviceContext, PDF_RENDER_PARAMS* pRenderParams) RenderPageToDeviceContext;
			}
		}
		
		// --- Functions ---
		
		[Import("windows.data.pdf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PdfCreateRenderer(IDXGIDevice* pDevice, IPdfRendererNative** ppRenderer);
		
	}
}
