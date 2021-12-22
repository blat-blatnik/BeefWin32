using System;

// namespace Storage.Xps
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const HRESULT XPS_E_SIGREQUESTID_DUP = -2142108795;
		public const HRESULT XPS_E_PACKAGE_NOT_OPENED = -2142108794;
		public const HRESULT XPS_E_PACKAGE_ALREADY_OPENED = -2142108793;
		public const HRESULT XPS_E_SIGNATUREID_DUP = -2142108792;
		public const HRESULT XPS_E_MARKUP_COMPATIBILITY_ELEMENTS = -2142108791;
		public const HRESULT XPS_E_OBJECT_DETACHED = -2142108790;
		public const HRESULT XPS_E_INVALID_SIGNATUREBLOCK_MARKUP = -2142108789;
		public const HRESULT XPS_E_INVALID_NUMBER_OF_POINTS_IN_CURVE_SEGMENTS = -2142108160;
		public const HRESULT XPS_E_ABSOLUTE_REFERENCE = -2142108159;
		public const HRESULT XPS_E_INVALID_NUMBER_OF_COLOR_CHANNELS = -2142108158;
		public const HRESULT XPS_E_INVALID_LANGUAGE = -2142109696;
		public const HRESULT XPS_E_INVALID_NAME = -2142109695;
		public const HRESULT XPS_E_INVALID_RESOURCE_KEY = -2142109694;
		public const HRESULT XPS_E_INVALID_PAGE_SIZE = -2142109693;
		public const HRESULT XPS_E_INVALID_BLEED_BOX = -2142109692;
		public const HRESULT XPS_E_INVALID_THUMBNAIL_IMAGE_TYPE = -2142109691;
		public const HRESULT XPS_E_INVALID_LOOKUP_TYPE = -2142109690;
		public const HRESULT XPS_E_INVALID_FLOAT = -2142109689;
		public const HRESULT XPS_E_UNEXPECTED_CONTENT_TYPE = -2142109688;
		public const HRESULT XPS_E_INVALID_FONT_URI = -2142109686;
		public const HRESULT XPS_E_INVALID_CONTENT_BOX = -2142109685;
		public const HRESULT XPS_E_INVALID_MARKUP = -2142109684;
		public const HRESULT XPS_E_INVALID_XML_ENCODING = -2142109683;
		public const HRESULT XPS_E_INVALID_CONTENT_TYPE = -2142109682;
		public const HRESULT XPS_E_INVALID_OBFUSCATED_FONT_URI = -2142109681;
		public const HRESULT XPS_E_UNEXPECTED_RELATIONSHIP_TYPE = -2142109680;
		public const HRESULT XPS_E_UNEXPECTED_RESTRICTED_FONT_RELATIONSHIP = -2142109679;
		public const HRESULT XPS_E_MISSING_NAME = -2142109440;
		public const HRESULT XPS_E_MISSING_LOOKUP = -2142109439;
		public const HRESULT XPS_E_MISSING_GLYPHS = -2142109438;
		public const HRESULT XPS_E_MISSING_SEGMENT_DATA = -2142109437;
		public const HRESULT XPS_E_MISSING_COLORPROFILE = -2142109436;
		public const HRESULT XPS_E_MISSING_RELATIONSHIP_TARGET = -2142109435;
		public const HRESULT XPS_E_MISSING_RESOURCE_RELATIONSHIP = -2142109434;
		public const HRESULT XPS_E_MISSING_FONTURI = -2142109433;
		public const HRESULT XPS_E_MISSING_DOCUMENTSEQUENCE_RELATIONSHIP = -2142109432;
		public const HRESULT XPS_E_MISSING_DOCUMENT = -2142109431;
		public const HRESULT XPS_E_MISSING_REFERRED_DOCUMENT = -2142109430;
		public const HRESULT XPS_E_MISSING_REFERRED_PAGE = -2142109429;
		public const HRESULT XPS_E_MISSING_PAGE_IN_DOCUMENT = -2142109428;
		public const HRESULT XPS_E_MISSING_PAGE_IN_PAGEREFERENCE = -2142109427;
		public const HRESULT XPS_E_MISSING_IMAGE_IN_IMAGEBRUSH = -2142109426;
		public const HRESULT XPS_E_MISSING_RESOURCE_KEY = -2142109425;
		public const HRESULT XPS_E_MISSING_PART_REFERENCE = -2142109424;
		public const HRESULT XPS_E_MISSING_RESTRICTED_FONT_RELATIONSHIP = -2142109423;
		public const HRESULT XPS_E_MISSING_DISCARDCONTROL = -2142109422;
		public const HRESULT XPS_E_MISSING_PART_STREAM = -2142109421;
		public const HRESULT XPS_E_UNAVAILABLE_PACKAGE = -2142109420;
		public const HRESULT XPS_E_DUPLICATE_RESOURCE_KEYS = -2142109184;
		public const HRESULT XPS_E_MULTIPLE_RESOURCES = -2142109183;
		public const HRESULT XPS_E_MULTIPLE_DOCUMENTSEQUENCE_RELATIONSHIPS = -2142109182;
		public const HRESULT XPS_E_MULTIPLE_THUMBNAILS_ON_PAGE = -2142109181;
		public const HRESULT XPS_E_MULTIPLE_THUMBNAILS_ON_PACKAGE = -2142109180;
		public const HRESULT XPS_E_MULTIPLE_PRINTTICKETS_ON_PAGE = -2142109179;
		public const HRESULT XPS_E_MULTIPLE_PRINTTICKETS_ON_DOCUMENT = -2142109178;
		public const HRESULT XPS_E_MULTIPLE_PRINTTICKETS_ON_DOCUMENTSEQUENCE = -2142109177;
		public const HRESULT XPS_E_MULTIPLE_REFERENCES_TO_PART = -2142109176;
		public const HRESULT XPS_E_DUPLICATE_NAMES = -2142109175;
		public const HRESULT XPS_E_STRING_TOO_LONG = -2142108928;
		public const HRESULT XPS_E_TOO_MANY_INDICES = -2142108927;
		public const HRESULT XPS_E_MAPPING_OUT_OF_ORDER = -2142108926;
		public const HRESULT XPS_E_MAPPING_OUTSIDE_STRING = -2142108925;
		public const HRESULT XPS_E_MAPPING_OUTSIDE_INDICES = -2142108924;
		public const HRESULT XPS_E_CARET_OUTSIDE_STRING = -2142108923;
		public const HRESULT XPS_E_CARET_OUT_OF_ORDER = -2142108922;
		public const HRESULT XPS_E_ODD_BIDILEVEL = -2142108921;
		public const HRESULT XPS_E_ONE_TO_ONE_MAPPING_EXPECTED = -2142108920;
		public const HRESULT XPS_E_RESTRICTED_FONT_NOT_OBFUSCATED = -2142108919;
		public const HRESULT XPS_E_NEGATIVE_FLOAT = -2142108918;
		public const HRESULT XPS_E_XKEY_ATTR_PRESENT_OUTSIDE_RES_DICT = -2142108672;
		public const HRESULT XPS_E_DICTIONARY_ITEM_NAMED = -2142108671;
		public const HRESULT XPS_E_NESTED_REMOTE_DICTIONARY = -2142108670;
		public const HRESULT XPS_E_INDEX_OUT_OF_RANGE = -2142108416;
		public const HRESULT XPS_E_VISUAL_CIRCULAR_REF = -2142108415;
		public const HRESULT XPS_E_NO_CUSTOM_OBJECTS = -2142108414;
		public const HRESULT XPS_E_ALREADY_OWNED = -2142108413;
		public const HRESULT XPS_E_RESOURCE_NOT_OWNED = -2142108412;
		public const HRESULT XPS_E_UNEXPECTED_COLORPROFILE = -2142108411;
		public const HRESULT XPS_E_COLOR_COMPONENT_OUT_OF_RANGE = -2142108410;
		public const HRESULT XPS_E_BOTH_PATHFIGURE_AND_ABBR_SYNTAX_PRESENT = -2142108409;
		public const HRESULT XPS_E_BOTH_RESOURCE_AND_SOURCEATTR_PRESENT = -2142108408;
		public const HRESULT XPS_E_BLEED_BOX_PAGE_DIMENSIONS_NOT_IN_SYNC = -2142108407;
		public const HRESULT XPS_E_RELATIONSHIP_EXTERNAL = -2142108406;
		public const HRESULT XPS_E_NOT_ENOUGH_GRADIENT_STOPS = -2142108405;
		public const HRESULT XPS_E_PACKAGE_WRITER_NOT_CLOSED = -2142108404;
		
		// --- Typedefs ---
		
		public typealias HPTPROVIDER = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum PRINT_WINDOW_FLAGS : uint32
		{
			PW_CLIENTONLY = 1,
		}
		[AllowDuplicates]
		public enum DEVICE_CAPABILITIES : uint32
		{
			DC_BINNAMES = 12,
			DC_BINS = 6,
			DC_COLLATE = 22,
			DC_COLORDEVICE = 32,
			DC_COPIES = 18,
			DC_DRIVER = 11,
			DC_DUPLEX = 7,
			DC_ENUMRESOLUTIONS = 13,
			DC_EXTRA = 9,
			DC_FIELDS = 1,
			DC_FILEDEPENDENCIES = 14,
			DC_MAXEXTENT = 5,
			DC_MEDIAREADY = 29,
			DC_MEDIATYPENAMES = 34,
			DC_MEDIATYPES = 35,
			DC_MINEXTENT = 4,
			DC_ORIENTATION = 17,
			DC_NUP = 33,
			DC_PAPERNAMES = 16,
			DC_PAPERS = 2,
			DC_PAPERSIZE = 3,
			DC_PERSONALITY = 25,
			DC_PRINTERMEM = 28,
			DC_PRINTRATE = 26,
			DC_PRINTRATEPPM = 31,
			DC_PRINTRATEUNIT = 27,
			DC_SIZE = 8,
			DC_STAPLE = 30,
			DC_TRUETYPE = 15,
			DC_VERSION = 10,
		}
		[AllowDuplicates]
		public enum PSINJECT_POINT : uint16
		{
			PSINJECT_BEGINSTREAM = 1,
			PSINJECT_PSADOBE = 2,
			PSINJECT_PAGESATEND = 3,
			PSINJECT_PAGES = 4,
			PSINJECT_DOCNEEDEDRES = 5,
			PSINJECT_DOCSUPPLIEDRES = 6,
			PSINJECT_PAGEORDER = 7,
			PSINJECT_ORIENTATION = 8,
			PSINJECT_BOUNDINGBOX = 9,
			PSINJECT_DOCUMENTPROCESSCOLORS = 10,
			PSINJECT_COMMENTS = 11,
			PSINJECT_BEGINDEFAULTS = 12,
			PSINJECT_ENDDEFAULTS = 13,
			PSINJECT_BEGINPROLOG = 14,
			PSINJECT_ENDPROLOG = 15,
			PSINJECT_BEGINSETUP = 16,
			PSINJECT_ENDSETUP = 17,
			PSINJECT_TRAILER = 18,
			PSINJECT_EOF = 19,
			PSINJECT_ENDSTREAM = 20,
			PSINJECT_DOCUMENTPROCESSCOLORSATEND = 21,
			PSINJECT_PAGENUMBER = 100,
			PSINJECT_BEGINPAGESETUP = 101,
			PSINJECT_ENDPAGESETUP = 102,
			PSINJECT_PAGETRAILER = 103,
			PSINJECT_PLATECOLOR = 104,
			PSINJECT_SHOWPAGE = 105,
			PSINJECT_PAGEBBOX = 106,
			PSINJECT_ENDPAGECOMMENTS = 107,
			PSINJECT_VMSAVE = 200,
			PSINJECT_VMRESTORE = 201,
		}
		[AllowDuplicates]
		public enum XPS_TILE_MODE : int32
		{
			XPS_TILE_MODE_NONE = 1,
			XPS_TILE_MODE_TILE = 2,
			XPS_TILE_MODE_FLIPX = 3,
			XPS_TILE_MODE_FLIPY = 4,
			XPS_TILE_MODE_FLIPXY = 5,
		}
		[AllowDuplicates]
		public enum XPS_COLOR_INTERPOLATION : int32
		{
			XPS_COLOR_INTERPOLATION_SCRGBLINEAR = 1,
			XPS_COLOR_INTERPOLATION_SRGBLINEAR = 2,
		}
		[AllowDuplicates]
		public enum XPS_SPREAD_METHOD : int32
		{
			XPS_SPREAD_METHOD_PAD = 1,
			XPS_SPREAD_METHOD_REFLECT = 2,
			XPS_SPREAD_METHOD_REPEAT = 3,
		}
		[AllowDuplicates]
		public enum XPS_STYLE_SIMULATION : int32
		{
			XPS_STYLE_SIMULATION_NONE = 1,
			XPS_STYLE_SIMULATION_ITALIC = 2,
			XPS_STYLE_SIMULATION_BOLD = 3,
			XPS_STYLE_SIMULATION_BOLDITALIC = 4,
		}
		[AllowDuplicates]
		public enum XPS_LINE_CAP : int32
		{
			XPS_LINE_CAP_FLAT = 1,
			XPS_LINE_CAP_ROUND = 2,
			XPS_LINE_CAP_SQUARE = 3,
			XPS_LINE_CAP_TRIANGLE = 4,
		}
		[AllowDuplicates]
		public enum XPS_DASH_CAP : int32
		{
			XPS_DASH_CAP_FLAT = 1,
			XPS_DASH_CAP_ROUND = 2,
			XPS_DASH_CAP_SQUARE = 3,
			XPS_DASH_CAP_TRIANGLE = 4,
		}
		[AllowDuplicates]
		public enum XPS_LINE_JOIN : int32
		{
			XPS_LINE_JOIN_MITER = 1,
			XPS_LINE_JOIN_BEVEL = 2,
			XPS_LINE_JOIN_ROUND = 3,
		}
		[AllowDuplicates]
		public enum XPS_IMAGE_TYPE : int32
		{
			XPS_IMAGE_TYPE_JPEG = 1,
			XPS_IMAGE_TYPE_PNG = 2,
			XPS_IMAGE_TYPE_TIFF = 3,
			XPS_IMAGE_TYPE_WDP = 4,
			XPS_IMAGE_TYPE_JXR = 5,
		}
		[AllowDuplicates]
		public enum XPS_COLOR_TYPE : int32
		{
			XPS_COLOR_TYPE_SRGB = 1,
			XPS_COLOR_TYPE_SCRGB = 2,
			XPS_COLOR_TYPE_CONTEXT = 3,
		}
		[AllowDuplicates]
		public enum XPS_FILL_RULE : int32
		{
			XPS_FILL_RULE_EVENODD = 1,
			XPS_FILL_RULE_NONZERO = 2,
		}
		[AllowDuplicates]
		public enum XPS_SEGMENT_TYPE : int32
		{
			XPS_SEGMENT_TYPE_ARC_LARGE_CLOCKWISE = 1,
			XPS_SEGMENT_TYPE_ARC_LARGE_COUNTERCLOCKWISE = 2,
			XPS_SEGMENT_TYPE_ARC_SMALL_CLOCKWISE = 3,
			XPS_SEGMENT_TYPE_ARC_SMALL_COUNTERCLOCKWISE = 4,
			XPS_SEGMENT_TYPE_BEZIER = 5,
			XPS_SEGMENT_TYPE_LINE = 6,
			XPS_SEGMENT_TYPE_QUADRATIC_BEZIER = 7,
		}
		[AllowDuplicates]
		public enum XPS_SEGMENT_STROKE_PATTERN : int32
		{
			XPS_SEGMENT_STROKE_PATTERN_ALL = 1,
			XPS_SEGMENT_STROKE_PATTERN_NONE = 2,
			XPS_SEGMENT_STROKE_PATTERN_MIXED = 3,
		}
		[AllowDuplicates]
		public enum XPS_FONT_EMBEDDING : int32
		{
			XPS_FONT_EMBEDDING_NORMAL = 1,
			XPS_FONT_EMBEDDING_OBFUSCATED = 2,
			XPS_FONT_EMBEDDING_RESTRICTED = 3,
			XPS_FONT_EMBEDDING_RESTRICTED_UNOBFUSCATED = 4,
		}
		[AllowDuplicates]
		public enum XPS_OBJECT_TYPE : int32
		{
			XPS_OBJECT_TYPE_CANVAS = 1,
			XPS_OBJECT_TYPE_GLYPHS = 2,
			XPS_OBJECT_TYPE_PATH = 3,
			XPS_OBJECT_TYPE_MATRIX_TRANSFORM = 4,
			XPS_OBJECT_TYPE_GEOMETRY = 5,
			XPS_OBJECT_TYPE_SOLID_COLOR_BRUSH = 6,
			XPS_OBJECT_TYPE_IMAGE_BRUSH = 7,
			XPS_OBJECT_TYPE_LINEAR_GRADIENT_BRUSH = 8,
			XPS_OBJECT_TYPE_RADIAL_GRADIENT_BRUSH = 9,
			XPS_OBJECT_TYPE_VISUAL_BRUSH = 10,
		}
		[AllowDuplicates]
		public enum XPS_THUMBNAIL_SIZE : int32
		{
			XPS_THUMBNAIL_SIZE_VERYSMALL = 1,
			XPS_THUMBNAIL_SIZE_SMALL = 2,
			XPS_THUMBNAIL_SIZE_MEDIUM = 3,
			XPS_THUMBNAIL_SIZE_LARGE = 4,
		}
		[AllowDuplicates]
		public enum XPS_INTERLEAVING : int32
		{
			XPS_INTERLEAVING_OFF = 1,
			XPS_INTERLEAVING_ON = 2,
		}
		[AllowDuplicates]
		public enum XPS_DOCUMENT_TYPE : int32
		{
			XPS_DOCUMENT_TYPE_UNSPECIFIED = 1,
			XPS_DOCUMENT_TYPE_XPS = 2,
			XPS_DOCUMENT_TYPE_OPENXPS = 3,
		}
		[AllowDuplicates]
		public enum XPS_SIGNATURE_STATUS : int32
		{
			XPS_SIGNATURE_STATUS_INCOMPLIANT = 1,
			XPS_SIGNATURE_STATUS_INCOMPLETE = 2,
			XPS_SIGNATURE_STATUS_BROKEN = 3,
			XPS_SIGNATURE_STATUS_QUESTIONABLE = 4,
			XPS_SIGNATURE_STATUS_VALID = 5,
		}
		[AllowDuplicates]
		public enum XPS_SIGN_POLICY : int32
		{
			XPS_SIGN_POLICY_NONE = 0,
			XPS_SIGN_POLICY_CORE_PROPERTIES = 1,
			XPS_SIGN_POLICY_SIGNATURE_RELATIONSHIPS = 2,
			XPS_SIGN_POLICY_PRINT_TICKET = 4,
			XPS_SIGN_POLICY_DISCARD_CONTROL = 8,
			XPS_SIGN_POLICY_ALL = 15,
		}
		[AllowDuplicates]
		public enum XPS_SIGN_FLAGS : int32
		{
			XPS_SIGN_FLAGS_NONE = 0,
			XPS_SIGN_FLAGS_IGNORE_MARKUP_COMPATIBILITY = 1,
		}
		
		// --- Function Pointers ---
		
		public function BOOL ABORTPROC(HDC param0, int32 param1);
		
		// --- Structs ---
		
		[CRepr]
		public struct DRAWPATRECT
		{
			public POINT ptPosition;
			public POINT ptSize;
			public uint16 wStyle;
			public uint16 wPattern;
		}
		[CRepr]
		public struct PSINJECTDATA
		{
			public uint32 DataBytes;
			public PSINJECT_POINT InjectionPoint;
			public uint16 PageNumber;
		}
		[CRepr]
		public struct PSFEATURE_OUTPUT
		{
			public BOOL bPageIndependent;
			public BOOL bSetPageDevice;
		}
		[CRepr]
		public struct PSFEATURE_CUSTPAPER
		{
			public int32 lOrientation;
			public int32 lWidth;
			public int32 lHeight;
			public int32 lWidthOffset;
			public int32 lHeightOffset;
		}
		[CRepr]
		public struct DOCINFOA
		{
			public int32 cbSize;
			public PSTR lpszDocName;
			public PSTR lpszOutput;
			public PSTR lpszDatatype;
			public uint32 fwType;
		}
		[CRepr]
		public struct DOCINFOW
		{
			public int32 cbSize;
			public PWSTR lpszDocName;
			public PWSTR lpszOutput;
			public PWSTR lpszDatatype;
			public uint32 fwType;
		}
		[CRepr]
		public struct XPS_POINT
		{
			public float x;
			public float y;
		}
		[CRepr]
		public struct XPS_SIZE
		{
			public float width;
			public float height;
		}
		[CRepr]
		public struct XPS_RECT
		{
			public float x;
			public float y;
			public float width;
			public float height;
		}
		[CRepr]
		public struct XPS_DASH
		{
			public float length;
			public float gap;
		}
		[CRepr]
		public struct XPS_GLYPH_INDEX
		{
			public int32 index;
			public float advanceWidth;
			public float horizontalOffset;
			public float verticalOffset;
		}
		[CRepr]
		public struct XPS_GLYPH_MAPPING
		{
			public uint32 unicodeStringStart;
			public uint16 unicodeStringLength;
			public uint32 glyphIndicesStart;
			public uint16 glyphIndicesLength;
		}
		[CRepr]
		public struct XPS_MATRIX
		{
			public float m11;
			public float m12;
			public float m21;
			public float m22;
			public float m31;
			public float m32;
		}
		[CRepr]
		public struct XPS_COLOR
		{
			public XPS_COLOR_TYPE colorType;
			public XPS_COLOR_VALUE value;
			
			[CRepr, Union]
			public struct XPS_COLOR_VALUE
			{
				public _sRGB_e__Struct sRGB;
				public _scRGB_e__Struct scRGB;
				public _context_e__Struct context;
				
				[CRepr]
				public struct _scRGB_e__Struct
				{
					public float alpha;
					public float red;
					public float green;
					public float blue;
				}
				[CRepr]
				public struct _sRGB_e__Struct
				{
					public uint8 alpha;
					public uint8 red;
					public uint8 green;
					public uint8 blue;
				}
				[CRepr]
				public struct _context_e__Struct
				{
					public uint8 channelCount;
					public float[9] channels;
				}
			}
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_XpsOMObjectFactory = .(0xe974d26d, 0x3d9b, 0x4d47, 0x88, 0xcc, 0x38, 0x72, 0xf2, 0xdc, 0x35, 0x85);
		public const Guid CLSID_XpsOMThumbnailGenerator = .(0x7e4a23e2, 0xb969, 0x4761, 0xbe, 0x35, 0x1a, 0x8c, 0xed, 0x58, 0xe3, 0x23);
		public const Guid CLSID_XpsSignatureManager = .(0xb0c43320, 0x2315, 0x44a2, 0xb7, 0x0a, 0x09, 0x43, 0xa1, 0x40, 0xa8, 0xee);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IXpsOMShareable : IUnknown
		{
			public const new Guid IID = .(0x7137398f, 0x2fc1, 0x454d, 0x8c, 0x6a, 0x2c, 0x31, 0x15, 0xa1, 0x6e, 0xce);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMShareable *self, IUnknown** owner) GetOwner;
				public function HRESULT(IXpsOMShareable *self, XPS_OBJECT_TYPE* type) GetType;
			}
		}
		[CRepr]
		public struct IXpsOMVisual : IXpsOMShareable
		{
			public const new Guid IID = .(0xbc3e7333, 0xfb0b, 0x4af3, 0xa8, 0x19, 0x0b, 0x4e, 0xaa, 0xd0, 0xd2, 0xfd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMShareable.VTable
			{
				public function HRESULT(IXpsOMVisual *self, IXpsOMMatrixTransform** matrixTransform) GetTransform;
				public function HRESULT(IXpsOMVisual *self, IXpsOMMatrixTransform** matrixTransform) GetTransformLocal;
				public function HRESULT(IXpsOMVisual *self, IXpsOMMatrixTransform* matrixTransform) SetTransformLocal;
				public function HRESULT(IXpsOMVisual *self, PWSTR* key) GetTransformLookup;
				public function HRESULT(IXpsOMVisual *self, PWSTR key) SetTransformLookup;
				public function HRESULT(IXpsOMVisual *self, IXpsOMGeometry** clipGeometry) GetClipGeometry;
				public function HRESULT(IXpsOMVisual *self, IXpsOMGeometry** clipGeometry) GetClipGeometryLocal;
				public function HRESULT(IXpsOMVisual *self, IXpsOMGeometry* clipGeometry) SetClipGeometryLocal;
				public function HRESULT(IXpsOMVisual *self, PWSTR* key) GetClipGeometryLookup;
				public function HRESULT(IXpsOMVisual *self, PWSTR key) SetClipGeometryLookup;
				public function HRESULT(IXpsOMVisual *self, float* opacity) GetOpacity;
				public function HRESULT(IXpsOMVisual *self, float opacity) SetOpacity;
				public function HRESULT(IXpsOMVisual *self, IXpsOMBrush** opacityMaskBrush) GetOpacityMaskBrush;
				public function HRESULT(IXpsOMVisual *self, IXpsOMBrush** opacityMaskBrush) GetOpacityMaskBrushLocal;
				public function HRESULT(IXpsOMVisual *self, IXpsOMBrush* opacityMaskBrush) SetOpacityMaskBrushLocal;
				public function HRESULT(IXpsOMVisual *self, PWSTR* key) GetOpacityMaskBrushLookup;
				public function HRESULT(IXpsOMVisual *self, PWSTR key) SetOpacityMaskBrushLookup;
				public function HRESULT(IXpsOMVisual *self, PWSTR* name) GetName;
				public function HRESULT(IXpsOMVisual *self, PWSTR name) SetName;
				public function HRESULT(IXpsOMVisual *self, BOOL* isHyperlink) GetIsHyperlinkTarget;
				public function HRESULT(IXpsOMVisual *self, BOOL isHyperlink) SetIsHyperlinkTarget;
				public function HRESULT(IXpsOMVisual *self, IUri** hyperlinkUri) GetHyperlinkNavigateUri;
				public function HRESULT(IXpsOMVisual *self, IUri* hyperlinkUri) SetHyperlinkNavigateUri;
				public function HRESULT(IXpsOMVisual *self, PWSTR* language) GetLanguage;
				public function HRESULT(IXpsOMVisual *self, PWSTR language) SetLanguage;
			}
		}
		[CRepr]
		public struct IXpsOMPart : IUnknown
		{
			public const new Guid IID = .(0x74eb2f0b, 0xa91e, 0x4486, 0xaf, 0xac, 0x0f, 0xab, 0xec, 0xa3, 0xdf, 0xc6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMPart *self, IOpcPartUri** partUri) GetPartName;
				public function HRESULT(IXpsOMPart *self, IOpcPartUri* partUri) SetPartName;
			}
		}
		[CRepr]
		public struct IXpsOMGlyphsEditor : IUnknown
		{
			public const new Guid IID = .(0xa5ab8616, 0x5b16, 0x4b9f, 0x96, 0x29, 0x89, 0xb3, 0x23, 0xed, 0x79, 0x09);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMGlyphsEditor *self) ApplyEdits;
				public function HRESULT(IXpsOMGlyphsEditor *self, PWSTR* unicodeString) GetUnicodeString;
				public function HRESULT(IXpsOMGlyphsEditor *self, PWSTR unicodeString) SetUnicodeString;
				public function HRESULT(IXpsOMGlyphsEditor *self, uint32* indexCount) GetGlyphIndexCount;
				public function HRESULT(IXpsOMGlyphsEditor *self, uint32* indexCount, XPS_GLYPH_INDEX* glyphIndices) GetGlyphIndices;
				public function HRESULT(IXpsOMGlyphsEditor *self, uint32 indexCount, XPS_GLYPH_INDEX* glyphIndices) SetGlyphIndices;
				public function HRESULT(IXpsOMGlyphsEditor *self, uint32* glyphMappingCount) GetGlyphMappingCount;
				public function HRESULT(IXpsOMGlyphsEditor *self, uint32* glyphMappingCount, XPS_GLYPH_MAPPING* glyphMappings) GetGlyphMappings;
				public function HRESULT(IXpsOMGlyphsEditor *self, uint32 glyphMappingCount, XPS_GLYPH_MAPPING* glyphMappings) SetGlyphMappings;
				public function HRESULT(IXpsOMGlyphsEditor *self, uint32* prohibitedCaretStopCount) GetProhibitedCaretStopCount;
				public function HRESULT(IXpsOMGlyphsEditor *self, uint32* count, uint32* prohibitedCaretStops) GetProhibitedCaretStops;
				public function HRESULT(IXpsOMGlyphsEditor *self, uint32 count, uint32* prohibitedCaretStops) SetProhibitedCaretStops;
				public function HRESULT(IXpsOMGlyphsEditor *self, uint32* bidiLevel) GetBidiLevel;
				public function HRESULT(IXpsOMGlyphsEditor *self, uint32 bidiLevel) SetBidiLevel;
				public function HRESULT(IXpsOMGlyphsEditor *self, BOOL* isSideways) GetIsSideways;
				public function HRESULT(IXpsOMGlyphsEditor *self, BOOL isSideways) SetIsSideways;
				public function HRESULT(IXpsOMGlyphsEditor *self, PWSTR* deviceFontName) GetDeviceFontName;
				public function HRESULT(IXpsOMGlyphsEditor *self, PWSTR deviceFontName) SetDeviceFontName;
			}
		}
		[CRepr]
		public struct IXpsOMGlyphs : IXpsOMVisual
		{
			public const new Guid IID = .(0x819b3199, 0x0a5a, 0x4b64, 0xbe, 0xc7, 0xa9, 0xe1, 0x7e, 0x78, 0x0d, 0xe2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMVisual.VTable
			{
				public function HRESULT(IXpsOMGlyphs *self, PWSTR* unicodeString) GetUnicodeString;
				public function HRESULT(IXpsOMGlyphs *self, uint32* indexCount) GetGlyphIndexCount;
				public function HRESULT(IXpsOMGlyphs *self, uint32* indexCount, XPS_GLYPH_INDEX* glyphIndices) GetGlyphIndices;
				public function HRESULT(IXpsOMGlyphs *self, uint32* glyphMappingCount) GetGlyphMappingCount;
				public function HRESULT(IXpsOMGlyphs *self, uint32* glyphMappingCount, XPS_GLYPH_MAPPING* glyphMappings) GetGlyphMappings;
				public function HRESULT(IXpsOMGlyphs *self, uint32* prohibitedCaretStopCount) GetProhibitedCaretStopCount;
				public function HRESULT(IXpsOMGlyphs *self, uint32* prohibitedCaretStopCount, uint32* prohibitedCaretStops) GetProhibitedCaretStops;
				public function HRESULT(IXpsOMGlyphs *self, uint32* bidiLevel) GetBidiLevel;
				public function HRESULT(IXpsOMGlyphs *self, BOOL* isSideways) GetIsSideways;
				public function HRESULT(IXpsOMGlyphs *self, PWSTR* deviceFontName) GetDeviceFontName;
				public function HRESULT(IXpsOMGlyphs *self, XPS_STYLE_SIMULATION* styleSimulations) GetStyleSimulations;
				public function HRESULT(IXpsOMGlyphs *self, XPS_STYLE_SIMULATION styleSimulations) SetStyleSimulations;
				public function HRESULT(IXpsOMGlyphs *self, XPS_POINT* origin) GetOrigin;
				public function HRESULT(IXpsOMGlyphs *self, XPS_POINT* origin) SetOrigin;
				public function HRESULT(IXpsOMGlyphs *self, float* fontRenderingEmSize) GetFontRenderingEmSize;
				public function HRESULT(IXpsOMGlyphs *self, float fontRenderingEmSize) SetFontRenderingEmSize;
				public function HRESULT(IXpsOMGlyphs *self, IXpsOMFontResource** fontResource) GetFontResource;
				public function HRESULT(IXpsOMGlyphs *self, IXpsOMFontResource* fontResource) SetFontResource;
				public function HRESULT(IXpsOMGlyphs *self, int16* fontFaceIndex) GetFontFaceIndex;
				public function HRESULT(IXpsOMGlyphs *self, int16 fontFaceIndex) SetFontFaceIndex;
				public function HRESULT(IXpsOMGlyphs *self, IXpsOMBrush** fillBrush) GetFillBrush;
				public function HRESULT(IXpsOMGlyphs *self, IXpsOMBrush** fillBrush) GetFillBrushLocal;
				public function HRESULT(IXpsOMGlyphs *self, IXpsOMBrush* fillBrush) SetFillBrushLocal;
				public function HRESULT(IXpsOMGlyphs *self, PWSTR* key) GetFillBrushLookup;
				public function HRESULT(IXpsOMGlyphs *self, PWSTR key) SetFillBrushLookup;
				public function HRESULT(IXpsOMGlyphs *self, IXpsOMGlyphsEditor** editor) GetGlyphsEditor;
				public function HRESULT(IXpsOMGlyphs *self, IXpsOMGlyphs** glyphs) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMDashCollection : IUnknown
		{
			public const new Guid IID = .(0x081613f4, 0x74eb, 0x48f2, 0x83, 0xb3, 0x37, 0xa9, 0xce, 0x2d, 0x7d, 0xc6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMDashCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMDashCollection *self, uint32 index, XPS_DASH* dash) GetAt;
				public function HRESULT(IXpsOMDashCollection *self, uint32 index, XPS_DASH* dash) InsertAt;
				public function HRESULT(IXpsOMDashCollection *self, uint32 index) RemoveAt;
				public function HRESULT(IXpsOMDashCollection *self, uint32 index, XPS_DASH* dash) SetAt;
				public function HRESULT(IXpsOMDashCollection *self, XPS_DASH* dash) Append;
			}
		}
		[CRepr]
		public struct IXpsOMMatrixTransform : IXpsOMShareable
		{
			public const new Guid IID = .(0xb77330ff, 0xbb37, 0x4501, 0xa9, 0x3e, 0xf1, 0xb1, 0xe5, 0x0b, 0xfc, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMShareable.VTable
			{
				public function HRESULT(IXpsOMMatrixTransform *self, XPS_MATRIX* matrix) GetMatrix;
				public function HRESULT(IXpsOMMatrixTransform *self, XPS_MATRIX* matrix) SetMatrix;
				public function HRESULT(IXpsOMMatrixTransform *self, IXpsOMMatrixTransform** matrixTransform) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGeometry : IXpsOMShareable
		{
			public const new Guid IID = .(0x64fcf3d7, 0x4d58, 0x44ba, 0xad, 0x73, 0xa1, 0x3a, 0xf6, 0x49, 0x20, 0x72);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMShareable.VTable
			{
				public function HRESULT(IXpsOMGeometry *self, IXpsOMGeometryFigureCollection** figures) GetFigures;
				public function HRESULT(IXpsOMGeometry *self, XPS_FILL_RULE* fillRule) GetFillRule;
				public function HRESULT(IXpsOMGeometry *self, XPS_FILL_RULE fillRule) SetFillRule;
				public function HRESULT(IXpsOMGeometry *self, IXpsOMMatrixTransform** transform) GetTransform;
				public function HRESULT(IXpsOMGeometry *self, IXpsOMMatrixTransform** transform) GetTransformLocal;
				public function HRESULT(IXpsOMGeometry *self, IXpsOMMatrixTransform* transform) SetTransformLocal;
				public function HRESULT(IXpsOMGeometry *self, PWSTR* lookup) GetTransformLookup;
				public function HRESULT(IXpsOMGeometry *self, PWSTR lookup) SetTransformLookup;
				public function HRESULT(IXpsOMGeometry *self, IXpsOMGeometry** geometry) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGeometryFigure : IUnknown
		{
			public const new Guid IID = .(0xd410dc83, 0x908c, 0x443e, 0x89, 0x47, 0xb1, 0x79, 0x5d, 0x3c, 0x16, 0x5a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMGeometryFigure *self, IXpsOMGeometry** owner) GetOwner;
				public function HRESULT(IXpsOMGeometryFigure *self, uint32* dataCount, float* segmentData) GetSegmentData;
				public function HRESULT(IXpsOMGeometryFigure *self, uint32* segmentCount, XPS_SEGMENT_TYPE* segmentTypes) GetSegmentTypes;
				public function HRESULT(IXpsOMGeometryFigure *self, uint32* segmentCount, BOOL* segmentStrokes) GetSegmentStrokes;
				public function HRESULT(IXpsOMGeometryFigure *self, uint32 segmentCount, uint32 segmentDataCount, XPS_SEGMENT_TYPE* segmentTypes, float* segmentData, BOOL* segmentStrokes) SetSegments;
				public function HRESULT(IXpsOMGeometryFigure *self, XPS_POINT* startPoint) GetStartPoint;
				public function HRESULT(IXpsOMGeometryFigure *self, XPS_POINT* startPoint) SetStartPoint;
				public function HRESULT(IXpsOMGeometryFigure *self, BOOL* isClosed) GetIsClosed;
				public function HRESULT(IXpsOMGeometryFigure *self, BOOL isClosed) SetIsClosed;
				public function HRESULT(IXpsOMGeometryFigure *self, BOOL* isFilled) GetIsFilled;
				public function HRESULT(IXpsOMGeometryFigure *self, BOOL isFilled) SetIsFilled;
				public function HRESULT(IXpsOMGeometryFigure *self, uint32* segmentCount) GetSegmentCount;
				public function HRESULT(IXpsOMGeometryFigure *self, uint32* segmentDataCount) GetSegmentDataCount;
				public function HRESULT(IXpsOMGeometryFigure *self, XPS_SEGMENT_STROKE_PATTERN* segmentStrokePattern) GetSegmentStrokePattern;
				public function HRESULT(IXpsOMGeometryFigure *self, IXpsOMGeometryFigure** geometryFigure) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGeometryFigureCollection : IUnknown
		{
			public const new Guid IID = .(0xfd48c3f3, 0xa58e, 0x4b5a, 0x88, 0x26, 0x1d, 0xe5, 0x4a, 0xbe, 0x72, 0xb2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMGeometryFigureCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMGeometryFigureCollection *self, uint32 index, IXpsOMGeometryFigure** geometryFigure) GetAt;
				public function HRESULT(IXpsOMGeometryFigureCollection *self, uint32 index, IXpsOMGeometryFigure* geometryFigure) InsertAt;
				public function HRESULT(IXpsOMGeometryFigureCollection *self, uint32 index) RemoveAt;
				public function HRESULT(IXpsOMGeometryFigureCollection *self, uint32 index, IXpsOMGeometryFigure* geometryFigure) SetAt;
				public function HRESULT(IXpsOMGeometryFigureCollection *self, IXpsOMGeometryFigure* geometryFigure) Append;
			}
		}
		[CRepr]
		public struct IXpsOMPath : IXpsOMVisual
		{
			public const new Guid IID = .(0x37d38bb6, 0x3ee9, 0x4110, 0x93, 0x12, 0x14, 0xb1, 0x94, 0x16, 0x33, 0x37);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMVisual.VTable
			{
				public function HRESULT(IXpsOMPath *self, IXpsOMGeometry** geometry) GetGeometry;
				public function HRESULT(IXpsOMPath *self, IXpsOMGeometry** geometry) GetGeometryLocal;
				public function HRESULT(IXpsOMPath *self, IXpsOMGeometry* geometry) SetGeometryLocal;
				public function HRESULT(IXpsOMPath *self, PWSTR* lookup) GetGeometryLookup;
				public function HRESULT(IXpsOMPath *self, PWSTR lookup) SetGeometryLookup;
				public function HRESULT(IXpsOMPath *self, PWSTR* shortDescription) GetAccessibilityShortDescription;
				public function HRESULT(IXpsOMPath *self, PWSTR shortDescription) SetAccessibilityShortDescription;
				public function HRESULT(IXpsOMPath *self, PWSTR* longDescription) GetAccessibilityLongDescription;
				public function HRESULT(IXpsOMPath *self, PWSTR longDescription) SetAccessibilityLongDescription;
				public function HRESULT(IXpsOMPath *self, BOOL* snapsToPixels) GetSnapsToPixels;
				public function HRESULT(IXpsOMPath *self, BOOL snapsToPixels) SetSnapsToPixels;
				public function HRESULT(IXpsOMPath *self, IXpsOMBrush** brush) GetStrokeBrush;
				public function HRESULT(IXpsOMPath *self, IXpsOMBrush** brush) GetStrokeBrushLocal;
				public function HRESULT(IXpsOMPath *self, IXpsOMBrush* brush) SetStrokeBrushLocal;
				public function HRESULT(IXpsOMPath *self, PWSTR* lookup) GetStrokeBrushLookup;
				public function HRESULT(IXpsOMPath *self, PWSTR lookup) SetStrokeBrushLookup;
				public function HRESULT(IXpsOMPath *self, IXpsOMDashCollection** strokeDashes) GetStrokeDashes;
				public function HRESULT(IXpsOMPath *self, XPS_DASH_CAP* strokeDashCap) GetStrokeDashCap;
				public function HRESULT(IXpsOMPath *self, XPS_DASH_CAP strokeDashCap) SetStrokeDashCap;
				public function HRESULT(IXpsOMPath *self, float* strokeDashOffset) GetStrokeDashOffset;
				public function HRESULT(IXpsOMPath *self, float strokeDashOffset) SetStrokeDashOffset;
				public function HRESULT(IXpsOMPath *self, XPS_LINE_CAP* strokeStartLineCap) GetStrokeStartLineCap;
				public function HRESULT(IXpsOMPath *self, XPS_LINE_CAP strokeStartLineCap) SetStrokeStartLineCap;
				public function HRESULT(IXpsOMPath *self, XPS_LINE_CAP* strokeEndLineCap) GetStrokeEndLineCap;
				public function HRESULT(IXpsOMPath *self, XPS_LINE_CAP strokeEndLineCap) SetStrokeEndLineCap;
				public function HRESULT(IXpsOMPath *self, XPS_LINE_JOIN* strokeLineJoin) GetStrokeLineJoin;
				public function HRESULT(IXpsOMPath *self, XPS_LINE_JOIN strokeLineJoin) SetStrokeLineJoin;
				public function HRESULT(IXpsOMPath *self, float* strokeMiterLimit) GetStrokeMiterLimit;
				public function HRESULT(IXpsOMPath *self, float strokeMiterLimit) SetStrokeMiterLimit;
				public function HRESULT(IXpsOMPath *self, float* strokeThickness) GetStrokeThickness;
				public function HRESULT(IXpsOMPath *self, float strokeThickness) SetStrokeThickness;
				public function HRESULT(IXpsOMPath *self, IXpsOMBrush** brush) GetFillBrush;
				public function HRESULT(IXpsOMPath *self, IXpsOMBrush** brush) GetFillBrushLocal;
				public function HRESULT(IXpsOMPath *self, IXpsOMBrush* brush) SetFillBrushLocal;
				public function HRESULT(IXpsOMPath *self, PWSTR* lookup) GetFillBrushLookup;
				public function HRESULT(IXpsOMPath *self, PWSTR lookup) SetFillBrushLookup;
				public function HRESULT(IXpsOMPath *self, IXpsOMPath** path) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMBrush : IXpsOMShareable
		{
			public const new Guid IID = .(0x56a3f80c, 0xea4c, 0x4187, 0xa5, 0x7b, 0xa2, 0xa4, 0x73, 0xb2, 0xb4, 0x2b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMShareable.VTable
			{
				public function HRESULT(IXpsOMBrush *self, float* opacity) GetOpacity;
				public function HRESULT(IXpsOMBrush *self, float opacity) SetOpacity;
			}
		}
		[CRepr]
		public struct IXpsOMGradientStopCollection : IUnknown
		{
			public const new Guid IID = .(0xc9174c3a, 0x3cd3, 0x4319, 0xbd, 0xa4, 0x11, 0xa3, 0x93, 0x92, 0xce, 0xef);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMGradientStopCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMGradientStopCollection *self, uint32 index, IXpsOMGradientStop** stop) GetAt;
				public function HRESULT(IXpsOMGradientStopCollection *self, uint32 index, IXpsOMGradientStop* stop) InsertAt;
				public function HRESULT(IXpsOMGradientStopCollection *self, uint32 index) RemoveAt;
				public function HRESULT(IXpsOMGradientStopCollection *self, uint32 index, IXpsOMGradientStop* stop) SetAt;
				public function HRESULT(IXpsOMGradientStopCollection *self, IXpsOMGradientStop* stop) Append;
			}
		}
		[CRepr]
		public struct IXpsOMSolidColorBrush : IXpsOMBrush
		{
			public const new Guid IID = .(0xa06f9f05, 0x3be9, 0x4763, 0x98, 0xa8, 0x09, 0x4f, 0xc6, 0x72, 0xe4, 0x88);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMBrush.VTable
			{
				public function HRESULT(IXpsOMSolidColorBrush *self, XPS_COLOR* color, IXpsOMColorProfileResource** colorProfile) GetColor;
				public function HRESULT(IXpsOMSolidColorBrush *self, XPS_COLOR* color, IXpsOMColorProfileResource* colorProfile) SetColor;
				public function HRESULT(IXpsOMSolidColorBrush *self, IXpsOMSolidColorBrush** solidColorBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMTileBrush : IXpsOMBrush
		{
			public const new Guid IID = .(0x0fc2328d, 0xd722, 0x4a54, 0xb2, 0xec, 0xbe, 0x90, 0x21, 0x8a, 0x78, 0x9e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMBrush.VTable
			{
				public function HRESULT(IXpsOMTileBrush *self, IXpsOMMatrixTransform** transform) GetTransform;
				public function HRESULT(IXpsOMTileBrush *self, IXpsOMMatrixTransform** transform) GetTransformLocal;
				public function HRESULT(IXpsOMTileBrush *self, IXpsOMMatrixTransform* transform) SetTransformLocal;
				public function HRESULT(IXpsOMTileBrush *self, PWSTR* key) GetTransformLookup;
				public function HRESULT(IXpsOMTileBrush *self, PWSTR key) SetTransformLookup;
				public function HRESULT(IXpsOMTileBrush *self, XPS_RECT* viewbox) GetViewbox;
				public function HRESULT(IXpsOMTileBrush *self, XPS_RECT* viewbox) SetViewbox;
				public function HRESULT(IXpsOMTileBrush *self, XPS_RECT* viewport) GetViewport;
				public function HRESULT(IXpsOMTileBrush *self, XPS_RECT* viewport) SetViewport;
				public function HRESULT(IXpsOMTileBrush *self, XPS_TILE_MODE* tileMode) GetTileMode;
				public function HRESULT(IXpsOMTileBrush *self, XPS_TILE_MODE tileMode) SetTileMode;
			}
		}
		[CRepr]
		public struct IXpsOMVisualBrush : IXpsOMTileBrush
		{
			public const new Guid IID = .(0x97e294af, 0x5b37, 0x46b4, 0x80, 0x57, 0x87, 0x4d, 0x2f, 0x64, 0x11, 0x9b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMTileBrush.VTable
			{
				public function HRESULT(IXpsOMVisualBrush *self, IXpsOMVisual** visual) GetVisual;
				public function HRESULT(IXpsOMVisualBrush *self, IXpsOMVisual** visual) GetVisualLocal;
				public function HRESULT(IXpsOMVisualBrush *self, IXpsOMVisual* visual) SetVisualLocal;
				public function HRESULT(IXpsOMVisualBrush *self, PWSTR* lookup) GetVisualLookup;
				public function HRESULT(IXpsOMVisualBrush *self, PWSTR lookup) SetVisualLookup;
				public function HRESULT(IXpsOMVisualBrush *self, IXpsOMVisualBrush** visualBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMImageBrush : IXpsOMTileBrush
		{
			public const new Guid IID = .(0x3df0b466, 0xd382, 0x49ef, 0x85, 0x50, 0xdd, 0x94, 0xc8, 0x02, 0x42, 0xe4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMTileBrush.VTable
			{
				public function HRESULT(IXpsOMImageBrush *self, IXpsOMImageResource** imageResource) GetImageResource;
				public function HRESULT(IXpsOMImageBrush *self, IXpsOMImageResource* imageResource) SetImageResource;
				public function HRESULT(IXpsOMImageBrush *self, IXpsOMColorProfileResource** colorProfileResource) GetColorProfileResource;
				public function HRESULT(IXpsOMImageBrush *self, IXpsOMColorProfileResource* colorProfileResource) SetColorProfileResource;
				public function HRESULT(IXpsOMImageBrush *self, IXpsOMImageBrush** imageBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGradientStop : IUnknown
		{
			public const new Guid IID = .(0x5cf4f5cc, 0x3969, 0x49b5, 0xa7, 0x0a, 0x55, 0x50, 0xb6, 0x18, 0xfe, 0x49);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMGradientStop *self, IXpsOMGradientBrush** owner) GetOwner;
				public function HRESULT(IXpsOMGradientStop *self, float* offset) GetOffset;
				public function HRESULT(IXpsOMGradientStop *self, float offset) SetOffset;
				public function HRESULT(IXpsOMGradientStop *self, XPS_COLOR* color, IXpsOMColorProfileResource** colorProfile) GetColor;
				public function HRESULT(IXpsOMGradientStop *self, XPS_COLOR* color, IXpsOMColorProfileResource* colorProfile) SetColor;
				public function HRESULT(IXpsOMGradientStop *self, IXpsOMGradientStop** gradientStop) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGradientBrush : IXpsOMBrush
		{
			public const new Guid IID = .(0xedb59622, 0x61a2, 0x42c3, 0xba, 0xce, 0xac, 0xf2, 0x28, 0x6c, 0x06, 0xbf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMBrush.VTable
			{
				public function HRESULT(IXpsOMGradientBrush *self, IXpsOMGradientStopCollection** gradientStops) GetGradientStops;
				public function HRESULT(IXpsOMGradientBrush *self, IXpsOMMatrixTransform** transform) GetTransform;
				public function HRESULT(IXpsOMGradientBrush *self, IXpsOMMatrixTransform** transform) GetTransformLocal;
				public function HRESULT(IXpsOMGradientBrush *self, IXpsOMMatrixTransform* transform) SetTransformLocal;
				public function HRESULT(IXpsOMGradientBrush *self, PWSTR* key) GetTransformLookup;
				public function HRESULT(IXpsOMGradientBrush *self, PWSTR key) SetTransformLookup;
				public function HRESULT(IXpsOMGradientBrush *self, XPS_SPREAD_METHOD* spreadMethod) GetSpreadMethod;
				public function HRESULT(IXpsOMGradientBrush *self, XPS_SPREAD_METHOD spreadMethod) SetSpreadMethod;
				public function HRESULT(IXpsOMGradientBrush *self, XPS_COLOR_INTERPOLATION* colorInterpolationMode) GetColorInterpolationMode;
				public function HRESULT(IXpsOMGradientBrush *self, XPS_COLOR_INTERPOLATION colorInterpolationMode) SetColorInterpolationMode;
			}
		}
		[CRepr]
		public struct IXpsOMLinearGradientBrush : IXpsOMGradientBrush
		{
			public const new Guid IID = .(0x005e279f, 0xc30d, 0x40ff, 0x93, 0xec, 0x19, 0x50, 0xd3, 0xc5, 0x28, 0xdb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMGradientBrush.VTable
			{
				public function HRESULT(IXpsOMLinearGradientBrush *self, XPS_POINT* startPoint) GetStartPoint;
				public function HRESULT(IXpsOMLinearGradientBrush *self, XPS_POINT* startPoint) SetStartPoint;
				public function HRESULT(IXpsOMLinearGradientBrush *self, XPS_POINT* endPoint) GetEndPoint;
				public function HRESULT(IXpsOMLinearGradientBrush *self, XPS_POINT* endPoint) SetEndPoint;
				public function HRESULT(IXpsOMLinearGradientBrush *self, IXpsOMLinearGradientBrush** linearGradientBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMRadialGradientBrush : IXpsOMGradientBrush
		{
			public const new Guid IID = .(0x75f207e5, 0x08bf, 0x413c, 0x96, 0xb1, 0xb8, 0x2b, 0x40, 0x64, 0x17, 0x6b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMGradientBrush.VTable
			{
				public function HRESULT(IXpsOMRadialGradientBrush *self, XPS_POINT* center) GetCenter;
				public function HRESULT(IXpsOMRadialGradientBrush *self, XPS_POINT* center) SetCenter;
				public function HRESULT(IXpsOMRadialGradientBrush *self, XPS_SIZE* radiiSizes) GetRadiiSizes;
				public function HRESULT(IXpsOMRadialGradientBrush *self, XPS_SIZE* radiiSizes) SetRadiiSizes;
				public function HRESULT(IXpsOMRadialGradientBrush *self, XPS_POINT* origin) GetGradientOrigin;
				public function HRESULT(IXpsOMRadialGradientBrush *self, XPS_POINT* origin) SetGradientOrigin;
				public function HRESULT(IXpsOMRadialGradientBrush *self, IXpsOMRadialGradientBrush** radialGradientBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMResource : IXpsOMPart
		{
			public const new Guid IID = .(0xda2ac0a2, 0x73a2, 0x4975, 0xad, 0x14, 0x74, 0x09, 0x7c, 0x3f, 0xf3, 0xa5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
			}
		}
		[CRepr]
		public struct IXpsOMPartResources : IUnknown
		{
			public const new Guid IID = .(0xf4cf7729, 0x4864, 0x4275, 0x99, 0xb3, 0xa8, 0x71, 0x71, 0x63, 0xec, 0xaf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMPartResources *self, IXpsOMFontResourceCollection** fontResources) GetFontResources;
				public function HRESULT(IXpsOMPartResources *self, IXpsOMImageResourceCollection** imageResources) GetImageResources;
				public function HRESULT(IXpsOMPartResources *self, IXpsOMColorProfileResourceCollection** colorProfileResources) GetColorProfileResources;
				public function HRESULT(IXpsOMPartResources *self, IXpsOMRemoteDictionaryResourceCollection** dictionaryResources) GetRemoteDictionaryResources;
			}
		}
		[CRepr]
		public struct IXpsOMDictionary : IUnknown
		{
			public const new Guid IID = .(0x897c86b8, 0x8eaf, 0x4ae3, 0xbd, 0xde, 0x56, 0x41, 0x9f, 0xcf, 0x42, 0x36);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMDictionary *self, IUnknown** owner) GetOwner;
				public function HRESULT(IXpsOMDictionary *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMDictionary *self, uint32 index, PWSTR* key, IXpsOMShareable** entry) GetAt;
				public function HRESULT(IXpsOMDictionary *self, PWSTR key, IXpsOMShareable* beforeEntry, IXpsOMShareable** entry) GetByKey;
				public function HRESULT(IXpsOMDictionary *self, IXpsOMShareable* entry, uint32* index) GetIndex;
				public function HRESULT(IXpsOMDictionary *self, PWSTR key, IXpsOMShareable* entry) Append;
				public function HRESULT(IXpsOMDictionary *self, uint32 index, PWSTR key, IXpsOMShareable* entry) InsertAt;
				public function HRESULT(IXpsOMDictionary *self, uint32 index) RemoveAt;
				public function HRESULT(IXpsOMDictionary *self, uint32 index, PWSTR key, IXpsOMShareable* entry) SetAt;
				public function HRESULT(IXpsOMDictionary *self, IXpsOMDictionary** dictionary) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMFontResource : IXpsOMResource
		{
			public const new Guid IID = .(0xa8c45708, 0x47d9, 0x4af4, 0x8d, 0x20, 0x33, 0xb4, 0x8c, 0x9b, 0x84, 0x85);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public function HRESULT(IXpsOMFontResource *self, IStream** readerStream) GetStream;
				public function HRESULT(IXpsOMFontResource *self, IStream* sourceStream, XPS_FONT_EMBEDDING embeddingOption, IOpcPartUri* partName) SetContent;
				public function HRESULT(IXpsOMFontResource *self, XPS_FONT_EMBEDDING* embeddingOption) GetEmbeddingOption;
			}
		}
		[CRepr]
		public struct IXpsOMFontResourceCollection : IUnknown
		{
			public const new Guid IID = .(0x70b4a6bb, 0x88d4, 0x4fa8, 0xaa, 0xf9, 0x6d, 0x9c, 0x59, 0x6f, 0xdb, 0xad);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMFontResourceCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMFontResourceCollection *self, uint32 index, IXpsOMFontResource** value) GetAt;
				public function HRESULT(IXpsOMFontResourceCollection *self, uint32 index, IXpsOMFontResource* value) SetAt;
				public function HRESULT(IXpsOMFontResourceCollection *self, uint32 index, IXpsOMFontResource* value) InsertAt;
				public function HRESULT(IXpsOMFontResourceCollection *self, IXpsOMFontResource* value) Append;
				public function HRESULT(IXpsOMFontResourceCollection *self, uint32 index) RemoveAt;
				public function HRESULT(IXpsOMFontResourceCollection *self, IOpcPartUri* partName, IXpsOMFontResource** part) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMImageResource : IXpsOMResource
		{
			public const new Guid IID = .(0x3db8417d, 0xae50, 0x485e, 0x9a, 0x44, 0xd7, 0x75, 0x8f, 0x78, 0xa2, 0x3f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public function HRESULT(IXpsOMImageResource *self, IStream** readerStream) GetStream;
				public function HRESULT(IXpsOMImageResource *self, IStream* sourceStream, XPS_IMAGE_TYPE imageType, IOpcPartUri* partName) SetContent;
				public function HRESULT(IXpsOMImageResource *self, XPS_IMAGE_TYPE* imageType) GetImageType;
			}
		}
		[CRepr]
		public struct IXpsOMImageResourceCollection : IUnknown
		{
			public const new Guid IID = .(0x7a4a1a71, 0x9cde, 0x4b71, 0xb3, 0x3f, 0x62, 0xde, 0x84, 0x3e, 0xab, 0xfe);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMImageResourceCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMImageResourceCollection *self, uint32 index, IXpsOMImageResource** object) GetAt;
				public function HRESULT(IXpsOMImageResourceCollection *self, uint32 index, IXpsOMImageResource* object) InsertAt;
				public function HRESULT(IXpsOMImageResourceCollection *self, uint32 index) RemoveAt;
				public function HRESULT(IXpsOMImageResourceCollection *self, uint32 index, IXpsOMImageResource* object) SetAt;
				public function HRESULT(IXpsOMImageResourceCollection *self, IXpsOMImageResource* object) Append;
				public function HRESULT(IXpsOMImageResourceCollection *self, IOpcPartUri* partName, IXpsOMImageResource** part) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMColorProfileResource : IXpsOMResource
		{
			public const new Guid IID = .(0x67bd7d69, 0x1eef, 0x4bb1, 0xb5, 0xe7, 0x6f, 0x4f, 0x87, 0xbe, 0x8a, 0xbe);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public function HRESULT(IXpsOMColorProfileResource *self, IStream** stream) GetStream;
				public function HRESULT(IXpsOMColorProfileResource *self, IStream* sourceStream, IOpcPartUri* partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMColorProfileResourceCollection : IUnknown
		{
			public const new Guid IID = .(0x12759630, 0x5fba, 0x4283, 0x8f, 0x7d, 0xcc, 0xa8, 0x49, 0x80, 0x9e, 0xdb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMColorProfileResourceCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMColorProfileResourceCollection *self, uint32 index, IXpsOMColorProfileResource** object) GetAt;
				public function HRESULT(IXpsOMColorProfileResourceCollection *self, uint32 index, IXpsOMColorProfileResource* object) InsertAt;
				public function HRESULT(IXpsOMColorProfileResourceCollection *self, uint32 index) RemoveAt;
				public function HRESULT(IXpsOMColorProfileResourceCollection *self, uint32 index, IXpsOMColorProfileResource* object) SetAt;
				public function HRESULT(IXpsOMColorProfileResourceCollection *self, IXpsOMColorProfileResource* object) Append;
				public function HRESULT(IXpsOMColorProfileResourceCollection *self, IOpcPartUri* partName, IXpsOMColorProfileResource** part) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMPrintTicketResource : IXpsOMResource
		{
			public const new Guid IID = .(0xe7ff32d2, 0x34aa, 0x499b, 0xbb, 0xe9, 0x9c, 0xd4, 0xee, 0x6c, 0x59, 0xf7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public function HRESULT(IXpsOMPrintTicketResource *self, IStream** stream) GetStream;
				public function HRESULT(IXpsOMPrintTicketResource *self, IStream* sourceStream, IOpcPartUri* partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMRemoteDictionaryResource : IXpsOMResource
		{
			public const new Guid IID = .(0xc9bd7cd4, 0xe16a, 0x4bf8, 0x8c, 0x84, 0xc9, 0x50, 0xaf, 0x7a, 0x30, 0x61);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public function HRESULT(IXpsOMRemoteDictionaryResource *self, IXpsOMDictionary** dictionary) GetDictionary;
				public function HRESULT(IXpsOMRemoteDictionaryResource *self, IXpsOMDictionary* dictionary) SetDictionary;
			}
		}
		[CRepr]
		public struct IXpsOMRemoteDictionaryResourceCollection : IUnknown
		{
			public const new Guid IID = .(0x5c38db61, 0x7fec, 0x464a, 0x87, 0xbd, 0x41, 0xe3, 0xbe, 0xf0, 0x18, 0xbe);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, uint32 index, IXpsOMRemoteDictionaryResource** object) GetAt;
				public function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, uint32 index, IXpsOMRemoteDictionaryResource* object) InsertAt;
				public function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, uint32 index) RemoveAt;
				public function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, uint32 index, IXpsOMRemoteDictionaryResource* object) SetAt;
				public function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, IXpsOMRemoteDictionaryResource* object) Append;
				public function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, IOpcPartUri* partName, IXpsOMRemoteDictionaryResource** remoteDictionaryResource) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMSignatureBlockResourceCollection : IUnknown
		{
			public const new Guid IID = .(0xab8f5d8e, 0x351b, 0x4d33, 0xaa, 0xed, 0xfa, 0x56, 0xf0, 0x02, 0x29, 0x31);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMSignatureBlockResourceCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMSignatureBlockResourceCollection *self, uint32 index, IXpsOMSignatureBlockResource** signatureBlockResource) GetAt;
				public function HRESULT(IXpsOMSignatureBlockResourceCollection *self, uint32 index, IXpsOMSignatureBlockResource* signatureBlockResource) InsertAt;
				public function HRESULT(IXpsOMSignatureBlockResourceCollection *self, uint32 index) RemoveAt;
				public function HRESULT(IXpsOMSignatureBlockResourceCollection *self, uint32 index, IXpsOMSignatureBlockResource* signatureBlockResource) SetAt;
				public function HRESULT(IXpsOMSignatureBlockResourceCollection *self, IXpsOMSignatureBlockResource* signatureBlockResource) Append;
				public function HRESULT(IXpsOMSignatureBlockResourceCollection *self, IOpcPartUri* partName, IXpsOMSignatureBlockResource** signatureBlockResource) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMDocumentStructureResource : IXpsOMResource
		{
			public const new Guid IID = .(0x85febc8a, 0x6b63, 0x48a9, 0xaf, 0x07, 0x70, 0x64, 0xe4, 0xec, 0xff, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public function HRESULT(IXpsOMDocumentStructureResource *self, IXpsOMDocument** owner) GetOwner;
				public function HRESULT(IXpsOMDocumentStructureResource *self, IStream** stream) GetStream;
				public function HRESULT(IXpsOMDocumentStructureResource *self, IStream* sourceStream, IOpcPartUri* partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMStoryFragmentsResource : IXpsOMResource
		{
			public const new Guid IID = .(0xc2b3ca09, 0x0473, 0x4282, 0x87, 0xae, 0x17, 0x80, 0x86, 0x32, 0x23, 0xf0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public function HRESULT(IXpsOMStoryFragmentsResource *self, IXpsOMPageReference** owner) GetOwner;
				public function HRESULT(IXpsOMStoryFragmentsResource *self, IStream** stream) GetStream;
				public function HRESULT(IXpsOMStoryFragmentsResource *self, IStream* sourceStream, IOpcPartUri* partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMSignatureBlockResource : IXpsOMResource
		{
			public const new Guid IID = .(0x4776ad35, 0x2e04, 0x4357, 0x87, 0x43, 0xeb, 0xf6, 0xc1, 0x71, 0xa9, 0x05);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public function HRESULT(IXpsOMSignatureBlockResource *self, IXpsOMDocument** owner) GetOwner;
				public function HRESULT(IXpsOMSignatureBlockResource *self, IStream** stream) GetStream;
				public function HRESULT(IXpsOMSignatureBlockResource *self, IStream* sourceStream, IOpcPartUri* partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMVisualCollection : IUnknown
		{
			public const new Guid IID = .(0x94d8abde, 0xab91, 0x46a8, 0x82, 0xb7, 0xf5, 0xb0, 0x5e, 0xf0, 0x1a, 0x96);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMVisualCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMVisualCollection *self, uint32 index, IXpsOMVisual** object) GetAt;
				public function HRESULT(IXpsOMVisualCollection *self, uint32 index, IXpsOMVisual* object) InsertAt;
				public function HRESULT(IXpsOMVisualCollection *self, uint32 index) RemoveAt;
				public function HRESULT(IXpsOMVisualCollection *self, uint32 index, IXpsOMVisual* object) SetAt;
				public function HRESULT(IXpsOMVisualCollection *self, IXpsOMVisual* object) Append;
			}
		}
		[CRepr]
		public struct IXpsOMCanvas : IXpsOMVisual
		{
			public const new Guid IID = .(0x221d1452, 0x331e, 0x47c6, 0x87, 0xe9, 0x6c, 0xce, 0xfb, 0x9b, 0x5b, 0xa3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMVisual.VTable
			{
				public function HRESULT(IXpsOMCanvas *self, IXpsOMVisualCollection** visuals) GetVisuals;
				public function HRESULT(IXpsOMCanvas *self, BOOL* useAliasedEdgeMode) GetUseAliasedEdgeMode;
				public function HRESULT(IXpsOMCanvas *self, BOOL useAliasedEdgeMode) SetUseAliasedEdgeMode;
				public function HRESULT(IXpsOMCanvas *self, PWSTR* shortDescription) GetAccessibilityShortDescription;
				public function HRESULT(IXpsOMCanvas *self, PWSTR shortDescription) SetAccessibilityShortDescription;
				public function HRESULT(IXpsOMCanvas *self, PWSTR* longDescription) GetAccessibilityLongDescription;
				public function HRESULT(IXpsOMCanvas *self, PWSTR longDescription) SetAccessibilityLongDescription;
				public function HRESULT(IXpsOMCanvas *self, IXpsOMDictionary** resourceDictionary) GetDictionary;
				public function HRESULT(IXpsOMCanvas *self, IXpsOMDictionary** resourceDictionary) GetDictionaryLocal;
				public function HRESULT(IXpsOMCanvas *self, IXpsOMDictionary* resourceDictionary) SetDictionaryLocal;
				public function HRESULT(IXpsOMCanvas *self, IXpsOMRemoteDictionaryResource** remoteDictionaryResource) GetDictionaryResource;
				public function HRESULT(IXpsOMCanvas *self, IXpsOMRemoteDictionaryResource* remoteDictionaryResource) SetDictionaryResource;
				public function HRESULT(IXpsOMCanvas *self, IXpsOMCanvas** canvas) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMPage : IXpsOMPart
		{
			public const new Guid IID = .(0xd3e18888, 0xf120, 0x4fee, 0x8c, 0x68, 0x35, 0x29, 0x6e, 0xae, 0x91, 0xd4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
				public function HRESULT(IXpsOMPage *self, IXpsOMPageReference** pageReference) GetOwner;
				public function HRESULT(IXpsOMPage *self, IXpsOMVisualCollection** visuals) GetVisuals;
				public function HRESULT(IXpsOMPage *self, XPS_SIZE* pageDimensions) GetPageDimensions;
				public function HRESULT(IXpsOMPage *self, XPS_SIZE* pageDimensions) SetPageDimensions;
				public function HRESULT(IXpsOMPage *self, XPS_RECT* contentBox) GetContentBox;
				public function HRESULT(IXpsOMPage *self, XPS_RECT* contentBox) SetContentBox;
				public function HRESULT(IXpsOMPage *self, XPS_RECT* bleedBox) GetBleedBox;
				public function HRESULT(IXpsOMPage *self, XPS_RECT* bleedBox) SetBleedBox;
				public function HRESULT(IXpsOMPage *self, PWSTR* language) GetLanguage;
				public function HRESULT(IXpsOMPage *self, PWSTR language) SetLanguage;
				public function HRESULT(IXpsOMPage *self, PWSTR* name) GetName;
				public function HRESULT(IXpsOMPage *self, PWSTR name) SetName;
				public function HRESULT(IXpsOMPage *self, BOOL* isHyperlinkTarget) GetIsHyperlinkTarget;
				public function HRESULT(IXpsOMPage *self, BOOL isHyperlinkTarget) SetIsHyperlinkTarget;
				public function HRESULT(IXpsOMPage *self, IXpsOMDictionary** resourceDictionary) GetDictionary;
				public function HRESULT(IXpsOMPage *self, IXpsOMDictionary** resourceDictionary) GetDictionaryLocal;
				public function HRESULT(IXpsOMPage *self, IXpsOMDictionary* resourceDictionary) SetDictionaryLocal;
				public function HRESULT(IXpsOMPage *self, IXpsOMRemoteDictionaryResource** remoteDictionaryResource) GetDictionaryResource;
				public function HRESULT(IXpsOMPage *self, IXpsOMRemoteDictionaryResource* remoteDictionaryResource) SetDictionaryResource;
				public function HRESULT(IXpsOMPage *self, ISequentialStream* stream, BOOL optimizeMarkupSize) Write;
				public function HRESULT(IXpsOMPage *self, XPS_OBJECT_TYPE type, PWSTR* key) GenerateUnusedLookupKey;
				public function HRESULT(IXpsOMPage *self, IXpsOMPage** page) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMPageReference : IUnknown
		{
			public const new Guid IID = .(0xed360180, 0x6f92, 0x4998, 0x89, 0x0d, 0x2f, 0x20, 0x85, 0x31, 0xa0, 0xa0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMPageReference *self, IXpsOMDocument** document) GetOwner;
				public function HRESULT(IXpsOMPageReference *self, IXpsOMPage** page) GetPage;
				public function HRESULT(IXpsOMPageReference *self, IXpsOMPage* page) SetPage;
				public function HRESULT(IXpsOMPageReference *self) DiscardPage;
				public function HRESULT(IXpsOMPageReference *self, BOOL* isPageLoaded) IsPageLoaded;
				public function HRESULT(IXpsOMPageReference *self, XPS_SIZE* pageDimensions) GetAdvisoryPageDimensions;
				public function HRESULT(IXpsOMPageReference *self, XPS_SIZE* pageDimensions) SetAdvisoryPageDimensions;
				public function HRESULT(IXpsOMPageReference *self, IXpsOMStoryFragmentsResource** storyFragmentsResource) GetStoryFragmentsResource;
				public function HRESULT(IXpsOMPageReference *self, IXpsOMStoryFragmentsResource* storyFragmentsResource) SetStoryFragmentsResource;
				public function HRESULT(IXpsOMPageReference *self, IXpsOMPrintTicketResource** printTicketResource) GetPrintTicketResource;
				public function HRESULT(IXpsOMPageReference *self, IXpsOMPrintTicketResource* printTicketResource) SetPrintTicketResource;
				public function HRESULT(IXpsOMPageReference *self, IXpsOMImageResource** imageResource) GetThumbnailResource;
				public function HRESULT(IXpsOMPageReference *self, IXpsOMImageResource* imageResource) SetThumbnailResource;
				public function HRESULT(IXpsOMPageReference *self, IXpsOMNameCollection** linkTargets) CollectLinkTargets;
				public function HRESULT(IXpsOMPageReference *self, IXpsOMPartResources** partResources) CollectPartResources;
				public function HRESULT(IXpsOMPageReference *self, BOOL* restrictedFonts) HasRestrictedFonts;
				public function HRESULT(IXpsOMPageReference *self, IXpsOMPageReference** pageReference) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMPageReferenceCollection : IUnknown
		{
			public const new Guid IID = .(0xca16ba4d, 0xe7b9, 0x45c5, 0x95, 0x8b, 0xf9, 0x80, 0x22, 0x47, 0x37, 0x45);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMPageReferenceCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMPageReferenceCollection *self, uint32 index, IXpsOMPageReference** pageReference) GetAt;
				public function HRESULT(IXpsOMPageReferenceCollection *self, uint32 index, IXpsOMPageReference* pageReference) InsertAt;
				public function HRESULT(IXpsOMPageReferenceCollection *self, uint32 index) RemoveAt;
				public function HRESULT(IXpsOMPageReferenceCollection *self, uint32 index, IXpsOMPageReference* pageReference) SetAt;
				public function HRESULT(IXpsOMPageReferenceCollection *self, IXpsOMPageReference* pageReference) Append;
			}
		}
		[CRepr]
		public struct IXpsOMDocument : IXpsOMPart
		{
			public const new Guid IID = .(0x2c2c94cb, 0xac5f, 0x4254, 0x8e, 0xe9, 0x23, 0x94, 0x83, 0x09, 0xd9, 0xf0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
				public function HRESULT(IXpsOMDocument *self, IXpsOMDocumentSequence** documentSequence) GetOwner;
				public function HRESULT(IXpsOMDocument *self, IXpsOMPageReferenceCollection** pageReferences) GetPageReferences;
				public function HRESULT(IXpsOMDocument *self, IXpsOMPrintTicketResource** printTicketResource) GetPrintTicketResource;
				public function HRESULT(IXpsOMDocument *self, IXpsOMPrintTicketResource* printTicketResource) SetPrintTicketResource;
				public function HRESULT(IXpsOMDocument *self, IXpsOMDocumentStructureResource** documentStructureResource) GetDocumentStructureResource;
				public function HRESULT(IXpsOMDocument *self, IXpsOMDocumentStructureResource* documentStructureResource) SetDocumentStructureResource;
				public function HRESULT(IXpsOMDocument *self, IXpsOMSignatureBlockResourceCollection** signatureBlockResources) GetSignatureBlockResources;
				public function HRESULT(IXpsOMDocument *self, IXpsOMDocument** document) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMDocumentCollection : IUnknown
		{
			public const new Guid IID = .(0xd1c87f0d, 0xe947, 0x4754, 0x8a, 0x25, 0x97, 0x14, 0x78, 0xf7, 0xe8, 0x3e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMDocumentCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMDocumentCollection *self, uint32 index, IXpsOMDocument** document) GetAt;
				public function HRESULT(IXpsOMDocumentCollection *self, uint32 index, IXpsOMDocument* document) InsertAt;
				public function HRESULT(IXpsOMDocumentCollection *self, uint32 index) RemoveAt;
				public function HRESULT(IXpsOMDocumentCollection *self, uint32 index, IXpsOMDocument* document) SetAt;
				public function HRESULT(IXpsOMDocumentCollection *self, IXpsOMDocument* document) Append;
			}
		}
		[CRepr]
		public struct IXpsOMDocumentSequence : IXpsOMPart
		{
			public const new Guid IID = .(0x56492eb4, 0xd8d5, 0x425e, 0x82, 0x56, 0x4c, 0x2b, 0x64, 0xad, 0x02, 0x64);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
				public function HRESULT(IXpsOMDocumentSequence *self, IXpsOMPackage** package) GetOwner;
				public function HRESULT(IXpsOMDocumentSequence *self, IXpsOMDocumentCollection** documents) GetDocuments;
				public function HRESULT(IXpsOMDocumentSequence *self, IXpsOMPrintTicketResource** printTicketResource) GetPrintTicketResource;
				public function HRESULT(IXpsOMDocumentSequence *self, IXpsOMPrintTicketResource* printTicketResource) SetPrintTicketResource;
			}
		}
		[CRepr]
		public struct IXpsOMCoreProperties : IXpsOMPart
		{
			public const new Guid IID = .(0x3340fe8f, 0x4027, 0x4aa1, 0x8f, 0x5f, 0xd3, 0x5a, 0xe4, 0x5f, 0xe5, 0x97);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
				public function HRESULT(IXpsOMCoreProperties *self, IXpsOMPackage** package) GetOwner;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR* category) GetCategory;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR category) SetCategory;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR* contentStatus) GetContentStatus;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR contentStatus) SetContentStatus;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR* contentType) GetContentType;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR contentType) SetContentType;
				public function HRESULT(IXpsOMCoreProperties *self, SYSTEMTIME* created) GetCreated;
				public function HRESULT(IXpsOMCoreProperties *self, SYSTEMTIME* created) SetCreated;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR* creator) GetCreator;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR creator) SetCreator;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR* description) GetDescription;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR description) SetDescription;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR* identifier) GetIdentifier;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR identifier) SetIdentifier;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR* keywords) GetKeywords;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR keywords) SetKeywords;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR* language) GetLanguage;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR language) SetLanguage;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR* lastModifiedBy) GetLastModifiedBy;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR lastModifiedBy) SetLastModifiedBy;
				public function HRESULT(IXpsOMCoreProperties *self, SYSTEMTIME* lastPrinted) GetLastPrinted;
				public function HRESULT(IXpsOMCoreProperties *self, SYSTEMTIME* lastPrinted) SetLastPrinted;
				public function HRESULT(IXpsOMCoreProperties *self, SYSTEMTIME* modified) GetModified;
				public function HRESULT(IXpsOMCoreProperties *self, SYSTEMTIME* modified) SetModified;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR* revision) GetRevision;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR revision) SetRevision;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR* subject) GetSubject;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR subject) SetSubject;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR* title) GetTitle;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR title) SetTitle;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR* version) GetVersion;
				public function HRESULT(IXpsOMCoreProperties *self, PWSTR version) SetVersion;
				public function HRESULT(IXpsOMCoreProperties *self, IXpsOMCoreProperties** coreProperties) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMPackage : IUnknown
		{
			public const new Guid IID = .(0x18c3df65, 0x81e1, 0x4674, 0x91, 0xdc, 0xfc, 0x45, 0x2f, 0x5a, 0x41, 0x6f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMPackage *self, IXpsOMDocumentSequence** documentSequence) GetDocumentSequence;
				public function HRESULT(IXpsOMPackage *self, IXpsOMDocumentSequence* documentSequence) SetDocumentSequence;
				public function HRESULT(IXpsOMPackage *self, IXpsOMCoreProperties** coreProperties) GetCoreProperties;
				public function HRESULT(IXpsOMPackage *self, IXpsOMCoreProperties* coreProperties) SetCoreProperties;
				public function HRESULT(IXpsOMPackage *self, IOpcPartUri** discardControlPartUri) GetDiscardControlPartName;
				public function HRESULT(IXpsOMPackage *self, IOpcPartUri* discardControlPartUri) SetDiscardControlPartName;
				public function HRESULT(IXpsOMPackage *self, IXpsOMImageResource** imageResource) GetThumbnailResource;
				public function HRESULT(IXpsOMPackage *self, IXpsOMImageResource* imageResource) SetThumbnailResource;
				public function HRESULT(IXpsOMPackage *self, PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes, BOOL optimizeMarkupSize) WriteToFile;
				public function HRESULT(IXpsOMPackage *self, ISequentialStream* stream, BOOL optimizeMarkupSize) WriteToStream;
			}
		}
		[CRepr]
		public struct IXpsOMObjectFactory : IUnknown
		{
			public const new Guid IID = .(0xf9b2a685, 0xa50d, 0x4fc2, 0xb7, 0x64, 0xb5, 0x6e, 0x09, 0x3e, 0xa0, 0xca);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMObjectFactory *self, IXpsOMPackage** package) CreatePackage;
				public function HRESULT(IXpsOMObjectFactory *self, PWSTR filename, BOOL reuseObjects, IXpsOMPackage** package) CreatePackageFromFile;
				public function HRESULT(IXpsOMObjectFactory *self, IStream* stream, BOOL reuseObjects, IXpsOMPackage** package) CreatePackageFromStream;
				public function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMStoryFragmentsResource** storyFragmentsResource) CreateStoryFragmentsResource;
				public function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMDocumentStructureResource** documentStructureResource) CreateDocumentStructureResource;
				public function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMSignatureBlockResource** signatureBlockResource) CreateSignatureBlockResource;
				public function HRESULT(IXpsOMObjectFactory *self, IXpsOMDictionary* dictionary, IOpcPartUri* partUri, IXpsOMRemoteDictionaryResource** remoteDictionaryResource) CreateRemoteDictionaryResource;
				public function HRESULT(IXpsOMObjectFactory *self, IStream* dictionaryMarkupStream, IOpcPartUri* dictionaryPartUri, IXpsOMPartResources* resources, IXpsOMRemoteDictionaryResource** dictionaryResource) CreateRemoteDictionaryResourceFromStream;
				public function HRESULT(IXpsOMObjectFactory *self, IXpsOMPartResources** partResources) CreatePartResources;
				public function HRESULT(IXpsOMObjectFactory *self, IOpcPartUri* partUri, IXpsOMDocumentSequence** documentSequence) CreateDocumentSequence;
				public function HRESULT(IXpsOMObjectFactory *self, IOpcPartUri* partUri, IXpsOMDocument** document) CreateDocument;
				public function HRESULT(IXpsOMObjectFactory *self, XPS_SIZE* advisoryPageDimensions, IXpsOMPageReference** pageReference) CreatePageReference;
				public function HRESULT(IXpsOMObjectFactory *self, XPS_SIZE* pageDimensions, PWSTR language, IOpcPartUri* partUri, IXpsOMPage** page) CreatePage;
				public function HRESULT(IXpsOMObjectFactory *self, IStream* pageMarkupStream, IOpcPartUri* partUri, IXpsOMPartResources* resources, BOOL reuseObjects, IXpsOMPage** page) CreatePageFromStream;
				public function HRESULT(IXpsOMObjectFactory *self, IXpsOMCanvas** canvas) CreateCanvas;
				public function HRESULT(IXpsOMObjectFactory *self, IXpsOMFontResource* fontResource, IXpsOMGlyphs** glyphs) CreateGlyphs;
				public function HRESULT(IXpsOMObjectFactory *self, IXpsOMPath** path) CreatePath;
				public function HRESULT(IXpsOMObjectFactory *self, IXpsOMGeometry** geometry) CreateGeometry;
				public function HRESULT(IXpsOMObjectFactory *self, XPS_POINT* startPoint, IXpsOMGeometryFigure** figure) CreateGeometryFigure;
				public function HRESULT(IXpsOMObjectFactory *self, XPS_MATRIX* matrix, IXpsOMMatrixTransform** transform) CreateMatrixTransform;
				public function HRESULT(IXpsOMObjectFactory *self, XPS_COLOR* color, IXpsOMColorProfileResource* colorProfile, IXpsOMSolidColorBrush** solidColorBrush) CreateSolidColorBrush;
				public function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMColorProfileResource** colorProfileResource) CreateColorProfileResource;
				public function HRESULT(IXpsOMObjectFactory *self, IXpsOMImageResource* image, XPS_RECT* viewBox, XPS_RECT* viewPort, IXpsOMImageBrush** imageBrush) CreateImageBrush;
				public function HRESULT(IXpsOMObjectFactory *self, XPS_RECT* viewBox, XPS_RECT* viewPort, IXpsOMVisualBrush** visualBrush) CreateVisualBrush;
				public function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, XPS_IMAGE_TYPE contentType, IOpcPartUri* partUri, IXpsOMImageResource** imageResource) CreateImageResource;
				public function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMPrintTicketResource** printTicketResource) CreatePrintTicketResource;
				public function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, XPS_FONT_EMBEDDING fontEmbedding, IOpcPartUri* partUri, BOOL isObfSourceStream, IXpsOMFontResource** fontResource) CreateFontResource;
				public function HRESULT(IXpsOMObjectFactory *self, XPS_COLOR* color, IXpsOMColorProfileResource* colorProfile, float offset, IXpsOMGradientStop** gradientStop) CreateGradientStop;
				public function HRESULT(IXpsOMObjectFactory *self, IXpsOMGradientStop* gradStop1, IXpsOMGradientStop* gradStop2, XPS_POINT* startPoint, XPS_POINT* endPoint, IXpsOMLinearGradientBrush** linearGradientBrush) CreateLinearGradientBrush;
				public function HRESULT(IXpsOMObjectFactory *self, IXpsOMGradientStop* gradStop1, IXpsOMGradientStop* gradStop2, XPS_POINT* centerPoint, XPS_POINT* gradientOrigin, XPS_SIZE* radiiSizes, IXpsOMRadialGradientBrush** radialGradientBrush) CreateRadialGradientBrush;
				public function HRESULT(IXpsOMObjectFactory *self, IOpcPartUri* partUri, IXpsOMCoreProperties** coreProperties) CreateCoreProperties;
				public function HRESULT(IXpsOMObjectFactory *self, IXpsOMDictionary** dictionary) CreateDictionary;
				public function HRESULT(IXpsOMObjectFactory *self, IXpsOMPartUriCollection** partUriCollection) CreatePartUriCollection;
				public function HRESULT(IXpsOMObjectFactory *self, PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes, BOOL optimizeMarkupSize, XPS_INTERLEAVING interleaving, IOpcPartUri* documentSequencePartName, IXpsOMCoreProperties* coreProperties, IXpsOMImageResource* packageThumbnail, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, IXpsOMPackageWriter** packageWriter) CreatePackageWriterOnFile;
				public function HRESULT(IXpsOMObjectFactory *self, ISequentialStream* outputStream, BOOL optimizeMarkupSize, XPS_INTERLEAVING interleaving, IOpcPartUri* documentSequencePartName, IXpsOMCoreProperties* coreProperties, IXpsOMImageResource* packageThumbnail, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, IXpsOMPackageWriter** packageWriter) CreatePackageWriterOnStream;
				public function HRESULT(IXpsOMObjectFactory *self, PWSTR uri, IOpcPartUri** partUri) CreatePartUri;
				public function HRESULT(IXpsOMObjectFactory *self, PWSTR filename, IStream** stream) CreateReadOnlyStreamOnFile;
			}
		}
		[CRepr]
		public struct IXpsOMNameCollection : IUnknown
		{
			public const new Guid IID = .(0x4bddf8ec, 0xc915, 0x421b, 0xa1, 0x66, 0xd1, 0x73, 0xd2, 0x56, 0x53, 0xd2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMNameCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMNameCollection *self, uint32 index, PWSTR* name) GetAt;
			}
		}
		[CRepr]
		public struct IXpsOMPartUriCollection : IUnknown
		{
			public const new Guid IID = .(0x57c650d4, 0x067c, 0x4893, 0x8c, 0x33, 0xf6, 0x2a, 0x06, 0x33, 0x73, 0x0f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMPartUriCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsOMPartUriCollection *self, uint32 index, IOpcPartUri** partUri) GetAt;
				public function HRESULT(IXpsOMPartUriCollection *self, uint32 index, IOpcPartUri* partUri) InsertAt;
				public function HRESULT(IXpsOMPartUriCollection *self, uint32 index) RemoveAt;
				public function HRESULT(IXpsOMPartUriCollection *self, uint32 index, IOpcPartUri* partUri) SetAt;
				public function HRESULT(IXpsOMPartUriCollection *self, IOpcPartUri* partUri) Append;
			}
		}
		[CRepr]
		public struct IXpsOMPackageWriter : IUnknown
		{
			public const new Guid IID = .(0x4e2aa182, 0xa443, 0x42c6, 0xb4, 0x1b, 0x4f, 0x8e, 0x9d, 0xe7, 0x3f, 0xf9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMPackageWriter *self, IOpcPartUri* documentPartName, IXpsOMPrintTicketResource* documentPrintTicket, IXpsOMDocumentStructureResource* documentStructure, IXpsOMSignatureBlockResourceCollection* signatureBlockResources, IXpsOMPartUriCollection* restrictedFonts) StartNewDocument;
				public function HRESULT(IXpsOMPackageWriter *self, IXpsOMPage* page, XPS_SIZE* advisoryPageDimensions, IXpsOMPartUriCollection* discardableResourceParts, IXpsOMStoryFragmentsResource* storyFragments, IXpsOMPrintTicketResource* pagePrintTicket, IXpsOMImageResource* pageThumbnail) AddPage;
				public function HRESULT(IXpsOMPackageWriter *self, IXpsOMResource* resource) AddResource;
				public function HRESULT(IXpsOMPackageWriter *self) Close;
				public function HRESULT(IXpsOMPackageWriter *self, BOOL* isClosed) IsClosed;
			}
		}
		[CRepr]
		public struct IXpsOMPackageTarget : IUnknown
		{
			public const new Guid IID = .(0x219a9db0, 0x4959, 0x47d0, 0x80, 0x34, 0xb1, 0xce, 0x84, 0xf4, 0x1a, 0x4d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMPackageTarget *self, IOpcPartUri* documentSequencePartName, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, IXpsOMPackageWriter** packageWriter) CreateXpsOMPackageWriter;
			}
		}
		[CRepr]
		public struct IXpsOMThumbnailGenerator : IUnknown
		{
			public const new Guid IID = .(0x15b873d5, 0x1971, 0x41e8, 0x83, 0xa3, 0x65, 0x78, 0x40, 0x30, 0x64, 0xc7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsOMThumbnailGenerator *self, IXpsOMPage* page, XPS_IMAGE_TYPE thumbnailType, XPS_THUMBNAIL_SIZE thumbnailSize, IOpcPartUri* imageResourcePartName, IXpsOMImageResource** imageResource) GenerateThumbnail;
			}
		}
		[CRepr]
		public struct IXpsOMObjectFactory1 : IXpsOMObjectFactory
		{
			public const new Guid IID = .(0x0a91b617, 0xd612, 0x4181, 0xbf, 0x7c, 0xbe, 0x58, 0x24, 0xe9, 0xcc, 0x8f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMObjectFactory.VTable
			{
				public function HRESULT(IXpsOMObjectFactory1 *self, PWSTR filename, XPS_DOCUMENT_TYPE* documentType) GetDocumentTypeFromFile;
				public function HRESULT(IXpsOMObjectFactory1 *self, IStream* xpsDocumentStream, XPS_DOCUMENT_TYPE* documentType) GetDocumentTypeFromStream;
				public function HRESULT(IXpsOMObjectFactory1 *self, IXpsOMImageResource* imageResource) ConvertHDPhotoToJpegXR;
				public function HRESULT(IXpsOMObjectFactory1 *self, IXpsOMImageResource* imageResource) ConvertJpegXRToHDPhoto;
				public function HRESULT(IXpsOMObjectFactory1 *self, PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes, BOOL optimizeMarkupSize, XPS_INTERLEAVING interleaving, IOpcPartUri* documentSequencePartName, IXpsOMCoreProperties* coreProperties, IXpsOMImageResource* packageThumbnail, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, XPS_DOCUMENT_TYPE documentType, IXpsOMPackageWriter** packageWriter) CreatePackageWriterOnFile1;
				public function HRESULT(IXpsOMObjectFactory1 *self, ISequentialStream* outputStream, BOOL optimizeMarkupSize, XPS_INTERLEAVING interleaving, IOpcPartUri* documentSequencePartName, IXpsOMCoreProperties* coreProperties, IXpsOMImageResource* packageThumbnail, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, XPS_DOCUMENT_TYPE documentType, IXpsOMPackageWriter** packageWriter) CreatePackageWriterOnStream1;
				public function HRESULT(IXpsOMObjectFactory1 *self, IXpsOMPackage1** package) CreatePackage1;
				public function HRESULT(IXpsOMObjectFactory1 *self, IStream* stream, BOOL reuseObjects, IXpsOMPackage1** package) CreatePackageFromStream1;
				public function HRESULT(IXpsOMObjectFactory1 *self, PWSTR filename, BOOL reuseObjects, IXpsOMPackage1** package) CreatePackageFromFile1;
				public function HRESULT(IXpsOMObjectFactory1 *self, XPS_SIZE* pageDimensions, PWSTR language, IOpcPartUri* partUri, IXpsOMPage1** page) CreatePage1;
				public function HRESULT(IXpsOMObjectFactory1 *self, IStream* pageMarkupStream, IOpcPartUri* partUri, IXpsOMPartResources* resources, BOOL reuseObjects, IXpsOMPage1** page) CreatePageFromStream1;
				public function HRESULT(IXpsOMObjectFactory1 *self, IStream* dictionaryMarkupStream, IOpcPartUri* partUri, IXpsOMPartResources* resources, IXpsOMRemoteDictionaryResource** dictionaryResource) CreateRemoteDictionaryResourceFromStream1;
			}
		}
		[CRepr]
		public struct IXpsOMPackage1 : IXpsOMPackage
		{
			public const new Guid IID = .(0x95a9435e, 0x12bb, 0x461b, 0x8e, 0x7f, 0xc6, 0xad, 0xb0, 0x4c, 0xd9, 0x6a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMPackage.VTable
			{
				public function HRESULT(IXpsOMPackage1 *self, XPS_DOCUMENT_TYPE* documentType) GetDocumentType;
				public function HRESULT(IXpsOMPackage1 *self, PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes, BOOL optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) WriteToFile1;
				public function HRESULT(IXpsOMPackage1 *self, ISequentialStream* outputStream, BOOL optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) WriteToStream1;
			}
		}
		[CRepr]
		public struct IXpsOMPage1 : IXpsOMPage
		{
			public const new Guid IID = .(0x305b60ef, 0x6892, 0x4dda, 0x9c, 0xbb, 0x3a, 0xa6, 0x59, 0x74, 0x50, 0x8a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMPage.VTable
			{
				public function HRESULT(IXpsOMPage1 *self, XPS_DOCUMENT_TYPE* documentType) GetDocumentType;
				public function HRESULT(IXpsOMPage1 *self, ISequentialStream* stream, BOOL optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) Write1;
			}
		}
		[CRepr]
		public struct IXpsDocumentPackageTarget : IUnknown
		{
			public const new Guid IID = .(0x3b0b6d38, 0x53ad, 0x41da, 0xb2, 0x12, 0xd3, 0x76, 0x37, 0xa6, 0x71, 0x4e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsDocumentPackageTarget *self, IOpcPartUri* documentSequencePartName, IOpcPartUri* discardControlPartName, IXpsOMPackageWriter** packageWriter) GetXpsOMPackageWriter;
				public function HRESULT(IXpsDocumentPackageTarget *self, IXpsOMObjectFactory** xpsFactory) GetXpsOMFactory;
				public function HRESULT(IXpsDocumentPackageTarget *self, XPS_DOCUMENT_TYPE* documentType) GetXpsType;
			}
		}
		[CRepr]
		public struct IXpsOMRemoteDictionaryResource1 : IXpsOMRemoteDictionaryResource
		{
			public const new Guid IID = .(0xbf8fc1d4, 0x9d46, 0x4141, 0xba, 0x5f, 0x94, 0xbb, 0x92, 0x50, 0xd0, 0x41);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMRemoteDictionaryResource.VTable
			{
				public function HRESULT(IXpsOMRemoteDictionaryResource1 *self, XPS_DOCUMENT_TYPE* documentType) GetDocumentType;
				public function HRESULT(IXpsOMRemoteDictionaryResource1 *self, ISequentialStream* stream, XPS_DOCUMENT_TYPE documentType) Write1;
			}
		}
		[CRepr]
		public struct IXpsOMPackageWriter3D : IXpsOMPackageWriter
		{
			public const new Guid IID = .(0xe8a45033, 0x640e, 0x43fa, 0x9b, 0xdf, 0xfd, 0xde, 0xaa, 0x31, 0xc6, 0xa0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXpsOMPackageWriter.VTable
			{
				public function HRESULT(IXpsOMPackageWriter3D *self, IOpcPartUri* texturePartName, IStream* textureData) AddModelTexture;
				public function HRESULT(IXpsOMPackageWriter3D *self, IOpcPartUri* printTicketPartName, IStream* printTicketData) SetModelPrintTicket;
			}
		}
		[CRepr]
		public struct IXpsDocumentPackageTarget3D : IUnknown
		{
			public const new Guid IID = .(0x60ba71b8, 0x3101, 0x4984, 0x91, 0x99, 0xf4, 0xea, 0x77, 0x5f, 0xf0, 0x1d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsDocumentPackageTarget3D *self, IOpcPartUri* documentSequencePartName, IOpcPartUri* discardControlPartName, IOpcPartUri* modelPartName, IStream* modelData, IXpsOMPackageWriter3D** packageWriter) GetXpsOMPackageWriter3D;
				public function HRESULT(IXpsDocumentPackageTarget3D *self, IXpsOMObjectFactory** xpsFactory) GetXpsOMFactory;
			}
		}
		[CRepr]
		public struct IXpsSigningOptions : IUnknown
		{
			public const new Guid IID = .(0x7718eae4, 0x3215, 0x49be, 0xaf, 0x5b, 0x59, 0x4f, 0xef, 0x7f, 0xcf, 0xa6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsSigningOptions *self, PWSTR* signatureId) GetSignatureId;
				public function HRESULT(IXpsSigningOptions *self, PWSTR signatureId) SetSignatureId;
				public function HRESULT(IXpsSigningOptions *self, PWSTR* signatureMethod) GetSignatureMethod;
				public function HRESULT(IXpsSigningOptions *self, PWSTR signatureMethod) SetSignatureMethod;
				public function HRESULT(IXpsSigningOptions *self, PWSTR* digestMethod) GetDigestMethod;
				public function HRESULT(IXpsSigningOptions *self, PWSTR digestMethod) SetDigestMethod;
				public function HRESULT(IXpsSigningOptions *self, IOpcPartUri** signaturePartName) GetSignaturePartName;
				public function HRESULT(IXpsSigningOptions *self, IOpcPartUri* signaturePartName) SetSignaturePartName;
				public function HRESULT(IXpsSigningOptions *self, XPS_SIGN_POLICY* policy) GetPolicy;
				public function HRESULT(IXpsSigningOptions *self, XPS_SIGN_POLICY policy) SetPolicy;
				public function HRESULT(IXpsSigningOptions *self, OPC_SIGNATURE_TIME_FORMAT* timeFormat) GetSigningTimeFormat;
				public function HRESULT(IXpsSigningOptions *self, OPC_SIGNATURE_TIME_FORMAT timeFormat) SetSigningTimeFormat;
				public function HRESULT(IXpsSigningOptions *self, IOpcSignatureCustomObjectSet** customObjectSet) GetCustomObjects;
				public function HRESULT(IXpsSigningOptions *self, IOpcSignatureReferenceSet** customReferenceSet) GetCustomReferences;
				public function HRESULT(IXpsSigningOptions *self, IOpcCertificateSet** certificateSet) GetCertificateSet;
				public function HRESULT(IXpsSigningOptions *self, XPS_SIGN_FLAGS* flags) GetFlags;
				public function HRESULT(IXpsSigningOptions *self, XPS_SIGN_FLAGS flags) SetFlags;
			}
		}
		[CRepr]
		public struct IXpsSignatureCollection : IUnknown
		{
			public const new Guid IID = .(0xa2d1d95d, 0xadd2, 0x4dff, 0xab, 0x27, 0x6b, 0x9c, 0x64, 0x5f, 0xf3, 0x22);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsSignatureCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsSignatureCollection *self, uint32 index, IXpsSignature** signature) GetAt;
				public function HRESULT(IXpsSignatureCollection *self, uint32 index) RemoveAt;
			}
		}
		[CRepr]
		public struct IXpsSignature : IUnknown
		{
			public const new Guid IID = .(0x6ae4c93e, 0x1ade, 0x42fb, 0x89, 0x8b, 0x3a, 0x56, 0x58, 0x28, 0x48, 0x57);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsSignature *self, PWSTR* sigId) GetSignatureId;
				public function HRESULT(IXpsSignature *self, uint8** signatureHashValue, uint32* count) GetSignatureValue;
				public function HRESULT(IXpsSignature *self, IOpcCertificateEnumerator** certificateEnumerator) GetCertificateEnumerator;
				public function HRESULT(IXpsSignature *self, PWSTR* sigDateTimeString) GetSigningTime;
				public function HRESULT(IXpsSignature *self, OPC_SIGNATURE_TIME_FORMAT* timeFormat) GetSigningTimeFormat;
				public function HRESULT(IXpsSignature *self, IOpcPartUri** signaturePartName) GetSignaturePartName;
				public function HRESULT(IXpsSignature *self, CERT_CONTEXT* x509Certificate, XPS_SIGNATURE_STATUS* sigStatus) Verify;
				public function HRESULT(IXpsSignature *self, XPS_SIGN_POLICY* policy) GetPolicy;
				public function HRESULT(IXpsSignature *self, IOpcSignatureCustomObjectEnumerator** customObjectEnumerator) GetCustomObjectEnumerator;
				public function HRESULT(IXpsSignature *self, IOpcSignatureReferenceEnumerator** customReferenceEnumerator) GetCustomReferenceEnumerator;
				public function HRESULT(IXpsSignature *self, uint8** signatureXml, uint32* count) GetSignatureXml;
				public function HRESULT(IXpsSignature *self, uint8* signatureXml, uint32 count) SetSignatureXml;
			}
		}
		[CRepr]
		public struct IXpsSignatureBlockCollection : IUnknown
		{
			public const new Guid IID = .(0x23397050, 0xfe99, 0x467a, 0x8d, 0xce, 0x92, 0x37, 0xf0, 0x74, 0xff, 0xe4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsSignatureBlockCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsSignatureBlockCollection *self, uint32 index, IXpsSignatureBlock** signatureBlock) GetAt;
				public function HRESULT(IXpsSignatureBlockCollection *self, uint32 index) RemoveAt;
			}
		}
		[CRepr]
		public struct IXpsSignatureBlock : IUnknown
		{
			public const new Guid IID = .(0x151fac09, 0x0b97, 0x4ac6, 0xa3, 0x23, 0x5e, 0x42, 0x97, 0xd4, 0x32, 0x2b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsSignatureBlock *self, IXpsSignatureRequestCollection** requests) GetRequests;
				public function HRESULT(IXpsSignatureBlock *self, IOpcPartUri** partName) GetPartName;
				public function HRESULT(IXpsSignatureBlock *self, uint32* fixedDocumentIndex) GetDocumentIndex;
				public function HRESULT(IXpsSignatureBlock *self, IOpcPartUri** fixedDocumentName) GetDocumentName;
				public function HRESULT(IXpsSignatureBlock *self, PWSTR requestId, IXpsSignatureRequest** signatureRequest) CreateRequest;
			}
		}
		[CRepr]
		public struct IXpsSignatureRequestCollection : IUnknown
		{
			public const new Guid IID = .(0xf0253e68, 0x9f19, 0x412e, 0x9b, 0x4f, 0x54, 0xd3, 0xb0, 0xac, 0x6c, 0xd9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsSignatureRequestCollection *self, uint32* count) GetCount;
				public function HRESULT(IXpsSignatureRequestCollection *self, uint32 index, IXpsSignatureRequest** signatureRequest) GetAt;
				public function HRESULT(IXpsSignatureRequestCollection *self, uint32 index) RemoveAt;
			}
		}
		[CRepr]
		public struct IXpsSignatureRequest : IUnknown
		{
			public const new Guid IID = .(0xac58950b, 0x7208, 0x4b2d, 0xb2, 0xc4, 0x95, 0x10, 0x83, 0xd3, 0xb8, 0xeb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsSignatureRequest *self, PWSTR* intent) GetIntent;
				public function HRESULT(IXpsSignatureRequest *self, PWSTR intent) SetIntent;
				public function HRESULT(IXpsSignatureRequest *self, PWSTR* signerName) GetRequestedSigner;
				public function HRESULT(IXpsSignatureRequest *self, PWSTR signerName) SetRequestedSigner;
				public function HRESULT(IXpsSignatureRequest *self, PWSTR* dateString) GetRequestSignByDate;
				public function HRESULT(IXpsSignatureRequest *self, PWSTR dateString) SetRequestSignByDate;
				public function HRESULT(IXpsSignatureRequest *self, PWSTR* place) GetSigningLocale;
				public function HRESULT(IXpsSignatureRequest *self, PWSTR place) SetSigningLocale;
				public function HRESULT(IXpsSignatureRequest *self, int32* pageIndex, IOpcPartUri** pagePartName, float* x, float* y) GetSpotLocation;
				public function HRESULT(IXpsSignatureRequest *self, int32 pageIndex, float x, float y) SetSpotLocation;
				public function HRESULT(IXpsSignatureRequest *self, PWSTR* requestId) GetRequestId;
				public function HRESULT(IXpsSignatureRequest *self, IXpsSignature** signature) GetSignature;
			}
		}
		[CRepr]
		public struct IXpsSignatureManager : IUnknown
		{
			public const new Guid IID = .(0xd3e8d338, 0xfdc4, 0x4afc, 0x80, 0xb5, 0xd5, 0x32, 0xa1, 0x78, 0x2e, 0xe1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsSignatureManager *self, PWSTR fileName) LoadPackageFile;
				public function HRESULT(IXpsSignatureManager *self, IStream* stream) LoadPackageStream;
				public function HRESULT(IXpsSignatureManager *self, IXpsSigningOptions* signOptions, CERT_CONTEXT* x509Certificate, IXpsSignature** signature) Sign;
				public function HRESULT(IXpsSignatureManager *self, IOpcPartUri** signatureOriginPartName) GetSignatureOriginPartName;
				public function HRESULT(IXpsSignatureManager *self, IOpcPartUri* signatureOriginPartName) SetSignatureOriginPartName;
				public function HRESULT(IXpsSignatureManager *self, IXpsSignatureCollection** signatures) GetSignatures;
				public function HRESULT(IXpsSignatureManager *self, IOpcPartUri* partName, uint32 fixedDocumentIndex, IXpsSignatureBlock** signatureBlock) AddSignatureBlock;
				public function HRESULT(IXpsSignatureManager *self, IXpsSignatureBlockCollection** signatureBlocks) GetSignatureBlocks;
				public function HRESULT(IXpsSignatureManager *self, IXpsSigningOptions** signingOptions) CreateSigningOptions;
				public function HRESULT(IXpsSignatureManager *self, PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes) SavePackageToFile;
				public function HRESULT(IXpsSignatureManager *self, IStream* stream) SavePackageToStream;
			}
		}
		
		// --- Functions ---
		
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DeviceCapabilitiesA(PSTR pDevice, PSTR pPort, DEVICE_CAPABILITIES fwCapability, PSTR pOutput, DEVMODEA* pDevMode);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DeviceCapabilitiesW(PWSTR pDevice, PWSTR pPort, DEVICE_CAPABILITIES fwCapability, PWSTR pOutput, DEVMODEW* pDevMode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 Escape(HDC hdc, int32 iEscape, int32 cjIn, PSTR pvIn, void* pvOut);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ExtEscape(HDC hdc, int32 iEscape, int32 cjInput, PSTR lpInData, int32 cjOutput, PSTR lpOutData);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StartDocA(HDC hdc, DOCINFOA* lpdi);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StartDocW(HDC hdc, DOCINFOW* lpdi);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EndDoc(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StartPage(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EndPage(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AbortDoc(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetAbortProc(HDC hdc, ABORTPROC proc);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PrintWindow(HWND hwnd, HDC hdcBlt, PRINT_WINDOW_FLAGS nFlags);
		
	}
}
