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
			
			public HRESULT WriteFrame(ref ID2D1Image pImage, ref IWICBitmapFrameEncode pFrameEncode, in WICImageParameters pImageParameters) mut => VT.WriteFrame(ref this, ref pImage, ref pFrameEncode, pImageParameters);
			public HRESULT WriteFrameThumbnail(ref ID2D1Image pImage, ref IWICBitmapFrameEncode pFrameEncode, in WICImageParameters pImageParameters) mut => VT.WriteFrameThumbnail(ref this, ref pImage, ref pFrameEncode, pImageParameters);
			public HRESULT WriteThumbnail(ref ID2D1Image pImage, ref IWICBitmapEncoder pEncoder, in WICImageParameters pImageParameters) mut => VT.WriteThumbnail(ref this, ref pImage, ref pEncoder, pImageParameters);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWICImageEncoder self, ref ID2D1Image pImage, ref IWICBitmapFrameEncode pFrameEncode, in WICImageParameters pImageParameters) WriteFrame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWICImageEncoder self, ref ID2D1Image pImage, ref IWICBitmapFrameEncode pFrameEncode, in WICImageParameters pImageParameters) WriteFrameThumbnail;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWICImageEncoder self, ref ID2D1Image pImage, ref IWICBitmapEncoder pEncoder, in WICImageParameters pImageParameters) WriteThumbnail;
			}
		}
		[CRepr]
		public struct IWICImagingFactory2 : IWICImagingFactory
		{
			public const new Guid IID = .(0x7b816b45, 0x1996, 0x4476, 0xb1, 0x32, 0xde, 0x9e, 0x24, 0x7c, 0x8a, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateImageEncoder(ref ID2D1Device pD2DDevice, out IWICImageEncoder* ppWICImageEncoder) mut => VT.CreateImageEncoder(ref this, ref pD2DDevice, out ppWICImageEncoder);

			[CRepr]
			public struct VTable : IWICImagingFactory.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWICImagingFactory2 self, ref ID2D1Device pD2DDevice, out IWICImageEncoder* ppWICImageEncoder) CreateImageEncoder;
			}
		}
		
	}
}
