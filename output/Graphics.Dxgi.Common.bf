namespace Win32.Graphics.Dxgi.Common;

using System;
using Win32.Foundation;

static
{
	#region Constants
	public const uint32 _FACDXGI = 2170;
	public const uint32 DXGI_CPU_ACCESS_NONE = 0;
	public const uint32 DXGI_CPU_ACCESS_DYNAMIC = 1;
	public const uint32 DXGI_CPU_ACCESS_READ_WRITE = 2;
	public const uint32 DXGI_CPU_ACCESS_SCRATCH = 3;
	public const uint32 DXGI_CPU_ACCESS_FIELD = 15;
	public const uint32 DXGI_FORMAT_DEFINED = 1;
	public const uint32 DXGI_STANDARD_MULTISAMPLE_QUALITY_PATTERN = 4294967295;
	public const uint32 DXGI_CENTER_MULTISAMPLE_QUALITY_PATTERN = 4294967294;
	#endregion
	
	#region Enums
	public enum DXGI_COLOR_SPACE_TYPE : int32
	{
		RGB_FULL_G22_NONE_P709 = 0,
		RGB_FULL_G10_NONE_P709 = 1,
		RGB_STUDIO_G22_NONE_P709 = 2,
		RGB_STUDIO_G22_NONE_P2020 = 3,
		RESERVED = 4,
		YCBCR_FULL_G22_NONE_P709_X601 = 5,
		YCBCR_STUDIO_G22_LEFT_P601 = 6,
		YCBCR_FULL_G22_LEFT_P601 = 7,
		YCBCR_STUDIO_G22_LEFT_P709 = 8,
		YCBCR_FULL_G22_LEFT_P709 = 9,
		YCBCR_STUDIO_G22_LEFT_P2020 = 10,
		YCBCR_FULL_G22_LEFT_P2020 = 11,
		RGB_FULL_G2084_NONE_P2020 = 12,
		YCBCR_STUDIO_G2084_LEFT_P2020 = 13,
		RGB_STUDIO_G2084_NONE_P2020 = 14,
		YCBCR_STUDIO_G22_TOPLEFT_P2020 = 15,
		YCBCR_STUDIO_G2084_TOPLEFT_P2020 = 16,
		RGB_FULL_G22_NONE_P2020 = 17,
		YCBCR_STUDIO_GHLG_TOPLEFT_P2020 = 18,
		YCBCR_FULL_GHLG_TOPLEFT_P2020 = 19,
		RGB_STUDIO_G24_NONE_P709 = 20,
		RGB_STUDIO_G24_NONE_P2020 = 21,
		YCBCR_STUDIO_G24_LEFT_P709 = 22,
		YCBCR_STUDIO_G24_LEFT_P2020 = 23,
		YCBCR_STUDIO_G24_TOPLEFT_P2020 = 24,
		CUSTOM = -1,
	}
	public enum DXGI_FORMAT : uint32
	{
		UNKNOWN = 0,
		R32G32B32A32_TYPELESS = 1,
		R32G32B32A32_FLOAT = 2,
		R32G32B32A32_UINT = 3,
		R32G32B32A32_SINT = 4,
		R32G32B32_TYPELESS = 5,
		R32G32B32_FLOAT = 6,
		R32G32B32_UINT = 7,
		R32G32B32_SINT = 8,
		R16G16B16A16_TYPELESS = 9,
		R16G16B16A16_FLOAT = 10,
		R16G16B16A16_UNORM = 11,
		R16G16B16A16_UINT = 12,
		R16G16B16A16_SNORM = 13,
		R16G16B16A16_SINT = 14,
		R32G32_TYPELESS = 15,
		R32G32_FLOAT = 16,
		R32G32_UINT = 17,
		R32G32_SINT = 18,
		R32G8X24_TYPELESS = 19,
		D32_FLOAT_S8X24_UINT = 20,
		R32_FLOAT_X8X24_TYPELESS = 21,
		X32_TYPELESS_G8X24_UINT = 22,
		R10G10B10A2_TYPELESS = 23,
		R10G10B10A2_UNORM = 24,
		R10G10B10A2_UINT = 25,
		R11G11B10_FLOAT = 26,
		R8G8B8A8_TYPELESS = 27,
		R8G8B8A8_UNORM = 28,
		R8G8B8A8_UNORM_SRGB = 29,
		R8G8B8A8_UINT = 30,
		R8G8B8A8_SNORM = 31,
		R8G8B8A8_SINT = 32,
		R16G16_TYPELESS = 33,
		R16G16_FLOAT = 34,
		R16G16_UNORM = 35,
		R16G16_UINT = 36,
		R16G16_SNORM = 37,
		R16G16_SINT = 38,
		R32_TYPELESS = 39,
		D32_FLOAT = 40,
		R32_FLOAT = 41,
		R32_UINT = 42,
		R32_SINT = 43,
		R24G8_TYPELESS = 44,
		D24_UNORM_S8_UINT = 45,
		R24_UNORM_X8_TYPELESS = 46,
		X24_TYPELESS_G8_UINT = 47,
		R8G8_TYPELESS = 48,
		R8G8_UNORM = 49,
		R8G8_UINT = 50,
		R8G8_SNORM = 51,
		R8G8_SINT = 52,
		R16_TYPELESS = 53,
		R16_FLOAT = 54,
		D16_UNORM = 55,
		R16_UNORM = 56,
		R16_UINT = 57,
		R16_SNORM = 58,
		R16_SINT = 59,
		R8_TYPELESS = 60,
		R8_UNORM = 61,
		R8_UINT = 62,
		R8_SNORM = 63,
		R8_SINT = 64,
		A8_UNORM = 65,
		R1_UNORM = 66,
		R9G9B9E5_SHAREDEXP = 67,
		R8G8_B8G8_UNORM = 68,
		G8R8_G8B8_UNORM = 69,
		BC1_TYPELESS = 70,
		BC1_UNORM = 71,
		BC1_UNORM_SRGB = 72,
		BC2_TYPELESS = 73,
		BC2_UNORM = 74,
		BC2_UNORM_SRGB = 75,
		BC3_TYPELESS = 76,
		BC3_UNORM = 77,
		BC3_UNORM_SRGB = 78,
		BC4_TYPELESS = 79,
		BC4_UNORM = 80,
		BC4_SNORM = 81,
		BC5_TYPELESS = 82,
		BC5_UNORM = 83,
		BC5_SNORM = 84,
		B5G6R5_UNORM = 85,
		B5G5R5A1_UNORM = 86,
		B8G8R8A8_UNORM = 87,
		B8G8R8X8_UNORM = 88,
		R10G10B10_XR_BIAS_A2_UNORM = 89,
		B8G8R8A8_TYPELESS = 90,
		B8G8R8A8_UNORM_SRGB = 91,
		B8G8R8X8_TYPELESS = 92,
		B8G8R8X8_UNORM_SRGB = 93,
		BC6H_TYPELESS = 94,
		BC6H_UF16 = 95,
		BC6H_SF16 = 96,
		BC7_TYPELESS = 97,
		BC7_UNORM = 98,
		BC7_UNORM_SRGB = 99,
		AYUV = 100,
		Y410 = 101,
		Y416 = 102,
		NV12 = 103,
		P010 = 104,
		P016 = 105,
		_420_OPAQUE = 106,
		YUY2 = 107,
		Y210 = 108,
		Y216 = 109,
		NV11 = 110,
		AI44 = 111,
		IA44 = 112,
		P8 = 113,
		A8P8 = 114,
		B4G4R4A4_UNORM = 115,
		P208 = 130,
		V208 = 131,
		V408 = 132,
		SAMPLER_FEEDBACK_MIN_MIP_OPAQUE = 189,
		SAMPLER_FEEDBACK_MIP_REGION_USED_OPAQUE = 190,
		FORCE_UINT = 4294967295,
	}
	public enum DXGI_MODE_SCANLINE_ORDER : int32
	{
		UNSPECIFIED = 0,
		PROGRESSIVE = 1,
		UPPER_FIELD_FIRST = 2,
		LOWER_FIELD_FIRST = 3,
	}
	public enum DXGI_MODE_SCALING : int32
	{
		UNSPECIFIED = 0,
		CENTERED = 1,
		STRETCHED = 2,
	}
	public enum DXGI_MODE_ROTATION : int32
	{
		UNSPECIFIED = 0,
		IDENTITY = 1,
		ROTATE90 = 2,
		ROTATE180 = 3,
		ROTATE270 = 4,
	}
	public enum DXGI_ALPHA_MODE : uint32
	{
		UNSPECIFIED = 0,
		PREMULTIPLIED = 1,
		STRAIGHT = 2,
		IGNORE = 3,
		FORCE_DWORD = 4294967295,
	}
	#endregion
	
	#region Structs
	[CRepr]
	public struct DXGI_RATIONAL
	{
		public uint32 Numerator;
		public uint32 Denominator;
	}
	[CRepr]
	public struct DXGI_SAMPLE_DESC
	{
		public uint32 Count;
		public uint32 Quality;
	}
	[CRepr]
	public struct DXGI_RGB
	{
		public float Red;
		public float Green;
		public float Blue;
	}
	[CRepr]
	public struct DXGI_GAMMA_CONTROL
	{
		public DXGI_RGB Scale;
		public DXGI_RGB Offset;
		public DXGI_RGB[1025] GammaCurve;
	}
	[CRepr]
	public struct DXGI_GAMMA_CONTROL_CAPABILITIES
	{
		public BOOL ScaleAndOffsetSupported;
		public float MaxConvertedValue;
		public float MinConvertedValue;
		public uint32 NumGammaControlPoints;
		public float[1025] ControlPointPositions;
	}
	[CRepr]
	public struct DXGI_MODE_DESC
	{
		public uint32 Width;
		public uint32 Height;
		public DXGI_RATIONAL RefreshRate;
		public DXGI_FORMAT Format;
		public DXGI_MODE_SCANLINE_ORDER ScanlineOrdering;
		public DXGI_MODE_SCALING Scaling;
	}
	[CRepr]
	public struct DXGI_JPEG_DC_HUFFMAN_TABLE
	{
		public uint8[12] CodeCounts;
		public uint8[12] CodeValues;
	}
	[CRepr]
	public struct DXGI_JPEG_AC_HUFFMAN_TABLE
	{
		public uint8[16] CodeCounts;
		public uint8[162] CodeValues;
	}
	[CRepr]
	public struct DXGI_JPEG_QUANTIZATION_TABLE
	{
		public uint8[64] Elements;
	}
	#endregion
	
}
