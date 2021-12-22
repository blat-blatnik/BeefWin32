using System;

// namespace Graphics.Direct2D
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const float D2D1_DEFAULT_FLATTENING_TOLERANCE = 0.25f;
		public const Guid CLSID_D2D12DAffineTransform = .(0x6aa97485, 0x6354, 0x4cfc, 0x90, 0x8c, 0xe4, 0xa7, 0x4f, 0x62, 0xc9, 0x6c);
		public const Guid CLSID_D2D13DPerspectiveTransform = .(0xc2844d0b, 0x3d86, 0x46e7, 0x85, 0xba, 0x52, 0x6c, 0x92, 0x40, 0xf3, 0xfb);
		public const Guid CLSID_D2D13DTransform = .(0xe8467b04, 0xec61, 0x4b8a, 0xb5, 0xde, 0xd4, 0xd7, 0x3d, 0xeb, 0xea, 0x5a);
		public const Guid CLSID_D2D1ArithmeticComposite = .(0xfc151437, 0x049a, 0x4784, 0xa2, 0x4a, 0xf1, 0xc4, 0xda, 0xf2, 0x09, 0x87);
		public const Guid CLSID_D2D1Atlas = .(0x913e2be4, 0xfdcf, 0x4fe2, 0xa5, 0xf0, 0x24, 0x54, 0xf1, 0x4f, 0xf4, 0x08);
		public const Guid CLSID_D2D1BitmapSource = .(0x5fb6c24d, 0xc6dd, 0x4231, 0x94, 0x04, 0x50, 0xf4, 0xd5, 0xc3, 0x25, 0x2d);
		public const Guid CLSID_D2D1Blend = .(0x81c5b77b, 0x13f8, 0x4cdd, 0xad, 0x20, 0xc8, 0x90, 0x54, 0x7a, 0xc6, 0x5d);
		public const Guid CLSID_D2D1Border = .(0x2a2d49c0, 0x4acf, 0x43c7, 0x8c, 0x6a, 0x7c, 0x4a, 0x27, 0x87, 0x4d, 0x27);
		public const Guid CLSID_D2D1Brightness = .(0x8cea8d1e, 0x77b0, 0x4986, 0xb3, 0xb9, 0x2f, 0x0c, 0x0e, 0xae, 0x78, 0x87);
		public const Guid CLSID_D2D1ColorManagement = .(0x1a28524c, 0xfdd6, 0x4aa4, 0xae, 0x8f, 0x83, 0x7e, 0xb8, 0x26, 0x7b, 0x37);
		public const Guid CLSID_D2D1ColorMatrix = .(0x921f03d6, 0x641c, 0x47df, 0x85, 0x2d, 0xb4, 0xbb, 0x61, 0x53, 0xae, 0x11);
		public const Guid CLSID_D2D1Composite = .(0x48fc9f51, 0xf6ac, 0x48f1, 0x8b, 0x58, 0x3b, 0x28, 0xac, 0x46, 0xf7, 0x6d);
		public const Guid CLSID_D2D1ConvolveMatrix = .(0x407f8c08, 0x5533, 0x4331, 0xa3, 0x41, 0x23, 0xcc, 0x38, 0x77, 0x84, 0x3e);
		public const Guid CLSID_D2D1Crop = .(0xe23f7110, 0x0e9a, 0x4324, 0xaf, 0x47, 0x6a, 0x2c, 0x0c, 0x46, 0xf3, 0x5b);
		public const Guid CLSID_D2D1DirectionalBlur = .(0x174319a6, 0x58e9, 0x49b2, 0xbb, 0x63, 0xca, 0xf2, 0xc8, 0x11, 0xa3, 0xdb);
		public const Guid CLSID_D2D1DiscreteTransfer = .(0x90866fcd, 0x488e, 0x454b, 0xaf, 0x06, 0xe5, 0x04, 0x1b, 0x66, 0xc3, 0x6c);
		public const Guid CLSID_D2D1DisplacementMap = .(0xedc48364, 0x0417, 0x4111, 0x94, 0x50, 0x43, 0x84, 0x5f, 0xa9, 0xf8, 0x90);
		public const Guid CLSID_D2D1DistantDiffuse = .(0x3e7efd62, 0xa32d, 0x46d4, 0xa8, 0x3c, 0x52, 0x78, 0x88, 0x9a, 0xc9, 0x54);
		public const Guid CLSID_D2D1DistantSpecular = .(0x428c1ee5, 0x77b8, 0x4450, 0x8a, 0xb5, 0x72, 0x21, 0x9c, 0x21, 0xab, 0xda);
		public const Guid CLSID_D2D1DpiCompensation = .(0x6c26c5c7, 0x34e0, 0x46fc, 0x9c, 0xfd, 0xe5, 0x82, 0x37, 0x06, 0xe2, 0x28);
		public const Guid CLSID_D2D1Flood = .(0x61c23c20, 0xae69, 0x4d8e, 0x94, 0xcf, 0x50, 0x07, 0x8d, 0xf6, 0x38, 0xf2);
		public const Guid CLSID_D2D1GammaTransfer = .(0x409444c4, 0xc419, 0x41a0, 0xb0, 0xc1, 0x8c, 0xd0, 0xc0, 0xa1, 0x8e, 0x42);
		public const Guid CLSID_D2D1GaussianBlur = .(0x1feb6d69, 0x2fe6, 0x4ac9, 0x8c, 0x58, 0x1d, 0x7f, 0x93, 0xe7, 0xa6, 0xa5);
		public const Guid CLSID_D2D1Scale = .(0x9daf9369, 0x3846, 0x4d0e, 0xa4, 0x4e, 0x0c, 0x60, 0x79, 0x34, 0xa5, 0xd7);
		public const Guid CLSID_D2D1Histogram = .(0x881db7d0, 0xf7ee, 0x4d4d, 0xa6, 0xd2, 0x46, 0x97, 0xac, 0xc6, 0x6e, 0xe8);
		public const Guid CLSID_D2D1HueRotation = .(0x0f4458ec, 0x4b32, 0x491b, 0x9e, 0x85, 0xbd, 0x73, 0xf4, 0x4d, 0x3e, 0xb6);
		public const Guid CLSID_D2D1LinearTransfer = .(0xad47c8fd, 0x63ef, 0x4acc, 0x9b, 0x51, 0x67, 0x97, 0x9c, 0x03, 0x6c, 0x06);
		public const Guid CLSID_D2D1LuminanceToAlpha = .(0x41251ab7, 0x0beb, 0x46f8, 0x9d, 0xa7, 0x59, 0xe9, 0x3f, 0xcc, 0xe5, 0xde);
		public const Guid CLSID_D2D1Morphology = .(0xeae6c40d, 0x626a, 0x4c2d, 0xbf, 0xcb, 0x39, 0x10, 0x01, 0xab, 0xe2, 0x02);
		public const Guid CLSID_D2D1OpacityMetadata = .(0x6c53006a, 0x4450, 0x4199, 0xaa, 0x5b, 0xad, 0x16, 0x56, 0xfe, 0xce, 0x5e);
		public const Guid CLSID_D2D1PointDiffuse = .(0xb9e303c3, 0xc08c, 0x4f91, 0x8b, 0x7b, 0x38, 0x65, 0x6b, 0xc4, 0x8c, 0x20);
		public const Guid CLSID_D2D1PointSpecular = .(0x09c3ca26, 0x3ae2, 0x4f09, 0x9e, 0xbc, 0xed, 0x38, 0x65, 0xd5, 0x3f, 0x22);
		public const Guid CLSID_D2D1Premultiply = .(0x06eab419, 0xdeed, 0x4018, 0x80, 0xd2, 0x3e, 0x1d, 0x47, 0x1a, 0xde, 0xb2);
		public const Guid CLSID_D2D1Saturation = .(0x5cb2d9cf, 0x327d, 0x459f, 0xa0, 0xce, 0x40, 0xc0, 0xb2, 0x08, 0x6b, 0xf7);
		public const Guid CLSID_D2D1Shadow = .(0xc67ea361, 0x1863, 0x4e69, 0x89, 0xdb, 0x69, 0x5d, 0x3e, 0x9a, 0x5b, 0x6b);
		public const Guid CLSID_D2D1SpotDiffuse = .(0x818a1105, 0x7932, 0x44f4, 0xaa, 0x86, 0x08, 0xae, 0x7b, 0x2f, 0x2c, 0x93);
		public const Guid CLSID_D2D1SpotSpecular = .(0xedae421e, 0x7654, 0x4a37, 0x9d, 0xb8, 0x71, 0xac, 0xc1, 0xbe, 0xb3, 0xc1);
		public const Guid CLSID_D2D1TableTransfer = .(0x5bf818c3, 0x5e43, 0x48cb, 0xb6, 0x31, 0x86, 0x83, 0x96, 0xd6, 0xa1, 0xd4);
		public const Guid CLSID_D2D1Tile = .(0xb0784138, 0x3b76, 0x4bc5, 0xb1, 0x3b, 0x0f, 0xa2, 0xad, 0x02, 0x65, 0x9f);
		public const Guid CLSID_D2D1Turbulence = .(0xcf2bb6ae, 0x889a, 0x4ad7, 0xba, 0x29, 0xa2, 0xfd, 0x73, 0x2c, 0x9f, 0xc9);
		public const Guid CLSID_D2D1UnPremultiply = .(0xfb9ac489, 0xad8d, 0x41ed, 0x99, 0x99, 0xbb, 0x63, 0x47, 0xd1, 0x10, 0xf7);
		public const Guid CLSID_D2D1YCbCr = .(0x99503cc1, 0x66c7, 0x45c9, 0xa8, 0x75, 0x8a, 0xd8, 0xa7, 0x91, 0x44, 0x01);
		public const Guid CLSID_D2D1Contrast = .(0xb648a78a, 0x0ed5, 0x4f80, 0xa9, 0x4a, 0x8e, 0x82, 0x5a, 0xca, 0x6b, 0x77);
		public const Guid CLSID_D2D1RgbToHue = .(0x23f3e5ec, 0x91e8, 0x4d3d, 0xad, 0x0a, 0xaf, 0xad, 0xc1, 0x00, 0x4a, 0xa1);
		public const Guid CLSID_D2D1HueToRgb = .(0x7b78a6bd, 0x0141, 0x4def, 0x8a, 0x52, 0x63, 0x56, 0xee, 0x0c, 0xbd, 0xd5);
		public const Guid CLSID_D2D1ChromaKey = .(0x74c01f5b, 0x2a0d, 0x408c, 0x88, 0xe2, 0xc7, 0xa3, 0xc7, 0x19, 0x77, 0x42);
		public const Guid CLSID_D2D1Emboss = .(0xb1c5eb2b, 0x0348, 0x43f0, 0x81, 0x07, 0x49, 0x57, 0xca, 0xcb, 0xa2, 0xae);
		public const Guid CLSID_D2D1Exposure = .(0xb56c8cfa, 0xf634, 0x41ee, 0xbe, 0xe0, 0xff, 0xa6, 0x17, 0x10, 0x60, 0x04);
		public const Guid CLSID_D2D1Grayscale = .(0x36dde0eb, 0x3725, 0x42e0, 0x83, 0x6d, 0x52, 0xfb, 0x20, 0xae, 0xe6, 0x44);
		public const Guid CLSID_D2D1Invert = .(0xe0c3784d, 0xcb39, 0x4e84, 0xb6, 0xfd, 0x6b, 0x72, 0xf0, 0x81, 0x02, 0x63);
		public const Guid CLSID_D2D1Posterize = .(0x2188945e, 0x33a3, 0x4366, 0xb7, 0xbc, 0x08, 0x6b, 0xd0, 0x2d, 0x08, 0x84);
		public const Guid CLSID_D2D1Sepia = .(0x3a1af410, 0x5f1d, 0x4dbe, 0x84, 0xdf, 0x91, 0x5d, 0xa7, 0x9b, 0x71, 0x53);
		public const Guid CLSID_D2D1Sharpen = .(0xc9b887cb, 0xc5ff, 0x4dc5, 0x97, 0x79, 0x27, 0x3d, 0xcf, 0x41, 0x7c, 0x7d);
		public const Guid CLSID_D2D1Straighten = .(0x4da47b12, 0x79a3, 0x4fb0, 0x82, 0x37, 0xbb, 0xc3, 0xb2, 0xa4, 0xde, 0x08);
		public const Guid CLSID_D2D1TemperatureTint = .(0x89176087, 0x8af9, 0x4a08, 0xae, 0xb1, 0x89, 0x5f, 0x38, 0xdb, 0x17, 0x66);
		public const Guid CLSID_D2D1Vignette = .(0xc00c40be, 0x5e67, 0x4ca3, 0x95, 0xb4, 0xf4, 0xb0, 0x2c, 0x11, 0x51, 0x35);
		public const Guid CLSID_D2D1EdgeDetection = .(0xeff583ca, 0xcb07, 0x4aa9, 0xac, 0x5d, 0x2c, 0xc4, 0x4c, 0x76, 0x46, 0x0f);
		public const Guid CLSID_D2D1HighlightsShadows = .(0xcadc8384, 0x323f, 0x4c7e, 0xa3, 0x61, 0x2e, 0x2b, 0x24, 0xdf, 0x6e, 0xe4);
		public const Guid CLSID_D2D1LookupTable3D = .(0x349e0eda, 0x0088, 0x4a79, 0x9c, 0xa3, 0xc7, 0xe3, 0x00, 0x20, 0x20, 0x20);
		public const Guid CLSID_D2D1Opacity = .(0x811d79a4, 0xde28, 0x4454, 0x80, 0x94, 0xc6, 0x46, 0x85, 0xf8, 0xbd, 0x4c);
		public const Guid CLSID_D2D1AlphaMask = .(0xc80ecff0, 0x3fd5, 0x4f05, 0x83, 0x28, 0xc5, 0xd1, 0x72, 0x4b, 0x4f, 0x0a);
		public const Guid CLSID_D2D1CrossFade = .(0x12f575e8, 0x4db1, 0x485f, 0x9a, 0x84, 0x03, 0xa0, 0x7d, 0xd3, 0x82, 0x9f);
		public const Guid CLSID_D2D1Tint = .(0x36312b17, 0xf7dd, 0x4014, 0x91, 0x5d, 0xff, 0xca, 0x76, 0x8c, 0xf2, 0x11);
		public const float D2D1_SCENE_REFERRED_SDR_WHITE_LEVEL = 80f;
		public const Guid CLSID_D2D1WhiteLevelAdjustment = .(0x44a1cadb, 0x6cdd, 0x4818, 0x8f, 0xf4, 0x26, 0xc1, 0xcf, 0xe9, 0x5b, 0xdb);
		public const Guid CLSID_D2D1HdrToneMap = .(0x7b0b748d, 0x4610, 0x4486, 0xa9, 0x0c, 0x99, 0x9d, 0x9a, 0x2e, 0x2b, 0x11);
		public const uint32 D2D1_APPEND_ALIGNED_ELEMENT = 4294967295;
		public const uint32 FACILITY_D2D = 2201;
		
		// --- Enums ---
		
		public enum D2D1_INTERPOLATION_MODE_DEFINITION : int32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			HIGH_QUALITY_CUBIC = 5,
			FANT = 6,
			MIPMAP_LINEAR = 7,
		}
		public enum D2D1_GAMMA : uint32
		{
			_2_2 = 0,
			_1_0 = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_OPACITY_MASK_CONTENT : uint32
		{
			GRAPHICS = 0,
			TEXT_NATURAL = 1,
			TEXT_GDI_COMPATIBLE = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_EXTEND_MODE : uint32
		{
			CLAMP = 0,
			WRAP = 1,
			MIRROR = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_ANTIALIAS_MODE : uint32
		{
			PER_PRIMITIVE = 0,
			ALIASED = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_TEXT_ANTIALIAS_MODE : uint32
		{
			DEFAULT = 0,
			CLEARTYPE = 1,
			GRAYSCALE = 2,
			ALIASED = 3,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BITMAP_INTERPOLATION_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DRAW_TEXT_OPTIONS : uint32
		{
			NO_SNAP = 1,
			CLIP = 2,
			ENABLE_COLOR_FONT = 4,
			DISABLE_COLOR_BITMAP_SNAPPING = 8,
			NONE = 0,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_ARC_SIZE : uint32
		{
			SMALL = 0,
			LARGE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_CAP_STYLE : uint32
		{
			FLAT = 0,
			SQUARE = 1,
			ROUND = 2,
			TRIANGLE = 3,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DASH_STYLE : uint32
		{
			SOLID = 0,
			DASH = 1,
			DOT = 2,
			DASH_DOT = 3,
			DASH_DOT_DOT = 4,
			CUSTOM = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_LINE_JOIN : uint32
		{
			MITER = 0,
			BEVEL = 1,
			ROUND = 2,
			MITER_OR_BEVEL = 3,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COMBINE_MODE : uint32
		{
			UNION = 0,
			INTERSECT = 1,
			XOR = 2,
			EXCLUDE = 3,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_GEOMETRY_RELATION : uint32
		{
			UNKNOWN = 0,
			DISJOINT = 1,
			IS_CONTAINED = 2,
			CONTAINS = 3,
			OVERLAP = 4,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_GEOMETRY_SIMPLIFICATION_OPTION : uint32
		{
			CUBICS_AND_LINES = 0,
			LINES = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SWEEP_DIRECTION : uint32
		{
			COUNTER_CLOCKWISE = 0,
			CLOCKWISE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_LAYER_OPTIONS : uint32
		{
			NONE = 0,
			INITIALIZE_FOR_CLEARTYPE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_WINDOW_STATE : uint32
		{
			NONE = 0,
			OCCLUDED = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_RENDER_TARGET_TYPE : uint32
		{
			DEFAULT = 0,
			SOFTWARE = 1,
			HARDWARE = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_FEATURE_LEVEL : uint32
		{
			DEFAULT = 0,
			_9 = 37120,
			_10 = 40960,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_RENDER_TARGET_USAGE : uint32
		{
			NONE = 0,
			FORCE_BITMAP_REMOTING = 1,
			GDI_COMPATIBLE = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_PRESENT_OPTIONS : uint32
		{
			NONE = 0,
			RETAIN_CONTENTS = 1,
			IMMEDIATELY = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS : uint32
		{
			NONE = 0,
			GDI_COMPATIBLE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DC_INITIALIZE_MODE : uint32
		{
			COPY = 0,
			CLEAR = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DEBUG_LEVEL : uint32
		{
			NONE = 0,
			ERROR = 1,
			WARNING = 2,
			INFORMATION = 3,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_FACTORY_TYPE : uint32
		{
			SINGLE_THREADED = 0,
			MULTI_THREADED = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_CHANNEL_SELECTOR : uint32
		{
			R = 0,
			G = 1,
			B = 2,
			A = 3,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BITMAPSOURCE_ORIENTATION : uint32
		{
			DEFAULT = 1,
			FLIP_HORIZONTAL = 2,
			ROTATE_CLOCKWISE180 = 3,
			ROTATE_CLOCKWISE180_FLIP_HORIZONTAL = 4,
			ROTATE_CLOCKWISE270_FLIP_HORIZONTAL = 5,
			ROTATE_CLOCKWISE90 = 6,
			ROTATE_CLOCKWISE90_FLIP_HORIZONTAL = 7,
			ROTATE_CLOCKWISE270 = 8,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_GAUSSIANBLUR_PROP : uint32
		{
			STANDARD_DEVIATION = 0,
			OPTIMIZATION = 1,
			BORDER_MODE = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_GAUSSIANBLUR_OPTIMIZATION : uint32
		{
			SPEED = 0,
			BALANCED = 1,
			QUALITY = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DIRECTIONALBLUR_PROP : uint32
		{
			STANDARD_DEVIATION = 0,
			ANGLE = 1,
			OPTIMIZATION = 2,
			BORDER_MODE = 3,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DIRECTIONALBLUR_OPTIMIZATION : uint32
		{
			SPEED = 0,
			BALANCED = 1,
			QUALITY = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SHADOW_PROP : uint32
		{
			BLUR_STANDARD_DEVIATION = 0,
			COLOR = 1,
			OPTIMIZATION = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SHADOW_OPTIMIZATION : uint32
		{
			SPEED = 0,
			BALANCED = 1,
			QUALITY = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BLEND_PROP : uint32
		{
			MODE = 0,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SATURATION_PROP : uint32
		{
			SATURATION = 0,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_HUEROTATION_PROP : uint32
		{
			ANGLE = 0,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COLORMATRIX_PROP : uint32
		{
			COLOR_MATRIX = 0,
			ALPHA_MODE = 1,
			CLAMP_OUTPUT = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BITMAPSOURCE_PROP : uint32
		{
			WIC_BITMAP_SOURCE = 0,
			SCALE = 1,
			INTERPOLATION_MODE = 2,
			ENABLE_DPI_CORRECTION = 3,
			ALPHA_MODE = 4,
			ORIENTATION = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BITMAPSOURCE_INTERPOLATION_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			FANT = 6,
			MIPMAP_LINEAR = 7,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BITMAPSOURCE_ALPHA_MODE : uint32
		{
			PREMULTIPLIED = 1,
			STRAIGHT = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COMPOSITE_PROP : uint32
		{
			MODE = 0,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_3DTRANSFORM_PROP : uint32
		{
			INTERPOLATION_MODE = 0,
			BORDER_MODE = 1,
			TRANSFORM_MATRIX = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_3DTRANSFORM_INTERPOLATION_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_3DPERSPECTIVETRANSFORM_PROP : uint32
		{
			INTERPOLATION_MODE = 0,
			BORDER_MODE = 1,
			DEPTH = 2,
			PERSPECTIVE_ORIGIN = 3,
			LOCAL_OFFSET = 4,
			GLOBAL_OFFSET = 5,
			ROTATION_ORIGIN = 6,
			ROTATION = 7,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_2DAFFINETRANSFORM_PROP : uint32
		{
			INTERPOLATION_MODE = 0,
			BORDER_MODE = 1,
			TRANSFORM_MATRIX = 2,
			SHARPNESS = 3,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DPICOMPENSATION_PROP : uint32
		{
			INTERPOLATION_MODE = 0,
			BORDER_MODE = 1,
			INPUT_DPI = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DPICOMPENSATION_INTERPOLATION_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			HIGH_QUALITY_CUBIC = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SCALE_PROP : uint32
		{
			SCALE = 0,
			CENTER_POINT = 1,
			INTERPOLATION_MODE = 2,
			BORDER_MODE = 3,
			SHARPNESS = 4,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SCALE_INTERPOLATION_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			HIGH_QUALITY_CUBIC = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_TURBULENCE_PROP : uint32
		{
			OFFSET = 0,
			SIZE = 1,
			BASE_FREQUENCY = 2,
			NUM_OCTAVES = 3,
			SEED = 4,
			NOISE = 5,
			STITCHABLE = 6,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DISPLACEMENTMAP_PROP : uint32
		{
			SCALE = 0,
			X_CHANNEL_SELECT = 1,
			Y_CHANNEL_SELECT = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COLORMANAGEMENT_PROP : uint32
		{
			SOURCE_COLOR_CONTEXT = 0,
			SOURCE_RENDERING_INTENT = 1,
			DESTINATION_COLOR_CONTEXT = 2,
			DESTINATION_RENDERING_INTENT = 3,
			ALPHA_MODE = 4,
			QUALITY = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COLORMANAGEMENT_ALPHA_MODE : uint32
		{
			PREMULTIPLIED = 1,
			STRAIGHT = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COLORMANAGEMENT_QUALITY : uint32
		{
			PROOF = 0,
			NORMAL = 1,
			BEST = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COLORMANAGEMENT_RENDERING_INTENT : uint32
		{
			PERCEPTUAL = 0,
			RELATIVE_COLORIMETRIC = 1,
			SATURATION = 2,
			ABSOLUTE_COLORIMETRIC = 3,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_HISTOGRAM_PROP : uint32
		{
			NUM_BINS = 0,
			CHANNEL_SELECT = 1,
			HISTOGRAM_OUTPUT = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_POINTSPECULAR_PROP : uint32
		{
			LIGHT_POSITION = 0,
			SPECULAR_EXPONENT = 1,
			SPECULAR_CONSTANT = 2,
			SURFACE_SCALE = 3,
			COLOR = 4,
			KERNEL_UNIT_LENGTH = 5,
			SCALE_MODE = 6,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_POINTSPECULAR_SCALE_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			HIGH_QUALITY_CUBIC = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SPOTSPECULAR_PROP : uint32
		{
			LIGHT_POSITION = 0,
			POINTS_AT = 1,
			FOCUS = 2,
			LIMITING_CONE_ANGLE = 3,
			SPECULAR_EXPONENT = 4,
			SPECULAR_CONSTANT = 5,
			SURFACE_SCALE = 6,
			COLOR = 7,
			KERNEL_UNIT_LENGTH = 8,
			SCALE_MODE = 9,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SPOTSPECULAR_SCALE_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			HIGH_QUALITY_CUBIC = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DISTANTSPECULAR_PROP : uint32
		{
			AZIMUTH = 0,
			ELEVATION = 1,
			SPECULAR_EXPONENT = 2,
			SPECULAR_CONSTANT = 3,
			SURFACE_SCALE = 4,
			COLOR = 5,
			KERNEL_UNIT_LENGTH = 6,
			SCALE_MODE = 7,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DISTANTSPECULAR_SCALE_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			HIGH_QUALITY_CUBIC = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_POINTDIFFUSE_PROP : uint32
		{
			LIGHT_POSITION = 0,
			DIFFUSE_CONSTANT = 1,
			SURFACE_SCALE = 2,
			COLOR = 3,
			KERNEL_UNIT_LENGTH = 4,
			SCALE_MODE = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_POINTDIFFUSE_SCALE_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			HIGH_QUALITY_CUBIC = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SPOTDIFFUSE_PROP : uint32
		{
			LIGHT_POSITION = 0,
			POINTS_AT = 1,
			FOCUS = 2,
			LIMITING_CONE_ANGLE = 3,
			DIFFUSE_CONSTANT = 4,
			SURFACE_SCALE = 5,
			COLOR = 6,
			KERNEL_UNIT_LENGTH = 7,
			SCALE_MODE = 8,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SPOTDIFFUSE_SCALE_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			HIGH_QUALITY_CUBIC = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DISTANTDIFFUSE_PROP : uint32
		{
			AZIMUTH = 0,
			ELEVATION = 1,
			DIFFUSE_CONSTANT = 2,
			SURFACE_SCALE = 3,
			COLOR = 4,
			KERNEL_UNIT_LENGTH = 5,
			SCALE_MODE = 6,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DISTANTDIFFUSE_SCALE_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			HIGH_QUALITY_CUBIC = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_FLOOD_PROP : uint32
		{
			COLOR = 0,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_LINEARTRANSFER_PROP : uint32
		{
			RED_Y_INTERCEPT = 0,
			RED_SLOPE = 1,
			RED_DISABLE = 2,
			GREEN_Y_INTERCEPT = 3,
			GREEN_SLOPE = 4,
			GREEN_DISABLE = 5,
			BLUE_Y_INTERCEPT = 6,
			BLUE_SLOPE = 7,
			BLUE_DISABLE = 8,
			ALPHA_Y_INTERCEPT = 9,
			ALPHA_SLOPE = 10,
			ALPHA_DISABLE = 11,
			CLAMP_OUTPUT = 12,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_GAMMATRANSFER_PROP : uint32
		{
			RED_AMPLITUDE = 0,
			RED_EXPONENT = 1,
			RED_OFFSET = 2,
			RED_DISABLE = 3,
			GREEN_AMPLITUDE = 4,
			GREEN_EXPONENT = 5,
			GREEN_OFFSET = 6,
			GREEN_DISABLE = 7,
			BLUE_AMPLITUDE = 8,
			BLUE_EXPONENT = 9,
			BLUE_OFFSET = 10,
			BLUE_DISABLE = 11,
			ALPHA_AMPLITUDE = 12,
			ALPHA_EXPONENT = 13,
			ALPHA_OFFSET = 14,
			ALPHA_DISABLE = 15,
			CLAMP_OUTPUT = 16,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_TABLETRANSFER_PROP : uint32
		{
			RED_TABLE = 0,
			RED_DISABLE = 1,
			GREEN_TABLE = 2,
			GREEN_DISABLE = 3,
			BLUE_TABLE = 4,
			BLUE_DISABLE = 5,
			ALPHA_TABLE = 6,
			ALPHA_DISABLE = 7,
			CLAMP_OUTPUT = 8,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DISCRETETRANSFER_PROP : uint32
		{
			RED_TABLE = 0,
			RED_DISABLE = 1,
			GREEN_TABLE = 2,
			GREEN_DISABLE = 3,
			BLUE_TABLE = 4,
			BLUE_DISABLE = 5,
			ALPHA_TABLE = 6,
			ALPHA_DISABLE = 7,
			CLAMP_OUTPUT = 8,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_CONVOLVEMATRIX_PROP : uint32
		{
			KERNEL_UNIT_LENGTH = 0,
			SCALE_MODE = 1,
			KERNEL_SIZE_X = 2,
			KERNEL_SIZE_Y = 3,
			KERNEL_MATRIX = 4,
			DIVISOR = 5,
			BIAS = 6,
			KERNEL_OFFSET = 7,
			PRESERVE_ALPHA = 8,
			BORDER_MODE = 9,
			CLAMP_OUTPUT = 10,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_CONVOLVEMATRIX_SCALE_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			HIGH_QUALITY_CUBIC = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BRIGHTNESS_PROP : uint32
		{
			WHITE_POINT = 0,
			BLACK_POINT = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_ARITHMETICCOMPOSITE_PROP : uint32
		{
			COEFFICIENTS = 0,
			CLAMP_OUTPUT = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_CROP_PROP : uint32
		{
			RECT = 0,
			BORDER_MODE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BORDER_PROP : uint32
		{
			EDGE_MODE_X = 0,
			EDGE_MODE_Y = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BORDER_EDGE_MODE : uint32
		{
			CLAMP = 0,
			WRAP = 1,
			MIRROR = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_MORPHOLOGY_PROP : uint32
		{
			MODE = 0,
			WIDTH = 1,
			HEIGHT = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_MORPHOLOGY_MODE : uint32
		{
			ERODE = 0,
			DILATE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_TILE_PROP : uint32
		{
			RECT = 0,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_ATLAS_PROP : uint32
		{
			INPUT_RECT = 0,
			INPUT_PADDING_RECT = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_OPACITYMETADATA_PROP : uint32
		{
			INPUT_OPAQUE_RECT = 0,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_PROPERTY_TYPE : uint32
		{
			UNKNOWN = 0,
			STRING = 1,
			BOOL = 2,
			UINT32 = 3,
			INT32 = 4,
			FLOAT = 5,
			VECTOR2 = 6,
			VECTOR3 = 7,
			VECTOR4 = 8,
			BLOB = 9,
			IUNKNOWN = 10,
			ENUM = 11,
			ARRAY = 12,
			CLSID = 13,
			MATRIX_3X2 = 14,
			MATRIX_4X3 = 15,
			MATRIX_4X4 = 16,
			MATRIX_5X4 = 17,
			COLOR_CONTEXT = 18,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_PROPERTY : uint32
		{
			CLSID = 2147483648,
			DISPLAYNAME = 2147483649,
			AUTHOR = 2147483650,
			CATEGORY = 2147483651,
			DESCRIPTION = 2147483652,
			INPUTS = 2147483653,
			CACHED = 2147483654,
			PRECISION = 2147483655,
			MIN_INPUTS = 2147483656,
			MAX_INPUTS = 2147483657,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SUBPROPERTY : uint32
		{
			DISPLAYNAME = 2147483648,
			ISREADONLY = 2147483649,
			MIN = 2147483650,
			MAX = 2147483651,
			DEFAULT = 2147483652,
			FIELDS = 2147483653,
			INDEX = 2147483654,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BITMAP_OPTIONS : uint32
		{
			NONE = 0,
			TARGET = 1,
			CANNOT_DRAW = 2,
			CPU_READ = 4,
			GDI_COMPATIBLE = 8,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BUFFER_PRECISION : uint32
		{
			UNKNOWN = 0,
			_8BPC_UNORM = 1,
			_8BPC_UNORM_SRGB = 2,
			_16BPC_UNORM = 3,
			_16BPC_FLOAT = 4,
			_32BPC_FLOAT = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_MAP_OPTIONS : uint32
		{
			NONE = 0,
			READ = 1,
			WRITE = 2,
			DISCARD = 4,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_INTERPOLATION_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			HIGH_QUALITY_CUBIC = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_UNIT_MODE : uint32
		{
			DIPS = 0,
			PIXELS = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COLOR_SPACE : uint32
		{
			CUSTOM = 0,
			SRGB = 1,
			SCRGB = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_DEVICE_CONTEXT_OPTIONS : uint32
		{
			NONE = 0,
			ENABLE_MULTITHREADED_OPTIMIZATIONS = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_STROKE_TRANSFORM_TYPE : uint32
		{
			NORMAL = 0,
			FIXED = 1,
			HAIRLINE = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_PRIMITIVE_BLEND : uint32
		{
			SOURCE_OVER = 0,
			COPY = 1,
			MIN = 2,
			ADD = 3,
			MAX = 4,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_THREADING_MODE : uint32
		{
			SINGLE_THREADED = 0,
			MULTI_THREADED = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COLOR_INTERPOLATION_MODE : uint32
		{
			STRAIGHT = 0,
			PREMULTIPLIED = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_LAYER_OPTIONS1 : uint32
		{
			NONE = 0,
			INITIALIZE_FROM_BACKGROUND = 1,
			IGNORE_ALPHA = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_PRINT_FONT_SUBSET_MODE : uint32
		{
			DEFAULT = 0,
			EACHPAGE = 1,
			NONE = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_CHANGE_TYPE : uint32
		{
			NONE = 0,
			PROPERTIES = 1,
			CONTEXT = 2,
			GRAPH = 3,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_PIXEL_OPTIONS : uint32
		{
			NONE = 0,
			TRIVIAL_SAMPLING = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_VERTEX_OPTIONS : uint32
		{
			NONE = 0,
			DO_NOT_CLEAR = 1,
			USE_DEPTH_BUFFER = 2,
			ASSUME_NO_OVERLAP = 4,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_VERTEX_USAGE : uint32
		{
			STATIC = 0,
			DYNAMIC = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BLEND_OPERATION : uint32
		{
			ADD = 1,
			SUBTRACT = 2,
			REV_SUBTRACT = 3,
			MIN = 4,
			MAX = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_BLEND : uint32
		{
			ZERO = 1,
			ONE = 2,
			SRC_COLOR = 3,
			INV_SRC_COLOR = 4,
			SRC_ALPHA = 5,
			INV_SRC_ALPHA = 6,
			DEST_ALPHA = 7,
			INV_DEST_ALPHA = 8,
			DEST_COLOR = 9,
			INV_DEST_COLOR = 10,
			SRC_ALPHA_SAT = 11,
			BLEND_FACTOR = 14,
			INV_BLEND_FACTOR = 15,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_CHANNEL_DEPTH : uint32
		{
			DEFAULT = 0,
			_1 = 1,
			_4 = 4,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_FILTER : uint32
		{
			MIN_MAG_MIP_POINT = 0,
			MIN_MAG_POINT_MIP_LINEAR = 1,
			MIN_POINT_MAG_LINEAR_MIP_POINT = 4,
			MIN_POINT_MAG_MIP_LINEAR = 5,
			MIN_LINEAR_MAG_MIP_POINT = 16,
			MIN_LINEAR_MAG_POINT_MIP_LINEAR = 17,
			MIN_MAG_LINEAR_MIP_POINT = 20,
			MIN_MAG_MIP_LINEAR = 21,
			ANISOTROPIC = 85,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_FEATURE : uint32
		{
			DOUBLES = 0,
			D3D10_X_HARDWARE_OPTIONS = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_YCBCR_PROP : uint32
		{
			CHROMA_SUBSAMPLING = 0,
			TRANSFORM_MATRIX = 1,
			INTERPOLATION_MODE = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_YCBCR_CHROMA_SUBSAMPLING : uint32
		{
			AUTO = 0,
			_420 = 1,
			_422 = 2,
			_444 = 3,
			_440 = 4,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_YCBCR_INTERPOLATION_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			HIGH_QUALITY_CUBIC = 5,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_CONTRAST_PROP : uint32
		{
			CONTRAST = 0,
			CLAMP_INPUT = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_RGBTOHUE_PROP : uint32
		{
			OUTPUT_COLOR_SPACE = 0,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_RGBTOHUE_OUTPUT_COLOR_SPACE : uint32
		{
			HUE_SATURATION_VALUE = 0,
			HUE_SATURATION_LIGHTNESS = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_HUETORGB_PROP : uint32
		{
			INPUT_COLOR_SPACE = 0,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_HUETORGB_INPUT_COLOR_SPACE : uint32
		{
			HUE_SATURATION_VALUE = 0,
			HUE_SATURATION_LIGHTNESS = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_CHROMAKEY_PROP : uint32
		{
			COLOR = 0,
			TOLERANCE = 1,
			INVERT_ALPHA = 2,
			FEATHER = 3,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_EMBOSS_PROP : uint32
		{
			HEIGHT = 0,
			DIRECTION = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_EXPOSURE_PROP : uint32
		{
			EXPOSURE_VALUE = 0,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_POSTERIZE_PROP : uint32
		{
			RED_VALUE_COUNT = 0,
			GREEN_VALUE_COUNT = 1,
			BLUE_VALUE_COUNT = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SEPIA_PROP : uint32
		{
			INTENSITY = 0,
			ALPHA_MODE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SHARPEN_PROP : uint32
		{
			SHARPNESS = 0,
			THRESHOLD = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_STRAIGHTEN_PROP : uint32
		{
			ANGLE = 0,
			MAINTAIN_SIZE = 1,
			SCALE_MODE = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_STRAIGHTEN_SCALE_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_TEMPERATUREANDTINT_PROP : uint32
		{
			TEMPERATURE = 0,
			TINT = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_VIGNETTE_PROP : uint32
		{
			COLOR = 0,
			TRANSITION_SIZE = 1,
			STRENGTH = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_EDGEDETECTION_PROP : uint32
		{
			STRENGTH = 0,
			BLUR_RADIUS = 1,
			MODE = 2,
			OVERLAY_EDGES = 3,
			ALPHA_MODE = 4,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_EDGEDETECTION_MODE : uint32
		{
			SOBEL = 0,
			PREWITT = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_HIGHLIGHTSANDSHADOWS_PROP : uint32
		{
			HIGHLIGHTS = 0,
			SHADOWS = 1,
			CLARITY = 2,
			INPUT_GAMMA = 3,
			MASK_BLUR_RADIUS = 4,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_HIGHLIGHTSANDSHADOWS_INPUT_GAMMA : uint32
		{
			LINEAR = 0,
			SRGB = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_LOOKUPTABLE3D_PROP : uint32
		{
			LUT = 0,
			ALPHA_MODE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_OPACITY_PROP : uint32
		{
			OPACITY = 0,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_CROSSFADE_PROP : uint32
		{
			WEIGHT = 0,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_TINT_PROP : uint32
		{
			COLOR = 0,
			CLAMP_OUTPUT = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_WHITELEVELADJUSTMENT_PROP : uint32
		{
			INPUT_WHITE_LEVEL = 0,
			OUTPUT_WHITE_LEVEL = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_HDRTONEMAP_PROP : uint32
		{
			INPUT_MAX_LUMINANCE = 0,
			OUTPUT_MAX_LUMINANCE = 1,
			DISPLAY_MODE = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_HDRTONEMAP_DISPLAY_MODE : uint32
		{
			SDR = 0,
			HDR = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_RENDERING_PRIORITY : uint32
		{
			NORMAL = 0,
			LOW = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SVG_PAINT_TYPE : uint32
		{
			NONE = 0,
			COLOR = 1,
			CURRENT_COLOR = 2,
			URI = 3,
			URI_NONE = 4,
			URI_COLOR = 5,
			URI_CURRENT_COLOR = 6,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SVG_LENGTH_UNITS : uint32
		{
			NUMBER = 0,
			PERCENTAGE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SVG_DISPLAY : uint32
		{
			INLINE = 0,
			NONE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SVG_VISIBILITY : uint32
		{
			VISIBLE = 0,
			HIDDEN = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SVG_OVERFLOW : uint32
		{
			VISIBLE = 0,
			HIDDEN = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SVG_LINE_CAP : uint32
		{
			BUTT = 0,
			SQUARE = 1,
			ROUND = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SVG_LINE_JOIN : uint32
		{
			BEVEL = 1,
			MITER = 3,
			ROUND = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SVG_ASPECT_ALIGN : uint32
		{
			NONE = 0,
			X_MIN_Y_MIN = 1,
			X_MID_Y_MIN = 2,
			X_MAX_Y_MIN = 3,
			X_MIN_Y_MID = 4,
			X_MID_Y_MID = 5,
			X_MAX_Y_MID = 6,
			X_MIN_Y_MAX = 7,
			X_MID_Y_MAX = 8,
			X_MAX_Y_MAX = 9,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SVG_ASPECT_SCALING : uint32
		{
			MEET = 0,
			SLICE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SVG_PATH_COMMAND : uint32
		{
			CLOSE_PATH = 0,
			MOVE_ABSOLUTE = 1,
			MOVE_RELATIVE = 2,
			LINE_ABSOLUTE = 3,
			LINE_RELATIVE = 4,
			CUBIC_ABSOLUTE = 5,
			CUBIC_RELATIVE = 6,
			QUADRADIC_ABSOLUTE = 7,
			QUADRADIC_RELATIVE = 8,
			ARC_ABSOLUTE = 9,
			ARC_RELATIVE = 10,
			HORIZONTAL_ABSOLUTE = 11,
			HORIZONTAL_RELATIVE = 12,
			VERTICAL_ABSOLUTE = 13,
			VERTICAL_RELATIVE = 14,
			CUBIC_SMOOTH_ABSOLUTE = 15,
			CUBIC_SMOOTH_RELATIVE = 16,
			QUADRADIC_SMOOTH_ABSOLUTE = 17,
			QUADRADIC_SMOOTH_RELATIVE = 18,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SVG_UNIT_TYPE : uint32
		{
			USER_SPACE_ON_USE = 0,
			OBJECT_BOUNDING_BOX = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SVG_ATTRIBUTE_STRING_TYPE : uint32
		{
			SVG = 0,
			ID = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SVG_ATTRIBUTE_POD_TYPE : uint32
		{
			FLOAT = 0,
			COLOR = 1,
			FILL_MODE = 2,
			DISPLAY = 3,
			OVERFLOW = 4,
			LINE_CAP = 5,
			LINE_JOIN = 6,
			VISIBILITY = 7,
			MATRIX = 8,
			UNIT_TYPE = 9,
			EXTEND_MODE = 10,
			PRESERVE_ASPECT_RATIO = 11,
			VIEWBOX = 12,
			LENGTH = 13,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_INK_NIB_SHAPE : uint32
		{
			ROUND = 0,
			SQUARE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_ORIENTATION : uint32
		{
			DEFAULT = 1,
			FLIP_HORIZONTAL = 2,
			ROTATE_CLOCKWISE180 = 3,
			ROTATE_CLOCKWISE180_FLIP_HORIZONTAL = 4,
			ROTATE_CLOCKWISE90_FLIP_HORIZONTAL = 5,
			ROTATE_CLOCKWISE270 = 6,
			ROTATE_CLOCKWISE270_FLIP_HORIZONTAL = 7,
			ROTATE_CLOCKWISE90 = 8,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_IMAGE_SOURCE_LOADING_OPTIONS : uint32
		{
			NONE = 0,
			RELEASE_SOURCE = 1,
			CACHE_ON_DEMAND = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS : uint32
		{
			NONE = 0,
			LOW_QUALITY_PRIMARY_CONVERSION = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS : uint32
		{
			NONE = 0,
			DISABLE_DPI_SCALE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_PATCH_EDGE_MODE : uint32
		{
			ALIASED = 0,
			ANTIALIASED = 1,
			ALIASED_INFLATED = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_SPRITE_OPTIONS : uint32
		{
			NONE = 0,
			CLAMP_TO_SOURCE_RECTANGLE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION : uint32
		{
			DEFAULT = 0,
			DISABLE = 1,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_GAMMA1 : uint32
		{
			G22 = 0,
			G10 = 1,
			G2084 = 2,
			FORCE_DWORD = 4294967295,
		}
		public enum D2D1_COLOR_CONTEXT_TYPE : uint32
		{
			ICC = 0,
			SIMPLE = 1,
			DXGI = 2,
			FORCE_DWORD = 4294967295,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT PD2D1_EFFECT_FACTORY(IUnknown** effectImpl);
		public function HRESULT PD2D1_PROPERTY_SET_FUNCTION(IUnknown* effect, uint8* data, uint32 dataSize);
		public function HRESULT PD2D1_PROPERTY_GET_FUNCTION(IUnknown* effect, uint8* data, uint32 dataSize, uint32* actualSize);
		
		// --- Structs ---
		
		[CRepr]
		public struct D2D1_BITMAP_PROPERTIES
		{
			public D2D1_PIXEL_FORMAT pixelFormat;
			public float dpiX;
			public float dpiY;
		}
		[CRepr]
		public struct D2D1_GRADIENT_STOP
		{
			public float position;
			public D2D1_COLOR_F color;
		}
		[CRepr]
		public struct D2D1_BRUSH_PROPERTIES
		{
			public float opacity;
			public D2D_MATRIX_3X2_F transform;
		}
		[CRepr]
		public struct D2D1_BITMAP_BRUSH_PROPERTIES
		{
			public D2D1_EXTEND_MODE extendModeX;
			public D2D1_EXTEND_MODE extendModeY;
			public D2D1_BITMAP_INTERPOLATION_MODE interpolationMode;
		}
		[CRepr]
		public struct D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES
		{
			public D2D_POINT_2F startPoint;
			public D2D_POINT_2F endPoint;
		}
		[CRepr]
		public struct D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES
		{
			public D2D_POINT_2F center;
			public D2D_POINT_2F gradientOriginOffset;
			public float radiusX;
			public float radiusY;
		}
		[CRepr]
		public struct D2D1_TRIANGLE
		{
			public D2D_POINT_2F point1;
			public D2D_POINT_2F point2;
			public D2D_POINT_2F point3;
		}
		[CRepr]
		public struct D2D1_ARC_SEGMENT
		{
			public D2D_POINT_2F point;
			public D2D_SIZE_F size;
			public float rotationAngle;
			public D2D1_SWEEP_DIRECTION sweepDirection;
			public D2D1_ARC_SIZE arcSize;
		}
		[CRepr]
		public struct D2D1_QUADRATIC_BEZIER_SEGMENT
		{
			public D2D_POINT_2F point1;
			public D2D_POINT_2F point2;
		}
		[CRepr]
		public struct D2D1_ELLIPSE
		{
			public D2D_POINT_2F point;
			public float radiusX;
			public float radiusY;
		}
		[CRepr]
		public struct D2D1_ROUNDED_RECT
		{
			public D2D_RECT_F rect;
			public float radiusX;
			public float radiusY;
		}
		[CRepr]
		public struct D2D1_STROKE_STYLE_PROPERTIES
		{
			public D2D1_CAP_STYLE startCap;
			public D2D1_CAP_STYLE endCap;
			public D2D1_CAP_STYLE dashCap;
			public D2D1_LINE_JOIN lineJoin;
			public float miterLimit;
			public D2D1_DASH_STYLE dashStyle;
			public float dashOffset;
		}
		[CRepr]
		public struct D2D1_LAYER_PARAMETERS
		{
			public D2D_RECT_F contentBounds;
			public ID2D1Geometry* geometricMask;
			public D2D1_ANTIALIAS_MODE maskAntialiasMode;
			public D2D_MATRIX_3X2_F maskTransform;
			public float opacity;
			public ID2D1Brush* opacityBrush;
			public D2D1_LAYER_OPTIONS layerOptions;
		}
		[CRepr]
		public struct D2D1_RENDER_TARGET_PROPERTIES
		{
			public D2D1_RENDER_TARGET_TYPE type;
			public D2D1_PIXEL_FORMAT pixelFormat;
			public float dpiX;
			public float dpiY;
			public D2D1_RENDER_TARGET_USAGE usage;
			public D2D1_FEATURE_LEVEL minLevel;
		}
		[CRepr]
		public struct D2D1_HWND_RENDER_TARGET_PROPERTIES
		{
			public HWND hwnd;
			public D2D_SIZE_U pixelSize;
			public D2D1_PRESENT_OPTIONS presentOptions;
		}
		[CRepr]
		public struct D2D1_DRAWING_STATE_DESCRIPTION
		{
			public D2D1_ANTIALIAS_MODE antialiasMode;
			public D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode;
			public uint64 tag1;
			public uint64 tag2;
			public D2D_MATRIX_3X2_F transform;
		}
		[CRepr]
		public struct D2D1_FACTORY_OPTIONS
		{
			public D2D1_DEBUG_LEVEL debugLevel;
		}
		[CRepr]
		public struct D2D1_BITMAP_PROPERTIES1
		{
			public D2D1_PIXEL_FORMAT pixelFormat;
			public float dpiX;
			public float dpiY;
			public D2D1_BITMAP_OPTIONS bitmapOptions;
			public ID2D1ColorContext* colorContext;
		}
		[CRepr]
		public struct D2D1_MAPPED_RECT
		{
			public uint32 pitch;
			public uint8* bits;
		}
		[CRepr]
		public struct D2D1_RENDERING_CONTROLS
		{
			public D2D1_BUFFER_PRECISION bufferPrecision;
			public D2D_SIZE_U tileSize;
		}
		[CRepr]
		public struct D2D1_EFFECT_INPUT_DESCRIPTION
		{
			public ID2D1Effect* effect;
			public uint32 inputIndex;
			public D2D_RECT_F inputRectangle;
		}
		[CRepr]
		public struct D2D1_POINT_DESCRIPTION
		{
			public D2D_POINT_2F point;
			public D2D_POINT_2F unitTangentVector;
			public uint32 endSegment;
			public uint32 endFigure;
			public float lengthToEndSegment;
		}
		[CRepr]
		public struct D2D1_IMAGE_BRUSH_PROPERTIES
		{
			public D2D_RECT_F sourceRectangle;
			public D2D1_EXTEND_MODE extendModeX;
			public D2D1_EXTEND_MODE extendModeY;
			public D2D1_INTERPOLATION_MODE interpolationMode;
		}
		[CRepr]
		public struct D2D1_BITMAP_BRUSH_PROPERTIES1
		{
			public D2D1_EXTEND_MODE extendModeX;
			public D2D1_EXTEND_MODE extendModeY;
			public D2D1_INTERPOLATION_MODE interpolationMode;
		}
		[CRepr]
		public struct D2D1_STROKE_STYLE_PROPERTIES1
		{
			public D2D1_CAP_STYLE startCap;
			public D2D1_CAP_STYLE endCap;
			public D2D1_CAP_STYLE dashCap;
			public D2D1_LINE_JOIN lineJoin;
			public float miterLimit;
			public D2D1_DASH_STYLE dashStyle;
			public float dashOffset;
			public D2D1_STROKE_TRANSFORM_TYPE transformType;
		}
		[CRepr]
		public struct D2D1_LAYER_PARAMETERS1
		{
			public D2D_RECT_F contentBounds;
			public ID2D1Geometry* geometricMask;
			public D2D1_ANTIALIAS_MODE maskAntialiasMode;
			public D2D_MATRIX_3X2_F maskTransform;
			public float opacity;
			public ID2D1Brush* opacityBrush;
			public D2D1_LAYER_OPTIONS1 layerOptions;
		}
		[CRepr]
		public struct D2D1_DRAWING_STATE_DESCRIPTION1
		{
			public D2D1_ANTIALIAS_MODE antialiasMode;
			public D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode;
			public uint64 tag1;
			public uint64 tag2;
			public D2D_MATRIX_3X2_F transform;
			public D2D1_PRIMITIVE_BLEND primitiveBlend;
			public D2D1_UNIT_MODE unitMode;
		}
		[CRepr]
		public struct D2D1_PRINT_CONTROL_PROPERTIES
		{
			public D2D1_PRINT_FONT_SUBSET_MODE fontSubset;
			public float rasterDPI;
			public D2D1_COLOR_SPACE colorSpace;
		}
		[CRepr]
		public struct D2D1_CREATION_PROPERTIES
		{
			public D2D1_THREADING_MODE threadingMode;
			public D2D1_DEBUG_LEVEL debugLevel;
			public D2D1_DEVICE_CONTEXT_OPTIONS options;
		}
		[CRepr]
		public struct Matrix4x3F
		{
			public D2D_MATRIX_4X3_F __AnonymousBase_d2d1_1helper_L45_C31;
		}
		[CRepr]
		public struct Matrix4x4F
		{
			public D2D_MATRIX_4X4_F __AnonymousBase_d2d1_1helper_L97_C31;
		}
		[CRepr]
		public struct Matrix5x4F
		{
			public D2D_MATRIX_5X4_F __AnonymousBase_d2d1_1helper_L472_C31;
		}
		[CRepr]
		public struct D2D1_PROPERTY_BINDING
		{
			public PWSTR propertyName;
			public PD2D1_PROPERTY_SET_FUNCTION setFunction;
			public PD2D1_PROPERTY_GET_FUNCTION getFunction;
		}
		[CRepr]
		public struct D2D1_RESOURCE_TEXTURE_PROPERTIES
		{
			public uint32* extents;
			public uint32 dimensions;
			public D2D1_BUFFER_PRECISION bufferPrecision;
			public D2D1_CHANNEL_DEPTH channelDepth;
			public D2D1_FILTER filter;
			public D2D1_EXTEND_MODE* extendModes;
		}
		[CRepr]
		public struct D2D1_INPUT_ELEMENT_DESC
		{
			public PSTR semanticName;
			public uint32 semanticIndex;
			public DXGI_FORMAT format;
			public uint32 inputSlot;
			public uint32 alignedByteOffset;
		}
		[CRepr]
		public struct D2D1_VERTEX_BUFFER_PROPERTIES
		{
			public uint32 inputCount;
			public D2D1_VERTEX_USAGE usage;
			public uint8* data;
			public uint32 byteWidth;
		}
		[CRepr]
		public struct D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES
		{
			public uint8* shaderBufferWithInputSignature;
			public uint32 shaderBufferSize;
			public D2D1_INPUT_ELEMENT_DESC* inputElements;
			public uint32 elementCount;
			public uint32 stride;
		}
		[CRepr]
		public struct D2D1_VERTEX_RANGE
		{
			public uint32 startVertex;
			public uint32 vertexCount;
		}
		[CRepr]
		public struct D2D1_BLEND_DESCRIPTION
		{
			public D2D1_BLEND sourceBlend;
			public D2D1_BLEND destinationBlend;
			public D2D1_BLEND_OPERATION blendOperation;
			public D2D1_BLEND sourceBlendAlpha;
			public D2D1_BLEND destinationBlendAlpha;
			public D2D1_BLEND_OPERATION blendOperationAlpha;
			public float[4] blendFactor;
		}
		[CRepr]
		public struct D2D1_INPUT_DESCRIPTION
		{
			public D2D1_FILTER filter;
			public uint32 levelOfDetailCount;
		}
		[CRepr]
		public struct D2D1_FEATURE_DATA_DOUBLES
		{
			public BOOL doublePrecisionFloatShaderOps;
		}
		[CRepr]
		public struct D2D1_FEATURE_DATA_D3D10_X_HARDWARE_OPTIONS
		{
			public BOOL computeShaders_Plus_RawAndStructuredBuffers_Via_Shader_4_x;
		}
		[CRepr]
		public struct D2D1_SVG_LENGTH
		{
			public float value;
			public D2D1_SVG_LENGTH_UNITS units;
		}
		[CRepr]
		public struct D2D1_SVG_PRESERVE_ASPECT_RATIO
		{
			public BOOL @defer;
			public D2D1_SVG_ASPECT_ALIGN align;
			public D2D1_SVG_ASPECT_SCALING meetOrSlice;
		}
		[CRepr]
		public struct D2D1_SVG_VIEWBOX
		{
			public float x;
			public float y;
			public float width;
			public float height;
		}
		[CRepr]
		public struct D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES
		{
			public D2D1_ORIENTATION orientation;
			public float scaleX;
			public float scaleY;
			public D2D1_INTERPOLATION_MODE interpolationMode;
			public D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS options;
		}
		[CRepr]
		public struct D2D1_INK_POINT
		{
			public float x;
			public float y;
			public float radius;
		}
		[CRepr]
		public struct D2D1_INK_BEZIER_SEGMENT
		{
			public D2D1_INK_POINT point1;
			public D2D1_INK_POINT point2;
			public D2D1_INK_POINT point3;
		}
		[CRepr]
		public struct D2D1_INK_STYLE_PROPERTIES
		{
			public D2D1_INK_NIB_SHAPE nibShape;
			public D2D_MATRIX_3X2_F nibTransform;
		}
		[CRepr]
		public struct D2D1_GRADIENT_MESH_PATCH
		{
			public D2D_POINT_2F point00;
			public D2D_POINT_2F point01;
			public D2D_POINT_2F point02;
			public D2D_POINT_2F point03;
			public D2D_POINT_2F point10;
			public D2D_POINT_2F point11;
			public D2D_POINT_2F point12;
			public D2D_POINT_2F point13;
			public D2D_POINT_2F point20;
			public D2D_POINT_2F point21;
			public D2D_POINT_2F point22;
			public D2D_POINT_2F point23;
			public D2D_POINT_2F point30;
			public D2D_POINT_2F point31;
			public D2D_POINT_2F point32;
			public D2D_POINT_2F point33;
			public D2D1_COLOR_F color00;
			public D2D1_COLOR_F color03;
			public D2D1_COLOR_F color30;
			public D2D1_COLOR_F color33;
			public D2D1_PATCH_EDGE_MODE topEdgeMode;
			public D2D1_PATCH_EDGE_MODE leftEdgeMode;
			public D2D1_PATCH_EDGE_MODE bottomEdgeMode;
			public D2D1_PATCH_EDGE_MODE rightEdgeMode;
		}
		[CRepr]
		public struct D2D1_SIMPLE_COLOR_PROFILE
		{
			public D2D_POINT_2F redPrimary;
			public D2D_POINT_2F greenPrimary;
			public D2D_POINT_2F bluePrimary;
			public D2D_POINT_2F whitePointXZ;
			public D2D1_GAMMA1 gamma;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ID2D1Resource : IUnknown
		{
			public const new Guid IID = .(0x2cd90691, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetFactory(ID2D1Factory** factory) mut
			{
				VT.GetFactory(&this, factory);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(ID2D1Resource *self, ID2D1Factory** factory) GetFactory;
			}
		}
		[CRepr]
		public struct ID2D1Image : ID2D1Resource
		{
			public const new Guid IID = .(0x65019f75, 0x8da2, 0x497c, 0xb3, 0x2c, 0xdf, 0xa3, 0x4e, 0x48, 0xed, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
			}
		}
		[CRepr]
		public struct ID2D1Bitmap : ID2D1Image
		{
			public const new Guid IID = .(0xa2296057, 0xea42, 0x4099, 0x98, 0x3b, 0x53, 0x9f, 0xb6, 0x50, 0x54, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D_SIZE_F GetSize() mut
			{
				return VT.GetSize(&this);
			}
			public D2D_SIZE_U GetPixelSize() mut
			{
				return VT.GetPixelSize(&this);
			}
			public D2D1_PIXEL_FORMAT GetPixelFormat() mut
			{
				return VT.GetPixelFormat(&this);
			}
			public void GetDpi(float* dpiX, float* dpiY) mut
			{
				VT.GetDpi(&this, dpiX, dpiY);
			}
			public HRESULT CopyFromBitmap(D2D_POINT_2U* destPoint, ID2D1Bitmap* bitmap, D2D_RECT_U* srcRect) mut
			{
				return VT.CopyFromBitmap(&this, destPoint, bitmap, srcRect);
			}
			public HRESULT CopyFromRenderTarget(D2D_POINT_2U* destPoint, ID2D1RenderTarget* renderTarget, D2D_RECT_U* srcRect) mut
			{
				return VT.CopyFromRenderTarget(&this, destPoint, renderTarget, srcRect);
			}
			public HRESULT CopyFromMemory(D2D_RECT_U* dstRect, void* srcData, uint32 pitch) mut
			{
				return VT.CopyFromMemory(&this, dstRect, srcData, pitch);
			}
			[CRepr]
			public struct VTable : ID2D1Image.VTable
			{
				public new function D2D_SIZE_F(ID2D1Bitmap *self) GetSize;
				public new function D2D_SIZE_U(ID2D1Bitmap *self) GetPixelSize;
				public new function D2D1_PIXEL_FORMAT(ID2D1Bitmap *self) GetPixelFormat;
				public new function void(ID2D1Bitmap *self, float* dpiX, float* dpiY) GetDpi;
				public new function HRESULT(ID2D1Bitmap *self, D2D_POINT_2U* destPoint, ID2D1Bitmap* bitmap, D2D_RECT_U* srcRect) CopyFromBitmap;
				public new function HRESULT(ID2D1Bitmap *self, D2D_POINT_2U* destPoint, ID2D1RenderTarget* renderTarget, D2D_RECT_U* srcRect) CopyFromRenderTarget;
				public new function HRESULT(ID2D1Bitmap *self, D2D_RECT_U* dstRect, void* srcData, uint32 pitch) CopyFromMemory;
			}
		}
		[CRepr]
		public struct ID2D1GradientStopCollection : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd906a7, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetGradientStopCount() mut
			{
				return VT.GetGradientStopCount(&this);
			}
			public void GetGradientStops(D2D1_GRADIENT_STOP* gradientStops, uint32 gradientStopsCount) mut
			{
				VT.GetGradientStops(&this, gradientStops, gradientStopsCount);
			}
			public D2D1_GAMMA GetColorInterpolationGamma() mut
			{
				return VT.GetColorInterpolationGamma(&this);
			}
			public D2D1_EXTEND_MODE GetExtendMode() mut
			{
				return VT.GetExtendMode(&this);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function uint32(ID2D1GradientStopCollection *self) GetGradientStopCount;
				public new function void(ID2D1GradientStopCollection *self, D2D1_GRADIENT_STOP* gradientStops, uint32 gradientStopsCount) GetGradientStops;
				public new function D2D1_GAMMA(ID2D1GradientStopCollection *self) GetColorInterpolationGamma;
				public new function D2D1_EXTEND_MODE(ID2D1GradientStopCollection *self) GetExtendMode;
			}
		}
		[CRepr]
		public struct ID2D1Brush : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd906a8, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetOpacity(float opacity) mut
			{
				VT.SetOpacity(&this, opacity);
			}
			public void SetTransform(D2D_MATRIX_3X2_F* transform) mut
			{
				VT.SetTransform(&this, transform);
			}
			public float GetOpacity() mut
			{
				return VT.GetOpacity(&this);
			}
			public void GetTransform(D2D_MATRIX_3X2_F* transform) mut
			{
				VT.GetTransform(&this, transform);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function void(ID2D1Brush *self, float opacity) SetOpacity;
				public new function void(ID2D1Brush *self, D2D_MATRIX_3X2_F* transform) SetTransform;
				public new function float(ID2D1Brush *self) GetOpacity;
				public new function void(ID2D1Brush *self, D2D_MATRIX_3X2_F* transform) GetTransform;
			}
		}
		[CRepr]
		public struct ID2D1BitmapBrush : ID2D1Brush
		{
			public const new Guid IID = .(0x2cd906aa, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetExtendModeX(D2D1_EXTEND_MODE extendModeX) mut
			{
				VT.SetExtendModeX(&this, extendModeX);
			}
			public void SetExtendModeY(D2D1_EXTEND_MODE extendModeY) mut
			{
				VT.SetExtendModeY(&this, extendModeY);
			}
			public void SetInterpolationMode(D2D1_BITMAP_INTERPOLATION_MODE interpolationMode) mut
			{
				VT.SetInterpolationMode(&this, interpolationMode);
			}
			public void SetBitmap(ID2D1Bitmap* bitmap) mut
			{
				VT.SetBitmap(&this, bitmap);
			}
			public D2D1_EXTEND_MODE GetExtendModeX() mut
			{
				return VT.GetExtendModeX(&this);
			}
			public D2D1_EXTEND_MODE GetExtendModeY() mut
			{
				return VT.GetExtendModeY(&this);
			}
			public D2D1_BITMAP_INTERPOLATION_MODE GetInterpolationMode() mut
			{
				return VT.GetInterpolationMode(&this);
			}
			public void GetBitmap(ID2D1Bitmap** bitmap) mut
			{
				VT.GetBitmap(&this, bitmap);
			}
			[CRepr]
			public struct VTable : ID2D1Brush.VTable
			{
				public new function void(ID2D1BitmapBrush *self, D2D1_EXTEND_MODE extendModeX) SetExtendModeX;
				public new function void(ID2D1BitmapBrush *self, D2D1_EXTEND_MODE extendModeY) SetExtendModeY;
				public new function void(ID2D1BitmapBrush *self, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode) SetInterpolationMode;
				public new function void(ID2D1BitmapBrush *self, ID2D1Bitmap* bitmap) SetBitmap;
				public new function D2D1_EXTEND_MODE(ID2D1BitmapBrush *self) GetExtendModeX;
				public new function D2D1_EXTEND_MODE(ID2D1BitmapBrush *self) GetExtendModeY;
				public new function D2D1_BITMAP_INTERPOLATION_MODE(ID2D1BitmapBrush *self) GetInterpolationMode;
				public new function void(ID2D1BitmapBrush *self, ID2D1Bitmap** bitmap) GetBitmap;
			}
		}
		[CRepr]
		public struct ID2D1SolidColorBrush : ID2D1Brush
		{
			public const new Guid IID = .(0x2cd906a9, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetColor(D2D1_COLOR_F* color) mut
			{
				VT.SetColor(&this, color);
			}
			public D2D1_COLOR_F GetColor() mut
			{
				return VT.GetColor(&this);
			}
			[CRepr]
			public struct VTable : ID2D1Brush.VTable
			{
				public new function void(ID2D1SolidColorBrush *self, D2D1_COLOR_F* color) SetColor;
				public new function D2D1_COLOR_F(ID2D1SolidColorBrush *self) GetColor;
			}
		}
		[CRepr]
		public struct ID2D1LinearGradientBrush : ID2D1Brush
		{
			public const new Guid IID = .(0x2cd906ab, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetStartPoint(D2D_POINT_2F startPoint) mut
			{
				VT.SetStartPoint(&this, startPoint);
			}
			public void SetEndPoint(D2D_POINT_2F endPoint) mut
			{
				VT.SetEndPoint(&this, endPoint);
			}
			public D2D_POINT_2F GetStartPoint() mut
			{
				return VT.GetStartPoint(&this);
			}
			public D2D_POINT_2F GetEndPoint() mut
			{
				return VT.GetEndPoint(&this);
			}
			public void GetGradientStopCollection(ID2D1GradientStopCollection** gradientStopCollection) mut
			{
				VT.GetGradientStopCollection(&this, gradientStopCollection);
			}
			[CRepr]
			public struct VTable : ID2D1Brush.VTable
			{
				public new function void(ID2D1LinearGradientBrush *self, D2D_POINT_2F startPoint) SetStartPoint;
				public new function void(ID2D1LinearGradientBrush *self, D2D_POINT_2F endPoint) SetEndPoint;
				public new function D2D_POINT_2F(ID2D1LinearGradientBrush *self) GetStartPoint;
				public new function D2D_POINT_2F(ID2D1LinearGradientBrush *self) GetEndPoint;
				public new function void(ID2D1LinearGradientBrush *self, ID2D1GradientStopCollection** gradientStopCollection) GetGradientStopCollection;
			}
		}
		[CRepr]
		public struct ID2D1RadialGradientBrush : ID2D1Brush
		{
			public const new Guid IID = .(0x2cd906ac, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetCenter(D2D_POINT_2F center) mut
			{
				VT.SetCenter(&this, center);
			}
			public void SetGradientOriginOffset(D2D_POINT_2F gradientOriginOffset) mut
			{
				VT.SetGradientOriginOffset(&this, gradientOriginOffset);
			}
			public void SetRadiusX(float radiusX) mut
			{
				VT.SetRadiusX(&this, radiusX);
			}
			public void SetRadiusY(float radiusY) mut
			{
				VT.SetRadiusY(&this, radiusY);
			}
			public D2D_POINT_2F GetCenter() mut
			{
				return VT.GetCenter(&this);
			}
			public D2D_POINT_2F GetGradientOriginOffset() mut
			{
				return VT.GetGradientOriginOffset(&this);
			}
			public float GetRadiusX() mut
			{
				return VT.GetRadiusX(&this);
			}
			public float GetRadiusY() mut
			{
				return VT.GetRadiusY(&this);
			}
			public void GetGradientStopCollection(ID2D1GradientStopCollection** gradientStopCollection) mut
			{
				VT.GetGradientStopCollection(&this, gradientStopCollection);
			}
			[CRepr]
			public struct VTable : ID2D1Brush.VTable
			{
				public new function void(ID2D1RadialGradientBrush *self, D2D_POINT_2F center) SetCenter;
				public new function void(ID2D1RadialGradientBrush *self, D2D_POINT_2F gradientOriginOffset) SetGradientOriginOffset;
				public new function void(ID2D1RadialGradientBrush *self, float radiusX) SetRadiusX;
				public new function void(ID2D1RadialGradientBrush *self, float radiusY) SetRadiusY;
				public new function D2D_POINT_2F(ID2D1RadialGradientBrush *self) GetCenter;
				public new function D2D_POINT_2F(ID2D1RadialGradientBrush *self) GetGradientOriginOffset;
				public new function float(ID2D1RadialGradientBrush *self) GetRadiusX;
				public new function float(ID2D1RadialGradientBrush *self) GetRadiusY;
				public new function void(ID2D1RadialGradientBrush *self, ID2D1GradientStopCollection** gradientStopCollection) GetGradientStopCollection;
			}
		}
		[CRepr]
		public struct ID2D1StrokeStyle : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd9069d, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D1_CAP_STYLE GetStartCap() mut
			{
				return VT.GetStartCap(&this);
			}
			public D2D1_CAP_STYLE GetEndCap() mut
			{
				return VT.GetEndCap(&this);
			}
			public D2D1_CAP_STYLE GetDashCap() mut
			{
				return VT.GetDashCap(&this);
			}
			public float GetMiterLimit() mut
			{
				return VT.GetMiterLimit(&this);
			}
			public D2D1_LINE_JOIN GetLineJoin() mut
			{
				return VT.GetLineJoin(&this);
			}
			public float GetDashOffset() mut
			{
				return VT.GetDashOffset(&this);
			}
			public D2D1_DASH_STYLE GetDashStyle() mut
			{
				return VT.GetDashStyle(&this);
			}
			public uint32 GetDashesCount() mut
			{
				return VT.GetDashesCount(&this);
			}
			public void GetDashes(float* dashes, uint32 dashesCount) mut
			{
				VT.GetDashes(&this, dashes, dashesCount);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function D2D1_CAP_STYLE(ID2D1StrokeStyle *self) GetStartCap;
				public new function D2D1_CAP_STYLE(ID2D1StrokeStyle *self) GetEndCap;
				public new function D2D1_CAP_STYLE(ID2D1StrokeStyle *self) GetDashCap;
				public new function float(ID2D1StrokeStyle *self) GetMiterLimit;
				public new function D2D1_LINE_JOIN(ID2D1StrokeStyle *self) GetLineJoin;
				public new function float(ID2D1StrokeStyle *self) GetDashOffset;
				public new function D2D1_DASH_STYLE(ID2D1StrokeStyle *self) GetDashStyle;
				public new function uint32(ID2D1StrokeStyle *self) GetDashesCount;
				public new function void(ID2D1StrokeStyle *self, float* dashes, uint32 dashesCount) GetDashes;
			}
		}
		[CRepr]
		public struct ID2D1Geometry : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd906a1, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBounds(D2D_MATRIX_3X2_F* worldTransform, D2D_RECT_F* bounds) mut
			{
				return VT.GetBounds(&this, worldTransform, bounds);
			}
			public HRESULT GetWidenedBounds(float strokeWidth, ID2D1StrokeStyle* strokeStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, D2D_RECT_F* bounds) mut
			{
				return VT.GetWidenedBounds(&this, strokeWidth, strokeStyle, worldTransform, flatteningTolerance, bounds);
			}
			public HRESULT StrokeContainsPoint(D2D_POINT_2F point, float strokeWidth, ID2D1StrokeStyle* strokeStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, BOOL* contains) mut
			{
				return VT.StrokeContainsPoint(&this, point, strokeWidth, strokeStyle, worldTransform, flatteningTolerance, contains);
			}
			public HRESULT FillContainsPoint(D2D_POINT_2F point, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, BOOL* contains) mut
			{
				return VT.FillContainsPoint(&this, point, worldTransform, flatteningTolerance, contains);
			}
			public HRESULT CompareWithGeometry(ID2D1Geometry* inputGeometry, D2D_MATRIX_3X2_F* inputGeometryTransform, float flatteningTolerance, D2D1_GEOMETRY_RELATION* relation) mut
			{
				return VT.CompareWithGeometry(&this, inputGeometry, inputGeometryTransform, flatteningTolerance, relation);
			}
			public HRESULT Simplify(D2D1_GEOMETRY_SIMPLIFICATION_OPTION simplificationOption, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ID2D1SimplifiedGeometrySink* geometrySink) mut
			{
				return VT.Simplify(&this, simplificationOption, worldTransform, flatteningTolerance, geometrySink);
			}
			public HRESULT Tessellate(D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ID2D1TessellationSink* tessellationSink) mut
			{
				return VT.Tessellate(&this, worldTransform, flatteningTolerance, tessellationSink);
			}
			public HRESULT CombineWithGeometry(ID2D1Geometry* inputGeometry, D2D1_COMBINE_MODE combineMode, D2D_MATRIX_3X2_F* inputGeometryTransform, float flatteningTolerance, ID2D1SimplifiedGeometrySink* geometrySink) mut
			{
				return VT.CombineWithGeometry(&this, inputGeometry, combineMode, inputGeometryTransform, flatteningTolerance, geometrySink);
			}
			public HRESULT Outline(D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ID2D1SimplifiedGeometrySink* geometrySink) mut
			{
				return VT.Outline(&this, worldTransform, flatteningTolerance, geometrySink);
			}
			public HRESULT ComputeArea(D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, float* area) mut
			{
				return VT.ComputeArea(&this, worldTransform, flatteningTolerance, area);
			}
			public HRESULT ComputeLength(D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, float* length) mut
			{
				return VT.ComputeLength(&this, worldTransform, flatteningTolerance, length);
			}
			public HRESULT ComputePointAtLength(float length, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, D2D_POINT_2F* point, D2D_POINT_2F* unitTangentVector) mut
			{
				return VT.ComputePointAtLength(&this, length, worldTransform, flatteningTolerance, point, unitTangentVector);
			}
			public HRESULT Widen(float strokeWidth, ID2D1StrokeStyle* strokeStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ID2D1SimplifiedGeometrySink* geometrySink) mut
			{
				return VT.Widen(&this, strokeWidth, strokeStyle, worldTransform, flatteningTolerance, geometrySink);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function HRESULT(ID2D1Geometry *self, D2D_MATRIX_3X2_F* worldTransform, D2D_RECT_F* bounds) GetBounds;
				public new function HRESULT(ID2D1Geometry *self, float strokeWidth, ID2D1StrokeStyle* strokeStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, D2D_RECT_F* bounds) GetWidenedBounds;
				public new function HRESULT(ID2D1Geometry *self, D2D_POINT_2F point, float strokeWidth, ID2D1StrokeStyle* strokeStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, BOOL* contains) StrokeContainsPoint;
				public new function HRESULT(ID2D1Geometry *self, D2D_POINT_2F point, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, BOOL* contains) FillContainsPoint;
				public new function HRESULT(ID2D1Geometry *self, ID2D1Geometry* inputGeometry, D2D_MATRIX_3X2_F* inputGeometryTransform, float flatteningTolerance, D2D1_GEOMETRY_RELATION* relation) CompareWithGeometry;
				public new function HRESULT(ID2D1Geometry *self, D2D1_GEOMETRY_SIMPLIFICATION_OPTION simplificationOption, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ID2D1SimplifiedGeometrySink* geometrySink) Simplify;
				public new function HRESULT(ID2D1Geometry *self, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ID2D1TessellationSink* tessellationSink) Tessellate;
				public new function HRESULT(ID2D1Geometry *self, ID2D1Geometry* inputGeometry, D2D1_COMBINE_MODE combineMode, D2D_MATRIX_3X2_F* inputGeometryTransform, float flatteningTolerance, ID2D1SimplifiedGeometrySink* geometrySink) CombineWithGeometry;
				public new function HRESULT(ID2D1Geometry *self, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ID2D1SimplifiedGeometrySink* geometrySink) Outline;
				public new function HRESULT(ID2D1Geometry *self, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, float* area) ComputeArea;
				public new function HRESULT(ID2D1Geometry *self, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, float* length) ComputeLength;
				public new function HRESULT(ID2D1Geometry *self, float length, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, D2D_POINT_2F* point, D2D_POINT_2F* unitTangentVector) ComputePointAtLength;
				public new function HRESULT(ID2D1Geometry *self, float strokeWidth, ID2D1StrokeStyle* strokeStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ID2D1SimplifiedGeometrySink* geometrySink) Widen;
			}
		}
		[CRepr]
		public struct ID2D1RectangleGeometry : ID2D1Geometry
		{
			public const new Guid IID = .(0x2cd906a2, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetRect(D2D_RECT_F* rect) mut
			{
				VT.GetRect(&this, rect);
			}
			[CRepr]
			public struct VTable : ID2D1Geometry.VTable
			{
				public new function void(ID2D1RectangleGeometry *self, D2D_RECT_F* rect) GetRect;
			}
		}
		[CRepr]
		public struct ID2D1RoundedRectangleGeometry : ID2D1Geometry
		{
			public const new Guid IID = .(0x2cd906a3, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetRoundedRect(D2D1_ROUNDED_RECT* roundedRect) mut
			{
				VT.GetRoundedRect(&this, roundedRect);
			}
			[CRepr]
			public struct VTable : ID2D1Geometry.VTable
			{
				public new function void(ID2D1RoundedRectangleGeometry *self, D2D1_ROUNDED_RECT* roundedRect) GetRoundedRect;
			}
		}
		[CRepr]
		public struct ID2D1EllipseGeometry : ID2D1Geometry
		{
			public const new Guid IID = .(0x2cd906a4, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetEllipse(D2D1_ELLIPSE* ellipse) mut
			{
				VT.GetEllipse(&this, ellipse);
			}
			[CRepr]
			public struct VTable : ID2D1Geometry.VTable
			{
				public new function void(ID2D1EllipseGeometry *self, D2D1_ELLIPSE* ellipse) GetEllipse;
			}
		}
		[CRepr]
		public struct ID2D1GeometryGroup : ID2D1Geometry
		{
			public const new Guid IID = .(0x2cd906a6, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D1_FILL_MODE GetFillMode() mut
			{
				return VT.GetFillMode(&this);
			}
			public uint32 GetSourceGeometryCount() mut
			{
				return VT.GetSourceGeometryCount(&this);
			}
			public void GetSourceGeometries(ID2D1Geometry** geometries, uint32 geometriesCount) mut
			{
				VT.GetSourceGeometries(&this, geometries, geometriesCount);
			}
			[CRepr]
			public struct VTable : ID2D1Geometry.VTable
			{
				public new function D2D1_FILL_MODE(ID2D1GeometryGroup *self) GetFillMode;
				public new function uint32(ID2D1GeometryGroup *self) GetSourceGeometryCount;
				public new function void(ID2D1GeometryGroup *self, ID2D1Geometry** geometries, uint32 geometriesCount) GetSourceGeometries;
			}
		}
		[CRepr]
		public struct ID2D1TransformedGeometry : ID2D1Geometry
		{
			public const new Guid IID = .(0x2cd906bb, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetSourceGeometry(ID2D1Geometry** sourceGeometry) mut
			{
				VT.GetSourceGeometry(&this, sourceGeometry);
			}
			public void GetTransform(D2D_MATRIX_3X2_F* transform) mut
			{
				VT.GetTransform(&this, transform);
			}
			[CRepr]
			public struct VTable : ID2D1Geometry.VTable
			{
				public new function void(ID2D1TransformedGeometry *self, ID2D1Geometry** sourceGeometry) GetSourceGeometry;
				public new function void(ID2D1TransformedGeometry *self, D2D_MATRIX_3X2_F* transform) GetTransform;
			}
		}
		[CRepr]
		public struct ID2D1GeometrySink : ID2D1SimplifiedGeometrySink
		{
			public const new Guid IID = .(0x2cd9069f, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void AddLine(D2D_POINT_2F point) mut
			{
				VT.AddLine(&this, point);
			}
			public void AddBezier(D2D1_BEZIER_SEGMENT* bezier) mut
			{
				VT.AddBezier(&this, bezier);
			}
			public void AddQuadraticBezier(D2D1_QUADRATIC_BEZIER_SEGMENT* bezier) mut
			{
				VT.AddQuadraticBezier(&this, bezier);
			}
			public void AddQuadraticBeziers(D2D1_QUADRATIC_BEZIER_SEGMENT* beziers, uint32 beziersCount) mut
			{
				VT.AddQuadraticBeziers(&this, beziers, beziersCount);
			}
			public void AddArc(D2D1_ARC_SEGMENT* arc) mut
			{
				VT.AddArc(&this, arc);
			}
			[CRepr]
			public struct VTable : ID2D1SimplifiedGeometrySink.VTable
			{
				public new function void(ID2D1GeometrySink *self, D2D_POINT_2F point) AddLine;
				public new function void(ID2D1GeometrySink *self, D2D1_BEZIER_SEGMENT* bezier) AddBezier;
				public new function void(ID2D1GeometrySink *self, D2D1_QUADRATIC_BEZIER_SEGMENT* bezier) AddQuadraticBezier;
				public new function void(ID2D1GeometrySink *self, D2D1_QUADRATIC_BEZIER_SEGMENT* beziers, uint32 beziersCount) AddQuadraticBeziers;
				public new function void(ID2D1GeometrySink *self, D2D1_ARC_SEGMENT* arc) AddArc;
			}
		}
		[CRepr]
		public struct ID2D1TessellationSink : IUnknown
		{
			public const new Guid IID = .(0x2cd906c1, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void AddTriangles(D2D1_TRIANGLE* triangles, uint32 trianglesCount) mut
			{
				VT.AddTriangles(&this, triangles, trianglesCount);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(ID2D1TessellationSink *self, D2D1_TRIANGLE* triangles, uint32 trianglesCount) AddTriangles;
				public new function HRESULT(ID2D1TessellationSink *self) Close;
			}
		}
		[CRepr]
		public struct ID2D1PathGeometry : ID2D1Geometry
		{
			public const new Guid IID = .(0x2cd906a5, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(ID2D1GeometrySink** geometrySink) mut
			{
				return VT.Open(&this, geometrySink);
			}
			public HRESULT Stream(ID2D1GeometrySink* geometrySink) mut
			{
				return VT.Stream(&this, geometrySink);
			}
			public HRESULT GetSegmentCount(uint32* count) mut
			{
				return VT.GetSegmentCount(&this, count);
			}
			public HRESULT GetFigureCount(uint32* count) mut
			{
				return VT.GetFigureCount(&this, count);
			}
			[CRepr]
			public struct VTable : ID2D1Geometry.VTable
			{
				public new function HRESULT(ID2D1PathGeometry *self, ID2D1GeometrySink** geometrySink) Open;
				public new function HRESULT(ID2D1PathGeometry *self, ID2D1GeometrySink* geometrySink) Stream;
				public new function HRESULT(ID2D1PathGeometry *self, uint32* count) GetSegmentCount;
				public new function HRESULT(ID2D1PathGeometry *self, uint32* count) GetFigureCount;
			}
		}
		[CRepr]
		public struct ID2D1Mesh : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd906c2, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(ID2D1TessellationSink** tessellationSink) mut
			{
				return VT.Open(&this, tessellationSink);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function HRESULT(ID2D1Mesh *self, ID2D1TessellationSink** tessellationSink) Open;
			}
		}
		[CRepr]
		public struct ID2D1Layer : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd9069b, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D_SIZE_F GetSize() mut
			{
				return VT.GetSize(&this);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function D2D_SIZE_F(ID2D1Layer *self) GetSize;
			}
		}
		[CRepr]
		public struct ID2D1DrawingStateBlock : ID2D1Resource
		{
			public const new Guid IID = .(0x28506e39, 0xebf6, 0x46a1, 0xbb, 0x47, 0xfd, 0x85, 0x56, 0x5a, 0xb9, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetDescription(D2D1_DRAWING_STATE_DESCRIPTION* stateDescription) mut
			{
				VT.GetDescription(&this, stateDescription);
			}
			public void SetDescription(D2D1_DRAWING_STATE_DESCRIPTION* stateDescription) mut
			{
				VT.SetDescription(&this, stateDescription);
			}
			public void SetTextRenderingParams(IDWriteRenderingParams* textRenderingParams) mut
			{
				VT.SetTextRenderingParams(&this, textRenderingParams);
			}
			public void GetTextRenderingParams(IDWriteRenderingParams** textRenderingParams) mut
			{
				VT.GetTextRenderingParams(&this, textRenderingParams);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function void(ID2D1DrawingStateBlock *self, D2D1_DRAWING_STATE_DESCRIPTION* stateDescription) GetDescription;
				public new function void(ID2D1DrawingStateBlock *self, D2D1_DRAWING_STATE_DESCRIPTION* stateDescription) SetDescription;
				public new function void(ID2D1DrawingStateBlock *self, IDWriteRenderingParams* textRenderingParams) SetTextRenderingParams;
				public new function void(ID2D1DrawingStateBlock *self, IDWriteRenderingParams** textRenderingParams) GetTextRenderingParams;
			}
		}
		[CRepr]
		public struct ID2D1RenderTarget : ID2D1Resource
		{
			public const new Guid IID = .(0x2cd90694, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateBitmap(D2D_SIZE_U size, void* srcData, uint32 pitch, D2D1_BITMAP_PROPERTIES* bitmapProperties, ID2D1Bitmap** bitmap) mut
			{
				return VT.CreateBitmap(&this, size, srcData, pitch, bitmapProperties, bitmap);
			}
			public HRESULT CreateBitmapFromWicBitmap(IWICBitmapSource* wicBitmapSource, D2D1_BITMAP_PROPERTIES* bitmapProperties, ID2D1Bitmap** bitmap) mut
			{
				return VT.CreateBitmapFromWicBitmap(&this, wicBitmapSource, bitmapProperties, bitmap);
			}
			public HRESULT CreateSharedBitmap(Guid* riid, void* data, D2D1_BITMAP_PROPERTIES* bitmapProperties, ID2D1Bitmap** bitmap) mut
			{
				return VT.CreateSharedBitmap(&this, riid, data, bitmapProperties, bitmap);
			}
			public HRESULT CreateBitmapBrush(ID2D1Bitmap* bitmap, D2D1_BITMAP_BRUSH_PROPERTIES* bitmapBrushProperties, D2D1_BRUSH_PROPERTIES* brushProperties, ID2D1BitmapBrush** bitmapBrush) mut
			{
				return VT.CreateBitmapBrush(&this, bitmap, bitmapBrushProperties, brushProperties, bitmapBrush);
			}
			public HRESULT CreateSolidColorBrush(D2D1_COLOR_F* color, D2D1_BRUSH_PROPERTIES* brushProperties, ID2D1SolidColorBrush** solidColorBrush) mut
			{
				return VT.CreateSolidColorBrush(&this, color, brushProperties, solidColorBrush);
			}
			public HRESULT CreateGradientStopCollection(D2D1_GRADIENT_STOP* gradientStops, uint32 gradientStopsCount, D2D1_GAMMA colorInterpolationGamma, D2D1_EXTEND_MODE extendMode, ID2D1GradientStopCollection** gradientStopCollection) mut
			{
				return VT.CreateGradientStopCollection(&this, gradientStops, gradientStopsCount, colorInterpolationGamma, extendMode, gradientStopCollection);
			}
			public HRESULT CreateLinearGradientBrush(D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES* linearGradientBrushProperties, D2D1_BRUSH_PROPERTIES* brushProperties, ID2D1GradientStopCollection* gradientStopCollection, ID2D1LinearGradientBrush** linearGradientBrush) mut
			{
				return VT.CreateLinearGradientBrush(&this, linearGradientBrushProperties, brushProperties, gradientStopCollection, linearGradientBrush);
			}
			public HRESULT CreateRadialGradientBrush(D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES* radialGradientBrushProperties, D2D1_BRUSH_PROPERTIES* brushProperties, ID2D1GradientStopCollection* gradientStopCollection, ID2D1RadialGradientBrush** radialGradientBrush) mut
			{
				return VT.CreateRadialGradientBrush(&this, radialGradientBrushProperties, brushProperties, gradientStopCollection, radialGradientBrush);
			}
			public HRESULT CreateCompatibleRenderTarget(D2D_SIZE_F* desiredSize, D2D_SIZE_U* desiredPixelSize, D2D1_PIXEL_FORMAT* desiredFormat, D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS options, ID2D1BitmapRenderTarget** bitmapRenderTarget) mut
			{
				return VT.CreateCompatibleRenderTarget(&this, desiredSize, desiredPixelSize, desiredFormat, options, bitmapRenderTarget);
			}
			public HRESULT CreateLayer(D2D_SIZE_F* size, ID2D1Layer** layer) mut
			{
				return VT.CreateLayer(&this, size, layer);
			}
			public HRESULT CreateMesh(ID2D1Mesh** mesh) mut
			{
				return VT.CreateMesh(&this, mesh);
			}
			public void DrawLine(D2D_POINT_2F point0, D2D_POINT_2F point1, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut
			{
				VT.DrawLine(&this, point0, point1, brush, strokeWidth, strokeStyle);
			}
			public void DrawRectangle(D2D_RECT_F* rect, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut
			{
				VT.DrawRectangle(&this, rect, brush, strokeWidth, strokeStyle);
			}
			public void FillRectangle(D2D_RECT_F* rect, ID2D1Brush* brush) mut
			{
				VT.FillRectangle(&this, rect, brush);
			}
			public void DrawRoundedRectangle(D2D1_ROUNDED_RECT* roundedRect, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut
			{
				VT.DrawRoundedRectangle(&this, roundedRect, brush, strokeWidth, strokeStyle);
			}
			public void FillRoundedRectangle(D2D1_ROUNDED_RECT* roundedRect, ID2D1Brush* brush) mut
			{
				VT.FillRoundedRectangle(&this, roundedRect, brush);
			}
			public void DrawEllipse(D2D1_ELLIPSE* ellipse, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut
			{
				VT.DrawEllipse(&this, ellipse, brush, strokeWidth, strokeStyle);
			}
			public void FillEllipse(D2D1_ELLIPSE* ellipse, ID2D1Brush* brush) mut
			{
				VT.FillEllipse(&this, ellipse, brush);
			}
			public void DrawGeometry(ID2D1Geometry* geometry, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut
			{
				VT.DrawGeometry(&this, geometry, brush, strokeWidth, strokeStyle);
			}
			public void FillGeometry(ID2D1Geometry* geometry, ID2D1Brush* brush, ID2D1Brush* opacityBrush) mut
			{
				VT.FillGeometry(&this, geometry, brush, opacityBrush);
			}
			public void FillMesh(ID2D1Mesh* mesh, ID2D1Brush* brush) mut
			{
				VT.FillMesh(&this, mesh, brush);
			}
			public void FillOpacityMask(ID2D1Bitmap* opacityMask, ID2D1Brush* brush, D2D1_OPACITY_MASK_CONTENT content, D2D_RECT_F* destinationRectangle, D2D_RECT_F* sourceRectangle) mut
			{
				VT.FillOpacityMask(&this, opacityMask, brush, content, destinationRectangle, sourceRectangle);
			}
			public void DrawBitmap(ID2D1Bitmap* bitmap, D2D_RECT_F* destinationRectangle, float opacity, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode, D2D_RECT_F* sourceRectangle) mut
			{
				VT.DrawBitmap(&this, bitmap, destinationRectangle, opacity, interpolationMode, sourceRectangle);
			}
			public void DrawText(char16* string, uint32 stringLength, IDWriteTextFormat* textFormat, D2D_RECT_F* layoutRect, ID2D1Brush* defaultFillBrush, D2D1_DRAW_TEXT_OPTIONS options, DWRITE_MEASURING_MODE measuringMode) mut
			{
				VT.DrawText(&this, string, stringLength, textFormat, layoutRect, defaultFillBrush, options, measuringMode);
			}
			public void DrawTextLayout(D2D_POINT_2F origin, IDWriteTextLayout* textLayout, ID2D1Brush* defaultFillBrush, D2D1_DRAW_TEXT_OPTIONS options) mut
			{
				VT.DrawTextLayout(&this, origin, textLayout, defaultFillBrush, options);
			}
			public void DrawGlyphRun(D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, ID2D1Brush* foregroundBrush, DWRITE_MEASURING_MODE measuringMode) mut
			{
				VT.DrawGlyphRun(&this, baselineOrigin, glyphRun, foregroundBrush, measuringMode);
			}
			public void SetTransform(D2D_MATRIX_3X2_F* transform) mut
			{
				VT.SetTransform(&this, transform);
			}
			public void GetTransform(D2D_MATRIX_3X2_F* transform) mut
			{
				VT.GetTransform(&this, transform);
			}
			public void SetAntialiasMode(D2D1_ANTIALIAS_MODE antialiasMode) mut
			{
				VT.SetAntialiasMode(&this, antialiasMode);
			}
			public D2D1_ANTIALIAS_MODE GetAntialiasMode() mut
			{
				return VT.GetAntialiasMode(&this);
			}
			public void SetTextAntialiasMode(D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode) mut
			{
				VT.SetTextAntialiasMode(&this, textAntialiasMode);
			}
			public D2D1_TEXT_ANTIALIAS_MODE GetTextAntialiasMode() mut
			{
				return VT.GetTextAntialiasMode(&this);
			}
			public void SetTextRenderingParams(IDWriteRenderingParams* textRenderingParams) mut
			{
				VT.SetTextRenderingParams(&this, textRenderingParams);
			}
			public void GetTextRenderingParams(IDWriteRenderingParams** textRenderingParams) mut
			{
				VT.GetTextRenderingParams(&this, textRenderingParams);
			}
			public void SetTags(uint64 tag1, uint64 tag2) mut
			{
				VT.SetTags(&this, tag1, tag2);
			}
			public void GetTags(uint64* tag1, uint64* tag2) mut
			{
				VT.GetTags(&this, tag1, tag2);
			}
			public void PushLayer(D2D1_LAYER_PARAMETERS* layerParameters, ID2D1Layer* layer) mut
			{
				VT.PushLayer(&this, layerParameters, layer);
			}
			public void PopLayer() mut
			{
				VT.PopLayer(&this);
			}
			public HRESULT Flush(uint64* tag1, uint64* tag2) mut
			{
				return VT.Flush(&this, tag1, tag2);
			}
			public void SaveDrawingState(ID2D1DrawingStateBlock* drawingStateBlock) mut
			{
				VT.SaveDrawingState(&this, drawingStateBlock);
			}
			public void RestoreDrawingState(ID2D1DrawingStateBlock* drawingStateBlock) mut
			{
				VT.RestoreDrawingState(&this, drawingStateBlock);
			}
			public void PushAxisAlignedClip(D2D_RECT_F* clipRect, D2D1_ANTIALIAS_MODE antialiasMode) mut
			{
				VT.PushAxisAlignedClip(&this, clipRect, antialiasMode);
			}
			public void PopAxisAlignedClip() mut
			{
				VT.PopAxisAlignedClip(&this);
			}
			public void Clear(D2D1_COLOR_F* clearColor) mut
			{
				VT.Clear(&this, clearColor);
			}
			public void BeginDraw() mut
			{
				VT.BeginDraw(&this);
			}
			public HRESULT EndDraw(uint64* tag1, uint64* tag2) mut
			{
				return VT.EndDraw(&this, tag1, tag2);
			}
			public D2D1_PIXEL_FORMAT GetPixelFormat() mut
			{
				return VT.GetPixelFormat(&this);
			}
			public void SetDpi(float dpiX, float dpiY) mut
			{
				VT.SetDpi(&this, dpiX, dpiY);
			}
			public void GetDpi(float* dpiX, float* dpiY) mut
			{
				VT.GetDpi(&this, dpiX, dpiY);
			}
			public D2D_SIZE_F GetSize() mut
			{
				return VT.GetSize(&this);
			}
			public D2D_SIZE_U GetPixelSize() mut
			{
				return VT.GetPixelSize(&this);
			}
			public uint32 GetMaximumBitmapSize() mut
			{
				return VT.GetMaximumBitmapSize(&this);
			}
			public BOOL IsSupported(D2D1_RENDER_TARGET_PROPERTIES* renderTargetProperties) mut
			{
				return VT.IsSupported(&this, renderTargetProperties);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function HRESULT(ID2D1RenderTarget *self, D2D_SIZE_U size, void* srcData, uint32 pitch, D2D1_BITMAP_PROPERTIES* bitmapProperties, ID2D1Bitmap** bitmap) CreateBitmap;
				public new function HRESULT(ID2D1RenderTarget *self, IWICBitmapSource* wicBitmapSource, D2D1_BITMAP_PROPERTIES* bitmapProperties, ID2D1Bitmap** bitmap) CreateBitmapFromWicBitmap;
				public new function HRESULT(ID2D1RenderTarget *self, Guid* riid, void* data, D2D1_BITMAP_PROPERTIES* bitmapProperties, ID2D1Bitmap** bitmap) CreateSharedBitmap;
				public new function HRESULT(ID2D1RenderTarget *self, ID2D1Bitmap* bitmap, D2D1_BITMAP_BRUSH_PROPERTIES* bitmapBrushProperties, D2D1_BRUSH_PROPERTIES* brushProperties, ID2D1BitmapBrush** bitmapBrush) CreateBitmapBrush;
				public new function HRESULT(ID2D1RenderTarget *self, D2D1_COLOR_F* color, D2D1_BRUSH_PROPERTIES* brushProperties, ID2D1SolidColorBrush** solidColorBrush) CreateSolidColorBrush;
				public new function HRESULT(ID2D1RenderTarget *self, D2D1_GRADIENT_STOP* gradientStops, uint32 gradientStopsCount, D2D1_GAMMA colorInterpolationGamma, D2D1_EXTEND_MODE extendMode, ID2D1GradientStopCollection** gradientStopCollection) CreateGradientStopCollection;
				public new function HRESULT(ID2D1RenderTarget *self, D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES* linearGradientBrushProperties, D2D1_BRUSH_PROPERTIES* brushProperties, ID2D1GradientStopCollection* gradientStopCollection, ID2D1LinearGradientBrush** linearGradientBrush) CreateLinearGradientBrush;
				public new function HRESULT(ID2D1RenderTarget *self, D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES* radialGradientBrushProperties, D2D1_BRUSH_PROPERTIES* brushProperties, ID2D1GradientStopCollection* gradientStopCollection, ID2D1RadialGradientBrush** radialGradientBrush) CreateRadialGradientBrush;
				public new function HRESULT(ID2D1RenderTarget *self, D2D_SIZE_F* desiredSize, D2D_SIZE_U* desiredPixelSize, D2D1_PIXEL_FORMAT* desiredFormat, D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS options, ID2D1BitmapRenderTarget** bitmapRenderTarget) CreateCompatibleRenderTarget;
				public new function HRESULT(ID2D1RenderTarget *self, D2D_SIZE_F* size, ID2D1Layer** layer) CreateLayer;
				public new function HRESULT(ID2D1RenderTarget *self, ID2D1Mesh** mesh) CreateMesh;
				public new function void(ID2D1RenderTarget *self, D2D_POINT_2F point0, D2D_POINT_2F point1, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawLine;
				public new function void(ID2D1RenderTarget *self, D2D_RECT_F* rect, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawRectangle;
				public new function void(ID2D1RenderTarget *self, D2D_RECT_F* rect, ID2D1Brush* brush) FillRectangle;
				public new function void(ID2D1RenderTarget *self, D2D1_ROUNDED_RECT* roundedRect, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawRoundedRectangle;
				public new function void(ID2D1RenderTarget *self, D2D1_ROUNDED_RECT* roundedRect, ID2D1Brush* brush) FillRoundedRectangle;
				public new function void(ID2D1RenderTarget *self, D2D1_ELLIPSE* ellipse, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawEllipse;
				public new function void(ID2D1RenderTarget *self, D2D1_ELLIPSE* ellipse, ID2D1Brush* brush) FillEllipse;
				public new function void(ID2D1RenderTarget *self, ID2D1Geometry* geometry, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawGeometry;
				public new function void(ID2D1RenderTarget *self, ID2D1Geometry* geometry, ID2D1Brush* brush, ID2D1Brush* opacityBrush) FillGeometry;
				public new function void(ID2D1RenderTarget *self, ID2D1Mesh* mesh, ID2D1Brush* brush) FillMesh;
				public new function void(ID2D1RenderTarget *self, ID2D1Bitmap* opacityMask, ID2D1Brush* brush, D2D1_OPACITY_MASK_CONTENT content, D2D_RECT_F* destinationRectangle, D2D_RECT_F* sourceRectangle) FillOpacityMask;
				public new function void(ID2D1RenderTarget *self, ID2D1Bitmap* bitmap, D2D_RECT_F* destinationRectangle, float opacity, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode, D2D_RECT_F* sourceRectangle) DrawBitmap;
				public new function void(ID2D1RenderTarget *self, char16* string, uint32 stringLength, IDWriteTextFormat* textFormat, D2D_RECT_F* layoutRect, ID2D1Brush* defaultFillBrush, D2D1_DRAW_TEXT_OPTIONS options, DWRITE_MEASURING_MODE measuringMode) DrawText;
				public new function void(ID2D1RenderTarget *self, D2D_POINT_2F origin, IDWriteTextLayout* textLayout, ID2D1Brush* defaultFillBrush, D2D1_DRAW_TEXT_OPTIONS options) DrawTextLayout;
				public new function void(ID2D1RenderTarget *self, D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, ID2D1Brush* foregroundBrush, DWRITE_MEASURING_MODE measuringMode) DrawGlyphRun;
				public new function void(ID2D1RenderTarget *self, D2D_MATRIX_3X2_F* transform) SetTransform;
				public new function void(ID2D1RenderTarget *self, D2D_MATRIX_3X2_F* transform) GetTransform;
				public new function void(ID2D1RenderTarget *self, D2D1_ANTIALIAS_MODE antialiasMode) SetAntialiasMode;
				public new function D2D1_ANTIALIAS_MODE(ID2D1RenderTarget *self) GetAntialiasMode;
				public new function void(ID2D1RenderTarget *self, D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode) SetTextAntialiasMode;
				public new function D2D1_TEXT_ANTIALIAS_MODE(ID2D1RenderTarget *self) GetTextAntialiasMode;
				public new function void(ID2D1RenderTarget *self, IDWriteRenderingParams* textRenderingParams) SetTextRenderingParams;
				public new function void(ID2D1RenderTarget *self, IDWriteRenderingParams** textRenderingParams) GetTextRenderingParams;
				public new function void(ID2D1RenderTarget *self, uint64 tag1, uint64 tag2) SetTags;
				public new function void(ID2D1RenderTarget *self, uint64* tag1, uint64* tag2) GetTags;
				public new function void(ID2D1RenderTarget *self, D2D1_LAYER_PARAMETERS* layerParameters, ID2D1Layer* layer) PushLayer;
				public new function void(ID2D1RenderTarget *self) PopLayer;
				public new function HRESULT(ID2D1RenderTarget *self, uint64* tag1, uint64* tag2) Flush;
				public new function void(ID2D1RenderTarget *self, ID2D1DrawingStateBlock* drawingStateBlock) SaveDrawingState;
				public new function void(ID2D1RenderTarget *self, ID2D1DrawingStateBlock* drawingStateBlock) RestoreDrawingState;
				public new function void(ID2D1RenderTarget *self, D2D_RECT_F* clipRect, D2D1_ANTIALIAS_MODE antialiasMode) PushAxisAlignedClip;
				public new function void(ID2D1RenderTarget *self) PopAxisAlignedClip;
				public new function void(ID2D1RenderTarget *self, D2D1_COLOR_F* clearColor) Clear;
				public new function void(ID2D1RenderTarget *self) BeginDraw;
				public new function HRESULT(ID2D1RenderTarget *self, uint64* tag1, uint64* tag2) EndDraw;
				public new function D2D1_PIXEL_FORMAT(ID2D1RenderTarget *self) GetPixelFormat;
				public new function void(ID2D1RenderTarget *self, float dpiX, float dpiY) SetDpi;
				public new function void(ID2D1RenderTarget *self, float* dpiX, float* dpiY) GetDpi;
				public new function D2D_SIZE_F(ID2D1RenderTarget *self) GetSize;
				public new function D2D_SIZE_U(ID2D1RenderTarget *self) GetPixelSize;
				public new function uint32(ID2D1RenderTarget *self) GetMaximumBitmapSize;
				public new function BOOL(ID2D1RenderTarget *self, D2D1_RENDER_TARGET_PROPERTIES* renderTargetProperties) IsSupported;
			}
		}
		[CRepr]
		public struct ID2D1BitmapRenderTarget : ID2D1RenderTarget
		{
			public const new Guid IID = .(0x2cd90695, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBitmap(ID2D1Bitmap** bitmap) mut
			{
				return VT.GetBitmap(&this, bitmap);
			}
			[CRepr]
			public struct VTable : ID2D1RenderTarget.VTable
			{
				public new function HRESULT(ID2D1BitmapRenderTarget *self, ID2D1Bitmap** bitmap) GetBitmap;
			}
		}
		[CRepr]
		public struct ID2D1HwndRenderTarget : ID2D1RenderTarget
		{
			public const new Guid IID = .(0x2cd90698, 0x12e2, 0x11dc, 0x9f, 0xed, 0x00, 0x11, 0x43, 0xa0, 0x55, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D1_WINDOW_STATE CheckWindowState() mut
			{
				return VT.CheckWindowState(&this);
			}
			public HRESULT Resize(D2D_SIZE_U* pixelSize) mut
			{
				return VT.Resize(&this, pixelSize);
			}
			public HWND GetHwnd() mut
			{
				return VT.GetHwnd(&this);
			}
			[CRepr]
			public struct VTable : ID2D1RenderTarget.VTable
			{
				public new function D2D1_WINDOW_STATE(ID2D1HwndRenderTarget *self) CheckWindowState;
				public new function HRESULT(ID2D1HwndRenderTarget *self, D2D_SIZE_U* pixelSize) Resize;
				public new function HWND(ID2D1HwndRenderTarget *self) GetHwnd;
			}
		}
		[CRepr]
		public struct ID2D1GdiInteropRenderTarget : IUnknown
		{
			public const new Guid IID = .(0xe0db51c3, 0x6f77, 0x4bae, 0xb3, 0xd5, 0xe4, 0x75, 0x09, 0xb3, 0x58, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDC(D2D1_DC_INITIALIZE_MODE mode, HDC* hdc) mut
			{
				return VT.GetDC(&this, mode, hdc);
			}
			public HRESULT ReleaseDC(RECT* update) mut
			{
				return VT.ReleaseDC(&this, update);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ID2D1GdiInteropRenderTarget *self, D2D1_DC_INITIALIZE_MODE mode, HDC* hdc) GetDC;
				public new function HRESULT(ID2D1GdiInteropRenderTarget *self, RECT* update) ReleaseDC;
			}
		}
		[CRepr]
		public struct ID2D1DCRenderTarget : ID2D1RenderTarget
		{
			public const new Guid IID = .(0x1c51bc64, 0xde61, 0x46fd, 0x98, 0x99, 0x63, 0xa5, 0xd8, 0xf0, 0x39, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BindDC(HDC hDC, RECT* pSubRect) mut
			{
				return VT.BindDC(&this, hDC, pSubRect);
			}
			[CRepr]
			public struct VTable : ID2D1RenderTarget.VTable
			{
				public new function HRESULT(ID2D1DCRenderTarget *self, HDC hDC, RECT* pSubRect) BindDC;
			}
		}
		[CRepr]
		public struct ID2D1Factory : IUnknown
		{
			public const new Guid IID = .(0x06152247, 0x6f50, 0x465a, 0x92, 0x45, 0x11, 0x8b, 0xfd, 0x3b, 0x60, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReloadSystemMetrics() mut
			{
				return VT.ReloadSystemMetrics(&this);
			}
			public void GetDesktopDpi(float* dpiX, float* dpiY) mut
			{
				VT.GetDesktopDpi(&this, dpiX, dpiY);
			}
			public HRESULT CreateRectangleGeometry(D2D_RECT_F* rectangle, ID2D1RectangleGeometry** rectangleGeometry) mut
			{
				return VT.CreateRectangleGeometry(&this, rectangle, rectangleGeometry);
			}
			public HRESULT CreateRoundedRectangleGeometry(D2D1_ROUNDED_RECT* roundedRectangle, ID2D1RoundedRectangleGeometry** roundedRectangleGeometry) mut
			{
				return VT.CreateRoundedRectangleGeometry(&this, roundedRectangle, roundedRectangleGeometry);
			}
			public HRESULT CreateEllipseGeometry(D2D1_ELLIPSE* ellipse, ID2D1EllipseGeometry** ellipseGeometry) mut
			{
				return VT.CreateEllipseGeometry(&this, ellipse, ellipseGeometry);
			}
			public HRESULT CreateGeometryGroup(D2D1_FILL_MODE fillMode, ID2D1Geometry** geometries, uint32 geometriesCount, ID2D1GeometryGroup** geometryGroup) mut
			{
				return VT.CreateGeometryGroup(&this, fillMode, geometries, geometriesCount, geometryGroup);
			}
			public HRESULT CreateTransformedGeometry(ID2D1Geometry* sourceGeometry, D2D_MATRIX_3X2_F* transform, ID2D1TransformedGeometry** transformedGeometry) mut
			{
				return VT.CreateTransformedGeometry(&this, sourceGeometry, transform, transformedGeometry);
			}
			public HRESULT CreatePathGeometry(ID2D1PathGeometry** pathGeometry) mut
			{
				return VT.CreatePathGeometry(&this, pathGeometry);
			}
			public HRESULT CreateStrokeStyle(D2D1_STROKE_STYLE_PROPERTIES* strokeStyleProperties, float* dashes, uint32 dashesCount, ID2D1StrokeStyle** strokeStyle) mut
			{
				return VT.CreateStrokeStyle(&this, strokeStyleProperties, dashes, dashesCount, strokeStyle);
			}
			public HRESULT CreateDrawingStateBlock(D2D1_DRAWING_STATE_DESCRIPTION* drawingStateDescription, IDWriteRenderingParams* textRenderingParams, ID2D1DrawingStateBlock** drawingStateBlock) mut
			{
				return VT.CreateDrawingStateBlock(&this, drawingStateDescription, textRenderingParams, drawingStateBlock);
			}
			public HRESULT CreateWicBitmapRenderTarget(IWICBitmap* target, D2D1_RENDER_TARGET_PROPERTIES* renderTargetProperties, ID2D1RenderTarget** renderTarget) mut
			{
				return VT.CreateWicBitmapRenderTarget(&this, target, renderTargetProperties, renderTarget);
			}
			public HRESULT CreateHwndRenderTarget(D2D1_RENDER_TARGET_PROPERTIES* renderTargetProperties, D2D1_HWND_RENDER_TARGET_PROPERTIES* hwndRenderTargetProperties, ID2D1HwndRenderTarget** hwndRenderTarget) mut
			{
				return VT.CreateHwndRenderTarget(&this, renderTargetProperties, hwndRenderTargetProperties, hwndRenderTarget);
			}
			public HRESULT CreateDxgiSurfaceRenderTarget(IDXGISurface* dxgiSurface, D2D1_RENDER_TARGET_PROPERTIES* renderTargetProperties, ID2D1RenderTarget** renderTarget) mut
			{
				return VT.CreateDxgiSurfaceRenderTarget(&this, dxgiSurface, renderTargetProperties, renderTarget);
			}
			public HRESULT CreateDCRenderTarget(D2D1_RENDER_TARGET_PROPERTIES* renderTargetProperties, ID2D1DCRenderTarget** dcRenderTarget) mut
			{
				return VT.CreateDCRenderTarget(&this, renderTargetProperties, dcRenderTarget);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ID2D1Factory *self) ReloadSystemMetrics;
				public new function void(ID2D1Factory *self, float* dpiX, float* dpiY) GetDesktopDpi;
				public new function HRESULT(ID2D1Factory *self, D2D_RECT_F* rectangle, ID2D1RectangleGeometry** rectangleGeometry) CreateRectangleGeometry;
				public new function HRESULT(ID2D1Factory *self, D2D1_ROUNDED_RECT* roundedRectangle, ID2D1RoundedRectangleGeometry** roundedRectangleGeometry) CreateRoundedRectangleGeometry;
				public new function HRESULT(ID2D1Factory *self, D2D1_ELLIPSE* ellipse, ID2D1EllipseGeometry** ellipseGeometry) CreateEllipseGeometry;
				public new function HRESULT(ID2D1Factory *self, D2D1_FILL_MODE fillMode, ID2D1Geometry** geometries, uint32 geometriesCount, ID2D1GeometryGroup** geometryGroup) CreateGeometryGroup;
				public new function HRESULT(ID2D1Factory *self, ID2D1Geometry* sourceGeometry, D2D_MATRIX_3X2_F* transform, ID2D1TransformedGeometry** transformedGeometry) CreateTransformedGeometry;
				public new function HRESULT(ID2D1Factory *self, ID2D1PathGeometry** pathGeometry) CreatePathGeometry;
				public new function HRESULT(ID2D1Factory *self, D2D1_STROKE_STYLE_PROPERTIES* strokeStyleProperties, float* dashes, uint32 dashesCount, ID2D1StrokeStyle** strokeStyle) CreateStrokeStyle;
				public new function HRESULT(ID2D1Factory *self, D2D1_DRAWING_STATE_DESCRIPTION* drawingStateDescription, IDWriteRenderingParams* textRenderingParams, ID2D1DrawingStateBlock** drawingStateBlock) CreateDrawingStateBlock;
				public new function HRESULT(ID2D1Factory *self, IWICBitmap* target, D2D1_RENDER_TARGET_PROPERTIES* renderTargetProperties, ID2D1RenderTarget** renderTarget) CreateWicBitmapRenderTarget;
				public new function HRESULT(ID2D1Factory *self, D2D1_RENDER_TARGET_PROPERTIES* renderTargetProperties, D2D1_HWND_RENDER_TARGET_PROPERTIES* hwndRenderTargetProperties, ID2D1HwndRenderTarget** hwndRenderTarget) CreateHwndRenderTarget;
				public new function HRESULT(ID2D1Factory *self, IDXGISurface* dxgiSurface, D2D1_RENDER_TARGET_PROPERTIES* renderTargetProperties, ID2D1RenderTarget** renderTarget) CreateDxgiSurfaceRenderTarget;
				public new function HRESULT(ID2D1Factory *self, D2D1_RENDER_TARGET_PROPERTIES* renderTargetProperties, ID2D1DCRenderTarget** dcRenderTarget) CreateDCRenderTarget;
			}
		}
		[CRepr]
		public struct ID2D1GdiMetafileSink : IUnknown
		{
			public const new Guid IID = .(0x82237326, 0x8111, 0x4f7c, 0xbc, 0xf4, 0xb5, 0xc1, 0x17, 0x55, 0x64, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ProcessRecord(uint32 recordType, void* recordData, uint32 recordDataSize) mut
			{
				return VT.ProcessRecord(&this, recordType, recordData, recordDataSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ID2D1GdiMetafileSink *self, uint32 recordType, void* recordData, uint32 recordDataSize) ProcessRecord;
			}
		}
		[CRepr]
		public struct ID2D1GdiMetafile : ID2D1Resource
		{
			public const new Guid IID = .(0x2f543dc3, 0xcfc1, 0x4211, 0x86, 0x4f, 0xcf, 0xd9, 0x1c, 0x6f, 0x33, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Stream(ID2D1GdiMetafileSink* sink) mut
			{
				return VT.Stream(&this, sink);
			}
			public HRESULT GetBounds(D2D_RECT_F* bounds) mut
			{
				return VT.GetBounds(&this, bounds);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function HRESULT(ID2D1GdiMetafile *self, ID2D1GdiMetafileSink* sink) Stream;
				public new function HRESULT(ID2D1GdiMetafile *self, D2D_RECT_F* bounds) GetBounds;
			}
		}
		[CRepr]
		public struct ID2D1CommandSink : IUnknown
		{
			public const new Guid IID = .(0x54d7898a, 0xa061, 0x40a7, 0xbe, 0xc7, 0xe4, 0x65, 0xbc, 0xba, 0x2c, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginDraw() mut
			{
				return VT.BeginDraw(&this);
			}
			public HRESULT EndDraw() mut
			{
				return VT.EndDraw(&this);
			}
			public HRESULT SetAntialiasMode(D2D1_ANTIALIAS_MODE antialiasMode) mut
			{
				return VT.SetAntialiasMode(&this, antialiasMode);
			}
			public HRESULT SetTags(uint64 tag1, uint64 tag2) mut
			{
				return VT.SetTags(&this, tag1, tag2);
			}
			public HRESULT SetTextAntialiasMode(D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode) mut
			{
				return VT.SetTextAntialiasMode(&this, textAntialiasMode);
			}
			public HRESULT SetTextRenderingParams(IDWriteRenderingParams* textRenderingParams) mut
			{
				return VT.SetTextRenderingParams(&this, textRenderingParams);
			}
			public HRESULT SetTransform(D2D_MATRIX_3X2_F* transform) mut
			{
				return VT.SetTransform(&this, transform);
			}
			public HRESULT SetPrimitiveBlend(D2D1_PRIMITIVE_BLEND primitiveBlend) mut
			{
				return VT.SetPrimitiveBlend(&this, primitiveBlend);
			}
			public HRESULT SetUnitMode(D2D1_UNIT_MODE unitMode) mut
			{
				return VT.SetUnitMode(&this, unitMode);
			}
			public HRESULT Clear(D2D1_COLOR_F* color) mut
			{
				return VT.Clear(&this, color);
			}
			public HRESULT DrawGlyphRun(D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, ID2D1Brush* foregroundBrush, DWRITE_MEASURING_MODE measuringMode) mut
			{
				return VT.DrawGlyphRun(&this, baselineOrigin, glyphRun, glyphRunDescription, foregroundBrush, measuringMode);
			}
			public HRESULT DrawLine(D2D_POINT_2F point0, D2D_POINT_2F point1, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut
			{
				return VT.DrawLine(&this, point0, point1, brush, strokeWidth, strokeStyle);
			}
			public HRESULT DrawGeometry(ID2D1Geometry* geometry, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut
			{
				return VT.DrawGeometry(&this, geometry, brush, strokeWidth, strokeStyle);
			}
			public HRESULT DrawRectangle(D2D_RECT_F* rect, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) mut
			{
				return VT.DrawRectangle(&this, rect, brush, strokeWidth, strokeStyle);
			}
			public HRESULT DrawBitmap(ID2D1Bitmap* bitmap, D2D_RECT_F* destinationRectangle, float opacity, D2D1_INTERPOLATION_MODE interpolationMode, D2D_RECT_F* sourceRectangle, D2D_MATRIX_4X4_F* perspectiveTransform) mut
			{
				return VT.DrawBitmap(&this, bitmap, destinationRectangle, opacity, interpolationMode, sourceRectangle, perspectiveTransform);
			}
			public HRESULT DrawImage(ID2D1Image* image, D2D_POINT_2F* targetOffset, D2D_RECT_F* imageRectangle, D2D1_INTERPOLATION_MODE interpolationMode, D2D1_COMPOSITE_MODE compositeMode) mut
			{
				return VT.DrawImage(&this, image, targetOffset, imageRectangle, interpolationMode, compositeMode);
			}
			public HRESULT DrawGdiMetafile(ID2D1GdiMetafile* gdiMetafile, D2D_POINT_2F* targetOffset) mut
			{
				return VT.DrawGdiMetafile(&this, gdiMetafile, targetOffset);
			}
			public HRESULT FillMesh(ID2D1Mesh* mesh, ID2D1Brush* brush) mut
			{
				return VT.FillMesh(&this, mesh, brush);
			}
			public HRESULT FillOpacityMask(ID2D1Bitmap* opacityMask, ID2D1Brush* brush, D2D_RECT_F* destinationRectangle, D2D_RECT_F* sourceRectangle) mut
			{
				return VT.FillOpacityMask(&this, opacityMask, brush, destinationRectangle, sourceRectangle);
			}
			public HRESULT FillGeometry(ID2D1Geometry* geometry, ID2D1Brush* brush, ID2D1Brush* opacityBrush) mut
			{
				return VT.FillGeometry(&this, geometry, brush, opacityBrush);
			}
			public HRESULT FillRectangle(D2D_RECT_F* rect, ID2D1Brush* brush) mut
			{
				return VT.FillRectangle(&this, rect, brush);
			}
			public HRESULT PushAxisAlignedClip(D2D_RECT_F* clipRect, D2D1_ANTIALIAS_MODE antialiasMode) mut
			{
				return VT.PushAxisAlignedClip(&this, clipRect, antialiasMode);
			}
			public HRESULT PushLayer(D2D1_LAYER_PARAMETERS1* layerParameters1, ID2D1Layer* layer) mut
			{
				return VT.PushLayer(&this, layerParameters1, layer);
			}
			public HRESULT PopAxisAlignedClip() mut
			{
				return VT.PopAxisAlignedClip(&this);
			}
			public HRESULT PopLayer() mut
			{
				return VT.PopLayer(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ID2D1CommandSink *self) BeginDraw;
				public new function HRESULT(ID2D1CommandSink *self) EndDraw;
				public new function HRESULT(ID2D1CommandSink *self, D2D1_ANTIALIAS_MODE antialiasMode) SetAntialiasMode;
				public new function HRESULT(ID2D1CommandSink *self, uint64 tag1, uint64 tag2) SetTags;
				public new function HRESULT(ID2D1CommandSink *self, D2D1_TEXT_ANTIALIAS_MODE textAntialiasMode) SetTextAntialiasMode;
				public new function HRESULT(ID2D1CommandSink *self, IDWriteRenderingParams* textRenderingParams) SetTextRenderingParams;
				public new function HRESULT(ID2D1CommandSink *self, D2D_MATRIX_3X2_F* transform) SetTransform;
				public new function HRESULT(ID2D1CommandSink *self, D2D1_PRIMITIVE_BLEND primitiveBlend) SetPrimitiveBlend;
				public new function HRESULT(ID2D1CommandSink *self, D2D1_UNIT_MODE unitMode) SetUnitMode;
				public new function HRESULT(ID2D1CommandSink *self, D2D1_COLOR_F* color) Clear;
				public new function HRESULT(ID2D1CommandSink *self, D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, ID2D1Brush* foregroundBrush, DWRITE_MEASURING_MODE measuringMode) DrawGlyphRun;
				public new function HRESULT(ID2D1CommandSink *self, D2D_POINT_2F point0, D2D_POINT_2F point1, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawLine;
				public new function HRESULT(ID2D1CommandSink *self, ID2D1Geometry* geometry, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawGeometry;
				public new function HRESULT(ID2D1CommandSink *self, D2D_RECT_F* rect, ID2D1Brush* brush, float strokeWidth, ID2D1StrokeStyle* strokeStyle) DrawRectangle;
				public new function HRESULT(ID2D1CommandSink *self, ID2D1Bitmap* bitmap, D2D_RECT_F* destinationRectangle, float opacity, D2D1_INTERPOLATION_MODE interpolationMode, D2D_RECT_F* sourceRectangle, D2D_MATRIX_4X4_F* perspectiveTransform) DrawBitmap;
				public new function HRESULT(ID2D1CommandSink *self, ID2D1Image* image, D2D_POINT_2F* targetOffset, D2D_RECT_F* imageRectangle, D2D1_INTERPOLATION_MODE interpolationMode, D2D1_COMPOSITE_MODE compositeMode) DrawImage;
				public new function HRESULT(ID2D1CommandSink *self, ID2D1GdiMetafile* gdiMetafile, D2D_POINT_2F* targetOffset) DrawGdiMetafile;
				public new function HRESULT(ID2D1CommandSink *self, ID2D1Mesh* mesh, ID2D1Brush* brush) FillMesh;
				public new function HRESULT(ID2D1CommandSink *self, ID2D1Bitmap* opacityMask, ID2D1Brush* brush, D2D_RECT_F* destinationRectangle, D2D_RECT_F* sourceRectangle) FillOpacityMask;
				public new function HRESULT(ID2D1CommandSink *self, ID2D1Geometry* geometry, ID2D1Brush* brush, ID2D1Brush* opacityBrush) FillGeometry;
				public new function HRESULT(ID2D1CommandSink *self, D2D_RECT_F* rect, ID2D1Brush* brush) FillRectangle;
				public new function HRESULT(ID2D1CommandSink *self, D2D_RECT_F* clipRect, D2D1_ANTIALIAS_MODE antialiasMode) PushAxisAlignedClip;
				public new function HRESULT(ID2D1CommandSink *self, D2D1_LAYER_PARAMETERS1* layerParameters1, ID2D1Layer* layer) PushLayer;
				public new function HRESULT(ID2D1CommandSink *self) PopAxisAlignedClip;
				public new function HRESULT(ID2D1CommandSink *self) PopLayer;
			}
		}
		[CRepr]
		public struct ID2D1CommandList : ID2D1Image
		{
			public const new Guid IID = .(0xb4f34a19, 0x2383, 0x4d76, 0x94, 0xf6, 0xec, 0x34, 0x36, 0x57, 0xc3, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Stream(ID2D1CommandSink* sink) mut
			{
				return VT.Stream(&this, sink);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : ID2D1Image.VTable
			{
				public new function HRESULT(ID2D1CommandList *self, ID2D1CommandSink* sink) Stream;
				public new function HRESULT(ID2D1CommandList *self) Close;
			}
		}
		[CRepr]
		public struct ID2D1PrintControl : IUnknown
		{
			public const new Guid IID = .(0x2c1d867d, 0xc290, 0x41c8, 0xae, 0x7e, 0x34, 0xa9, 0x87, 0x02, 0xe9, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPage(ID2D1CommandList* commandList, D2D_SIZE_F pageSize, IStream* pagePrintTicketStream, uint64* tag1, uint64* tag2) mut
			{
				return VT.AddPage(&this, commandList, pageSize, pagePrintTicketStream, tag1, tag2);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ID2D1PrintControl *self, ID2D1CommandList* commandList, D2D_SIZE_F pageSize, IStream* pagePrintTicketStream, uint64* tag1, uint64* tag2) AddPage;
				public new function HRESULT(ID2D1PrintControl *self) Close;
			}
		}
		[CRepr]
		public struct ID2D1ImageBrush : ID2D1Brush
		{
			public const new Guid IID = .(0xfe9e984d, 0x3f95, 0x407c, 0xb5, 0xdb, 0xcb, 0x94, 0xd4, 0xe8, 0xf8, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetImage(ID2D1Image* image) mut
			{
				VT.SetImage(&this, image);
			}
			public void SetExtendModeX(D2D1_EXTEND_MODE extendModeX) mut
			{
				VT.SetExtendModeX(&this, extendModeX);
			}
			public void SetExtendModeY(D2D1_EXTEND_MODE extendModeY) mut
			{
				VT.SetExtendModeY(&this, extendModeY);
			}
			public void SetInterpolationMode(D2D1_INTERPOLATION_MODE interpolationMode) mut
			{
				VT.SetInterpolationMode(&this, interpolationMode);
			}
			public void SetSourceRectangle(D2D_RECT_F* sourceRectangle) mut
			{
				VT.SetSourceRectangle(&this, sourceRectangle);
			}
			public void GetImage(ID2D1Image** image) mut
			{
				VT.GetImage(&this, image);
			}
			public D2D1_EXTEND_MODE GetExtendModeX() mut
			{
				return VT.GetExtendModeX(&this);
			}
			public D2D1_EXTEND_MODE GetExtendModeY() mut
			{
				return VT.GetExtendModeY(&this);
			}
			public D2D1_INTERPOLATION_MODE GetInterpolationMode() mut
			{
				return VT.GetInterpolationMode(&this);
			}
			public void GetSourceRectangle(D2D_RECT_F* sourceRectangle) mut
			{
				VT.GetSourceRectangle(&this, sourceRectangle);
			}
			[CRepr]
			public struct VTable : ID2D1Brush.VTable
			{
				public new function void(ID2D1ImageBrush *self, ID2D1Image* image) SetImage;
				public new function void(ID2D1ImageBrush *self, D2D1_EXTEND_MODE extendModeX) SetExtendModeX;
				public new function void(ID2D1ImageBrush *self, D2D1_EXTEND_MODE extendModeY) SetExtendModeY;
				public new function void(ID2D1ImageBrush *self, D2D1_INTERPOLATION_MODE interpolationMode) SetInterpolationMode;
				public new function void(ID2D1ImageBrush *self, D2D_RECT_F* sourceRectangle) SetSourceRectangle;
				public new function void(ID2D1ImageBrush *self, ID2D1Image** image) GetImage;
				public new function D2D1_EXTEND_MODE(ID2D1ImageBrush *self) GetExtendModeX;
				public new function D2D1_EXTEND_MODE(ID2D1ImageBrush *self) GetExtendModeY;
				public new function D2D1_INTERPOLATION_MODE(ID2D1ImageBrush *self) GetInterpolationMode;
				public new function void(ID2D1ImageBrush *self, D2D_RECT_F* sourceRectangle) GetSourceRectangle;
			}
		}
		[CRepr]
		public struct ID2D1BitmapBrush1 : ID2D1BitmapBrush
		{
			public const new Guid IID = .(0x41343a53, 0xe41a, 0x49a2, 0x91, 0xcd, 0x21, 0x79, 0x3b, 0xbb, 0x62, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetInterpolationMode1(D2D1_INTERPOLATION_MODE interpolationMode) mut
			{
				VT.SetInterpolationMode1(&this, interpolationMode);
			}
			public D2D1_INTERPOLATION_MODE GetInterpolationMode1() mut
			{
				return VT.GetInterpolationMode1(&this);
			}
			[CRepr]
			public struct VTable : ID2D1BitmapBrush.VTable
			{
				public new function void(ID2D1BitmapBrush1 *self, D2D1_INTERPOLATION_MODE interpolationMode) SetInterpolationMode1;
				public new function D2D1_INTERPOLATION_MODE(ID2D1BitmapBrush1 *self) GetInterpolationMode1;
			}
		}
		[CRepr]
		public struct ID2D1StrokeStyle1 : ID2D1StrokeStyle
		{
			public const new Guid IID = .(0x10a72a66, 0xe91c, 0x43f4, 0x99, 0x3f, 0xdd, 0xf4, 0xb8, 0x2b, 0x0b, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D1_STROKE_TRANSFORM_TYPE GetStrokeTransformType() mut
			{
				return VT.GetStrokeTransformType(&this);
			}
			[CRepr]
			public struct VTable : ID2D1StrokeStyle.VTable
			{
				public new function D2D1_STROKE_TRANSFORM_TYPE(ID2D1StrokeStyle1 *self) GetStrokeTransformType;
			}
		}
		[CRepr]
		public struct ID2D1PathGeometry1 : ID2D1PathGeometry
		{
			public const new Guid IID = .(0x62baa2d2, 0xab54, 0x41b7, 0xb8, 0x72, 0x78, 0x7e, 0x01, 0x06, 0xa4, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComputePointAndSegmentAtLength(float length, uint32 startSegment, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, D2D1_POINT_DESCRIPTION* pointDescription) mut
			{
				return VT.ComputePointAndSegmentAtLength(&this, length, startSegment, worldTransform, flatteningTolerance, pointDescription);
			}
			[CRepr]
			public struct VTable : ID2D1PathGeometry.VTable
			{
				public new function HRESULT(ID2D1PathGeometry1 *self, float length, uint32 startSegment, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, D2D1_POINT_DESCRIPTION* pointDescription) ComputePointAndSegmentAtLength;
			}
		}
		[CRepr]
		public struct ID2D1Properties : IUnknown
		{
			public const new Guid IID = .(0x483473d7, 0xcd46, 0x4f9d, 0x9d, 0x3a, 0x31, 0x12, 0xaa, 0x80, 0x15, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetPropertyCount() mut
			{
				return VT.GetPropertyCount(&this);
			}
			public HRESULT GetPropertyName(uint32 index, char16* name, uint32 nameCount) mut
			{
				return VT.GetPropertyName(&this, index, name, nameCount);
			}
			public uint32 GetPropertyNameLength(uint32 index) mut
			{
				return VT.GetPropertyNameLength(&this, index);
			}
			public D2D1_PROPERTY_TYPE ComGetType(uint32 index) mut
			{
				return VT.ComGetType(&this, index);
			}
			public uint32 GetPropertyIndex(PWSTR name) mut
			{
				return VT.GetPropertyIndex(&this, name);
			}
			public HRESULT SetValueByName(PWSTR name, D2D1_PROPERTY_TYPE type, uint8* data, uint32 dataSize) mut
			{
				return VT.SetValueByName(&this, name, type, data, dataSize);
			}
			public HRESULT SetValue(uint32 index, D2D1_PROPERTY_TYPE type, uint8* data, uint32 dataSize) mut
			{
				return VT.SetValue(&this, index, type, data, dataSize);
			}
			public HRESULT GetValueByName(PWSTR name, D2D1_PROPERTY_TYPE type, uint8* data, uint32 dataSize) mut
			{
				return VT.GetValueByName(&this, name, type, data, dataSize);
			}
			public HRESULT GetValue(uint32 index, D2D1_PROPERTY_TYPE type, uint8* data, uint32 dataSize) mut
			{
				return VT.GetValue(&this, index, type, data, dataSize);
			}
			public uint32 GetValueSize(uint32 index) mut
			{
				return VT.GetValueSize(&this, index);
			}
			public HRESULT GetSubProperties(uint32 index, ID2D1Properties** subProperties) mut
			{
				return VT.GetSubProperties(&this, index, subProperties);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(ID2D1Properties *self) GetPropertyCount;
				public new function HRESULT(ID2D1Properties *self, uint32 index, char16* name, uint32 nameCount) GetPropertyName;
				public new function uint32(ID2D1Properties *self, uint32 index) GetPropertyNameLength;
				public new function D2D1_PROPERTY_TYPE(ID2D1Properties *self, uint32 index) ComGetType;
				public new function uint32(ID2D1Properties *self, PWSTR name) GetPropertyIndex;
				public new function HRESULT(ID2D1Properties *self, PWSTR name, D2D1_PROPERTY_TYPE type, uint8* data, uint32 dataSize) SetValueByName;
				public new function HRESULT(ID2D1Properties *self, uint32 index, D2D1_PROPERTY_TYPE type, uint8* data, uint32 dataSize) SetValue;
				public new function HRESULT(ID2D1Properties *self, PWSTR name, D2D1_PROPERTY_TYPE type, uint8* data, uint32 dataSize) GetValueByName;
				public new function HRESULT(ID2D1Properties *self, uint32 index, D2D1_PROPERTY_TYPE type, uint8* data, uint32 dataSize) GetValue;
				public new function uint32(ID2D1Properties *self, uint32 index) GetValueSize;
				public new function HRESULT(ID2D1Properties *self, uint32 index, ID2D1Properties** subProperties) GetSubProperties;
			}
		}
		[CRepr]
		public struct ID2D1Effect : ID2D1Properties
		{
			public const new Guid IID = .(0x28211a43, 0x7d89, 0x476f, 0x81, 0x81, 0x2d, 0x61, 0x59, 0xb2, 0x20, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetInput(uint32 index, ID2D1Image* input, BOOL invalidate) mut
			{
				VT.SetInput(&this, index, input, invalidate);
			}
			public HRESULT SetInputCount(uint32 inputCount) mut
			{
				return VT.SetInputCount(&this, inputCount);
			}
			public void GetInput(uint32 index, ID2D1Image** input) mut
			{
				VT.GetInput(&this, index, input);
			}
			public uint32 GetInputCount() mut
			{
				return VT.GetInputCount(&this);
			}
			public void GetOutput(ID2D1Image** outputImage) mut
			{
				VT.GetOutput(&this, outputImage);
			}
			[CRepr]
			public struct VTable : ID2D1Properties.VTable
			{
				public new function void(ID2D1Effect *self, uint32 index, ID2D1Image* input, BOOL invalidate) SetInput;
				public new function HRESULT(ID2D1Effect *self, uint32 inputCount) SetInputCount;
				public new function void(ID2D1Effect *self, uint32 index, ID2D1Image** input) GetInput;
				public new function uint32(ID2D1Effect *self) GetInputCount;
				public new function void(ID2D1Effect *self, ID2D1Image** outputImage) GetOutput;
			}
		}
		[CRepr]
		public struct ID2D1Bitmap1 : ID2D1Bitmap
		{
			public const new Guid IID = .(0xa898a84c, 0x3873, 0x4588, 0xb0, 0x8b, 0xeb, 0xbf, 0x97, 0x8d, 0xf0, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetColorContext(ID2D1ColorContext** colorContext) mut
			{
				VT.GetColorContext(&this, colorContext);
			}
			public D2D1_BITMAP_OPTIONS GetOptions() mut
			{
				return VT.GetOptions(&this);
			}
			public HRESULT GetSurface(IDXGISurface** dxgiSurface) mut
			{
				return VT.GetSurface(&this, dxgiSurface);
			}
			public HRESULT Map(D2D1_MAP_OPTIONS options, D2D1_MAPPED_RECT* mappedRect) mut
			{
				return VT.Map(&this, options, mappedRect);
			}
			public HRESULT Unmap() mut
			{
				return VT.Unmap(&this);
			}
			[CRepr]
			public struct VTable : ID2D1Bitmap.VTable
			{
				public new function void(ID2D1Bitmap1 *self, ID2D1ColorContext** colorContext) GetColorContext;
				public new function D2D1_BITMAP_OPTIONS(ID2D1Bitmap1 *self) GetOptions;
				public new function HRESULT(ID2D1Bitmap1 *self, IDXGISurface** dxgiSurface) GetSurface;
				public new function HRESULT(ID2D1Bitmap1 *self, D2D1_MAP_OPTIONS options, D2D1_MAPPED_RECT* mappedRect) Map;
				public new function HRESULT(ID2D1Bitmap1 *self) Unmap;
			}
		}
		[CRepr]
		public struct ID2D1ColorContext : ID2D1Resource
		{
			public const new Guid IID = .(0x1c4820bb, 0x5771, 0x4518, 0xa5, 0x81, 0x2f, 0xe4, 0xdd, 0x0e, 0xc6, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D1_COLOR_SPACE GetColorSpace() mut
			{
				return VT.GetColorSpace(&this);
			}
			public uint32 GetProfileSize() mut
			{
				return VT.GetProfileSize(&this);
			}
			public HRESULT GetProfile(uint8* profile, uint32 profileSize) mut
			{
				return VT.GetProfile(&this, profile, profileSize);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function D2D1_COLOR_SPACE(ID2D1ColorContext *self) GetColorSpace;
				public new function uint32(ID2D1ColorContext *self) GetProfileSize;
				public new function HRESULT(ID2D1ColorContext *self, uint8* profile, uint32 profileSize) GetProfile;
			}
		}
		[CRepr]
		public struct ID2D1GradientStopCollection1 : ID2D1GradientStopCollection
		{
			public const new Guid IID = .(0xae1572f4, 0x5dd0, 0x4777, 0x99, 0x8b, 0x92, 0x79, 0x47, 0x2a, 0xe6, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetGradientStops1(D2D1_GRADIENT_STOP* gradientStops, uint32 gradientStopsCount) mut
			{
				VT.GetGradientStops1(&this, gradientStops, gradientStopsCount);
			}
			public D2D1_COLOR_SPACE GetPreInterpolationSpace() mut
			{
				return VT.GetPreInterpolationSpace(&this);
			}
			public D2D1_COLOR_SPACE GetPostInterpolationSpace() mut
			{
				return VT.GetPostInterpolationSpace(&this);
			}
			public D2D1_BUFFER_PRECISION GetBufferPrecision() mut
			{
				return VT.GetBufferPrecision(&this);
			}
			public D2D1_COLOR_INTERPOLATION_MODE GetColorInterpolationMode() mut
			{
				return VT.GetColorInterpolationMode(&this);
			}
			[CRepr]
			public struct VTable : ID2D1GradientStopCollection.VTable
			{
				public new function void(ID2D1GradientStopCollection1 *self, D2D1_GRADIENT_STOP* gradientStops, uint32 gradientStopsCount) GetGradientStops1;
				public new function D2D1_COLOR_SPACE(ID2D1GradientStopCollection1 *self) GetPreInterpolationSpace;
				public new function D2D1_COLOR_SPACE(ID2D1GradientStopCollection1 *self) GetPostInterpolationSpace;
				public new function D2D1_BUFFER_PRECISION(ID2D1GradientStopCollection1 *self) GetBufferPrecision;
				public new function D2D1_COLOR_INTERPOLATION_MODE(ID2D1GradientStopCollection1 *self) GetColorInterpolationMode;
			}
		}
		[CRepr]
		public struct ID2D1DrawingStateBlock1 : ID2D1DrawingStateBlock
		{
			public const new Guid IID = .(0x689f1f85, 0xc72e, 0x4e33, 0x8f, 0x19, 0x85, 0x75, 0x4e, 0xfd, 0x5a, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetDescription(D2D1_DRAWING_STATE_DESCRIPTION1* stateDescription) mut
			{
				VT.GetDescription(&this, stateDescription);
			}
			public void SetDescription(D2D1_DRAWING_STATE_DESCRIPTION1* stateDescription) mut
			{
				VT.SetDescription(&this, stateDescription);
			}
			[CRepr]
			public struct VTable : ID2D1DrawingStateBlock.VTable
			{
				public new function void(ID2D1DrawingStateBlock1 *self, D2D1_DRAWING_STATE_DESCRIPTION1* stateDescription) GetDescription;
				public new function void(ID2D1DrawingStateBlock1 *self, D2D1_DRAWING_STATE_DESCRIPTION1* stateDescription) SetDescription;
			}
		}
		[CRepr]
		public struct ID2D1DeviceContext : ID2D1RenderTarget
		{
			public const new Guid IID = .(0xe8f7fe7a, 0x191c, 0x466d, 0xad, 0x95, 0x97, 0x56, 0x78, 0xbd, 0xa9, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateBitmap(D2D_SIZE_U size, void* sourceData, uint32 pitch, D2D1_BITMAP_PROPERTIES1* bitmapProperties, ID2D1Bitmap1** bitmap) mut
			{
				return VT.CreateBitmap(&this, size, sourceData, pitch, bitmapProperties, bitmap);
			}
			public HRESULT CreateBitmapFromWicBitmap(IWICBitmapSource* wicBitmapSource, D2D1_BITMAP_PROPERTIES1* bitmapProperties, ID2D1Bitmap1** bitmap) mut
			{
				return VT.CreateBitmapFromWicBitmap(&this, wicBitmapSource, bitmapProperties, bitmap);
			}
			public HRESULT CreateColorContext(D2D1_COLOR_SPACE space, uint8* profile, uint32 profileSize, ID2D1ColorContext** colorContext) mut
			{
				return VT.CreateColorContext(&this, space, profile, profileSize, colorContext);
			}
			public HRESULT CreateColorContextFromFilename(PWSTR filename, ID2D1ColorContext** colorContext) mut
			{
				return VT.CreateColorContextFromFilename(&this, filename, colorContext);
			}
			public HRESULT CreateColorContextFromWicColorContext(IWICColorContext* wicColorContext, ID2D1ColorContext** colorContext) mut
			{
				return VT.CreateColorContextFromWicColorContext(&this, wicColorContext, colorContext);
			}
			public HRESULT CreateBitmapFromDxgiSurface(IDXGISurface* surface, D2D1_BITMAP_PROPERTIES1* bitmapProperties, ID2D1Bitmap1** bitmap) mut
			{
				return VT.CreateBitmapFromDxgiSurface(&this, surface, bitmapProperties, bitmap);
			}
			public HRESULT CreateEffect(Guid* effectId, ID2D1Effect** effect) mut
			{
				return VT.CreateEffect(&this, effectId, effect);
			}
			public HRESULT CreateGradientStopCollection(D2D1_GRADIENT_STOP* straightAlphaGradientStops, uint32 straightAlphaGradientStopsCount, D2D1_COLOR_SPACE preInterpolationSpace, D2D1_COLOR_SPACE postInterpolationSpace, D2D1_BUFFER_PRECISION bufferPrecision, D2D1_EXTEND_MODE extendMode, D2D1_COLOR_INTERPOLATION_MODE colorInterpolationMode, ID2D1GradientStopCollection1** gradientStopCollection1) mut
			{
				return VT.CreateGradientStopCollection(&this, straightAlphaGradientStops, straightAlphaGradientStopsCount, preInterpolationSpace, postInterpolationSpace, bufferPrecision, extendMode, colorInterpolationMode, gradientStopCollection1);
			}
			public HRESULT CreateImageBrush(ID2D1Image* image, D2D1_IMAGE_BRUSH_PROPERTIES* imageBrushProperties, D2D1_BRUSH_PROPERTIES* brushProperties, ID2D1ImageBrush** imageBrush) mut
			{
				return VT.CreateImageBrush(&this, image, imageBrushProperties, brushProperties, imageBrush);
			}
			public HRESULT CreateBitmapBrush(ID2D1Bitmap* bitmap, D2D1_BITMAP_BRUSH_PROPERTIES1* bitmapBrushProperties, D2D1_BRUSH_PROPERTIES* brushProperties, ID2D1BitmapBrush1** bitmapBrush) mut
			{
				return VT.CreateBitmapBrush(&this, bitmap, bitmapBrushProperties, brushProperties, bitmapBrush);
			}
			public HRESULT CreateCommandList(ID2D1CommandList** commandList) mut
			{
				return VT.CreateCommandList(&this, commandList);
			}
			public BOOL IsDxgiFormatSupported(DXGI_FORMAT format) mut
			{
				return VT.IsDxgiFormatSupported(&this, format);
			}
			public BOOL IsBufferPrecisionSupported(D2D1_BUFFER_PRECISION bufferPrecision) mut
			{
				return VT.IsBufferPrecisionSupported(&this, bufferPrecision);
			}
			public HRESULT GetImageLocalBounds(ID2D1Image* image, D2D_RECT_F* localBounds) mut
			{
				return VT.GetImageLocalBounds(&this, image, localBounds);
			}
			public HRESULT GetImageWorldBounds(ID2D1Image* image, D2D_RECT_F* worldBounds) mut
			{
				return VT.GetImageWorldBounds(&this, image, worldBounds);
			}
			public HRESULT GetGlyphRunWorldBounds(D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, DWRITE_MEASURING_MODE measuringMode, D2D_RECT_F* bounds) mut
			{
				return VT.GetGlyphRunWorldBounds(&this, baselineOrigin, glyphRun, measuringMode, bounds);
			}
			public void GetDevice(ID2D1Device** device) mut
			{
				VT.GetDevice(&this, device);
			}
			public void SetTarget(ID2D1Image* image) mut
			{
				VT.SetTarget(&this, image);
			}
			public void GetTarget(ID2D1Image** image) mut
			{
				VT.GetTarget(&this, image);
			}
			public void SetRenderingControls(D2D1_RENDERING_CONTROLS* renderingControls) mut
			{
				VT.SetRenderingControls(&this, renderingControls);
			}
			public void GetRenderingControls(D2D1_RENDERING_CONTROLS* renderingControls) mut
			{
				VT.GetRenderingControls(&this, renderingControls);
			}
			public void SetPrimitiveBlend(D2D1_PRIMITIVE_BLEND primitiveBlend) mut
			{
				VT.SetPrimitiveBlend(&this, primitiveBlend);
			}
			public D2D1_PRIMITIVE_BLEND GetPrimitiveBlend() mut
			{
				return VT.GetPrimitiveBlend(&this);
			}
			public void SetUnitMode(D2D1_UNIT_MODE unitMode) mut
			{
				VT.SetUnitMode(&this, unitMode);
			}
			public D2D1_UNIT_MODE GetUnitMode() mut
			{
				return VT.GetUnitMode(&this);
			}
			public void DrawGlyphRun(D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, ID2D1Brush* foregroundBrush, DWRITE_MEASURING_MODE measuringMode) mut
			{
				VT.DrawGlyphRun(&this, baselineOrigin, glyphRun, glyphRunDescription, foregroundBrush, measuringMode);
			}
			public void DrawImage(ID2D1Image* image, D2D_POINT_2F* targetOffset, D2D_RECT_F* imageRectangle, D2D1_INTERPOLATION_MODE interpolationMode, D2D1_COMPOSITE_MODE compositeMode) mut
			{
				VT.DrawImage(&this, image, targetOffset, imageRectangle, interpolationMode, compositeMode);
			}
			public void DrawGdiMetafile(ID2D1GdiMetafile* gdiMetafile, D2D_POINT_2F* targetOffset) mut
			{
				VT.DrawGdiMetafile(&this, gdiMetafile, targetOffset);
			}
			public void DrawBitmap(ID2D1Bitmap* bitmap, D2D_RECT_F* destinationRectangle, float opacity, D2D1_INTERPOLATION_MODE interpolationMode, D2D_RECT_F* sourceRectangle, D2D_MATRIX_4X4_F* perspectiveTransform) mut
			{
				VT.DrawBitmap(&this, bitmap, destinationRectangle, opacity, interpolationMode, sourceRectangle, perspectiveTransform);
			}
			public void PushLayer(D2D1_LAYER_PARAMETERS1* layerParameters, ID2D1Layer* layer) mut
			{
				VT.PushLayer(&this, layerParameters, layer);
			}
			public HRESULT InvalidateEffectInputRectangle(ID2D1Effect* effect, uint32 input, D2D_RECT_F* inputRectangle) mut
			{
				return VT.InvalidateEffectInputRectangle(&this, effect, input, inputRectangle);
			}
			public HRESULT GetEffectInvalidRectangleCount(ID2D1Effect* effect, uint32* rectangleCount) mut
			{
				return VT.GetEffectInvalidRectangleCount(&this, effect, rectangleCount);
			}
			public HRESULT GetEffectInvalidRectangles(ID2D1Effect* effect, D2D_RECT_F* rectangles, uint32 rectanglesCount) mut
			{
				return VT.GetEffectInvalidRectangles(&this, effect, rectangles, rectanglesCount);
			}
			public HRESULT GetEffectRequiredInputRectangles(ID2D1Effect* renderEffect, D2D_RECT_F* renderImageRectangle, D2D1_EFFECT_INPUT_DESCRIPTION* inputDescriptions, D2D_RECT_F* requiredInputRects, uint32 inputCount) mut
			{
				return VT.GetEffectRequiredInputRectangles(&this, renderEffect, renderImageRectangle, inputDescriptions, requiredInputRects, inputCount);
			}
			public void FillOpacityMask(ID2D1Bitmap* opacityMask, ID2D1Brush* brush, D2D_RECT_F* destinationRectangle, D2D_RECT_F* sourceRectangle) mut
			{
				VT.FillOpacityMask(&this, opacityMask, brush, destinationRectangle, sourceRectangle);
			}
			[CRepr]
			public struct VTable : ID2D1RenderTarget.VTable
			{
				public new function HRESULT(ID2D1DeviceContext *self, D2D_SIZE_U size, void* sourceData, uint32 pitch, D2D1_BITMAP_PROPERTIES1* bitmapProperties, ID2D1Bitmap1** bitmap) CreateBitmap;
				public new function HRESULT(ID2D1DeviceContext *self, IWICBitmapSource* wicBitmapSource, D2D1_BITMAP_PROPERTIES1* bitmapProperties, ID2D1Bitmap1** bitmap) CreateBitmapFromWicBitmap;
				public new function HRESULT(ID2D1DeviceContext *self, D2D1_COLOR_SPACE space, uint8* profile, uint32 profileSize, ID2D1ColorContext** colorContext) CreateColorContext;
				public new function HRESULT(ID2D1DeviceContext *self, PWSTR filename, ID2D1ColorContext** colorContext) CreateColorContextFromFilename;
				public new function HRESULT(ID2D1DeviceContext *self, IWICColorContext* wicColorContext, ID2D1ColorContext** colorContext) CreateColorContextFromWicColorContext;
				public new function HRESULT(ID2D1DeviceContext *self, IDXGISurface* surface, D2D1_BITMAP_PROPERTIES1* bitmapProperties, ID2D1Bitmap1** bitmap) CreateBitmapFromDxgiSurface;
				public new function HRESULT(ID2D1DeviceContext *self, Guid* effectId, ID2D1Effect** effect) CreateEffect;
				public new function HRESULT(ID2D1DeviceContext *self, D2D1_GRADIENT_STOP* straightAlphaGradientStops, uint32 straightAlphaGradientStopsCount, D2D1_COLOR_SPACE preInterpolationSpace, D2D1_COLOR_SPACE postInterpolationSpace, D2D1_BUFFER_PRECISION bufferPrecision, D2D1_EXTEND_MODE extendMode, D2D1_COLOR_INTERPOLATION_MODE colorInterpolationMode, ID2D1GradientStopCollection1** gradientStopCollection1) CreateGradientStopCollection;
				public new function HRESULT(ID2D1DeviceContext *self, ID2D1Image* image, D2D1_IMAGE_BRUSH_PROPERTIES* imageBrushProperties, D2D1_BRUSH_PROPERTIES* brushProperties, ID2D1ImageBrush** imageBrush) CreateImageBrush;
				public new function HRESULT(ID2D1DeviceContext *self, ID2D1Bitmap* bitmap, D2D1_BITMAP_BRUSH_PROPERTIES1* bitmapBrushProperties, D2D1_BRUSH_PROPERTIES* brushProperties, ID2D1BitmapBrush1** bitmapBrush) CreateBitmapBrush;
				public new function HRESULT(ID2D1DeviceContext *self, ID2D1CommandList** commandList) CreateCommandList;
				public new function BOOL(ID2D1DeviceContext *self, DXGI_FORMAT format) IsDxgiFormatSupported;
				public new function BOOL(ID2D1DeviceContext *self, D2D1_BUFFER_PRECISION bufferPrecision) IsBufferPrecisionSupported;
				public new function HRESULT(ID2D1DeviceContext *self, ID2D1Image* image, D2D_RECT_F* localBounds) GetImageLocalBounds;
				public new function HRESULT(ID2D1DeviceContext *self, ID2D1Image* image, D2D_RECT_F* worldBounds) GetImageWorldBounds;
				public new function HRESULT(ID2D1DeviceContext *self, D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, DWRITE_MEASURING_MODE measuringMode, D2D_RECT_F* bounds) GetGlyphRunWorldBounds;
				public new function void(ID2D1DeviceContext *self, ID2D1Device** device) GetDevice;
				public new function void(ID2D1DeviceContext *self, ID2D1Image* image) SetTarget;
				public new function void(ID2D1DeviceContext *self, ID2D1Image** image) GetTarget;
				public new function void(ID2D1DeviceContext *self, D2D1_RENDERING_CONTROLS* renderingControls) SetRenderingControls;
				public new function void(ID2D1DeviceContext *self, D2D1_RENDERING_CONTROLS* renderingControls) GetRenderingControls;
				public new function void(ID2D1DeviceContext *self, D2D1_PRIMITIVE_BLEND primitiveBlend) SetPrimitiveBlend;
				public new function D2D1_PRIMITIVE_BLEND(ID2D1DeviceContext *self) GetPrimitiveBlend;
				public new function void(ID2D1DeviceContext *self, D2D1_UNIT_MODE unitMode) SetUnitMode;
				public new function D2D1_UNIT_MODE(ID2D1DeviceContext *self) GetUnitMode;
				public new function void(ID2D1DeviceContext *self, D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, ID2D1Brush* foregroundBrush, DWRITE_MEASURING_MODE measuringMode) DrawGlyphRun;
				public new function void(ID2D1DeviceContext *self, ID2D1Image* image, D2D_POINT_2F* targetOffset, D2D_RECT_F* imageRectangle, D2D1_INTERPOLATION_MODE interpolationMode, D2D1_COMPOSITE_MODE compositeMode) DrawImage;
				public new function void(ID2D1DeviceContext *self, ID2D1GdiMetafile* gdiMetafile, D2D_POINT_2F* targetOffset) DrawGdiMetafile;
				public new function void(ID2D1DeviceContext *self, ID2D1Bitmap* bitmap, D2D_RECT_F* destinationRectangle, float opacity, D2D1_INTERPOLATION_MODE interpolationMode, D2D_RECT_F* sourceRectangle, D2D_MATRIX_4X4_F* perspectiveTransform) DrawBitmap;
				public new function void(ID2D1DeviceContext *self, D2D1_LAYER_PARAMETERS1* layerParameters, ID2D1Layer* layer) PushLayer;
				public new function HRESULT(ID2D1DeviceContext *self, ID2D1Effect* effect, uint32 input, D2D_RECT_F* inputRectangle) InvalidateEffectInputRectangle;
				public new function HRESULT(ID2D1DeviceContext *self, ID2D1Effect* effect, uint32* rectangleCount) GetEffectInvalidRectangleCount;
				public new function HRESULT(ID2D1DeviceContext *self, ID2D1Effect* effect, D2D_RECT_F* rectangles, uint32 rectanglesCount) GetEffectInvalidRectangles;
				public new function HRESULT(ID2D1DeviceContext *self, ID2D1Effect* renderEffect, D2D_RECT_F* renderImageRectangle, D2D1_EFFECT_INPUT_DESCRIPTION* inputDescriptions, D2D_RECT_F* requiredInputRects, uint32 inputCount) GetEffectRequiredInputRectangles;
				public new function void(ID2D1DeviceContext *self, ID2D1Bitmap* opacityMask, ID2D1Brush* brush, D2D_RECT_F* destinationRectangle, D2D_RECT_F* sourceRectangle) FillOpacityMask;
			}
		}
		[CRepr]
		public struct ID2D1Device : ID2D1Resource
		{
			public const new Guid IID = .(0x47dd575d, 0xac05, 0x4cdd, 0x80, 0x49, 0x9b, 0x02, 0xcd, 0x16, 0xf4, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDeviceContext(D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext** deviceContext) mut
			{
				return VT.CreateDeviceContext(&this, options, deviceContext);
			}
			public HRESULT CreatePrintControl(IWICImagingFactory* wicFactory, IPrintDocumentPackageTarget* documentTarget, D2D1_PRINT_CONTROL_PROPERTIES* printControlProperties, ID2D1PrintControl** printControl) mut
			{
				return VT.CreatePrintControl(&this, wicFactory, documentTarget, printControlProperties, printControl);
			}
			public void SetMaximumTextureMemory(uint64 maximumInBytes) mut
			{
				VT.SetMaximumTextureMemory(&this, maximumInBytes);
			}
			public uint64 GetMaximumTextureMemory() mut
			{
				return VT.GetMaximumTextureMemory(&this);
			}
			public void ClearResources(uint32 millisecondsSinceUse) mut
			{
				VT.ClearResources(&this, millisecondsSinceUse);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function HRESULT(ID2D1Device *self, D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext** deviceContext) CreateDeviceContext;
				public new function HRESULT(ID2D1Device *self, IWICImagingFactory* wicFactory, IPrintDocumentPackageTarget* documentTarget, D2D1_PRINT_CONTROL_PROPERTIES* printControlProperties, ID2D1PrintControl** printControl) CreatePrintControl;
				public new function void(ID2D1Device *self, uint64 maximumInBytes) SetMaximumTextureMemory;
				public new function uint64(ID2D1Device *self) GetMaximumTextureMemory;
				public new function void(ID2D1Device *self, uint32 millisecondsSinceUse) ClearResources;
			}
		}
		[CRepr]
		public struct ID2D1Factory1 : ID2D1Factory
		{
			public const new Guid IID = .(0xbb12d362, 0xdaee, 0x4b9a, 0xaa, 0x1d, 0x14, 0xba, 0x40, 0x1c, 0xfa, 0x1f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDevice(IDXGIDevice* dxgiDevice, ID2D1Device** d2dDevice) mut
			{
				return VT.CreateDevice(&this, dxgiDevice, d2dDevice);
			}
			public HRESULT CreateStrokeStyle(D2D1_STROKE_STYLE_PROPERTIES1* strokeStyleProperties, float* dashes, uint32 dashesCount, ID2D1StrokeStyle1** strokeStyle) mut
			{
				return VT.CreateStrokeStyle(&this, strokeStyleProperties, dashes, dashesCount, strokeStyle);
			}
			public HRESULT CreatePathGeometry(ID2D1PathGeometry1** pathGeometry) mut
			{
				return VT.CreatePathGeometry(&this, pathGeometry);
			}
			public HRESULT CreateDrawingStateBlock(D2D1_DRAWING_STATE_DESCRIPTION1* drawingStateDescription, IDWriteRenderingParams* textRenderingParams, ID2D1DrawingStateBlock1** drawingStateBlock) mut
			{
				return VT.CreateDrawingStateBlock(&this, drawingStateDescription, textRenderingParams, drawingStateBlock);
			}
			public HRESULT CreateGdiMetafile(IStream* metafileStream, ID2D1GdiMetafile** metafile) mut
			{
				return VT.CreateGdiMetafile(&this, metafileStream, metafile);
			}
			public HRESULT RegisterEffectFromStream(Guid* classId, IStream* propertyXml, D2D1_PROPERTY_BINDING* bindings, uint32 bindingsCount, PD2D1_EFFECT_FACTORY effectFactory) mut
			{
				return VT.RegisterEffectFromStream(&this, classId, propertyXml, bindings, bindingsCount, effectFactory);
			}
			public HRESULT RegisterEffectFromString(Guid* classId, PWSTR propertyXml, D2D1_PROPERTY_BINDING* bindings, uint32 bindingsCount, PD2D1_EFFECT_FACTORY effectFactory) mut
			{
				return VT.RegisterEffectFromString(&this, classId, propertyXml, bindings, bindingsCount, effectFactory);
			}
			public HRESULT UnregisterEffect(Guid* classId) mut
			{
				return VT.UnregisterEffect(&this, classId);
			}
			public HRESULT GetRegisteredEffects(Guid* effects, uint32 effectsCount, uint32* effectsReturned, uint32* effectsRegistered) mut
			{
				return VT.GetRegisteredEffects(&this, effects, effectsCount, effectsReturned, effectsRegistered);
			}
			public HRESULT GetEffectProperties(Guid* effectId, ID2D1Properties** properties) mut
			{
				return VT.GetEffectProperties(&this, effectId, properties);
			}
			[CRepr]
			public struct VTable : ID2D1Factory.VTable
			{
				public new function HRESULT(ID2D1Factory1 *self, IDXGIDevice* dxgiDevice, ID2D1Device** d2dDevice) CreateDevice;
				public new function HRESULT(ID2D1Factory1 *self, D2D1_STROKE_STYLE_PROPERTIES1* strokeStyleProperties, float* dashes, uint32 dashesCount, ID2D1StrokeStyle1** strokeStyle) CreateStrokeStyle;
				public new function HRESULT(ID2D1Factory1 *self, ID2D1PathGeometry1** pathGeometry) CreatePathGeometry;
				public new function HRESULT(ID2D1Factory1 *self, D2D1_DRAWING_STATE_DESCRIPTION1* drawingStateDescription, IDWriteRenderingParams* textRenderingParams, ID2D1DrawingStateBlock1** drawingStateBlock) CreateDrawingStateBlock;
				public new function HRESULT(ID2D1Factory1 *self, IStream* metafileStream, ID2D1GdiMetafile** metafile) CreateGdiMetafile;
				public new function HRESULT(ID2D1Factory1 *self, Guid* classId, IStream* propertyXml, D2D1_PROPERTY_BINDING* bindings, uint32 bindingsCount, PD2D1_EFFECT_FACTORY effectFactory) RegisterEffectFromStream;
				public new function HRESULT(ID2D1Factory1 *self, Guid* classId, PWSTR propertyXml, D2D1_PROPERTY_BINDING* bindings, uint32 bindingsCount, PD2D1_EFFECT_FACTORY effectFactory) RegisterEffectFromString;
				public new function HRESULT(ID2D1Factory1 *self, Guid* classId) UnregisterEffect;
				public new function HRESULT(ID2D1Factory1 *self, Guid* effects, uint32 effectsCount, uint32* effectsReturned, uint32* effectsRegistered) GetRegisteredEffects;
				public new function HRESULT(ID2D1Factory1 *self, Guid* effectId, ID2D1Properties** properties) GetEffectProperties;
			}
		}
		[CRepr]
		public struct ID2D1Multithread : IUnknown
		{
			public const new Guid IID = .(0x31e6e7bc, 0xe0ff, 0x4d46, 0x8c, 0x64, 0xa0, 0xa8, 0xc4, 0x1c, 0x15, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public BOOL GetMultithreadProtected() mut
			{
				return VT.GetMultithreadProtected(&this);
			}
			public void Enter() mut
			{
				VT.Enter(&this);
			}
			public void Leave() mut
			{
				VT.Leave(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function BOOL(ID2D1Multithread *self) GetMultithreadProtected;
				public new function void(ID2D1Multithread *self) Enter;
				public new function void(ID2D1Multithread *self) Leave;
			}
		}
		[CRepr]
		public struct ID2D1VertexBuffer : IUnknown
		{
			public const new Guid IID = .(0x9b8b1336, 0x00a5, 0x4668, 0x92, 0xb7, 0xce, 0xd5, 0xd8, 0xbf, 0x9b, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Map(uint8** data, uint32 bufferSize) mut
			{
				return VT.Map(&this, data, bufferSize);
			}
			public HRESULT Unmap() mut
			{
				return VT.Unmap(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ID2D1VertexBuffer *self, uint8** data, uint32 bufferSize) Map;
				public new function HRESULT(ID2D1VertexBuffer *self) Unmap;
			}
		}
		[CRepr]
		public struct ID2D1ResourceTexture : IUnknown
		{
			public const new Guid IID = .(0x688d15c3, 0x02b0, 0x438d, 0xb1, 0x3a, 0xd1, 0xb4, 0x4c, 0x32, 0xc3, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Update(uint32* minimumExtents, uint32* maximimumExtents, uint32* strides, uint32 dimensions, uint8* data, uint32 dataCount) mut
			{
				return VT.Update(&this, minimumExtents, maximimumExtents, strides, dimensions, data, dataCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ID2D1ResourceTexture *self, uint32* minimumExtents, uint32* maximimumExtents, uint32* strides, uint32 dimensions, uint8* data, uint32 dataCount) Update;
			}
		}
		[CRepr]
		public struct ID2D1RenderInfo : IUnknown
		{
			public const new Guid IID = .(0x519ae1bd, 0xd19a, 0x420d, 0xb8, 0x49, 0x36, 0x4f, 0x59, 0x47, 0x76, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInputDescription(uint32 inputIndex, D2D1_INPUT_DESCRIPTION inputDescription) mut
			{
				return VT.SetInputDescription(&this, inputIndex, inputDescription);
			}
			public HRESULT SetOutputBuffer(D2D1_BUFFER_PRECISION bufferPrecision, D2D1_CHANNEL_DEPTH channelDepth) mut
			{
				return VT.SetOutputBuffer(&this, bufferPrecision, channelDepth);
			}
			public void SetCached(BOOL isCached) mut
			{
				VT.SetCached(&this, isCached);
			}
			public void SetInstructionCountHint(uint32 instructionCount) mut
			{
				VT.SetInstructionCountHint(&this, instructionCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ID2D1RenderInfo *self, uint32 inputIndex, D2D1_INPUT_DESCRIPTION inputDescription) SetInputDescription;
				public new function HRESULT(ID2D1RenderInfo *self, D2D1_BUFFER_PRECISION bufferPrecision, D2D1_CHANNEL_DEPTH channelDepth) SetOutputBuffer;
				public new function void(ID2D1RenderInfo *self, BOOL isCached) SetCached;
				public new function void(ID2D1RenderInfo *self, uint32 instructionCount) SetInstructionCountHint;
			}
		}
		[CRepr]
		public struct ID2D1DrawInfo : ID2D1RenderInfo
		{
			public const new Guid IID = .(0x693ce632, 0x7f2f, 0x45de, 0x93, 0xfe, 0x18, 0xd8, 0x8b, 0x37, 0xaa, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPixelShaderConstantBuffer(uint8* buffer, uint32 bufferCount) mut
			{
				return VT.SetPixelShaderConstantBuffer(&this, buffer, bufferCount);
			}
			public HRESULT SetResourceTexture(uint32 textureIndex, ID2D1ResourceTexture* resourceTexture) mut
			{
				return VT.SetResourceTexture(&this, textureIndex, resourceTexture);
			}
			public HRESULT SetVertexShaderConstantBuffer(uint8* buffer, uint32 bufferCount) mut
			{
				return VT.SetVertexShaderConstantBuffer(&this, buffer, bufferCount);
			}
			public HRESULT SetPixelShader(Guid* shaderId, D2D1_PIXEL_OPTIONS pixelOptions) mut
			{
				return VT.SetPixelShader(&this, shaderId, pixelOptions);
			}
			public HRESULT SetVertexProcessing(ID2D1VertexBuffer* vertexBuffer, D2D1_VERTEX_OPTIONS vertexOptions, D2D1_BLEND_DESCRIPTION* blendDescription, D2D1_VERTEX_RANGE* vertexRange, Guid* vertexShader) mut
			{
				return VT.SetVertexProcessing(&this, vertexBuffer, vertexOptions, blendDescription, vertexRange, vertexShader);
			}
			[CRepr]
			public struct VTable : ID2D1RenderInfo.VTable
			{
				public new function HRESULT(ID2D1DrawInfo *self, uint8* buffer, uint32 bufferCount) SetPixelShaderConstantBuffer;
				public new function HRESULT(ID2D1DrawInfo *self, uint32 textureIndex, ID2D1ResourceTexture* resourceTexture) SetResourceTexture;
				public new function HRESULT(ID2D1DrawInfo *self, uint8* buffer, uint32 bufferCount) SetVertexShaderConstantBuffer;
				public new function HRESULT(ID2D1DrawInfo *self, Guid* shaderId, D2D1_PIXEL_OPTIONS pixelOptions) SetPixelShader;
				public new function HRESULT(ID2D1DrawInfo *self, ID2D1VertexBuffer* vertexBuffer, D2D1_VERTEX_OPTIONS vertexOptions, D2D1_BLEND_DESCRIPTION* blendDescription, D2D1_VERTEX_RANGE* vertexRange, Guid* vertexShader) SetVertexProcessing;
			}
		}
		[CRepr]
		public struct ID2D1ComputeInfo : ID2D1RenderInfo
		{
			public const new Guid IID = .(0x5598b14b, 0x9fd7, 0x48b7, 0x9b, 0xdb, 0x8f, 0x09, 0x64, 0xeb, 0x38, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetComputeShaderConstantBuffer(uint8* buffer, uint32 bufferCount) mut
			{
				return VT.SetComputeShaderConstantBuffer(&this, buffer, bufferCount);
			}
			public HRESULT SetComputeShader(Guid* shaderId) mut
			{
				return VT.SetComputeShader(&this, shaderId);
			}
			public HRESULT SetResourceTexture(uint32 textureIndex, ID2D1ResourceTexture* resourceTexture) mut
			{
				return VT.SetResourceTexture(&this, textureIndex, resourceTexture);
			}
			[CRepr]
			public struct VTable : ID2D1RenderInfo.VTable
			{
				public new function HRESULT(ID2D1ComputeInfo *self, uint8* buffer, uint32 bufferCount) SetComputeShaderConstantBuffer;
				public new function HRESULT(ID2D1ComputeInfo *self, Guid* shaderId) SetComputeShader;
				public new function HRESULT(ID2D1ComputeInfo *self, uint32 textureIndex, ID2D1ResourceTexture* resourceTexture) SetResourceTexture;
			}
		}
		[CRepr]
		public struct ID2D1TransformNode : IUnknown
		{
			public const new Guid IID = .(0xb2efe1e7, 0x729f, 0x4102, 0x94, 0x9f, 0x50, 0x5f, 0xa2, 0x1b, 0xf6, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetInputCount() mut
			{
				return VT.GetInputCount(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(ID2D1TransformNode *self) GetInputCount;
			}
		}
		[CRepr]
		public struct ID2D1TransformGraph : IUnknown
		{
			public const new Guid IID = .(0x13d29038, 0xc3e6, 0x4034, 0x90, 0x81, 0x13, 0xb5, 0x3a, 0x41, 0x79, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetInputCount() mut
			{
				return VT.GetInputCount(&this);
			}
			public HRESULT SetSingleTransformNode(ID2D1TransformNode* node) mut
			{
				return VT.SetSingleTransformNode(&this, node);
			}
			public HRESULT AddNode(ID2D1TransformNode* node) mut
			{
				return VT.AddNode(&this, node);
			}
			public HRESULT RemoveNode(ID2D1TransformNode* node) mut
			{
				return VT.RemoveNode(&this, node);
			}
			public HRESULT SetOutputNode(ID2D1TransformNode* node) mut
			{
				return VT.SetOutputNode(&this, node);
			}
			public HRESULT ConnectNode(ID2D1TransformNode* fromNode, ID2D1TransformNode* toNode, uint32 toNodeInputIndex) mut
			{
				return VT.ConnectNode(&this, fromNode, toNode, toNodeInputIndex);
			}
			public HRESULT ConnectToEffectInput(uint32 toEffectInputIndex, ID2D1TransformNode* node, uint32 toNodeInputIndex) mut
			{
				return VT.ConnectToEffectInput(&this, toEffectInputIndex, node, toNodeInputIndex);
			}
			public void Clear() mut
			{
				VT.Clear(&this);
			}
			public HRESULT SetPassthroughGraph(uint32 effectInputIndex) mut
			{
				return VT.SetPassthroughGraph(&this, effectInputIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(ID2D1TransformGraph *self) GetInputCount;
				public new function HRESULT(ID2D1TransformGraph *self, ID2D1TransformNode* node) SetSingleTransformNode;
				public new function HRESULT(ID2D1TransformGraph *self, ID2D1TransformNode* node) AddNode;
				public new function HRESULT(ID2D1TransformGraph *self, ID2D1TransformNode* node) RemoveNode;
				public new function HRESULT(ID2D1TransformGraph *self, ID2D1TransformNode* node) SetOutputNode;
				public new function HRESULT(ID2D1TransformGraph *self, ID2D1TransformNode* fromNode, ID2D1TransformNode* toNode, uint32 toNodeInputIndex) ConnectNode;
				public new function HRESULT(ID2D1TransformGraph *self, uint32 toEffectInputIndex, ID2D1TransformNode* node, uint32 toNodeInputIndex) ConnectToEffectInput;
				public new function void(ID2D1TransformGraph *self) Clear;
				public new function HRESULT(ID2D1TransformGraph *self, uint32 effectInputIndex) SetPassthroughGraph;
			}
		}
		[CRepr]
		public struct ID2D1Transform : ID2D1TransformNode
		{
			public const new Guid IID = .(0xef1a287d, 0x342a, 0x4f76, 0x8f, 0xdb, 0xda, 0x0d, 0x6e, 0xa9, 0xf9, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MapOutputRectToInputRects(RECT* outputRect, RECT* inputRects, uint32 inputRectsCount) mut
			{
				return VT.MapOutputRectToInputRects(&this, outputRect, inputRects, inputRectsCount);
			}
			public HRESULT MapInputRectsToOutputRect(RECT* inputRects, RECT* inputOpaqueSubRects, uint32 inputRectCount, RECT* outputRect, RECT* outputOpaqueSubRect) mut
			{
				return VT.MapInputRectsToOutputRect(&this, inputRects, inputOpaqueSubRects, inputRectCount, outputRect, outputOpaqueSubRect);
			}
			public HRESULT MapInvalidRect(uint32 inputIndex, RECT invalidInputRect, RECT* invalidOutputRect) mut
			{
				return VT.MapInvalidRect(&this, inputIndex, invalidInputRect, invalidOutputRect);
			}
			[CRepr]
			public struct VTable : ID2D1TransformNode.VTable
			{
				public new function HRESULT(ID2D1Transform *self, RECT* outputRect, RECT* inputRects, uint32 inputRectsCount) MapOutputRectToInputRects;
				public new function HRESULT(ID2D1Transform *self, RECT* inputRects, RECT* inputOpaqueSubRects, uint32 inputRectCount, RECT* outputRect, RECT* outputOpaqueSubRect) MapInputRectsToOutputRect;
				public new function HRESULT(ID2D1Transform *self, uint32 inputIndex, RECT invalidInputRect, RECT* invalidOutputRect) MapInvalidRect;
			}
		}
		[CRepr]
		public struct ID2D1DrawTransform : ID2D1Transform
		{
			public const new Guid IID = .(0x36bfdcb6, 0x9739, 0x435d, 0xa3, 0x0d, 0xa6, 0x53, 0xbe, 0xff, 0x6a, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDrawInfo(ID2D1DrawInfo* drawInfo) mut
			{
				return VT.SetDrawInfo(&this, drawInfo);
			}
			[CRepr]
			public struct VTable : ID2D1Transform.VTable
			{
				public new function HRESULT(ID2D1DrawTransform *self, ID2D1DrawInfo* drawInfo) SetDrawInfo;
			}
		}
		[CRepr]
		public struct ID2D1ComputeTransform : ID2D1Transform
		{
			public const new Guid IID = .(0x0d85573c, 0x01e3, 0x4f7d, 0xbf, 0xd9, 0x0d, 0x60, 0x60, 0x8b, 0xf3, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetComputeInfo(ID2D1ComputeInfo* computeInfo) mut
			{
				return VT.SetComputeInfo(&this, computeInfo);
			}
			public HRESULT CalculateThreadgroups(RECT* outputRect, uint32* dimensionX, uint32* dimensionY, uint32* dimensionZ) mut
			{
				return VT.CalculateThreadgroups(&this, outputRect, dimensionX, dimensionY, dimensionZ);
			}
			[CRepr]
			public struct VTable : ID2D1Transform.VTable
			{
				public new function HRESULT(ID2D1ComputeTransform *self, ID2D1ComputeInfo* computeInfo) SetComputeInfo;
				public new function HRESULT(ID2D1ComputeTransform *self, RECT* outputRect, uint32* dimensionX, uint32* dimensionY, uint32* dimensionZ) CalculateThreadgroups;
			}
		}
		[CRepr]
		public struct ID2D1AnalysisTransform : IUnknown
		{
			public const new Guid IID = .(0x0359dc30, 0x95e6, 0x4568, 0x90, 0x55, 0x27, 0x72, 0x0d, 0x13, 0x0e, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ProcessAnalysisResults(uint8* analysisData, uint32 analysisDataCount) mut
			{
				return VT.ProcessAnalysisResults(&this, analysisData, analysisDataCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ID2D1AnalysisTransform *self, uint8* analysisData, uint32 analysisDataCount) ProcessAnalysisResults;
			}
		}
		[CRepr]
		public struct ID2D1SourceTransform : ID2D1Transform
		{
			public const new Guid IID = .(0xdb1800dd, 0x0c34, 0x4cf9, 0xbe, 0x90, 0x31, 0xcc, 0x0a, 0x56, 0x53, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRenderInfo(ID2D1RenderInfo* renderInfo) mut
			{
				return VT.SetRenderInfo(&this, renderInfo);
			}
			public HRESULT Draw(ID2D1Bitmap1* target, RECT* drawRect, D2D_POINT_2U targetOrigin) mut
			{
				return VT.Draw(&this, target, drawRect, targetOrigin);
			}
			[CRepr]
			public struct VTable : ID2D1Transform.VTable
			{
				public new function HRESULT(ID2D1SourceTransform *self, ID2D1RenderInfo* renderInfo) SetRenderInfo;
				public new function HRESULT(ID2D1SourceTransform *self, ID2D1Bitmap1* target, RECT* drawRect, D2D_POINT_2U targetOrigin) Draw;
			}
		}
		[CRepr]
		public struct ID2D1ConcreteTransform : ID2D1TransformNode
		{
			public const new Guid IID = .(0x1a799d8a, 0x69f7, 0x4e4c, 0x9f, 0xed, 0x43, 0x7c, 0xcc, 0x66, 0x84, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOutputBuffer(D2D1_BUFFER_PRECISION bufferPrecision, D2D1_CHANNEL_DEPTH channelDepth) mut
			{
				return VT.SetOutputBuffer(&this, bufferPrecision, channelDepth);
			}
			public void SetCached(BOOL isCached) mut
			{
				VT.SetCached(&this, isCached);
			}
			[CRepr]
			public struct VTable : ID2D1TransformNode.VTable
			{
				public new function HRESULT(ID2D1ConcreteTransform *self, D2D1_BUFFER_PRECISION bufferPrecision, D2D1_CHANNEL_DEPTH channelDepth) SetOutputBuffer;
				public new function void(ID2D1ConcreteTransform *self, BOOL isCached) SetCached;
			}
		}
		[CRepr]
		public struct ID2D1BlendTransform : ID2D1ConcreteTransform
		{
			public const new Guid IID = .(0x63ac0b32, 0xba44, 0x450f, 0x88, 0x06, 0x7f, 0x4c, 0xa1, 0xff, 0x2f, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetDescription(D2D1_BLEND_DESCRIPTION* description) mut
			{
				VT.SetDescription(&this, description);
			}
			public void GetDescription(D2D1_BLEND_DESCRIPTION* description) mut
			{
				VT.GetDescription(&this, description);
			}
			[CRepr]
			public struct VTable : ID2D1ConcreteTransform.VTable
			{
				public new function void(ID2D1BlendTransform *self, D2D1_BLEND_DESCRIPTION* description) SetDescription;
				public new function void(ID2D1BlendTransform *self, D2D1_BLEND_DESCRIPTION* description) GetDescription;
			}
		}
		[CRepr]
		public struct ID2D1BorderTransform : ID2D1ConcreteTransform
		{
			public const new Guid IID = .(0x4998735c, 0x3a19, 0x473c, 0x97, 0x81, 0x65, 0x68, 0x47, 0xe3, 0xa3, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetExtendModeX(D2D1_EXTEND_MODE extendMode) mut
			{
				VT.SetExtendModeX(&this, extendMode);
			}
			public void SetExtendModeY(D2D1_EXTEND_MODE extendMode) mut
			{
				VT.SetExtendModeY(&this, extendMode);
			}
			public D2D1_EXTEND_MODE GetExtendModeX() mut
			{
				return VT.GetExtendModeX(&this);
			}
			public D2D1_EXTEND_MODE GetExtendModeY() mut
			{
				return VT.GetExtendModeY(&this);
			}
			[CRepr]
			public struct VTable : ID2D1ConcreteTransform.VTable
			{
				public new function void(ID2D1BorderTransform *self, D2D1_EXTEND_MODE extendMode) SetExtendModeX;
				public new function void(ID2D1BorderTransform *self, D2D1_EXTEND_MODE extendMode) SetExtendModeY;
				public new function D2D1_EXTEND_MODE(ID2D1BorderTransform *self) GetExtendModeX;
				public new function D2D1_EXTEND_MODE(ID2D1BorderTransform *self) GetExtendModeY;
			}
		}
		[CRepr]
		public struct ID2D1OffsetTransform : ID2D1TransformNode
		{
			public const new Guid IID = .(0x3fe6adea, 0x7643, 0x4f53, 0xbd, 0x14, 0xa0, 0xce, 0x63, 0xf2, 0x40, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetOffset(POINT offset) mut
			{
				VT.SetOffset(&this, offset);
			}
			public POINT GetOffset() mut
			{
				return VT.GetOffset(&this);
			}
			[CRepr]
			public struct VTable : ID2D1TransformNode.VTable
			{
				public new function void(ID2D1OffsetTransform *self, POINT offset) SetOffset;
				public new function POINT(ID2D1OffsetTransform *self) GetOffset;
			}
		}
		[CRepr]
		public struct ID2D1BoundsAdjustmentTransform : ID2D1TransformNode
		{
			public const new Guid IID = .(0x90f732e2, 0x5092, 0x4606, 0xa8, 0x19, 0x86, 0x51, 0x97, 0x0b, 0xac, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetOutputBounds(RECT* outputBounds) mut
			{
				VT.SetOutputBounds(&this, outputBounds);
			}
			public void GetOutputBounds(RECT* outputBounds) mut
			{
				VT.GetOutputBounds(&this, outputBounds);
			}
			[CRepr]
			public struct VTable : ID2D1TransformNode.VTable
			{
				public new function void(ID2D1BoundsAdjustmentTransform *self, RECT* outputBounds) SetOutputBounds;
				public new function void(ID2D1BoundsAdjustmentTransform *self, RECT* outputBounds) GetOutputBounds;
			}
		}
		[CRepr]
		public struct ID2D1EffectImpl : IUnknown
		{
			public const new Guid IID = .(0xa248fd3f, 0x3e6c, 0x4e63, 0x9f, 0x03, 0x7f, 0x68, 0xec, 0xc9, 0x1d, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ID2D1EffectContext* effectContext, ID2D1TransformGraph* transformGraph) mut
			{
				return VT.Initialize(&this, effectContext, transformGraph);
			}
			public HRESULT PrepareForRender(D2D1_CHANGE_TYPE changeType) mut
			{
				return VT.PrepareForRender(&this, changeType);
			}
			public HRESULT SetGraph(ID2D1TransformGraph* transformGraph) mut
			{
				return VT.SetGraph(&this, transformGraph);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ID2D1EffectImpl *self, ID2D1EffectContext* effectContext, ID2D1TransformGraph* transformGraph) Initialize;
				public new function HRESULT(ID2D1EffectImpl *self, D2D1_CHANGE_TYPE changeType) PrepareForRender;
				public new function HRESULT(ID2D1EffectImpl *self, ID2D1TransformGraph* transformGraph) SetGraph;
			}
		}
		[CRepr]
		public struct ID2D1EffectContext : IUnknown
		{
			public const new Guid IID = .(0x3d9f916b, 0x27dc, 0x4ad7, 0xb4, 0xf1, 0x64, 0x94, 0x53, 0x40, 0xf5, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetDpi(float* dpiX, float* dpiY) mut
			{
				VT.GetDpi(&this, dpiX, dpiY);
			}
			public HRESULT CreateEffect(Guid* effectId, ID2D1Effect** effect) mut
			{
				return VT.CreateEffect(&this, effectId, effect);
			}
			public HRESULT GetMaximumSupportedFeatureLevel(D3D_FEATURE_LEVEL* featureLevels, uint32 featureLevelsCount, D3D_FEATURE_LEVEL* maximumSupportedFeatureLevel) mut
			{
				return VT.GetMaximumSupportedFeatureLevel(&this, featureLevels, featureLevelsCount, maximumSupportedFeatureLevel);
			}
			public HRESULT CreateTransformNodeFromEffect(ID2D1Effect* effect, ID2D1TransformNode** transformNode) mut
			{
				return VT.CreateTransformNodeFromEffect(&this, effect, transformNode);
			}
			public HRESULT CreateBlendTransform(uint32 numInputs, D2D1_BLEND_DESCRIPTION* blendDescription, ID2D1BlendTransform** transform) mut
			{
				return VT.CreateBlendTransform(&this, numInputs, blendDescription, transform);
			}
			public HRESULT CreateBorderTransform(D2D1_EXTEND_MODE extendModeX, D2D1_EXTEND_MODE extendModeY, ID2D1BorderTransform** transform) mut
			{
				return VT.CreateBorderTransform(&this, extendModeX, extendModeY, transform);
			}
			public HRESULT CreateOffsetTransform(POINT offset, ID2D1OffsetTransform** transform) mut
			{
				return VT.CreateOffsetTransform(&this, offset, transform);
			}
			public HRESULT CreateBoundsAdjustmentTransform(RECT* outputRectangle, ID2D1BoundsAdjustmentTransform** transform) mut
			{
				return VT.CreateBoundsAdjustmentTransform(&this, outputRectangle, transform);
			}
			public HRESULT LoadPixelShader(Guid* shaderId, uint8* shaderBuffer, uint32 shaderBufferCount) mut
			{
				return VT.LoadPixelShader(&this, shaderId, shaderBuffer, shaderBufferCount);
			}
			public HRESULT LoadVertexShader(Guid* resourceId, uint8* shaderBuffer, uint32 shaderBufferCount) mut
			{
				return VT.LoadVertexShader(&this, resourceId, shaderBuffer, shaderBufferCount);
			}
			public HRESULT LoadComputeShader(Guid* resourceId, uint8* shaderBuffer, uint32 shaderBufferCount) mut
			{
				return VT.LoadComputeShader(&this, resourceId, shaderBuffer, shaderBufferCount);
			}
			public BOOL IsShaderLoaded(Guid* shaderId) mut
			{
				return VT.IsShaderLoaded(&this, shaderId);
			}
			public HRESULT CreateResourceTexture(Guid* resourceId, D2D1_RESOURCE_TEXTURE_PROPERTIES* resourceTextureProperties, uint8* data, uint32* strides, uint32 dataSize, ID2D1ResourceTexture** resourceTexture) mut
			{
				return VT.CreateResourceTexture(&this, resourceId, resourceTextureProperties, data, strides, dataSize, resourceTexture);
			}
			public HRESULT FindResourceTexture(Guid* resourceId, ID2D1ResourceTexture** resourceTexture) mut
			{
				return VT.FindResourceTexture(&this, resourceId, resourceTexture);
			}
			public HRESULT CreateVertexBuffer(D2D1_VERTEX_BUFFER_PROPERTIES* vertexBufferProperties, Guid* resourceId, D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES* customVertexBufferProperties, ID2D1VertexBuffer** buffer) mut
			{
				return VT.CreateVertexBuffer(&this, vertexBufferProperties, resourceId, customVertexBufferProperties, buffer);
			}
			public HRESULT FindVertexBuffer(Guid* resourceId, ID2D1VertexBuffer** buffer) mut
			{
				return VT.FindVertexBuffer(&this, resourceId, buffer);
			}
			public HRESULT CreateColorContext(D2D1_COLOR_SPACE space, uint8* profile, uint32 profileSize, ID2D1ColorContext** colorContext) mut
			{
				return VT.CreateColorContext(&this, space, profile, profileSize, colorContext);
			}
			public HRESULT CreateColorContextFromFilename(PWSTR filename, ID2D1ColorContext** colorContext) mut
			{
				return VT.CreateColorContextFromFilename(&this, filename, colorContext);
			}
			public HRESULT CreateColorContextFromWicColorContext(IWICColorContext* wicColorContext, ID2D1ColorContext** colorContext) mut
			{
				return VT.CreateColorContextFromWicColorContext(&this, wicColorContext, colorContext);
			}
			public HRESULT CheckFeatureSupport(D2D1_FEATURE feature, void* featureSupportData, uint32 featureSupportDataSize) mut
			{
				return VT.CheckFeatureSupport(&this, feature, featureSupportData, featureSupportDataSize);
			}
			public BOOL IsBufferPrecisionSupported(D2D1_BUFFER_PRECISION bufferPrecision) mut
			{
				return VT.IsBufferPrecisionSupported(&this, bufferPrecision);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(ID2D1EffectContext *self, float* dpiX, float* dpiY) GetDpi;
				public new function HRESULT(ID2D1EffectContext *self, Guid* effectId, ID2D1Effect** effect) CreateEffect;
				public new function HRESULT(ID2D1EffectContext *self, D3D_FEATURE_LEVEL* featureLevels, uint32 featureLevelsCount, D3D_FEATURE_LEVEL* maximumSupportedFeatureLevel) GetMaximumSupportedFeatureLevel;
				public new function HRESULT(ID2D1EffectContext *self, ID2D1Effect* effect, ID2D1TransformNode** transformNode) CreateTransformNodeFromEffect;
				public new function HRESULT(ID2D1EffectContext *self, uint32 numInputs, D2D1_BLEND_DESCRIPTION* blendDescription, ID2D1BlendTransform** transform) CreateBlendTransform;
				public new function HRESULT(ID2D1EffectContext *self, D2D1_EXTEND_MODE extendModeX, D2D1_EXTEND_MODE extendModeY, ID2D1BorderTransform** transform) CreateBorderTransform;
				public new function HRESULT(ID2D1EffectContext *self, POINT offset, ID2D1OffsetTransform** transform) CreateOffsetTransform;
				public new function HRESULT(ID2D1EffectContext *self, RECT* outputRectangle, ID2D1BoundsAdjustmentTransform** transform) CreateBoundsAdjustmentTransform;
				public new function HRESULT(ID2D1EffectContext *self, Guid* shaderId, uint8* shaderBuffer, uint32 shaderBufferCount) LoadPixelShader;
				public new function HRESULT(ID2D1EffectContext *self, Guid* resourceId, uint8* shaderBuffer, uint32 shaderBufferCount) LoadVertexShader;
				public new function HRESULT(ID2D1EffectContext *self, Guid* resourceId, uint8* shaderBuffer, uint32 shaderBufferCount) LoadComputeShader;
				public new function BOOL(ID2D1EffectContext *self, Guid* shaderId) IsShaderLoaded;
				public new function HRESULT(ID2D1EffectContext *self, Guid* resourceId, D2D1_RESOURCE_TEXTURE_PROPERTIES* resourceTextureProperties, uint8* data, uint32* strides, uint32 dataSize, ID2D1ResourceTexture** resourceTexture) CreateResourceTexture;
				public new function HRESULT(ID2D1EffectContext *self, Guid* resourceId, ID2D1ResourceTexture** resourceTexture) FindResourceTexture;
				public new function HRESULT(ID2D1EffectContext *self, D2D1_VERTEX_BUFFER_PROPERTIES* vertexBufferProperties, Guid* resourceId, D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES* customVertexBufferProperties, ID2D1VertexBuffer** buffer) CreateVertexBuffer;
				public new function HRESULT(ID2D1EffectContext *self, Guid* resourceId, ID2D1VertexBuffer** buffer) FindVertexBuffer;
				public new function HRESULT(ID2D1EffectContext *self, D2D1_COLOR_SPACE space, uint8* profile, uint32 profileSize, ID2D1ColorContext** colorContext) CreateColorContext;
				public new function HRESULT(ID2D1EffectContext *self, PWSTR filename, ID2D1ColorContext** colorContext) CreateColorContextFromFilename;
				public new function HRESULT(ID2D1EffectContext *self, IWICColorContext* wicColorContext, ID2D1ColorContext** colorContext) CreateColorContextFromWicColorContext;
				public new function HRESULT(ID2D1EffectContext *self, D2D1_FEATURE feature, void* featureSupportData, uint32 featureSupportDataSize) CheckFeatureSupport;
				public new function BOOL(ID2D1EffectContext *self, D2D1_BUFFER_PRECISION bufferPrecision) IsBufferPrecisionSupported;
			}
		}
		[CRepr]
		public struct ID2D1GeometryRealization : ID2D1Resource
		{
			public const new Guid IID = .(0xa16907d7, 0xbc02, 0x4801, 0x99, 0xe8, 0x8c, 0xf7, 0xf4, 0x85, 0xf7, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
			}
		}
		[CRepr]
		public struct ID2D1DeviceContext1 : ID2D1DeviceContext
		{
			public const new Guid IID = .(0xd37f57e4, 0x6908, 0x459f, 0xa1, 0x99, 0xe7, 0x2f, 0x24, 0xf7, 0x99, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFilledGeometryRealization(ID2D1Geometry* geometry, float flatteningTolerance, ID2D1GeometryRealization** geometryRealization) mut
			{
				return VT.CreateFilledGeometryRealization(&this, geometry, flatteningTolerance, geometryRealization);
			}
			public HRESULT CreateStrokedGeometryRealization(ID2D1Geometry* geometry, float flatteningTolerance, float strokeWidth, ID2D1StrokeStyle* strokeStyle, ID2D1GeometryRealization** geometryRealization) mut
			{
				return VT.CreateStrokedGeometryRealization(&this, geometry, flatteningTolerance, strokeWidth, strokeStyle, geometryRealization);
			}
			public void DrawGeometryRealization(ID2D1GeometryRealization* geometryRealization, ID2D1Brush* brush) mut
			{
				VT.DrawGeometryRealization(&this, geometryRealization, brush);
			}
			[CRepr]
			public struct VTable : ID2D1DeviceContext.VTable
			{
				public new function HRESULT(ID2D1DeviceContext1 *self, ID2D1Geometry* geometry, float flatteningTolerance, ID2D1GeometryRealization** geometryRealization) CreateFilledGeometryRealization;
				public new function HRESULT(ID2D1DeviceContext1 *self, ID2D1Geometry* geometry, float flatteningTolerance, float strokeWidth, ID2D1StrokeStyle* strokeStyle, ID2D1GeometryRealization** geometryRealization) CreateStrokedGeometryRealization;
				public new function void(ID2D1DeviceContext1 *self, ID2D1GeometryRealization* geometryRealization, ID2D1Brush* brush) DrawGeometryRealization;
			}
		}
		[CRepr]
		public struct ID2D1Device1 : ID2D1Device
		{
			public const new Guid IID = .(0xd21768e1, 0x23a4, 0x4823, 0xa1, 0x4b, 0x7c, 0x3e, 0xba, 0x85, 0xd6, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D1_RENDERING_PRIORITY GetRenderingPriority() mut
			{
				return VT.GetRenderingPriority(&this);
			}
			public void SetRenderingPriority(D2D1_RENDERING_PRIORITY renderingPriority) mut
			{
				VT.SetRenderingPriority(&this, renderingPriority);
			}
			public HRESULT CreateDeviceContext(D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext1** deviceContext1) mut
			{
				return VT.CreateDeviceContext(&this, options, deviceContext1);
			}
			[CRepr]
			public struct VTable : ID2D1Device.VTable
			{
				public new function D2D1_RENDERING_PRIORITY(ID2D1Device1 *self) GetRenderingPriority;
				public new function void(ID2D1Device1 *self, D2D1_RENDERING_PRIORITY renderingPriority) SetRenderingPriority;
				public new function HRESULT(ID2D1Device1 *self, D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext1** deviceContext1) CreateDeviceContext;
			}
		}
		[CRepr]
		public struct ID2D1Factory2 : ID2D1Factory1
		{
			public const new Guid IID = .(0x94f81a73, 0x9212, 0x4376, 0x9c, 0x58, 0xb1, 0x6a, 0x3a, 0x0d, 0x39, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDevice(IDXGIDevice* dxgiDevice, ID2D1Device1** d2dDevice1) mut
			{
				return VT.CreateDevice(&this, dxgiDevice, d2dDevice1);
			}
			[CRepr]
			public struct VTable : ID2D1Factory1.VTable
			{
				public new function HRESULT(ID2D1Factory2 *self, IDXGIDevice* dxgiDevice, ID2D1Device1** d2dDevice1) CreateDevice;
			}
		}
		[CRepr]
		public struct ID2D1CommandSink1 : ID2D1CommandSink
		{
			public const new Guid IID = .(0x9eb767fd, 0x4269, 0x4467, 0xb8, 0xc2, 0xeb, 0x30, 0xcb, 0x30, 0x57, 0x43);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPrimitiveBlend1(D2D1_PRIMITIVE_BLEND primitiveBlend) mut
			{
				return VT.SetPrimitiveBlend1(&this, primitiveBlend);
			}
			[CRepr]
			public struct VTable : ID2D1CommandSink.VTable
			{
				public new function HRESULT(ID2D1CommandSink1 *self, D2D1_PRIMITIVE_BLEND primitiveBlend) SetPrimitiveBlend1;
			}
		}
		[CRepr]
		public struct ID2D1SvgAttribute : ID2D1Resource
		{
			public const new Guid IID = .(0xc9cdb0dd, 0xf8c9, 0x4e70, 0xb7, 0xc2, 0x30, 0x1c, 0x80, 0x29, 0x2c, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetElement(ID2D1SvgElement** element) mut
			{
				VT.GetElement(&this, element);
			}
			public HRESULT Clone(ID2D1SvgAttribute** attribute) mut
			{
				return VT.Clone(&this, attribute);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function void(ID2D1SvgAttribute *self, ID2D1SvgElement** element) GetElement;
				public new function HRESULT(ID2D1SvgAttribute *self, ID2D1SvgAttribute** attribute) Clone;
			}
		}
		[CRepr]
		public struct ID2D1SvgPaint : ID2D1SvgAttribute
		{
			public const new Guid IID = .(0xd59bab0a, 0x68a2, 0x455b, 0xa5, 0xdc, 0x9e, 0xb2, 0x85, 0x4e, 0x24, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPaintType(D2D1_SVG_PAINT_TYPE paintType) mut
			{
				return VT.SetPaintType(&this, paintType);
			}
			public D2D1_SVG_PAINT_TYPE GetPaintType() mut
			{
				return VT.GetPaintType(&this);
			}
			public HRESULT SetColor(D2D1_COLOR_F* color) mut
			{
				return VT.SetColor(&this, color);
			}
			public void GetColor(D2D1_COLOR_F* color) mut
			{
				VT.GetColor(&this, color);
			}
			public HRESULT SetId(PWSTR id) mut
			{
				return VT.SetId(&this, id);
			}
			public HRESULT GetId(char16* id, uint32 idCount) mut
			{
				return VT.GetId(&this, id, idCount);
			}
			public uint32 GetIdLength() mut
			{
				return VT.GetIdLength(&this);
			}
			[CRepr]
			public struct VTable : ID2D1SvgAttribute.VTable
			{
				public new function HRESULT(ID2D1SvgPaint *self, D2D1_SVG_PAINT_TYPE paintType) SetPaintType;
				public new function D2D1_SVG_PAINT_TYPE(ID2D1SvgPaint *self) GetPaintType;
				public new function HRESULT(ID2D1SvgPaint *self, D2D1_COLOR_F* color) SetColor;
				public new function void(ID2D1SvgPaint *self, D2D1_COLOR_F* color) GetColor;
				public new function HRESULT(ID2D1SvgPaint *self, PWSTR id) SetId;
				public new function HRESULT(ID2D1SvgPaint *self, char16* id, uint32 idCount) GetId;
				public new function uint32(ID2D1SvgPaint *self) GetIdLength;
			}
		}
		[CRepr]
		public struct ID2D1SvgStrokeDashArray : ID2D1SvgAttribute
		{
			public const new Guid IID = .(0xf1c0ca52, 0x92a3, 0x4f00, 0xb4, 0xce, 0xf3, 0x56, 0x91, 0xef, 0xd9, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RemoveDashesAtEnd(uint32 dashesCount) mut
			{
				return VT.RemoveDashesAtEnd(&this, dashesCount);
			}
			public HRESULT UpdateDashes(D2D1_SVG_LENGTH* dashes, uint32 dashesCount, uint32 startIndex) mut
			{
				return VT.UpdateDashes(&this, dashes, dashesCount, startIndex);
			}
			public HRESULT UpdateDashes(float* dashes, uint32 dashesCount, uint32 startIndex) mut
			{
				return VT.UpdateDashes2(&this, dashes, dashesCount, startIndex);
			}
			public HRESULT GetDashes(D2D1_SVG_LENGTH* dashes, uint32 dashesCount, uint32 startIndex) mut
			{
				return VT.GetDashes(&this, dashes, dashesCount, startIndex);
			}
			public HRESULT GetDashes(float* dashes, uint32 dashesCount, uint32 startIndex) mut
			{
				return VT.GetDashes2(&this, dashes, dashesCount, startIndex);
			}
			public uint32 GetDashesCount() mut
			{
				return VT.GetDashesCount(&this);
			}
			[CRepr]
			public struct VTable : ID2D1SvgAttribute.VTable
			{
				public new function HRESULT(ID2D1SvgStrokeDashArray *self, uint32 dashesCount) RemoveDashesAtEnd;
				public new function HRESULT(ID2D1SvgStrokeDashArray *self, D2D1_SVG_LENGTH* dashes, uint32 dashesCount, uint32 startIndex) UpdateDashes;
				public new function HRESULT(ID2D1SvgStrokeDashArray *self, float* dashes, uint32 dashesCount, uint32 startIndex) UpdateDashes2;
				public new function HRESULT(ID2D1SvgStrokeDashArray *self, D2D1_SVG_LENGTH* dashes, uint32 dashesCount, uint32 startIndex) GetDashes;
				public new function HRESULT(ID2D1SvgStrokeDashArray *self, float* dashes, uint32 dashesCount, uint32 startIndex) GetDashes2;
				public new function uint32(ID2D1SvgStrokeDashArray *self) GetDashesCount;
			}
		}
		[CRepr]
		public struct ID2D1SvgPointCollection : ID2D1SvgAttribute
		{
			public const new Guid IID = .(0x9dbe4c0d, 0x3572, 0x4dd9, 0x98, 0x25, 0x55, 0x30, 0x81, 0x3b, 0xb7, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RemovePointsAtEnd(uint32 pointsCount) mut
			{
				return VT.RemovePointsAtEnd(&this, pointsCount);
			}
			public HRESULT UpdatePoints(D2D_POINT_2F* points, uint32 pointsCount, uint32 startIndex) mut
			{
				return VT.UpdatePoints(&this, points, pointsCount, startIndex);
			}
			public HRESULT GetPoints(D2D_POINT_2F* points, uint32 pointsCount, uint32 startIndex) mut
			{
				return VT.GetPoints(&this, points, pointsCount, startIndex);
			}
			public uint32 GetPointsCount() mut
			{
				return VT.GetPointsCount(&this);
			}
			[CRepr]
			public struct VTable : ID2D1SvgAttribute.VTable
			{
				public new function HRESULT(ID2D1SvgPointCollection *self, uint32 pointsCount) RemovePointsAtEnd;
				public new function HRESULT(ID2D1SvgPointCollection *self, D2D_POINT_2F* points, uint32 pointsCount, uint32 startIndex) UpdatePoints;
				public new function HRESULT(ID2D1SvgPointCollection *self, D2D_POINT_2F* points, uint32 pointsCount, uint32 startIndex) GetPoints;
				public new function uint32(ID2D1SvgPointCollection *self) GetPointsCount;
			}
		}
		[CRepr]
		public struct ID2D1SvgPathData : ID2D1SvgAttribute
		{
			public const new Guid IID = .(0xc095e4f4, 0xbb98, 0x43d6, 0x97, 0x45, 0x4d, 0x1b, 0x84, 0xec, 0x98, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RemoveSegmentDataAtEnd(uint32 dataCount) mut
			{
				return VT.RemoveSegmentDataAtEnd(&this, dataCount);
			}
			public HRESULT UpdateSegmentData(float* data, uint32 dataCount, uint32 startIndex) mut
			{
				return VT.UpdateSegmentData(&this, data, dataCount, startIndex);
			}
			public HRESULT GetSegmentData(float* data, uint32 dataCount, uint32 startIndex) mut
			{
				return VT.GetSegmentData(&this, data, dataCount, startIndex);
			}
			public uint32 GetSegmentDataCount() mut
			{
				return VT.GetSegmentDataCount(&this);
			}
			public HRESULT RemoveCommandsAtEnd(uint32 commandsCount) mut
			{
				return VT.RemoveCommandsAtEnd(&this, commandsCount);
			}
			public HRESULT UpdateCommands(D2D1_SVG_PATH_COMMAND* commands, uint32 commandsCount, uint32 startIndex) mut
			{
				return VT.UpdateCommands(&this, commands, commandsCount, startIndex);
			}
			public HRESULT GetCommands(D2D1_SVG_PATH_COMMAND* commands, uint32 commandsCount, uint32 startIndex) mut
			{
				return VT.GetCommands(&this, commands, commandsCount, startIndex);
			}
			public uint32 GetCommandsCount() mut
			{
				return VT.GetCommandsCount(&this);
			}
			public HRESULT CreatePathGeometry(D2D1_FILL_MODE fillMode, ID2D1PathGeometry1** pathGeometry) mut
			{
				return VT.CreatePathGeometry(&this, fillMode, pathGeometry);
			}
			[CRepr]
			public struct VTable : ID2D1SvgAttribute.VTable
			{
				public new function HRESULT(ID2D1SvgPathData *self, uint32 dataCount) RemoveSegmentDataAtEnd;
				public new function HRESULT(ID2D1SvgPathData *self, float* data, uint32 dataCount, uint32 startIndex) UpdateSegmentData;
				public new function HRESULT(ID2D1SvgPathData *self, float* data, uint32 dataCount, uint32 startIndex) GetSegmentData;
				public new function uint32(ID2D1SvgPathData *self) GetSegmentDataCount;
				public new function HRESULT(ID2D1SvgPathData *self, uint32 commandsCount) RemoveCommandsAtEnd;
				public new function HRESULT(ID2D1SvgPathData *self, D2D1_SVG_PATH_COMMAND* commands, uint32 commandsCount, uint32 startIndex) UpdateCommands;
				public new function HRESULT(ID2D1SvgPathData *self, D2D1_SVG_PATH_COMMAND* commands, uint32 commandsCount, uint32 startIndex) GetCommands;
				public new function uint32(ID2D1SvgPathData *self) GetCommandsCount;
				public new function HRESULT(ID2D1SvgPathData *self, D2D1_FILL_MODE fillMode, ID2D1PathGeometry1** pathGeometry) CreatePathGeometry;
			}
		}
		[CRepr]
		public struct ID2D1SvgElement : ID2D1Resource
		{
			public const new Guid IID = .(0xac7b67a6, 0x183e, 0x49c1, 0xa8, 0x23, 0x0e, 0xbe, 0x40, 0xb0, 0xdb, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetDocument(ID2D1SvgDocument** document) mut
			{
				VT.GetDocument(&this, document);
			}
			public HRESULT GetTagName(char16* name, uint32 nameCount) mut
			{
				return VT.GetTagName(&this, name, nameCount);
			}
			public uint32 GetTagNameLength() mut
			{
				return VT.GetTagNameLength(&this);
			}
			public BOOL IsTextContent() mut
			{
				return VT.IsTextContent(&this);
			}
			public void GetParent(ID2D1SvgElement** parent) mut
			{
				VT.GetParent(&this, parent);
			}
			public BOOL HasChildren() mut
			{
				return VT.HasChildren(&this);
			}
			public void GetFirstChild(ID2D1SvgElement** child) mut
			{
				VT.GetFirstChild(&this, child);
			}
			public void GetLastChild(ID2D1SvgElement** child) mut
			{
				VT.GetLastChild(&this, child);
			}
			public HRESULT GetPreviousChild(ID2D1SvgElement* referenceChild, ID2D1SvgElement** previousChild) mut
			{
				return VT.GetPreviousChild(&this, referenceChild, previousChild);
			}
			public HRESULT GetNextChild(ID2D1SvgElement* referenceChild, ID2D1SvgElement** nextChild) mut
			{
				return VT.GetNextChild(&this, referenceChild, nextChild);
			}
			public HRESULT InsertChildBefore(ID2D1SvgElement* newChild, ID2D1SvgElement* referenceChild) mut
			{
				return VT.InsertChildBefore(&this, newChild, referenceChild);
			}
			public HRESULT AppendChild(ID2D1SvgElement* newChild) mut
			{
				return VT.AppendChild(&this, newChild);
			}
			public HRESULT ReplaceChild(ID2D1SvgElement* newChild, ID2D1SvgElement* oldChild) mut
			{
				return VT.ReplaceChild(&this, newChild, oldChild);
			}
			public HRESULT RemoveChild(ID2D1SvgElement* oldChild) mut
			{
				return VT.RemoveChild(&this, oldChild);
			}
			public HRESULT CreateChild(PWSTR tagName, ID2D1SvgElement** newChild) mut
			{
				return VT.CreateChild(&this, tagName, newChild);
			}
			public BOOL IsAttributeSpecified(PWSTR name, BOOL* inherited) mut
			{
				return VT.IsAttributeSpecified(&this, name, inherited);
			}
			public uint32 GetSpecifiedAttributeCount() mut
			{
				return VT.GetSpecifiedAttributeCount(&this);
			}
			public HRESULT GetSpecifiedAttributeName(uint32 index, char16* name, uint32 nameCount, BOOL* inherited) mut
			{
				return VT.GetSpecifiedAttributeName(&this, index, name, nameCount, inherited);
			}
			public HRESULT GetSpecifiedAttributeNameLength(uint32 index, uint32* nameLength, BOOL* inherited) mut
			{
				return VT.GetSpecifiedAttributeNameLength(&this, index, nameLength, inherited);
			}
			public HRESULT RemoveAttribute(PWSTR name) mut
			{
				return VT.RemoveAttribute(&this, name);
			}
			public HRESULT SetTextValue(char16* name, uint32 nameCount) mut
			{
				return VT.SetTextValue(&this, name, nameCount);
			}
			public HRESULT GetTextValue(char16* name, uint32 nameCount) mut
			{
				return VT.GetTextValue(&this, name, nameCount);
			}
			public uint32 GetTextValueLength() mut
			{
				return VT.GetTextValueLength(&this);
			}
			public HRESULT SetAttributeValue(PWSTR name, ID2D1SvgAttribute* value) mut
			{
				return VT.SetAttributeValue(&this, name, value);
			}
			public HRESULT SetAttributeValue(PWSTR name, D2D1_SVG_ATTRIBUTE_POD_TYPE type, void* value, uint32 valueSizeInBytes) mut
			{
				return VT.SetAttributeValue2(&this, name, type, value, valueSizeInBytes);
			}
			public HRESULT SetAttributeValue(PWSTR name, D2D1_SVG_ATTRIBUTE_STRING_TYPE type, PWSTR value) mut
			{
				return VT.SetAttributeValue3(&this, name, type, value);
			}
			public HRESULT GetAttributeValue(PWSTR name, Guid* riid, void** value) mut
			{
				return VT.GetAttributeValue(&this, name, riid, value);
			}
			public HRESULT GetAttributeValue(PWSTR name, D2D1_SVG_ATTRIBUTE_POD_TYPE type, void* value, uint32 valueSizeInBytes) mut
			{
				return VT.GetAttributeValue2(&this, name, type, value, valueSizeInBytes);
			}
			public HRESULT GetAttributeValue(PWSTR name, D2D1_SVG_ATTRIBUTE_STRING_TYPE type, char16* value, uint32 valueCount) mut
			{
				return VT.GetAttributeValue3(&this, name, type, value, valueCount);
			}
			public HRESULT GetAttributeValueLength(PWSTR name, D2D1_SVG_ATTRIBUTE_STRING_TYPE type, uint32* valueLength) mut
			{
				return VT.GetAttributeValueLength(&this, name, type, valueLength);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function void(ID2D1SvgElement *self, ID2D1SvgDocument** document) GetDocument;
				public new function HRESULT(ID2D1SvgElement *self, char16* name, uint32 nameCount) GetTagName;
				public new function uint32(ID2D1SvgElement *self) GetTagNameLength;
				public new function BOOL(ID2D1SvgElement *self) IsTextContent;
				public new function void(ID2D1SvgElement *self, ID2D1SvgElement** parent) GetParent;
				public new function BOOL(ID2D1SvgElement *self) HasChildren;
				public new function void(ID2D1SvgElement *self, ID2D1SvgElement** child) GetFirstChild;
				public new function void(ID2D1SvgElement *self, ID2D1SvgElement** child) GetLastChild;
				public new function HRESULT(ID2D1SvgElement *self, ID2D1SvgElement* referenceChild, ID2D1SvgElement** previousChild) GetPreviousChild;
				public new function HRESULT(ID2D1SvgElement *self, ID2D1SvgElement* referenceChild, ID2D1SvgElement** nextChild) GetNextChild;
				public new function HRESULT(ID2D1SvgElement *self, ID2D1SvgElement* newChild, ID2D1SvgElement* referenceChild) InsertChildBefore;
				public new function HRESULT(ID2D1SvgElement *self, ID2D1SvgElement* newChild) AppendChild;
				public new function HRESULT(ID2D1SvgElement *self, ID2D1SvgElement* newChild, ID2D1SvgElement* oldChild) ReplaceChild;
				public new function HRESULT(ID2D1SvgElement *self, ID2D1SvgElement* oldChild) RemoveChild;
				public new function HRESULT(ID2D1SvgElement *self, PWSTR tagName, ID2D1SvgElement** newChild) CreateChild;
				public new function BOOL(ID2D1SvgElement *self, PWSTR name, BOOL* inherited) IsAttributeSpecified;
				public new function uint32(ID2D1SvgElement *self) GetSpecifiedAttributeCount;
				public new function HRESULT(ID2D1SvgElement *self, uint32 index, char16* name, uint32 nameCount, BOOL* inherited) GetSpecifiedAttributeName;
				public new function HRESULT(ID2D1SvgElement *self, uint32 index, uint32* nameLength, BOOL* inherited) GetSpecifiedAttributeNameLength;
				public new function HRESULT(ID2D1SvgElement *self, PWSTR name) RemoveAttribute;
				public new function HRESULT(ID2D1SvgElement *self, char16* name, uint32 nameCount) SetTextValue;
				public new function HRESULT(ID2D1SvgElement *self, char16* name, uint32 nameCount) GetTextValue;
				public new function uint32(ID2D1SvgElement *self) GetTextValueLength;
				public new function HRESULT(ID2D1SvgElement *self, PWSTR name, ID2D1SvgAttribute* value) SetAttributeValue;
				public new function HRESULT(ID2D1SvgElement *self, PWSTR name, D2D1_SVG_ATTRIBUTE_POD_TYPE type, void* value, uint32 valueSizeInBytes) SetAttributeValue2;
				public new function HRESULT(ID2D1SvgElement *self, PWSTR name, D2D1_SVG_ATTRIBUTE_STRING_TYPE type, PWSTR value) SetAttributeValue3;
				public new function HRESULT(ID2D1SvgElement *self, PWSTR name, Guid* riid, void** value) GetAttributeValue;
				public new function HRESULT(ID2D1SvgElement *self, PWSTR name, D2D1_SVG_ATTRIBUTE_POD_TYPE type, void* value, uint32 valueSizeInBytes) GetAttributeValue2;
				public new function HRESULT(ID2D1SvgElement *self, PWSTR name, D2D1_SVG_ATTRIBUTE_STRING_TYPE type, char16* value, uint32 valueCount) GetAttributeValue3;
				public new function HRESULT(ID2D1SvgElement *self, PWSTR name, D2D1_SVG_ATTRIBUTE_STRING_TYPE type, uint32* valueLength) GetAttributeValueLength;
			}
		}
		[CRepr]
		public struct ID2D1SvgDocument : ID2D1Resource
		{
			public const new Guid IID = .(0x86b88e4d, 0xafa4, 0x4d7b, 0x88, 0xe4, 0x68, 0xa5, 0x1c, 0x4a, 0x0a, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetViewportSize(D2D_SIZE_F viewportSize) mut
			{
				return VT.SetViewportSize(&this, viewportSize);
			}
			public D2D_SIZE_F GetViewportSize() mut
			{
				return VT.GetViewportSize(&this);
			}
			public HRESULT SetRoot(ID2D1SvgElement* root) mut
			{
				return VT.SetRoot(&this, root);
			}
			public void GetRoot(ID2D1SvgElement** root) mut
			{
				VT.GetRoot(&this, root);
			}
			public HRESULT FindElementById(PWSTR id, ID2D1SvgElement** svgElement) mut
			{
				return VT.FindElementById(&this, id, svgElement);
			}
			public HRESULT Serialize(IStream* outputXmlStream, ID2D1SvgElement* subtree) mut
			{
				return VT.Serialize(&this, outputXmlStream, subtree);
			}
			public HRESULT Deserialize(IStream* inputXmlStream, ID2D1SvgElement** subtree) mut
			{
				return VT.Deserialize(&this, inputXmlStream, subtree);
			}
			public HRESULT CreatePaint(D2D1_SVG_PAINT_TYPE paintType, D2D1_COLOR_F* color, PWSTR id, ID2D1SvgPaint** paint) mut
			{
				return VT.CreatePaint(&this, paintType, color, id, paint);
			}
			public HRESULT CreateStrokeDashArray(D2D1_SVG_LENGTH* dashes, uint32 dashesCount, ID2D1SvgStrokeDashArray** strokeDashArray) mut
			{
				return VT.CreateStrokeDashArray(&this, dashes, dashesCount, strokeDashArray);
			}
			public HRESULT CreatePointCollection(D2D_POINT_2F* points, uint32 pointsCount, ID2D1SvgPointCollection** pointCollection) mut
			{
				return VT.CreatePointCollection(&this, points, pointsCount, pointCollection);
			}
			public HRESULT CreatePathData(float* segmentData, uint32 segmentDataCount, D2D1_SVG_PATH_COMMAND* commands, uint32 commandsCount, ID2D1SvgPathData** pathData) mut
			{
				return VT.CreatePathData(&this, segmentData, segmentDataCount, commands, commandsCount, pathData);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function HRESULT(ID2D1SvgDocument *self, D2D_SIZE_F viewportSize) SetViewportSize;
				public new function D2D_SIZE_F(ID2D1SvgDocument *self) GetViewportSize;
				public new function HRESULT(ID2D1SvgDocument *self, ID2D1SvgElement* root) SetRoot;
				public new function void(ID2D1SvgDocument *self, ID2D1SvgElement** root) GetRoot;
				public new function HRESULT(ID2D1SvgDocument *self, PWSTR id, ID2D1SvgElement** svgElement) FindElementById;
				public new function HRESULT(ID2D1SvgDocument *self, IStream* outputXmlStream, ID2D1SvgElement* subtree) Serialize;
				public new function HRESULT(ID2D1SvgDocument *self, IStream* inputXmlStream, ID2D1SvgElement** subtree) Deserialize;
				public new function HRESULT(ID2D1SvgDocument *self, D2D1_SVG_PAINT_TYPE paintType, D2D1_COLOR_F* color, PWSTR id, ID2D1SvgPaint** paint) CreatePaint;
				public new function HRESULT(ID2D1SvgDocument *self, D2D1_SVG_LENGTH* dashes, uint32 dashesCount, ID2D1SvgStrokeDashArray** strokeDashArray) CreateStrokeDashArray;
				public new function HRESULT(ID2D1SvgDocument *self, D2D_POINT_2F* points, uint32 pointsCount, ID2D1SvgPointCollection** pointCollection) CreatePointCollection;
				public new function HRESULT(ID2D1SvgDocument *self, float* segmentData, uint32 segmentDataCount, D2D1_SVG_PATH_COMMAND* commands, uint32 commandsCount, ID2D1SvgPathData** pathData) CreatePathData;
			}
		}
		[CRepr]
		public struct ID2D1InkStyle : ID2D1Resource
		{
			public const new Guid IID = .(0xbae8b344, 0x23fc, 0x4071, 0x8c, 0xb5, 0xd0, 0x5d, 0x6f, 0x07, 0x38, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetNibTransform(D2D_MATRIX_3X2_F* transform) mut
			{
				VT.SetNibTransform(&this, transform);
			}
			public void GetNibTransform(D2D_MATRIX_3X2_F* transform) mut
			{
				VT.GetNibTransform(&this, transform);
			}
			public void SetNibShape(D2D1_INK_NIB_SHAPE nibShape) mut
			{
				VT.SetNibShape(&this, nibShape);
			}
			public D2D1_INK_NIB_SHAPE GetNibShape() mut
			{
				return VT.GetNibShape(&this);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function void(ID2D1InkStyle *self, D2D_MATRIX_3X2_F* transform) SetNibTransform;
				public new function void(ID2D1InkStyle *self, D2D_MATRIX_3X2_F* transform) GetNibTransform;
				public new function void(ID2D1InkStyle *self, D2D1_INK_NIB_SHAPE nibShape) SetNibShape;
				public new function D2D1_INK_NIB_SHAPE(ID2D1InkStyle *self) GetNibShape;
			}
		}
		[CRepr]
		public struct ID2D1Ink : ID2D1Resource
		{
			public const new Guid IID = .(0xb499923b, 0x7029, 0x478f, 0xa8, 0xb3, 0x43, 0x2c, 0x7c, 0x5f, 0x53, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetStartPoint(D2D1_INK_POINT* startPoint) mut
			{
				VT.SetStartPoint(&this, startPoint);
			}
			public D2D1_INK_POINT GetStartPoint() mut
			{
				return VT.GetStartPoint(&this);
			}
			public HRESULT AddSegments(D2D1_INK_BEZIER_SEGMENT* segments, uint32 segmentsCount) mut
			{
				return VT.AddSegments(&this, segments, segmentsCount);
			}
			public HRESULT RemoveSegmentsAtEnd(uint32 segmentsCount) mut
			{
				return VT.RemoveSegmentsAtEnd(&this, segmentsCount);
			}
			public HRESULT SetSegments(uint32 startSegment, D2D1_INK_BEZIER_SEGMENT* segments, uint32 segmentsCount) mut
			{
				return VT.SetSegments(&this, startSegment, segments, segmentsCount);
			}
			public HRESULT SetSegmentAtEnd(D2D1_INK_BEZIER_SEGMENT* segment) mut
			{
				return VT.SetSegmentAtEnd(&this, segment);
			}
			public uint32 GetSegmentCount() mut
			{
				return VT.GetSegmentCount(&this);
			}
			public HRESULT GetSegments(uint32 startSegment, D2D1_INK_BEZIER_SEGMENT* segments, uint32 segmentsCount) mut
			{
				return VT.GetSegments(&this, startSegment, segments, segmentsCount);
			}
			public HRESULT StreamAsGeometry(ID2D1InkStyle* inkStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ID2D1SimplifiedGeometrySink* geometrySink) mut
			{
				return VT.StreamAsGeometry(&this, inkStyle, worldTransform, flatteningTolerance, geometrySink);
			}
			public HRESULT GetBounds(ID2D1InkStyle* inkStyle, D2D_MATRIX_3X2_F* worldTransform, D2D_RECT_F* bounds) mut
			{
				return VT.GetBounds(&this, inkStyle, worldTransform, bounds);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function void(ID2D1Ink *self, D2D1_INK_POINT* startPoint) SetStartPoint;
				public new function D2D1_INK_POINT(ID2D1Ink *self) GetStartPoint;
				public new function HRESULT(ID2D1Ink *self, D2D1_INK_BEZIER_SEGMENT* segments, uint32 segmentsCount) AddSegments;
				public new function HRESULT(ID2D1Ink *self, uint32 segmentsCount) RemoveSegmentsAtEnd;
				public new function HRESULT(ID2D1Ink *self, uint32 startSegment, D2D1_INK_BEZIER_SEGMENT* segments, uint32 segmentsCount) SetSegments;
				public new function HRESULT(ID2D1Ink *self, D2D1_INK_BEZIER_SEGMENT* segment) SetSegmentAtEnd;
				public new function uint32(ID2D1Ink *self) GetSegmentCount;
				public new function HRESULT(ID2D1Ink *self, uint32 startSegment, D2D1_INK_BEZIER_SEGMENT* segments, uint32 segmentsCount) GetSegments;
				public new function HRESULT(ID2D1Ink *self, ID2D1InkStyle* inkStyle, D2D_MATRIX_3X2_F* worldTransform, float flatteningTolerance, ID2D1SimplifiedGeometrySink* geometrySink) StreamAsGeometry;
				public new function HRESULT(ID2D1Ink *self, ID2D1InkStyle* inkStyle, D2D_MATRIX_3X2_F* worldTransform, D2D_RECT_F* bounds) GetBounds;
			}
		}
		[CRepr]
		public struct ID2D1GradientMesh : ID2D1Resource
		{
			public const new Guid IID = .(0xf292e401, 0xc050, 0x4cde, 0x83, 0xd7, 0x04, 0x96, 0x2d, 0x3b, 0x23, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetPatchCount() mut
			{
				return VT.GetPatchCount(&this);
			}
			public HRESULT GetPatches(uint32 startIndex, D2D1_GRADIENT_MESH_PATCH* patches, uint32 patchesCount) mut
			{
				return VT.GetPatches(&this, startIndex, patches, patchesCount);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function uint32(ID2D1GradientMesh *self) GetPatchCount;
				public new function HRESULT(ID2D1GradientMesh *self, uint32 startIndex, D2D1_GRADIENT_MESH_PATCH* patches, uint32 patchesCount) GetPatches;
			}
		}
		[CRepr]
		public struct ID2D1ImageSource : ID2D1Image
		{
			public const new Guid IID = .(0xc9b664e5, 0x74a1, 0x4378, 0x9a, 0xc2, 0xee, 0xfc, 0x37, 0xa3, 0xf4, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OfferResources() mut
			{
				return VT.OfferResources(&this);
			}
			public HRESULT TryReclaimResources(BOOL* resourcesDiscarded) mut
			{
				return VT.TryReclaimResources(&this, resourcesDiscarded);
			}
			[CRepr]
			public struct VTable : ID2D1Image.VTable
			{
				public new function HRESULT(ID2D1ImageSource *self) OfferResources;
				public new function HRESULT(ID2D1ImageSource *self, BOOL* resourcesDiscarded) TryReclaimResources;
			}
		}
		[CRepr]
		public struct ID2D1ImageSourceFromWic : ID2D1ImageSource
		{
			public const new Guid IID = .(0x77395441, 0x1c8f, 0x4555, 0x86, 0x83, 0xf5, 0x0d, 0xab, 0x0f, 0xe7, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnsureCached(D2D_RECT_U* rectangleToFill) mut
			{
				return VT.EnsureCached(&this, rectangleToFill);
			}
			public HRESULT TrimCache(D2D_RECT_U* rectangleToPreserve) mut
			{
				return VT.TrimCache(&this, rectangleToPreserve);
			}
			public void GetSource(IWICBitmapSource** wicBitmapSource) mut
			{
				VT.GetSource(&this, wicBitmapSource);
			}
			[CRepr]
			public struct VTable : ID2D1ImageSource.VTable
			{
				public new function HRESULT(ID2D1ImageSourceFromWic *self, D2D_RECT_U* rectangleToFill) EnsureCached;
				public new function HRESULT(ID2D1ImageSourceFromWic *self, D2D_RECT_U* rectangleToPreserve) TrimCache;
				public new function void(ID2D1ImageSourceFromWic *self, IWICBitmapSource** wicBitmapSource) GetSource;
			}
		}
		[CRepr]
		public struct ID2D1TransformedImageSource : ID2D1Image
		{
			public const new Guid IID = .(0x7f1f79e5, 0x2796, 0x416c, 0x8f, 0x55, 0x70, 0x0f, 0x91, 0x14, 0x45, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetSource(ID2D1ImageSource** imageSource) mut
			{
				VT.GetSource(&this, imageSource);
			}
			public void GetProperties(D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES* properties) mut
			{
				VT.GetProperties(&this, properties);
			}
			[CRepr]
			public struct VTable : ID2D1Image.VTable
			{
				public new function void(ID2D1TransformedImageSource *self, ID2D1ImageSource** imageSource) GetSource;
				public new function void(ID2D1TransformedImageSource *self, D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES* properties) GetProperties;
			}
		}
		[CRepr]
		public struct ID2D1LookupTable3D : ID2D1Resource
		{
			public const new Guid IID = .(0x53dd9855, 0xa3b0, 0x4d5b, 0x82, 0xe1, 0x26, 0xe2, 0x5c, 0x5e, 0x57, 0x97);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
			}
		}
		[CRepr]
		public struct ID2D1DeviceContext2 : ID2D1DeviceContext1
		{
			public const new Guid IID = .(0x394ea6a3, 0x0c34, 0x4321, 0x95, 0x0b, 0x6c, 0xa2, 0x0f, 0x0b, 0xe6, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInk(D2D1_INK_POINT* startPoint, ID2D1Ink** ink) mut
			{
				return VT.CreateInk(&this, startPoint, ink);
			}
			public HRESULT CreateInkStyle(D2D1_INK_STYLE_PROPERTIES* inkStyleProperties, ID2D1InkStyle** inkStyle) mut
			{
				return VT.CreateInkStyle(&this, inkStyleProperties, inkStyle);
			}
			public HRESULT CreateGradientMesh(D2D1_GRADIENT_MESH_PATCH* patches, uint32 patchesCount, ID2D1GradientMesh** gradientMesh) mut
			{
				return VT.CreateGradientMesh(&this, patches, patchesCount, gradientMesh);
			}
			public HRESULT CreateImageSourceFromWic(IWICBitmapSource* wicBitmapSource, D2D1_IMAGE_SOURCE_LOADING_OPTIONS loadingOptions, D2D1_ALPHA_MODE alphaMode, ID2D1ImageSourceFromWic** imageSource) mut
			{
				return VT.CreateImageSourceFromWic(&this, wicBitmapSource, loadingOptions, alphaMode, imageSource);
			}
			public HRESULT CreateLookupTable3D(D2D1_BUFFER_PRECISION precision, uint32* extents, uint8* data, uint32 dataCount, uint32* strides, ID2D1LookupTable3D** lookupTable) mut
			{
				return VT.CreateLookupTable3D(&this, precision, extents, data, dataCount, strides, lookupTable);
			}
			public HRESULT CreateImageSourceFromDxgi(IDXGISurface** surfaces, uint32 surfaceCount, DXGI_COLOR_SPACE_TYPE colorSpace, D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS options, ID2D1ImageSource** imageSource) mut
			{
				return VT.CreateImageSourceFromDxgi(&this, surfaces, surfaceCount, colorSpace, options, imageSource);
			}
			public HRESULT GetGradientMeshWorldBounds(ID2D1GradientMesh* gradientMesh, D2D_RECT_F* pBounds) mut
			{
				return VT.GetGradientMeshWorldBounds(&this, gradientMesh, pBounds);
			}
			public void DrawInk(ID2D1Ink* ink, ID2D1Brush* brush, ID2D1InkStyle* inkStyle) mut
			{
				VT.DrawInk(&this, ink, brush, inkStyle);
			}
			public void DrawGradientMesh(ID2D1GradientMesh* gradientMesh) mut
			{
				VT.DrawGradientMesh(&this, gradientMesh);
			}
			public void DrawGdiMetafile(ID2D1GdiMetafile* gdiMetafile, D2D_RECT_F* destinationRectangle, D2D_RECT_F* sourceRectangle) mut
			{
				VT.DrawGdiMetafile(&this, gdiMetafile, destinationRectangle, sourceRectangle);
			}
			public HRESULT CreateTransformedImageSource(ID2D1ImageSource* imageSource, D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES* properties, ID2D1TransformedImageSource** transformedImageSource) mut
			{
				return VT.CreateTransformedImageSource(&this, imageSource, properties, transformedImageSource);
			}
			[CRepr]
			public struct VTable : ID2D1DeviceContext1.VTable
			{
				public new function HRESULT(ID2D1DeviceContext2 *self, D2D1_INK_POINT* startPoint, ID2D1Ink** ink) CreateInk;
				public new function HRESULT(ID2D1DeviceContext2 *self, D2D1_INK_STYLE_PROPERTIES* inkStyleProperties, ID2D1InkStyle** inkStyle) CreateInkStyle;
				public new function HRESULT(ID2D1DeviceContext2 *self, D2D1_GRADIENT_MESH_PATCH* patches, uint32 patchesCount, ID2D1GradientMesh** gradientMesh) CreateGradientMesh;
				public new function HRESULT(ID2D1DeviceContext2 *self, IWICBitmapSource* wicBitmapSource, D2D1_IMAGE_SOURCE_LOADING_OPTIONS loadingOptions, D2D1_ALPHA_MODE alphaMode, ID2D1ImageSourceFromWic** imageSource) CreateImageSourceFromWic;
				public new function HRESULT(ID2D1DeviceContext2 *self, D2D1_BUFFER_PRECISION precision, uint32* extents, uint8* data, uint32 dataCount, uint32* strides, ID2D1LookupTable3D** lookupTable) CreateLookupTable3D;
				public new function HRESULT(ID2D1DeviceContext2 *self, IDXGISurface** surfaces, uint32 surfaceCount, DXGI_COLOR_SPACE_TYPE colorSpace, D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS options, ID2D1ImageSource** imageSource) CreateImageSourceFromDxgi;
				public new function HRESULT(ID2D1DeviceContext2 *self, ID2D1GradientMesh* gradientMesh, D2D_RECT_F* pBounds) GetGradientMeshWorldBounds;
				public new function void(ID2D1DeviceContext2 *self, ID2D1Ink* ink, ID2D1Brush* brush, ID2D1InkStyle* inkStyle) DrawInk;
				public new function void(ID2D1DeviceContext2 *self, ID2D1GradientMesh* gradientMesh) DrawGradientMesh;
				public new function void(ID2D1DeviceContext2 *self, ID2D1GdiMetafile* gdiMetafile, D2D_RECT_F* destinationRectangle, D2D_RECT_F* sourceRectangle) DrawGdiMetafile;
				public new function HRESULT(ID2D1DeviceContext2 *self, ID2D1ImageSource* imageSource, D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES* properties, ID2D1TransformedImageSource** transformedImageSource) CreateTransformedImageSource;
			}
		}
		[CRepr]
		public struct ID2D1Device2 : ID2D1Device1
		{
			public const new Guid IID = .(0xa44472e1, 0x8dfb, 0x4e60, 0x84, 0x92, 0x6e, 0x28, 0x61, 0xc9, 0xca, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDeviceContext(D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext2** deviceContext2) mut
			{
				return VT.CreateDeviceContext(&this, options, deviceContext2);
			}
			public void FlushDeviceContexts(ID2D1Bitmap* bitmap) mut
			{
				VT.FlushDeviceContexts(&this, bitmap);
			}
			public HRESULT GetDxgiDevice(IDXGIDevice** dxgiDevice) mut
			{
				return VT.GetDxgiDevice(&this, dxgiDevice);
			}
			[CRepr]
			public struct VTable : ID2D1Device1.VTable
			{
				public new function HRESULT(ID2D1Device2 *self, D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext2** deviceContext2) CreateDeviceContext;
				public new function void(ID2D1Device2 *self, ID2D1Bitmap* bitmap) FlushDeviceContexts;
				public new function HRESULT(ID2D1Device2 *self, IDXGIDevice** dxgiDevice) GetDxgiDevice;
			}
		}
		[CRepr]
		public struct ID2D1Factory3 : ID2D1Factory2
		{
			public const new Guid IID = .(0x0869759f, 0x4f00, 0x413f, 0xb0, 0x3e, 0x2b, 0xda, 0x45, 0x40, 0x4d, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDevice(IDXGIDevice* dxgiDevice, ID2D1Device2** d2dDevice2) mut
			{
				return VT.CreateDevice(&this, dxgiDevice, d2dDevice2);
			}
			[CRepr]
			public struct VTable : ID2D1Factory2.VTable
			{
				public new function HRESULT(ID2D1Factory3 *self, IDXGIDevice* dxgiDevice, ID2D1Device2** d2dDevice2) CreateDevice;
			}
		}
		[CRepr]
		public struct ID2D1CommandSink2 : ID2D1CommandSink1
		{
			public const new Guid IID = .(0x3bab440e, 0x417e, 0x47df, 0xa2, 0xe2, 0xbc, 0x0b, 0xe6, 0xa0, 0x09, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DrawInk(ID2D1Ink* ink, ID2D1Brush* brush, ID2D1InkStyle* inkStyle) mut
			{
				return VT.DrawInk(&this, ink, brush, inkStyle);
			}
			public HRESULT DrawGradientMesh(ID2D1GradientMesh* gradientMesh) mut
			{
				return VT.DrawGradientMesh(&this, gradientMesh);
			}
			public HRESULT DrawGdiMetafile(ID2D1GdiMetafile* gdiMetafile, D2D_RECT_F* destinationRectangle, D2D_RECT_F* sourceRectangle) mut
			{
				return VT.DrawGdiMetafile(&this, gdiMetafile, destinationRectangle, sourceRectangle);
			}
			[CRepr]
			public struct VTable : ID2D1CommandSink1.VTable
			{
				public new function HRESULT(ID2D1CommandSink2 *self, ID2D1Ink* ink, ID2D1Brush* brush, ID2D1InkStyle* inkStyle) DrawInk;
				public new function HRESULT(ID2D1CommandSink2 *self, ID2D1GradientMesh* gradientMesh) DrawGradientMesh;
				public new function HRESULT(ID2D1CommandSink2 *self, ID2D1GdiMetafile* gdiMetafile, D2D_RECT_F* destinationRectangle, D2D_RECT_F* sourceRectangle) DrawGdiMetafile;
			}
		}
		[CRepr]
		public struct ID2D1GdiMetafile1 : ID2D1GdiMetafile
		{
			public const new Guid IID = .(0x2e69f9e8, 0xdd3f, 0x4bf9, 0x95, 0xba, 0xc0, 0x4f, 0x49, 0xd7, 0x88, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDpi(float* dpiX, float* dpiY) mut
			{
				return VT.GetDpi(&this, dpiX, dpiY);
			}
			public HRESULT GetSourceBounds(D2D_RECT_F* bounds) mut
			{
				return VT.GetSourceBounds(&this, bounds);
			}
			[CRepr]
			public struct VTable : ID2D1GdiMetafile.VTable
			{
				public new function HRESULT(ID2D1GdiMetafile1 *self, float* dpiX, float* dpiY) GetDpi;
				public new function HRESULT(ID2D1GdiMetafile1 *self, D2D_RECT_F* bounds) GetSourceBounds;
			}
		}
		[CRepr]
		public struct ID2D1GdiMetafileSink1 : ID2D1GdiMetafileSink
		{
			public const new Guid IID = .(0xfd0ecb6b, 0x91e6, 0x411e, 0x86, 0x55, 0x39, 0x5e, 0x76, 0x0f, 0x91, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ProcessRecord(uint32 recordType, void* recordData, uint32 recordDataSize, uint32 flags) mut
			{
				return VT.ProcessRecord(&this, recordType, recordData, recordDataSize, flags);
			}
			[CRepr]
			public struct VTable : ID2D1GdiMetafileSink.VTable
			{
				public new function HRESULT(ID2D1GdiMetafileSink1 *self, uint32 recordType, void* recordData, uint32 recordDataSize, uint32 flags) ProcessRecord;
			}
		}
		[CRepr]
		public struct ID2D1SpriteBatch : ID2D1Resource
		{
			public const new Guid IID = .(0x4dc583bf, 0x3a10, 0x438a, 0x87, 0x22, 0xe9, 0x76, 0x52, 0x24, 0xf1, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddSprites(uint32 spriteCount, D2D_RECT_F* destinationRectangles, D2D_RECT_U* sourceRectangles, D2D1_COLOR_F* colors, D2D_MATRIX_3X2_F* transforms, uint32 destinationRectanglesStride, uint32 sourceRectanglesStride, uint32 colorsStride, uint32 transformsStride) mut
			{
				return VT.AddSprites(&this, spriteCount, destinationRectangles, sourceRectangles, colors, transforms, destinationRectanglesStride, sourceRectanglesStride, colorsStride, transformsStride);
			}
			public HRESULT SetSprites(uint32 startIndex, uint32 spriteCount, D2D_RECT_F* destinationRectangles, D2D_RECT_U* sourceRectangles, D2D1_COLOR_F* colors, D2D_MATRIX_3X2_F* transforms, uint32 destinationRectanglesStride, uint32 sourceRectanglesStride, uint32 colorsStride, uint32 transformsStride) mut
			{
				return VT.SetSprites(&this, startIndex, spriteCount, destinationRectangles, sourceRectangles, colors, transforms, destinationRectanglesStride, sourceRectanglesStride, colorsStride, transformsStride);
			}
			public HRESULT GetSprites(uint32 startIndex, uint32 spriteCount, D2D_RECT_F* destinationRectangles, D2D_RECT_U* sourceRectangles, D2D1_COLOR_F* colors, D2D_MATRIX_3X2_F* transforms) mut
			{
				return VT.GetSprites(&this, startIndex, spriteCount, destinationRectangles, sourceRectangles, colors, transforms);
			}
			public uint32 GetSpriteCount() mut
			{
				return VT.GetSpriteCount(&this);
			}
			public void Clear() mut
			{
				VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function HRESULT(ID2D1SpriteBatch *self, uint32 spriteCount, D2D_RECT_F* destinationRectangles, D2D_RECT_U* sourceRectangles, D2D1_COLOR_F* colors, D2D_MATRIX_3X2_F* transforms, uint32 destinationRectanglesStride, uint32 sourceRectanglesStride, uint32 colorsStride, uint32 transformsStride) AddSprites;
				public new function HRESULT(ID2D1SpriteBatch *self, uint32 startIndex, uint32 spriteCount, D2D_RECT_F* destinationRectangles, D2D_RECT_U* sourceRectangles, D2D1_COLOR_F* colors, D2D_MATRIX_3X2_F* transforms, uint32 destinationRectanglesStride, uint32 sourceRectanglesStride, uint32 colorsStride, uint32 transformsStride) SetSprites;
				public new function HRESULT(ID2D1SpriteBatch *self, uint32 startIndex, uint32 spriteCount, D2D_RECT_F* destinationRectangles, D2D_RECT_U* sourceRectangles, D2D1_COLOR_F* colors, D2D_MATRIX_3X2_F* transforms) GetSprites;
				public new function uint32(ID2D1SpriteBatch *self) GetSpriteCount;
				public new function void(ID2D1SpriteBatch *self) Clear;
			}
		}
		[CRepr]
		public struct ID2D1DeviceContext3 : ID2D1DeviceContext2
		{
			public const new Guid IID = .(0x235a7496, 0x8351, 0x414c, 0xbc, 0xd4, 0x66, 0x72, 0xab, 0x2d, 0x8e, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSpriteBatch(ID2D1SpriteBatch** spriteBatch) mut
			{
				return VT.CreateSpriteBatch(&this, spriteBatch);
			}
			public void DrawSpriteBatch(ID2D1SpriteBatch* spriteBatch, uint32 startIndex, uint32 spriteCount, ID2D1Bitmap* bitmap, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode, D2D1_SPRITE_OPTIONS spriteOptions) mut
			{
				VT.DrawSpriteBatch(&this, spriteBatch, startIndex, spriteCount, bitmap, interpolationMode, spriteOptions);
			}
			[CRepr]
			public struct VTable : ID2D1DeviceContext2.VTable
			{
				public new function HRESULT(ID2D1DeviceContext3 *self, ID2D1SpriteBatch** spriteBatch) CreateSpriteBatch;
				public new function void(ID2D1DeviceContext3 *self, ID2D1SpriteBatch* spriteBatch, uint32 startIndex, uint32 spriteCount, ID2D1Bitmap* bitmap, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode, D2D1_SPRITE_OPTIONS spriteOptions) DrawSpriteBatch;
			}
		}
		[CRepr]
		public struct ID2D1Device3 : ID2D1Device2
		{
			public const new Guid IID = .(0x852f2087, 0x802c, 0x4037, 0xab, 0x60, 0xff, 0x2e, 0x7e, 0xe6, 0xfc, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDeviceContext(D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext3** deviceContext3) mut
			{
				return VT.CreateDeviceContext(&this, options, deviceContext3);
			}
			[CRepr]
			public struct VTable : ID2D1Device2.VTable
			{
				public new function HRESULT(ID2D1Device3 *self, D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext3** deviceContext3) CreateDeviceContext;
			}
		}
		[CRepr]
		public struct ID2D1Factory4 : ID2D1Factory3
		{
			public const new Guid IID = .(0xbd4ec2d2, 0x0662, 0x4bee, 0xba, 0x8e, 0x6f, 0x29, 0xf0, 0x32, 0xe0, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDevice(IDXGIDevice* dxgiDevice, ID2D1Device3** d2dDevice3) mut
			{
				return VT.CreateDevice(&this, dxgiDevice, d2dDevice3);
			}
			[CRepr]
			public struct VTable : ID2D1Factory3.VTable
			{
				public new function HRESULT(ID2D1Factory4 *self, IDXGIDevice* dxgiDevice, ID2D1Device3** d2dDevice3) CreateDevice;
			}
		}
		[CRepr]
		public struct ID2D1CommandSink3 : ID2D1CommandSink2
		{
			public const new Guid IID = .(0x18079135, 0x4cf3, 0x4868, 0xbc, 0x8e, 0x06, 0x06, 0x7e, 0x6d, 0x24, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DrawSpriteBatch(ID2D1SpriteBatch* spriteBatch, uint32 startIndex, uint32 spriteCount, ID2D1Bitmap* bitmap, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode, D2D1_SPRITE_OPTIONS spriteOptions) mut
			{
				return VT.DrawSpriteBatch(&this, spriteBatch, startIndex, spriteCount, bitmap, interpolationMode, spriteOptions);
			}
			[CRepr]
			public struct VTable : ID2D1CommandSink2.VTable
			{
				public new function HRESULT(ID2D1CommandSink3 *self, ID2D1SpriteBatch* spriteBatch, uint32 startIndex, uint32 spriteCount, ID2D1Bitmap* bitmap, D2D1_BITMAP_INTERPOLATION_MODE interpolationMode, D2D1_SPRITE_OPTIONS spriteOptions) DrawSpriteBatch;
			}
		}
		[CRepr]
		public struct ID2D1SvgGlyphStyle : ID2D1Resource
		{
			public const new Guid IID = .(0xaf671749, 0xd241, 0x4db8, 0x8e, 0x41, 0xdc, 0xc2, 0xe5, 0xc1, 0xa4, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFill(ID2D1Brush* brush) mut
			{
				return VT.SetFill(&this, brush);
			}
			public void GetFill(ID2D1Brush** brush) mut
			{
				VT.GetFill(&this, brush);
			}
			public HRESULT SetStroke(ID2D1Brush* brush, float strokeWidth, float* dashes, uint32 dashesCount, float dashOffset) mut
			{
				return VT.SetStroke(&this, brush, strokeWidth, dashes, dashesCount, dashOffset);
			}
			public uint32 GetStrokeDashesCount() mut
			{
				return VT.GetStrokeDashesCount(&this);
			}
			public void GetStroke(ID2D1Brush** brush, float* strokeWidth, float* dashes, uint32 dashesCount, float* dashOffset) mut
			{
				VT.GetStroke(&this, brush, strokeWidth, dashes, dashesCount, dashOffset);
			}
			[CRepr]
			public struct VTable : ID2D1Resource.VTable
			{
				public new function HRESULT(ID2D1SvgGlyphStyle *self, ID2D1Brush* brush) SetFill;
				public new function void(ID2D1SvgGlyphStyle *self, ID2D1Brush** brush) GetFill;
				public new function HRESULT(ID2D1SvgGlyphStyle *self, ID2D1Brush* brush, float strokeWidth, float* dashes, uint32 dashesCount, float dashOffset) SetStroke;
				public new function uint32(ID2D1SvgGlyphStyle *self) GetStrokeDashesCount;
				public new function void(ID2D1SvgGlyphStyle *self, ID2D1Brush** brush, float* strokeWidth, float* dashes, uint32 dashesCount, float* dashOffset) GetStroke;
			}
		}
		[CRepr]
		public struct ID2D1DeviceContext4 : ID2D1DeviceContext3
		{
			public const new Guid IID = .(0x8c427831, 0x3d90, 0x4476, 0xb6, 0x47, 0xc4, 0xfa, 0xe3, 0x49, 0xe4, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSvgGlyphStyle(ID2D1SvgGlyphStyle** svgGlyphStyle) mut
			{
				return VT.CreateSvgGlyphStyle(&this, svgGlyphStyle);
			}
			public void DrawText(char16* string, uint32 stringLength, IDWriteTextFormat* textFormat, D2D_RECT_F* layoutRect, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, D2D1_DRAW_TEXT_OPTIONS options, DWRITE_MEASURING_MODE measuringMode) mut
			{
				VT.DrawText(&this, string, stringLength, textFormat, layoutRect, defaultFillBrush, svgGlyphStyle, colorPaletteIndex, options, measuringMode);
			}
			public void DrawTextLayout(D2D_POINT_2F origin, IDWriteTextLayout* textLayout, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, D2D1_DRAW_TEXT_OPTIONS options) mut
			{
				VT.DrawTextLayout(&this, origin, textLayout, defaultFillBrush, svgGlyphStyle, colorPaletteIndex, options);
			}
			public void DrawColorBitmapGlyphRun(DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, DWRITE_MEASURING_MODE measuringMode, D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION bitmapSnapOption) mut
			{
				VT.DrawColorBitmapGlyphRun(&this, glyphImageFormat, baselineOrigin, glyphRun, measuringMode, bitmapSnapOption);
			}
			public void DrawSvgGlyphRun(D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, DWRITE_MEASURING_MODE measuringMode) mut
			{
				VT.DrawSvgGlyphRun(&this, baselineOrigin, glyphRun, defaultFillBrush, svgGlyphStyle, colorPaletteIndex, measuringMode);
			}
			public HRESULT GetColorBitmapGlyphImage(DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, D2D_POINT_2F glyphOrigin, IDWriteFontFace* fontFace, float fontEmSize, uint16 glyphIndex, BOOL isSideways, D2D_MATRIX_3X2_F* worldTransform, float dpiX, float dpiY, D2D_MATRIX_3X2_F* glyphTransform, ID2D1Image** glyphImage) mut
			{
				return VT.GetColorBitmapGlyphImage(&this, glyphImageFormat, glyphOrigin, fontFace, fontEmSize, glyphIndex, isSideways, worldTransform, dpiX, dpiY, glyphTransform, glyphImage);
			}
			public HRESULT GetSvgGlyphImage(D2D_POINT_2F glyphOrigin, IDWriteFontFace* fontFace, float fontEmSize, uint16 glyphIndex, BOOL isSideways, D2D_MATRIX_3X2_F* worldTransform, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, D2D_MATRIX_3X2_F* glyphTransform, ID2D1CommandList** glyphImage) mut
			{
				return VT.GetSvgGlyphImage(&this, glyphOrigin, fontFace, fontEmSize, glyphIndex, isSideways, worldTransform, defaultFillBrush, svgGlyphStyle, colorPaletteIndex, glyphTransform, glyphImage);
			}
			[CRepr]
			public struct VTable : ID2D1DeviceContext3.VTable
			{
				public new function HRESULT(ID2D1DeviceContext4 *self, ID2D1SvgGlyphStyle** svgGlyphStyle) CreateSvgGlyphStyle;
				public new function void(ID2D1DeviceContext4 *self, char16* string, uint32 stringLength, IDWriteTextFormat* textFormat, D2D_RECT_F* layoutRect, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, D2D1_DRAW_TEXT_OPTIONS options, DWRITE_MEASURING_MODE measuringMode) DrawText;
				public new function void(ID2D1DeviceContext4 *self, D2D_POINT_2F origin, IDWriteTextLayout* textLayout, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, D2D1_DRAW_TEXT_OPTIONS options) DrawTextLayout;
				public new function void(ID2D1DeviceContext4 *self, DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, DWRITE_MEASURING_MODE measuringMode, D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION bitmapSnapOption) DrawColorBitmapGlyphRun;
				public new function void(ID2D1DeviceContext4 *self, D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, DWRITE_MEASURING_MODE measuringMode) DrawSvgGlyphRun;
				public new function HRESULT(ID2D1DeviceContext4 *self, DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, D2D_POINT_2F glyphOrigin, IDWriteFontFace* fontFace, float fontEmSize, uint16 glyphIndex, BOOL isSideways, D2D_MATRIX_3X2_F* worldTransform, float dpiX, float dpiY, D2D_MATRIX_3X2_F* glyphTransform, ID2D1Image** glyphImage) GetColorBitmapGlyphImage;
				public new function HRESULT(ID2D1DeviceContext4 *self, D2D_POINT_2F glyphOrigin, IDWriteFontFace* fontFace, float fontEmSize, uint16 glyphIndex, BOOL isSideways, D2D_MATRIX_3X2_F* worldTransform, ID2D1Brush* defaultFillBrush, ID2D1SvgGlyphStyle* svgGlyphStyle, uint32 colorPaletteIndex, D2D_MATRIX_3X2_F* glyphTransform, ID2D1CommandList** glyphImage) GetSvgGlyphImage;
			}
		}
		[CRepr]
		public struct ID2D1Device4 : ID2D1Device3
		{
			public const new Guid IID = .(0xd7bdb159, 0x5683, 0x4a46, 0xbc, 0x9c, 0x72, 0xdc, 0x72, 0x0b, 0x85, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDeviceContext(D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext4** deviceContext4) mut
			{
				return VT.CreateDeviceContext(&this, options, deviceContext4);
			}
			public void SetMaximumColorGlyphCacheMemory(uint64 maximumInBytes) mut
			{
				VT.SetMaximumColorGlyphCacheMemory(&this, maximumInBytes);
			}
			public uint64 GetMaximumColorGlyphCacheMemory() mut
			{
				return VT.GetMaximumColorGlyphCacheMemory(&this);
			}
			[CRepr]
			public struct VTable : ID2D1Device3.VTable
			{
				public new function HRESULT(ID2D1Device4 *self, D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext4** deviceContext4) CreateDeviceContext;
				public new function void(ID2D1Device4 *self, uint64 maximumInBytes) SetMaximumColorGlyphCacheMemory;
				public new function uint64(ID2D1Device4 *self) GetMaximumColorGlyphCacheMemory;
			}
		}
		[CRepr]
		public struct ID2D1Factory5 : ID2D1Factory4
		{
			public const new Guid IID = .(0xc4349994, 0x838e, 0x4b0f, 0x8c, 0xab, 0x44, 0x99, 0x7d, 0x9e, 0xea, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDevice(IDXGIDevice* dxgiDevice, ID2D1Device4** d2dDevice4) mut
			{
				return VT.CreateDevice(&this, dxgiDevice, d2dDevice4);
			}
			[CRepr]
			public struct VTable : ID2D1Factory4.VTable
			{
				public new function HRESULT(ID2D1Factory5 *self, IDXGIDevice* dxgiDevice, ID2D1Device4** d2dDevice4) CreateDevice;
			}
		}
		[CRepr]
		public struct ID2D1CommandSink4 : ID2D1CommandSink3
		{
			public const new Guid IID = .(0xc78a6519, 0x40d6, 0x4218, 0xb2, 0xde, 0xbe, 0xee, 0xb7, 0x44, 0xbb, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPrimitiveBlend2(D2D1_PRIMITIVE_BLEND primitiveBlend) mut
			{
				return VT.SetPrimitiveBlend2(&this, primitiveBlend);
			}
			[CRepr]
			public struct VTable : ID2D1CommandSink3.VTable
			{
				public new function HRESULT(ID2D1CommandSink4 *self, D2D1_PRIMITIVE_BLEND primitiveBlend) SetPrimitiveBlend2;
			}
		}
		[CRepr]
		public struct ID2D1ColorContext1 : ID2D1ColorContext
		{
			public const new Guid IID = .(0x1ab42875, 0xc57f, 0x4be9, 0xbd, 0x85, 0x9c, 0xd7, 0x8d, 0x6f, 0x55, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public D2D1_COLOR_CONTEXT_TYPE GetColorContextType() mut
			{
				return VT.GetColorContextType(&this);
			}
			public DXGI_COLOR_SPACE_TYPE GetDXGIColorSpace() mut
			{
				return VT.GetDXGIColorSpace(&this);
			}
			public HRESULT GetSimpleColorProfile(D2D1_SIMPLE_COLOR_PROFILE* simpleProfile) mut
			{
				return VT.GetSimpleColorProfile(&this, simpleProfile);
			}
			[CRepr]
			public struct VTable : ID2D1ColorContext.VTable
			{
				public new function D2D1_COLOR_CONTEXT_TYPE(ID2D1ColorContext1 *self) GetColorContextType;
				public new function DXGI_COLOR_SPACE_TYPE(ID2D1ColorContext1 *self) GetDXGIColorSpace;
				public new function HRESULT(ID2D1ColorContext1 *self, D2D1_SIMPLE_COLOR_PROFILE* simpleProfile) GetSimpleColorProfile;
			}
		}
		[CRepr]
		public struct ID2D1DeviceContext5 : ID2D1DeviceContext4
		{
			public const new Guid IID = .(0x7836d248, 0x68cc, 0x4df6, 0xb9, 0xe8, 0xde, 0x99, 0x1b, 0xf6, 0x2e, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSvgDocument(IStream* inputXmlStream, D2D_SIZE_F viewportSize, ID2D1SvgDocument** svgDocument) mut
			{
				return VT.CreateSvgDocument(&this, inputXmlStream, viewportSize, svgDocument);
			}
			public void DrawSvgDocument(ID2D1SvgDocument* svgDocument) mut
			{
				VT.DrawSvgDocument(&this, svgDocument);
			}
			public HRESULT CreateColorContextFromDxgiColorSpace(DXGI_COLOR_SPACE_TYPE colorSpace, ID2D1ColorContext1** colorContext) mut
			{
				return VT.CreateColorContextFromDxgiColorSpace(&this, colorSpace, colorContext);
			}
			public HRESULT CreateColorContextFromSimpleColorProfile(D2D1_SIMPLE_COLOR_PROFILE* simpleProfile, ID2D1ColorContext1** colorContext) mut
			{
				return VT.CreateColorContextFromSimpleColorProfile(&this, simpleProfile, colorContext);
			}
			[CRepr]
			public struct VTable : ID2D1DeviceContext4.VTable
			{
				public new function HRESULT(ID2D1DeviceContext5 *self, IStream* inputXmlStream, D2D_SIZE_F viewportSize, ID2D1SvgDocument** svgDocument) CreateSvgDocument;
				public new function void(ID2D1DeviceContext5 *self, ID2D1SvgDocument* svgDocument) DrawSvgDocument;
				public new function HRESULT(ID2D1DeviceContext5 *self, DXGI_COLOR_SPACE_TYPE colorSpace, ID2D1ColorContext1** colorContext) CreateColorContextFromDxgiColorSpace;
				public new function HRESULT(ID2D1DeviceContext5 *self, D2D1_SIMPLE_COLOR_PROFILE* simpleProfile, ID2D1ColorContext1** colorContext) CreateColorContextFromSimpleColorProfile;
			}
		}
		[CRepr]
		public struct ID2D1Device5 : ID2D1Device4
		{
			public const new Guid IID = .(0xd55ba0a4, 0x6405, 0x4694, 0xae, 0xf5, 0x08, 0xee, 0x1a, 0x43, 0x58, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDeviceContext(D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext5** deviceContext5) mut
			{
				return VT.CreateDeviceContext(&this, options, deviceContext5);
			}
			[CRepr]
			public struct VTable : ID2D1Device4.VTable
			{
				public new function HRESULT(ID2D1Device5 *self, D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext5** deviceContext5) CreateDeviceContext;
			}
		}
		[CRepr]
		public struct ID2D1Factory6 : ID2D1Factory5
		{
			public const new Guid IID = .(0xf9976f46, 0xf642, 0x44c1, 0x97, 0xca, 0xda, 0x32, 0xea, 0x2a, 0x26, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDevice(IDXGIDevice* dxgiDevice, ID2D1Device5** d2dDevice5) mut
			{
				return VT.CreateDevice(&this, dxgiDevice, d2dDevice5);
			}
			[CRepr]
			public struct VTable : ID2D1Factory5.VTable
			{
				public new function HRESULT(ID2D1Factory6 *self, IDXGIDevice* dxgiDevice, ID2D1Device5** d2dDevice5) CreateDevice;
			}
		}
		[CRepr]
		public struct ID2D1CommandSink5 : ID2D1CommandSink4
		{
			public const new Guid IID = .(0x7047dd26, 0xb1e7, 0x44a7, 0x95, 0x9a, 0x83, 0x49, 0xe2, 0x14, 0x4f, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BlendImage(ID2D1Image* image, D2D1_BLEND_MODE blendMode, D2D_POINT_2F* targetOffset, D2D_RECT_F* imageRectangle, D2D1_INTERPOLATION_MODE interpolationMode) mut
			{
				return VT.BlendImage(&this, image, blendMode, targetOffset, imageRectangle, interpolationMode);
			}
			[CRepr]
			public struct VTable : ID2D1CommandSink4.VTable
			{
				public new function HRESULT(ID2D1CommandSink5 *self, ID2D1Image* image, D2D1_BLEND_MODE blendMode, D2D_POINT_2F* targetOffset, D2D_RECT_F* imageRectangle, D2D1_INTERPOLATION_MODE interpolationMode) BlendImage;
			}
		}
		[CRepr]
		public struct ID2D1DeviceContext6 : ID2D1DeviceContext5
		{
			public const new Guid IID = .(0x985f7e37, 0x4ed0, 0x4a19, 0x98, 0xa3, 0x15, 0xb0, 0xed, 0xfd, 0xe3, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public void BlendImage(ID2D1Image* image, D2D1_BLEND_MODE blendMode, D2D_POINT_2F* targetOffset, D2D_RECT_F* imageRectangle, D2D1_INTERPOLATION_MODE interpolationMode) mut
			{
				VT.BlendImage(&this, image, blendMode, targetOffset, imageRectangle, interpolationMode);
			}
			[CRepr]
			public struct VTable : ID2D1DeviceContext5.VTable
			{
				public new function void(ID2D1DeviceContext6 *self, ID2D1Image* image, D2D1_BLEND_MODE blendMode, D2D_POINT_2F* targetOffset, D2D_RECT_F* imageRectangle, D2D1_INTERPOLATION_MODE interpolationMode) BlendImage;
			}
		}
		[CRepr]
		public struct ID2D1Device6 : ID2D1Device5
		{
			public const new Guid IID = .(0x7bfef914, 0x2d75, 0x4bad, 0xbe, 0x87, 0xe1, 0x8d, 0xdb, 0x07, 0x7b, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDeviceContext(D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext6** deviceContext6) mut
			{
				return VT.CreateDeviceContext(&this, options, deviceContext6);
			}
			[CRepr]
			public struct VTable : ID2D1Device5.VTable
			{
				public new function HRESULT(ID2D1Device6 *self, D2D1_DEVICE_CONTEXT_OPTIONS options, ID2D1DeviceContext6** deviceContext6) CreateDeviceContext;
			}
		}
		[CRepr]
		public struct ID2D1Factory7 : ID2D1Factory6
		{
			public const new Guid IID = .(0xbdc2bdd3, 0xb96c, 0x4de6, 0xbd, 0xf7, 0x99, 0xd4, 0x74, 0x54, 0x54, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDevice(IDXGIDevice* dxgiDevice, ID2D1Device6** d2dDevice6) mut
			{
				return VT.CreateDevice(&this, dxgiDevice, d2dDevice6);
			}
			[CRepr]
			public struct VTable : ID2D1Factory6.VTable
			{
				public new function HRESULT(ID2D1Factory7 *self, IDXGIDevice* dxgiDevice, ID2D1Device6** d2dDevice6) CreateDevice;
			}
		}
		[CRepr]
		public struct ID2D1EffectContext1 : ID2D1EffectContext
		{
			public const new Guid IID = .(0x84ab595a, 0xfc81, 0x4546, 0xba, 0xcd, 0xe8, 0xef, 0x4d, 0x8a, 0xbe, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateLookupTable3D(D2D1_BUFFER_PRECISION precision, uint32* extents, uint8* data, uint32 dataCount, uint32* strides, ID2D1LookupTable3D** lookupTable) mut
			{
				return VT.CreateLookupTable3D(&this, precision, extents, data, dataCount, strides, lookupTable);
			}
			[CRepr]
			public struct VTable : ID2D1EffectContext.VTable
			{
				public new function HRESULT(ID2D1EffectContext1 *self, D2D1_BUFFER_PRECISION precision, uint32* extents, uint8* data, uint32 dataCount, uint32* strides, ID2D1LookupTable3D** lookupTable) CreateLookupTable3D;
			}
		}
		[CRepr]
		public struct ID2D1EffectContext2 : ID2D1EffectContext1
		{
			public const new Guid IID = .(0x577ad2a0, 0x9fc7, 0x4dda, 0x8b, 0x18, 0xda, 0xb8, 0x10, 0x14, 0x00, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateColorContextFromDxgiColorSpace(DXGI_COLOR_SPACE_TYPE colorSpace, ID2D1ColorContext1** colorContext) mut
			{
				return VT.CreateColorContextFromDxgiColorSpace(&this, colorSpace, colorContext);
			}
			public HRESULT CreateColorContextFromSimpleColorProfile(D2D1_SIMPLE_COLOR_PROFILE* simpleProfile, ID2D1ColorContext1** colorContext) mut
			{
				return VT.CreateColorContextFromSimpleColorProfile(&this, simpleProfile, colorContext);
			}
			[CRepr]
			public struct VTable : ID2D1EffectContext1.VTable
			{
				public new function HRESULT(ID2D1EffectContext2 *self, DXGI_COLOR_SPACE_TYPE colorSpace, ID2D1ColorContext1** colorContext) CreateColorContextFromDxgiColorSpace;
				public new function HRESULT(ID2D1EffectContext2 *self, D2D1_SIMPLE_COLOR_PROFILE* simpleProfile, ID2D1ColorContext1** colorContext) CreateColorContextFromSimpleColorProfile;
			}
		}
		
		// --- Functions ---
		
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT D2D1CreateFactory(D2D1_FACTORY_TYPE factoryType, Guid* riid, D2D1_FACTORY_OPTIONS* pFactoryOptions, void** ppIFactory);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void D2D1MakeRotateMatrix(float angle, D2D_POINT_2F center, D2D_MATRIX_3X2_F* matrix);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void D2D1MakeSkewMatrix(float angleX, float angleY, D2D_POINT_2F center, D2D_MATRIX_3X2_F* matrix);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL D2D1IsMatrixInvertible(D2D_MATRIX_3X2_F* matrix);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL D2D1InvertMatrix(D2D_MATRIX_3X2_F* matrix);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT D2D1CreateDevice(IDXGIDevice* dxgiDevice, D2D1_CREATION_PROPERTIES* creationProperties, ID2D1Device** d2dDevice);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT D2D1CreateDeviceContext(IDXGISurface* dxgiSurface, D2D1_CREATION_PROPERTIES* creationProperties, ID2D1DeviceContext** d2dDeviceContext);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern D2D1_COLOR_F D2D1ConvertColorSpace(D2D1_COLOR_SPACE sourceColorSpace, D2D1_COLOR_SPACE destinationColorSpace, D2D1_COLOR_F* color);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void D2D1SinCos(float angle, float* s, float* c);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern float D2D1Tan(float angle);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern float D2D1Vec3Length(float x, float y, float z);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern float D2D1ComputeMaximumScaleFactor(D2D_MATRIX_3X2_F* matrix);
		[Import("d2d1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void D2D1GetGradientMeshInteriorPointsFromCoonsPatch(D2D_POINT_2F* pPoint0, D2D_POINT_2F* pPoint1, D2D_POINT_2F* pPoint2, D2D_POINT_2F* pPoint3, D2D_POINT_2F* pPoint4, D2D_POINT_2F* pPoint5, D2D_POINT_2F* pPoint6, D2D_POINT_2F* pPoint7, D2D_POINT_2F* pPoint8, D2D_POINT_2F* pPoint9, D2D_POINT_2F* pPoint10, D2D_POINT_2F* pPoint11, D2D_POINT_2F* pTensorPoint11, D2D_POINT_2F* pTensorPoint12, D2D_POINT_2F* pTensorPoint21, D2D_POINT_2F* pTensorPoint22);
		
	}
}
