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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WriteFrame(ID2D1Image* pImage, IWICBitmapFrameEncode* pFrameEncode, WICImageParameters* pImageParameters) mut
			{
				return VT.WriteFrame(&this, pImage, pFrameEncode, pImageParameters);
			}
			public HRESULT WriteFrameThumbnail(ID2D1Image* pImage, IWICBitmapFrameEncode* pFrameEncode, WICImageParameters* pImageParameters) mut
			{
				return VT.WriteFrameThumbnail(&this, pImage, pFrameEncode, pImageParameters);
			}
			public HRESULT WriteThumbnail(ID2D1Image* pImage, IWICBitmapEncoder* pEncoder, WICImageParameters* pImageParameters) mut
			{
				return VT.WriteThumbnail(&this, pImage, pEncoder, pImageParameters);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWICImageEncoder *self, ID2D1Image* pImage, IWICBitmapFrameEncode* pFrameEncode, WICImageParameters* pImageParameters) WriteFrame;
				public new function HRESULT(IWICImageEncoder *self, ID2D1Image* pImage, IWICBitmapFrameEncode* pFrameEncode, WICImageParameters* pImageParameters) WriteFrameThumbnail;
				public new function HRESULT(IWICImageEncoder *self, ID2D1Image* pImage, IWICBitmapEncoder* pEncoder, WICImageParameters* pImageParameters) WriteThumbnail;
			}
		}
		[CRepr]
		public struct IWICImagingFactory2 : IWICImagingFactory
		{
			public const new Guid IID = .(0x7b816b45, 0x1996, 0x4476, 0xb1, 0x32, 0xde, 0x9e, 0x24, 0x7c, 0x8a, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateImageEncoder(ID2D1Device* pD2DDevice, IWICImageEncoder** ppWICImageEncoder) mut
			{
				return VT.CreateImageEncoder(&this, pD2DDevice, ppWICImageEncoder);
			}
			[CRepr]
			public struct VTable : IWICImagingFactory.VTable
			{
				public new function HRESULT(IWICImagingFactory2 *self, ID2D1Device* pD2DDevice, IWICImageEncoder** ppWICImageEncoder) CreateImageEncoder;
			}
		}
		
	}
}
