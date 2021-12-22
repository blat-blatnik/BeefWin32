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
		
		public enum PRINT_WINDOW_FLAGS : uint32
		{
			PW_CLIENTONLY = 1,
		}
		public enum DEVICE_CAPABILITIES : uint32
		{
			BINNAMES = 12,
			BINS = 6,
			COLLATE = 22,
			COLORDEVICE = 32,
			COPIES = 18,
			DRIVER = 11,
			DUPLEX = 7,
			ENUMRESOLUTIONS = 13,
			EXTRA = 9,
			FIELDS = 1,
			FILEDEPENDENCIES = 14,
			MAXEXTENT = 5,
			MEDIAREADY = 29,
			MEDIATYPENAMES = 34,
			MEDIATYPES = 35,
			MINEXTENT = 4,
			ORIENTATION = 17,
			NUP = 33,
			PAPERNAMES = 16,
			PAPERS = 2,
			PAPERSIZE = 3,
			PERSONALITY = 25,
			PRINTERMEM = 28,
			PRINTRATE = 26,
			PRINTRATEPPM = 31,
			PRINTRATEUNIT = 27,
			SIZE = 8,
			STAPLE = 30,
			TRUETYPE = 15,
			VERSION = 10,
		}
		public enum PSINJECT_POINT : uint16
		{
			BEGINSTREAM = 1,
			PSADOBE = 2,
			PAGESATEND = 3,
			PAGES = 4,
			DOCNEEDEDRES = 5,
			DOCSUPPLIEDRES = 6,
			PAGEORDER = 7,
			ORIENTATION = 8,
			BOUNDINGBOX = 9,
			DOCUMENTPROCESSCOLORS = 10,
			COMMENTS = 11,
			BEGINDEFAULTS = 12,
			ENDDEFAULTS = 13,
			BEGINPROLOG = 14,
			ENDPROLOG = 15,
			BEGINSETUP = 16,
			ENDSETUP = 17,
			TRAILER = 18,
			EOF = 19,
			ENDSTREAM = 20,
			DOCUMENTPROCESSCOLORSATEND = 21,
			PAGENUMBER = 100,
			BEGINPAGESETUP = 101,
			ENDPAGESETUP = 102,
			PAGETRAILER = 103,
			PLATECOLOR = 104,
			SHOWPAGE = 105,
			PAGEBBOX = 106,
			ENDPAGECOMMENTS = 107,
			VMSAVE = 200,
			VMRESTORE = 201,
		}
		public enum XPS_TILE_MODE : int32
		{
			NONE = 1,
			TILE = 2,
			FLIPX = 3,
			FLIPY = 4,
			FLIPXY = 5,
		}
		public enum XPS_COLOR_INTERPOLATION : int32
		{
			CRGBLINEAR = 1,
			RGBLINEAR = 2,
		}
		public enum XPS_SPREAD_METHOD : int32
		{
			PAD = 1,
			REFLECT = 2,
			REPEAT = 3,
		}
		public enum XPS_STYLE_SIMULATION : int32
		{
			NONE = 1,
			ITALIC = 2,
			BOLD = 3,
			BOLDITALIC = 4,
		}
		public enum XPS_LINE_CAP : int32
		{
			FLAT = 1,
			ROUND = 2,
			SQUARE = 3,
			TRIANGLE = 4,
		}
		public enum XPS_DASH_CAP : int32
		{
			FLAT = 1,
			ROUND = 2,
			SQUARE = 3,
			TRIANGLE = 4,
		}
		public enum XPS_LINE_JOIN : int32
		{
			MITER = 1,
			BEVEL = 2,
			ROUND = 3,
		}
		public enum XPS_IMAGE_TYPE : int32
		{
			JPEG = 1,
			PNG = 2,
			TIFF = 3,
			WDP = 4,
			JXR = 5,
		}
		public enum XPS_COLOR_TYPE : int32
		{
			SRGB = 1,
			SCRGB = 2,
			CONTEXT = 3,
		}
		public enum XPS_FILL_RULE : int32
		{
			EVENODD = 1,
			NONZERO = 2,
		}
		public enum XPS_SEGMENT_TYPE : int32
		{
			ARC_LARGE_CLOCKWISE = 1,
			ARC_LARGE_COUNTERCLOCKWISE = 2,
			ARC_SMALL_CLOCKWISE = 3,
			ARC_SMALL_COUNTERCLOCKWISE = 4,
			BEZIER = 5,
			LINE = 6,
			QUADRATIC_BEZIER = 7,
		}
		public enum XPS_SEGMENT_STROKE_PATTERN : int32
		{
			ALL = 1,
			NONE = 2,
			MIXED = 3,
		}
		public enum XPS_FONT_EMBEDDING : int32
		{
			NORMAL = 1,
			OBFUSCATED = 2,
			RESTRICTED = 3,
			RESTRICTED_UNOBFUSCATED = 4,
		}
		public enum XPS_OBJECT_TYPE : int32
		{
			CANVAS = 1,
			GLYPHS = 2,
			PATH = 3,
			MATRIX_TRANSFORM = 4,
			GEOMETRY = 5,
			SOLID_COLOR_BRUSH = 6,
			IMAGE_BRUSH = 7,
			LINEAR_GRADIENT_BRUSH = 8,
			RADIAL_GRADIENT_BRUSH = 9,
			VISUAL_BRUSH = 10,
		}
		public enum XPS_THUMBNAIL_SIZE : int32
		{
			VERYSMALL = 1,
			SMALL = 2,
			MEDIUM = 3,
			LARGE = 4,
		}
		public enum XPS_INTERLEAVING : int32
		{
			FF = 1,
			N = 2,
		}
		public enum XPS_DOCUMENT_TYPE : int32
		{
			UNSPECIFIED = 1,
			XPS = 2,
			OPENXPS = 3,
		}
		public enum XPS_SIGNATURE_STATUS : int32
		{
			INCOMPLIANT = 1,
			INCOMPLETE = 2,
			BROKEN = 3,
			QUESTIONABLE = 4,
			VALID = 5,
		}
		public enum XPS_SIGN_POLICY : int32
		{
			NONE = 0,
			CORE_PROPERTIES = 1,
			SIGNATURE_RELATIONSHIPS = 2,
			PRINT_TICKET = 4,
			DISCARD_CONTROL = 8,
			ALL = 15,
		}
		public enum XPS_SIGN_FLAGS : int32
		{
			NONE = 0,
			IGNORE_MARKUP_COMPATIBILITY = 1,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwner(IUnknown** owner) mut
			{
				return VT.GetOwner(&this, owner);
			}
			public HRESULT ComGetType(XPS_OBJECT_TYPE* type) mut
			{
				return VT.ComGetType(&this, type);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMShareable *self, IUnknown** owner) GetOwner;
				public new function HRESULT(IXpsOMShareable *self, XPS_OBJECT_TYPE* type) ComGetType;
			}
		}
		[CRepr]
		public struct IXpsOMVisual : IXpsOMShareable
		{
			public const new Guid IID = .(0xbc3e7333, 0xfb0b, 0x4af3, 0xa8, 0x19, 0x0b, 0x4e, 0xaa, 0xd0, 0xd2, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTransform(IXpsOMMatrixTransform** matrixTransform) mut
			{
				return VT.GetTransform(&this, matrixTransform);
			}
			public HRESULT GetTransformLocal(IXpsOMMatrixTransform** matrixTransform) mut
			{
				return VT.GetTransformLocal(&this, matrixTransform);
			}
			public HRESULT SetTransformLocal(IXpsOMMatrixTransform* matrixTransform) mut
			{
				return VT.SetTransformLocal(&this, matrixTransform);
			}
			public HRESULT GetTransformLookup(PWSTR* key) mut
			{
				return VT.GetTransformLookup(&this, key);
			}
			public HRESULT SetTransformLookup(PWSTR key) mut
			{
				return VT.SetTransformLookup(&this, key);
			}
			public HRESULT GetClipGeometry(IXpsOMGeometry** clipGeometry) mut
			{
				return VT.GetClipGeometry(&this, clipGeometry);
			}
			public HRESULT GetClipGeometryLocal(IXpsOMGeometry** clipGeometry) mut
			{
				return VT.GetClipGeometryLocal(&this, clipGeometry);
			}
			public HRESULT SetClipGeometryLocal(IXpsOMGeometry* clipGeometry) mut
			{
				return VT.SetClipGeometryLocal(&this, clipGeometry);
			}
			public HRESULT GetClipGeometryLookup(PWSTR* key) mut
			{
				return VT.GetClipGeometryLookup(&this, key);
			}
			public HRESULT SetClipGeometryLookup(PWSTR key) mut
			{
				return VT.SetClipGeometryLookup(&this, key);
			}
			public HRESULT GetOpacity(float* opacity) mut
			{
				return VT.GetOpacity(&this, opacity);
			}
			public HRESULT SetOpacity(float opacity) mut
			{
				return VT.SetOpacity(&this, opacity);
			}
			public HRESULT GetOpacityMaskBrush(IXpsOMBrush** opacityMaskBrush) mut
			{
				return VT.GetOpacityMaskBrush(&this, opacityMaskBrush);
			}
			public HRESULT GetOpacityMaskBrushLocal(IXpsOMBrush** opacityMaskBrush) mut
			{
				return VT.GetOpacityMaskBrushLocal(&this, opacityMaskBrush);
			}
			public HRESULT SetOpacityMaskBrushLocal(IXpsOMBrush* opacityMaskBrush) mut
			{
				return VT.SetOpacityMaskBrushLocal(&this, opacityMaskBrush);
			}
			public HRESULT GetOpacityMaskBrushLookup(PWSTR* key) mut
			{
				return VT.GetOpacityMaskBrushLookup(&this, key);
			}
			public HRESULT SetOpacityMaskBrushLookup(PWSTR key) mut
			{
				return VT.SetOpacityMaskBrushLookup(&this, key);
			}
			public HRESULT GetName(PWSTR* name) mut
			{
				return VT.GetName(&this, name);
			}
			public HRESULT SetName(PWSTR name) mut
			{
				return VT.SetName(&this, name);
			}
			public HRESULT GetIsHyperlinkTarget(BOOL* isHyperlink) mut
			{
				return VT.GetIsHyperlinkTarget(&this, isHyperlink);
			}
			public HRESULT SetIsHyperlinkTarget(BOOL isHyperlink) mut
			{
				return VT.SetIsHyperlinkTarget(&this, isHyperlink);
			}
			public HRESULT GetHyperlinkNavigateUri(IUri** hyperlinkUri) mut
			{
				return VT.GetHyperlinkNavigateUri(&this, hyperlinkUri);
			}
			public HRESULT SetHyperlinkNavigateUri(IUri* hyperlinkUri) mut
			{
				return VT.SetHyperlinkNavigateUri(&this, hyperlinkUri);
			}
			public HRESULT GetLanguage(PWSTR* language) mut
			{
				return VT.GetLanguage(&this, language);
			}
			public HRESULT SetLanguage(PWSTR language) mut
			{
				return VT.SetLanguage(&this, language);
			}
			[CRepr]
			public struct VTable : IXpsOMShareable.VTable
			{
				public new function HRESULT(IXpsOMVisual *self, IXpsOMMatrixTransform** matrixTransform) GetTransform;
				public new function HRESULT(IXpsOMVisual *self, IXpsOMMatrixTransform** matrixTransform) GetTransformLocal;
				public new function HRESULT(IXpsOMVisual *self, IXpsOMMatrixTransform* matrixTransform) SetTransformLocal;
				public new function HRESULT(IXpsOMVisual *self, PWSTR* key) GetTransformLookup;
				public new function HRESULT(IXpsOMVisual *self, PWSTR key) SetTransformLookup;
				public new function HRESULT(IXpsOMVisual *self, IXpsOMGeometry** clipGeometry) GetClipGeometry;
				public new function HRESULT(IXpsOMVisual *self, IXpsOMGeometry** clipGeometry) GetClipGeometryLocal;
				public new function HRESULT(IXpsOMVisual *self, IXpsOMGeometry* clipGeometry) SetClipGeometryLocal;
				public new function HRESULT(IXpsOMVisual *self, PWSTR* key) GetClipGeometryLookup;
				public new function HRESULT(IXpsOMVisual *self, PWSTR key) SetClipGeometryLookup;
				public new function HRESULT(IXpsOMVisual *self, float* opacity) GetOpacity;
				public new function HRESULT(IXpsOMVisual *self, float opacity) SetOpacity;
				public new function HRESULT(IXpsOMVisual *self, IXpsOMBrush** opacityMaskBrush) GetOpacityMaskBrush;
				public new function HRESULT(IXpsOMVisual *self, IXpsOMBrush** opacityMaskBrush) GetOpacityMaskBrushLocal;
				public new function HRESULT(IXpsOMVisual *self, IXpsOMBrush* opacityMaskBrush) SetOpacityMaskBrushLocal;
				public new function HRESULT(IXpsOMVisual *self, PWSTR* key) GetOpacityMaskBrushLookup;
				public new function HRESULT(IXpsOMVisual *self, PWSTR key) SetOpacityMaskBrushLookup;
				public new function HRESULT(IXpsOMVisual *self, PWSTR* name) GetName;
				public new function HRESULT(IXpsOMVisual *self, PWSTR name) SetName;
				public new function HRESULT(IXpsOMVisual *self, BOOL* isHyperlink) GetIsHyperlinkTarget;
				public new function HRESULT(IXpsOMVisual *self, BOOL isHyperlink) SetIsHyperlinkTarget;
				public new function HRESULT(IXpsOMVisual *self, IUri** hyperlinkUri) GetHyperlinkNavigateUri;
				public new function HRESULT(IXpsOMVisual *self, IUri* hyperlinkUri) SetHyperlinkNavigateUri;
				public new function HRESULT(IXpsOMVisual *self, PWSTR* language) GetLanguage;
				public new function HRESULT(IXpsOMVisual *self, PWSTR language) SetLanguage;
			}
		}
		[CRepr]
		public struct IXpsOMPart : IUnknown
		{
			public const new Guid IID = .(0x74eb2f0b, 0xa91e, 0x4486, 0xaf, 0xac, 0x0f, 0xab, 0xec, 0xa3, 0xdf, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPartName(IOpcPartUri** partUri) mut
			{
				return VT.GetPartName(&this, partUri);
			}
			public HRESULT SetPartName(IOpcPartUri* partUri) mut
			{
				return VT.SetPartName(&this, partUri);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMPart *self, IOpcPartUri** partUri) GetPartName;
				public new function HRESULT(IXpsOMPart *self, IOpcPartUri* partUri) SetPartName;
			}
		}
		[CRepr]
		public struct IXpsOMGlyphsEditor : IUnknown
		{
			public const new Guid IID = .(0xa5ab8616, 0x5b16, 0x4b9f, 0x96, 0x29, 0x89, 0xb3, 0x23, 0xed, 0x79, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ApplyEdits() mut
			{
				return VT.ApplyEdits(&this);
			}
			public HRESULT GetUnicodeString(PWSTR* unicodeString) mut
			{
				return VT.GetUnicodeString(&this, unicodeString);
			}
			public HRESULT SetUnicodeString(PWSTR unicodeString) mut
			{
				return VT.SetUnicodeString(&this, unicodeString);
			}
			public HRESULT GetGlyphIndexCount(uint32* indexCount) mut
			{
				return VT.GetGlyphIndexCount(&this, indexCount);
			}
			public HRESULT GetGlyphIndices(uint32* indexCount, XPS_GLYPH_INDEX* glyphIndices) mut
			{
				return VT.GetGlyphIndices(&this, indexCount, glyphIndices);
			}
			public HRESULT SetGlyphIndices(uint32 indexCount, XPS_GLYPH_INDEX* glyphIndices) mut
			{
				return VT.SetGlyphIndices(&this, indexCount, glyphIndices);
			}
			public HRESULT GetGlyphMappingCount(uint32* glyphMappingCount) mut
			{
				return VT.GetGlyphMappingCount(&this, glyphMappingCount);
			}
			public HRESULT GetGlyphMappings(uint32* glyphMappingCount, XPS_GLYPH_MAPPING* glyphMappings) mut
			{
				return VT.GetGlyphMappings(&this, glyphMappingCount, glyphMappings);
			}
			public HRESULT SetGlyphMappings(uint32 glyphMappingCount, XPS_GLYPH_MAPPING* glyphMappings) mut
			{
				return VT.SetGlyphMappings(&this, glyphMappingCount, glyphMappings);
			}
			public HRESULT GetProhibitedCaretStopCount(uint32* prohibitedCaretStopCount) mut
			{
				return VT.GetProhibitedCaretStopCount(&this, prohibitedCaretStopCount);
			}
			public HRESULT GetProhibitedCaretStops(uint32* count, uint32* prohibitedCaretStops) mut
			{
				return VT.GetProhibitedCaretStops(&this, count, prohibitedCaretStops);
			}
			public HRESULT SetProhibitedCaretStops(uint32 count, uint32* prohibitedCaretStops) mut
			{
				return VT.SetProhibitedCaretStops(&this, count, prohibitedCaretStops);
			}
			public HRESULT GetBidiLevel(uint32* bidiLevel) mut
			{
				return VT.GetBidiLevel(&this, bidiLevel);
			}
			public HRESULT SetBidiLevel(uint32 bidiLevel) mut
			{
				return VT.SetBidiLevel(&this, bidiLevel);
			}
			public HRESULT GetIsSideways(BOOL* isSideways) mut
			{
				return VT.GetIsSideways(&this, isSideways);
			}
			public HRESULT SetIsSideways(BOOL isSideways) mut
			{
				return VT.SetIsSideways(&this, isSideways);
			}
			public HRESULT GetDeviceFontName(PWSTR* deviceFontName) mut
			{
				return VT.GetDeviceFontName(&this, deviceFontName);
			}
			public HRESULT SetDeviceFontName(PWSTR deviceFontName) mut
			{
				return VT.SetDeviceFontName(&this, deviceFontName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMGlyphsEditor *self) ApplyEdits;
				public new function HRESULT(IXpsOMGlyphsEditor *self, PWSTR* unicodeString) GetUnicodeString;
				public new function HRESULT(IXpsOMGlyphsEditor *self, PWSTR unicodeString) SetUnicodeString;
				public new function HRESULT(IXpsOMGlyphsEditor *self, uint32* indexCount) GetGlyphIndexCount;
				public new function HRESULT(IXpsOMGlyphsEditor *self, uint32* indexCount, XPS_GLYPH_INDEX* glyphIndices) GetGlyphIndices;
				public new function HRESULT(IXpsOMGlyphsEditor *self, uint32 indexCount, XPS_GLYPH_INDEX* glyphIndices) SetGlyphIndices;
				public new function HRESULT(IXpsOMGlyphsEditor *self, uint32* glyphMappingCount) GetGlyphMappingCount;
				public new function HRESULT(IXpsOMGlyphsEditor *self, uint32* glyphMappingCount, XPS_GLYPH_MAPPING* glyphMappings) GetGlyphMappings;
				public new function HRESULT(IXpsOMGlyphsEditor *self, uint32 glyphMappingCount, XPS_GLYPH_MAPPING* glyphMappings) SetGlyphMappings;
				public new function HRESULT(IXpsOMGlyphsEditor *self, uint32* prohibitedCaretStopCount) GetProhibitedCaretStopCount;
				public new function HRESULT(IXpsOMGlyphsEditor *self, uint32* count, uint32* prohibitedCaretStops) GetProhibitedCaretStops;
				public new function HRESULT(IXpsOMGlyphsEditor *self, uint32 count, uint32* prohibitedCaretStops) SetProhibitedCaretStops;
				public new function HRESULT(IXpsOMGlyphsEditor *self, uint32* bidiLevel) GetBidiLevel;
				public new function HRESULT(IXpsOMGlyphsEditor *self, uint32 bidiLevel) SetBidiLevel;
				public new function HRESULT(IXpsOMGlyphsEditor *self, BOOL* isSideways) GetIsSideways;
				public new function HRESULT(IXpsOMGlyphsEditor *self, BOOL isSideways) SetIsSideways;
				public new function HRESULT(IXpsOMGlyphsEditor *self, PWSTR* deviceFontName) GetDeviceFontName;
				public new function HRESULT(IXpsOMGlyphsEditor *self, PWSTR deviceFontName) SetDeviceFontName;
			}
		}
		[CRepr]
		public struct IXpsOMGlyphs : IXpsOMVisual
		{
			public const new Guid IID = .(0x819b3199, 0x0a5a, 0x4b64, 0xbe, 0xc7, 0xa9, 0xe1, 0x7e, 0x78, 0x0d, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUnicodeString(PWSTR* unicodeString) mut
			{
				return VT.GetUnicodeString(&this, unicodeString);
			}
			public HRESULT GetGlyphIndexCount(uint32* indexCount) mut
			{
				return VT.GetGlyphIndexCount(&this, indexCount);
			}
			public HRESULT GetGlyphIndices(uint32* indexCount, XPS_GLYPH_INDEX* glyphIndices) mut
			{
				return VT.GetGlyphIndices(&this, indexCount, glyphIndices);
			}
			public HRESULT GetGlyphMappingCount(uint32* glyphMappingCount) mut
			{
				return VT.GetGlyphMappingCount(&this, glyphMappingCount);
			}
			public HRESULT GetGlyphMappings(uint32* glyphMappingCount, XPS_GLYPH_MAPPING* glyphMappings) mut
			{
				return VT.GetGlyphMappings(&this, glyphMappingCount, glyphMappings);
			}
			public HRESULT GetProhibitedCaretStopCount(uint32* prohibitedCaretStopCount) mut
			{
				return VT.GetProhibitedCaretStopCount(&this, prohibitedCaretStopCount);
			}
			public HRESULT GetProhibitedCaretStops(uint32* prohibitedCaretStopCount, uint32* prohibitedCaretStops) mut
			{
				return VT.GetProhibitedCaretStops(&this, prohibitedCaretStopCount, prohibitedCaretStops);
			}
			public HRESULT GetBidiLevel(uint32* bidiLevel) mut
			{
				return VT.GetBidiLevel(&this, bidiLevel);
			}
			public HRESULT GetIsSideways(BOOL* isSideways) mut
			{
				return VT.GetIsSideways(&this, isSideways);
			}
			public HRESULT GetDeviceFontName(PWSTR* deviceFontName) mut
			{
				return VT.GetDeviceFontName(&this, deviceFontName);
			}
			public HRESULT GetStyleSimulations(XPS_STYLE_SIMULATION* styleSimulations) mut
			{
				return VT.GetStyleSimulations(&this, styleSimulations);
			}
			public HRESULT SetStyleSimulations(XPS_STYLE_SIMULATION styleSimulations) mut
			{
				return VT.SetStyleSimulations(&this, styleSimulations);
			}
			public HRESULT GetOrigin(XPS_POINT* origin) mut
			{
				return VT.GetOrigin(&this, origin);
			}
			public HRESULT SetOrigin(XPS_POINT* origin) mut
			{
				return VT.SetOrigin(&this, origin);
			}
			public HRESULT GetFontRenderingEmSize(float* fontRenderingEmSize) mut
			{
				return VT.GetFontRenderingEmSize(&this, fontRenderingEmSize);
			}
			public HRESULT SetFontRenderingEmSize(float fontRenderingEmSize) mut
			{
				return VT.SetFontRenderingEmSize(&this, fontRenderingEmSize);
			}
			public HRESULT GetFontResource(IXpsOMFontResource** fontResource) mut
			{
				return VT.GetFontResource(&this, fontResource);
			}
			public HRESULT SetFontResource(IXpsOMFontResource* fontResource) mut
			{
				return VT.SetFontResource(&this, fontResource);
			}
			public HRESULT GetFontFaceIndex(int16* fontFaceIndex) mut
			{
				return VT.GetFontFaceIndex(&this, fontFaceIndex);
			}
			public HRESULT SetFontFaceIndex(int16 fontFaceIndex) mut
			{
				return VT.SetFontFaceIndex(&this, fontFaceIndex);
			}
			public HRESULT GetFillBrush(IXpsOMBrush** fillBrush) mut
			{
				return VT.GetFillBrush(&this, fillBrush);
			}
			public HRESULT GetFillBrushLocal(IXpsOMBrush** fillBrush) mut
			{
				return VT.GetFillBrushLocal(&this, fillBrush);
			}
			public HRESULT SetFillBrushLocal(IXpsOMBrush* fillBrush) mut
			{
				return VT.SetFillBrushLocal(&this, fillBrush);
			}
			public HRESULT GetFillBrushLookup(PWSTR* key) mut
			{
				return VT.GetFillBrushLookup(&this, key);
			}
			public HRESULT SetFillBrushLookup(PWSTR key) mut
			{
				return VT.SetFillBrushLookup(&this, key);
			}
			public HRESULT GetGlyphsEditor(IXpsOMGlyphsEditor** editor) mut
			{
				return VT.GetGlyphsEditor(&this, editor);
			}
			public HRESULT Clone(IXpsOMGlyphs** glyphs) mut
			{
				return VT.Clone(&this, glyphs);
			}
			[CRepr]
			public struct VTable : IXpsOMVisual.VTable
			{
				public new function HRESULT(IXpsOMGlyphs *self, PWSTR* unicodeString) GetUnicodeString;
				public new function HRESULT(IXpsOMGlyphs *self, uint32* indexCount) GetGlyphIndexCount;
				public new function HRESULT(IXpsOMGlyphs *self, uint32* indexCount, XPS_GLYPH_INDEX* glyphIndices) GetGlyphIndices;
				public new function HRESULT(IXpsOMGlyphs *self, uint32* glyphMappingCount) GetGlyphMappingCount;
				public new function HRESULT(IXpsOMGlyphs *self, uint32* glyphMappingCount, XPS_GLYPH_MAPPING* glyphMappings) GetGlyphMappings;
				public new function HRESULT(IXpsOMGlyphs *self, uint32* prohibitedCaretStopCount) GetProhibitedCaretStopCount;
				public new function HRESULT(IXpsOMGlyphs *self, uint32* prohibitedCaretStopCount, uint32* prohibitedCaretStops) GetProhibitedCaretStops;
				public new function HRESULT(IXpsOMGlyphs *self, uint32* bidiLevel) GetBidiLevel;
				public new function HRESULT(IXpsOMGlyphs *self, BOOL* isSideways) GetIsSideways;
				public new function HRESULT(IXpsOMGlyphs *self, PWSTR* deviceFontName) GetDeviceFontName;
				public new function HRESULT(IXpsOMGlyphs *self, XPS_STYLE_SIMULATION* styleSimulations) GetStyleSimulations;
				public new function HRESULT(IXpsOMGlyphs *self, XPS_STYLE_SIMULATION styleSimulations) SetStyleSimulations;
				public new function HRESULT(IXpsOMGlyphs *self, XPS_POINT* origin) GetOrigin;
				public new function HRESULT(IXpsOMGlyphs *self, XPS_POINT* origin) SetOrigin;
				public new function HRESULT(IXpsOMGlyphs *self, float* fontRenderingEmSize) GetFontRenderingEmSize;
				public new function HRESULT(IXpsOMGlyphs *self, float fontRenderingEmSize) SetFontRenderingEmSize;
				public new function HRESULT(IXpsOMGlyphs *self, IXpsOMFontResource** fontResource) GetFontResource;
				public new function HRESULT(IXpsOMGlyphs *self, IXpsOMFontResource* fontResource) SetFontResource;
				public new function HRESULT(IXpsOMGlyphs *self, int16* fontFaceIndex) GetFontFaceIndex;
				public new function HRESULT(IXpsOMGlyphs *self, int16 fontFaceIndex) SetFontFaceIndex;
				public new function HRESULT(IXpsOMGlyphs *self, IXpsOMBrush** fillBrush) GetFillBrush;
				public new function HRESULT(IXpsOMGlyphs *self, IXpsOMBrush** fillBrush) GetFillBrushLocal;
				public new function HRESULT(IXpsOMGlyphs *self, IXpsOMBrush* fillBrush) SetFillBrushLocal;
				public new function HRESULT(IXpsOMGlyphs *self, PWSTR* key) GetFillBrushLookup;
				public new function HRESULT(IXpsOMGlyphs *self, PWSTR key) SetFillBrushLookup;
				public new function HRESULT(IXpsOMGlyphs *self, IXpsOMGlyphsEditor** editor) GetGlyphsEditor;
				public new function HRESULT(IXpsOMGlyphs *self, IXpsOMGlyphs** glyphs) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMDashCollection : IUnknown
		{
			public const new Guid IID = .(0x081613f4, 0x74eb, 0x48f2, 0x83, 0xb3, 0x37, 0xa9, 0xce, 0x2d, 0x7d, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, XPS_DASH* dash) mut
			{
				return VT.GetAt(&this, index, dash);
			}
			public HRESULT InsertAt(uint32 index, XPS_DASH* dash) mut
			{
				return VT.InsertAt(&this, index, dash);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT SetAt(uint32 index, XPS_DASH* dash) mut
			{
				return VT.SetAt(&this, index, dash);
			}
			public HRESULT Append(XPS_DASH* dash) mut
			{
				return VT.Append(&this, dash);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMDashCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMDashCollection *self, uint32 index, XPS_DASH* dash) GetAt;
				public new function HRESULT(IXpsOMDashCollection *self, uint32 index, XPS_DASH* dash) InsertAt;
				public new function HRESULT(IXpsOMDashCollection *self, uint32 index) RemoveAt;
				public new function HRESULT(IXpsOMDashCollection *self, uint32 index, XPS_DASH* dash) SetAt;
				public new function HRESULT(IXpsOMDashCollection *self, XPS_DASH* dash) Append;
			}
		}
		[CRepr]
		public struct IXpsOMMatrixTransform : IXpsOMShareable
		{
			public const new Guid IID = .(0xb77330ff, 0xbb37, 0x4501, 0xa9, 0x3e, 0xf1, 0xb1, 0xe5, 0x0b, 0xfc, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMatrix(XPS_MATRIX* matrix) mut
			{
				return VT.GetMatrix(&this, matrix);
			}
			public HRESULT SetMatrix(XPS_MATRIX* matrix) mut
			{
				return VT.SetMatrix(&this, matrix);
			}
			public HRESULT Clone(IXpsOMMatrixTransform** matrixTransform) mut
			{
				return VT.Clone(&this, matrixTransform);
			}
			[CRepr]
			public struct VTable : IXpsOMShareable.VTable
			{
				public new function HRESULT(IXpsOMMatrixTransform *self, XPS_MATRIX* matrix) GetMatrix;
				public new function HRESULT(IXpsOMMatrixTransform *self, XPS_MATRIX* matrix) SetMatrix;
				public new function HRESULT(IXpsOMMatrixTransform *self, IXpsOMMatrixTransform** matrixTransform) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGeometry : IXpsOMShareable
		{
			public const new Guid IID = .(0x64fcf3d7, 0x4d58, 0x44ba, 0xad, 0x73, 0xa1, 0x3a, 0xf6, 0x49, 0x20, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFigures(IXpsOMGeometryFigureCollection** figures) mut
			{
				return VT.GetFigures(&this, figures);
			}
			public HRESULT GetFillRule(XPS_FILL_RULE* fillRule) mut
			{
				return VT.GetFillRule(&this, fillRule);
			}
			public HRESULT SetFillRule(XPS_FILL_RULE fillRule) mut
			{
				return VT.SetFillRule(&this, fillRule);
			}
			public HRESULT GetTransform(IXpsOMMatrixTransform** transform) mut
			{
				return VT.GetTransform(&this, transform);
			}
			public HRESULT GetTransformLocal(IXpsOMMatrixTransform** transform) mut
			{
				return VT.GetTransformLocal(&this, transform);
			}
			public HRESULT SetTransformLocal(IXpsOMMatrixTransform* transform) mut
			{
				return VT.SetTransformLocal(&this, transform);
			}
			public HRESULT GetTransformLookup(PWSTR* lookup) mut
			{
				return VT.GetTransformLookup(&this, lookup);
			}
			public HRESULT SetTransformLookup(PWSTR lookup) mut
			{
				return VT.SetTransformLookup(&this, lookup);
			}
			public HRESULT Clone(IXpsOMGeometry** geometry) mut
			{
				return VT.Clone(&this, geometry);
			}
			[CRepr]
			public struct VTable : IXpsOMShareable.VTable
			{
				public new function HRESULT(IXpsOMGeometry *self, IXpsOMGeometryFigureCollection** figures) GetFigures;
				public new function HRESULT(IXpsOMGeometry *self, XPS_FILL_RULE* fillRule) GetFillRule;
				public new function HRESULT(IXpsOMGeometry *self, XPS_FILL_RULE fillRule) SetFillRule;
				public new function HRESULT(IXpsOMGeometry *self, IXpsOMMatrixTransform** transform) GetTransform;
				public new function HRESULT(IXpsOMGeometry *self, IXpsOMMatrixTransform** transform) GetTransformLocal;
				public new function HRESULT(IXpsOMGeometry *self, IXpsOMMatrixTransform* transform) SetTransformLocal;
				public new function HRESULT(IXpsOMGeometry *self, PWSTR* lookup) GetTransformLookup;
				public new function HRESULT(IXpsOMGeometry *self, PWSTR lookup) SetTransformLookup;
				public new function HRESULT(IXpsOMGeometry *self, IXpsOMGeometry** geometry) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGeometryFigure : IUnknown
		{
			public const new Guid IID = .(0xd410dc83, 0x908c, 0x443e, 0x89, 0x47, 0xb1, 0x79, 0x5d, 0x3c, 0x16, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwner(IXpsOMGeometry** owner) mut
			{
				return VT.GetOwner(&this, owner);
			}
			public HRESULT GetSegmentData(uint32* dataCount, float* segmentData) mut
			{
				return VT.GetSegmentData(&this, dataCount, segmentData);
			}
			public HRESULT GetSegmentTypes(uint32* segmentCount, XPS_SEGMENT_TYPE* segmentTypes) mut
			{
				return VT.GetSegmentTypes(&this, segmentCount, segmentTypes);
			}
			public HRESULT GetSegmentStrokes(uint32* segmentCount, BOOL* segmentStrokes) mut
			{
				return VT.GetSegmentStrokes(&this, segmentCount, segmentStrokes);
			}
			public HRESULT SetSegments(uint32 segmentCount, uint32 segmentDataCount, XPS_SEGMENT_TYPE* segmentTypes, float* segmentData, BOOL* segmentStrokes) mut
			{
				return VT.SetSegments(&this, segmentCount, segmentDataCount, segmentTypes, segmentData, segmentStrokes);
			}
			public HRESULT GetStartPoint(XPS_POINT* startPoint) mut
			{
				return VT.GetStartPoint(&this, startPoint);
			}
			public HRESULT SetStartPoint(XPS_POINT* startPoint) mut
			{
				return VT.SetStartPoint(&this, startPoint);
			}
			public HRESULT GetIsClosed(BOOL* isClosed) mut
			{
				return VT.GetIsClosed(&this, isClosed);
			}
			public HRESULT SetIsClosed(BOOL isClosed) mut
			{
				return VT.SetIsClosed(&this, isClosed);
			}
			public HRESULT GetIsFilled(BOOL* isFilled) mut
			{
				return VT.GetIsFilled(&this, isFilled);
			}
			public HRESULT SetIsFilled(BOOL isFilled) mut
			{
				return VT.SetIsFilled(&this, isFilled);
			}
			public HRESULT GetSegmentCount(uint32* segmentCount) mut
			{
				return VT.GetSegmentCount(&this, segmentCount);
			}
			public HRESULT GetSegmentDataCount(uint32* segmentDataCount) mut
			{
				return VT.GetSegmentDataCount(&this, segmentDataCount);
			}
			public HRESULT GetSegmentStrokePattern(XPS_SEGMENT_STROKE_PATTERN* segmentStrokePattern) mut
			{
				return VT.GetSegmentStrokePattern(&this, segmentStrokePattern);
			}
			public HRESULT Clone(IXpsOMGeometryFigure** geometryFigure) mut
			{
				return VT.Clone(&this, geometryFigure);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMGeometryFigure *self, IXpsOMGeometry** owner) GetOwner;
				public new function HRESULT(IXpsOMGeometryFigure *self, uint32* dataCount, float* segmentData) GetSegmentData;
				public new function HRESULT(IXpsOMGeometryFigure *self, uint32* segmentCount, XPS_SEGMENT_TYPE* segmentTypes) GetSegmentTypes;
				public new function HRESULT(IXpsOMGeometryFigure *self, uint32* segmentCount, BOOL* segmentStrokes) GetSegmentStrokes;
				public new function HRESULT(IXpsOMGeometryFigure *self, uint32 segmentCount, uint32 segmentDataCount, XPS_SEGMENT_TYPE* segmentTypes, float* segmentData, BOOL* segmentStrokes) SetSegments;
				public new function HRESULT(IXpsOMGeometryFigure *self, XPS_POINT* startPoint) GetStartPoint;
				public new function HRESULT(IXpsOMGeometryFigure *self, XPS_POINT* startPoint) SetStartPoint;
				public new function HRESULT(IXpsOMGeometryFigure *self, BOOL* isClosed) GetIsClosed;
				public new function HRESULT(IXpsOMGeometryFigure *self, BOOL isClosed) SetIsClosed;
				public new function HRESULT(IXpsOMGeometryFigure *self, BOOL* isFilled) GetIsFilled;
				public new function HRESULT(IXpsOMGeometryFigure *self, BOOL isFilled) SetIsFilled;
				public new function HRESULT(IXpsOMGeometryFigure *self, uint32* segmentCount) GetSegmentCount;
				public new function HRESULT(IXpsOMGeometryFigure *self, uint32* segmentDataCount) GetSegmentDataCount;
				public new function HRESULT(IXpsOMGeometryFigure *self, XPS_SEGMENT_STROKE_PATTERN* segmentStrokePattern) GetSegmentStrokePattern;
				public new function HRESULT(IXpsOMGeometryFigure *self, IXpsOMGeometryFigure** geometryFigure) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGeometryFigureCollection : IUnknown
		{
			public const new Guid IID = .(0xfd48c3f3, 0xa58e, 0x4b5a, 0x88, 0x26, 0x1d, 0xe5, 0x4a, 0xbe, 0x72, 0xb2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IXpsOMGeometryFigure** geometryFigure) mut
			{
				return VT.GetAt(&this, index, geometryFigure);
			}
			public HRESULT InsertAt(uint32 index, IXpsOMGeometryFigure* geometryFigure) mut
			{
				return VT.InsertAt(&this, index, geometryFigure);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT SetAt(uint32 index, IXpsOMGeometryFigure* geometryFigure) mut
			{
				return VT.SetAt(&this, index, geometryFigure);
			}
			public HRESULT Append(IXpsOMGeometryFigure* geometryFigure) mut
			{
				return VT.Append(&this, geometryFigure);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMGeometryFigureCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMGeometryFigureCollection *self, uint32 index, IXpsOMGeometryFigure** geometryFigure) GetAt;
				public new function HRESULT(IXpsOMGeometryFigureCollection *self, uint32 index, IXpsOMGeometryFigure* geometryFigure) InsertAt;
				public new function HRESULT(IXpsOMGeometryFigureCollection *self, uint32 index) RemoveAt;
				public new function HRESULT(IXpsOMGeometryFigureCollection *self, uint32 index, IXpsOMGeometryFigure* geometryFigure) SetAt;
				public new function HRESULT(IXpsOMGeometryFigureCollection *self, IXpsOMGeometryFigure* geometryFigure) Append;
			}
		}
		[CRepr]
		public struct IXpsOMPath : IXpsOMVisual
		{
			public const new Guid IID = .(0x37d38bb6, 0x3ee9, 0x4110, 0x93, 0x12, 0x14, 0xb1, 0x94, 0x16, 0x33, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGeometry(IXpsOMGeometry** geometry) mut
			{
				return VT.GetGeometry(&this, geometry);
			}
			public HRESULT GetGeometryLocal(IXpsOMGeometry** geometry) mut
			{
				return VT.GetGeometryLocal(&this, geometry);
			}
			public HRESULT SetGeometryLocal(IXpsOMGeometry* geometry) mut
			{
				return VT.SetGeometryLocal(&this, geometry);
			}
			public HRESULT GetGeometryLookup(PWSTR* lookup) mut
			{
				return VT.GetGeometryLookup(&this, lookup);
			}
			public HRESULT SetGeometryLookup(PWSTR lookup) mut
			{
				return VT.SetGeometryLookup(&this, lookup);
			}
			public HRESULT GetAccessibilityShortDescription(PWSTR* shortDescription) mut
			{
				return VT.GetAccessibilityShortDescription(&this, shortDescription);
			}
			public HRESULT SetAccessibilityShortDescription(PWSTR shortDescription) mut
			{
				return VT.SetAccessibilityShortDescription(&this, shortDescription);
			}
			public HRESULT GetAccessibilityLongDescription(PWSTR* longDescription) mut
			{
				return VT.GetAccessibilityLongDescription(&this, longDescription);
			}
			public HRESULT SetAccessibilityLongDescription(PWSTR longDescription) mut
			{
				return VT.SetAccessibilityLongDescription(&this, longDescription);
			}
			public HRESULT GetSnapsToPixels(BOOL* snapsToPixels) mut
			{
				return VT.GetSnapsToPixels(&this, snapsToPixels);
			}
			public HRESULT SetSnapsToPixels(BOOL snapsToPixels) mut
			{
				return VT.SetSnapsToPixels(&this, snapsToPixels);
			}
			public HRESULT GetStrokeBrush(IXpsOMBrush** brush) mut
			{
				return VT.GetStrokeBrush(&this, brush);
			}
			public HRESULT GetStrokeBrushLocal(IXpsOMBrush** brush) mut
			{
				return VT.GetStrokeBrushLocal(&this, brush);
			}
			public HRESULT SetStrokeBrushLocal(IXpsOMBrush* brush) mut
			{
				return VT.SetStrokeBrushLocal(&this, brush);
			}
			public HRESULT GetStrokeBrushLookup(PWSTR* lookup) mut
			{
				return VT.GetStrokeBrushLookup(&this, lookup);
			}
			public HRESULT SetStrokeBrushLookup(PWSTR lookup) mut
			{
				return VT.SetStrokeBrushLookup(&this, lookup);
			}
			public HRESULT GetStrokeDashes(IXpsOMDashCollection** strokeDashes) mut
			{
				return VT.GetStrokeDashes(&this, strokeDashes);
			}
			public HRESULT GetStrokeDashCap(XPS_DASH_CAP* strokeDashCap) mut
			{
				return VT.GetStrokeDashCap(&this, strokeDashCap);
			}
			public HRESULT SetStrokeDashCap(XPS_DASH_CAP strokeDashCap) mut
			{
				return VT.SetStrokeDashCap(&this, strokeDashCap);
			}
			public HRESULT GetStrokeDashOffset(float* strokeDashOffset) mut
			{
				return VT.GetStrokeDashOffset(&this, strokeDashOffset);
			}
			public HRESULT SetStrokeDashOffset(float strokeDashOffset) mut
			{
				return VT.SetStrokeDashOffset(&this, strokeDashOffset);
			}
			public HRESULT GetStrokeStartLineCap(XPS_LINE_CAP* strokeStartLineCap) mut
			{
				return VT.GetStrokeStartLineCap(&this, strokeStartLineCap);
			}
			public HRESULT SetStrokeStartLineCap(XPS_LINE_CAP strokeStartLineCap) mut
			{
				return VT.SetStrokeStartLineCap(&this, strokeStartLineCap);
			}
			public HRESULT GetStrokeEndLineCap(XPS_LINE_CAP* strokeEndLineCap) mut
			{
				return VT.GetStrokeEndLineCap(&this, strokeEndLineCap);
			}
			public HRESULT SetStrokeEndLineCap(XPS_LINE_CAP strokeEndLineCap) mut
			{
				return VT.SetStrokeEndLineCap(&this, strokeEndLineCap);
			}
			public HRESULT GetStrokeLineJoin(XPS_LINE_JOIN* strokeLineJoin) mut
			{
				return VT.GetStrokeLineJoin(&this, strokeLineJoin);
			}
			public HRESULT SetStrokeLineJoin(XPS_LINE_JOIN strokeLineJoin) mut
			{
				return VT.SetStrokeLineJoin(&this, strokeLineJoin);
			}
			public HRESULT GetStrokeMiterLimit(float* strokeMiterLimit) mut
			{
				return VT.GetStrokeMiterLimit(&this, strokeMiterLimit);
			}
			public HRESULT SetStrokeMiterLimit(float strokeMiterLimit) mut
			{
				return VT.SetStrokeMiterLimit(&this, strokeMiterLimit);
			}
			public HRESULT GetStrokeThickness(float* strokeThickness) mut
			{
				return VT.GetStrokeThickness(&this, strokeThickness);
			}
			public HRESULT SetStrokeThickness(float strokeThickness) mut
			{
				return VT.SetStrokeThickness(&this, strokeThickness);
			}
			public HRESULT GetFillBrush(IXpsOMBrush** brush) mut
			{
				return VT.GetFillBrush(&this, brush);
			}
			public HRESULT GetFillBrushLocal(IXpsOMBrush** brush) mut
			{
				return VT.GetFillBrushLocal(&this, brush);
			}
			public HRESULT SetFillBrushLocal(IXpsOMBrush* brush) mut
			{
				return VT.SetFillBrushLocal(&this, brush);
			}
			public HRESULT GetFillBrushLookup(PWSTR* lookup) mut
			{
				return VT.GetFillBrushLookup(&this, lookup);
			}
			public HRESULT SetFillBrushLookup(PWSTR lookup) mut
			{
				return VT.SetFillBrushLookup(&this, lookup);
			}
			public HRESULT Clone(IXpsOMPath** path) mut
			{
				return VT.Clone(&this, path);
			}
			[CRepr]
			public struct VTable : IXpsOMVisual.VTable
			{
				public new function HRESULT(IXpsOMPath *self, IXpsOMGeometry** geometry) GetGeometry;
				public new function HRESULT(IXpsOMPath *self, IXpsOMGeometry** geometry) GetGeometryLocal;
				public new function HRESULT(IXpsOMPath *self, IXpsOMGeometry* geometry) SetGeometryLocal;
				public new function HRESULT(IXpsOMPath *self, PWSTR* lookup) GetGeometryLookup;
				public new function HRESULT(IXpsOMPath *self, PWSTR lookup) SetGeometryLookup;
				public new function HRESULT(IXpsOMPath *self, PWSTR* shortDescription) GetAccessibilityShortDescription;
				public new function HRESULT(IXpsOMPath *self, PWSTR shortDescription) SetAccessibilityShortDescription;
				public new function HRESULT(IXpsOMPath *self, PWSTR* longDescription) GetAccessibilityLongDescription;
				public new function HRESULT(IXpsOMPath *self, PWSTR longDescription) SetAccessibilityLongDescription;
				public new function HRESULT(IXpsOMPath *self, BOOL* snapsToPixels) GetSnapsToPixels;
				public new function HRESULT(IXpsOMPath *self, BOOL snapsToPixels) SetSnapsToPixels;
				public new function HRESULT(IXpsOMPath *self, IXpsOMBrush** brush) GetStrokeBrush;
				public new function HRESULT(IXpsOMPath *self, IXpsOMBrush** brush) GetStrokeBrushLocal;
				public new function HRESULT(IXpsOMPath *self, IXpsOMBrush* brush) SetStrokeBrushLocal;
				public new function HRESULT(IXpsOMPath *self, PWSTR* lookup) GetStrokeBrushLookup;
				public new function HRESULT(IXpsOMPath *self, PWSTR lookup) SetStrokeBrushLookup;
				public new function HRESULT(IXpsOMPath *self, IXpsOMDashCollection** strokeDashes) GetStrokeDashes;
				public new function HRESULT(IXpsOMPath *self, XPS_DASH_CAP* strokeDashCap) GetStrokeDashCap;
				public new function HRESULT(IXpsOMPath *self, XPS_DASH_CAP strokeDashCap) SetStrokeDashCap;
				public new function HRESULT(IXpsOMPath *self, float* strokeDashOffset) GetStrokeDashOffset;
				public new function HRESULT(IXpsOMPath *self, float strokeDashOffset) SetStrokeDashOffset;
				public new function HRESULT(IXpsOMPath *self, XPS_LINE_CAP* strokeStartLineCap) GetStrokeStartLineCap;
				public new function HRESULT(IXpsOMPath *self, XPS_LINE_CAP strokeStartLineCap) SetStrokeStartLineCap;
				public new function HRESULT(IXpsOMPath *self, XPS_LINE_CAP* strokeEndLineCap) GetStrokeEndLineCap;
				public new function HRESULT(IXpsOMPath *self, XPS_LINE_CAP strokeEndLineCap) SetStrokeEndLineCap;
				public new function HRESULT(IXpsOMPath *self, XPS_LINE_JOIN* strokeLineJoin) GetStrokeLineJoin;
				public new function HRESULT(IXpsOMPath *self, XPS_LINE_JOIN strokeLineJoin) SetStrokeLineJoin;
				public new function HRESULT(IXpsOMPath *self, float* strokeMiterLimit) GetStrokeMiterLimit;
				public new function HRESULT(IXpsOMPath *self, float strokeMiterLimit) SetStrokeMiterLimit;
				public new function HRESULT(IXpsOMPath *self, float* strokeThickness) GetStrokeThickness;
				public new function HRESULT(IXpsOMPath *self, float strokeThickness) SetStrokeThickness;
				public new function HRESULT(IXpsOMPath *self, IXpsOMBrush** brush) GetFillBrush;
				public new function HRESULT(IXpsOMPath *self, IXpsOMBrush** brush) GetFillBrushLocal;
				public new function HRESULT(IXpsOMPath *self, IXpsOMBrush* brush) SetFillBrushLocal;
				public new function HRESULT(IXpsOMPath *self, PWSTR* lookup) GetFillBrushLookup;
				public new function HRESULT(IXpsOMPath *self, PWSTR lookup) SetFillBrushLookup;
				public new function HRESULT(IXpsOMPath *self, IXpsOMPath** path) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMBrush : IXpsOMShareable
		{
			public const new Guid IID = .(0x56a3f80c, 0xea4c, 0x4187, 0xa5, 0x7b, 0xa2, 0xa4, 0x73, 0xb2, 0xb4, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOpacity(float* opacity) mut
			{
				return VT.GetOpacity(&this, opacity);
			}
			public HRESULT SetOpacity(float opacity) mut
			{
				return VT.SetOpacity(&this, opacity);
			}
			[CRepr]
			public struct VTable : IXpsOMShareable.VTable
			{
				public new function HRESULT(IXpsOMBrush *self, float* opacity) GetOpacity;
				public new function HRESULT(IXpsOMBrush *self, float opacity) SetOpacity;
			}
		}
		[CRepr]
		public struct IXpsOMGradientStopCollection : IUnknown
		{
			public const new Guid IID = .(0xc9174c3a, 0x3cd3, 0x4319, 0xbd, 0xa4, 0x11, 0xa3, 0x93, 0x92, 0xce, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IXpsOMGradientStop** stop) mut
			{
				return VT.GetAt(&this, index, stop);
			}
			public HRESULT InsertAt(uint32 index, IXpsOMGradientStop* stop) mut
			{
				return VT.InsertAt(&this, index, stop);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT SetAt(uint32 index, IXpsOMGradientStop* stop) mut
			{
				return VT.SetAt(&this, index, stop);
			}
			public HRESULT Append(IXpsOMGradientStop* stop) mut
			{
				return VT.Append(&this, stop);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMGradientStopCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMGradientStopCollection *self, uint32 index, IXpsOMGradientStop** stop) GetAt;
				public new function HRESULT(IXpsOMGradientStopCollection *self, uint32 index, IXpsOMGradientStop* stop) InsertAt;
				public new function HRESULT(IXpsOMGradientStopCollection *self, uint32 index) RemoveAt;
				public new function HRESULT(IXpsOMGradientStopCollection *self, uint32 index, IXpsOMGradientStop* stop) SetAt;
				public new function HRESULT(IXpsOMGradientStopCollection *self, IXpsOMGradientStop* stop) Append;
			}
		}
		[CRepr]
		public struct IXpsOMSolidColorBrush : IXpsOMBrush
		{
			public const new Guid IID = .(0xa06f9f05, 0x3be9, 0x4763, 0x98, 0xa8, 0x09, 0x4f, 0xc6, 0x72, 0xe4, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetColor(XPS_COLOR* color, IXpsOMColorProfileResource** colorProfile) mut
			{
				return VT.GetColor(&this, color, colorProfile);
			}
			public HRESULT SetColor(XPS_COLOR* color, IXpsOMColorProfileResource* colorProfile) mut
			{
				return VT.SetColor(&this, color, colorProfile);
			}
			public HRESULT Clone(IXpsOMSolidColorBrush** solidColorBrush) mut
			{
				return VT.Clone(&this, solidColorBrush);
			}
			[CRepr]
			public struct VTable : IXpsOMBrush.VTable
			{
				public new function HRESULT(IXpsOMSolidColorBrush *self, XPS_COLOR* color, IXpsOMColorProfileResource** colorProfile) GetColor;
				public new function HRESULT(IXpsOMSolidColorBrush *self, XPS_COLOR* color, IXpsOMColorProfileResource* colorProfile) SetColor;
				public new function HRESULT(IXpsOMSolidColorBrush *self, IXpsOMSolidColorBrush** solidColorBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMTileBrush : IXpsOMBrush
		{
			public const new Guid IID = .(0x0fc2328d, 0xd722, 0x4a54, 0xb2, 0xec, 0xbe, 0x90, 0x21, 0x8a, 0x78, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTransform(IXpsOMMatrixTransform** transform) mut
			{
				return VT.GetTransform(&this, transform);
			}
			public HRESULT GetTransformLocal(IXpsOMMatrixTransform** transform) mut
			{
				return VT.GetTransformLocal(&this, transform);
			}
			public HRESULT SetTransformLocal(IXpsOMMatrixTransform* transform) mut
			{
				return VT.SetTransformLocal(&this, transform);
			}
			public HRESULT GetTransformLookup(PWSTR* key) mut
			{
				return VT.GetTransformLookup(&this, key);
			}
			public HRESULT SetTransformLookup(PWSTR key) mut
			{
				return VT.SetTransformLookup(&this, key);
			}
			public HRESULT GetViewbox(XPS_RECT* viewbox) mut
			{
				return VT.GetViewbox(&this, viewbox);
			}
			public HRESULT SetViewbox(XPS_RECT* viewbox) mut
			{
				return VT.SetViewbox(&this, viewbox);
			}
			public HRESULT GetViewport(XPS_RECT* viewport) mut
			{
				return VT.GetViewport(&this, viewport);
			}
			public HRESULT SetViewport(XPS_RECT* viewport) mut
			{
				return VT.SetViewport(&this, viewport);
			}
			public HRESULT GetTileMode(XPS_TILE_MODE* tileMode) mut
			{
				return VT.GetTileMode(&this, tileMode);
			}
			public HRESULT SetTileMode(XPS_TILE_MODE tileMode) mut
			{
				return VT.SetTileMode(&this, tileMode);
			}
			[CRepr]
			public struct VTable : IXpsOMBrush.VTable
			{
				public new function HRESULT(IXpsOMTileBrush *self, IXpsOMMatrixTransform** transform) GetTransform;
				public new function HRESULT(IXpsOMTileBrush *self, IXpsOMMatrixTransform** transform) GetTransformLocal;
				public new function HRESULT(IXpsOMTileBrush *self, IXpsOMMatrixTransform* transform) SetTransformLocal;
				public new function HRESULT(IXpsOMTileBrush *self, PWSTR* key) GetTransformLookup;
				public new function HRESULT(IXpsOMTileBrush *self, PWSTR key) SetTransformLookup;
				public new function HRESULT(IXpsOMTileBrush *self, XPS_RECT* viewbox) GetViewbox;
				public new function HRESULT(IXpsOMTileBrush *self, XPS_RECT* viewbox) SetViewbox;
				public new function HRESULT(IXpsOMTileBrush *self, XPS_RECT* viewport) GetViewport;
				public new function HRESULT(IXpsOMTileBrush *self, XPS_RECT* viewport) SetViewport;
				public new function HRESULT(IXpsOMTileBrush *self, XPS_TILE_MODE* tileMode) GetTileMode;
				public new function HRESULT(IXpsOMTileBrush *self, XPS_TILE_MODE tileMode) SetTileMode;
			}
		}
		[CRepr]
		public struct IXpsOMVisualBrush : IXpsOMTileBrush
		{
			public const new Guid IID = .(0x97e294af, 0x5b37, 0x46b4, 0x80, 0x57, 0x87, 0x4d, 0x2f, 0x64, 0x11, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVisual(IXpsOMVisual** visual) mut
			{
				return VT.GetVisual(&this, visual);
			}
			public HRESULT GetVisualLocal(IXpsOMVisual** visual) mut
			{
				return VT.GetVisualLocal(&this, visual);
			}
			public HRESULT SetVisualLocal(IXpsOMVisual* visual) mut
			{
				return VT.SetVisualLocal(&this, visual);
			}
			public HRESULT GetVisualLookup(PWSTR* lookup) mut
			{
				return VT.GetVisualLookup(&this, lookup);
			}
			public HRESULT SetVisualLookup(PWSTR lookup) mut
			{
				return VT.SetVisualLookup(&this, lookup);
			}
			public HRESULT Clone(IXpsOMVisualBrush** visualBrush) mut
			{
				return VT.Clone(&this, visualBrush);
			}
			[CRepr]
			public struct VTable : IXpsOMTileBrush.VTable
			{
				public new function HRESULT(IXpsOMVisualBrush *self, IXpsOMVisual** visual) GetVisual;
				public new function HRESULT(IXpsOMVisualBrush *self, IXpsOMVisual** visual) GetVisualLocal;
				public new function HRESULT(IXpsOMVisualBrush *self, IXpsOMVisual* visual) SetVisualLocal;
				public new function HRESULT(IXpsOMVisualBrush *self, PWSTR* lookup) GetVisualLookup;
				public new function HRESULT(IXpsOMVisualBrush *self, PWSTR lookup) SetVisualLookup;
				public new function HRESULT(IXpsOMVisualBrush *self, IXpsOMVisualBrush** visualBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMImageBrush : IXpsOMTileBrush
		{
			public const new Guid IID = .(0x3df0b466, 0xd382, 0x49ef, 0x85, 0x50, 0xdd, 0x94, 0xc8, 0x02, 0x42, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetImageResource(IXpsOMImageResource** imageResource) mut
			{
				return VT.GetImageResource(&this, imageResource);
			}
			public HRESULT SetImageResource(IXpsOMImageResource* imageResource) mut
			{
				return VT.SetImageResource(&this, imageResource);
			}
			public HRESULT GetColorProfileResource(IXpsOMColorProfileResource** colorProfileResource) mut
			{
				return VT.GetColorProfileResource(&this, colorProfileResource);
			}
			public HRESULT SetColorProfileResource(IXpsOMColorProfileResource* colorProfileResource) mut
			{
				return VT.SetColorProfileResource(&this, colorProfileResource);
			}
			public HRESULT Clone(IXpsOMImageBrush** imageBrush) mut
			{
				return VT.Clone(&this, imageBrush);
			}
			[CRepr]
			public struct VTable : IXpsOMTileBrush.VTable
			{
				public new function HRESULT(IXpsOMImageBrush *self, IXpsOMImageResource** imageResource) GetImageResource;
				public new function HRESULT(IXpsOMImageBrush *self, IXpsOMImageResource* imageResource) SetImageResource;
				public new function HRESULT(IXpsOMImageBrush *self, IXpsOMColorProfileResource** colorProfileResource) GetColorProfileResource;
				public new function HRESULT(IXpsOMImageBrush *self, IXpsOMColorProfileResource* colorProfileResource) SetColorProfileResource;
				public new function HRESULT(IXpsOMImageBrush *self, IXpsOMImageBrush** imageBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGradientStop : IUnknown
		{
			public const new Guid IID = .(0x5cf4f5cc, 0x3969, 0x49b5, 0xa7, 0x0a, 0x55, 0x50, 0xb6, 0x18, 0xfe, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwner(IXpsOMGradientBrush** owner) mut
			{
				return VT.GetOwner(&this, owner);
			}
			public HRESULT GetOffset(float* offset) mut
			{
				return VT.GetOffset(&this, offset);
			}
			public HRESULT SetOffset(float offset) mut
			{
				return VT.SetOffset(&this, offset);
			}
			public HRESULT GetColor(XPS_COLOR* color, IXpsOMColorProfileResource** colorProfile) mut
			{
				return VT.GetColor(&this, color, colorProfile);
			}
			public HRESULT SetColor(XPS_COLOR* color, IXpsOMColorProfileResource* colorProfile) mut
			{
				return VT.SetColor(&this, color, colorProfile);
			}
			public HRESULT Clone(IXpsOMGradientStop** gradientStop) mut
			{
				return VT.Clone(&this, gradientStop);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMGradientStop *self, IXpsOMGradientBrush** owner) GetOwner;
				public new function HRESULT(IXpsOMGradientStop *self, float* offset) GetOffset;
				public new function HRESULT(IXpsOMGradientStop *self, float offset) SetOffset;
				public new function HRESULT(IXpsOMGradientStop *self, XPS_COLOR* color, IXpsOMColorProfileResource** colorProfile) GetColor;
				public new function HRESULT(IXpsOMGradientStop *self, XPS_COLOR* color, IXpsOMColorProfileResource* colorProfile) SetColor;
				public new function HRESULT(IXpsOMGradientStop *self, IXpsOMGradientStop** gradientStop) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMGradientBrush : IXpsOMBrush
		{
			public const new Guid IID = .(0xedb59622, 0x61a2, 0x42c3, 0xba, 0xce, 0xac, 0xf2, 0x28, 0x6c, 0x06, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGradientStops(IXpsOMGradientStopCollection** gradientStops) mut
			{
				return VT.GetGradientStops(&this, gradientStops);
			}
			public HRESULT GetTransform(IXpsOMMatrixTransform** transform) mut
			{
				return VT.GetTransform(&this, transform);
			}
			public HRESULT GetTransformLocal(IXpsOMMatrixTransform** transform) mut
			{
				return VT.GetTransformLocal(&this, transform);
			}
			public HRESULT SetTransformLocal(IXpsOMMatrixTransform* transform) mut
			{
				return VT.SetTransformLocal(&this, transform);
			}
			public HRESULT GetTransformLookup(PWSTR* key) mut
			{
				return VT.GetTransformLookup(&this, key);
			}
			public HRESULT SetTransformLookup(PWSTR key) mut
			{
				return VT.SetTransformLookup(&this, key);
			}
			public HRESULT GetSpreadMethod(XPS_SPREAD_METHOD* spreadMethod) mut
			{
				return VT.GetSpreadMethod(&this, spreadMethod);
			}
			public HRESULT SetSpreadMethod(XPS_SPREAD_METHOD spreadMethod) mut
			{
				return VT.SetSpreadMethod(&this, spreadMethod);
			}
			public HRESULT GetColorInterpolationMode(XPS_COLOR_INTERPOLATION* colorInterpolationMode) mut
			{
				return VT.GetColorInterpolationMode(&this, colorInterpolationMode);
			}
			public HRESULT SetColorInterpolationMode(XPS_COLOR_INTERPOLATION colorInterpolationMode) mut
			{
				return VT.SetColorInterpolationMode(&this, colorInterpolationMode);
			}
			[CRepr]
			public struct VTable : IXpsOMBrush.VTable
			{
				public new function HRESULT(IXpsOMGradientBrush *self, IXpsOMGradientStopCollection** gradientStops) GetGradientStops;
				public new function HRESULT(IXpsOMGradientBrush *self, IXpsOMMatrixTransform** transform) GetTransform;
				public new function HRESULT(IXpsOMGradientBrush *self, IXpsOMMatrixTransform** transform) GetTransformLocal;
				public new function HRESULT(IXpsOMGradientBrush *self, IXpsOMMatrixTransform* transform) SetTransformLocal;
				public new function HRESULT(IXpsOMGradientBrush *self, PWSTR* key) GetTransformLookup;
				public new function HRESULT(IXpsOMGradientBrush *self, PWSTR key) SetTransformLookup;
				public new function HRESULT(IXpsOMGradientBrush *self, XPS_SPREAD_METHOD* spreadMethod) GetSpreadMethod;
				public new function HRESULT(IXpsOMGradientBrush *self, XPS_SPREAD_METHOD spreadMethod) SetSpreadMethod;
				public new function HRESULT(IXpsOMGradientBrush *self, XPS_COLOR_INTERPOLATION* colorInterpolationMode) GetColorInterpolationMode;
				public new function HRESULT(IXpsOMGradientBrush *self, XPS_COLOR_INTERPOLATION colorInterpolationMode) SetColorInterpolationMode;
			}
		}
		[CRepr]
		public struct IXpsOMLinearGradientBrush : IXpsOMGradientBrush
		{
			public const new Guid IID = .(0x005e279f, 0xc30d, 0x40ff, 0x93, 0xec, 0x19, 0x50, 0xd3, 0xc5, 0x28, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStartPoint(XPS_POINT* startPoint) mut
			{
				return VT.GetStartPoint(&this, startPoint);
			}
			public HRESULT SetStartPoint(XPS_POINT* startPoint) mut
			{
				return VT.SetStartPoint(&this, startPoint);
			}
			public HRESULT GetEndPoint(XPS_POINT* endPoint) mut
			{
				return VT.GetEndPoint(&this, endPoint);
			}
			public HRESULT SetEndPoint(XPS_POINT* endPoint) mut
			{
				return VT.SetEndPoint(&this, endPoint);
			}
			public HRESULT Clone(IXpsOMLinearGradientBrush** linearGradientBrush) mut
			{
				return VT.Clone(&this, linearGradientBrush);
			}
			[CRepr]
			public struct VTable : IXpsOMGradientBrush.VTable
			{
				public new function HRESULT(IXpsOMLinearGradientBrush *self, XPS_POINT* startPoint) GetStartPoint;
				public new function HRESULT(IXpsOMLinearGradientBrush *self, XPS_POINT* startPoint) SetStartPoint;
				public new function HRESULT(IXpsOMLinearGradientBrush *self, XPS_POINT* endPoint) GetEndPoint;
				public new function HRESULT(IXpsOMLinearGradientBrush *self, XPS_POINT* endPoint) SetEndPoint;
				public new function HRESULT(IXpsOMLinearGradientBrush *self, IXpsOMLinearGradientBrush** linearGradientBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMRadialGradientBrush : IXpsOMGradientBrush
		{
			public const new Guid IID = .(0x75f207e5, 0x08bf, 0x413c, 0x96, 0xb1, 0xb8, 0x2b, 0x40, 0x64, 0x17, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCenter(XPS_POINT* center) mut
			{
				return VT.GetCenter(&this, center);
			}
			public HRESULT SetCenter(XPS_POINT* center) mut
			{
				return VT.SetCenter(&this, center);
			}
			public HRESULT GetRadiiSizes(XPS_SIZE* radiiSizes) mut
			{
				return VT.GetRadiiSizes(&this, radiiSizes);
			}
			public HRESULT SetRadiiSizes(XPS_SIZE* radiiSizes) mut
			{
				return VT.SetRadiiSizes(&this, radiiSizes);
			}
			public HRESULT GetGradientOrigin(XPS_POINT* origin) mut
			{
				return VT.GetGradientOrigin(&this, origin);
			}
			public HRESULT SetGradientOrigin(XPS_POINT* origin) mut
			{
				return VT.SetGradientOrigin(&this, origin);
			}
			public HRESULT Clone(IXpsOMRadialGradientBrush** radialGradientBrush) mut
			{
				return VT.Clone(&this, radialGradientBrush);
			}
			[CRepr]
			public struct VTable : IXpsOMGradientBrush.VTable
			{
				public new function HRESULT(IXpsOMRadialGradientBrush *self, XPS_POINT* center) GetCenter;
				public new function HRESULT(IXpsOMRadialGradientBrush *self, XPS_POINT* center) SetCenter;
				public new function HRESULT(IXpsOMRadialGradientBrush *self, XPS_SIZE* radiiSizes) GetRadiiSizes;
				public new function HRESULT(IXpsOMRadialGradientBrush *self, XPS_SIZE* radiiSizes) SetRadiiSizes;
				public new function HRESULT(IXpsOMRadialGradientBrush *self, XPS_POINT* origin) GetGradientOrigin;
				public new function HRESULT(IXpsOMRadialGradientBrush *self, XPS_POINT* origin) SetGradientOrigin;
				public new function HRESULT(IXpsOMRadialGradientBrush *self, IXpsOMRadialGradientBrush** radialGradientBrush) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMResource : IXpsOMPart
		{
			public const new Guid IID = .(0xda2ac0a2, 0x73a2, 0x4975, 0xad, 0x14, 0x74, 0x09, 0x7c, 0x3f, 0xf3, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
			}
		}
		[CRepr]
		public struct IXpsOMPartResources : IUnknown
		{
			public const new Guid IID = .(0xf4cf7729, 0x4864, 0x4275, 0x99, 0xb3, 0xa8, 0x71, 0x71, 0x63, 0xec, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFontResources(IXpsOMFontResourceCollection** fontResources) mut
			{
				return VT.GetFontResources(&this, fontResources);
			}
			public HRESULT GetImageResources(IXpsOMImageResourceCollection** imageResources) mut
			{
				return VT.GetImageResources(&this, imageResources);
			}
			public HRESULT GetColorProfileResources(IXpsOMColorProfileResourceCollection** colorProfileResources) mut
			{
				return VT.GetColorProfileResources(&this, colorProfileResources);
			}
			public HRESULT GetRemoteDictionaryResources(IXpsOMRemoteDictionaryResourceCollection** dictionaryResources) mut
			{
				return VT.GetRemoteDictionaryResources(&this, dictionaryResources);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMPartResources *self, IXpsOMFontResourceCollection** fontResources) GetFontResources;
				public new function HRESULT(IXpsOMPartResources *self, IXpsOMImageResourceCollection** imageResources) GetImageResources;
				public new function HRESULT(IXpsOMPartResources *self, IXpsOMColorProfileResourceCollection** colorProfileResources) GetColorProfileResources;
				public new function HRESULT(IXpsOMPartResources *self, IXpsOMRemoteDictionaryResourceCollection** dictionaryResources) GetRemoteDictionaryResources;
			}
		}
		[CRepr]
		public struct IXpsOMDictionary : IUnknown
		{
			public const new Guid IID = .(0x897c86b8, 0x8eaf, 0x4ae3, 0xbd, 0xde, 0x56, 0x41, 0x9f, 0xcf, 0x42, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwner(IUnknown** owner) mut
			{
				return VT.GetOwner(&this, owner);
			}
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, PWSTR* key, IXpsOMShareable** entry) mut
			{
				return VT.GetAt(&this, index, key, entry);
			}
			public HRESULT GetByKey(PWSTR key, IXpsOMShareable* beforeEntry, IXpsOMShareable** entry) mut
			{
				return VT.GetByKey(&this, key, beforeEntry, entry);
			}
			public HRESULT GetIndex(IXpsOMShareable* entry, uint32* index) mut
			{
				return VT.GetIndex(&this, entry, index);
			}
			public HRESULT Append(PWSTR key, IXpsOMShareable* entry) mut
			{
				return VT.Append(&this, key, entry);
			}
			public HRESULT InsertAt(uint32 index, PWSTR key, IXpsOMShareable* entry) mut
			{
				return VT.InsertAt(&this, index, key, entry);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT SetAt(uint32 index, PWSTR key, IXpsOMShareable* entry) mut
			{
				return VT.SetAt(&this, index, key, entry);
			}
			public HRESULT Clone(IXpsOMDictionary** dictionary) mut
			{
				return VT.Clone(&this, dictionary);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMDictionary *self, IUnknown** owner) GetOwner;
				public new function HRESULT(IXpsOMDictionary *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMDictionary *self, uint32 index, PWSTR* key, IXpsOMShareable** entry) GetAt;
				public new function HRESULT(IXpsOMDictionary *self, PWSTR key, IXpsOMShareable* beforeEntry, IXpsOMShareable** entry) GetByKey;
				public new function HRESULT(IXpsOMDictionary *self, IXpsOMShareable* entry, uint32* index) GetIndex;
				public new function HRESULT(IXpsOMDictionary *self, PWSTR key, IXpsOMShareable* entry) Append;
				public new function HRESULT(IXpsOMDictionary *self, uint32 index, PWSTR key, IXpsOMShareable* entry) InsertAt;
				public new function HRESULT(IXpsOMDictionary *self, uint32 index) RemoveAt;
				public new function HRESULT(IXpsOMDictionary *self, uint32 index, PWSTR key, IXpsOMShareable* entry) SetAt;
				public new function HRESULT(IXpsOMDictionary *self, IXpsOMDictionary** dictionary) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMFontResource : IXpsOMResource
		{
			public const new Guid IID = .(0xa8c45708, 0x47d9, 0x4af4, 0x8d, 0x20, 0x33, 0xb4, 0x8c, 0x9b, 0x84, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStream(IStream** readerStream) mut
			{
				return VT.GetStream(&this, readerStream);
			}
			public HRESULT SetContent(IStream* sourceStream, XPS_FONT_EMBEDDING embeddingOption, IOpcPartUri* partName) mut
			{
				return VT.SetContent(&this, sourceStream, embeddingOption, partName);
			}
			public HRESULT GetEmbeddingOption(XPS_FONT_EMBEDDING* embeddingOption) mut
			{
				return VT.GetEmbeddingOption(&this, embeddingOption);
			}
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function HRESULT(IXpsOMFontResource *self, IStream** readerStream) GetStream;
				public new function HRESULT(IXpsOMFontResource *self, IStream* sourceStream, XPS_FONT_EMBEDDING embeddingOption, IOpcPartUri* partName) SetContent;
				public new function HRESULT(IXpsOMFontResource *self, XPS_FONT_EMBEDDING* embeddingOption) GetEmbeddingOption;
			}
		}
		[CRepr]
		public struct IXpsOMFontResourceCollection : IUnknown
		{
			public const new Guid IID = .(0x70b4a6bb, 0x88d4, 0x4fa8, 0xaa, 0xf9, 0x6d, 0x9c, 0x59, 0x6f, 0xdb, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IXpsOMFontResource** value) mut
			{
				return VT.GetAt(&this, index, value);
			}
			public HRESULT SetAt(uint32 index, IXpsOMFontResource* value) mut
			{
				return VT.SetAt(&this, index, value);
			}
			public HRESULT InsertAt(uint32 index, IXpsOMFontResource* value) mut
			{
				return VT.InsertAt(&this, index, value);
			}
			public HRESULT Append(IXpsOMFontResource* value) mut
			{
				return VT.Append(&this, value);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT GetByPartName(IOpcPartUri* partName, IXpsOMFontResource** part) mut
			{
				return VT.GetByPartName(&this, partName, part);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMFontResourceCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMFontResourceCollection *self, uint32 index, IXpsOMFontResource** value) GetAt;
				public new function HRESULT(IXpsOMFontResourceCollection *self, uint32 index, IXpsOMFontResource* value) SetAt;
				public new function HRESULT(IXpsOMFontResourceCollection *self, uint32 index, IXpsOMFontResource* value) InsertAt;
				public new function HRESULT(IXpsOMFontResourceCollection *self, IXpsOMFontResource* value) Append;
				public new function HRESULT(IXpsOMFontResourceCollection *self, uint32 index) RemoveAt;
				public new function HRESULT(IXpsOMFontResourceCollection *self, IOpcPartUri* partName, IXpsOMFontResource** part) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMImageResource : IXpsOMResource
		{
			public const new Guid IID = .(0x3db8417d, 0xae50, 0x485e, 0x9a, 0x44, 0xd7, 0x75, 0x8f, 0x78, 0xa2, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStream(IStream** readerStream) mut
			{
				return VT.GetStream(&this, readerStream);
			}
			public HRESULT SetContent(IStream* sourceStream, XPS_IMAGE_TYPE imageType, IOpcPartUri* partName) mut
			{
				return VT.SetContent(&this, sourceStream, imageType, partName);
			}
			public HRESULT GetImageType(XPS_IMAGE_TYPE* imageType) mut
			{
				return VT.GetImageType(&this, imageType);
			}
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function HRESULT(IXpsOMImageResource *self, IStream** readerStream) GetStream;
				public new function HRESULT(IXpsOMImageResource *self, IStream* sourceStream, XPS_IMAGE_TYPE imageType, IOpcPartUri* partName) SetContent;
				public new function HRESULT(IXpsOMImageResource *self, XPS_IMAGE_TYPE* imageType) GetImageType;
			}
		}
		[CRepr]
		public struct IXpsOMImageResourceCollection : IUnknown
		{
			public const new Guid IID = .(0x7a4a1a71, 0x9cde, 0x4b71, 0xb3, 0x3f, 0x62, 0xde, 0x84, 0x3e, 0xab, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IXpsOMImageResource** object) mut
			{
				return VT.GetAt(&this, index, object);
			}
			public HRESULT InsertAt(uint32 index, IXpsOMImageResource* object) mut
			{
				return VT.InsertAt(&this, index, object);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT SetAt(uint32 index, IXpsOMImageResource* object) mut
			{
				return VT.SetAt(&this, index, object);
			}
			public HRESULT Append(IXpsOMImageResource* object) mut
			{
				return VT.Append(&this, object);
			}
			public HRESULT GetByPartName(IOpcPartUri* partName, IXpsOMImageResource** part) mut
			{
				return VT.GetByPartName(&this, partName, part);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMImageResourceCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMImageResourceCollection *self, uint32 index, IXpsOMImageResource** object) GetAt;
				public new function HRESULT(IXpsOMImageResourceCollection *self, uint32 index, IXpsOMImageResource* object) InsertAt;
				public new function HRESULT(IXpsOMImageResourceCollection *self, uint32 index) RemoveAt;
				public new function HRESULT(IXpsOMImageResourceCollection *self, uint32 index, IXpsOMImageResource* object) SetAt;
				public new function HRESULT(IXpsOMImageResourceCollection *self, IXpsOMImageResource* object) Append;
				public new function HRESULT(IXpsOMImageResourceCollection *self, IOpcPartUri* partName, IXpsOMImageResource** part) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMColorProfileResource : IXpsOMResource
		{
			public const new Guid IID = .(0x67bd7d69, 0x1eef, 0x4bb1, 0xb5, 0xe7, 0x6f, 0x4f, 0x87, 0xbe, 0x8a, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStream(IStream** stream) mut
			{
				return VT.GetStream(&this, stream);
			}
			public HRESULT SetContent(IStream* sourceStream, IOpcPartUri* partName) mut
			{
				return VT.SetContent(&this, sourceStream, partName);
			}
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function HRESULT(IXpsOMColorProfileResource *self, IStream** stream) GetStream;
				public new function HRESULT(IXpsOMColorProfileResource *self, IStream* sourceStream, IOpcPartUri* partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMColorProfileResourceCollection : IUnknown
		{
			public const new Guid IID = .(0x12759630, 0x5fba, 0x4283, 0x8f, 0x7d, 0xcc, 0xa8, 0x49, 0x80, 0x9e, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IXpsOMColorProfileResource** object) mut
			{
				return VT.GetAt(&this, index, object);
			}
			public HRESULT InsertAt(uint32 index, IXpsOMColorProfileResource* object) mut
			{
				return VT.InsertAt(&this, index, object);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT SetAt(uint32 index, IXpsOMColorProfileResource* object) mut
			{
				return VT.SetAt(&this, index, object);
			}
			public HRESULT Append(IXpsOMColorProfileResource* object) mut
			{
				return VT.Append(&this, object);
			}
			public HRESULT GetByPartName(IOpcPartUri* partName, IXpsOMColorProfileResource** part) mut
			{
				return VT.GetByPartName(&this, partName, part);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMColorProfileResourceCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMColorProfileResourceCollection *self, uint32 index, IXpsOMColorProfileResource** object) GetAt;
				public new function HRESULT(IXpsOMColorProfileResourceCollection *self, uint32 index, IXpsOMColorProfileResource* object) InsertAt;
				public new function HRESULT(IXpsOMColorProfileResourceCollection *self, uint32 index) RemoveAt;
				public new function HRESULT(IXpsOMColorProfileResourceCollection *self, uint32 index, IXpsOMColorProfileResource* object) SetAt;
				public new function HRESULT(IXpsOMColorProfileResourceCollection *self, IXpsOMColorProfileResource* object) Append;
				public new function HRESULT(IXpsOMColorProfileResourceCollection *self, IOpcPartUri* partName, IXpsOMColorProfileResource** part) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMPrintTicketResource : IXpsOMResource
		{
			public const new Guid IID = .(0xe7ff32d2, 0x34aa, 0x499b, 0xbb, 0xe9, 0x9c, 0xd4, 0xee, 0x6c, 0x59, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStream(IStream** stream) mut
			{
				return VT.GetStream(&this, stream);
			}
			public HRESULT SetContent(IStream* sourceStream, IOpcPartUri* partName) mut
			{
				return VT.SetContent(&this, sourceStream, partName);
			}
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function HRESULT(IXpsOMPrintTicketResource *self, IStream** stream) GetStream;
				public new function HRESULT(IXpsOMPrintTicketResource *self, IStream* sourceStream, IOpcPartUri* partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMRemoteDictionaryResource : IXpsOMResource
		{
			public const new Guid IID = .(0xc9bd7cd4, 0xe16a, 0x4bf8, 0x8c, 0x84, 0xc9, 0x50, 0xaf, 0x7a, 0x30, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDictionary(IXpsOMDictionary** dictionary) mut
			{
				return VT.GetDictionary(&this, dictionary);
			}
			public HRESULT SetDictionary(IXpsOMDictionary* dictionary) mut
			{
				return VT.SetDictionary(&this, dictionary);
			}
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function HRESULT(IXpsOMRemoteDictionaryResource *self, IXpsOMDictionary** dictionary) GetDictionary;
				public new function HRESULT(IXpsOMRemoteDictionaryResource *self, IXpsOMDictionary* dictionary) SetDictionary;
			}
		}
		[CRepr]
		public struct IXpsOMRemoteDictionaryResourceCollection : IUnknown
		{
			public const new Guid IID = .(0x5c38db61, 0x7fec, 0x464a, 0x87, 0xbd, 0x41, 0xe3, 0xbe, 0xf0, 0x18, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IXpsOMRemoteDictionaryResource** object) mut
			{
				return VT.GetAt(&this, index, object);
			}
			public HRESULT InsertAt(uint32 index, IXpsOMRemoteDictionaryResource* object) mut
			{
				return VT.InsertAt(&this, index, object);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT SetAt(uint32 index, IXpsOMRemoteDictionaryResource* object) mut
			{
				return VT.SetAt(&this, index, object);
			}
			public HRESULT Append(IXpsOMRemoteDictionaryResource* object) mut
			{
				return VT.Append(&this, object);
			}
			public HRESULT GetByPartName(IOpcPartUri* partName, IXpsOMRemoteDictionaryResource** remoteDictionaryResource) mut
			{
				return VT.GetByPartName(&this, partName, remoteDictionaryResource);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, uint32 index, IXpsOMRemoteDictionaryResource** object) GetAt;
				public new function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, uint32 index, IXpsOMRemoteDictionaryResource* object) InsertAt;
				public new function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, uint32 index) RemoveAt;
				public new function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, uint32 index, IXpsOMRemoteDictionaryResource* object) SetAt;
				public new function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, IXpsOMRemoteDictionaryResource* object) Append;
				public new function HRESULT(IXpsOMRemoteDictionaryResourceCollection *self, IOpcPartUri* partName, IXpsOMRemoteDictionaryResource** remoteDictionaryResource) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMSignatureBlockResourceCollection : IUnknown
		{
			public const new Guid IID = .(0xab8f5d8e, 0x351b, 0x4d33, 0xaa, 0xed, 0xfa, 0x56, 0xf0, 0x02, 0x29, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IXpsOMSignatureBlockResource** signatureBlockResource) mut
			{
				return VT.GetAt(&this, index, signatureBlockResource);
			}
			public HRESULT InsertAt(uint32 index, IXpsOMSignatureBlockResource* signatureBlockResource) mut
			{
				return VT.InsertAt(&this, index, signatureBlockResource);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT SetAt(uint32 index, IXpsOMSignatureBlockResource* signatureBlockResource) mut
			{
				return VT.SetAt(&this, index, signatureBlockResource);
			}
			public HRESULT Append(IXpsOMSignatureBlockResource* signatureBlockResource) mut
			{
				return VT.Append(&this, signatureBlockResource);
			}
			public HRESULT GetByPartName(IOpcPartUri* partName, IXpsOMSignatureBlockResource** signatureBlockResource) mut
			{
				return VT.GetByPartName(&this, partName, signatureBlockResource);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMSignatureBlockResourceCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMSignatureBlockResourceCollection *self, uint32 index, IXpsOMSignatureBlockResource** signatureBlockResource) GetAt;
				public new function HRESULT(IXpsOMSignatureBlockResourceCollection *self, uint32 index, IXpsOMSignatureBlockResource* signatureBlockResource) InsertAt;
				public new function HRESULT(IXpsOMSignatureBlockResourceCollection *self, uint32 index) RemoveAt;
				public new function HRESULT(IXpsOMSignatureBlockResourceCollection *self, uint32 index, IXpsOMSignatureBlockResource* signatureBlockResource) SetAt;
				public new function HRESULT(IXpsOMSignatureBlockResourceCollection *self, IXpsOMSignatureBlockResource* signatureBlockResource) Append;
				public new function HRESULT(IXpsOMSignatureBlockResourceCollection *self, IOpcPartUri* partName, IXpsOMSignatureBlockResource** signatureBlockResource) GetByPartName;
			}
		}
		[CRepr]
		public struct IXpsOMDocumentStructureResource : IXpsOMResource
		{
			public const new Guid IID = .(0x85febc8a, 0x6b63, 0x48a9, 0xaf, 0x07, 0x70, 0x64, 0xe4, 0xec, 0xff, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwner(IXpsOMDocument** owner) mut
			{
				return VT.GetOwner(&this, owner);
			}
			public HRESULT GetStream(IStream** stream) mut
			{
				return VT.GetStream(&this, stream);
			}
			public HRESULT SetContent(IStream* sourceStream, IOpcPartUri* partName) mut
			{
				return VT.SetContent(&this, sourceStream, partName);
			}
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function HRESULT(IXpsOMDocumentStructureResource *self, IXpsOMDocument** owner) GetOwner;
				public new function HRESULT(IXpsOMDocumentStructureResource *self, IStream** stream) GetStream;
				public new function HRESULT(IXpsOMDocumentStructureResource *self, IStream* sourceStream, IOpcPartUri* partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMStoryFragmentsResource : IXpsOMResource
		{
			public const new Guid IID = .(0xc2b3ca09, 0x0473, 0x4282, 0x87, 0xae, 0x17, 0x80, 0x86, 0x32, 0x23, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwner(IXpsOMPageReference** owner) mut
			{
				return VT.GetOwner(&this, owner);
			}
			public HRESULT GetStream(IStream** stream) mut
			{
				return VT.GetStream(&this, stream);
			}
			public HRESULT SetContent(IStream* sourceStream, IOpcPartUri* partName) mut
			{
				return VT.SetContent(&this, sourceStream, partName);
			}
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function HRESULT(IXpsOMStoryFragmentsResource *self, IXpsOMPageReference** owner) GetOwner;
				public new function HRESULT(IXpsOMStoryFragmentsResource *self, IStream** stream) GetStream;
				public new function HRESULT(IXpsOMStoryFragmentsResource *self, IStream* sourceStream, IOpcPartUri* partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMSignatureBlockResource : IXpsOMResource
		{
			public const new Guid IID = .(0x4776ad35, 0x2e04, 0x4357, 0x87, 0x43, 0xeb, 0xf6, 0xc1, 0x71, 0xa9, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwner(IXpsOMDocument** owner) mut
			{
				return VT.GetOwner(&this, owner);
			}
			public HRESULT GetStream(IStream** stream) mut
			{
				return VT.GetStream(&this, stream);
			}
			public HRESULT SetContent(IStream* sourceStream, IOpcPartUri* partName) mut
			{
				return VT.SetContent(&this, sourceStream, partName);
			}
			[CRepr]
			public struct VTable : IXpsOMResource.VTable
			{
				public new function HRESULT(IXpsOMSignatureBlockResource *self, IXpsOMDocument** owner) GetOwner;
				public new function HRESULT(IXpsOMSignatureBlockResource *self, IStream** stream) GetStream;
				public new function HRESULT(IXpsOMSignatureBlockResource *self, IStream* sourceStream, IOpcPartUri* partName) SetContent;
			}
		}
		[CRepr]
		public struct IXpsOMVisualCollection : IUnknown
		{
			public const new Guid IID = .(0x94d8abde, 0xab91, 0x46a8, 0x82, 0xb7, 0xf5, 0xb0, 0x5e, 0xf0, 0x1a, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IXpsOMVisual** object) mut
			{
				return VT.GetAt(&this, index, object);
			}
			public HRESULT InsertAt(uint32 index, IXpsOMVisual* object) mut
			{
				return VT.InsertAt(&this, index, object);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT SetAt(uint32 index, IXpsOMVisual* object) mut
			{
				return VT.SetAt(&this, index, object);
			}
			public HRESULT Append(IXpsOMVisual* object) mut
			{
				return VT.Append(&this, object);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMVisualCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMVisualCollection *self, uint32 index, IXpsOMVisual** object) GetAt;
				public new function HRESULT(IXpsOMVisualCollection *self, uint32 index, IXpsOMVisual* object) InsertAt;
				public new function HRESULT(IXpsOMVisualCollection *self, uint32 index) RemoveAt;
				public new function HRESULT(IXpsOMVisualCollection *self, uint32 index, IXpsOMVisual* object) SetAt;
				public new function HRESULT(IXpsOMVisualCollection *self, IXpsOMVisual* object) Append;
			}
		}
		[CRepr]
		public struct IXpsOMCanvas : IXpsOMVisual
		{
			public const new Guid IID = .(0x221d1452, 0x331e, 0x47c6, 0x87, 0xe9, 0x6c, 0xce, 0xfb, 0x9b, 0x5b, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVisuals(IXpsOMVisualCollection** visuals) mut
			{
				return VT.GetVisuals(&this, visuals);
			}
			public HRESULT GetUseAliasedEdgeMode(BOOL* useAliasedEdgeMode) mut
			{
				return VT.GetUseAliasedEdgeMode(&this, useAliasedEdgeMode);
			}
			public HRESULT SetUseAliasedEdgeMode(BOOL useAliasedEdgeMode) mut
			{
				return VT.SetUseAliasedEdgeMode(&this, useAliasedEdgeMode);
			}
			public HRESULT GetAccessibilityShortDescription(PWSTR* shortDescription) mut
			{
				return VT.GetAccessibilityShortDescription(&this, shortDescription);
			}
			public HRESULT SetAccessibilityShortDescription(PWSTR shortDescription) mut
			{
				return VT.SetAccessibilityShortDescription(&this, shortDescription);
			}
			public HRESULT GetAccessibilityLongDescription(PWSTR* longDescription) mut
			{
				return VT.GetAccessibilityLongDescription(&this, longDescription);
			}
			public HRESULT SetAccessibilityLongDescription(PWSTR longDescription) mut
			{
				return VT.SetAccessibilityLongDescription(&this, longDescription);
			}
			public HRESULT GetDictionary(IXpsOMDictionary** resourceDictionary) mut
			{
				return VT.GetDictionary(&this, resourceDictionary);
			}
			public HRESULT GetDictionaryLocal(IXpsOMDictionary** resourceDictionary) mut
			{
				return VT.GetDictionaryLocal(&this, resourceDictionary);
			}
			public HRESULT SetDictionaryLocal(IXpsOMDictionary* resourceDictionary) mut
			{
				return VT.SetDictionaryLocal(&this, resourceDictionary);
			}
			public HRESULT GetDictionaryResource(IXpsOMRemoteDictionaryResource** remoteDictionaryResource) mut
			{
				return VT.GetDictionaryResource(&this, remoteDictionaryResource);
			}
			public HRESULT SetDictionaryResource(IXpsOMRemoteDictionaryResource* remoteDictionaryResource) mut
			{
				return VT.SetDictionaryResource(&this, remoteDictionaryResource);
			}
			public HRESULT Clone(IXpsOMCanvas** canvas) mut
			{
				return VT.Clone(&this, canvas);
			}
			[CRepr]
			public struct VTable : IXpsOMVisual.VTable
			{
				public new function HRESULT(IXpsOMCanvas *self, IXpsOMVisualCollection** visuals) GetVisuals;
				public new function HRESULT(IXpsOMCanvas *self, BOOL* useAliasedEdgeMode) GetUseAliasedEdgeMode;
				public new function HRESULT(IXpsOMCanvas *self, BOOL useAliasedEdgeMode) SetUseAliasedEdgeMode;
				public new function HRESULT(IXpsOMCanvas *self, PWSTR* shortDescription) GetAccessibilityShortDescription;
				public new function HRESULT(IXpsOMCanvas *self, PWSTR shortDescription) SetAccessibilityShortDescription;
				public new function HRESULT(IXpsOMCanvas *self, PWSTR* longDescription) GetAccessibilityLongDescription;
				public new function HRESULT(IXpsOMCanvas *self, PWSTR longDescription) SetAccessibilityLongDescription;
				public new function HRESULT(IXpsOMCanvas *self, IXpsOMDictionary** resourceDictionary) GetDictionary;
				public new function HRESULT(IXpsOMCanvas *self, IXpsOMDictionary** resourceDictionary) GetDictionaryLocal;
				public new function HRESULT(IXpsOMCanvas *self, IXpsOMDictionary* resourceDictionary) SetDictionaryLocal;
				public new function HRESULT(IXpsOMCanvas *self, IXpsOMRemoteDictionaryResource** remoteDictionaryResource) GetDictionaryResource;
				public new function HRESULT(IXpsOMCanvas *self, IXpsOMRemoteDictionaryResource* remoteDictionaryResource) SetDictionaryResource;
				public new function HRESULT(IXpsOMCanvas *self, IXpsOMCanvas** canvas) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMPage : IXpsOMPart
		{
			public const new Guid IID = .(0xd3e18888, 0xf120, 0x4fee, 0x8c, 0x68, 0x35, 0x29, 0x6e, 0xae, 0x91, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwner(IXpsOMPageReference** pageReference) mut
			{
				return VT.GetOwner(&this, pageReference);
			}
			public HRESULT GetVisuals(IXpsOMVisualCollection** visuals) mut
			{
				return VT.GetVisuals(&this, visuals);
			}
			public HRESULT GetPageDimensions(XPS_SIZE* pageDimensions) mut
			{
				return VT.GetPageDimensions(&this, pageDimensions);
			}
			public HRESULT SetPageDimensions(XPS_SIZE* pageDimensions) mut
			{
				return VT.SetPageDimensions(&this, pageDimensions);
			}
			public HRESULT GetContentBox(XPS_RECT* contentBox) mut
			{
				return VT.GetContentBox(&this, contentBox);
			}
			public HRESULT SetContentBox(XPS_RECT* contentBox) mut
			{
				return VT.SetContentBox(&this, contentBox);
			}
			public HRESULT GetBleedBox(XPS_RECT* bleedBox) mut
			{
				return VT.GetBleedBox(&this, bleedBox);
			}
			public HRESULT SetBleedBox(XPS_RECT* bleedBox) mut
			{
				return VT.SetBleedBox(&this, bleedBox);
			}
			public HRESULT GetLanguage(PWSTR* language) mut
			{
				return VT.GetLanguage(&this, language);
			}
			public HRESULT SetLanguage(PWSTR language) mut
			{
				return VT.SetLanguage(&this, language);
			}
			public HRESULT GetName(PWSTR* name) mut
			{
				return VT.GetName(&this, name);
			}
			public HRESULT SetName(PWSTR name) mut
			{
				return VT.SetName(&this, name);
			}
			public HRESULT GetIsHyperlinkTarget(BOOL* isHyperlinkTarget) mut
			{
				return VT.GetIsHyperlinkTarget(&this, isHyperlinkTarget);
			}
			public HRESULT SetIsHyperlinkTarget(BOOL isHyperlinkTarget) mut
			{
				return VT.SetIsHyperlinkTarget(&this, isHyperlinkTarget);
			}
			public HRESULT GetDictionary(IXpsOMDictionary** resourceDictionary) mut
			{
				return VT.GetDictionary(&this, resourceDictionary);
			}
			public HRESULT GetDictionaryLocal(IXpsOMDictionary** resourceDictionary) mut
			{
				return VT.GetDictionaryLocal(&this, resourceDictionary);
			}
			public HRESULT SetDictionaryLocal(IXpsOMDictionary* resourceDictionary) mut
			{
				return VT.SetDictionaryLocal(&this, resourceDictionary);
			}
			public HRESULT GetDictionaryResource(IXpsOMRemoteDictionaryResource** remoteDictionaryResource) mut
			{
				return VT.GetDictionaryResource(&this, remoteDictionaryResource);
			}
			public HRESULT SetDictionaryResource(IXpsOMRemoteDictionaryResource* remoteDictionaryResource) mut
			{
				return VT.SetDictionaryResource(&this, remoteDictionaryResource);
			}
			public HRESULT Write(ISequentialStream* stream, BOOL optimizeMarkupSize) mut
			{
				return VT.Write(&this, stream, optimizeMarkupSize);
			}
			public HRESULT GenerateUnusedLookupKey(XPS_OBJECT_TYPE type, PWSTR* key) mut
			{
				return VT.GenerateUnusedLookupKey(&this, type, key);
			}
			public HRESULT Clone(IXpsOMPage** page) mut
			{
				return VT.Clone(&this, page);
			}
			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
				public new function HRESULT(IXpsOMPage *self, IXpsOMPageReference** pageReference) GetOwner;
				public new function HRESULT(IXpsOMPage *self, IXpsOMVisualCollection** visuals) GetVisuals;
				public new function HRESULT(IXpsOMPage *self, XPS_SIZE* pageDimensions) GetPageDimensions;
				public new function HRESULT(IXpsOMPage *self, XPS_SIZE* pageDimensions) SetPageDimensions;
				public new function HRESULT(IXpsOMPage *self, XPS_RECT* contentBox) GetContentBox;
				public new function HRESULT(IXpsOMPage *self, XPS_RECT* contentBox) SetContentBox;
				public new function HRESULT(IXpsOMPage *self, XPS_RECT* bleedBox) GetBleedBox;
				public new function HRESULT(IXpsOMPage *self, XPS_RECT* bleedBox) SetBleedBox;
				public new function HRESULT(IXpsOMPage *self, PWSTR* language) GetLanguage;
				public new function HRESULT(IXpsOMPage *self, PWSTR language) SetLanguage;
				public new function HRESULT(IXpsOMPage *self, PWSTR* name) GetName;
				public new function HRESULT(IXpsOMPage *self, PWSTR name) SetName;
				public new function HRESULT(IXpsOMPage *self, BOOL* isHyperlinkTarget) GetIsHyperlinkTarget;
				public new function HRESULT(IXpsOMPage *self, BOOL isHyperlinkTarget) SetIsHyperlinkTarget;
				public new function HRESULT(IXpsOMPage *self, IXpsOMDictionary** resourceDictionary) GetDictionary;
				public new function HRESULT(IXpsOMPage *self, IXpsOMDictionary** resourceDictionary) GetDictionaryLocal;
				public new function HRESULT(IXpsOMPage *self, IXpsOMDictionary* resourceDictionary) SetDictionaryLocal;
				public new function HRESULT(IXpsOMPage *self, IXpsOMRemoteDictionaryResource** remoteDictionaryResource) GetDictionaryResource;
				public new function HRESULT(IXpsOMPage *self, IXpsOMRemoteDictionaryResource* remoteDictionaryResource) SetDictionaryResource;
				public new function HRESULT(IXpsOMPage *self, ISequentialStream* stream, BOOL optimizeMarkupSize) Write;
				public new function HRESULT(IXpsOMPage *self, XPS_OBJECT_TYPE type, PWSTR* key) GenerateUnusedLookupKey;
				public new function HRESULT(IXpsOMPage *self, IXpsOMPage** page) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMPageReference : IUnknown
		{
			public const new Guid IID = .(0xed360180, 0x6f92, 0x4998, 0x89, 0x0d, 0x2f, 0x20, 0x85, 0x31, 0xa0, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwner(IXpsOMDocument** document) mut
			{
				return VT.GetOwner(&this, document);
			}
			public HRESULT GetPage(IXpsOMPage** page) mut
			{
				return VT.GetPage(&this, page);
			}
			public HRESULT SetPage(IXpsOMPage* page) mut
			{
				return VT.SetPage(&this, page);
			}
			public HRESULT DiscardPage() mut
			{
				return VT.DiscardPage(&this);
			}
			public HRESULT IsPageLoaded(BOOL* isPageLoaded) mut
			{
				return VT.IsPageLoaded(&this, isPageLoaded);
			}
			public HRESULT GetAdvisoryPageDimensions(XPS_SIZE* pageDimensions) mut
			{
				return VT.GetAdvisoryPageDimensions(&this, pageDimensions);
			}
			public HRESULT SetAdvisoryPageDimensions(XPS_SIZE* pageDimensions) mut
			{
				return VT.SetAdvisoryPageDimensions(&this, pageDimensions);
			}
			public HRESULT GetStoryFragmentsResource(IXpsOMStoryFragmentsResource** storyFragmentsResource) mut
			{
				return VT.GetStoryFragmentsResource(&this, storyFragmentsResource);
			}
			public HRESULT SetStoryFragmentsResource(IXpsOMStoryFragmentsResource* storyFragmentsResource) mut
			{
				return VT.SetStoryFragmentsResource(&this, storyFragmentsResource);
			}
			public HRESULT GetPrintTicketResource(IXpsOMPrintTicketResource** printTicketResource) mut
			{
				return VT.GetPrintTicketResource(&this, printTicketResource);
			}
			public HRESULT SetPrintTicketResource(IXpsOMPrintTicketResource* printTicketResource) mut
			{
				return VT.SetPrintTicketResource(&this, printTicketResource);
			}
			public HRESULT GetThumbnailResource(IXpsOMImageResource** imageResource) mut
			{
				return VT.GetThumbnailResource(&this, imageResource);
			}
			public HRESULT SetThumbnailResource(IXpsOMImageResource* imageResource) mut
			{
				return VT.SetThumbnailResource(&this, imageResource);
			}
			public HRESULT CollectLinkTargets(IXpsOMNameCollection** linkTargets) mut
			{
				return VT.CollectLinkTargets(&this, linkTargets);
			}
			public HRESULT CollectPartResources(IXpsOMPartResources** partResources) mut
			{
				return VT.CollectPartResources(&this, partResources);
			}
			public HRESULT HasRestrictedFonts(BOOL* restrictedFonts) mut
			{
				return VT.HasRestrictedFonts(&this, restrictedFonts);
			}
			public HRESULT Clone(IXpsOMPageReference** pageReference) mut
			{
				return VT.Clone(&this, pageReference);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMPageReference *self, IXpsOMDocument** document) GetOwner;
				public new function HRESULT(IXpsOMPageReference *self, IXpsOMPage** page) GetPage;
				public new function HRESULT(IXpsOMPageReference *self, IXpsOMPage* page) SetPage;
				public new function HRESULT(IXpsOMPageReference *self) DiscardPage;
				public new function HRESULT(IXpsOMPageReference *self, BOOL* isPageLoaded) IsPageLoaded;
				public new function HRESULT(IXpsOMPageReference *self, XPS_SIZE* pageDimensions) GetAdvisoryPageDimensions;
				public new function HRESULT(IXpsOMPageReference *self, XPS_SIZE* pageDimensions) SetAdvisoryPageDimensions;
				public new function HRESULT(IXpsOMPageReference *self, IXpsOMStoryFragmentsResource** storyFragmentsResource) GetStoryFragmentsResource;
				public new function HRESULT(IXpsOMPageReference *self, IXpsOMStoryFragmentsResource* storyFragmentsResource) SetStoryFragmentsResource;
				public new function HRESULT(IXpsOMPageReference *self, IXpsOMPrintTicketResource** printTicketResource) GetPrintTicketResource;
				public new function HRESULT(IXpsOMPageReference *self, IXpsOMPrintTicketResource* printTicketResource) SetPrintTicketResource;
				public new function HRESULT(IXpsOMPageReference *self, IXpsOMImageResource** imageResource) GetThumbnailResource;
				public new function HRESULT(IXpsOMPageReference *self, IXpsOMImageResource* imageResource) SetThumbnailResource;
				public new function HRESULT(IXpsOMPageReference *self, IXpsOMNameCollection** linkTargets) CollectLinkTargets;
				public new function HRESULT(IXpsOMPageReference *self, IXpsOMPartResources** partResources) CollectPartResources;
				public new function HRESULT(IXpsOMPageReference *self, BOOL* restrictedFonts) HasRestrictedFonts;
				public new function HRESULT(IXpsOMPageReference *self, IXpsOMPageReference** pageReference) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMPageReferenceCollection : IUnknown
		{
			public const new Guid IID = .(0xca16ba4d, 0xe7b9, 0x45c5, 0x95, 0x8b, 0xf9, 0x80, 0x22, 0x47, 0x37, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IXpsOMPageReference** pageReference) mut
			{
				return VT.GetAt(&this, index, pageReference);
			}
			public HRESULT InsertAt(uint32 index, IXpsOMPageReference* pageReference) mut
			{
				return VT.InsertAt(&this, index, pageReference);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT SetAt(uint32 index, IXpsOMPageReference* pageReference) mut
			{
				return VT.SetAt(&this, index, pageReference);
			}
			public HRESULT Append(IXpsOMPageReference* pageReference) mut
			{
				return VT.Append(&this, pageReference);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMPageReferenceCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMPageReferenceCollection *self, uint32 index, IXpsOMPageReference** pageReference) GetAt;
				public new function HRESULT(IXpsOMPageReferenceCollection *self, uint32 index, IXpsOMPageReference* pageReference) InsertAt;
				public new function HRESULT(IXpsOMPageReferenceCollection *self, uint32 index) RemoveAt;
				public new function HRESULT(IXpsOMPageReferenceCollection *self, uint32 index, IXpsOMPageReference* pageReference) SetAt;
				public new function HRESULT(IXpsOMPageReferenceCollection *self, IXpsOMPageReference* pageReference) Append;
			}
		}
		[CRepr]
		public struct IXpsOMDocument : IXpsOMPart
		{
			public const new Guid IID = .(0x2c2c94cb, 0xac5f, 0x4254, 0x8e, 0xe9, 0x23, 0x94, 0x83, 0x09, 0xd9, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwner(IXpsOMDocumentSequence** documentSequence) mut
			{
				return VT.GetOwner(&this, documentSequence);
			}
			public HRESULT GetPageReferences(IXpsOMPageReferenceCollection** pageReferences) mut
			{
				return VT.GetPageReferences(&this, pageReferences);
			}
			public HRESULT GetPrintTicketResource(IXpsOMPrintTicketResource** printTicketResource) mut
			{
				return VT.GetPrintTicketResource(&this, printTicketResource);
			}
			public HRESULT SetPrintTicketResource(IXpsOMPrintTicketResource* printTicketResource) mut
			{
				return VT.SetPrintTicketResource(&this, printTicketResource);
			}
			public HRESULT GetDocumentStructureResource(IXpsOMDocumentStructureResource** documentStructureResource) mut
			{
				return VT.GetDocumentStructureResource(&this, documentStructureResource);
			}
			public HRESULT SetDocumentStructureResource(IXpsOMDocumentStructureResource* documentStructureResource) mut
			{
				return VT.SetDocumentStructureResource(&this, documentStructureResource);
			}
			public HRESULT GetSignatureBlockResources(IXpsOMSignatureBlockResourceCollection** signatureBlockResources) mut
			{
				return VT.GetSignatureBlockResources(&this, signatureBlockResources);
			}
			public HRESULT Clone(IXpsOMDocument** document) mut
			{
				return VT.Clone(&this, document);
			}
			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
				public new function HRESULT(IXpsOMDocument *self, IXpsOMDocumentSequence** documentSequence) GetOwner;
				public new function HRESULT(IXpsOMDocument *self, IXpsOMPageReferenceCollection** pageReferences) GetPageReferences;
				public new function HRESULT(IXpsOMDocument *self, IXpsOMPrintTicketResource** printTicketResource) GetPrintTicketResource;
				public new function HRESULT(IXpsOMDocument *self, IXpsOMPrintTicketResource* printTicketResource) SetPrintTicketResource;
				public new function HRESULT(IXpsOMDocument *self, IXpsOMDocumentStructureResource** documentStructureResource) GetDocumentStructureResource;
				public new function HRESULT(IXpsOMDocument *self, IXpsOMDocumentStructureResource* documentStructureResource) SetDocumentStructureResource;
				public new function HRESULT(IXpsOMDocument *self, IXpsOMSignatureBlockResourceCollection** signatureBlockResources) GetSignatureBlockResources;
				public new function HRESULT(IXpsOMDocument *self, IXpsOMDocument** document) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMDocumentCollection : IUnknown
		{
			public const new Guid IID = .(0xd1c87f0d, 0xe947, 0x4754, 0x8a, 0x25, 0x97, 0x14, 0x78, 0xf7, 0xe8, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IXpsOMDocument** document) mut
			{
				return VT.GetAt(&this, index, document);
			}
			public HRESULT InsertAt(uint32 index, IXpsOMDocument* document) mut
			{
				return VT.InsertAt(&this, index, document);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT SetAt(uint32 index, IXpsOMDocument* document) mut
			{
				return VT.SetAt(&this, index, document);
			}
			public HRESULT Append(IXpsOMDocument* document) mut
			{
				return VT.Append(&this, document);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMDocumentCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMDocumentCollection *self, uint32 index, IXpsOMDocument** document) GetAt;
				public new function HRESULT(IXpsOMDocumentCollection *self, uint32 index, IXpsOMDocument* document) InsertAt;
				public new function HRESULT(IXpsOMDocumentCollection *self, uint32 index) RemoveAt;
				public new function HRESULT(IXpsOMDocumentCollection *self, uint32 index, IXpsOMDocument* document) SetAt;
				public new function HRESULT(IXpsOMDocumentCollection *self, IXpsOMDocument* document) Append;
			}
		}
		[CRepr]
		public struct IXpsOMDocumentSequence : IXpsOMPart
		{
			public const new Guid IID = .(0x56492eb4, 0xd8d5, 0x425e, 0x82, 0x56, 0x4c, 0x2b, 0x64, 0xad, 0x02, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwner(IXpsOMPackage** package) mut
			{
				return VT.GetOwner(&this, package);
			}
			public HRESULT GetDocuments(IXpsOMDocumentCollection** documents) mut
			{
				return VT.GetDocuments(&this, documents);
			}
			public HRESULT GetPrintTicketResource(IXpsOMPrintTicketResource** printTicketResource) mut
			{
				return VT.GetPrintTicketResource(&this, printTicketResource);
			}
			public HRESULT SetPrintTicketResource(IXpsOMPrintTicketResource* printTicketResource) mut
			{
				return VT.SetPrintTicketResource(&this, printTicketResource);
			}
			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
				public new function HRESULT(IXpsOMDocumentSequence *self, IXpsOMPackage** package) GetOwner;
				public new function HRESULT(IXpsOMDocumentSequence *self, IXpsOMDocumentCollection** documents) GetDocuments;
				public new function HRESULT(IXpsOMDocumentSequence *self, IXpsOMPrintTicketResource** printTicketResource) GetPrintTicketResource;
				public new function HRESULT(IXpsOMDocumentSequence *self, IXpsOMPrintTicketResource* printTicketResource) SetPrintTicketResource;
			}
		}
		[CRepr]
		public struct IXpsOMCoreProperties : IXpsOMPart
		{
			public const new Guid IID = .(0x3340fe8f, 0x4027, 0x4aa1, 0x8f, 0x5f, 0xd3, 0x5a, 0xe4, 0x5f, 0xe5, 0x97);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwner(IXpsOMPackage** package) mut
			{
				return VT.GetOwner(&this, package);
			}
			public HRESULT GetCategory(PWSTR* category) mut
			{
				return VT.GetCategory(&this, category);
			}
			public HRESULT SetCategory(PWSTR category) mut
			{
				return VT.SetCategory(&this, category);
			}
			public HRESULT GetContentStatus(PWSTR* contentStatus) mut
			{
				return VT.GetContentStatus(&this, contentStatus);
			}
			public HRESULT SetContentStatus(PWSTR contentStatus) mut
			{
				return VT.SetContentStatus(&this, contentStatus);
			}
			public HRESULT GetContentType(PWSTR* contentType) mut
			{
				return VT.GetContentType(&this, contentType);
			}
			public HRESULT SetContentType(PWSTR contentType) mut
			{
				return VT.SetContentType(&this, contentType);
			}
			public HRESULT GetCreated(SYSTEMTIME* created) mut
			{
				return VT.GetCreated(&this, created);
			}
			public HRESULT SetCreated(SYSTEMTIME* created) mut
			{
				return VT.SetCreated(&this, created);
			}
			public HRESULT GetCreator(PWSTR* creator) mut
			{
				return VT.GetCreator(&this, creator);
			}
			public HRESULT SetCreator(PWSTR creator) mut
			{
				return VT.SetCreator(&this, creator);
			}
			public HRESULT GetDescription(PWSTR* description) mut
			{
				return VT.GetDescription(&this, description);
			}
			public HRESULT SetDescription(PWSTR description) mut
			{
				return VT.SetDescription(&this, description);
			}
			public HRESULT GetIdentifier(PWSTR* identifier) mut
			{
				return VT.GetIdentifier(&this, identifier);
			}
			public HRESULT SetIdentifier(PWSTR identifier) mut
			{
				return VT.SetIdentifier(&this, identifier);
			}
			public HRESULT GetKeywords(PWSTR* keywords) mut
			{
				return VT.GetKeywords(&this, keywords);
			}
			public HRESULT SetKeywords(PWSTR keywords) mut
			{
				return VT.SetKeywords(&this, keywords);
			}
			public HRESULT GetLanguage(PWSTR* language) mut
			{
				return VT.GetLanguage(&this, language);
			}
			public HRESULT SetLanguage(PWSTR language) mut
			{
				return VT.SetLanguage(&this, language);
			}
			public HRESULT GetLastModifiedBy(PWSTR* lastModifiedBy) mut
			{
				return VT.GetLastModifiedBy(&this, lastModifiedBy);
			}
			public HRESULT SetLastModifiedBy(PWSTR lastModifiedBy) mut
			{
				return VT.SetLastModifiedBy(&this, lastModifiedBy);
			}
			public HRESULT GetLastPrinted(SYSTEMTIME* lastPrinted) mut
			{
				return VT.GetLastPrinted(&this, lastPrinted);
			}
			public HRESULT SetLastPrinted(SYSTEMTIME* lastPrinted) mut
			{
				return VT.SetLastPrinted(&this, lastPrinted);
			}
			public HRESULT GetModified(SYSTEMTIME* modified) mut
			{
				return VT.GetModified(&this, modified);
			}
			public HRESULT SetModified(SYSTEMTIME* modified) mut
			{
				return VT.SetModified(&this, modified);
			}
			public HRESULT GetRevision(PWSTR* revision) mut
			{
				return VT.GetRevision(&this, revision);
			}
			public HRESULT SetRevision(PWSTR revision) mut
			{
				return VT.SetRevision(&this, revision);
			}
			public HRESULT GetSubject(PWSTR* subject) mut
			{
				return VT.GetSubject(&this, subject);
			}
			public HRESULT SetSubject(PWSTR subject) mut
			{
				return VT.SetSubject(&this, subject);
			}
			public HRESULT GetTitle(PWSTR* title) mut
			{
				return VT.GetTitle(&this, title);
			}
			public HRESULT SetTitle(PWSTR title) mut
			{
				return VT.SetTitle(&this, title);
			}
			public HRESULT GetVersion(PWSTR* version) mut
			{
				return VT.GetVersion(&this, version);
			}
			public HRESULT SetVersion(PWSTR version) mut
			{
				return VT.SetVersion(&this, version);
			}
			public HRESULT Clone(IXpsOMCoreProperties** coreProperties) mut
			{
				return VT.Clone(&this, coreProperties);
			}
			[CRepr]
			public struct VTable : IXpsOMPart.VTable
			{
				public new function HRESULT(IXpsOMCoreProperties *self, IXpsOMPackage** package) GetOwner;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR* category) GetCategory;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR category) SetCategory;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR* contentStatus) GetContentStatus;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR contentStatus) SetContentStatus;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR* contentType) GetContentType;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR contentType) SetContentType;
				public new function HRESULT(IXpsOMCoreProperties *self, SYSTEMTIME* created) GetCreated;
				public new function HRESULT(IXpsOMCoreProperties *self, SYSTEMTIME* created) SetCreated;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR* creator) GetCreator;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR creator) SetCreator;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR* description) GetDescription;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR description) SetDescription;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR* identifier) GetIdentifier;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR identifier) SetIdentifier;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR* keywords) GetKeywords;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR keywords) SetKeywords;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR* language) GetLanguage;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR language) SetLanguage;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR* lastModifiedBy) GetLastModifiedBy;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR lastModifiedBy) SetLastModifiedBy;
				public new function HRESULT(IXpsOMCoreProperties *self, SYSTEMTIME* lastPrinted) GetLastPrinted;
				public new function HRESULT(IXpsOMCoreProperties *self, SYSTEMTIME* lastPrinted) SetLastPrinted;
				public new function HRESULT(IXpsOMCoreProperties *self, SYSTEMTIME* modified) GetModified;
				public new function HRESULT(IXpsOMCoreProperties *self, SYSTEMTIME* modified) SetModified;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR* revision) GetRevision;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR revision) SetRevision;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR* subject) GetSubject;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR subject) SetSubject;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR* title) GetTitle;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR title) SetTitle;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR* version) GetVersion;
				public new function HRESULT(IXpsOMCoreProperties *self, PWSTR version) SetVersion;
				public new function HRESULT(IXpsOMCoreProperties *self, IXpsOMCoreProperties** coreProperties) Clone;
			}
		}
		[CRepr]
		public struct IXpsOMPackage : IUnknown
		{
			public const new Guid IID = .(0x18c3df65, 0x81e1, 0x4674, 0x91, 0xdc, 0xfc, 0x45, 0x2f, 0x5a, 0x41, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDocumentSequence(IXpsOMDocumentSequence** documentSequence) mut
			{
				return VT.GetDocumentSequence(&this, documentSequence);
			}
			public HRESULT SetDocumentSequence(IXpsOMDocumentSequence* documentSequence) mut
			{
				return VT.SetDocumentSequence(&this, documentSequence);
			}
			public HRESULT GetCoreProperties(IXpsOMCoreProperties** coreProperties) mut
			{
				return VT.GetCoreProperties(&this, coreProperties);
			}
			public HRESULT SetCoreProperties(IXpsOMCoreProperties* coreProperties) mut
			{
				return VT.SetCoreProperties(&this, coreProperties);
			}
			public HRESULT GetDiscardControlPartName(IOpcPartUri** discardControlPartUri) mut
			{
				return VT.GetDiscardControlPartName(&this, discardControlPartUri);
			}
			public HRESULT SetDiscardControlPartName(IOpcPartUri* discardControlPartUri) mut
			{
				return VT.SetDiscardControlPartName(&this, discardControlPartUri);
			}
			public HRESULT GetThumbnailResource(IXpsOMImageResource** imageResource) mut
			{
				return VT.GetThumbnailResource(&this, imageResource);
			}
			public HRESULT SetThumbnailResource(IXpsOMImageResource* imageResource) mut
			{
				return VT.SetThumbnailResource(&this, imageResource);
			}
			public HRESULT WriteToFile(PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes, BOOL optimizeMarkupSize) mut
			{
				return VT.WriteToFile(&this, fileName, securityAttributes, flagsAndAttributes, optimizeMarkupSize);
			}
			public HRESULT WriteToStream(ISequentialStream* stream, BOOL optimizeMarkupSize) mut
			{
				return VT.WriteToStream(&this, stream, optimizeMarkupSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMPackage *self, IXpsOMDocumentSequence** documentSequence) GetDocumentSequence;
				public new function HRESULT(IXpsOMPackage *self, IXpsOMDocumentSequence* documentSequence) SetDocumentSequence;
				public new function HRESULT(IXpsOMPackage *self, IXpsOMCoreProperties** coreProperties) GetCoreProperties;
				public new function HRESULT(IXpsOMPackage *self, IXpsOMCoreProperties* coreProperties) SetCoreProperties;
				public new function HRESULT(IXpsOMPackage *self, IOpcPartUri** discardControlPartUri) GetDiscardControlPartName;
				public new function HRESULT(IXpsOMPackage *self, IOpcPartUri* discardControlPartUri) SetDiscardControlPartName;
				public new function HRESULT(IXpsOMPackage *self, IXpsOMImageResource** imageResource) GetThumbnailResource;
				public new function HRESULT(IXpsOMPackage *self, IXpsOMImageResource* imageResource) SetThumbnailResource;
				public new function HRESULT(IXpsOMPackage *self, PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes, BOOL optimizeMarkupSize) WriteToFile;
				public new function HRESULT(IXpsOMPackage *self, ISequentialStream* stream, BOOL optimizeMarkupSize) WriteToStream;
			}
		}
		[CRepr]
		public struct IXpsOMObjectFactory : IUnknown
		{
			public const new Guid IID = .(0xf9b2a685, 0xa50d, 0x4fc2, 0xb7, 0x64, 0xb5, 0x6e, 0x09, 0x3e, 0xa0, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreatePackage(IXpsOMPackage** package) mut
			{
				return VT.CreatePackage(&this, package);
			}
			public HRESULT CreatePackageFromFile(PWSTR filename, BOOL reuseObjects, IXpsOMPackage** package) mut
			{
				return VT.CreatePackageFromFile(&this, filename, reuseObjects, package);
			}
			public HRESULT CreatePackageFromStream(IStream* stream, BOOL reuseObjects, IXpsOMPackage** package) mut
			{
				return VT.CreatePackageFromStream(&this, stream, reuseObjects, package);
			}
			public HRESULT CreateStoryFragmentsResource(IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMStoryFragmentsResource** storyFragmentsResource) mut
			{
				return VT.CreateStoryFragmentsResource(&this, acquiredStream, partUri, storyFragmentsResource);
			}
			public HRESULT CreateDocumentStructureResource(IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMDocumentStructureResource** documentStructureResource) mut
			{
				return VT.CreateDocumentStructureResource(&this, acquiredStream, partUri, documentStructureResource);
			}
			public HRESULT CreateSignatureBlockResource(IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMSignatureBlockResource** signatureBlockResource) mut
			{
				return VT.CreateSignatureBlockResource(&this, acquiredStream, partUri, signatureBlockResource);
			}
			public HRESULT CreateRemoteDictionaryResource(IXpsOMDictionary* dictionary, IOpcPartUri* partUri, IXpsOMRemoteDictionaryResource** remoteDictionaryResource) mut
			{
				return VT.CreateRemoteDictionaryResource(&this, dictionary, partUri, remoteDictionaryResource);
			}
			public HRESULT CreateRemoteDictionaryResourceFromStream(IStream* dictionaryMarkupStream, IOpcPartUri* dictionaryPartUri, IXpsOMPartResources* resources, IXpsOMRemoteDictionaryResource** dictionaryResource) mut
			{
				return VT.CreateRemoteDictionaryResourceFromStream(&this, dictionaryMarkupStream, dictionaryPartUri, resources, dictionaryResource);
			}
			public HRESULT CreatePartResources(IXpsOMPartResources** partResources) mut
			{
				return VT.CreatePartResources(&this, partResources);
			}
			public HRESULT CreateDocumentSequence(IOpcPartUri* partUri, IXpsOMDocumentSequence** documentSequence) mut
			{
				return VT.CreateDocumentSequence(&this, partUri, documentSequence);
			}
			public HRESULT CreateDocument(IOpcPartUri* partUri, IXpsOMDocument** document) mut
			{
				return VT.CreateDocument(&this, partUri, document);
			}
			public HRESULT CreatePageReference(XPS_SIZE* advisoryPageDimensions, IXpsOMPageReference** pageReference) mut
			{
				return VT.CreatePageReference(&this, advisoryPageDimensions, pageReference);
			}
			public HRESULT CreatePage(XPS_SIZE* pageDimensions, PWSTR language, IOpcPartUri* partUri, IXpsOMPage** page) mut
			{
				return VT.CreatePage(&this, pageDimensions, language, partUri, page);
			}
			public HRESULT CreatePageFromStream(IStream* pageMarkupStream, IOpcPartUri* partUri, IXpsOMPartResources* resources, BOOL reuseObjects, IXpsOMPage** page) mut
			{
				return VT.CreatePageFromStream(&this, pageMarkupStream, partUri, resources, reuseObjects, page);
			}
			public HRESULT CreateCanvas(IXpsOMCanvas** canvas) mut
			{
				return VT.CreateCanvas(&this, canvas);
			}
			public HRESULT CreateGlyphs(IXpsOMFontResource* fontResource, IXpsOMGlyphs** glyphs) mut
			{
				return VT.CreateGlyphs(&this, fontResource, glyphs);
			}
			public HRESULT CreatePath(IXpsOMPath** path) mut
			{
				return VT.CreatePath(&this, path);
			}
			public HRESULT CreateGeometry(IXpsOMGeometry** geometry) mut
			{
				return VT.CreateGeometry(&this, geometry);
			}
			public HRESULT CreateGeometryFigure(XPS_POINT* startPoint, IXpsOMGeometryFigure** figure) mut
			{
				return VT.CreateGeometryFigure(&this, startPoint, figure);
			}
			public HRESULT CreateMatrixTransform(XPS_MATRIX* matrix, IXpsOMMatrixTransform** transform) mut
			{
				return VT.CreateMatrixTransform(&this, matrix, transform);
			}
			public HRESULT CreateSolidColorBrush(XPS_COLOR* color, IXpsOMColorProfileResource* colorProfile, IXpsOMSolidColorBrush** solidColorBrush) mut
			{
				return VT.CreateSolidColorBrush(&this, color, colorProfile, solidColorBrush);
			}
			public HRESULT CreateColorProfileResource(IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMColorProfileResource** colorProfileResource) mut
			{
				return VT.CreateColorProfileResource(&this, acquiredStream, partUri, colorProfileResource);
			}
			public HRESULT CreateImageBrush(IXpsOMImageResource* image, XPS_RECT* viewBox, XPS_RECT* viewPort, IXpsOMImageBrush** imageBrush) mut
			{
				return VT.CreateImageBrush(&this, image, viewBox, viewPort, imageBrush);
			}
			public HRESULT CreateVisualBrush(XPS_RECT* viewBox, XPS_RECT* viewPort, IXpsOMVisualBrush** visualBrush) mut
			{
				return VT.CreateVisualBrush(&this, viewBox, viewPort, visualBrush);
			}
			public HRESULT CreateImageResource(IStream* acquiredStream, XPS_IMAGE_TYPE contentType, IOpcPartUri* partUri, IXpsOMImageResource** imageResource) mut
			{
				return VT.CreateImageResource(&this, acquiredStream, contentType, partUri, imageResource);
			}
			public HRESULT CreatePrintTicketResource(IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMPrintTicketResource** printTicketResource) mut
			{
				return VT.CreatePrintTicketResource(&this, acquiredStream, partUri, printTicketResource);
			}
			public HRESULT CreateFontResource(IStream* acquiredStream, XPS_FONT_EMBEDDING fontEmbedding, IOpcPartUri* partUri, BOOL isObfSourceStream, IXpsOMFontResource** fontResource) mut
			{
				return VT.CreateFontResource(&this, acquiredStream, fontEmbedding, partUri, isObfSourceStream, fontResource);
			}
			public HRESULT CreateGradientStop(XPS_COLOR* color, IXpsOMColorProfileResource* colorProfile, float offset, IXpsOMGradientStop** gradientStop) mut
			{
				return VT.CreateGradientStop(&this, color, colorProfile, offset, gradientStop);
			}
			public HRESULT CreateLinearGradientBrush(IXpsOMGradientStop* gradStop1, IXpsOMGradientStop* gradStop2, XPS_POINT* startPoint, XPS_POINT* endPoint, IXpsOMLinearGradientBrush** linearGradientBrush) mut
			{
				return VT.CreateLinearGradientBrush(&this, gradStop1, gradStop2, startPoint, endPoint, linearGradientBrush);
			}
			public HRESULT CreateRadialGradientBrush(IXpsOMGradientStop* gradStop1, IXpsOMGradientStop* gradStop2, XPS_POINT* centerPoint, XPS_POINT* gradientOrigin, XPS_SIZE* radiiSizes, IXpsOMRadialGradientBrush** radialGradientBrush) mut
			{
				return VT.CreateRadialGradientBrush(&this, gradStop1, gradStop2, centerPoint, gradientOrigin, radiiSizes, radialGradientBrush);
			}
			public HRESULT CreateCoreProperties(IOpcPartUri* partUri, IXpsOMCoreProperties** coreProperties) mut
			{
				return VT.CreateCoreProperties(&this, partUri, coreProperties);
			}
			public HRESULT CreateDictionary(IXpsOMDictionary** dictionary) mut
			{
				return VT.CreateDictionary(&this, dictionary);
			}
			public HRESULT CreatePartUriCollection(IXpsOMPartUriCollection** partUriCollection) mut
			{
				return VT.CreatePartUriCollection(&this, partUriCollection);
			}
			public HRESULT CreatePackageWriterOnFile(PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes, BOOL optimizeMarkupSize, XPS_INTERLEAVING interleaving, IOpcPartUri* documentSequencePartName, IXpsOMCoreProperties* coreProperties, IXpsOMImageResource* packageThumbnail, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, IXpsOMPackageWriter** packageWriter) mut
			{
				return VT.CreatePackageWriterOnFile(&this, fileName, securityAttributes, flagsAndAttributes, optimizeMarkupSize, interleaving, documentSequencePartName, coreProperties, packageThumbnail, documentSequencePrintTicket, discardControlPartName, packageWriter);
			}
			public HRESULT CreatePackageWriterOnStream(ISequentialStream* outputStream, BOOL optimizeMarkupSize, XPS_INTERLEAVING interleaving, IOpcPartUri* documentSequencePartName, IXpsOMCoreProperties* coreProperties, IXpsOMImageResource* packageThumbnail, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, IXpsOMPackageWriter** packageWriter) mut
			{
				return VT.CreatePackageWriterOnStream(&this, outputStream, optimizeMarkupSize, interleaving, documentSequencePartName, coreProperties, packageThumbnail, documentSequencePrintTicket, discardControlPartName, packageWriter);
			}
			public HRESULT CreatePartUri(PWSTR uri, IOpcPartUri** partUri) mut
			{
				return VT.CreatePartUri(&this, uri, partUri);
			}
			public HRESULT CreateReadOnlyStreamOnFile(PWSTR filename, IStream** stream) mut
			{
				return VT.CreateReadOnlyStreamOnFile(&this, filename, stream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMObjectFactory *self, IXpsOMPackage** package) CreatePackage;
				public new function HRESULT(IXpsOMObjectFactory *self, PWSTR filename, BOOL reuseObjects, IXpsOMPackage** package) CreatePackageFromFile;
				public new function HRESULT(IXpsOMObjectFactory *self, IStream* stream, BOOL reuseObjects, IXpsOMPackage** package) CreatePackageFromStream;
				public new function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMStoryFragmentsResource** storyFragmentsResource) CreateStoryFragmentsResource;
				public new function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMDocumentStructureResource** documentStructureResource) CreateDocumentStructureResource;
				public new function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMSignatureBlockResource** signatureBlockResource) CreateSignatureBlockResource;
				public new function HRESULT(IXpsOMObjectFactory *self, IXpsOMDictionary* dictionary, IOpcPartUri* partUri, IXpsOMRemoteDictionaryResource** remoteDictionaryResource) CreateRemoteDictionaryResource;
				public new function HRESULT(IXpsOMObjectFactory *self, IStream* dictionaryMarkupStream, IOpcPartUri* dictionaryPartUri, IXpsOMPartResources* resources, IXpsOMRemoteDictionaryResource** dictionaryResource) CreateRemoteDictionaryResourceFromStream;
				public new function HRESULT(IXpsOMObjectFactory *self, IXpsOMPartResources** partResources) CreatePartResources;
				public new function HRESULT(IXpsOMObjectFactory *self, IOpcPartUri* partUri, IXpsOMDocumentSequence** documentSequence) CreateDocumentSequence;
				public new function HRESULT(IXpsOMObjectFactory *self, IOpcPartUri* partUri, IXpsOMDocument** document) CreateDocument;
				public new function HRESULT(IXpsOMObjectFactory *self, XPS_SIZE* advisoryPageDimensions, IXpsOMPageReference** pageReference) CreatePageReference;
				public new function HRESULT(IXpsOMObjectFactory *self, XPS_SIZE* pageDimensions, PWSTR language, IOpcPartUri* partUri, IXpsOMPage** page) CreatePage;
				public new function HRESULT(IXpsOMObjectFactory *self, IStream* pageMarkupStream, IOpcPartUri* partUri, IXpsOMPartResources* resources, BOOL reuseObjects, IXpsOMPage** page) CreatePageFromStream;
				public new function HRESULT(IXpsOMObjectFactory *self, IXpsOMCanvas** canvas) CreateCanvas;
				public new function HRESULT(IXpsOMObjectFactory *self, IXpsOMFontResource* fontResource, IXpsOMGlyphs** glyphs) CreateGlyphs;
				public new function HRESULT(IXpsOMObjectFactory *self, IXpsOMPath** path) CreatePath;
				public new function HRESULT(IXpsOMObjectFactory *self, IXpsOMGeometry** geometry) CreateGeometry;
				public new function HRESULT(IXpsOMObjectFactory *self, XPS_POINT* startPoint, IXpsOMGeometryFigure** figure) CreateGeometryFigure;
				public new function HRESULT(IXpsOMObjectFactory *self, XPS_MATRIX* matrix, IXpsOMMatrixTransform** transform) CreateMatrixTransform;
				public new function HRESULT(IXpsOMObjectFactory *self, XPS_COLOR* color, IXpsOMColorProfileResource* colorProfile, IXpsOMSolidColorBrush** solidColorBrush) CreateSolidColorBrush;
				public new function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMColorProfileResource** colorProfileResource) CreateColorProfileResource;
				public new function HRESULT(IXpsOMObjectFactory *self, IXpsOMImageResource* image, XPS_RECT* viewBox, XPS_RECT* viewPort, IXpsOMImageBrush** imageBrush) CreateImageBrush;
				public new function HRESULT(IXpsOMObjectFactory *self, XPS_RECT* viewBox, XPS_RECT* viewPort, IXpsOMVisualBrush** visualBrush) CreateVisualBrush;
				public new function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, XPS_IMAGE_TYPE contentType, IOpcPartUri* partUri, IXpsOMImageResource** imageResource) CreateImageResource;
				public new function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, IOpcPartUri* partUri, IXpsOMPrintTicketResource** printTicketResource) CreatePrintTicketResource;
				public new function HRESULT(IXpsOMObjectFactory *self, IStream* acquiredStream, XPS_FONT_EMBEDDING fontEmbedding, IOpcPartUri* partUri, BOOL isObfSourceStream, IXpsOMFontResource** fontResource) CreateFontResource;
				public new function HRESULT(IXpsOMObjectFactory *self, XPS_COLOR* color, IXpsOMColorProfileResource* colorProfile, float offset, IXpsOMGradientStop** gradientStop) CreateGradientStop;
				public new function HRESULT(IXpsOMObjectFactory *self, IXpsOMGradientStop* gradStop1, IXpsOMGradientStop* gradStop2, XPS_POINT* startPoint, XPS_POINT* endPoint, IXpsOMLinearGradientBrush** linearGradientBrush) CreateLinearGradientBrush;
				public new function HRESULT(IXpsOMObjectFactory *self, IXpsOMGradientStop* gradStop1, IXpsOMGradientStop* gradStop2, XPS_POINT* centerPoint, XPS_POINT* gradientOrigin, XPS_SIZE* radiiSizes, IXpsOMRadialGradientBrush** radialGradientBrush) CreateRadialGradientBrush;
				public new function HRESULT(IXpsOMObjectFactory *self, IOpcPartUri* partUri, IXpsOMCoreProperties** coreProperties) CreateCoreProperties;
				public new function HRESULT(IXpsOMObjectFactory *self, IXpsOMDictionary** dictionary) CreateDictionary;
				public new function HRESULT(IXpsOMObjectFactory *self, IXpsOMPartUriCollection** partUriCollection) CreatePartUriCollection;
				public new function HRESULT(IXpsOMObjectFactory *self, PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes, BOOL optimizeMarkupSize, XPS_INTERLEAVING interleaving, IOpcPartUri* documentSequencePartName, IXpsOMCoreProperties* coreProperties, IXpsOMImageResource* packageThumbnail, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, IXpsOMPackageWriter** packageWriter) CreatePackageWriterOnFile;
				public new function HRESULT(IXpsOMObjectFactory *self, ISequentialStream* outputStream, BOOL optimizeMarkupSize, XPS_INTERLEAVING interleaving, IOpcPartUri* documentSequencePartName, IXpsOMCoreProperties* coreProperties, IXpsOMImageResource* packageThumbnail, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, IXpsOMPackageWriter** packageWriter) CreatePackageWriterOnStream;
				public new function HRESULT(IXpsOMObjectFactory *self, PWSTR uri, IOpcPartUri** partUri) CreatePartUri;
				public new function HRESULT(IXpsOMObjectFactory *self, PWSTR filename, IStream** stream) CreateReadOnlyStreamOnFile;
			}
		}
		[CRepr]
		public struct IXpsOMNameCollection : IUnknown
		{
			public const new Guid IID = .(0x4bddf8ec, 0xc915, 0x421b, 0xa1, 0x66, 0xd1, 0x73, 0xd2, 0x56, 0x53, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, PWSTR* name) mut
			{
				return VT.GetAt(&this, index, name);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMNameCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMNameCollection *self, uint32 index, PWSTR* name) GetAt;
			}
		}
		[CRepr]
		public struct IXpsOMPartUriCollection : IUnknown
		{
			public const new Guid IID = .(0x57c650d4, 0x067c, 0x4893, 0x8c, 0x33, 0xf6, 0x2a, 0x06, 0x33, 0x73, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IOpcPartUri** partUri) mut
			{
				return VT.GetAt(&this, index, partUri);
			}
			public HRESULT InsertAt(uint32 index, IOpcPartUri* partUri) mut
			{
				return VT.InsertAt(&this, index, partUri);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			public HRESULT SetAt(uint32 index, IOpcPartUri* partUri) mut
			{
				return VT.SetAt(&this, index, partUri);
			}
			public HRESULT Append(IOpcPartUri* partUri) mut
			{
				return VT.Append(&this, partUri);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMPartUriCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsOMPartUriCollection *self, uint32 index, IOpcPartUri** partUri) GetAt;
				public new function HRESULT(IXpsOMPartUriCollection *self, uint32 index, IOpcPartUri* partUri) InsertAt;
				public new function HRESULT(IXpsOMPartUriCollection *self, uint32 index) RemoveAt;
				public new function HRESULT(IXpsOMPartUriCollection *self, uint32 index, IOpcPartUri* partUri) SetAt;
				public new function HRESULT(IXpsOMPartUriCollection *self, IOpcPartUri* partUri) Append;
			}
		}
		[CRepr]
		public struct IXpsOMPackageWriter : IUnknown
		{
			public const new Guid IID = .(0x4e2aa182, 0xa443, 0x42c6, 0xb4, 0x1b, 0x4f, 0x8e, 0x9d, 0xe7, 0x3f, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartNewDocument(IOpcPartUri* documentPartName, IXpsOMPrintTicketResource* documentPrintTicket, IXpsOMDocumentStructureResource* documentStructure, IXpsOMSignatureBlockResourceCollection* signatureBlockResources, IXpsOMPartUriCollection* restrictedFonts) mut
			{
				return VT.StartNewDocument(&this, documentPartName, documentPrintTicket, documentStructure, signatureBlockResources, restrictedFonts);
			}
			public HRESULT AddPage(IXpsOMPage* page, XPS_SIZE* advisoryPageDimensions, IXpsOMPartUriCollection* discardableResourceParts, IXpsOMStoryFragmentsResource* storyFragments, IXpsOMPrintTicketResource* pagePrintTicket, IXpsOMImageResource* pageThumbnail) mut
			{
				return VT.AddPage(&this, page, advisoryPageDimensions, discardableResourceParts, storyFragments, pagePrintTicket, pageThumbnail);
			}
			public HRESULT AddResource(IXpsOMResource* resource) mut
			{
				return VT.AddResource(&this, resource);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT IsClosed(BOOL* isClosed) mut
			{
				return VT.IsClosed(&this, isClosed);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMPackageWriter *self, IOpcPartUri* documentPartName, IXpsOMPrintTicketResource* documentPrintTicket, IXpsOMDocumentStructureResource* documentStructure, IXpsOMSignatureBlockResourceCollection* signatureBlockResources, IXpsOMPartUriCollection* restrictedFonts) StartNewDocument;
				public new function HRESULT(IXpsOMPackageWriter *self, IXpsOMPage* page, XPS_SIZE* advisoryPageDimensions, IXpsOMPartUriCollection* discardableResourceParts, IXpsOMStoryFragmentsResource* storyFragments, IXpsOMPrintTicketResource* pagePrintTicket, IXpsOMImageResource* pageThumbnail) AddPage;
				public new function HRESULT(IXpsOMPackageWriter *self, IXpsOMResource* resource) AddResource;
				public new function HRESULT(IXpsOMPackageWriter *self) Close;
				public new function HRESULT(IXpsOMPackageWriter *self, BOOL* isClosed) IsClosed;
			}
		}
		[CRepr]
		public struct IXpsOMPackageTarget : IUnknown
		{
			public const new Guid IID = .(0x219a9db0, 0x4959, 0x47d0, 0x80, 0x34, 0xb1, 0xce, 0x84, 0xf4, 0x1a, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateXpsOMPackageWriter(IOpcPartUri* documentSequencePartName, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, IXpsOMPackageWriter** packageWriter) mut
			{
				return VT.CreateXpsOMPackageWriter(&this, documentSequencePartName, documentSequencePrintTicket, discardControlPartName, packageWriter);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMPackageTarget *self, IOpcPartUri* documentSequencePartName, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, IXpsOMPackageWriter** packageWriter) CreateXpsOMPackageWriter;
			}
		}
		[CRepr]
		public struct IXpsOMThumbnailGenerator : IUnknown
		{
			public const new Guid IID = .(0x15b873d5, 0x1971, 0x41e8, 0x83, 0xa3, 0x65, 0x78, 0x40, 0x30, 0x64, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GenerateThumbnail(IXpsOMPage* page, XPS_IMAGE_TYPE thumbnailType, XPS_THUMBNAIL_SIZE thumbnailSize, IOpcPartUri* imageResourcePartName, IXpsOMImageResource** imageResource) mut
			{
				return VT.GenerateThumbnail(&this, page, thumbnailType, thumbnailSize, imageResourcePartName, imageResource);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsOMThumbnailGenerator *self, IXpsOMPage* page, XPS_IMAGE_TYPE thumbnailType, XPS_THUMBNAIL_SIZE thumbnailSize, IOpcPartUri* imageResourcePartName, IXpsOMImageResource** imageResource) GenerateThumbnail;
			}
		}
		[CRepr]
		public struct IXpsOMObjectFactory1 : IXpsOMObjectFactory
		{
			public const new Guid IID = .(0x0a91b617, 0xd612, 0x4181, 0xbf, 0x7c, 0xbe, 0x58, 0x24, 0xe9, 0xcc, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDocumentTypeFromFile(PWSTR filename, XPS_DOCUMENT_TYPE* documentType) mut
			{
				return VT.GetDocumentTypeFromFile(&this, filename, documentType);
			}
			public HRESULT GetDocumentTypeFromStream(IStream* xpsDocumentStream, XPS_DOCUMENT_TYPE* documentType) mut
			{
				return VT.GetDocumentTypeFromStream(&this, xpsDocumentStream, documentType);
			}
			public HRESULT ConvertHDPhotoToJpegXR(IXpsOMImageResource* imageResource) mut
			{
				return VT.ConvertHDPhotoToJpegXR(&this, imageResource);
			}
			public HRESULT ConvertJpegXRToHDPhoto(IXpsOMImageResource* imageResource) mut
			{
				return VT.ConvertJpegXRToHDPhoto(&this, imageResource);
			}
			public HRESULT CreatePackageWriterOnFile1(PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes, BOOL optimizeMarkupSize, XPS_INTERLEAVING interleaving, IOpcPartUri* documentSequencePartName, IXpsOMCoreProperties* coreProperties, IXpsOMImageResource* packageThumbnail, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, XPS_DOCUMENT_TYPE documentType, IXpsOMPackageWriter** packageWriter) mut
			{
				return VT.CreatePackageWriterOnFile1(&this, fileName, securityAttributes, flagsAndAttributes, optimizeMarkupSize, interleaving, documentSequencePartName, coreProperties, packageThumbnail, documentSequencePrintTicket, discardControlPartName, documentType, packageWriter);
			}
			public HRESULT CreatePackageWriterOnStream1(ISequentialStream* outputStream, BOOL optimizeMarkupSize, XPS_INTERLEAVING interleaving, IOpcPartUri* documentSequencePartName, IXpsOMCoreProperties* coreProperties, IXpsOMImageResource* packageThumbnail, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, XPS_DOCUMENT_TYPE documentType, IXpsOMPackageWriter** packageWriter) mut
			{
				return VT.CreatePackageWriterOnStream1(&this, outputStream, optimizeMarkupSize, interleaving, documentSequencePartName, coreProperties, packageThumbnail, documentSequencePrintTicket, discardControlPartName, documentType, packageWriter);
			}
			public HRESULT CreatePackage1(IXpsOMPackage1** package) mut
			{
				return VT.CreatePackage1(&this, package);
			}
			public HRESULT CreatePackageFromStream1(IStream* stream, BOOL reuseObjects, IXpsOMPackage1** package) mut
			{
				return VT.CreatePackageFromStream1(&this, stream, reuseObjects, package);
			}
			public HRESULT CreatePackageFromFile1(PWSTR filename, BOOL reuseObjects, IXpsOMPackage1** package) mut
			{
				return VT.CreatePackageFromFile1(&this, filename, reuseObjects, package);
			}
			public HRESULT CreatePage1(XPS_SIZE* pageDimensions, PWSTR language, IOpcPartUri* partUri, IXpsOMPage1** page) mut
			{
				return VT.CreatePage1(&this, pageDimensions, language, partUri, page);
			}
			public HRESULT CreatePageFromStream1(IStream* pageMarkupStream, IOpcPartUri* partUri, IXpsOMPartResources* resources, BOOL reuseObjects, IXpsOMPage1** page) mut
			{
				return VT.CreatePageFromStream1(&this, pageMarkupStream, partUri, resources, reuseObjects, page);
			}
			public HRESULT CreateRemoteDictionaryResourceFromStream1(IStream* dictionaryMarkupStream, IOpcPartUri* partUri, IXpsOMPartResources* resources, IXpsOMRemoteDictionaryResource** dictionaryResource) mut
			{
				return VT.CreateRemoteDictionaryResourceFromStream1(&this, dictionaryMarkupStream, partUri, resources, dictionaryResource);
			}
			[CRepr]
			public struct VTable : IXpsOMObjectFactory.VTable
			{
				public new function HRESULT(IXpsOMObjectFactory1 *self, PWSTR filename, XPS_DOCUMENT_TYPE* documentType) GetDocumentTypeFromFile;
				public new function HRESULT(IXpsOMObjectFactory1 *self, IStream* xpsDocumentStream, XPS_DOCUMENT_TYPE* documentType) GetDocumentTypeFromStream;
				public new function HRESULT(IXpsOMObjectFactory1 *self, IXpsOMImageResource* imageResource) ConvertHDPhotoToJpegXR;
				public new function HRESULT(IXpsOMObjectFactory1 *self, IXpsOMImageResource* imageResource) ConvertJpegXRToHDPhoto;
				public new function HRESULT(IXpsOMObjectFactory1 *self, PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes, BOOL optimizeMarkupSize, XPS_INTERLEAVING interleaving, IOpcPartUri* documentSequencePartName, IXpsOMCoreProperties* coreProperties, IXpsOMImageResource* packageThumbnail, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, XPS_DOCUMENT_TYPE documentType, IXpsOMPackageWriter** packageWriter) CreatePackageWriterOnFile1;
				public new function HRESULT(IXpsOMObjectFactory1 *self, ISequentialStream* outputStream, BOOL optimizeMarkupSize, XPS_INTERLEAVING interleaving, IOpcPartUri* documentSequencePartName, IXpsOMCoreProperties* coreProperties, IXpsOMImageResource* packageThumbnail, IXpsOMPrintTicketResource* documentSequencePrintTicket, IOpcPartUri* discardControlPartName, XPS_DOCUMENT_TYPE documentType, IXpsOMPackageWriter** packageWriter) CreatePackageWriterOnStream1;
				public new function HRESULT(IXpsOMObjectFactory1 *self, IXpsOMPackage1** package) CreatePackage1;
				public new function HRESULT(IXpsOMObjectFactory1 *self, IStream* stream, BOOL reuseObjects, IXpsOMPackage1** package) CreatePackageFromStream1;
				public new function HRESULT(IXpsOMObjectFactory1 *self, PWSTR filename, BOOL reuseObjects, IXpsOMPackage1** package) CreatePackageFromFile1;
				public new function HRESULT(IXpsOMObjectFactory1 *self, XPS_SIZE* pageDimensions, PWSTR language, IOpcPartUri* partUri, IXpsOMPage1** page) CreatePage1;
				public new function HRESULT(IXpsOMObjectFactory1 *self, IStream* pageMarkupStream, IOpcPartUri* partUri, IXpsOMPartResources* resources, BOOL reuseObjects, IXpsOMPage1** page) CreatePageFromStream1;
				public new function HRESULT(IXpsOMObjectFactory1 *self, IStream* dictionaryMarkupStream, IOpcPartUri* partUri, IXpsOMPartResources* resources, IXpsOMRemoteDictionaryResource** dictionaryResource) CreateRemoteDictionaryResourceFromStream1;
			}
		}
		[CRepr]
		public struct IXpsOMPackage1 : IXpsOMPackage
		{
			public const new Guid IID = .(0x95a9435e, 0x12bb, 0x461b, 0x8e, 0x7f, 0xc6, 0xad, 0xb0, 0x4c, 0xd9, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDocumentType(XPS_DOCUMENT_TYPE* documentType) mut
			{
				return VT.GetDocumentType(&this, documentType);
			}
			public HRESULT WriteToFile1(PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes, BOOL optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) mut
			{
				return VT.WriteToFile1(&this, fileName, securityAttributes, flagsAndAttributes, optimizeMarkupSize, documentType);
			}
			public HRESULT WriteToStream1(ISequentialStream* outputStream, BOOL optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) mut
			{
				return VT.WriteToStream1(&this, outputStream, optimizeMarkupSize, documentType);
			}
			[CRepr]
			public struct VTable : IXpsOMPackage.VTable
			{
				public new function HRESULT(IXpsOMPackage1 *self, XPS_DOCUMENT_TYPE* documentType) GetDocumentType;
				public new function HRESULT(IXpsOMPackage1 *self, PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes, BOOL optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) WriteToFile1;
				public new function HRESULT(IXpsOMPackage1 *self, ISequentialStream* outputStream, BOOL optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) WriteToStream1;
			}
		}
		[CRepr]
		public struct IXpsOMPage1 : IXpsOMPage
		{
			public const new Guid IID = .(0x305b60ef, 0x6892, 0x4dda, 0x9c, 0xbb, 0x3a, 0xa6, 0x59, 0x74, 0x50, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDocumentType(XPS_DOCUMENT_TYPE* documentType) mut
			{
				return VT.GetDocumentType(&this, documentType);
			}
			public HRESULT Write1(ISequentialStream* stream, BOOL optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) mut
			{
				return VT.Write1(&this, stream, optimizeMarkupSize, documentType);
			}
			[CRepr]
			public struct VTable : IXpsOMPage.VTable
			{
				public new function HRESULT(IXpsOMPage1 *self, XPS_DOCUMENT_TYPE* documentType) GetDocumentType;
				public new function HRESULT(IXpsOMPage1 *self, ISequentialStream* stream, BOOL optimizeMarkupSize, XPS_DOCUMENT_TYPE documentType) Write1;
			}
		}
		[CRepr]
		public struct IXpsDocumentPackageTarget : IUnknown
		{
			public const new Guid IID = .(0x3b0b6d38, 0x53ad, 0x41da, 0xb2, 0x12, 0xd3, 0x76, 0x37, 0xa6, 0x71, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetXpsOMPackageWriter(IOpcPartUri* documentSequencePartName, IOpcPartUri* discardControlPartName, IXpsOMPackageWriter** packageWriter) mut
			{
				return VT.GetXpsOMPackageWriter(&this, documentSequencePartName, discardControlPartName, packageWriter);
			}
			public HRESULT GetXpsOMFactory(IXpsOMObjectFactory** xpsFactory) mut
			{
				return VT.GetXpsOMFactory(&this, xpsFactory);
			}
			public HRESULT GetXpsType(XPS_DOCUMENT_TYPE* documentType) mut
			{
				return VT.GetXpsType(&this, documentType);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsDocumentPackageTarget *self, IOpcPartUri* documentSequencePartName, IOpcPartUri* discardControlPartName, IXpsOMPackageWriter** packageWriter) GetXpsOMPackageWriter;
				public new function HRESULT(IXpsDocumentPackageTarget *self, IXpsOMObjectFactory** xpsFactory) GetXpsOMFactory;
				public new function HRESULT(IXpsDocumentPackageTarget *self, XPS_DOCUMENT_TYPE* documentType) GetXpsType;
			}
		}
		[CRepr]
		public struct IXpsOMRemoteDictionaryResource1 : IXpsOMRemoteDictionaryResource
		{
			public const new Guid IID = .(0xbf8fc1d4, 0x9d46, 0x4141, 0xba, 0x5f, 0x94, 0xbb, 0x92, 0x50, 0xd0, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDocumentType(XPS_DOCUMENT_TYPE* documentType) mut
			{
				return VT.GetDocumentType(&this, documentType);
			}
			public HRESULT Write1(ISequentialStream* stream, XPS_DOCUMENT_TYPE documentType) mut
			{
				return VT.Write1(&this, stream, documentType);
			}
			[CRepr]
			public struct VTable : IXpsOMRemoteDictionaryResource.VTable
			{
				public new function HRESULT(IXpsOMRemoteDictionaryResource1 *self, XPS_DOCUMENT_TYPE* documentType) GetDocumentType;
				public new function HRESULT(IXpsOMRemoteDictionaryResource1 *self, ISequentialStream* stream, XPS_DOCUMENT_TYPE documentType) Write1;
			}
		}
		[CRepr]
		public struct IXpsOMPackageWriter3D : IXpsOMPackageWriter
		{
			public const new Guid IID = .(0xe8a45033, 0x640e, 0x43fa, 0x9b, 0xdf, 0xfd, 0xde, 0xaa, 0x31, 0xc6, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddModelTexture(IOpcPartUri* texturePartName, IStream* textureData) mut
			{
				return VT.AddModelTexture(&this, texturePartName, textureData);
			}
			public HRESULT SetModelPrintTicket(IOpcPartUri* printTicketPartName, IStream* printTicketData) mut
			{
				return VT.SetModelPrintTicket(&this, printTicketPartName, printTicketData);
			}
			[CRepr]
			public struct VTable : IXpsOMPackageWriter.VTable
			{
				public new function HRESULT(IXpsOMPackageWriter3D *self, IOpcPartUri* texturePartName, IStream* textureData) AddModelTexture;
				public new function HRESULT(IXpsOMPackageWriter3D *self, IOpcPartUri* printTicketPartName, IStream* printTicketData) SetModelPrintTicket;
			}
		}
		[CRepr]
		public struct IXpsDocumentPackageTarget3D : IUnknown
		{
			public const new Guid IID = .(0x60ba71b8, 0x3101, 0x4984, 0x91, 0x99, 0xf4, 0xea, 0x77, 0x5f, 0xf0, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetXpsOMPackageWriter3D(IOpcPartUri* documentSequencePartName, IOpcPartUri* discardControlPartName, IOpcPartUri* modelPartName, IStream* modelData, IXpsOMPackageWriter3D** packageWriter) mut
			{
				return VT.GetXpsOMPackageWriter3D(&this, documentSequencePartName, discardControlPartName, modelPartName, modelData, packageWriter);
			}
			public HRESULT GetXpsOMFactory(IXpsOMObjectFactory** xpsFactory) mut
			{
				return VT.GetXpsOMFactory(&this, xpsFactory);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsDocumentPackageTarget3D *self, IOpcPartUri* documentSequencePartName, IOpcPartUri* discardControlPartName, IOpcPartUri* modelPartName, IStream* modelData, IXpsOMPackageWriter3D** packageWriter) GetXpsOMPackageWriter3D;
				public new function HRESULT(IXpsDocumentPackageTarget3D *self, IXpsOMObjectFactory** xpsFactory) GetXpsOMFactory;
			}
		}
		[CRepr]
		public struct IXpsSigningOptions : IUnknown
		{
			public const new Guid IID = .(0x7718eae4, 0x3215, 0x49be, 0xaf, 0x5b, 0x59, 0x4f, 0xef, 0x7f, 0xcf, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSignatureId(PWSTR* signatureId) mut
			{
				return VT.GetSignatureId(&this, signatureId);
			}
			public HRESULT SetSignatureId(PWSTR signatureId) mut
			{
				return VT.SetSignatureId(&this, signatureId);
			}
			public HRESULT GetSignatureMethod(PWSTR* signatureMethod) mut
			{
				return VT.GetSignatureMethod(&this, signatureMethod);
			}
			public HRESULT SetSignatureMethod(PWSTR signatureMethod) mut
			{
				return VT.SetSignatureMethod(&this, signatureMethod);
			}
			public HRESULT GetDigestMethod(PWSTR* digestMethod) mut
			{
				return VT.GetDigestMethod(&this, digestMethod);
			}
			public HRESULT SetDigestMethod(PWSTR digestMethod) mut
			{
				return VT.SetDigestMethod(&this, digestMethod);
			}
			public HRESULT GetSignaturePartName(IOpcPartUri** signaturePartName) mut
			{
				return VT.GetSignaturePartName(&this, signaturePartName);
			}
			public HRESULT SetSignaturePartName(IOpcPartUri* signaturePartName) mut
			{
				return VT.SetSignaturePartName(&this, signaturePartName);
			}
			public HRESULT GetPolicy(XPS_SIGN_POLICY* policy) mut
			{
				return VT.GetPolicy(&this, policy);
			}
			public HRESULT SetPolicy(XPS_SIGN_POLICY policy) mut
			{
				return VT.SetPolicy(&this, policy);
			}
			public HRESULT GetSigningTimeFormat(OPC_SIGNATURE_TIME_FORMAT* timeFormat) mut
			{
				return VT.GetSigningTimeFormat(&this, timeFormat);
			}
			public HRESULT SetSigningTimeFormat(OPC_SIGNATURE_TIME_FORMAT timeFormat) mut
			{
				return VT.SetSigningTimeFormat(&this, timeFormat);
			}
			public HRESULT GetCustomObjects(IOpcSignatureCustomObjectSet** customObjectSet) mut
			{
				return VT.GetCustomObjects(&this, customObjectSet);
			}
			public HRESULT GetCustomReferences(IOpcSignatureReferenceSet** customReferenceSet) mut
			{
				return VT.GetCustomReferences(&this, customReferenceSet);
			}
			public HRESULT GetCertificateSet(IOpcCertificateSet** certificateSet) mut
			{
				return VT.GetCertificateSet(&this, certificateSet);
			}
			public HRESULT ComGetFlags(XPS_SIGN_FLAGS* flags) mut
			{
				return VT.ComGetFlags(&this, flags);
			}
			public HRESULT SetFlags(XPS_SIGN_FLAGS flags) mut
			{
				return VT.SetFlags(&this, flags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsSigningOptions *self, PWSTR* signatureId) GetSignatureId;
				public new function HRESULT(IXpsSigningOptions *self, PWSTR signatureId) SetSignatureId;
				public new function HRESULT(IXpsSigningOptions *self, PWSTR* signatureMethod) GetSignatureMethod;
				public new function HRESULT(IXpsSigningOptions *self, PWSTR signatureMethod) SetSignatureMethod;
				public new function HRESULT(IXpsSigningOptions *self, PWSTR* digestMethod) GetDigestMethod;
				public new function HRESULT(IXpsSigningOptions *self, PWSTR digestMethod) SetDigestMethod;
				public new function HRESULT(IXpsSigningOptions *self, IOpcPartUri** signaturePartName) GetSignaturePartName;
				public new function HRESULT(IXpsSigningOptions *self, IOpcPartUri* signaturePartName) SetSignaturePartName;
				public new function HRESULT(IXpsSigningOptions *self, XPS_SIGN_POLICY* policy) GetPolicy;
				public new function HRESULT(IXpsSigningOptions *self, XPS_SIGN_POLICY policy) SetPolicy;
				public new function HRESULT(IXpsSigningOptions *self, OPC_SIGNATURE_TIME_FORMAT* timeFormat) GetSigningTimeFormat;
				public new function HRESULT(IXpsSigningOptions *self, OPC_SIGNATURE_TIME_FORMAT timeFormat) SetSigningTimeFormat;
				public new function HRESULT(IXpsSigningOptions *self, IOpcSignatureCustomObjectSet** customObjectSet) GetCustomObjects;
				public new function HRESULT(IXpsSigningOptions *self, IOpcSignatureReferenceSet** customReferenceSet) GetCustomReferences;
				public new function HRESULT(IXpsSigningOptions *self, IOpcCertificateSet** certificateSet) GetCertificateSet;
				public new function HRESULT(IXpsSigningOptions *self, XPS_SIGN_FLAGS* flags) ComGetFlags;
				public new function HRESULT(IXpsSigningOptions *self, XPS_SIGN_FLAGS flags) SetFlags;
			}
		}
		[CRepr]
		public struct IXpsSignatureCollection : IUnknown
		{
			public const new Guid IID = .(0xa2d1d95d, 0xadd2, 0x4dff, 0xab, 0x27, 0x6b, 0x9c, 0x64, 0x5f, 0xf3, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IXpsSignature** signature) mut
			{
				return VT.GetAt(&this, index, signature);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsSignatureCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsSignatureCollection *self, uint32 index, IXpsSignature** signature) GetAt;
				public new function HRESULT(IXpsSignatureCollection *self, uint32 index) RemoveAt;
			}
		}
		[CRepr]
		public struct IXpsSignature : IUnknown
		{
			public const new Guid IID = .(0x6ae4c93e, 0x1ade, 0x42fb, 0x89, 0x8b, 0x3a, 0x56, 0x58, 0x28, 0x48, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSignatureId(PWSTR* sigId) mut
			{
				return VT.GetSignatureId(&this, sigId);
			}
			public HRESULT GetSignatureValue(uint8** signatureHashValue, uint32* count) mut
			{
				return VT.GetSignatureValue(&this, signatureHashValue, count);
			}
			public HRESULT GetCertificateEnumerator(IOpcCertificateEnumerator** certificateEnumerator) mut
			{
				return VT.GetCertificateEnumerator(&this, certificateEnumerator);
			}
			public HRESULT GetSigningTime(PWSTR* sigDateTimeString) mut
			{
				return VT.GetSigningTime(&this, sigDateTimeString);
			}
			public HRESULT GetSigningTimeFormat(OPC_SIGNATURE_TIME_FORMAT* timeFormat) mut
			{
				return VT.GetSigningTimeFormat(&this, timeFormat);
			}
			public HRESULT GetSignaturePartName(IOpcPartUri** signaturePartName) mut
			{
				return VT.GetSignaturePartName(&this, signaturePartName);
			}
			public HRESULT Verify(CERT_CONTEXT* x509Certificate, XPS_SIGNATURE_STATUS* sigStatus) mut
			{
				return VT.Verify(&this, x509Certificate, sigStatus);
			}
			public HRESULT GetPolicy(XPS_SIGN_POLICY* policy) mut
			{
				return VT.GetPolicy(&this, policy);
			}
			public HRESULT GetCustomObjectEnumerator(IOpcSignatureCustomObjectEnumerator** customObjectEnumerator) mut
			{
				return VT.GetCustomObjectEnumerator(&this, customObjectEnumerator);
			}
			public HRESULT GetCustomReferenceEnumerator(IOpcSignatureReferenceEnumerator** customReferenceEnumerator) mut
			{
				return VT.GetCustomReferenceEnumerator(&this, customReferenceEnumerator);
			}
			public HRESULT GetSignatureXml(uint8** signatureXml, uint32* count) mut
			{
				return VT.GetSignatureXml(&this, signatureXml, count);
			}
			public HRESULT SetSignatureXml(uint8* signatureXml, uint32 count) mut
			{
				return VT.SetSignatureXml(&this, signatureXml, count);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsSignature *self, PWSTR* sigId) GetSignatureId;
				public new function HRESULT(IXpsSignature *self, uint8** signatureHashValue, uint32* count) GetSignatureValue;
				public new function HRESULT(IXpsSignature *self, IOpcCertificateEnumerator** certificateEnumerator) GetCertificateEnumerator;
				public new function HRESULT(IXpsSignature *self, PWSTR* sigDateTimeString) GetSigningTime;
				public new function HRESULT(IXpsSignature *self, OPC_SIGNATURE_TIME_FORMAT* timeFormat) GetSigningTimeFormat;
				public new function HRESULT(IXpsSignature *self, IOpcPartUri** signaturePartName) GetSignaturePartName;
				public new function HRESULT(IXpsSignature *self, CERT_CONTEXT* x509Certificate, XPS_SIGNATURE_STATUS* sigStatus) Verify;
				public new function HRESULT(IXpsSignature *self, XPS_SIGN_POLICY* policy) GetPolicy;
				public new function HRESULT(IXpsSignature *self, IOpcSignatureCustomObjectEnumerator** customObjectEnumerator) GetCustomObjectEnumerator;
				public new function HRESULT(IXpsSignature *self, IOpcSignatureReferenceEnumerator** customReferenceEnumerator) GetCustomReferenceEnumerator;
				public new function HRESULT(IXpsSignature *self, uint8** signatureXml, uint32* count) GetSignatureXml;
				public new function HRESULT(IXpsSignature *self, uint8* signatureXml, uint32 count) SetSignatureXml;
			}
		}
		[CRepr]
		public struct IXpsSignatureBlockCollection : IUnknown
		{
			public const new Guid IID = .(0x23397050, 0xfe99, 0x467a, 0x8d, 0xce, 0x92, 0x37, 0xf0, 0x74, 0xff, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IXpsSignatureBlock** signatureBlock) mut
			{
				return VT.GetAt(&this, index, signatureBlock);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsSignatureBlockCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsSignatureBlockCollection *self, uint32 index, IXpsSignatureBlock** signatureBlock) GetAt;
				public new function HRESULT(IXpsSignatureBlockCollection *self, uint32 index) RemoveAt;
			}
		}
		[CRepr]
		public struct IXpsSignatureBlock : IUnknown
		{
			public const new Guid IID = .(0x151fac09, 0x0b97, 0x4ac6, 0xa3, 0x23, 0x5e, 0x42, 0x97, 0xd4, 0x32, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRequests(IXpsSignatureRequestCollection** requests) mut
			{
				return VT.GetRequests(&this, requests);
			}
			public HRESULT GetPartName(IOpcPartUri** partName) mut
			{
				return VT.GetPartName(&this, partName);
			}
			public HRESULT GetDocumentIndex(uint32* fixedDocumentIndex) mut
			{
				return VT.GetDocumentIndex(&this, fixedDocumentIndex);
			}
			public HRESULT GetDocumentName(IOpcPartUri** fixedDocumentName) mut
			{
				return VT.GetDocumentName(&this, fixedDocumentName);
			}
			public HRESULT CreateRequest(PWSTR requestId, IXpsSignatureRequest** signatureRequest) mut
			{
				return VT.CreateRequest(&this, requestId, signatureRequest);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsSignatureBlock *self, IXpsSignatureRequestCollection** requests) GetRequests;
				public new function HRESULT(IXpsSignatureBlock *self, IOpcPartUri** partName) GetPartName;
				public new function HRESULT(IXpsSignatureBlock *self, uint32* fixedDocumentIndex) GetDocumentIndex;
				public new function HRESULT(IXpsSignatureBlock *self, IOpcPartUri** fixedDocumentName) GetDocumentName;
				public new function HRESULT(IXpsSignatureBlock *self, PWSTR requestId, IXpsSignatureRequest** signatureRequest) CreateRequest;
			}
		}
		[CRepr]
		public struct IXpsSignatureRequestCollection : IUnknown
		{
			public const new Guid IID = .(0xf0253e68, 0x9f19, 0x412e, 0x9b, 0x4f, 0x54, 0xd3, 0xb0, 0xac, 0x6c, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* count) mut
			{
				return VT.GetCount(&this, count);
			}
			public HRESULT GetAt(uint32 index, IXpsSignatureRequest** signatureRequest) mut
			{
				return VT.GetAt(&this, index, signatureRequest);
			}
			public HRESULT RemoveAt(uint32 index) mut
			{
				return VT.RemoveAt(&this, index);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsSignatureRequestCollection *self, uint32* count) GetCount;
				public new function HRESULT(IXpsSignatureRequestCollection *self, uint32 index, IXpsSignatureRequest** signatureRequest) GetAt;
				public new function HRESULT(IXpsSignatureRequestCollection *self, uint32 index) RemoveAt;
			}
		}
		[CRepr]
		public struct IXpsSignatureRequest : IUnknown
		{
			public const new Guid IID = .(0xac58950b, 0x7208, 0x4b2d, 0xb2, 0xc4, 0x95, 0x10, 0x83, 0xd3, 0xb8, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIntent(PWSTR* intent) mut
			{
				return VT.GetIntent(&this, intent);
			}
			public HRESULT SetIntent(PWSTR intent) mut
			{
				return VT.SetIntent(&this, intent);
			}
			public HRESULT GetRequestedSigner(PWSTR* signerName) mut
			{
				return VT.GetRequestedSigner(&this, signerName);
			}
			public HRESULT SetRequestedSigner(PWSTR signerName) mut
			{
				return VT.SetRequestedSigner(&this, signerName);
			}
			public HRESULT GetRequestSignByDate(PWSTR* dateString) mut
			{
				return VT.GetRequestSignByDate(&this, dateString);
			}
			public HRESULT SetRequestSignByDate(PWSTR dateString) mut
			{
				return VT.SetRequestSignByDate(&this, dateString);
			}
			public HRESULT GetSigningLocale(PWSTR* place) mut
			{
				return VT.GetSigningLocale(&this, place);
			}
			public HRESULT SetSigningLocale(PWSTR place) mut
			{
				return VT.SetSigningLocale(&this, place);
			}
			public HRESULT GetSpotLocation(int32* pageIndex, IOpcPartUri** pagePartName, float* x, float* y) mut
			{
				return VT.GetSpotLocation(&this, pageIndex, pagePartName, x, y);
			}
			public HRESULT SetSpotLocation(int32 pageIndex, float x, float y) mut
			{
				return VT.SetSpotLocation(&this, pageIndex, x, y);
			}
			public HRESULT GetRequestId(PWSTR* requestId) mut
			{
				return VT.GetRequestId(&this, requestId);
			}
			public HRESULT GetSignature(IXpsSignature** signature) mut
			{
				return VT.GetSignature(&this, signature);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsSignatureRequest *self, PWSTR* intent) GetIntent;
				public new function HRESULT(IXpsSignatureRequest *self, PWSTR intent) SetIntent;
				public new function HRESULT(IXpsSignatureRequest *self, PWSTR* signerName) GetRequestedSigner;
				public new function HRESULT(IXpsSignatureRequest *self, PWSTR signerName) SetRequestedSigner;
				public new function HRESULT(IXpsSignatureRequest *self, PWSTR* dateString) GetRequestSignByDate;
				public new function HRESULT(IXpsSignatureRequest *self, PWSTR dateString) SetRequestSignByDate;
				public new function HRESULT(IXpsSignatureRequest *self, PWSTR* place) GetSigningLocale;
				public new function HRESULT(IXpsSignatureRequest *self, PWSTR place) SetSigningLocale;
				public new function HRESULT(IXpsSignatureRequest *self, int32* pageIndex, IOpcPartUri** pagePartName, float* x, float* y) GetSpotLocation;
				public new function HRESULT(IXpsSignatureRequest *self, int32 pageIndex, float x, float y) SetSpotLocation;
				public new function HRESULT(IXpsSignatureRequest *self, PWSTR* requestId) GetRequestId;
				public new function HRESULT(IXpsSignatureRequest *self, IXpsSignature** signature) GetSignature;
			}
		}
		[CRepr]
		public struct IXpsSignatureManager : IUnknown
		{
			public const new Guid IID = .(0xd3e8d338, 0xfdc4, 0x4afc, 0x80, 0xb5, 0xd5, 0x32, 0xa1, 0x78, 0x2e, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadPackageFile(PWSTR fileName) mut
			{
				return VT.LoadPackageFile(&this, fileName);
			}
			public HRESULT LoadPackageStream(IStream* stream) mut
			{
				return VT.LoadPackageStream(&this, stream);
			}
			public HRESULT Sign(IXpsSigningOptions* signOptions, CERT_CONTEXT* x509Certificate, IXpsSignature** signature) mut
			{
				return VT.Sign(&this, signOptions, x509Certificate, signature);
			}
			public HRESULT GetSignatureOriginPartName(IOpcPartUri** signatureOriginPartName) mut
			{
				return VT.GetSignatureOriginPartName(&this, signatureOriginPartName);
			}
			public HRESULT SetSignatureOriginPartName(IOpcPartUri* signatureOriginPartName) mut
			{
				return VT.SetSignatureOriginPartName(&this, signatureOriginPartName);
			}
			public HRESULT GetSignatures(IXpsSignatureCollection** signatures) mut
			{
				return VT.GetSignatures(&this, signatures);
			}
			public HRESULT AddSignatureBlock(IOpcPartUri* partName, uint32 fixedDocumentIndex, IXpsSignatureBlock** signatureBlock) mut
			{
				return VT.AddSignatureBlock(&this, partName, fixedDocumentIndex, signatureBlock);
			}
			public HRESULT GetSignatureBlocks(IXpsSignatureBlockCollection** signatureBlocks) mut
			{
				return VT.GetSignatureBlocks(&this, signatureBlocks);
			}
			public HRESULT CreateSigningOptions(IXpsSigningOptions** signingOptions) mut
			{
				return VT.CreateSigningOptions(&this, signingOptions);
			}
			public HRESULT SavePackageToFile(PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes) mut
			{
				return VT.SavePackageToFile(&this, fileName, securityAttributes, flagsAndAttributes);
			}
			public HRESULT SavePackageToStream(IStream* stream) mut
			{
				return VT.SavePackageToStream(&this, stream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXpsSignatureManager *self, PWSTR fileName) LoadPackageFile;
				public new function HRESULT(IXpsSignatureManager *self, IStream* stream) LoadPackageStream;
				public new function HRESULT(IXpsSignatureManager *self, IXpsSigningOptions* signOptions, CERT_CONTEXT* x509Certificate, IXpsSignature** signature) Sign;
				public new function HRESULT(IXpsSignatureManager *self, IOpcPartUri** signatureOriginPartName) GetSignatureOriginPartName;
				public new function HRESULT(IXpsSignatureManager *self, IOpcPartUri* signatureOriginPartName) SetSignatureOriginPartName;
				public new function HRESULT(IXpsSignatureManager *self, IXpsSignatureCollection** signatures) GetSignatures;
				public new function HRESULT(IXpsSignatureManager *self, IOpcPartUri* partName, uint32 fixedDocumentIndex, IXpsSignatureBlock** signatureBlock) AddSignatureBlock;
				public new function HRESULT(IXpsSignatureManager *self, IXpsSignatureBlockCollection** signatureBlocks) GetSignatureBlocks;
				public new function HRESULT(IXpsSignatureManager *self, IXpsSigningOptions** signingOptions) CreateSigningOptions;
				public new function HRESULT(IXpsSignatureManager *self, PWSTR fileName, SECURITY_ATTRIBUTES* securityAttributes, uint32 flagsAndAttributes) SavePackageToFile;
				public new function HRESULT(IXpsSignatureManager *self, IStream* stream) SavePackageToStream;
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
