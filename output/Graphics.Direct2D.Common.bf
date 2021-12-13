using System;

// namespace Graphics.Direct2D.Common
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum D2D1_ALPHA_MODE : uint32
		{
			D2D1_ALPHA_MODE_UNKNOWN = 0,
			D2D1_ALPHA_MODE_PREMULTIPLIED = 1,
			D2D1_ALPHA_MODE_STRAIGHT = 2,
			D2D1_ALPHA_MODE_IGNORE = 3,
			D2D1_ALPHA_MODE_FORCE_DWORD = 4294967295,
		}
		[AllowDuplicates]
		public enum D2D1_FIGURE_BEGIN : uint32
		{
			D2D1_FIGURE_BEGIN_FILLED = 0,
			D2D1_FIGURE_BEGIN_HOLLOW = 1,
			D2D1_FIGURE_BEGIN_FORCE_DWORD = 4294967295,
		}
		[AllowDuplicates]
		public enum D2D1_FIGURE_END : uint32
		{
			D2D1_FIGURE_END_OPEN = 0,
			D2D1_FIGURE_END_CLOSED = 1,
			D2D1_FIGURE_END_FORCE_DWORD = 4294967295,
		}
		[AllowDuplicates]
		public enum D2D1_PATH_SEGMENT : uint32
		{
			D2D1_PATH_SEGMENT_NONE = 0,
			D2D1_PATH_SEGMENT_FORCE_UNSTROKED = 1,
			D2D1_PATH_SEGMENT_FORCE_ROUND_LINE_JOIN = 2,
			D2D1_PATH_SEGMENT_FORCE_DWORD = 4294967295,
		}
		[AllowDuplicates]
		public enum D2D1_FILL_MODE : uint32
		{
			D2D1_FILL_MODE_ALTERNATE = 0,
			D2D1_FILL_MODE_WINDING = 1,
			D2D1_FILL_MODE_FORCE_DWORD = 4294967295,
		}
		[AllowDuplicates]
		public enum D2D1_BORDER_MODE : uint32
		{
			D2D1_BORDER_MODE_SOFT = 0,
			D2D1_BORDER_MODE_HARD = 1,
			D2D1_BORDER_MODE_FORCE_DWORD = 4294967295,
		}
		[AllowDuplicates]
		public enum D2D1_BLEND_MODE : uint32
		{
			D2D1_BLEND_MODE_MULTIPLY = 0,
			D2D1_BLEND_MODE_SCREEN = 1,
			D2D1_BLEND_MODE_DARKEN = 2,
			D2D1_BLEND_MODE_LIGHTEN = 3,
			D2D1_BLEND_MODE_DISSOLVE = 4,
			D2D1_BLEND_MODE_COLOR_BURN = 5,
			D2D1_BLEND_MODE_LINEAR_BURN = 6,
			D2D1_BLEND_MODE_DARKER_COLOR = 7,
			D2D1_BLEND_MODE_LIGHTER_COLOR = 8,
			D2D1_BLEND_MODE_COLOR_DODGE = 9,
			D2D1_BLEND_MODE_LINEAR_DODGE = 10,
			D2D1_BLEND_MODE_OVERLAY = 11,
			D2D1_BLEND_MODE_SOFT_LIGHT = 12,
			D2D1_BLEND_MODE_HARD_LIGHT = 13,
			D2D1_BLEND_MODE_VIVID_LIGHT = 14,
			D2D1_BLEND_MODE_LINEAR_LIGHT = 15,
			D2D1_BLEND_MODE_PIN_LIGHT = 16,
			D2D1_BLEND_MODE_HARD_MIX = 17,
			D2D1_BLEND_MODE_DIFFERENCE = 18,
			D2D1_BLEND_MODE_EXCLUSION = 19,
			D2D1_BLEND_MODE_HUE = 20,
			D2D1_BLEND_MODE_SATURATION = 21,
			D2D1_BLEND_MODE_COLOR = 22,
			D2D1_BLEND_MODE_LUMINOSITY = 23,
			D2D1_BLEND_MODE_SUBTRACT = 24,
			D2D1_BLEND_MODE_DIVISION = 25,
			D2D1_BLEND_MODE_FORCE_DWORD = 4294967295,
		}
		[AllowDuplicates]
		public enum D2D1_COLORMATRIX_ALPHA_MODE : uint32
		{
			D2D1_COLORMATRIX_ALPHA_MODE_PREMULTIPLIED = 1,
			D2D1_COLORMATRIX_ALPHA_MODE_STRAIGHT = 2,
			D2D1_COLORMATRIX_ALPHA_MODE_FORCE_DWORD = 4294967295,
		}
		[AllowDuplicates]
		public enum D2D1_TURBULENCE_NOISE : uint32
		{
			D2D1_TURBULENCE_NOISE_FRACTAL_SUM = 0,
			D2D1_TURBULENCE_NOISE_TURBULENCE = 1,
			D2D1_TURBULENCE_NOISE_FORCE_DWORD = 4294967295,
		}
		[AllowDuplicates]
		public enum D2D1_COMPOSITE_MODE : uint32
		{
			D2D1_COMPOSITE_MODE_SOURCE_OVER = 0,
			D2D1_COMPOSITE_MODE_DESTINATION_OVER = 1,
			D2D1_COMPOSITE_MODE_SOURCE_IN = 2,
			D2D1_COMPOSITE_MODE_DESTINATION_IN = 3,
			D2D1_COMPOSITE_MODE_SOURCE_OUT = 4,
			D2D1_COMPOSITE_MODE_DESTINATION_OUT = 5,
			D2D1_COMPOSITE_MODE_SOURCE_ATOP = 6,
			D2D1_COMPOSITE_MODE_DESTINATION_ATOP = 7,
			D2D1_COMPOSITE_MODE_XOR = 8,
			D2D1_COMPOSITE_MODE_PLUS = 9,
			D2D1_COMPOSITE_MODE_SOURCE_COPY = 10,
			D2D1_COMPOSITE_MODE_BOUNDED_SOURCE_COPY = 11,
			D2D1_COMPOSITE_MODE_MASK_INVERT = 12,
			D2D1_COMPOSITE_MODE_FORCE_DWORD = 4294967295,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct D2D_COLOR_F
		{
			public float r;
			public float g;
			public float b;
			public float a;
		}
		[CRepr]
		public struct D2D1_COLOR_F
		{
			public float r;
			public float g;
			public float b;
			public float a;
		}
		[CRepr]
		public struct D2D1_PIXEL_FORMAT
		{
			public DXGI_FORMAT format;
			public D2D1_ALPHA_MODE alphaMode;
		}
		[CRepr]
		public struct D2D_POINT_2U
		{
			public uint32 x;
			public uint32 y;
		}
		[CRepr]
		public struct D2D_POINT_2F
		{
			public float x;
			public float y;
		}
		[CRepr]
		public struct D2D_VECTOR_2F
		{
			public float x;
			public float y;
		}
		[CRepr]
		public struct D2D_VECTOR_3F
		{
			public float x;
			public float y;
			public float z;
		}
		[CRepr]
		public struct D2D_VECTOR_4F
		{
			public float x;
			public float y;
			public float z;
			public float w;
		}
		[CRepr]
		public struct D2D_RECT_F
		{
			public float left;
			public float top;
			public float right;
			public float bottom;
		}
		[CRepr]
		public struct D2D_RECT_U
		{
			public uint32 left;
			public uint32 top;
			public uint32 right;
			public uint32 bottom;
		}
		[CRepr]
		public struct D2D_SIZE_F
		{
			public float width;
			public float height;
		}
		[CRepr]
		public struct D2D_SIZE_U
		{
			public uint32 width;
			public uint32 height;
		}
		[CRepr]
		public struct D2D_MATRIX_3X2_F
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous1_e__Struct Anonymous1;
				public _Anonymous2_e__Struct Anonymous2;
				public float[6] m;
				
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public float m11;
					public float m12;
					public float m21;
					public float m22;
					public float dx;
					public float dy;
				}
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public float _11;
					public float _12;
					public float _21;
					public float _22;
					public float _31;
					public float _32;
				}
			}
		}
		[CRepr]
		public struct D2D_MATRIX_4X3_F
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public float[12] m;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public float _11;
					public float _12;
					public float _13;
					public float _21;
					public float _22;
					public float _23;
					public float _31;
					public float _32;
					public float _33;
					public float _41;
					public float _42;
					public float _43;
				}
			}
		}
		[CRepr]
		public struct D2D_MATRIX_4X4_F
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public float[16] m;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public float _11;
					public float _12;
					public float _13;
					public float _14;
					public float _21;
					public float _22;
					public float _23;
					public float _24;
					public float _31;
					public float _32;
					public float _33;
					public float _34;
					public float _41;
					public float _42;
					public float _43;
					public float _44;
				}
			}
		}
		[CRepr]
		public struct D2D_MATRIX_5X4_F
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public float[20] m;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public float _11;
					public float _12;
					public float _13;
					public float _14;
					public float _21;
					public float _22;
					public float _23;
					public float _24;
					public float _31;
					public float _32;
					public float _33;
					public float _34;
					public float _41;
					public float _42;
					public float _43;
					public float _44;
					public float _51;
					public float _52;
					public float _53;
					public float _54;
				}
			}
		}
		[CRepr]
		public struct D2D1_BEZIER_SEGMENT
		{
			public D2D_POINT_2F point1;
			public D2D_POINT_2F point2;
			public D2D_POINT_2F point3;
		}
		
		// --- COM Interfaces ---
		
		public struct ID2D1SimplifiedGeometrySink {}
		
	}
}
