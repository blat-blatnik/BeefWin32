using System;

// namespace System.WinRT.Pdf
namespace Win32
{
	extension Win32
	{
		// --- Function Pointers ---
		
		public function HRESULT PFN_PDF_CREATE_RENDERER(IDXGIDevice param0, IPdfRendererNative* param1);
		
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
		
		public struct IPdfRendererNative {}
		
		// --- Functions ---
		
		[Import("windows.data.pdf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PdfCreateRenderer(IDXGIDevice pDevice, IPdfRendererNative* ppRenderer);
		
	}
}
