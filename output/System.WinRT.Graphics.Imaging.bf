using System;

// namespace System.WinRT.Graphics.Imaging
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid CLSID_SoftwareBitmapNativeFactory = .(0x84e65691, 0x8602, 0x4a84, 0xbe, 0x46, 0x70, 0x8b, 0xe9, 0xcd, 0x4b, 0x74);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ISoftwareBitmapNative : IInspectable
		{
			public const new Guid IID = .(0x94bc8415, 0x04ea, 0x4b2e, 0xaf, 0x13, 0x4d, 0xe9, 0x5a, 0xa8, 0x98, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetData(in Guid riid, void** ppv) mut => VT.GetData(ref this, riid, ppv);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISoftwareBitmapNative self, in Guid riid, void** ppv) GetData;
			}
		}
		[CRepr]
		public struct ISoftwareBitmapNativeFactory : IInspectable
		{
			public const new Guid IID = .(0xc3c181ec, 0x2914, 0x4791, 0xaf, 0x02, 0x02, 0xd2, 0x24, 0xa1, 0x0b, 0x43);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFromWICBitmap(ref IWICBitmap data, BOOL forceReadOnly, in Guid riid, void** ppv) mut => VT.CreateFromWICBitmap(ref this, ref data, forceReadOnly, riid, ppv);
			public HRESULT CreateFromMF2DBuffer2(ref IMF2DBuffer2 data, in Guid subtype, uint32 width, uint32 height, BOOL forceReadOnly, MFVideoArea* minDisplayAperture, in Guid riid, void** ppv) mut => VT.CreateFromMF2DBuffer2(ref this, ref data, subtype, width, height, forceReadOnly, minDisplayAperture, riid, ppv);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISoftwareBitmapNativeFactory self, ref IWICBitmap data, BOOL forceReadOnly, in Guid riid, void** ppv) CreateFromWICBitmap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISoftwareBitmapNativeFactory self, ref IMF2DBuffer2 data, in Guid subtype, uint32 width, uint32 height, BOOL forceReadOnly, MFVideoArea* minDisplayAperture, in Guid riid, void** ppv) CreateFromMF2DBuffer2;
			}
		}
		
	}
}
