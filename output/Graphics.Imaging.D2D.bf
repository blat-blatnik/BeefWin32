using System;

// namespace Graphics.Imaging.D2D
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWICImageEncoder : IUnknown
		{
			public const new Guid IID = .(0x04c75bf8, 0x3ce1, 0x473b, 0xac, 0xc5, 0x3c, 0xc4, 0xf5, 0xe9, 0x49, 0x99);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWICImageEncoder *self, ID2D1Image* pImage, IWICBitmapFrameEncode* pFrameEncode, WICImageParameters* pImageParameters) WriteFrame;
				public function HRESULT(IWICImageEncoder *self, ID2D1Image* pImage, IWICBitmapFrameEncode* pFrameEncode, WICImageParameters* pImageParameters) WriteFrameThumbnail;
				public function HRESULT(IWICImageEncoder *self, ID2D1Image* pImage, IWICBitmapEncoder* pEncoder, WICImageParameters* pImageParameters) WriteThumbnail;
			}
		}
		[CRepr]
		public struct IWICImagingFactory2 : IWICImagingFactory
		{
			public const new Guid IID = .(0x7b816b45, 0x1996, 0x4476, 0xb1, 0x32, 0xde, 0x9e, 0x24, 0x7c, 0x8a, 0xf0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWICImagingFactory.VTable
			{
				public function HRESULT(IWICImagingFactory2 *self, ID2D1Device* pD2DDevice, IWICImageEncoder** ppWICImageEncoder) CreateImageEncoder;
			}
		}
		
	}
}
