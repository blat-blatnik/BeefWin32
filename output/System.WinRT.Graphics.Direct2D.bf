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
			
			public HRESULT GetEffectId(Guid* id) mut
			{
				return VT.GetEffectId(&this, id);
			}
			public HRESULT GetNamedPropertyMapping(PWSTR name, uint32* index, GRAPHICS_EFFECT_PROPERTY_MAPPING* mapping) mut
			{
				return VT.GetNamedPropertyMapping(&this, name, index, mapping);
			}
			public HRESULT GetPropertyCount(uint32* count) mut
			{
				return VT.GetPropertyCount(&this, count);
			}
			public HRESULT GetProperty(uint32 index, void* value) mut
			{
				return VT.GetProperty(&this, index, value);
			}
			public HRESULT GetSource(uint32 index, void* source) mut
			{
				return VT.GetSource(&this, index, source);
			}
			public HRESULT GetSourceCount(uint32* count) mut
			{
				return VT.GetSourceCount(&this, count);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IGraphicsEffectD2D1Interop *self, Guid* id) GetEffectId;
				public new function HRESULT(IGraphicsEffectD2D1Interop *self, PWSTR name, uint32* index, GRAPHICS_EFFECT_PROPERTY_MAPPING* mapping) GetNamedPropertyMapping;
				public new function HRESULT(IGraphicsEffectD2D1Interop *self, uint32* count) GetPropertyCount;
				public new function HRESULT(IGraphicsEffectD2D1Interop *self, uint32 index, void* value) GetProperty;
				public new function HRESULT(IGraphicsEffectD2D1Interop *self, uint32 index, void* source) GetSource;
				public new function HRESULT(IGraphicsEffectD2D1Interop *self, uint32* count) GetSourceCount;
			}
		}
		[CRepr]
		public struct IGeometrySource2DInterop : IUnknown
		{
			public const new Guid IID = .(0x0657af73, 0x53fd, 0x47cf, 0x84, 0xff, 0xc8, 0x49, 0x2d, 0x2a, 0x80, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGeometry(ID2D1Geometry** value) mut
			{
				return VT.GetGeometry(&this, value);
			}
			public HRESULT TryGetGeometryUsingFactory(ID2D1Factory* factory, ID2D1Geometry** value) mut
			{
				return VT.TryGetGeometryUsingFactory(&this, factory, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IGeometrySource2DInterop *self, ID2D1Geometry** value) GetGeometry;
				public new function HRESULT(IGeometrySource2DInterop *self, ID2D1Factory* factory, ID2D1Geometry** value) TryGetGeometryUsingFactory;
			}
		}
		
	}
}
