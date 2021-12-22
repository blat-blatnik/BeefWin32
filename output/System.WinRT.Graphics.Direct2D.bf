using System;

// namespace System.WinRT.Graphics.Direct2D
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum GRAPHICS_EFFECT_PROPERTY_MAPPING : int32
		{
			GRAPHICS_EFFECT_PROPERTY_MAPPING_UNKNOWN = 0,
			GRAPHICS_EFFECT_PROPERTY_MAPPING_DIRECT = 1,
			GRAPHICS_EFFECT_PROPERTY_MAPPING_VECTORX = 2,
			GRAPHICS_EFFECT_PROPERTY_MAPPING_VECTORY = 3,
			GRAPHICS_EFFECT_PROPERTY_MAPPING_VECTORZ = 4,
			GRAPHICS_EFFECT_PROPERTY_MAPPING_VECTORW = 5,
			GRAPHICS_EFFECT_PROPERTY_MAPPING_RECT_TO_VECTOR4 = 6,
			GRAPHICS_EFFECT_PROPERTY_MAPPING_RADIANS_TO_DEGREES = 7,
			GRAPHICS_EFFECT_PROPERTY_MAPPING_COLORMATRIX_ALPHA_MODE = 8,
			GRAPHICS_EFFECT_PROPERTY_MAPPING_COLOR_TO_VECTOR3 = 9,
			GRAPHICS_EFFECT_PROPERTY_MAPPING_COLOR_TO_VECTOR4 = 10,
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IGraphicsEffectD2D1Interop : IUnknown
		{
			public const new Guid IID = .(0x2fc57384, 0xa068, 0x44d7, 0xa3, 0x31, 0x30, 0x98, 0x2f, 0xcf, 0x71, 0x77);
			
			public function HRESULT(IGraphicsEffectD2D1Interop *self, Guid* id) GetEffectId;
			public function HRESULT(IGraphicsEffectD2D1Interop *self, PWSTR name, uint32* index, GRAPHICS_EFFECT_PROPERTY_MAPPING* mapping) GetNamedPropertyMapping;
			public function HRESULT(IGraphicsEffectD2D1Interop *self, uint32* count) GetPropertyCount;
			public function HRESULT(IGraphicsEffectD2D1Interop *self, uint32 index, void* value) GetProperty;
			public function HRESULT(IGraphicsEffectD2D1Interop *self, uint32 index, void* source) GetSource;
			public function HRESULT(IGraphicsEffectD2D1Interop *self, uint32* count) GetSourceCount;
		}
		[CRepr]
		public struct IGeometrySource2DInterop : IUnknown
		{
			public const new Guid IID = .(0x0657af73, 0x53fd, 0x47cf, 0x84, 0xff, 0xc8, 0x49, 0x2d, 0x2a, 0x80, 0xa3);
			
			public function HRESULT(IGeometrySource2DInterop *self, ID2D1Geometry** value) GetGeometry;
			public function HRESULT(IGeometrySource2DInterop *self, ID2D1Factory* factory, ID2D1Geometry** value) TryGetGeometryUsingFactory;
		}
		
	}
}
