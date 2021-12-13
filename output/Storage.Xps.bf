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
		
		public struct IXpsOMShareable {}
		public struct IXpsOMVisual {}
		public struct IXpsOMPart {}
		public struct IXpsOMGlyphsEditor {}
		public struct IXpsOMGlyphs {}
		public struct IXpsOMDashCollection {}
		public struct IXpsOMMatrixTransform {}
		public struct IXpsOMGeometry {}
		public struct IXpsOMGeometryFigure {}
		public struct IXpsOMGeometryFigureCollection {}
		public struct IXpsOMPath {}
		public struct IXpsOMBrush {}
		public struct IXpsOMGradientStopCollection {}
		public struct IXpsOMSolidColorBrush {}
		public struct IXpsOMTileBrush {}
		public struct IXpsOMVisualBrush {}
		public struct IXpsOMImageBrush {}
		public struct IXpsOMGradientStop {}
		public struct IXpsOMGradientBrush {}
		public struct IXpsOMLinearGradientBrush {}
		public struct IXpsOMRadialGradientBrush {}
		public struct IXpsOMResource {}
		public struct IXpsOMPartResources {}
		public struct IXpsOMDictionary {}
		public struct IXpsOMFontResource {}
		public struct IXpsOMFontResourceCollection {}
		public struct IXpsOMImageResource {}
		public struct IXpsOMImageResourceCollection {}
		public struct IXpsOMColorProfileResource {}
		public struct IXpsOMColorProfileResourceCollection {}
		public struct IXpsOMPrintTicketResource {}
		public struct IXpsOMRemoteDictionaryResource {}
		public struct IXpsOMRemoteDictionaryResourceCollection {}
		public struct IXpsOMSignatureBlockResourceCollection {}
		public struct IXpsOMDocumentStructureResource {}
		public struct IXpsOMStoryFragmentsResource {}
		public struct IXpsOMSignatureBlockResource {}
		public struct IXpsOMVisualCollection {}
		public struct IXpsOMCanvas {}
		public struct IXpsOMPage {}
		public struct IXpsOMPageReference {}
		public struct IXpsOMPageReferenceCollection {}
		public struct IXpsOMDocument {}
		public struct IXpsOMDocumentCollection {}
		public struct IXpsOMDocumentSequence {}
		public struct IXpsOMCoreProperties {}
		public struct IXpsOMPackage {}
		public struct IXpsOMObjectFactory {}
		public struct IXpsOMNameCollection {}
		public struct IXpsOMPartUriCollection {}
		public struct IXpsOMPackageWriter {}
		public struct IXpsOMPackageTarget {}
		public struct IXpsOMThumbnailGenerator {}
		public struct IXpsOMObjectFactory1 {}
		public struct IXpsOMPackage1 {}
		public struct IXpsOMPage1 {}
		public struct IXpsDocumentPackageTarget {}
		public struct IXpsOMRemoteDictionaryResource1 {}
		public struct IXpsOMPackageWriter3D {}
		public struct IXpsDocumentPackageTarget3D {}
		public struct IXpsSigningOptions {}
		public struct IXpsSignatureCollection {}
		public struct IXpsSignature {}
		public struct IXpsSignatureBlockCollection {}
		public struct IXpsSignatureBlock {}
		public struct IXpsSignatureRequestCollection {}
		public struct IXpsSignatureRequest {}
		public struct IXpsSignatureManager {}
		
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
