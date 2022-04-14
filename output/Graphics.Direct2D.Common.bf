using System;

// namespace Graphics.Direct2D.Common
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum D2D1_ALPHA_MODE : uint32
		{
			UNKNOWN = 0,
			PREMULTIPLIED = 1,
			STRAIGHT = 2,
			IGNORE = 3,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_FIGURE_BEGIN : uint32
		{
			FILLED = 0,
			HOLLOW = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_FIGURE_END : uint32
		{
			OPEN = 0,
			CLOSED = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_PATH_SEGMENT : uint32
		{
			NONE = 0,
			FORCE_UNSTROKED = 1,
			FORCE_ROUND_LINE_JOIN = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_FILL_MODE : uint32
		{
			ALTERNATE = 0,
			WINDING = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BORDER_MODE : uint32
		{
			SOFT = 0,
			HARD = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BLEND_MODE : uint32
		{
			MULTIPLY = 0,
			SCREEN = 1,
			DARKEN = 2,
			LIGHTEN = 3,
			DISSOLVE = 4,
			COLOR_BURN = 5,
			LINEAR_BURN = 6,
			DARKER_COLOR = 7,
			LIGHTER_COLOR = 8,
			COLOR_DODGE = 9,
			LINEAR_DODGE = 10,
			OVERLAY = 11,
			SOFT_LIGHT = 12,
			HARD_LIGHT = 13,
			VIVID_LIGHT = 14,
			LINEAR_LIGHT = 15,
			PIN_LIGHT = 16,
			HARD_MIX = 17,
			DIFFERENCE = 18,
			EXCLUSION = 19,
			HUE = 20,
			SATURATION = 21,
			COLOR = 22,
			LUMINOSITY = 23,
			SUBTRACT = 24,
			DIVISION = 25,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COLORMATRIX_ALPHA_MODE : uint32
		{
			PREMULTIPLIED = 1,
			STRAIGHT = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_TURBULENCE_NOISE : uint32
		{
			FRACTAL_SUM = 0,
			TURBULENCE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COMPOSITE_MODE : uint32
		{
			SOURCE_OVER = 0,
			DESTINATION_OVER = 1,
			SOURCE_IN = 2,
			DESTINATION_IN = 3,
			SOURCE_OUT = 4,
			DESTINATION_OUT = 5,
			SOURCE_ATOP = 6,
			DESTINATION_ATOP = 7,
			XOR = 8,
			PLUS = 9,
			SOURCE_COPY = 10,
			BOUNDED_SOURCE_COPY = 11,
			MASK_INVERT = 12,
			FORCE_DWORD = 4294967295,
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
			
			public float[6] m { get => Anonymous.m; set mut => Anonymous.m = value; }
			
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
			
			public float[12] m { get => Anonymous.m; set mut => Anonymous.m = value; }
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public float[12] m;
				
				public float _11 { get => Anonymous._11; set mut => Anonymous._11 = value; }
				public float _12 { get => Anonymous._12; set mut => Anonymous._12 = value; }
				public float _13 { get => Anonymous._13; set mut => Anonymous._13 = value; }
				public float _21 { get => Anonymous._21; set mut => Anonymous._21 = value; }
				public float _22 { get => Anonymous._22; set mut => Anonymous._22 = value; }
				public float _23 { get => Anonymous._23; set mut => Anonymous._23 = value; }
				public float _31 { get => Anonymous._31; set mut => Anonymous._31 = value; }
				public float _32 { get => Anonymous._32; set mut => Anonymous._32 = value; }
				public float _33 { get => Anonymous._33; set mut => Anonymous._33 = value; }
				public float _41 { get => Anonymous._41; set mut => Anonymous._41 = value; }
				public float _42 { get => Anonymous._42; set mut => Anonymous._42 = value; }
				public float _43 { get => Anonymous._43; set mut => Anonymous._43 = value; }
				
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
			
			public float[16] m { get => Anonymous.m; set mut => Anonymous.m = value; }
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public float[16] m;
				
				public float _11 { get => Anonymous._11; set mut => Anonymous._11 = value; }
				public float _12 { get => Anonymous._12; set mut => Anonymous._12 = value; }
				public float _13 { get => Anonymous._13; set mut => Anonymous._13 = value; }
				public float _14 { get => Anonymous._14; set mut => Anonymous._14 = value; }
				public float _21 { get => Anonymous._21; set mut => Anonymous._21 = value; }
				public float _22 { get => Anonymous._22; set mut => Anonymous._22 = value; }
				public float _23 { get => Anonymous._23; set mut => Anonymous._23 = value; }
				public float _24 { get => Anonymous._24; set mut => Anonymous._24 = value; }
				public float _31 { get => Anonymous._31; set mut => Anonymous._31 = value; }
				public float _32 { get => Anonymous._32; set mut => Anonymous._32 = value; }
				public float _33 { get => Anonymous._33; set mut => Anonymous._33 = value; }
				public float _34 { get => Anonymous._34; set mut => Anonymous._34 = value; }
				public float _41 { get => Anonymous._41; set mut => Anonymous._41 = value; }
				public float _42 { get => Anonymous._42; set mut => Anonymous._42 = value; }
				public float _43 { get => Anonymous._43; set mut => Anonymous._43 = value; }
				public float _44 { get => Anonymous._44; set mut => Anonymous._44 = value; }
				
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
			
			public float[20] m { get => Anonymous.m; set mut => Anonymous.m = value; }
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public float[20] m;
				
				public float _11 { get => Anonymous._11; set mut => Anonymous._11 = value; }
				public float _12 { get => Anonymous._12; set mut => Anonymous._12 = value; }
				public float _13 { get => Anonymous._13; set mut => Anonymous._13 = value; }
				public float _14 { get => Anonymous._14; set mut => Anonymous._14 = value; }
				public float _21 { get => Anonymous._21; set mut => Anonymous._21 = value; }
				public float _22 { get => Anonymous._22; set mut => Anonymous._22 = value; }
				public float _23 { get => Anonymous._23; set mut => Anonymous._23 = value; }
				public float _24 { get => Anonymous._24; set mut => Anonymous._24 = value; }
				public float _31 { get => Anonymous._31; set mut => Anonymous._31 = value; }
				public float _32 { get => Anonymous._32; set mut => Anonymous._32 = value; }
				public float _33 { get => Anonymous._33; set mut => Anonymous._33 = value; }
				public float _34 { get => Anonymous._34; set mut => Anonymous._34 = value; }
				public float _41 { get => Anonymous._41; set mut => Anonymous._41 = value; }
				public float _42 { get => Anonymous._42; set mut => Anonymous._42 = value; }
				public float _43 { get => Anonymous._43; set mut => Anonymous._43 = value; }
				public float _44 { get => Anonymous._44; set mut => Anonymous._44 = value; }
				public float _51 { get => Anonymous._51; set mut => Anonymous._51 = value; }
				public float _52 { get => Anonymous._52; set mut => Anonymous._52 = value; }
				public float _53 { get => Anonymous._53; set mut => Anonymous._53 = value; }
				public float _54 { get => Anonymous._54; set mut => Anonymous._54 = value; }
				
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
		
		[CRepr]
		public struct ID2D1SimplifiedGeometrySink : IUnknown
		{
			public const new Guid IID = .(0x2cd9069e, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetFillMode(D2D1_FILL_MODE fillMode) mut => VT.SetFillMode(ref this, fillMode);
			public void SetSegmentFlags(D2D1_PATH_SEGMENT vertexFlags) mut => VT.SetSegmentFlags(ref this, vertexFlags);
			public void BeginFigure(D2D_POINT_2F startPoint, D2D1_FIGURE_BEGIN figureBegin) mut => VT.BeginFigure(ref this, startPoint, figureBegin);
			public void AddLines(D2D_POINT_2F* points, uint32 pointsCount) mut => VT.AddLines(ref this, points, pointsCount);
			public void AddBeziers(D2D1_BEZIER_SEGMENT* beziers, uint32 beziersCount) mut => VT.AddBeziers(ref this, beziers, beziersCount);
			public void EndFigure(D2D1_FIGURE_END figureEnd) mut => VT.EndFigure(ref this, figureEnd);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SimplifiedGeometrySink self, D2D1_FILL_MODE fillMode) SetFillMode;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SimplifiedGeometrySink self, D2D1_PATH_SEGMENT vertexFlags) SetSegmentFlags;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SimplifiedGeometrySink self, D2D_POINT_2F startPoint, D2D1_FIGURE_BEGIN figureBegin) BeginFigure;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SimplifiedGeometrySink self, D2D_POINT_2F* points, uint32 pointsCount) AddLines;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SimplifiedGeometrySink self, D2D1_BEZIER_SEGMENT* beziers, uint32 beziersCount) AddBeziers;
				public new function [CallingConvention(.Stdcall)] void(ref ID2D1SimplifiedGeometrySink self, D2D1_FIGURE_END figureEnd) EndFigure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID2D1SimplifiedGeometrySink self) Close;
			}
		}
		
	}
}
