using System;

// namespace System.Com.UI
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IThumbnailExtractor : IUnknown
		{
			public const new Guid IID = .(0x969dc708, 0x5c76, 0x11d1, 0x8d, 0x86, 0x00, 0x00, 0xf8, 0x04, 0xb0, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ExtractThumbnail(IStorage* pStg, uint32 ulLength, uint32 ulHeight, uint32* pulOutputLength, uint32* pulOutputHeight, HBITMAP* phOutputBitmap) mut
			{
				return VT.ExtractThumbnail(&this, pStg, ulLength, ulHeight, pulOutputLength, pulOutputHeight, phOutputBitmap);
			}
			public HRESULT OnFileUpdated(IStorage* pStg) mut
			{
				return VT.OnFileUpdated(&this, pStg);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IThumbnailExtractor *self, IStorage* pStg, uint32 ulLength, uint32 ulHeight, uint32* pulOutputLength, uint32* pulOutputHeight, HBITMAP* phOutputBitmap) ExtractThumbnail;
				public new function HRESULT(IThumbnailExtractor *self, IStorage* pStg) OnFileUpdated;
			}
		}
		[CRepr]
		public struct IDummyHICONIncluder : IUnknown
		{
			public const new Guid IID = .(0x947990de, 0xcc28, 0x11d2, 0xa0, 0xf7, 0x00, 0x80, 0x5f, 0x85, 0x8f, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Dummy(HICON h1, HDC h2) mut
			{
				return VT.Dummy(&this, h1, h2);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDummyHICONIncluder *self, HICON h1, HDC h2) Dummy;
			}
		}
		
	}
}
