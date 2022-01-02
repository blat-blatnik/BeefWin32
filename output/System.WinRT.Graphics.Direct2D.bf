using System;

// namespace System.WinRT.Graphics.Direct2D
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum GRAPHICS_EFFECT_PROPERTY_MAPPING : int32
		{
			UNKNOWN = 0,
			DIRECT = 1,
			VECTORX = 2,
			VECTORY = 3,
			VECTORZ = 4,
			VECTORW = 5,
			RECT_TO_VECTOR4 = 6,
			RADIANS_TO_DEGREES = 7,
			COLORMATRIX_ALPHA_MODE = 8,
			COLOR_TO_VECTOR3 = 9,
			COLOR_TO_VECTOR4 = 10,
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IGraphicsEffectD2D1Interop : IUnknown
		{
			public const new Guid IID = .(0x2fc57384, 0xa068, 0x44d7, 0xa3, 0x31, 0x30, 0x98, 0x2f, 0xcf, 0x71, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEffectId(out Guid id) mut => VT.GetEffectId(ref this, out id);
			public HRESULT GetNamedPropertyMapping(PWSTR name, out uint32 index, out GRAPHICS_EFFECT_PROPERTY_MAPPING mapping) mut => VT.GetNamedPropertyMapping(ref this, name, out index, out mapping);
			public HRESULT GetPropertyCount(out uint32 count) mut => VT.GetPropertyCount(ref this, out count);
			public HRESULT GetProperty(uint32 index, void* value) mut => VT.GetProperty(ref this, index, value);
			public HRESULT GetSource(uint32 index, void* source) mut => VT.GetSource(ref this, index, source);
			public HRESULT GetSourceCount(out uint32 count) mut => VT.GetSourceCount(ref this, out count);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGraphicsEffectD2D1Interop self, out Guid id) GetEffectId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGraphicsEffectD2D1Interop self, PWSTR name, out uint32 index, out GRAPHICS_EFFECT_PROPERTY_MAPPING mapping) GetNamedPropertyMapping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGraphicsEffectD2D1Interop self, out uint32 count) GetPropertyCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGraphicsEffectD2D1Interop self, uint32 index, void* value) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGraphicsEffectD2D1Interop self, uint32 index, void* source) GetSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGraphicsEffectD2D1Interop self, out uint32 count) GetSourceCount;
			}
		}
		[CRepr]
		public struct IGeometrySource2DInterop : IUnknown
		{
			public const new Guid IID = .(0x0657af73, 0x53fd, 0x47cf, 0x84, 0xff, 0xc8, 0x49, 0x2d, 0x2a, 0x80, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGeometry(out ID2D1Geometry* value) mut => VT.GetGeometry(ref this, out value);
			public HRESULT TryGetGeometryUsingFactory(ref ID2D1Factory factory, ID2D1Geometry** value) mut => VT.TryGetGeometryUsingFactory(ref this, ref factory, value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGeometrySource2DInterop self, out ID2D1Geometry* value) GetGeometry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGeometrySource2DInterop self, ref ID2D1Factory factory, ID2D1Geometry** value) TryGetGeometryUsingFactory;
			}
		}
		
	}
}
