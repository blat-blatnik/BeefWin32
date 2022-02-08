using System;

// namespace Graphics.Gdi
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 GDI_ERROR = -1;
		public const uint32 ERROR = 0;
		public const uint32 NULLREGION = 1;
		public const uint32 SIMPLEREGION = 2;
		public const uint32 COMPLEXREGION = 3;
		public const uint32 RGN_ERROR = 0;
		public const uint32 MAXSTRETCHBLTMODE = 4;
		public const uint32 POLYFILL_LAST = 2;
		public const uint32 LAYOUT_BTT = 2;
		public const uint32 LAYOUT_VBH = 4;
		public const uint32 ASPECT_FILTERING = 1;
		public const uint32 META_SETBKCOLOR = 513;
		public const uint32 META_SETBKMODE = 258;
		public const uint32 META_SETMAPMODE = 259;
		public const uint32 META_SETROP2 = 260;
		public const uint32 META_SETRELABS = 261;
		public const uint32 META_SETPOLYFILLMODE = 262;
		public const uint32 META_SETSTRETCHBLTMODE = 263;
		public const uint32 META_SETTEXTCHAREXTRA = 264;
		public const uint32 META_SETTEXTCOLOR = 521;
		public const uint32 META_SETTEXTJUSTIFICATION = 522;
		public const uint32 META_SETWINDOWORG = 523;
		public const uint32 META_SETWINDOWEXT = 524;
		public const uint32 META_SETVIEWPORTORG = 525;
		public const uint32 META_SETVIEWPORTEXT = 526;
		public const uint32 META_OFFSETWINDOWORG = 527;
		public const uint32 META_SCALEWINDOWEXT = 1040;
		public const uint32 META_OFFSETVIEWPORTORG = 529;
		public const uint32 META_SCALEVIEWPORTEXT = 1042;
		public const uint32 META_LINETO = 531;
		public const uint32 META_MOVETO = 532;
		public const uint32 META_EXCLUDECLIPRECT = 1045;
		public const uint32 META_INTERSECTCLIPRECT = 1046;
		public const uint32 META_ARC = 2071;
		public const uint32 META_ELLIPSE = 1048;
		public const uint32 META_FLOODFILL = 1049;
		public const uint32 META_PIE = 2074;
		public const uint32 META_RECTANGLE = 1051;
		public const uint32 META_ROUNDRECT = 1564;
		public const uint32 META_PATBLT = 1565;
		public const uint32 META_SAVEDC = 30;
		public const uint32 META_SETPIXEL = 1055;
		public const uint32 META_OFFSETCLIPRGN = 544;
		public const uint32 META_TEXTOUT = 1313;
		public const uint32 META_BITBLT = 2338;
		public const uint32 META_STRETCHBLT = 2851;
		public const uint32 META_POLYGON = 804;
		public const uint32 META_POLYLINE = 805;
		public const uint32 META_ESCAPE = 1574;
		public const uint32 META_RESTOREDC = 295;
		public const uint32 META_FILLREGION = 552;
		public const uint32 META_FRAMEREGION = 1065;
		public const uint32 META_INVERTREGION = 298;
		public const uint32 META_PAINTREGION = 299;
		public const uint32 META_SELECTCLIPREGION = 300;
		public const uint32 META_SELECTOBJECT = 301;
		public const uint32 META_SETTEXTALIGN = 302;
		public const uint32 META_CHORD = 2096;
		public const uint32 META_SETMAPPERFLAGS = 561;
		public const uint32 META_EXTTEXTOUT = 2610;
		public const uint32 META_SETDIBTODEV = 3379;
		public const uint32 META_SELECTPALETTE = 564;
		public const uint32 META_REALIZEPALETTE = 53;
		public const uint32 META_ANIMATEPALETTE = 1078;
		public const uint32 META_SETPALENTRIES = 55;
		public const uint32 META_POLYPOLYGON = 1336;
		public const uint32 META_RESIZEPALETTE = 313;
		public const uint32 META_DIBBITBLT = 2368;
		public const uint32 META_DIBSTRETCHBLT = 2881;
		public const uint32 META_DIBCREATEPATTERNBRUSH = 322;
		public const uint32 META_STRETCHDIB = 3907;
		public const uint32 META_EXTFLOODFILL = 1352;
		public const uint32 META_SETLAYOUT = 329;
		public const uint32 META_DELETEOBJECT = 496;
		public const uint32 META_CREATEPALETTE = 247;
		public const uint32 META_CREATEPATTERNBRUSH = 505;
		public const uint32 META_CREATEPENINDIRECT = 762;
		public const uint32 META_CREATEFONTINDIRECT = 763;
		public const uint32 META_CREATEBRUSHINDIRECT = 764;
		public const uint32 META_CREATEREGION = 1791;
		public const uint32 NEWFRAME = 1;
		public const uint32 ABORTDOC = 2;
		public const uint32 NEXTBAND = 3;
		public const uint32 SETCOLORTABLE = 4;
		public const uint32 GETCOLORTABLE = 5;
		public const uint32 FLUSHOUTPUT = 6;
		public const uint32 DRAFTMODE = 7;
		public const uint32 QUERYESCSUPPORT = 8;
		public const uint32 SETABORTPROC = 9;
		public const uint32 STARTDOC = 10;
		public const uint32 ENDDOC = 11;
		public const uint32 GETPHYSPAGESIZE = 12;
		public const uint32 GETPRINTINGOFFSET = 13;
		public const uint32 GETSCALINGFACTOR = 14;
		public const uint32 MFCOMMENT = 15;
		public const uint32 GETPENWIDTH = 16;
		public const uint32 SETCOPYCOUNT = 17;
		public const uint32 SELECTPAPERSOURCE = 18;
		public const uint32 DEVICEDATA = 19;
		public const uint32 PASSTHROUGH = 19;
		public const uint32 GETTECHNOLGY = 20;
		public const uint32 GETTECHNOLOGY = 20;
		public const uint32 SETLINECAP = 21;
		public const uint32 SETLINEJOIN = 22;
		public const uint32 SETMITERLIMIT = 23;
		public const uint32 BANDINFO = 24;
		public const uint32 DRAWPATTERNRECT = 25;
		public const uint32 GETVECTORPENSIZE = 26;
		public const uint32 GETVECTORBRUSHSIZE = 27;
		public const uint32 ENABLEDUPLEX = 28;
		public const uint32 GETSETPAPERBINS = 29;
		public const uint32 GETSETPRINTORIENT = 30;
		public const uint32 ENUMPAPERBINS = 31;
		public const uint32 SETDIBSCALING = 32;
		public const uint32 EPSPRINTING = 33;
		public const uint32 ENUMPAPERMETRICS = 34;
		public const uint32 GETSETPAPERMETRICS = 35;
		public const uint32 POSTSCRIPT_DATA = 37;
		public const uint32 POSTSCRIPT_IGNORE = 38;
		public const uint32 MOUSETRAILS = 39;
		public const uint32 GETDEVICEUNITS = 42;
		public const uint32 GETEXTENDEDTEXTMETRICS = 256;
		public const uint32 GETEXTENTTABLE = 257;
		public const uint32 GETPAIRKERNTABLE = 258;
		public const uint32 GETTRACKKERNTABLE = 259;
		public const uint32 EXTTEXTOUT = 512;
		public const uint32 GETFACENAME = 513;
		public const uint32 DOWNLOADFACE = 514;
		public const uint32 ENABLERELATIVEWIDTHS = 768;
		public const uint32 ENABLEPAIRKERNING = 769;
		public const uint32 SETKERNTRACK = 770;
		public const uint32 SETALLJUSTVALUES = 771;
		public const uint32 SETCHARSET = 772;
		public const uint32 STRETCHBLT = 2048;
		public const uint32 METAFILE_DRIVER = 2049;
		public const uint32 GETSETSCREENPARAMS = 3072;
		public const uint32 QUERYDIBSUPPORT = 3073;
		public const uint32 BEGIN_PATH = 4096;
		public const uint32 CLIP_TO_PATH = 4097;
		public const uint32 END_PATH = 4098;
		public const uint32 EXT_DEVICE_CAPS = 4099;
		public const uint32 RESTORE_CTM = 4100;
		public const uint32 SAVE_CTM = 4101;
		public const uint32 SET_ARC_DIRECTION = 4102;
		public const uint32 SET_BACKGROUND_COLOR = 4103;
		public const uint32 SET_POLY_MODE = 4104;
		public const uint32 SET_SCREEN_ANGLE = 4105;
		public const uint32 SET_SPREAD = 4106;
		public const uint32 TRANSFORM_CTM = 4107;
		public const uint32 SET_CLIP_BOX = 4108;
		public const uint32 SET_BOUNDS = 4109;
		public const uint32 SET_MIRROR_MODE = 4110;
		public const uint32 OPENCHANNEL = 4110;
		public const uint32 DOWNLOADHEADER = 4111;
		public const uint32 CLOSECHANNEL = 4112;
		public const uint32 POSTSCRIPT_PASSTHROUGH = 4115;
		public const uint32 ENCAPSULATED_POSTSCRIPT = 4116;
		public const uint32 POSTSCRIPT_IDENTIFY = 4117;
		public const uint32 POSTSCRIPT_INJECTION = 4118;
		public const uint32 CHECKJPEGFORMAT = 4119;
		public const uint32 CHECKPNGFORMAT = 4120;
		public const uint32 GET_PS_FEATURESETTING = 4121;
		public const uint32 GDIPLUS_TS_QUERYVER = 4122;
		public const uint32 GDIPLUS_TS_RECORD = 4123;
		public const uint32 MILCORE_TS_QUERYVER_RESULT_FALSE = 0;
		public const uint32 MILCORE_TS_QUERYVER_RESULT_TRUE = 2147483647;
		public const uint32 SPCLPASSTHROUGH2 = 4568;
		public const uint32 PSIDENT_GDICENTRIC = 0;
		public const uint32 PSIDENT_PSCENTRIC = 1;
		public const uint32 PSINJECT_DLFONT = 3722304989;
		public const uint32 FEATURESETTING_NUP = 0;
		public const uint32 FEATURESETTING_OUTPUT = 1;
		public const uint32 FEATURESETTING_PSLEVEL = 2;
		public const uint32 FEATURESETTING_CUSTPAPER = 3;
		public const uint32 FEATURESETTING_MIRROR = 4;
		public const uint32 FEATURESETTING_NEGATIVE = 5;
		public const uint32 FEATURESETTING_PROTOCOL = 6;
		public const uint32 FEATURESETTING_PRIVATE_BEGIN = 4096;
		public const uint32 FEATURESETTING_PRIVATE_END = 8191;
		public const uint32 PSPROTOCOL_ASCII = 0;
		public const uint32 PSPROTOCOL_BCP = 1;
		public const uint32 PSPROTOCOL_TBCP = 2;
		public const uint32 PSPROTOCOL_BINARY = 3;
		public const uint32 QDI_SETDIBITS = 1;
		public const uint32 QDI_GETDIBITS = 2;
		public const uint32 QDI_DIBTOSCREEN = 4;
		public const uint32 QDI_STRETCHDIB = 8;
		public const uint32 SP_NOTREPORTED = 16384;
		public const int32 SP_ERROR = -1;
		public const int32 SP_APPABORT = -2;
		public const int32 SP_USERABORT = -3;
		public const int32 SP_OUTOFDISK = -4;
		public const int32 SP_OUTOFMEMORY = -5;
		public const uint32 PR_JOBSTATUS = 0;
		public const int32 LCS_CALIBRATED_RGB = 0;
		public const int32 LCS_GM_BUSINESS = 1;
		public const int32 LCS_GM_GRAPHICS = 2;
		public const int32 LCS_GM_IMAGES = 4;
		public const int32 LCS_GM_ABS_COLORIMETRIC = 8;
		public const uint32 CM_OUT_OF_GAMUT = 255;
		public const uint32 CM_IN_GAMUT = 0;
		public const int32 BI_RGB = 0;
		public const int32 BI_RLE8 = 1;
		public const int32 BI_RLE4 = 2;
		public const int32 BI_BITFIELDS = 3;
		public const int32 BI_JPEG = 4;
		public const int32 BI_PNG = 5;
		public const uint32 TMPF_FIXED_PITCH = 1;
		public const uint32 TMPF_VECTOR = 2;
		public const uint32 TMPF_DEVICE = 8;
		public const uint32 TMPF_TRUETYPE = 4;
		public const int32 NTM_REGULAR = 64;
		public const int32 NTM_BOLD = 32;
		public const int32 NTM_ITALIC = 1;
		public const uint32 NTM_NONNEGATIVE_AC = 65536;
		public const uint32 NTM_PS_OPENTYPE = 131072;
		public const uint32 NTM_TT_OPENTYPE = 262144;
		public const uint32 NTM_MULTIPLEMASTER = 524288;
		public const uint32 NTM_TYPE1 = 1048576;
		public const uint32 NTM_DSIG = 2097152;
		public const uint32 LF_FACESIZE = 32;
		public const uint32 LF_FULLFACESIZE = 64;
		public const uint32 OUT_SCREEN_OUTLINE_PRECIS = 9;
		public const uint32 CLEARTYPE_NATURAL_QUALITY = 6;
		public const uint32 DEFAULT_PITCH = 0;
		public const uint32 FIXED_PITCH = 1;
		public const uint32 VARIABLE_PITCH = 2;
		public const uint32 MONO_FONT = 8;
		public const uint32 ANSI_CHARSET = 0;
		public const uint32 DEFAULT_CHARSET = 1;
		public const uint32 SYMBOL_CHARSET = 2;
		public const uint32 SHIFTJIS_CHARSET = 128;
		public const uint32 HANGEUL_CHARSET = 129;
		public const uint32 HANGUL_CHARSET = 129;
		public const uint32 GB2312_CHARSET = 134;
		public const uint32 CHINESEBIG5_CHARSET = 136;
		public const uint32 OEM_CHARSET = 255;
		public const uint32 JOHAB_CHARSET = 130;
		public const uint32 HEBREW_CHARSET = 177;
		public const uint32 ARABIC_CHARSET = 178;
		public const uint32 GREEK_CHARSET = 161;
		public const uint32 TURKISH_CHARSET = 162;
		public const uint32 VIETNAMESE_CHARSET = 163;
		public const uint32 THAI_CHARSET = 222;
		public const uint32 EASTEUROPE_CHARSET = 238;
		public const uint32 RUSSIAN_CHARSET = 204;
		public const uint32 MAC_CHARSET = 77;
		public const uint32 BALTIC_CHARSET = 186;
		public const int32 FS_LATIN1 = 1;
		public const int32 FS_LATIN2 = 2;
		public const int32 FS_CYRILLIC = 4;
		public const int32 FS_GREEK = 8;
		public const int32 FS_TURKISH = 16;
		public const int32 FS_HEBREW = 32;
		public const int32 FS_ARABIC = 64;
		public const int32 FS_BALTIC = 128;
		public const int32 FS_VIETNAMESE = 256;
		public const int32 FS_THAI = 65536;
		public const int32 FS_JISJAPAN = 131072;
		public const int32 FS_CHINESESIMP = 262144;
		public const int32 FS_WANSUNG = 524288;
		public const int32 FS_CHINESETRAD = 1048576;
		public const int32 FS_JOHAB = 2097152;
		public const int32 FS_SYMBOL = -2147483648;
		public const uint32 FW_DONTCARE = 0;
		public const uint32 FW_THIN = 100;
		public const uint32 FW_EXTRALIGHT = 200;
		public const uint32 FW_LIGHT = 300;
		public const uint32 FW_NORMAL = 400;
		public const uint32 FW_MEDIUM = 500;
		public const uint32 FW_SEMIBOLD = 600;
		public const uint32 FW_BOLD = 700;
		public const uint32 FW_EXTRABOLD = 800;
		public const uint32 FW_HEAVY = 900;
		public const uint32 FW_ULTRALIGHT = 200;
		public const uint32 FW_REGULAR = 400;
		public const uint32 FW_DEMIBOLD = 600;
		public const uint32 FW_ULTRABOLD = 800;
		public const uint32 FW_BLACK = 900;
		public const uint32 PANOSE_COUNT = 10;
		public const uint32 PAN_FAMILYTYPE_INDEX = 0;
		public const uint32 PAN_SERIFSTYLE_INDEX = 1;
		public const uint32 PAN_WEIGHT_INDEX = 2;
		public const uint32 PAN_PROPORTION_INDEX = 3;
		public const uint32 PAN_CONTRAST_INDEX = 4;
		public const uint32 PAN_STROKEVARIATION_INDEX = 5;
		public const uint32 PAN_ARMSTYLE_INDEX = 6;
		public const uint32 PAN_LETTERFORM_INDEX = 7;
		public const uint32 PAN_MIDLINE_INDEX = 8;
		public const uint32 PAN_XHEIGHT_INDEX = 9;
		public const uint32 PAN_CULTURE_LATIN = 0;
		public const uint32 PAN_ANY = 0;
		public const uint32 PAN_NO_FIT = 1;
		public const uint32 PAN_FAMILY_TEXT_DISPLAY = 2;
		public const uint32 PAN_FAMILY_SCRIPT = 3;
		public const uint32 PAN_FAMILY_DECORATIVE = 4;
		public const uint32 PAN_FAMILY_PICTORIAL = 5;
		public const uint32 PAN_SERIF_COVE = 2;
		public const uint32 PAN_SERIF_OBTUSE_COVE = 3;
		public const uint32 PAN_SERIF_SQUARE_COVE = 4;
		public const uint32 PAN_SERIF_OBTUSE_SQUARE_COVE = 5;
		public const uint32 PAN_SERIF_SQUARE = 6;
		public const uint32 PAN_SERIF_THIN = 7;
		public const uint32 PAN_SERIF_BONE = 8;
		public const uint32 PAN_SERIF_EXAGGERATED = 9;
		public const uint32 PAN_SERIF_TRIANGLE = 10;
		public const uint32 PAN_SERIF_NORMAL_SANS = 11;
		public const uint32 PAN_SERIF_OBTUSE_SANS = 12;
		public const uint32 PAN_SERIF_PERP_SANS = 13;
		public const uint32 PAN_SERIF_FLARED = 14;
		public const uint32 PAN_SERIF_ROUNDED = 15;
		public const uint32 PAN_WEIGHT_VERY_LIGHT = 2;
		public const uint32 PAN_WEIGHT_LIGHT = 3;
		public const uint32 PAN_WEIGHT_THIN = 4;
		public const uint32 PAN_WEIGHT_BOOK = 5;
		public const uint32 PAN_WEIGHT_MEDIUM = 6;
		public const uint32 PAN_WEIGHT_DEMI = 7;
		public const uint32 PAN_WEIGHT_BOLD = 8;
		public const uint32 PAN_WEIGHT_HEAVY = 9;
		public const uint32 PAN_WEIGHT_BLACK = 10;
		public const uint32 PAN_WEIGHT_NORD = 11;
		public const uint32 PAN_PROP_OLD_STYLE = 2;
		public const uint32 PAN_PROP_MODERN = 3;
		public const uint32 PAN_PROP_EVEN_WIDTH = 4;
		public const uint32 PAN_PROP_EXPANDED = 5;
		public const uint32 PAN_PROP_CONDENSED = 6;
		public const uint32 PAN_PROP_VERY_EXPANDED = 7;
		public const uint32 PAN_PROP_VERY_CONDENSED = 8;
		public const uint32 PAN_PROP_MONOSPACED = 9;
		public const uint32 PAN_CONTRAST_NONE = 2;
		public const uint32 PAN_CONTRAST_VERY_LOW = 3;
		public const uint32 PAN_CONTRAST_LOW = 4;
		public const uint32 PAN_CONTRAST_MEDIUM_LOW = 5;
		public const uint32 PAN_CONTRAST_MEDIUM = 6;
		public const uint32 PAN_CONTRAST_MEDIUM_HIGH = 7;
		public const uint32 PAN_CONTRAST_HIGH = 8;
		public const uint32 PAN_CONTRAST_VERY_HIGH = 9;
		public const uint32 PAN_STROKE_GRADUAL_DIAG = 2;
		public const uint32 PAN_STROKE_GRADUAL_TRAN = 3;
		public const uint32 PAN_STROKE_GRADUAL_VERT = 4;
		public const uint32 PAN_STROKE_GRADUAL_HORZ = 5;
		public const uint32 PAN_STROKE_RAPID_VERT = 6;
		public const uint32 PAN_STROKE_RAPID_HORZ = 7;
		public const uint32 PAN_STROKE_INSTANT_VERT = 8;
		public const uint32 PAN_STRAIGHT_ARMS_HORZ = 2;
		public const uint32 PAN_STRAIGHT_ARMS_WEDGE = 3;
		public const uint32 PAN_STRAIGHT_ARMS_VERT = 4;
		public const uint32 PAN_STRAIGHT_ARMS_SINGLE_SERIF = 5;
		public const uint32 PAN_STRAIGHT_ARMS_DOUBLE_SERIF = 6;
		public const uint32 PAN_BENT_ARMS_HORZ = 7;
		public const uint32 PAN_BENT_ARMS_WEDGE = 8;
		public const uint32 PAN_BENT_ARMS_VERT = 9;
		public const uint32 PAN_BENT_ARMS_SINGLE_SERIF = 10;
		public const uint32 PAN_BENT_ARMS_DOUBLE_SERIF = 11;
		public const uint32 PAN_LETT_NORMAL_CONTACT = 2;
		public const uint32 PAN_LETT_NORMAL_WEIGHTED = 3;
		public const uint32 PAN_LETT_NORMAL_BOXED = 4;
		public const uint32 PAN_LETT_NORMAL_FLATTENED = 5;
		public const uint32 PAN_LETT_NORMAL_ROUNDED = 6;
		public const uint32 PAN_LETT_NORMAL_OFF_CENTER = 7;
		public const uint32 PAN_LETT_NORMAL_SQUARE = 8;
		public const uint32 PAN_LETT_OBLIQUE_CONTACT = 9;
		public const uint32 PAN_LETT_OBLIQUE_WEIGHTED = 10;
		public const uint32 PAN_LETT_OBLIQUE_BOXED = 11;
		public const uint32 PAN_LETT_OBLIQUE_FLATTENED = 12;
		public const uint32 PAN_LETT_OBLIQUE_ROUNDED = 13;
		public const uint32 PAN_LETT_OBLIQUE_OFF_CENTER = 14;
		public const uint32 PAN_LETT_OBLIQUE_SQUARE = 15;
		public const uint32 PAN_MIDLINE_STANDARD_TRIMMED = 2;
		public const uint32 PAN_MIDLINE_STANDARD_POINTED = 3;
		public const uint32 PAN_MIDLINE_STANDARD_SERIFED = 4;
		public const uint32 PAN_MIDLINE_HIGH_TRIMMED = 5;
		public const uint32 PAN_MIDLINE_HIGH_POINTED = 6;
		public const uint32 PAN_MIDLINE_HIGH_SERIFED = 7;
		public const uint32 PAN_MIDLINE_CONSTANT_TRIMMED = 8;
		public const uint32 PAN_MIDLINE_CONSTANT_POINTED = 9;
		public const uint32 PAN_MIDLINE_CONSTANT_SERIFED = 10;
		public const uint32 PAN_MIDLINE_LOW_TRIMMED = 11;
		public const uint32 PAN_MIDLINE_LOW_POINTED = 12;
		public const uint32 PAN_MIDLINE_LOW_SERIFED = 13;
		public const uint32 PAN_XHEIGHT_CONSTANT_SMALL = 2;
		public const uint32 PAN_XHEIGHT_CONSTANT_STD = 3;
		public const uint32 PAN_XHEIGHT_CONSTANT_LARGE = 4;
		public const uint32 PAN_XHEIGHT_DUCKING_SMALL = 5;
		public const uint32 PAN_XHEIGHT_DUCKING_STD = 6;
		public const uint32 PAN_XHEIGHT_DUCKING_LARGE = 7;
		public const uint32 ELF_VENDOR_SIZE = 4;
		public const uint32 ELF_VERSION = 0;
		public const uint32 ELF_CULTURE_LATIN = 0;
		public const uint32 RASTER_FONTTYPE = 1;
		public const uint32 DEVICE_FONTTYPE = 2;
		public const uint32 TRUETYPE_FONTTYPE = 4;
		public const uint32 PC_RESERVED = 1;
		public const uint32 PC_EXPLICIT = 2;
		public const uint32 PC_NOCOLLAPSE = 4;
		public const uint32 BKMODE_LAST = 2;
		public const uint32 GM_LAST = 2;
		public const uint32 PT_CLOSEFIGURE = 1;
		public const uint32 PT_LINETO = 2;
		public const uint32 PT_BEZIERTO = 4;
		public const uint32 PT_MOVETO = 6;
		public const uint32 ABSOLUTE = 1;
		public const uint32 RELATIVE = 2;
		public const uint32 STOCK_LAST = 19;
		public const uint32 CLR_INVALID = 4294967295;
		public const uint32 BS_SOLID = 0;
		public const uint32 BS_NULL = 1;
		public const uint32 BS_HOLLOW = 1;
		public const uint32 BS_HATCHED = 2;
		public const uint32 BS_PATTERN = 3;
		public const uint32 BS_INDEXED = 4;
		public const uint32 BS_DIBPATTERN = 5;
		public const uint32 BS_DIBPATTERNPT = 6;
		public const uint32 BS_PATTERN8X8 = 7;
		public const uint32 BS_DIBPATTERN8X8 = 8;
		public const uint32 BS_MONOPATTERN = 9;
		public const uint32 HS_API_MAX = 12;
		public const uint32 DT_PLOTTER = 0;
		public const uint32 DT_RASDISPLAY = 1;
		public const uint32 DT_RASPRINTER = 2;
		public const uint32 DT_RASCAMERA = 3;
		public const uint32 DT_CHARSTREAM = 4;
		public const uint32 DT_METAFILE = 5;
		public const uint32 DT_DISPFILE = 6;
		public const uint32 CC_NONE = 0;
		public const uint32 CC_CIRCLES = 1;
		public const uint32 CC_PIE = 2;
		public const uint32 CC_CHORD = 4;
		public const uint32 CC_ELLIPSES = 8;
		public const uint32 CC_WIDE = 16;
		public const uint32 CC_STYLED = 32;
		public const uint32 CC_WIDESTYLED = 64;
		public const uint32 CC_INTERIORS = 128;
		public const uint32 CC_ROUNDRECT = 256;
		public const uint32 LC_NONE = 0;
		public const uint32 LC_POLYLINE = 2;
		public const uint32 LC_MARKER = 4;
		public const uint32 LC_POLYMARKER = 8;
		public const uint32 LC_WIDE = 16;
		public const uint32 LC_STYLED = 32;
		public const uint32 LC_WIDESTYLED = 64;
		public const uint32 LC_INTERIORS = 128;
		public const uint32 PC_NONE = 0;
		public const uint32 PC_POLYGON = 1;
		public const uint32 PC_RECTANGLE = 2;
		public const uint32 PC_WINDPOLYGON = 4;
		public const uint32 PC_TRAPEZOID = 4;
		public const uint32 PC_SCANLINE = 8;
		public const uint32 PC_WIDE = 16;
		public const uint32 PC_STYLED = 32;
		public const uint32 PC_WIDESTYLED = 64;
		public const uint32 PC_INTERIORS = 128;
		public const uint32 PC_POLYPOLYGON = 256;
		public const uint32 PC_PATHS = 512;
		public const uint32 CP_NONE = 0;
		public const uint32 CP_RECTANGLE = 1;
		public const uint32 CP_REGION = 2;
		public const uint32 TC_OP_CHARACTER = 1;
		public const uint32 TC_OP_STROKE = 2;
		public const uint32 TC_CP_STROKE = 4;
		public const uint32 TC_CR_90 = 8;
		public const uint32 TC_CR_ANY = 16;
		public const uint32 TC_SF_X_YINDEP = 32;
		public const uint32 TC_SA_DOUBLE = 64;
		public const uint32 TC_SA_INTEGER = 128;
		public const uint32 TC_SA_CONTIN = 256;
		public const uint32 TC_EA_DOUBLE = 512;
		public const uint32 TC_IA_ABLE = 1024;
		public const uint32 TC_UA_ABLE = 2048;
		public const uint32 TC_SO_ABLE = 4096;
		public const uint32 TC_RA_ABLE = 8192;
		public const uint32 TC_VA_ABLE = 16384;
		public const uint32 TC_RESERVED = 32768;
		public const uint32 TC_SCROLLBLT = 65536;
		public const uint32 RC_BITBLT = 1;
		public const uint32 RC_BANDING = 2;
		public const uint32 RC_SCALING = 4;
		public const uint32 RC_BITMAP64 = 8;
		public const uint32 RC_GDI20_OUTPUT = 16;
		public const uint32 RC_GDI20_STATE = 32;
		public const uint32 RC_SAVEBITMAP = 64;
		public const uint32 RC_DI_BITMAP = 128;
		public const uint32 RC_PALETTE = 256;
		public const uint32 RC_DIBTODEV = 512;
		public const uint32 RC_BIGFONT = 1024;
		public const uint32 RC_STRETCHBLT = 2048;
		public const uint32 RC_FLOODFILL = 4096;
		public const uint32 RC_STRETCHDIB = 8192;
		public const uint32 RC_OP_DX_OUTPUT = 16384;
		public const uint32 RC_DEVBITS = 32768;
		public const uint32 SB_NONE = 0;
		public const uint32 SB_CONST_ALPHA = 1;
		public const uint32 SB_PIXEL_ALPHA = 2;
		public const uint32 SB_PREMULT_ALPHA = 4;
		public const uint32 SB_GRAD_RECT = 16;
		public const uint32 SB_GRAD_TRI = 32;
		public const uint32 CM_NONE = 0;
		public const uint32 CM_DEVICE_ICM = 1;
		public const uint32 CM_GAMMA_RAMP = 2;
		public const uint32 CM_CMYK_COLOR = 4;
		public const uint32 SYSPAL_ERROR = 0;
		public const int32 CBM_INIT = 4;
		public const uint32 CCHFORMNAME = 32;
		public const uint32 DM_SPECVERSION = 1025;
		public const int32 DM_ORIENTATION = 1;
		public const int32 DM_PAPERSIZE = 2;
		public const int32 DM_PAPERLENGTH = 4;
		public const int32 DM_PAPERWIDTH = 8;
		public const int32 DM_SCALE = 16;
		public const int32 DM_POSITION = 32;
		public const int32 DM_NUP = 64;
		public const int32 DM_DISPLAYORIENTATION = 128;
		public const int32 DM_COPIES = 256;
		public const int32 DM_DEFAULTSOURCE = 512;
		public const int32 DM_PRINTQUALITY = 1024;
		public const int32 DM_COLOR = 2048;
		public const int32 DM_DUPLEX = 4096;
		public const int32 DM_YRESOLUTION = 8192;
		public const int32 DM_TTOPTION = 16384;
		public const int32 DM_COLLATE = 32768;
		public const int32 DM_FORMNAME = 65536;
		public const int32 DM_LOGPIXELS = 131072;
		public const int32 DM_BITSPERPEL = 262144;
		public const int32 DM_PELSWIDTH = 524288;
		public const int32 DM_PELSHEIGHT = 1048576;
		public const int32 DM_DISPLAYFLAGS = 2097152;
		public const int32 DM_DISPLAYFREQUENCY = 4194304;
		public const int32 DM_ICMMETHOD = 8388608;
		public const int32 DM_ICMINTENT = 16777216;
		public const int32 DM_MEDIATYPE = 33554432;
		public const int32 DM_DITHERTYPE = 67108864;
		public const int32 DM_PANNINGWIDTH = 134217728;
		public const int32 DM_PANNINGHEIGHT = 268435456;
		public const int32 DM_DISPLAYFIXEDOUTPUT = 536870912;
		public const uint32 DMORIENT_PORTRAIT = 1;
		public const uint32 DMORIENT_LANDSCAPE = 2;
		public const uint32 DMPAPER_LETTER = 1;
		public const uint32 DMPAPER_LETTERSMALL = 2;
		public const uint32 DMPAPER_TABLOID = 3;
		public const uint32 DMPAPER_LEDGER = 4;
		public const uint32 DMPAPER_LEGAL = 5;
		public const uint32 DMPAPER_STATEMENT = 6;
		public const uint32 DMPAPER_EXECUTIVE = 7;
		public const uint32 DMPAPER_A3 = 8;
		public const uint32 DMPAPER_A4 = 9;
		public const uint32 DMPAPER_A4SMALL = 10;
		public const uint32 DMPAPER_A5 = 11;
		public const uint32 DMPAPER_B4 = 12;
		public const uint32 DMPAPER_B5 = 13;
		public const uint32 DMPAPER_FOLIO = 14;
		public const uint32 DMPAPER_QUARTO = 15;
		public const uint32 DMPAPER_10X14 = 16;
		public const uint32 DMPAPER_11X17 = 17;
		public const uint32 DMPAPER_NOTE = 18;
		public const uint32 DMPAPER_ENV_9 = 19;
		public const uint32 DMPAPER_ENV_10 = 20;
		public const uint32 DMPAPER_ENV_11 = 21;
		public const uint32 DMPAPER_ENV_12 = 22;
		public const uint32 DMPAPER_ENV_14 = 23;
		public const uint32 DMPAPER_CSHEET = 24;
		public const uint32 DMPAPER_DSHEET = 25;
		public const uint32 DMPAPER_ESHEET = 26;
		public const uint32 DMPAPER_ENV_DL = 27;
		public const uint32 DMPAPER_ENV_C5 = 28;
		public const uint32 DMPAPER_ENV_C3 = 29;
		public const uint32 DMPAPER_ENV_C4 = 30;
		public const uint32 DMPAPER_ENV_C6 = 31;
		public const uint32 DMPAPER_ENV_C65 = 32;
		public const uint32 DMPAPER_ENV_B4 = 33;
		public const uint32 DMPAPER_ENV_B5 = 34;
		public const uint32 DMPAPER_ENV_B6 = 35;
		public const uint32 DMPAPER_ENV_ITALY = 36;
		public const uint32 DMPAPER_ENV_MONARCH = 37;
		public const uint32 DMPAPER_ENV_PERSONAL = 38;
		public const uint32 DMPAPER_FANFOLD_US = 39;
		public const uint32 DMPAPER_FANFOLD_STD_GERMAN = 40;
		public const uint32 DMPAPER_FANFOLD_LGL_GERMAN = 41;
		public const uint32 DMPAPER_ISO_B4 = 42;
		public const uint32 DMPAPER_JAPANESE_POSTCARD = 43;
		public const uint32 DMPAPER_9X11 = 44;
		public const uint32 DMPAPER_10X11 = 45;
		public const uint32 DMPAPER_15X11 = 46;
		public const uint32 DMPAPER_ENV_INVITE = 47;
		public const uint32 DMPAPER_RESERVED_48 = 48;
		public const uint32 DMPAPER_RESERVED_49 = 49;
		public const uint32 DMPAPER_LETTER_EXTRA = 50;
		public const uint32 DMPAPER_LEGAL_EXTRA = 51;
		public const uint32 DMPAPER_TABLOID_EXTRA = 52;
		public const uint32 DMPAPER_A4_EXTRA = 53;
		public const uint32 DMPAPER_LETTER_TRANSVERSE = 54;
		public const uint32 DMPAPER_A4_TRANSVERSE = 55;
		public const uint32 DMPAPER_LETTER_EXTRA_TRANSVERSE = 56;
		public const uint32 DMPAPER_A_PLUS = 57;
		public const uint32 DMPAPER_B_PLUS = 58;
		public const uint32 DMPAPER_LETTER_PLUS = 59;
		public const uint32 DMPAPER_A4_PLUS = 60;
		public const uint32 DMPAPER_A5_TRANSVERSE = 61;
		public const uint32 DMPAPER_B5_TRANSVERSE = 62;
		public const uint32 DMPAPER_A3_EXTRA = 63;
		public const uint32 DMPAPER_A5_EXTRA = 64;
		public const uint32 DMPAPER_B5_EXTRA = 65;
		public const uint32 DMPAPER_A2 = 66;
		public const uint32 DMPAPER_A3_TRANSVERSE = 67;
		public const uint32 DMPAPER_A3_EXTRA_TRANSVERSE = 68;
		public const uint32 DMPAPER_DBL_JAPANESE_POSTCARD = 69;
		public const uint32 DMPAPER_A6 = 70;
		public const uint32 DMPAPER_JENV_KAKU2 = 71;
		public const uint32 DMPAPER_JENV_KAKU3 = 72;
		public const uint32 DMPAPER_JENV_CHOU3 = 73;
		public const uint32 DMPAPER_JENV_CHOU4 = 74;
		public const uint32 DMPAPER_LETTER_ROTATED = 75;
		public const uint32 DMPAPER_A3_ROTATED = 76;
		public const uint32 DMPAPER_A4_ROTATED = 77;
		public const uint32 DMPAPER_A5_ROTATED = 78;
		public const uint32 DMPAPER_B4_JIS_ROTATED = 79;
		public const uint32 DMPAPER_B5_JIS_ROTATED = 80;
		public const uint32 DMPAPER_JAPANESE_POSTCARD_ROTATED = 81;
		public const uint32 DMPAPER_DBL_JAPANESE_POSTCARD_ROTATED = 82;
		public const uint32 DMPAPER_A6_ROTATED = 83;
		public const uint32 DMPAPER_JENV_KAKU2_ROTATED = 84;
		public const uint32 DMPAPER_JENV_KAKU3_ROTATED = 85;
		public const uint32 DMPAPER_JENV_CHOU3_ROTATED = 86;
		public const uint32 DMPAPER_JENV_CHOU4_ROTATED = 87;
		public const uint32 DMPAPER_B6_JIS = 88;
		public const uint32 DMPAPER_B6_JIS_ROTATED = 89;
		public const uint32 DMPAPER_12X11 = 90;
		public const uint32 DMPAPER_JENV_YOU4 = 91;
		public const uint32 DMPAPER_JENV_YOU4_ROTATED = 92;
		public const uint32 DMPAPER_P16K = 93;
		public const uint32 DMPAPER_P32K = 94;
		public const uint32 DMPAPER_P32KBIG = 95;
		public const uint32 DMPAPER_PENV_1 = 96;
		public const uint32 DMPAPER_PENV_2 = 97;
		public const uint32 DMPAPER_PENV_3 = 98;
		public const uint32 DMPAPER_PENV_4 = 99;
		public const uint32 DMPAPER_PENV_5 = 100;
		public const uint32 DMPAPER_PENV_6 = 101;
		public const uint32 DMPAPER_PENV_7 = 102;
		public const uint32 DMPAPER_PENV_8 = 103;
		public const uint32 DMPAPER_PENV_9 = 104;
		public const uint32 DMPAPER_PENV_10 = 105;
		public const uint32 DMPAPER_P16K_ROTATED = 106;
		public const uint32 DMPAPER_P32K_ROTATED = 107;
		public const uint32 DMPAPER_P32KBIG_ROTATED = 108;
		public const uint32 DMPAPER_PENV_1_ROTATED = 109;
		public const uint32 DMPAPER_PENV_2_ROTATED = 110;
		public const uint32 DMPAPER_PENV_3_ROTATED = 111;
		public const uint32 DMPAPER_PENV_4_ROTATED = 112;
		public const uint32 DMPAPER_PENV_5_ROTATED = 113;
		public const uint32 DMPAPER_PENV_6_ROTATED = 114;
		public const uint32 DMPAPER_PENV_7_ROTATED = 115;
		public const uint32 DMPAPER_PENV_8_ROTATED = 116;
		public const uint32 DMPAPER_PENV_9_ROTATED = 117;
		public const uint32 DMPAPER_PENV_10_ROTATED = 118;
		public const uint32 DMPAPER_LAST = 118;
		public const uint32 DMPAPER_USER = 256;
		public const uint32 DMBIN_UPPER = 1;
		public const uint32 DMBIN_ONLYONE = 1;
		public const uint32 DMBIN_LOWER = 2;
		public const uint32 DMBIN_MIDDLE = 3;
		public const uint32 DMBIN_MANUAL = 4;
		public const uint32 DMBIN_ENVELOPE = 5;
		public const uint32 DMBIN_ENVMANUAL = 6;
		public const uint32 DMBIN_AUTO = 7;
		public const uint32 DMBIN_TRACTOR = 8;
		public const uint32 DMBIN_SMALLFMT = 9;
		public const uint32 DMBIN_LARGEFMT = 10;
		public const uint32 DMBIN_LARGECAPACITY = 11;
		public const uint32 DMBIN_CASSETTE = 14;
		public const uint32 DMBIN_FORMSOURCE = 15;
		public const uint32 DMBIN_LAST = 15;
		public const uint32 DMBIN_USER = 256;
		public const int32 DMRES_DRAFT = -1;
		public const int32 DMRES_LOW = -2;
		public const int32 DMRES_MEDIUM = -3;
		public const int32 DMRES_HIGH = -4;
		public const uint32 DMCOLOR_MONOCHROME = 1;
		public const uint32 DMCOLOR_COLOR = 2;
		public const uint32 DMDUP_SIMPLEX = 1;
		public const uint32 DMDUP_VERTICAL = 2;
		public const uint32 DMDUP_HORIZONTAL = 3;
		public const uint32 DMTT_BITMAP = 1;
		public const uint32 DMTT_DOWNLOAD = 2;
		public const uint32 DMTT_SUBDEV = 3;
		public const uint32 DMTT_DOWNLOAD_OUTLINE = 4;
		public const uint32 DMCOLLATE_FALSE = 0;
		public const uint32 DMCOLLATE_TRUE = 1;
		public const uint32 DMDO_DEFAULT = 0;
		public const uint32 DMDO_90 = 1;
		public const uint32 DMDO_180 = 2;
		public const uint32 DMDO_270 = 3;
		public const uint32 DMDFO_DEFAULT = 0;
		public const uint32 DMDFO_STRETCH = 1;
		public const uint32 DMDFO_CENTER = 2;
		public const uint32 DM_INTERLACED = 2;
		public const uint32 DMDISPLAYFLAGS_TEXTMODE = 4;
		public const uint32 DMNUP_SYSTEM = 1;
		public const uint32 DMNUP_ONEUP = 2;
		public const uint32 DMICMMETHOD_NONE = 1;
		public const uint32 DMICMMETHOD_SYSTEM = 2;
		public const uint32 DMICMMETHOD_DRIVER = 3;
		public const uint32 DMICMMETHOD_DEVICE = 4;
		public const uint32 DMICMMETHOD_USER = 256;
		public const uint32 DMICM_SATURATE = 1;
		public const uint32 DMICM_CONTRAST = 2;
		public const uint32 DMICM_COLORIMETRIC = 3;
		public const uint32 DMICM_ABS_COLORIMETRIC = 4;
		public const uint32 DMICM_USER = 256;
		public const uint32 DMMEDIA_STANDARD = 1;
		public const uint32 DMMEDIA_TRANSPARENCY = 2;
		public const uint32 DMMEDIA_GLOSSY = 3;
		public const uint32 DMMEDIA_USER = 256;
		public const uint32 DMDITHER_NONE = 1;
		public const uint32 DMDITHER_COARSE = 2;
		public const uint32 DMDITHER_FINE = 3;
		public const uint32 DMDITHER_LINEART = 4;
		public const uint32 DMDITHER_ERRORDIFFUSION = 5;
		public const uint32 DMDITHER_RESERVED6 = 6;
		public const uint32 DMDITHER_RESERVED7 = 7;
		public const uint32 DMDITHER_RESERVED8 = 8;
		public const uint32 DMDITHER_RESERVED9 = 9;
		public const uint32 DMDITHER_GRAYSCALE = 10;
		public const uint32 DMDITHER_USER = 256;
		public const uint32 DISPLAY_DEVICE_ATTACHED_TO_DESKTOP = 1;
		public const uint32 DISPLAY_DEVICE_MULTI_DRIVER = 2;
		public const uint32 DISPLAY_DEVICE_PRIMARY_DEVICE = 4;
		public const uint32 DISPLAY_DEVICE_MIRRORING_DRIVER = 8;
		public const uint32 DISPLAY_DEVICE_VGA_COMPATIBLE = 16;
		public const uint32 DISPLAY_DEVICE_REMOVABLE = 32;
		public const uint32 DISPLAY_DEVICE_ACC_DRIVER = 64;
		public const uint32 DISPLAY_DEVICE_MODESPRUNED = 134217728;
		public const uint32 DISPLAY_DEVICE_RDPUDD = 16777216;
		public const uint32 DISPLAY_DEVICE_REMOTE = 67108864;
		public const uint32 DISPLAY_DEVICE_DISCONNECT = 33554432;
		public const uint32 DISPLAY_DEVICE_TS_COMPATIBLE = 2097152;
		public const uint32 DISPLAY_DEVICE_UNSAFE_MODES_ON = 524288;
		public const uint32 DISPLAY_DEVICE_ACTIVE = 1;
		public const uint32 DISPLAY_DEVICE_ATTACHED = 2;
		public const uint32 DISPLAYCONFIG_MAXPATH = 1024;
		public const uint32 DISPLAYCONFIG_PATH_MODE_IDX_INVALID = 4294967295;
		public const uint32 DISPLAYCONFIG_PATH_TARGET_MODE_IDX_INVALID = 65535;
		public const uint32 DISPLAYCONFIG_PATH_DESKTOP_IMAGE_IDX_INVALID = 65535;
		public const uint32 DISPLAYCONFIG_PATH_SOURCE_MODE_IDX_INVALID = 65535;
		public const uint32 DISPLAYCONFIG_PATH_CLONE_GROUP_INVALID = 65535;
		public const uint32 DISPLAYCONFIG_SOURCE_IN_USE = 1;
		public const uint32 DISPLAYCONFIG_TARGET_IN_USE = 1;
		public const uint32 DISPLAYCONFIG_TARGET_FORCIBLE = 2;
		public const uint32 DISPLAYCONFIG_TARGET_FORCED_AVAILABILITY_BOOT = 4;
		public const uint32 DISPLAYCONFIG_TARGET_FORCED_AVAILABILITY_PATH = 8;
		public const uint32 DISPLAYCONFIG_TARGET_FORCED_AVAILABILITY_SYSTEM = 16;
		public const uint32 DISPLAYCONFIG_TARGET_IS_HMD = 32;
		public const uint32 DISPLAYCONFIG_PATH_ACTIVE = 1;
		public const uint32 DISPLAYCONFIG_PATH_PREFERRED_UNSCALED = 4;
		public const uint32 DISPLAYCONFIG_PATH_SUPPORT_VIRTUAL_MODE = 8;
		public const uint32 DISPLAYCONFIG_PATH_VALID_FLAGS = 29;
		public const uint32 QDC_ALL_PATHS = 1;
		public const uint32 QDC_ONLY_ACTIVE_PATHS = 2;
		public const uint32 QDC_DATABASE_CURRENT = 4;
		public const uint32 QDC_VIRTUAL_MODE_AWARE = 16;
		public const uint32 QDC_INCLUDE_HMD = 32;
		public const uint32 QDC_VIRTUAL_REFRESH_RATE_AWARE = 64;
		public const uint32 SDC_TOPOLOGY_INTERNAL = 1;
		public const uint32 SDC_TOPOLOGY_CLONE = 2;
		public const uint32 SDC_TOPOLOGY_EXTEND = 4;
		public const uint32 SDC_TOPOLOGY_EXTERNAL = 8;
		public const uint32 SDC_TOPOLOGY_SUPPLIED = 16;
		public const uint32 SDC_USE_SUPPLIED_DISPLAY_CONFIG = 32;
		public const uint32 SDC_VALIDATE = 64;
		public const uint32 SDC_APPLY = 128;
		public const uint32 SDC_NO_OPTIMIZATION = 256;
		public const uint32 SDC_SAVE_TO_DATABASE = 512;
		public const uint32 SDC_ALLOW_CHANGES = 1024;
		public const uint32 SDC_PATH_PERSIST_IF_REQUIRED = 2048;
		public const uint32 SDC_FORCE_MODE_ENUMERATION = 4096;
		public const uint32 SDC_ALLOW_PATH_ORDER_CHANGES = 8192;
		public const uint32 SDC_VIRTUAL_MODE_AWARE = 32768;
		public const uint32 SDC_VIRTUAL_REFRESH_RATE_AWARE = 131072;
		public const uint32 RDH_RECTANGLES = 1;
		public const uint32 SYSRGN = 4;
		public const uint32 TT_POLYGON_TYPE = 24;
		public const uint32 TT_PRIM_LINE = 1;
		public const uint32 TT_PRIM_QSPLINE = 2;
		public const uint32 TT_PRIM_CSPLINE = 3;
		public const uint32 GCP_DBCS = 1;
		public const uint32 GCP_ERROR = 32768;
		public const uint32 FLI_MASK = 4155;
		public const int32 FLI_GLYPHS = 262144;
		public const int32 GCP_JUSTIFYIN = 2097152;
		public const uint32 GCPCLASS_LATIN = 1;
		public const uint32 GCPCLASS_HEBREW = 2;
		public const uint32 GCPCLASS_ARABIC = 2;
		public const uint32 GCPCLASS_NEUTRAL = 3;
		public const uint32 GCPCLASS_LOCALNUMBER = 4;
		public const uint32 GCPCLASS_LATINNUMBER = 5;
		public const uint32 GCPCLASS_LATINNUMERICTERMINATOR = 6;
		public const uint32 GCPCLASS_LATINNUMERICSEPARATOR = 7;
		public const uint32 GCPCLASS_NUMERICSEPARATOR = 8;
		public const uint32 GCPCLASS_PREBOUNDLTR = 128;
		public const uint32 GCPCLASS_PREBOUNDRTL = 64;
		public const uint32 GCPCLASS_POSTBOUNDLTR = 32;
		public const uint32 GCPCLASS_POSTBOUNDRTL = 16;
		public const uint32 GCPGLYPH_LINKBEFORE = 32768;
		public const uint32 GCPGLYPH_LINKAFTER = 16384;
		public const uint32 TT_AVAILABLE = 1;
		public const uint32 TT_ENABLED = 2;
		public const uint32 PFD_TYPE_RGBA = 0;
		public const uint32 PFD_TYPE_COLORINDEX = 1;
		public const uint32 PFD_MAIN_PLANE = 0;
		public const uint32 PFD_OVERLAY_PLANE = 1;
		public const int32 PFD_UNDERLAY_PLANE = -1;
		public const uint32 PFD_DOUBLEBUFFER = 1;
		public const uint32 PFD_STEREO = 2;
		public const uint32 PFD_DRAW_TO_WINDOW = 4;
		public const uint32 PFD_DRAW_TO_BITMAP = 8;
		public const uint32 PFD_SUPPORT_GDI = 16;
		public const uint32 PFD_SUPPORT_OPENGL = 32;
		public const uint32 PFD_GENERIC_FORMAT = 64;
		public const uint32 PFD_NEED_PALETTE = 128;
		public const uint32 PFD_NEED_SYSTEM_PALETTE = 256;
		public const uint32 PFD_SWAP_EXCHANGE = 512;
		public const uint32 PFD_SWAP_COPY = 1024;
		public const uint32 PFD_SWAP_LAYER_BUFFERS = 2048;
		public const uint32 PFD_GENERIC_ACCELERATED = 4096;
		public const uint32 PFD_SUPPORT_DIRECTDRAW = 8192;
		public const uint32 PFD_DIRECT3D_ACCELERATED = 16384;
		public const uint32 PFD_SUPPORT_COMPOSITION = 32768;
		public const uint32 PFD_DEPTH_DONTCARE = 536870912;
		public const uint32 PFD_DOUBLEBUFFER_DONTCARE = 1073741824;
		public const uint32 PFD_STEREO_DONTCARE = 2147483648;
		public const uint32 DC_BINADJUST = 19;
		public const uint32 DC_EMF_COMPLIANT = 20;
		public const uint32 DC_DATATYPE_PRODUCED = 21;
		public const uint32 DC_MANUFACTURER = 23;
		public const uint32 DC_MODEL = 24;
		public const uint32 PRINTRATEUNIT_PPM = 1;
		public const uint32 PRINTRATEUNIT_CPS = 2;
		public const uint32 PRINTRATEUNIT_LPM = 3;
		public const uint32 PRINTRATEUNIT_IPM = 4;
		public const int32 DCTT_BITMAP = 1;
		public const int32 DCTT_DOWNLOAD = 2;
		public const int32 DCTT_SUBDEV = 4;
		public const int32 DCTT_DOWNLOAD_OUTLINE = 8;
		public const uint32 DCBA_FACEUPNONE = 0;
		public const uint32 DCBA_FACEUPCENTER = 1;
		public const uint32 DCBA_FACEUPLEFT = 2;
		public const uint32 DCBA_FACEUPRIGHT = 3;
		public const uint32 DCBA_FACEDOWNNONE = 256;
		public const uint32 DCBA_FACEDOWNCENTER = 257;
		public const uint32 DCBA_FACEDOWNLEFT = 258;
		public const uint32 DCBA_FACEDOWNRIGHT = 259;
		public const uint32 GS_8BIT_INDICES = 1;
		public const uint32 GGI_MARK_NONEXISTING_GLYPHS = 1;
		public const uint32 MM_MAX_NUMAXES = 16;
		public const uint32 MM_MAX_AXES_NAMELEN = 16;
		public const uint32 GDIREGISTERDDRAWPACKETVERSION = 1;
		public const uint32 AC_SRC_OVER = 0;
		public const uint32 AC_SRC_ALPHA = 1;
		public const uint32 GRADIENT_FILL_OP_FLAG = 255;
		public const uint32 CA_NEGATIVE = 1;
		public const uint32 CA_LOG_FILTER = 2;
		public const uint32 ILLUMINANT_DEVICE_DEFAULT = 0;
		public const uint32 ILLUMINANT_A = 1;
		public const uint32 ILLUMINANT_B = 2;
		public const uint32 ILLUMINANT_C = 3;
		public const uint32 ILLUMINANT_D50 = 4;
		public const uint32 ILLUMINANT_D55 = 5;
		public const uint32 ILLUMINANT_D65 = 6;
		public const uint32 ILLUMINANT_D75 = 7;
		public const uint32 ILLUMINANT_F2 = 8;
		public const uint32 ILLUMINANT_MAX_INDEX = 8;
		public const uint32 ILLUMINANT_TUNGSTEN = 1;
		public const uint32 ILLUMINANT_DAYLIGHT = 3;
		public const uint32 ILLUMINANT_FLUORESCENT = 8;
		public const uint32 ILLUMINANT_NTSC = 3;
		public const uint32 DI_APPBANDING = 1;
		public const uint32 DI_ROPS_READ_DESTINATION = 2;
		public const uint32 FONTMAPPER_MAX = 10;
		public const uint32 ICM_OFF = 1;
		public const uint32 ICM_ON = 2;
		public const uint32 ICM_QUERY = 3;
		public const uint32 ICM_DONE_OUTSIDEDC = 4;
		public const uint32 ENHMETA_SIGNATURE = 1179469088;
		public const uint32 ENHMETA_STOCK_OBJECT = 2147483648;
		public const uint32 EMR_HEADER = 1;
		public const uint32 EMR_POLYBEZIER = 2;
		public const uint32 EMR_POLYGON = 3;
		public const uint32 EMR_POLYLINE = 4;
		public const uint32 EMR_POLYBEZIERTO = 5;
		public const uint32 EMR_POLYLINETO = 6;
		public const uint32 EMR_POLYPOLYLINE = 7;
		public const uint32 EMR_POLYPOLYGON = 8;
		public const uint32 EMR_SETWINDOWEXTEX = 9;
		public const uint32 EMR_SETWINDOWORGEX = 10;
		public const uint32 EMR_SETVIEWPORTEXTEX = 11;
		public const uint32 EMR_SETVIEWPORTORGEX = 12;
		public const uint32 EMR_SETBRUSHORGEX = 13;
		public const uint32 EMR_EOF = 14;
		public const uint32 EMR_SETPIXELV = 15;
		public const uint32 EMR_SETMAPPERFLAGS = 16;
		public const uint32 EMR_SETMAPMODE = 17;
		public const uint32 EMR_SETBKMODE = 18;
		public const uint32 EMR_SETPOLYFILLMODE = 19;
		public const uint32 EMR_SETROP2 = 20;
		public const uint32 EMR_SETSTRETCHBLTMODE = 21;
		public const uint32 EMR_SETTEXTALIGN = 22;
		public const uint32 EMR_SETCOLORADJUSTMENT = 23;
		public const uint32 EMR_SETTEXTCOLOR = 24;
		public const uint32 EMR_SETBKCOLOR = 25;
		public const uint32 EMR_OFFSETCLIPRGN = 26;
		public const uint32 EMR_MOVETOEX = 27;
		public const uint32 EMR_SETMETARGN = 28;
		public const uint32 EMR_EXCLUDECLIPRECT = 29;
		public const uint32 EMR_INTERSECTCLIPRECT = 30;
		public const uint32 EMR_SCALEVIEWPORTEXTEX = 31;
		public const uint32 EMR_SCALEWINDOWEXTEX = 32;
		public const uint32 EMR_SAVEDC = 33;
		public const uint32 EMR_RESTOREDC = 34;
		public const uint32 EMR_SETWORLDTRANSFORM = 35;
		public const uint32 EMR_MODIFYWORLDTRANSFORM = 36;
		public const uint32 EMR_SELECTOBJECT = 37;
		public const uint32 EMR_CREATEPEN = 38;
		public const uint32 EMR_CREATEBRUSHINDIRECT = 39;
		public const uint32 EMR_DELETEOBJECT = 40;
		public const uint32 EMR_ANGLEARC = 41;
		public const uint32 EMR_ELLIPSE = 42;
		public const uint32 EMR_RECTANGLE = 43;
		public const uint32 EMR_ROUNDRECT = 44;
		public const uint32 EMR_ARC = 45;
		public const uint32 EMR_CHORD = 46;
		public const uint32 EMR_PIE = 47;
		public const uint32 EMR_SELECTPALETTE = 48;
		public const uint32 EMR_CREATEPALETTE = 49;
		public const uint32 EMR_SETPALETTEENTRIES = 50;
		public const uint32 EMR_RESIZEPALETTE = 51;
		public const uint32 EMR_REALIZEPALETTE = 52;
		public const uint32 EMR_EXTFLOODFILL = 53;
		public const uint32 EMR_LINETO = 54;
		public const uint32 EMR_ARCTO = 55;
		public const uint32 EMR_POLYDRAW = 56;
		public const uint32 EMR_SETARCDIRECTION = 57;
		public const uint32 EMR_SETMITERLIMIT = 58;
		public const uint32 EMR_BEGINPATH = 59;
		public const uint32 EMR_ENDPATH = 60;
		public const uint32 EMR_CLOSEFIGURE = 61;
		public const uint32 EMR_FILLPATH = 62;
		public const uint32 EMR_STROKEANDFILLPATH = 63;
		public const uint32 EMR_STROKEPATH = 64;
		public const uint32 EMR_FLATTENPATH = 65;
		public const uint32 EMR_WIDENPATH = 66;
		public const uint32 EMR_SELECTCLIPPATH = 67;
		public const uint32 EMR_ABORTPATH = 68;
		public const uint32 EMR_GDICOMMENT = 70;
		public const uint32 EMR_FILLRGN = 71;
		public const uint32 EMR_FRAMERGN = 72;
		public const uint32 EMR_INVERTRGN = 73;
		public const uint32 EMR_PAINTRGN = 74;
		public const uint32 EMR_EXTSELECTCLIPRGN = 75;
		public const uint32 EMR_BITBLT = 76;
		public const uint32 EMR_STRETCHBLT = 77;
		public const uint32 EMR_MASKBLT = 78;
		public const uint32 EMR_PLGBLT = 79;
		public const uint32 EMR_SETDIBITSTODEVICE = 80;
		public const uint32 EMR_STRETCHDIBITS = 81;
		public const uint32 EMR_EXTCREATEFONTINDIRECTW = 82;
		public const uint32 EMR_EXTTEXTOUTA = 83;
		public const uint32 EMR_EXTTEXTOUTW = 84;
		public const uint32 EMR_POLYBEZIER16 = 85;
		public const uint32 EMR_POLYGON16 = 86;
		public const uint32 EMR_POLYLINE16 = 87;
		public const uint32 EMR_POLYBEZIERTO16 = 88;
		public const uint32 EMR_POLYLINETO16 = 89;
		public const uint32 EMR_POLYPOLYLINE16 = 90;
		public const uint32 EMR_POLYPOLYGON16 = 91;
		public const uint32 EMR_POLYDRAW16 = 92;
		public const uint32 EMR_CREATEMONOBRUSH = 93;
		public const uint32 EMR_CREATEDIBPATTERNBRUSHPT = 94;
		public const uint32 EMR_EXTCREATEPEN = 95;
		public const uint32 EMR_POLYTEXTOUTA = 96;
		public const uint32 EMR_POLYTEXTOUTW = 97;
		public const uint32 EMR_SETICMMODE = 98;
		public const uint32 EMR_CREATECOLORSPACE = 99;
		public const uint32 EMR_SETCOLORSPACE = 100;
		public const uint32 EMR_DELETECOLORSPACE = 101;
		public const uint32 EMR_GLSRECORD = 102;
		public const uint32 EMR_GLSBOUNDEDRECORD = 103;
		public const uint32 EMR_PIXELFORMAT = 104;
		public const uint32 EMR_RESERVED_105 = 105;
		public const uint32 EMR_RESERVED_106 = 106;
		public const uint32 EMR_RESERVED_107 = 107;
		public const uint32 EMR_RESERVED_108 = 108;
		public const uint32 EMR_RESERVED_109 = 109;
		public const uint32 EMR_RESERVED_110 = 110;
		public const uint32 EMR_COLORCORRECTPALETTE = 111;
		public const uint32 EMR_SETICMPROFILEA = 112;
		public const uint32 EMR_SETICMPROFILEW = 113;
		public const uint32 EMR_ALPHABLEND = 114;
		public const uint32 EMR_SETLAYOUT = 115;
		public const uint32 EMR_TRANSPARENTBLT = 116;
		public const uint32 EMR_RESERVED_117 = 117;
		public const uint32 EMR_GRADIENTFILL = 118;
		public const uint32 EMR_RESERVED_119 = 119;
		public const uint32 EMR_RESERVED_120 = 120;
		public const uint32 EMR_COLORMATCHTOTARGETW = 121;
		public const uint32 EMR_CREATECOLORSPACEW = 122;
		public const uint32 EMR_MIN = 1;
		public const uint32 EMR_MAX = 122;
		public const uint32 SETICMPROFILE_EMBEDED = 1;
		public const uint32 CREATECOLORSPACE_EMBEDED = 1;
		public const uint32 COLORMATCHTOTARGET_EMBEDED = 1;
		public const uint32 GDICOMMENT_IDENTIFIER = 1128875079;
		public const uint32 GDICOMMENT_WINDOWS_METAFILE = 2147483649;
		public const uint32 GDICOMMENT_BEGINGROUP = 2;
		public const uint32 GDICOMMENT_ENDGROUP = 3;
		public const uint32 GDICOMMENT_MULTIFORMATS = 1073741828;
		public const uint32 EPS_SIGNATURE = 1179865157;
		public const uint32 GDICOMMENT_UNICODE_STRING = 64;
		public const uint32 GDICOMMENT_UNICODE_END = 128;
		public const uint32 WGL_FONT_LINES = 0;
		public const uint32 WGL_FONT_POLYGONS = 1;
		public const uint32 LPD_DOUBLEBUFFER = 1;
		public const uint32 LPD_STEREO = 2;
		public const uint32 LPD_SUPPORT_GDI = 16;
		public const uint32 LPD_SUPPORT_OPENGL = 32;
		public const uint32 LPD_SHARE_DEPTH = 64;
		public const uint32 LPD_SHARE_STENCIL = 128;
		public const uint32 LPD_SHARE_ACCUM = 256;
		public const uint32 LPD_SWAP_EXCHANGE = 512;
		public const uint32 LPD_SWAP_COPY = 1024;
		public const uint32 LPD_TRANSPARENT = 4096;
		public const uint32 LPD_TYPE_RGBA = 0;
		public const uint32 LPD_TYPE_COLORINDEX = 1;
		public const uint32 WGL_SWAP_MAIN_PLANE = 1;
		public const uint32 WGL_SWAP_OVERLAY1 = 2;
		public const uint32 WGL_SWAP_OVERLAY2 = 4;
		public const uint32 WGL_SWAP_OVERLAY3 = 8;
		public const uint32 WGL_SWAP_OVERLAY4 = 16;
		public const uint32 WGL_SWAP_OVERLAY5 = 32;
		public const uint32 WGL_SWAP_OVERLAY6 = 64;
		public const uint32 WGL_SWAP_OVERLAY7 = 128;
		public const uint32 WGL_SWAP_OVERLAY8 = 256;
		public const uint32 WGL_SWAP_OVERLAY9 = 512;
		public const uint32 WGL_SWAP_OVERLAY10 = 1024;
		public const uint32 WGL_SWAP_OVERLAY11 = 2048;
		public const uint32 WGL_SWAP_OVERLAY12 = 4096;
		public const uint32 WGL_SWAP_OVERLAY13 = 8192;
		public const uint32 WGL_SWAP_OVERLAY14 = 16384;
		public const uint32 WGL_SWAP_OVERLAY15 = 32768;
		public const uint32 WGL_SWAP_UNDERLAY1 = 65536;
		public const uint32 WGL_SWAP_UNDERLAY2 = 131072;
		public const uint32 WGL_SWAP_UNDERLAY3 = 262144;
		public const uint32 WGL_SWAP_UNDERLAY4 = 524288;
		public const uint32 WGL_SWAP_UNDERLAY5 = 1048576;
		public const uint32 WGL_SWAP_UNDERLAY6 = 2097152;
		public const uint32 WGL_SWAP_UNDERLAY7 = 4194304;
		public const uint32 WGL_SWAP_UNDERLAY8 = 8388608;
		public const uint32 WGL_SWAP_UNDERLAY9 = 16777216;
		public const uint32 WGL_SWAP_UNDERLAY10 = 33554432;
		public const uint32 WGL_SWAP_UNDERLAY11 = 67108864;
		public const uint32 WGL_SWAP_UNDERLAY12 = 134217728;
		public const uint32 WGL_SWAP_UNDERLAY13 = 268435456;
		public const uint32 WGL_SWAP_UNDERLAY14 = 536870912;
		public const uint32 WGL_SWAP_UNDERLAY15 = 1073741824;
		public const uint32 WGL_SWAPMULTIPLE_MAX = 16;
		public const uint32 NEWTRANSPARENT = 3;
		public const uint32 QUERYROPSUPPORT = 40;
		public const uint32 SELECTDIB = 41;
		public const uint32 SC_SCREENSAVE = 61760;
		public const uint32 TTFCFP_SUBSET = 0;
		public const uint32 TTFCFP_SUBSET1 = 1;
		public const uint32 TTFCFP_DELTA = 2;
		public const uint32 TTFCFP_APPLE_PLATFORMID = 1;
		public const uint32 TTFCFP_MS_PLATFORMID = 3;
		public const uint32 TTFCFP_DONT_CARE = 65535;
		public const uint32 TTFCFP_LANG_KEEP_ALL = 0;
		public const uint32 TTFCFP_FLAGS_SUBSET = 1;
		public const uint32 TTFCFP_FLAGS_COMPRESS = 2;
		public const uint32 TTFCFP_FLAGS_TTC = 4;
		public const uint32 TTFCFP_FLAGS_GLYPHLIST = 8;
		public const uint32 TTFMFP_SUBSET = 0;
		public const uint32 TTFMFP_SUBSET1 = 1;
		public const uint32 TTFMFP_DELTA = 2;
		public const uint32 ERR_GENERIC = 1000;
		public const uint32 ERR_READOUTOFBOUNDS = 1001;
		public const uint32 ERR_WRITEOUTOFBOUNDS = 1002;
		public const uint32 ERR_READCONTROL = 1003;
		public const uint32 ERR_WRITECONTROL = 1004;
		public const uint32 ERR_MEM = 1005;
		public const uint32 ERR_FORMAT = 1006;
		public const uint32 ERR_WOULD_GROW = 1007;
		public const uint32 ERR_VERSION = 1008;
		public const uint32 ERR_NO_GLYPHS = 1009;
		public const uint32 ERR_INVALID_MERGE_FORMATS = 1010;
		public const uint32 ERR_INVALID_MERGE_CHECKSUMS = 1011;
		public const uint32 ERR_INVALID_MERGE_NUMGLYPHS = 1012;
		public const uint32 ERR_INVALID_DELTA_FORMAT = 1013;
		public const uint32 ERR_NOT_TTC = 1014;
		public const uint32 ERR_INVALID_TTC_INDEX = 1015;
		public const uint32 ERR_MISSING_CMAP = 1030;
		public const uint32 ERR_MISSING_GLYF = 1031;
		public const uint32 ERR_MISSING_HEAD = 1032;
		public const uint32 ERR_MISSING_HHEA = 1033;
		public const uint32 ERR_MISSING_HMTX = 1034;
		public const uint32 ERR_MISSING_LOCA = 1035;
		public const uint32 ERR_MISSING_MAXP = 1036;
		public const uint32 ERR_MISSING_NAME = 1037;
		public const uint32 ERR_MISSING_POST = 1038;
		public const uint32 ERR_MISSING_OS2 = 1039;
		public const uint32 ERR_MISSING_VHEA = 1040;
		public const uint32 ERR_MISSING_VMTX = 1041;
		public const uint32 ERR_MISSING_HHEA_OR_VHEA = 1042;
		public const uint32 ERR_MISSING_HMTX_OR_VMTX = 1043;
		public const uint32 ERR_MISSING_EBDT = 1044;
		public const uint32 ERR_INVALID_CMAP = 1060;
		public const uint32 ERR_INVALID_GLYF = 1061;
		public const uint32 ERR_INVALID_HEAD = 1062;
		public const uint32 ERR_INVALID_HHEA = 1063;
		public const uint32 ERR_INVALID_HMTX = 1064;
		public const uint32 ERR_INVALID_LOCA = 1065;
		public const uint32 ERR_INVALID_MAXP = 1066;
		public const uint32 ERR_INVALID_NAME = 1067;
		public const uint32 ERR_INVALID_POST = 1068;
		public const uint32 ERR_INVALID_OS2 = 1069;
		public const uint32 ERR_INVALID_VHEA = 1070;
		public const uint32 ERR_INVALID_VMTX = 1071;
		public const uint32 ERR_INVALID_HHEA_OR_VHEA = 1072;
		public const uint32 ERR_INVALID_HMTX_OR_VMTX = 1073;
		public const uint32 ERR_INVALID_TTO = 1080;
		public const uint32 ERR_INVALID_GSUB = 1081;
		public const uint32 ERR_INVALID_GPOS = 1082;
		public const uint32 ERR_INVALID_GDEF = 1083;
		public const uint32 ERR_INVALID_JSTF = 1084;
		public const uint32 ERR_INVALID_BASE = 1085;
		public const uint32 ERR_INVALID_EBLC = 1086;
		public const uint32 ERR_INVALID_LTSH = 1087;
		public const uint32 ERR_INVALID_VDMX = 1088;
		public const uint32 ERR_INVALID_HDMX = 1089;
		public const uint32 ERR_PARAMETER0 = 1100;
		public const uint32 ERR_PARAMETER1 = 1101;
		public const uint32 ERR_PARAMETER2 = 1102;
		public const uint32 ERR_PARAMETER3 = 1103;
		public const uint32 ERR_PARAMETER4 = 1104;
		public const uint32 ERR_PARAMETER5 = 1105;
		public const uint32 ERR_PARAMETER6 = 1106;
		public const uint32 ERR_PARAMETER7 = 1107;
		public const uint32 ERR_PARAMETER8 = 1108;
		public const uint32 ERR_PARAMETER9 = 1109;
		public const uint32 ERR_PARAMETER10 = 1110;
		public const uint32 ERR_PARAMETER11 = 1111;
		public const uint32 ERR_PARAMETER12 = 1112;
		public const uint32 ERR_PARAMETER13 = 1113;
		public const uint32 ERR_PARAMETER14 = 1114;
		public const uint32 ERR_PARAMETER15 = 1115;
		public const uint32 ERR_PARAMETER16 = 1116;
		public const uint32 CHARSET_DEFAULT = 1;
		public const uint32 CHARSET_GLYPHIDX = 3;
		public const uint32 TTEMBED_FAILIFVARIATIONSIMULATED = 16;
		public const uint32 TTEMBED_WEBOBJECT = 128;
		public const uint32 TTEMBED_XORENCRYPTDATA = 268435456;
		public const uint32 TTEMBED_VARIATIONSIMULATED = 1;
		public const uint32 TTEMBED_EUDCEMBEDDED = 2;
		public const uint32 TTEMBED_SUBSETCANCEL = 4;
		public const uint32 TTLOAD_PRIVATE = 1;
		public const uint32 TTLOAD_EUDC_OVERWRITE = 2;
		public const uint32 TTLOAD_EUDC_SET = 4;
		public const uint32 TTDELETE_DONTREMOVEFONT = 1;
		public const int32 E_NONE = 0;
		public const int32 E_API_NOTIMPL = 1;
		public const int32 E_CHARCODECOUNTINVALID = 2;
		public const int32 E_CHARCODESETINVALID = 3;
		public const int32 E_DEVICETRUETYPEFONT = 4;
		public const int32 E_HDCINVALID = 6;
		public const int32 E_NOFREEMEMORY = 7;
		public const int32 E_FONTREFERENCEINVALID = 8;
		public const int32 E_NOTATRUETYPEFONT = 10;
		public const int32 E_ERRORACCESSINGFONTDATA = 12;
		public const int32 E_ERRORACCESSINGFACENAME = 13;
		public const int32 E_ERRORUNICODECONVERSION = 17;
		public const int32 E_ERRORCONVERTINGCHARS = 18;
		public const int32 E_EXCEPTION = 19;
		public const int32 E_RESERVEDPARAMNOTNULL = 20;
		public const int32 E_CHARSETINVALID = 21;
		public const int32 E_FILE_NOT_FOUND = 23;
		public const int32 E_TTC_INDEX_OUT_OF_RANGE = 24;
		public const int32 E_INPUTPARAMINVALID = 25;
		public const int32 E_ERRORCOMPRESSINGFONTDATA = 256;
		public const int32 E_FONTDATAINVALID = 258;
		public const int32 E_NAMECHANGEFAILED = 259;
		public const int32 E_FONTNOTEMBEDDABLE = 260;
		public const int32 E_PRIVSINVALID = 261;
		public const int32 E_SUBSETTINGFAILED = 262;
		public const int32 E_READFROMSTREAMFAILED = 263;
		public const int32 E_SAVETOSTREAMFAILED = 264;
		public const int32 E_NOOS2 = 265;
		public const int32 E_T2NOFREEMEMORY = 266;
		public const int32 E_ERRORREADINGFONTDATA = 267;
		public const int32 E_FLAGSINVALID = 268;
		public const int32 E_ERRORCREATINGFONTFILE = 269;
		public const int32 E_FONTALREADYEXISTS = 270;
		public const int32 E_FONTNAMEALREADYEXISTS = 271;
		public const int32 E_FONTINSTALLFAILED = 272;
		public const int32 E_ERRORDECOMPRESSINGFONTDATA = 273;
		public const int32 E_ERRORACCESSINGEXCLUDELIST = 274;
		public const int32 E_FACENAMEINVALID = 275;
		public const int32 E_STREAMINVALID = 276;
		public const int32 E_STATUSINVALID = 277;
		public const int32 E_PRIVSTATUSINVALID = 278;
		public const int32 E_PERMISSIONSINVALID = 279;
		public const int32 E_PBENABLEDINVALID = 280;
		public const int32 E_SUBSETTINGEXCEPTION = 281;
		public const int32 E_SUBSTRING_TEST_FAIL = 282;
		public const int32 E_FONTVARIATIONSIMULATED = 283;
		public const int32 E_FONTFAMILYNAMENOTINFULL = 285;
		public const int32 E_ADDFONTFAILED = 512;
		public const int32 E_COULDNTCREATETEMPFILE = 513;
		public const int32 E_FONTFILECREATEFAILED = 515;
		public const int32 E_WINDOWSAPI = 516;
		public const int32 E_FONTFILENOTFOUND = 517;
		public const int32 E_RESOURCEFILECREATEFAILED = 518;
		public const int32 E_ERROREXPANDINGFONTDATA = 519;
		public const int32 E_ERRORGETTINGDC = 520;
		public const int32 E_EXCEPTIONINDECOMPRESSION = 521;
		public const int32 E_EXCEPTIONINCOMPRESSION = 522;
		
		// --- Typedefs ---
		
		public typealias HDC = int;
		public typealias CreatedHDC = int;
		public typealias HBITMAP = int;
		public typealias HRGN = int;
		public typealias HPEN = int;
		public typealias HBRUSH = int;
		public typealias HFONT = int;
		public typealias HMETAFILE = int;
		public typealias HENHMETAFILE = int;
		public typealias HPALETTE = int;
		public typealias HdcMetdataFileHandle = int;
		public typealias HdcMetdataEnhFileHandle = int;
		public typealias HGDIOBJ = int;
		public typealias HMONITOR = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum R2_MODE : int32
		{
			BLACK = 1,
			NOTMERGEPEN = 2,
			MASKNOTPEN = 3,
			NOTCOPYPEN = 4,
			MASKPENNOT = 5,
			NOT = 6,
			XORPEN = 7,
			NOTMASKPEN = 8,
			MASKPEN = 9,
			NOTXORPEN = 10,
			NOP = 11,
			MERGENOTPEN = 12,
			COPYPEN = 13,
			MERGEPENNOT = 14,
			MERGEPEN = 15,
			WHITE = 16,
			LAST = 16,
		}
		[AllowDuplicates]
		public enum RGN_COMBINE_MODE : int32
		{
			AND = 1,
			OR = 2,
			XOR = 3,
			DIFF = 4,
			COPY = 5,
			MIN = 1,
			MAX = 5,
		}
		public enum ETO_OPTIONS : uint32
		{
			OPAQUE = 2,
			CLIPPED = 4,
			GLYPH_INDEX = 16,
			RTLREADING = 128,
			NUMERICSLOCAL = 1024,
			NUMERICSLATIN = 2048,
			IGNORELANGUAGE = 4096,
			PDY = 8192,
			REVERSE_INDEX_MAP = 65536,
		}
		public enum OBJ_TYPE : int32
		{
			PEN = 1,
			BRUSH = 2,
			DC = 3,
			METADC = 4,
			PAL = 5,
			FONT = 6,
			BITMAP = 7,
			REGION = 8,
			METAFILE = 9,
			MEMDC = 10,
			EXTPEN = 11,
			ENHMETADC = 12,
			ENHMETAFILE = 13,
			COLORSPACE = 14,
		}
		public enum ROP_CODE : uint32
		{
			SRCCOPY = 13369376,
			SRCPAINT = 15597702,
			SRCAND = 8913094,
			SRCINVERT = 6684742,
			SRCERASE = 4457256,
			NOTSRCCOPY = 3342344,
			NOTSRCERASE = 1114278,
			MERGECOPY = 12583114,
			MERGEPAINT = 12255782,
			PATCOPY = 15728673,
			PATPAINT = 16452105,
			PATINVERT = 5898313,
			DSTINVERT = 5570569,
			BLACKNESS = 66,
			WHITENESS = 16711778,
			NOMIRRORBITMAP = 2147483648,
			CAPTUREBLT = 1073741824,
		}
		public enum DIB_USAGE : uint32
		{
			RGB_COLORS = 0,
			PAL_COLORS = 1,
		}
		[AllowDuplicates]
		public enum DRAWEDGE_FLAGS : uint32
		{
			BDR_RAISEDOUTER = 1,
			BDR_SUNKENOUTER = 2,
			BDR_RAISEDINNER = 4,
			BDR_SUNKENINNER = 8,
			BDR_OUTER = 3,
			BDR_INNER = 12,
			BDR_RAISED = 5,
			BDR_SUNKEN = 10,
			EDGE_RAISED = 5,
			EDGE_SUNKEN = 10,
			EDGE_ETCHED = 6,
			EDGE_BUMP = 9,
		}
		public enum DFC_TYPE : uint32
		{
			CAPTION = 1,
			MENU = 2,
			SCROLL = 3,
			BUTTON = 4,
			POPUPMENU = 5,
		}
		[AllowDuplicates]
		public enum DFCS_STATE : uint32
		{
			CAPTIONCLOSE = 0,
			CAPTIONMIN = 1,
			CAPTIONMAX = 2,
			CAPTIONRESTORE = 3,
			CAPTIONHELP = 4,
			MENUARROW = 0,
			MENUCHECK = 1,
			MENUBULLET = 2,
			MENUARROWRIGHT = 4,
			SCROLLUP = 0,
			SCROLLDOWN = 1,
			SCROLLLEFT = 2,
			SCROLLRIGHT = 3,
			SCROLLCOMBOBOX = 5,
			SCROLLSIZEGRIP = 8,
			SCROLLSIZEGRIPRIGHT = 16,
			BUTTONCHECK = 0,
			BUTTONRADIOIMAGE = 1,
			BUTTONRADIOMASK = 2,
			BUTTONRADIO = 4,
			BUTTON3STATE = 8,
			BUTTONPUSH = 16,
			INACTIVE = 256,
			PUSHED = 512,
			CHECKED = 1024,
			TRANSPARENT = 2048,
			HOT = 4096,
			ADJUSTRECT = 8192,
			FLAT = 16384,
			MONO = 32768,
		}
		public enum CDS_TYPE : uint32
		{
			FULLSCREEN = 4,
			GLOBAL = 8,
			NORESET = 268435456,
			RESET = 1073741824,
			SET_PRIMARY = 16,
			TEST = 2,
			UPDATEREGISTRY = 1,
			VIDEOPARAMETERS = 32,
			ENABLE_UNSAFE_MODES = 256,
			DISABLE_UNSAFE_MODES = 512,
			RESET_EX = 536870912,
		}
		public enum DISP_CHANGE : int32
		{
			SUCCESSFUL = 0,
			RESTART = 1,
			FAILED = -1,
			BADMODE = -2,
			NOTUPDATED = -3,
			BADFLAGS = -4,
			BADPARAM = -5,
			BADDUALVIEW = -6,
		}
		[AllowDuplicates]
		public enum DRAWSTATE_FLAGS : uint32
		{
			DST_COMPLEX = 0,
			DST_TEXT = 1,
			DST_PREFIXTEXT = 2,
			DST_ICON = 3,
			DST_BITMAP = 4,
			DSS_NORMAL = 0,
			DSS_UNION = 16,
			DSS_DISABLED = 32,
			DSS_MONO = 128,
			DSS_HIDEPREFIX = 512,
			DSS_PREFIXONLY = 1024,
			DSS_RIGHT = 32768,
		}
		public enum REDRAW_WINDOW_FLAGS : uint32
		{
			INVALIDATE = 1,
			INTERNALPAINT = 2,
			ERASE = 4,
			VALIDATE = 8,
			NOINTERNALPAINT = 16,
			NOERASE = 32,
			NOCHILDREN = 64,
			ALLCHILDREN = 128,
			UPDATENOW = 256,
			ERASENOW = 512,
			FRAME = 1024,
			NOFRAME = 2048,
		}
		public enum ENUM_DISPLAY_SETTINGS_MODE : uint32
		{
			CURRENT_SETTINGS = 4294967295,
			REGISTRY_SETTINGS = 4294967294,
		}
		[AllowDuplicates]
		public enum TEXT_ALIGN_OPTIONS : uint32
		{
			TA_NOUPDATECP = 0,
			TA_UPDATECP = 1,
			TA_LEFT = 0,
			TA_RIGHT = 2,
			TA_CENTER = 6,
			TA_TOP = 0,
			TA_BOTTOM = 8,
			TA_BASELINE = 24,
			TA_RTLREADING = 256,
			TA_MASK = 287,
			VTA_BASELINE = 24,
			VTA_LEFT = 8,
			VTA_RIGHT = 0,
			VTA_CENTER = 6,
			VTA_BOTTOM = 2,
			VTA_TOP = 0,
		}
		[AllowDuplicates]
		public enum PEN_STYLE : uint32
		{
			GEOMETRIC = 65536,
			COSMETIC = 0,
			SOLID = 0,
			DASH = 1,
			DOT = 2,
			DASHDOT = 3,
			DASHDOTDOT = 4,
			NULL = 5,
			INSIDEFRAME = 6,
			USERSTYLE = 7,
			ALTERNATE = 8,
			STYLE_MASK = 15,
			ENDCAP_ROUND = 0,
			ENDCAP_SQUARE = 256,
			ENDCAP_FLAT = 512,
			ENDCAP_MASK = 3840,
			JOIN_ROUND = 0,
			JOIN_BEVEL = 4096,
			JOIN_MITER = 8192,
			JOIN_MASK = 61440,
			TYPE_MASK = 983040,
		}
		public enum TTEMBED_FLAGS : uint32
		{
			EMBEDEUDC = 32,
			RAW = 0,
			SUBSET = 1,
			TTCOMPRESSED = 4,
		}
		[AllowDuplicates]
		public enum DRAW_TEXT_FORMAT : uint32
		{
			BOTTOM = 8,
			CALCRECT = 1024,
			CENTER = 1,
			EDITCONTROL = 8192,
			END_ELLIPSIS = 32768,
			EXPANDTABS = 64,
			EXTERNALLEADING = 512,
			HIDEPREFIX = 1048576,
			INTERNAL = 4096,
			LEFT = 0,
			MODIFYSTRING = 65536,
			NOCLIP = 256,
			NOFULLWIDTHCHARBREAK = 524288,
			NOPREFIX = 2048,
			PATH_ELLIPSIS = 16384,
			PREFIXONLY = 2097152,
			RIGHT = 2,
			RTLREADING = 131072,
			SINGLELINE = 32,
			TABSTOP = 128,
			TOP = 0,
			VCENTER = 4,
			WORDBREAK = 16,
			WORD_ELLIPSIS = 262144,
		}
		public enum EMBED_FONT_CHARSET : uint32
		{
			UNICODE = 1,
			SYMBOL = 2,
		}
		public enum GET_DCX_FLAGS : uint32
		{
			WINDOW = 1,
			CACHE = 2,
			PARENTCLIP = 32,
			CLIPSIBLINGS = 16,
			CLIPCHILDREN = 8,
			NORESETATTRS = 4,
			LOCKWINDOWUPDATE = 1024,
			EXCLUDERGN = 64,
			INTERSECTRGN = 128,
			INTERSECTUPDATE = 512,
			VALIDATE = 2097152,
		}
		public enum GET_GLYPH_OUTLINE_FORMAT : uint32
		{
			BEZIER = 3,
			BITMAP = 1,
			GLYPH_INDEX = 128,
			GRAY2_BITMAP = 4,
			GRAY4_BITMAP = 5,
			GRAY8_BITMAP = 6,
			METRICS = 0,
			NATIVE = 2,
			UNHINTED = 256,
		}
		public enum SET_BOUNDS_RECT_FLAGS : uint32
		{
			ACCUMULATE = 2,
			DISABLE = 8,
			ENABLE = 4,
			RESET = 1,
		}
		[AllowDuplicates]
		public enum GET_STOCK_OBJECT_FLAGS : uint32
		{
			BLACK_BRUSH = 4,
			DKGRAY_BRUSH = 3,
			DC_BRUSH = 18,
			GRAY_BRUSH = 2,
			HOLLOW_BRUSH = 5,
			LTGRAY_BRUSH = 1,
			NULL_BRUSH = 5,
			WHITE_BRUSH = 0,
			BLACK_PEN = 7,
			DC_PEN = 19,
			NULL_PEN = 8,
			WHITE_PEN = 6,
			ANSI_FIXED_FONT = 11,
			ANSI_VAR_FONT = 12,
			DEVICE_DEFAULT_FONT = 14,
			DEFAULT_GUI_FONT = 17,
			OEM_FIXED_FONT = 10,
			SYSTEM_FONT = 13,
			SYSTEM_FIXED_FONT = 16,
			DEFAULT_PALETTE = 15,
		}
		public enum MODIFY_WORLD_TRANSFORM_MODE : uint32
		{
			IDENTITY = 1,
			LEFTMULTIPLY = 2,
			RIGHTMULTIPLY = 3,
		}
		public enum FONT_CLIP_PRECISION : uint32
		{
			CHARACTER_PRECIS = 1,
			DEFAULT_PRECIS = 0,
			DFA_DISABLE = 64,
			EMBEDDED = 128,
			LH_ANGLES = 16,
			MASK = 15,
			STROKE_PRECIS = 2,
			TT_ALWAYS = 32,
		}
		public enum CREATE_POLYGON_RGN_MODE : uint32
		{
			ALTERNATE = 1,
			WINDING = 2,
		}
		public enum EMBEDDED_FONT_PRIV_STATUS : uint32
		{
			PREVIEWPRINT = 1,
			EDITABLE = 2,
			INSTALLABLE = 3,
			NOEMBEDDING = 4,
		}
		public enum MONITOR_FROM_FLAGS : uint32
		{
			DEFAULTTONEAREST = 2,
			DEFAULTTONULL = 0,
			DEFAULTTOPRIMARY = 1,
		}
		public enum FONT_RESOURCE_CHARACTERISTICS : uint32
		{
			PRIVATE = 16,
			NOT_ENUM = 32,
		}
		public enum DC_LAYOUT : uint32
		{
			BITMAPORIENTATIONPRESERVED = 8,
			RTL = 1,
		}
		public enum GET_DEVICE_CAPS_INDEX : uint32
		{
			DRIVERVERSION = 0,
			TECHNOLOGY = 2,
			HORZSIZE = 4,
			VERTSIZE = 6,
			HORZRES = 8,
			VERTRES = 10,
			BITSPIXEL = 12,
			PLANES = 14,
			NUMBRUSHES = 16,
			NUMPENS = 18,
			NUMMARKERS = 20,
			NUMFONTS = 22,
			NUMCOLORS = 24,
			PDEVICESIZE = 26,
			CURVECAPS = 28,
			LINECAPS = 30,
			POLYGONALCAPS = 32,
			TEXTCAPS = 34,
			CLIPCAPS = 36,
			RASTERCAPS = 38,
			ASPECTX = 40,
			ASPECTY = 42,
			ASPECTXY = 44,
			LOGPIXELSX = 88,
			LOGPIXELSY = 90,
			SIZEPALETTE = 104,
			NUMRESERVED = 106,
			COLORRES = 108,
			PHYSICALWIDTH = 110,
			PHYSICALHEIGHT = 111,
			PHYSICALOFFSETX = 112,
			PHYSICALOFFSETY = 113,
			SCALINGFACTORX = 114,
			SCALINGFACTORY = 115,
			VREFRESH = 116,
			DESKTOPVERTRES = 117,
			DESKTOPHORZRES = 118,
			BLTALIGNMENT = 119,
			SHADEBLENDCAPS = 120,
			COLORMGMTCAPS = 121,
		}
		public enum FONT_OUTPUT_PRECISION : uint32
		{
			CHARACTER_PRECIS = 2,
			DEFAULT_PRECIS = 0,
			DEVICE_PRECIS = 5,
			OUTLINE_PRECIS = 8,
			PS_ONLY_PRECIS = 10,
			RASTER_PRECIS = 6,
			STRING_PRECIS = 1,
			STROKE_PRECIS = 3,
			TT_ONLY_PRECIS = 7,
			TT_PRECIS = 4,
		}
		public enum ARC_DIRECTION : uint32
		{
			COUNTERCLOCKWISE = 1,
			CLOCKWISE = 2,
		}
		public enum TTLOAD_EMBEDDED_FONT_STATUS : uint32
		{
			SUBSETTED = 1,
			IN_SYSSTARTUP = 2,
		}
		[AllowDuplicates]
		public enum STRETCH_BLT_MODE : uint32
		{
			BLACKONWHITE = 1,
			COLORONCOLOR = 3,
			HALFTONE = 4,
			STRETCH_ANDSCANS = 1,
			STRETCH_DELETESCANS = 3,
			STRETCH_HALFTONE = 4,
			STRETCH_ORSCANS = 2,
			WHITEONBLACK = 2,
		}
		public enum FONT_QUALITY : uint32
		{
			ANTIALIASED_QUALITY = 4,
			CLEARTYPE_QUALITY = 5,
			DEFAULT_QUALITY = 0,
			DRAFT_QUALITY = 1,
			NONANTIALIASED_QUALITY = 3,
			PROOF_QUALITY = 2,
		}
		public enum BACKGROUND_MODE : uint32
		{
			OPAQUE = 2,
			TRANSPARENT = 1,
		}
		public enum GET_CHARACTER_PLACEMENT_FLAGS : uint32
		{
			CLASSIN = 524288,
			DIACRITIC = 256,
			DISPLAYZWG = 4194304,
			GLYPHSHAPE = 16,
			JUSTIFY = 65536,
			KASHIDA = 1024,
			LIGATE = 32,
			MAXEXTENT = 1048576,
			NEUTRALOVERRIDE = 33554432,
			NUMERICOVERRIDE = 16777216,
			NUMERICSLATIN = 67108864,
			NUMERICSLOCAL = 134217728,
			REORDER = 2,
			SYMSWAPOFF = 8388608,
			USEKERNING = 8,
		}
		public enum DRAW_EDGE_FLAGS : uint32
		{
			ADJUST = 8192,
			BOTTOM = 8,
			BOTTOMLEFT = 9,
			BOTTOMRIGHT = 12,
			DIAGONAL = 16,
			DIAGONAL_ENDBOTTOMLEFT = 25,
			DIAGONAL_ENDBOTTOMRIGHT = 28,
			DIAGONAL_ENDTOPLEFT = 19,
			DIAGONAL_ENDTOPRIGHT = 22,
			FLAT = 16384,
			LEFT = 1,
			MIDDLE = 2048,
			MONO = 32768,
			RECT = 15,
			RIGHT = 4,
			SOFT = 4096,
			TOP = 2,
			TOPLEFT = 3,
			TOPRIGHT = 6,
		}
		[AllowDuplicates]
		public enum FONT_LICENSE_PRIVS : uint32
		{
			PREVIEWPRINT = 4,
			EDITABLE = 8,
			INSTALLABLE = 0,
			NOEMBEDDING = 2,
			DEFAULT = 0,
		}
		public enum GRADIENT_FILL : uint32
		{
			RECT_H = 0,
			RECT_V = 1,
			TRIANGLE = 2,
		}
		[AllowDuplicates]
		public enum CREATE_FONT_PACKAGE_SUBSET_ENCODING : uint32
		{
			STD_MAC_CHAR_SET = 0,
			SYMBOL_CHAR_SET = 0,
			UNICODE_CHAR_SET = 1,
		}
		public enum EXT_FLOOD_FILL_TYPE : uint32
		{
			FLOODFILLBORDER = 0,
			FLOODFILLSURFACE = 1,
		}
		public enum HATCH_BRUSH_STYLE : uint32
		{
			BDIAGONAL = 3,
			CROSS = 4,
			DIAGCROSS = 5,
			FDIAGONAL = 2,
			HORIZONTAL = 0,
			VERTICAL = 1,
		}
		public enum DRAW_CAPTION_FLAGS : uint32
		{
			ACTIVE = 1,
			BUTTONS = 4096,
			GRADIENT = 32,
			ICON = 4,
			INBUTTON = 16,
			SMALLCAP = 2,
			TEXT = 8,
		}
		public enum SYSTEM_PALETTE_USE : uint32
		{
			NOSTATIC = 2,
			NOSTATIC256 = 3,
			STATIC = 1,
		}
		public enum GRAPHICS_MODE : uint32
		{
			COMPATIBLE = 1,
			ADVANCED = 2,
		}
		public enum FONT_PITCH_AND_FAMILY : uint32
		{
			DECORATIVE = 80,
			DONTCARE = 0,
			MODERN = 48,
			ROMAN = 16,
			SCRIPT = 64,
			SWISS = 32,
		}
		public enum CREATE_FONT_PACKAGE_SUBSET_PLATFORM : uint32
		{
			UNICODE_PLATFORMID = 0,
			ISO_PLATFORMID = 2,
		}
		public enum HDC_MAP_MODE : uint32
		{
			ANISOTROPIC = 8,
			HIENGLISH = 5,
			HIMETRIC = 3,
			ISOTROPIC = 7,
			LOENGLISH = 4,
			LOMETRIC = 2,
			TEXT = 1,
			TWIPS = 6,
		}
		public enum DISPLAYCONFIG_COLOR_ENCODING : int32
		{
			RGB = 0,
			YCBCR444 = 1,
			YCBCR422 = 2,
			YCBCR420 = 3,
			INTENSITY = 4,
			FORCE_UINT32 = -1,
		}
		
		// --- Function Pointers ---
		
		public function int32 FONTENUMPROCA(in LOGFONTA param0, in TEXTMETRICA param1, uint32 param2, LPARAM param3);
		public function int32 FONTENUMPROCW(in LOGFONTW param0, in TEXTMETRICW param1, uint32 param2, LPARAM param3);
		public function int32 GOBJENUMPROC(void* param0, LPARAM param1);
		public function void LINEDDAPROC(int32 param0, int32 param1, LPARAM param2);
		public function uint32 LPFNDEVMODE(HWND param0, HINSTANCE param1, out DEVMODEA param2, PSTR param3, PSTR param4, out DEVMODEA param5, PSTR param6, uint32 param7);
		public function uint32 LPFNDEVCAPS(PSTR param0, PSTR param1, uint32 param2, PSTR param3, out DEVMODEA param4);
		public function int32 MFENUMPROC(HDC hdc, HANDLETABLE* lpht, ref METARECORD lpMR, int32 nObj, LPARAM param4);
		public function int32 ENHMFENUMPROC(HDC hdc, HANDLETABLE* lpht, in ENHMETARECORD lpmr, int32 nHandles, LPARAM data);
		public function void* CFP_ALLOCPROC(uint param0);
		public function void* CFP_REALLOCPROC(void* param0, uint param1);
		public function void CFP_FREEPROC(void* param0);
		public function uint32 READEMBEDPROC(void* param0, void* param1, uint32 param2);
		public function uint32 WRITEEMBEDPROC(void* param0, void* param1, uint32 param2);
		public function BOOL GRAYSTRINGPROC(HDC param0, LPARAM param1, int32 param2);
		public function BOOL DRAWSTATEPROC(HDC hdc, LPARAM lData, WPARAM wData, int32 cx, int32 cy);
		public function BOOL MONITORENUMPROC(HMONITOR param0, HDC param1, out RECT param2, LPARAM param3);
		
		// --- Structs ---
		
		[CRepr]
		public struct XFORM
		{
			public float eM11;
			public float eM12;
			public float eM21;
			public float eM22;
			public float eDx;
			public float eDy;
		}
		[CRepr]
		public struct BITMAP
		{
			public int32 bmType;
			public int32 bmWidth;
			public int32 bmHeight;
			public int32 bmWidthBytes;
			public uint16 bmPlanes;
			public uint16 bmBitsPixel;
			public void* bmBits;
		}
		[CRepr]
		public struct RGBTRIPLE
		{
			public uint8 rgbtBlue;
			public uint8 rgbtGreen;
			public uint8 rgbtRed;
		}
		[CRepr]
		public struct RGBQUAD
		{
			public uint8 rgbBlue;
			public uint8 rgbGreen;
			public uint8 rgbRed;
			public uint8 rgbReserved;
		}
		[CRepr]
		public struct CIEXYZ
		{
			public int32 ciexyzX;
			public int32 ciexyzY;
			public int32 ciexyzZ;
		}
		[CRepr]
		public struct CIEXYZTRIPLE
		{
			public CIEXYZ ciexyzRed;
			public CIEXYZ ciexyzGreen;
			public CIEXYZ ciexyzBlue;
		}
		[CRepr]
		public struct BITMAPCOREHEADER
		{
			public uint32 bcSize;
			public uint16 bcWidth;
			public uint16 bcHeight;
			public uint16 bcPlanes;
			public uint16 bcBitCount;
		}
		[CRepr]
		public struct BITMAPINFOHEADER
		{
			public uint32 biSize;
			public int32 biWidth;
			public int32 biHeight;
			public uint16 biPlanes;
			public uint16 biBitCount;
			public uint32 biCompression;
			public uint32 biSizeImage;
			public int32 biXPelsPerMeter;
			public int32 biYPelsPerMeter;
			public uint32 biClrUsed;
			public uint32 biClrImportant;
		}
		[CRepr]
		public struct BITMAPV4HEADER
		{
			public uint32 bV4Size;
			public int32 bV4Width;
			public int32 bV4Height;
			public uint16 bV4Planes;
			public uint16 bV4BitCount;
			public uint32 bV4V4Compression;
			public uint32 bV4SizeImage;
			public int32 bV4XPelsPerMeter;
			public int32 bV4YPelsPerMeter;
			public uint32 bV4ClrUsed;
			public uint32 bV4ClrImportant;
			public uint32 bV4RedMask;
			public uint32 bV4GreenMask;
			public uint32 bV4BlueMask;
			public uint32 bV4AlphaMask;
			public uint32 bV4CSType;
			public CIEXYZTRIPLE bV4Endpoints;
			public uint32 bV4GammaRed;
			public uint32 bV4GammaGreen;
			public uint32 bV4GammaBlue;
		}
		[CRepr]
		public struct BITMAPV5HEADER
		{
			public uint32 bV5Size;
			public int32 bV5Width;
			public int32 bV5Height;
			public uint16 bV5Planes;
			public uint16 bV5BitCount;
			public uint32 bV5Compression;
			public uint32 bV5SizeImage;
			public int32 bV5XPelsPerMeter;
			public int32 bV5YPelsPerMeter;
			public uint32 bV5ClrUsed;
			public uint32 bV5ClrImportant;
			public uint32 bV5RedMask;
			public uint32 bV5GreenMask;
			public uint32 bV5BlueMask;
			public uint32 bV5AlphaMask;
			public uint32 bV5CSType;
			public CIEXYZTRIPLE bV5Endpoints;
			public uint32 bV5GammaRed;
			public uint32 bV5GammaGreen;
			public uint32 bV5GammaBlue;
			public uint32 bV5Intent;
			public uint32 bV5ProfileData;
			public uint32 bV5ProfileSize;
			public uint32 bV5Reserved;
		}
		[CRepr]
		public struct BITMAPINFO
		{
			public BITMAPINFOHEADER bmiHeader;
			public RGBQUAD[0] bmiColors;
		}
		[CRepr]
		public struct BITMAPCOREINFO
		{
			public BITMAPCOREHEADER bmciHeader;
			public RGBTRIPLE[0] bmciColors;
		}
		[CRepr, Packed(2)]
		public struct BITMAPFILEHEADER
		{
			public uint16 bfType;
			public uint32 bfSize;
			public uint16 bfReserved1;
			public uint16 bfReserved2;
			public uint32 bfOffBits;
		}
		[CRepr]
		public struct HANDLETABLE
		{
			public HGDIOBJ[0] objectHandle;
		}
		[CRepr]
		public struct METARECORD
		{
			public uint32 rdSize;
			public uint16 rdFunction;
			public uint16[0] rdParm;
		}
		[CRepr, Packed(2)]
		public struct METAHEADER
		{
			public uint16 mtType;
			public uint16 mtHeaderSize;
			public uint16 mtVersion;
			public uint32 mtSize;
			public uint16 mtNoObjects;
			public uint32 mtMaxRecord;
			public uint16 mtNoParameters;
		}
		[CRepr]
		public struct ENHMETARECORD
		{
			public uint32 iType;
			public uint32 nSize;
			public uint32[0] dParm;
		}
		[CRepr]
		public struct ENHMETAHEADER
		{
			public uint32 iType;
			public uint32 nSize;
			public RECTL rclBounds;
			public RECTL rclFrame;
			public uint32 dSignature;
			public uint32 nVersion;
			public uint32 nBytes;
			public uint32 nRecords;
			public uint16 nHandles;
			public uint16 sReserved;
			public uint32 nDescription;
			public uint32 offDescription;
			public uint32 nPalEntries;
			public SIZE szlDevice;
			public SIZE szlMillimeters;
			public uint32 cbPixelFormat;
			public uint32 offPixelFormat;
			public uint32 bOpenGL;
			public SIZE szlMicrometers;
		}
		[CRepr]
		public struct TEXTMETRICA
		{
			public int32 tmHeight;
			public int32 tmAscent;
			public int32 tmDescent;
			public int32 tmInternalLeading;
			public int32 tmExternalLeading;
			public int32 tmAveCharWidth;
			public int32 tmMaxCharWidth;
			public int32 tmWeight;
			public int32 tmOverhang;
			public int32 tmDigitizedAspectX;
			public int32 tmDigitizedAspectY;
			public uint8 tmFirstChar;
			public uint8 tmLastChar;
			public uint8 tmDefaultChar;
			public uint8 tmBreakChar;
			public uint8 tmItalic;
			public uint8 tmUnderlined;
			public uint8 tmStruckOut;
			public uint8 tmPitchAndFamily;
			public uint8 tmCharSet;
		}
		[CRepr]
		public struct TEXTMETRICW
		{
			public int32 tmHeight;
			public int32 tmAscent;
			public int32 tmDescent;
			public int32 tmInternalLeading;
			public int32 tmExternalLeading;
			public int32 tmAveCharWidth;
			public int32 tmMaxCharWidth;
			public int32 tmWeight;
			public int32 tmOverhang;
			public int32 tmDigitizedAspectX;
			public int32 tmDigitizedAspectY;
			public char16 tmFirstChar;
			public char16 tmLastChar;
			public char16 tmDefaultChar;
			public char16 tmBreakChar;
			public uint8 tmItalic;
			public uint8 tmUnderlined;
			public uint8 tmStruckOut;
			public uint8 tmPitchAndFamily;
			public uint8 tmCharSet;
		}
		[CRepr]
		public struct NEWTEXTMETRICA
		{
			public int32 tmHeight;
			public int32 tmAscent;
			public int32 tmDescent;
			public int32 tmInternalLeading;
			public int32 tmExternalLeading;
			public int32 tmAveCharWidth;
			public int32 tmMaxCharWidth;
			public int32 tmWeight;
			public int32 tmOverhang;
			public int32 tmDigitizedAspectX;
			public int32 tmDigitizedAspectY;
			public uint8 tmFirstChar;
			public uint8 tmLastChar;
			public uint8 tmDefaultChar;
			public uint8 tmBreakChar;
			public uint8 tmItalic;
			public uint8 tmUnderlined;
			public uint8 tmStruckOut;
			public uint8 tmPitchAndFamily;
			public uint8 tmCharSet;
			public uint32 ntmFlags;
			public uint32 ntmSizeEM;
			public uint32 ntmCellHeight;
			public uint32 ntmAvgWidth;
		}
		[CRepr]
		public struct NEWTEXTMETRICW
		{
			public int32 tmHeight;
			public int32 tmAscent;
			public int32 tmDescent;
			public int32 tmInternalLeading;
			public int32 tmExternalLeading;
			public int32 tmAveCharWidth;
			public int32 tmMaxCharWidth;
			public int32 tmWeight;
			public int32 tmOverhang;
			public int32 tmDigitizedAspectX;
			public int32 tmDigitizedAspectY;
			public char16 tmFirstChar;
			public char16 tmLastChar;
			public char16 tmDefaultChar;
			public char16 tmBreakChar;
			public uint8 tmItalic;
			public uint8 tmUnderlined;
			public uint8 tmStruckOut;
			public uint8 tmPitchAndFamily;
			public uint8 tmCharSet;
			public uint32 ntmFlags;
			public uint32 ntmSizeEM;
			public uint32 ntmCellHeight;
			public uint32 ntmAvgWidth;
		}
		[CRepr]
		public struct PELARRAY
		{
			public int32 paXCount;
			public int32 paYCount;
			public int32 paXExt;
			public int32 paYExt;
			public uint8 paRGBs;
		}
		[CRepr]
		public struct LOGBRUSH
		{
			public uint32 lbStyle;
			public uint32 lbColor;
			public uint lbHatch;
		}
		[CRepr]
		public struct LOGBRUSH32
		{
			public uint32 lbStyle;
			public uint32 lbColor;
			public uint32 lbHatch;
		}
		[CRepr]
		public struct LOGPEN
		{
			public uint32 lopnStyle;
			public POINT lopnWidth;
			public uint32 lopnColor;
		}
		[CRepr]
		public struct EXTLOGPEN
		{
			public uint32 elpPenStyle;
			public uint32 elpWidth;
			public uint32 elpBrushStyle;
			public uint32 elpColor;
			public uint elpHatch;
			public uint32 elpNumEntries;
			public uint32[0] elpStyleEntry;
		}
		[CRepr]
		public struct EXTLOGPEN32
		{
			public uint32 elpPenStyle;
			public uint32 elpWidth;
			public uint32 elpBrushStyle;
			public uint32 elpColor;
			public uint32 elpHatch;
			public uint32 elpNumEntries;
			public uint32[0] elpStyleEntry;
		}
		[CRepr]
		public struct PALETTEENTRY
		{
			public uint8 peRed;
			public uint8 peGreen;
			public uint8 peBlue;
			public uint8 peFlags;
		}
		[CRepr]
		public struct LOGPALETTE
		{
			public uint16 palVersion;
			public uint16 palNumEntries;
			public PALETTEENTRY[0] palPalEntry;
		}
		[CRepr]
		public struct LOGFONTA
		{
			public int32 lfHeight;
			public int32 lfWidth;
			public int32 lfEscapement;
			public int32 lfOrientation;
			public int32 lfWeight;
			public uint8 lfItalic;
			public uint8 lfUnderline;
			public uint8 lfStrikeOut;
			public uint8 lfCharSet;
			public uint8 lfOutPrecision;
			public uint8 lfClipPrecision;
			public uint8 lfQuality;
			public uint8 lfPitchAndFamily;
			public CHAR[32] lfFaceName;
		}
		[CRepr]
		public struct LOGFONTW
		{
			public int32 lfHeight;
			public int32 lfWidth;
			public int32 lfEscapement;
			public int32 lfOrientation;
			public int32 lfWeight;
			public uint8 lfItalic;
			public uint8 lfUnderline;
			public uint8 lfStrikeOut;
			public uint8 lfCharSet;
			public uint8 lfOutPrecision;
			public uint8 lfClipPrecision;
			public uint8 lfQuality;
			public uint8 lfPitchAndFamily;
			public char16[32] lfFaceName;
		}
		[CRepr]
		public struct ENUMLOGFONTA
		{
			public LOGFONTA elfLogFont;
			public uint8[64] elfFullName;
			public uint8[32] elfStyle;
		}
		[CRepr]
		public struct ENUMLOGFONTW
		{
			public LOGFONTW elfLogFont;
			public char16[64] elfFullName;
			public char16[32] elfStyle;
		}
		[CRepr]
		public struct ENUMLOGFONTEXA
		{
			public LOGFONTA elfLogFont;
			public uint8[64] elfFullName;
			public uint8[32] elfStyle;
			public uint8[32] elfScript;
		}
		[CRepr]
		public struct ENUMLOGFONTEXW
		{
			public LOGFONTW elfLogFont;
			public char16[64] elfFullName;
			public char16[32] elfStyle;
			public char16[32] elfScript;
		}
		[CRepr]
		public struct PANOSE
		{
			public uint8 bFamilyType;
			public uint8 bSerifStyle;
			public uint8 bWeight;
			public uint8 bProportion;
			public uint8 bContrast;
			public uint8 bStrokeVariation;
			public uint8 bArmStyle;
			public uint8 bLetterform;
			public uint8 bMidline;
			public uint8 bXHeight;
		}
		[CRepr]
		public struct EXTLOGFONTA
		{
			public LOGFONTA elfLogFont;
			public uint8[64] elfFullName;
			public uint8[32] elfStyle;
			public uint32 elfVersion;
			public uint32 elfStyleSize;
			public uint32 elfMatch;
			public uint32 elfReserved;
			public uint8[4] elfVendorId;
			public uint32 elfCulture;
			public PANOSE elfPanose;
		}
		[CRepr]
		public struct EXTLOGFONTW
		{
			public LOGFONTW elfLogFont;
			public char16[64] elfFullName;
			public char16[32] elfStyle;
			public uint32 elfVersion;
			public uint32 elfStyleSize;
			public uint32 elfMatch;
			public uint32 elfReserved;
			public uint8[4] elfVendorId;
			public uint32 elfCulture;
			public PANOSE elfPanose;
		}
		[CRepr]
		public struct DEVMODEA
		{
			public uint8[32] dmDeviceName;
			public uint16 dmSpecVersion;
			public uint16 dmDriverVersion;
			public uint16 dmSize;
			public uint16 dmDriverExtra;
			public uint32 dmFields;
			public _Anonymous1_e__Union Anonymous1;
			public int16 dmColor;
			public int16 dmDuplex;
			public int16 dmYResolution;
			public int16 dmTTOption;
			public int16 dmCollate;
			public uint8[32] dmFormName;
			public uint16 dmLogPixels;
			public uint32 dmBitsPerPel;
			public uint32 dmPelsWidth;
			public uint32 dmPelsHeight;
			public _Anonymous2_e__Union Anonymous2;
			public uint32 dmDisplayFrequency;
			public uint32 dmICMMethod;
			public uint32 dmICMIntent;
			public uint32 dmMediaType;
			public uint32 dmDitherType;
			public uint32 dmReserved1;
			public uint32 dmReserved2;
			public uint32 dmPanningWidth;
			public uint32 dmPanningHeight;
			
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public _Anonymous1_e__Struct Anonymous1;
				public _Anonymous2_e__Struct Anonymous2;
				
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public POINTL dmPosition;
					public uint32 dmDisplayOrientation;
					public uint32 dmDisplayFixedOutput;
				}
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public int16 dmOrientation;
					public int16 dmPaperSize;
					public int16 dmPaperLength;
					public int16 dmPaperWidth;
					public int16 dmScale;
					public int16 dmCopies;
					public int16 dmDefaultSource;
					public int16 dmPrintQuality;
				}
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 dmDisplayFlags;
				public uint32 dmNup;
			}
		}
		[CRepr]
		public struct DEVMODEW
		{
			public char16[32] dmDeviceName;
			public uint16 dmSpecVersion;
			public uint16 dmDriverVersion;
			public uint16 dmSize;
			public uint16 dmDriverExtra;
			public uint32 dmFields;
			public _Anonymous1_e__Union Anonymous1;
			public int16 dmColor;
			public int16 dmDuplex;
			public int16 dmYResolution;
			public int16 dmTTOption;
			public int16 dmCollate;
			public char16[32] dmFormName;
			public uint16 dmLogPixels;
			public uint32 dmBitsPerPel;
			public uint32 dmPelsWidth;
			public uint32 dmPelsHeight;
			public _Anonymous2_e__Union Anonymous2;
			public uint32 dmDisplayFrequency;
			public uint32 dmICMMethod;
			public uint32 dmICMIntent;
			public uint32 dmMediaType;
			public uint32 dmDitherType;
			public uint32 dmReserved1;
			public uint32 dmReserved2;
			public uint32 dmPanningWidth;
			public uint32 dmPanningHeight;
			
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public _Anonymous1_e__Struct Anonymous1;
				public _Anonymous2_e__Struct Anonymous2;
				
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public int16 dmOrientation;
					public int16 dmPaperSize;
					public int16 dmPaperLength;
					public int16 dmPaperWidth;
					public int16 dmScale;
					public int16 dmCopies;
					public int16 dmDefaultSource;
					public int16 dmPrintQuality;
				}
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public POINTL dmPosition;
					public uint32 dmDisplayOrientation;
					public uint32 dmDisplayFixedOutput;
				}
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 dmDisplayFlags;
				public uint32 dmNup;
			}
		}
		[CRepr]
		public struct DISPLAY_DEVICEA
		{
			public uint32 cb;
			public CHAR[32] DeviceName;
			public CHAR[128] DeviceString;
			public uint32 StateFlags;
			public CHAR[128] DeviceID;
			public CHAR[128] DeviceKey;
		}
		[CRepr]
		public struct DISPLAY_DEVICEW
		{
			public uint32 cb;
			public char16[32] DeviceName;
			public char16[128] DeviceString;
			public uint32 StateFlags;
			public char16[128] DeviceID;
			public char16[128] DeviceKey;
		}
		[CRepr]
		public struct RGNDATAHEADER
		{
			public uint32 dwSize;
			public uint32 iType;
			public uint32 nCount;
			public uint32 nRgnSize;
			public RECT rcBound;
		}
		[CRepr]
		public struct RGNDATA
		{
			public RGNDATAHEADER rdh;
			public CHAR[0] Buffer;
		}
		[CRepr]
		public struct ABC
		{
			public int32 abcA;
			public uint32 abcB;
			public int32 abcC;
		}
		[CRepr]
		public struct ABCFLOAT
		{
			public float abcfA;
			public float abcfB;
			public float abcfC;
		}
		[CRepr]
		public struct OUTLINETEXTMETRICA
		{
			public uint32 otmSize;
			public TEXTMETRICA otmTextMetrics;
			public uint8 otmFiller;
			public PANOSE otmPanoseNumber;
			public uint32 otmfsSelection;
			public uint32 otmfsType;
			public int32 otmsCharSlopeRise;
			public int32 otmsCharSlopeRun;
			public int32 otmItalicAngle;
			public uint32 otmEMSquare;
			public int32 otmAscent;
			public int32 otmDescent;
			public uint32 otmLineGap;
			public uint32 otmsCapEmHeight;
			public uint32 otmsXHeight;
			public RECT otmrcFontBox;
			public int32 otmMacAscent;
			public int32 otmMacDescent;
			public uint32 otmMacLineGap;
			public uint32 otmusMinimumPPEM;
			public POINT otmptSubscriptSize;
			public POINT otmptSubscriptOffset;
			public POINT otmptSuperscriptSize;
			public POINT otmptSuperscriptOffset;
			public uint32 otmsStrikeoutSize;
			public int32 otmsStrikeoutPosition;
			public int32 otmsUnderscoreSize;
			public int32 otmsUnderscorePosition;
			public PSTR otmpFamilyName;
			public PSTR otmpFaceName;
			public PSTR otmpStyleName;
			public PSTR otmpFullName;
		}
		[CRepr]
		public struct OUTLINETEXTMETRICW
		{
			public uint32 otmSize;
			public TEXTMETRICW otmTextMetrics;
			public uint8 otmFiller;
			public PANOSE otmPanoseNumber;
			public uint32 otmfsSelection;
			public uint32 otmfsType;
			public int32 otmsCharSlopeRise;
			public int32 otmsCharSlopeRun;
			public int32 otmItalicAngle;
			public uint32 otmEMSquare;
			public int32 otmAscent;
			public int32 otmDescent;
			public uint32 otmLineGap;
			public uint32 otmsCapEmHeight;
			public uint32 otmsXHeight;
			public RECT otmrcFontBox;
			public int32 otmMacAscent;
			public int32 otmMacDescent;
			public uint32 otmMacLineGap;
			public uint32 otmusMinimumPPEM;
			public POINT otmptSubscriptSize;
			public POINT otmptSubscriptOffset;
			public POINT otmptSuperscriptSize;
			public POINT otmptSuperscriptOffset;
			public uint32 otmsStrikeoutSize;
			public int32 otmsStrikeoutPosition;
			public int32 otmsUnderscoreSize;
			public int32 otmsUnderscorePosition;
			public PSTR otmpFamilyName;
			public PSTR otmpFaceName;
			public PSTR otmpStyleName;
			public PSTR otmpFullName;
		}
		[CRepr]
		public struct POLYTEXTA
		{
			public int32 x;
			public int32 y;
			public uint32 n;
			public PSTR lpstr;
			public uint32 uiFlags;
			public RECT rcl;
			public int32* pdx;
		}
		[CRepr]
		public struct POLYTEXTW
		{
			public int32 x;
			public int32 y;
			public uint32 n;
			public PWSTR lpstr;
			public uint32 uiFlags;
			public RECT rcl;
			public int32* pdx;
		}
		[CRepr]
		public struct FIXED
		{
			public uint16 fract;
			public int16 value;
		}
		[CRepr]
		public struct MAT2
		{
			public FIXED eM11;
			public FIXED eM12;
			public FIXED eM21;
			public FIXED eM22;
		}
		[CRepr]
		public struct GLYPHMETRICS
		{
			public uint32 gmBlackBoxX;
			public uint32 gmBlackBoxY;
			public POINT gmptGlyphOrigin;
			public int16 gmCellIncX;
			public int16 gmCellIncY;
		}
		[CRepr]
		public struct POINTFX
		{
			public FIXED x;
			public FIXED y;
		}
		[CRepr]
		public struct TTPOLYCURVE
		{
			public uint16 wType;
			public uint16 cpfx;
			public POINTFX[0] apfx;
		}
		[CRepr]
		public struct TTPOLYGONHEADER
		{
			public uint32 cb;
			public uint32 dwType;
			public POINTFX pfxStart;
		}
		[CRepr]
		public struct GCP_RESULTSA
		{
			public uint32 lStructSize;
			public PSTR lpOutString;
			public uint32* lpOrder;
			public int32* lpDx;
			public int32* lpCaretPos;
			public PSTR lpClass;
			public PWSTR lpGlyphs;
			public uint32 nGlyphs;
			public int32 nMaxFit;
		}
		[CRepr]
		public struct GCP_RESULTSW
		{
			public uint32 lStructSize;
			public PWSTR lpOutString;
			public uint32* lpOrder;
			public int32* lpDx;
			public int32* lpCaretPos;
			public PSTR lpClass;
			public PWSTR lpGlyphs;
			public uint32 nGlyphs;
			public int32 nMaxFit;
		}
		[CRepr]
		public struct RASTERIZER_STATUS
		{
			public int16 nSize;
			public int16 wFlags;
			public int16 nLanguageID;
		}
		[CRepr]
		public struct WCRANGE
		{
			public char16 wcLow;
			public uint16 cGlyphs;
		}
		[CRepr]
		public struct GLYPHSET
		{
			public uint32 cbThis;
			public uint32 flAccel;
			public uint32 cGlyphsSupported;
			public uint32 cRanges;
			public WCRANGE[0] ranges;
		}
		[CRepr]
		public struct DESIGNVECTOR
		{
			public uint32 dvReserved;
			public uint32 dvNumAxes;
			public int32[16] dvValues;
		}
		[CRepr]
		public struct AXISINFOA
		{
			public int32 axMinValue;
			public int32 axMaxValue;
			public uint8[16] axAxisName;
		}
		[CRepr]
		public struct AXISINFOW
		{
			public int32 axMinValue;
			public int32 axMaxValue;
			public char16[16] axAxisName;
		}
		[CRepr]
		public struct AXESLISTA
		{
			public uint32 axlReserved;
			public uint32 axlNumAxes;
			public AXISINFOA[16] axlAxisInfo;
		}
		[CRepr]
		public struct AXESLISTW
		{
			public uint32 axlReserved;
			public uint32 axlNumAxes;
			public AXISINFOW[16] axlAxisInfo;
		}
		[CRepr]
		public struct ENUMLOGFONTEXDVA
		{
			public ENUMLOGFONTEXA elfEnumLogfontEx;
			public DESIGNVECTOR elfDesignVector;
		}
		[CRepr]
		public struct ENUMLOGFONTEXDVW
		{
			public ENUMLOGFONTEXW elfEnumLogfontEx;
			public DESIGNVECTOR elfDesignVector;
		}
		[CRepr]
		public struct TRIVERTEX
		{
			public int32 x;
			public int32 y;
			public uint16 Red;
			public uint16 Green;
			public uint16 Blue;
			public uint16 Alpha;
		}
		[CRepr]
		public struct GRADIENT_TRIANGLE
		{
			public uint32 Vertex1;
			public uint32 Vertex2;
			public uint32 Vertex3;
		}
		[CRepr]
		public struct GRADIENT_RECT
		{
			public uint32 UpperLeft;
			public uint32 LowerRight;
		}
		[CRepr]
		public struct BLENDFUNCTION
		{
			public uint8 BlendOp;
			public uint8 BlendFlags;
			public uint8 SourceConstantAlpha;
			public uint8 AlphaFormat;
		}
		[CRepr]
		public struct DIBSECTION
		{
			public BITMAP dsBm;
			public BITMAPINFOHEADER dsBmih;
			public uint32[3] dsBitfields;
			public HANDLE dshSection;
			public uint32 dsOffset;
		}
		[CRepr]
		public struct COLORADJUSTMENT
		{
			public uint16 caSize;
			public uint16 caFlags;
			public uint16 caIlluminantIndex;
			public uint16 caRedGamma;
			public uint16 caGreenGamma;
			public uint16 caBlueGamma;
			public uint16 caReferenceBlack;
			public uint16 caReferenceWhite;
			public int16 caContrast;
			public int16 caBrightness;
			public int16 caColorfulness;
			public int16 caRedGreenTint;
		}
		[CRepr]
		public struct KERNINGPAIR
		{
			public uint16 wFirst;
			public uint16 wSecond;
			public int32 iKernAmount;
		}
		[CRepr]
		public struct EMR
		{
			public uint32 iType;
			public uint32 nSize;
		}
		[CRepr]
		public struct EMRTEXT
		{
			public POINTL ptlReference;
			public uint32 nChars;
			public uint32 offString;
			public uint32 fOptions;
			public RECTL rcl;
			public uint32 offDx;
		}
		[CRepr]
		public struct ABORTPATH
		{
			public EMR emr;
		}
		[CRepr]
		public struct EMRSELECTCLIPPATH
		{
			public EMR emr;
			public uint32 iMode;
		}
		[CRepr]
		public struct EMRSETMITERLIMIT
		{
			public EMR emr;
			public float eMiterLimit;
		}
		[CRepr]
		public struct EMRRESTOREDC
		{
			public EMR emr;
			public int32 iRelative;
		}
		[CRepr]
		public struct EMRSETARCDIRECTION
		{
			public EMR emr;
			public uint32 iArcDirection;
		}
		[CRepr]
		public struct EMRSETMAPPERFLAGS
		{
			public EMR emr;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct EMRSETTEXTCOLOR
		{
			public EMR emr;
			public uint32 crColor;
		}
		[CRepr]
		public struct EMRSELECTOBJECT
		{
			public EMR emr;
			public uint32 ihObject;
		}
		[CRepr]
		public struct EMRSELECTPALETTE
		{
			public EMR emr;
			public uint32 ihPal;
		}
		[CRepr]
		public struct EMRRESIZEPALETTE
		{
			public EMR emr;
			public uint32 ihPal;
			public uint32 cEntries;
		}
		[CRepr]
		public struct EMRSETPALETTEENTRIES
		{
			public EMR emr;
			public uint32 ihPal;
			public uint32 iStart;
			public uint32 cEntries;
			public PALETTEENTRY[0] aPalEntries;
		}
		[CRepr]
		public struct EMRSETCOLORADJUSTMENT
		{
			public EMR emr;
			public COLORADJUSTMENT ColorAdjustment;
		}
		[CRepr]
		public struct EMRGDICOMMENT
		{
			public EMR emr;
			public uint32 cbData;
			public uint8[0] Data;
		}
		[CRepr]
		public struct EMREOF
		{
			public EMR emr;
			public uint32 nPalEntries;
			public uint32 offPalEntries;
			public uint32 nSizeLast;
		}
		[CRepr]
		public struct EMRLINETO
		{
			public EMR emr;
			public POINTL ptl;
		}
		[CRepr]
		public struct EMROFFSETCLIPRGN
		{
			public EMR emr;
			public POINTL ptlOffset;
		}
		[CRepr]
		public struct EMRFILLPATH
		{
			public EMR emr;
			public RECTL rclBounds;
		}
		[CRepr]
		public struct EMREXCLUDECLIPRECT
		{
			public EMR emr;
			public RECTL rclClip;
		}
		[CRepr]
		public struct EMRSETVIEWPORTORGEX
		{
			public EMR emr;
			public POINTL ptlOrigin;
		}
		[CRepr]
		public struct EMRSETVIEWPORTEXTEX
		{
			public EMR emr;
			public SIZE szlExtent;
		}
		[CRepr]
		public struct EMRSCALEVIEWPORTEXTEX
		{
			public EMR emr;
			public int32 xNum;
			public int32 xDenom;
			public int32 yNum;
			public int32 yDenom;
		}
		[CRepr]
		public struct EMRSETWORLDTRANSFORM
		{
			public EMR emr;
			public XFORM xform;
		}
		[CRepr]
		public struct EMRMODIFYWORLDTRANSFORM
		{
			public EMR emr;
			public XFORM xform;
			public uint32 iMode;
		}
		[CRepr]
		public struct EMRSETPIXELV
		{
			public EMR emr;
			public POINTL ptlPixel;
			public uint32 crColor;
		}
		[CRepr]
		public struct EMREXTFLOODFILL
		{
			public EMR emr;
			public POINTL ptlStart;
			public uint32 crColor;
			public uint32 iMode;
		}
		[CRepr]
		public struct EMRELLIPSE
		{
			public EMR emr;
			public RECTL rclBox;
		}
		[CRepr]
		public struct EMRROUNDRECT
		{
			public EMR emr;
			public RECTL rclBox;
			public SIZE szlCorner;
		}
		[CRepr]
		public struct EMRARC
		{
			public EMR emr;
			public RECTL rclBox;
			public POINTL ptlStart;
			public POINTL ptlEnd;
		}
		[CRepr]
		public struct EMRANGLEARC
		{
			public EMR emr;
			public POINTL ptlCenter;
			public uint32 nRadius;
			public float eStartAngle;
			public float eSweepAngle;
		}
		[CRepr]
		public struct EMRPOLYLINE
		{
			public EMR emr;
			public RECTL rclBounds;
			public uint32 cptl;
			public POINTL[0] aptl;
		}
		[CRepr]
		public struct EMRPOLYLINE16
		{
			public EMR emr;
			public RECTL rclBounds;
			public uint32 cpts;
			public POINTS[0] apts;
		}
		[CRepr]
		public struct EMRPOLYDRAW
		{
			public EMR emr;
			public RECTL rclBounds;
			public uint32 cptl;
			public POINTL[0] aptl;
			public uint8[0] abTypes;
		}
		[CRepr]
		public struct EMRPOLYDRAW16
		{
			public EMR emr;
			public RECTL rclBounds;
			public uint32 cpts;
			public POINTS[0] apts;
			public uint8[0] abTypes;
		}
		[CRepr]
		public struct EMRPOLYPOLYLINE
		{
			public EMR emr;
			public RECTL rclBounds;
			public uint32 nPolys;
			public uint32 cptl;
			public uint32[0] aPolyCounts;
			public POINTL[0] aptl;
		}
		[CRepr]
		public struct EMRPOLYPOLYLINE16
		{
			public EMR emr;
			public RECTL rclBounds;
			public uint32 nPolys;
			public uint32 cpts;
			public uint32[0] aPolyCounts;
			public POINTS[0] apts;
		}
		[CRepr]
		public struct EMRINVERTRGN
		{
			public EMR emr;
			public RECTL rclBounds;
			public uint32 cbRgnData;
			public uint8[0] RgnData;
		}
		[CRepr]
		public struct EMRFILLRGN
		{
			public EMR emr;
			public RECTL rclBounds;
			public uint32 cbRgnData;
			public uint32 ihBrush;
			public uint8[0] RgnData;
		}
		[CRepr]
		public struct EMRFRAMERGN
		{
			public EMR emr;
			public RECTL rclBounds;
			public uint32 cbRgnData;
			public uint32 ihBrush;
			public SIZE szlStroke;
			public uint8[0] RgnData;
		}
		[CRepr]
		public struct EMREXTSELECTCLIPRGN
		{
			public EMR emr;
			public uint32 cbRgnData;
			public uint32 iMode;
			public uint8[0] RgnData;
		}
		[CRepr]
		public struct EMREXTTEXTOUTA
		{
			public EMR emr;
			public RECTL rclBounds;
			public uint32 iGraphicsMode;
			public float exScale;
			public float eyScale;
			public EMRTEXT emrtext;
		}
		[CRepr]
		public struct EMRPOLYTEXTOUTA
		{
			public EMR emr;
			public RECTL rclBounds;
			public uint32 iGraphicsMode;
			public float exScale;
			public float eyScale;
			public int32 cStrings;
			public EMRTEXT[0] aemrtext;
		}
		[CRepr]
		public struct EMRBITBLT
		{
			public EMR emr;
			public RECTL rclBounds;
			public int32 xDest;
			public int32 yDest;
			public int32 cxDest;
			public int32 cyDest;
			public uint32 dwRop;
			public int32 xSrc;
			public int32 ySrc;
			public XFORM xformSrc;
			public uint32 crBkColorSrc;
			public uint32 iUsageSrc;
			public uint32 offBmiSrc;
			public uint32 cbBmiSrc;
			public uint32 offBitsSrc;
			public uint32 cbBitsSrc;
		}
		[CRepr]
		public struct EMRSTRETCHBLT
		{
			public EMR emr;
			public RECTL rclBounds;
			public int32 xDest;
			public int32 yDest;
			public int32 cxDest;
			public int32 cyDest;
			public uint32 dwRop;
			public int32 xSrc;
			public int32 ySrc;
			public XFORM xformSrc;
			public uint32 crBkColorSrc;
			public uint32 iUsageSrc;
			public uint32 offBmiSrc;
			public uint32 cbBmiSrc;
			public uint32 offBitsSrc;
			public uint32 cbBitsSrc;
			public int32 cxSrc;
			public int32 cySrc;
		}
		[CRepr]
		public struct EMRMASKBLT
		{
			public EMR emr;
			public RECTL rclBounds;
			public int32 xDest;
			public int32 yDest;
			public int32 cxDest;
			public int32 cyDest;
			public uint32 dwRop;
			public int32 xSrc;
			public int32 ySrc;
			public XFORM xformSrc;
			public uint32 crBkColorSrc;
			public uint32 iUsageSrc;
			public uint32 offBmiSrc;
			public uint32 cbBmiSrc;
			public uint32 offBitsSrc;
			public uint32 cbBitsSrc;
			public int32 xMask;
			public int32 yMask;
			public uint32 iUsageMask;
			public uint32 offBmiMask;
			public uint32 cbBmiMask;
			public uint32 offBitsMask;
			public uint32 cbBitsMask;
		}
		[CRepr]
		public struct EMRPLGBLT
		{
			public EMR emr;
			public RECTL rclBounds;
			public POINTL[3] aptlDest;
			public int32 xSrc;
			public int32 ySrc;
			public int32 cxSrc;
			public int32 cySrc;
			public XFORM xformSrc;
			public uint32 crBkColorSrc;
			public uint32 iUsageSrc;
			public uint32 offBmiSrc;
			public uint32 cbBmiSrc;
			public uint32 offBitsSrc;
			public uint32 cbBitsSrc;
			public int32 xMask;
			public int32 yMask;
			public uint32 iUsageMask;
			public uint32 offBmiMask;
			public uint32 cbBmiMask;
			public uint32 offBitsMask;
			public uint32 cbBitsMask;
		}
		[CRepr]
		public struct EMRSETDIBITSTODEVICE
		{
			public EMR emr;
			public RECTL rclBounds;
			public int32 xDest;
			public int32 yDest;
			public int32 xSrc;
			public int32 ySrc;
			public int32 cxSrc;
			public int32 cySrc;
			public uint32 offBmiSrc;
			public uint32 cbBmiSrc;
			public uint32 offBitsSrc;
			public uint32 cbBitsSrc;
			public uint32 iUsageSrc;
			public uint32 iStartScan;
			public uint32 cScans;
		}
		[CRepr]
		public struct EMRSTRETCHDIBITS
		{
			public EMR emr;
			public RECTL rclBounds;
			public int32 xDest;
			public int32 yDest;
			public int32 xSrc;
			public int32 ySrc;
			public int32 cxSrc;
			public int32 cySrc;
			public uint32 offBmiSrc;
			public uint32 cbBmiSrc;
			public uint32 offBitsSrc;
			public uint32 cbBitsSrc;
			public uint32 iUsageSrc;
			public uint32 dwRop;
			public int32 cxDest;
			public int32 cyDest;
		}
		[CRepr]
		public struct EMREXTCREATEFONTINDIRECTW
		{
			public EMR emr;
			public uint32 ihFont;
			public EXTLOGFONTW elfw;
		}
		[CRepr]
		public struct EMRCREATEPALETTE
		{
			public EMR emr;
			public uint32 ihPal;
			public LOGPALETTE lgpl;
		}
		[CRepr]
		public struct EMRCREATEPEN
		{
			public EMR emr;
			public uint32 ihPen;
			public LOGPEN lopn;
		}
		[CRepr]
		public struct EMREXTCREATEPEN
		{
			public EMR emr;
			public uint32 ihPen;
			public uint32 offBmi;
			public uint32 cbBmi;
			public uint32 offBits;
			public uint32 cbBits;
			public EXTLOGPEN32 elp;
		}
		[CRepr]
		public struct EMRCREATEBRUSHINDIRECT
		{
			public EMR emr;
			public uint32 ihBrush;
			public LOGBRUSH32 lb;
		}
		[CRepr]
		public struct EMRCREATEMONOBRUSH
		{
			public EMR emr;
			public uint32 ihBrush;
			public uint32 iUsage;
			public uint32 offBmi;
			public uint32 cbBmi;
			public uint32 offBits;
			public uint32 cbBits;
		}
		[CRepr]
		public struct EMRCREATEDIBPATTERNBRUSHPT
		{
			public EMR emr;
			public uint32 ihBrush;
			public uint32 iUsage;
			public uint32 offBmi;
			public uint32 cbBmi;
			public uint32 offBits;
			public uint32 cbBits;
		}
		[CRepr]
		public struct EMRFORMAT
		{
			public uint32 dSignature;
			public uint32 nVersion;
			public uint32 cbData;
			public uint32 offData;
		}
		[CRepr]
		public struct EMRGLSRECORD
		{
			public EMR emr;
			public uint32 cbData;
			public uint8[0] Data;
		}
		[CRepr]
		public struct EMRGLSBOUNDEDRECORD
		{
			public EMR emr;
			public RECTL rclBounds;
			public uint32 cbData;
			public uint8[0] Data;
		}
		[CRepr]
		public struct EMRSETCOLORSPACE
		{
			public EMR emr;
			public uint32 ihCS;
		}
		[CRepr]
		public struct EMREXTESCAPE
		{
			public EMR emr;
			public int32 iEscape;
			public int32 cbEscData;
			public uint8[0] EscData;
		}
		[CRepr]
		public struct EMRNAMEDESCAPE
		{
			public EMR emr;
			public int32 iEscape;
			public int32 cbDriver;
			public int32 cbEscData;
			public uint8[0] EscData;
		}
		[CRepr]
		public struct EMRSETICMPROFILE
		{
			public EMR emr;
			public uint32 dwFlags;
			public uint32 cbName;
			public uint32 cbData;
			public uint8[0] Data;
		}
		[CRepr]
		public struct COLORMATCHTOTARGET
		{
			public EMR emr;
			public uint32 dwAction;
			public uint32 dwFlags;
			public uint32 cbName;
			public uint32 cbData;
			public uint8[0] Data;
		}
		[CRepr]
		public struct COLORCORRECTPALETTE
		{
			public EMR emr;
			public uint32 ihPalette;
			public uint32 nFirstEntry;
			public uint32 nPalEntries;
			public uint32 nReserved;
		}
		[CRepr]
		public struct EMRALPHABLEND
		{
			public EMR emr;
			public RECTL rclBounds;
			public int32 xDest;
			public int32 yDest;
			public int32 cxDest;
			public int32 cyDest;
			public uint32 dwRop;
			public int32 xSrc;
			public int32 ySrc;
			public XFORM xformSrc;
			public uint32 crBkColorSrc;
			public uint32 iUsageSrc;
			public uint32 offBmiSrc;
			public uint32 cbBmiSrc;
			public uint32 offBitsSrc;
			public uint32 cbBitsSrc;
			public int32 cxSrc;
			public int32 cySrc;
		}
		[CRepr]
		public struct EMRGRADIENTFILL
		{
			public EMR emr;
			public RECTL rclBounds;
			public uint32 nVer;
			public uint32 nTri;
			public GRADIENT_FILL ulMode;
			public TRIVERTEX[0] Ver;
		}
		[CRepr]
		public struct EMRTRANSPARENTBLT
		{
			public EMR emr;
			public RECTL rclBounds;
			public int32 xDest;
			public int32 yDest;
			public int32 cxDest;
			public int32 cyDest;
			public uint32 dwRop;
			public int32 xSrc;
			public int32 ySrc;
			public XFORM xformSrc;
			public uint32 crBkColorSrc;
			public uint32 iUsageSrc;
			public uint32 offBmiSrc;
			public uint32 cbBmiSrc;
			public uint32 offBitsSrc;
			public uint32 cbBitsSrc;
			public int32 cxSrc;
			public int32 cySrc;
		}
		[CRepr]
		public struct WGLSWAP
		{
			public HDC hdc;
			public uint32 uiFlags;
		}
		[CRepr]
		public struct TTLOADINFO
		{
			public uint16 usStructSize;
			public uint16 usRefStrSize;
			public uint16* pusRefStr;
		}
		[CRepr]
		public struct TTEMBEDINFO
		{
			public uint16 usStructSize;
			public uint16 usRootStrSize;
			public uint16* pusRootStr;
		}
		[CRepr]
		public struct TTVALIDATIONTESTSPARAMS
		{
			public uint32 ulStructSize;
			public int32 lTestFromSize;
			public int32 lTestToSize;
			public uint32 ulCharSet;
			public uint16 usReserved1;
			public uint16 usCharCodeCount;
			public uint16* pusCharCodeSet;
		}
		[CRepr]
		public struct TTVALIDATIONTESTSPARAMSEX
		{
			public uint32 ulStructSize;
			public int32 lTestFromSize;
			public int32 lTestToSize;
			public uint32 ulCharSet;
			public uint16 usReserved1;
			public uint16 usCharCodeCount;
			public uint32* pulCharCodeSet;
		}
		[CRepr]
		public struct PAINTSTRUCT
		{
			public HDC hdc;
			public BOOL fErase;
			public RECT rcPaint;
			public BOOL fRestore;
			public BOOL fIncUpdate;
			public uint8[32] rgbReserved;
		}
		[CRepr]
		public struct DRAWTEXTPARAMS
		{
			public uint32 cbSize;
			public int32 iTabLength;
			public int32 iLeftMargin;
			public int32 iRightMargin;
			public uint32 uiLengthDrawn;
		}
		[CRepr]
		public struct MONITORINFO
		{
			public uint32 cbSize;
			public RECT rcMonitor;
			public RECT rcWork;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct MONITORINFOEXA
		{
			public MONITORINFO __AnonymousBase_winuser_L13567_C43;
			public CHAR[32] szDevice;
		}
		[CRepr]
		public struct MONITORINFOEXW
		{
			public MONITORINFO __AnonymousBase_winuser_L13571_C43;
			public char16[32] szDevice;
		}
		
		// --- Functions ---
		
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetObjectA(HGDIOBJ h, int32 c, void* pv);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AddFontResourceA(PSTR param0);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AddFontResourceW(PWSTR param0);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AnimatePalette(HPALETTE hPal, uint32 iStartIndex, uint32 cEntries, PALETTEENTRY* ppe);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Arc(HDC hdc, int32 x1, int32 y1, int32 x2, int32 y2, int32 x3, int32 y3, int32 x4, int32 y4);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BitBlt(HDC hdc, int32 x, int32 y, int32 cx, int32 cy, HDC hdcSrc, int32 x1, int32 y1, ROP_CODE rop);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CancelDC(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Chord(HDC hdc, int32 x1, int32 y1, int32 x2, int32 y2, int32 x3, int32 y3, int32 x4, int32 y4);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HMETAFILE CloseMetaFile(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 CombineRgn(HRGN hrgnDst, HRGN hrgnSrc1, HRGN hrgnSrc2, RGN_COMBINE_MODE iMode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HMETAFILE CopyMetaFileA(HMETAFILE param0, PSTR param1);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HMETAFILE CopyMetaFileW(HMETAFILE param0, PWSTR param1);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBITMAP CreateBitmap(int32 nWidth, int32 nHeight, uint32 nPlanes, uint32 nBitCount, void* lpBits);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBITMAP CreateBitmapIndirect(in BITMAP pbm);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBRUSH CreateBrushIndirect(in LOGBRUSH plbrush);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBITMAP CreateCompatibleBitmap(HDC hdc, int32 cx, int32 cy);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBITMAP CreateDiscardableBitmap(HDC hdc, int32 cx, int32 cy);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern CreatedHDC CreateCompatibleDC(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern CreatedHDC CreateDCA(PSTR pwszDriver, PSTR pwszDevice, PSTR pszPort, DEVMODEA* pdm);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern CreatedHDC CreateDCW(PWSTR pwszDriver, PWSTR pwszDevice, PWSTR pszPort, DEVMODEW* pdm);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBITMAP CreateDIBitmap(HDC hdc, BITMAPINFOHEADER* pbmih, uint32 flInit, void* pjBits, BITMAPINFO* pbmi, DIB_USAGE iUsage);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBRUSH CreateDIBPatternBrush(int h, DIB_USAGE iUsage);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBRUSH CreateDIBPatternBrushPt(void* lpPackedDIB, DIB_USAGE iUsage);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRGN CreateEllipticRgn(int32 x1, int32 y1, int32 x2, int32 y2);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRGN CreateEllipticRgnIndirect(in RECT lprect);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HFONT CreateFontIndirectA(in LOGFONTA lplf);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HFONT CreateFontIndirectW(in LOGFONTW lplf);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HFONT CreateFontA(int32 cHeight, int32 cWidth, int32 cEscapement, int32 cOrientation, int32 cWeight, uint32 bItalic, uint32 bUnderline, uint32 bStrikeOut, uint32 iCharSet, FONT_OUTPUT_PRECISION iOutPrecision, FONT_CLIP_PRECISION iClipPrecision, FONT_QUALITY iQuality, FONT_PITCH_AND_FAMILY iPitchAndFamily, PSTR pszFaceName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HFONT CreateFontW(int32 cHeight, int32 cWidth, int32 cEscapement, int32 cOrientation, int32 cWeight, uint32 bItalic, uint32 bUnderline, uint32 bStrikeOut, uint32 iCharSet, FONT_OUTPUT_PRECISION iOutPrecision, FONT_CLIP_PRECISION iClipPrecision, FONT_QUALITY iQuality, FONT_PITCH_AND_FAMILY iPitchAndFamily, PWSTR pszFaceName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBRUSH CreateHatchBrush(HATCH_BRUSH_STYLE iHatch, uint32 color);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern CreatedHDC CreateICA(PSTR pszDriver, PSTR pszDevice, PSTR pszPort, DEVMODEA* pdm);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern CreatedHDC CreateICW(PWSTR pszDriver, PWSTR pszDevice, PWSTR pszPort, DEVMODEW* pdm);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HdcMetdataFileHandle CreateMetaFileA(PSTR pszFile);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HdcMetdataFileHandle CreateMetaFileW(PWSTR pszFile);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HPALETTE CreatePalette(in LOGPALETTE plpal);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HPEN CreatePen(PEN_STYLE iStyle, int32 cWidth, uint32 color);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HPEN CreatePenIndirect(in LOGPEN plpen);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRGN CreatePolyPolygonRgn(in POINT pptl, int32* pc, int32 cPoly, CREATE_POLYGON_RGN_MODE iMode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBRUSH CreatePatternBrush(HBITMAP hbm);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRGN CreateRectRgn(int32 x1, int32 y1, int32 x2, int32 y2);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRGN CreateRectRgnIndirect(in RECT lprect);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRGN CreateRoundRectRgn(int32 x1, int32 y1, int32 x2, int32 y2, int32 w, int32 h);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateScalableFontResourceA(uint32 fdwHidden, PSTR lpszFont, PSTR lpszFile, PSTR lpszPath);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateScalableFontResourceW(uint32 fdwHidden, PWSTR lpszFont, PWSTR lpszFile, PWSTR lpszPath);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBRUSH CreateSolidBrush(uint32 color);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteDC(CreatedHDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteMetaFile(HMETAFILE hmf);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteObject(HGDIOBJ ho);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DrawEscape(HDC hdc, int32 iEscape, int32 cjIn, PSTR lpIn);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Ellipse(HDC hdc, int32 left, int32 top, int32 right, int32 bottom);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EnumFontFamiliesExA(HDC hdc, ref LOGFONTA lpLogfont, FONTENUMPROCA lpProc, LPARAM lParam, uint32 dwFlags);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EnumFontFamiliesExW(HDC hdc, ref LOGFONTW lpLogfont, FONTENUMPROCW lpProc, LPARAM lParam, uint32 dwFlags);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EnumFontFamiliesA(HDC hdc, PSTR lpLogfont, FONTENUMPROCA lpProc, LPARAM lParam);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EnumFontFamiliesW(HDC hdc, PWSTR lpLogfont, FONTENUMPROCW lpProc, LPARAM lParam);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EnumFontsA(HDC hdc, PSTR lpLogfont, FONTENUMPROCA lpProc, LPARAM lParam);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EnumFontsW(HDC hdc, PWSTR lpLogfont, FONTENUMPROCW lpProc, LPARAM lParam);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EnumObjects(HDC hdc, OBJ_TYPE nType, GOBJENUMPROC lpFunc, LPARAM lParam);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EqualRgn(HRGN hrgn1, HRGN hrgn2);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ExcludeClipRect(HDC hdc, int32 left, int32 top, int32 right, int32 bottom);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRGN ExtCreateRegion(XFORM* lpx, uint32 nCount, in RGNDATA lpData);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ExtFloodFill(HDC hdc, int32 x, int32 y, uint32 color, EXT_FLOOD_FILL_TYPE type);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FillRgn(HDC hdc, HRGN hrgn, HBRUSH hbr);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FloodFill(HDC hdc, int32 x, int32 y, uint32 color);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FrameRgn(HDC hdc, HRGN hrgn, HBRUSH hbr, int32 w, int32 h);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetROP2(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetAspectRatioFilterEx(HDC hdc, out SIZE lpsize);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetBkColor(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDCBrushColor(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDCPenColor(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetBkMode(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetBitmapBits(HBITMAP hbit, int32 cb, void* lpvBits);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetBitmapDimensionEx(HBITMAP hbit, out SIZE lpsize);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetBoundsRect(HDC hdc, out RECT lprect, uint32 flags);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetBrushOrgEx(HDC hdc, out POINT lppt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCharWidthA(HDC hdc, uint32 iFirst, uint32 iLast, out int32 lpBuffer);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCharWidthW(HDC hdc, uint32 iFirst, uint32 iLast, out int32 lpBuffer);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCharWidth32A(HDC hdc, uint32 iFirst, uint32 iLast, out int32 lpBuffer);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCharWidth32W(HDC hdc, uint32 iFirst, uint32 iLast, out int32 lpBuffer);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCharWidthFloatA(HDC hdc, uint32 iFirst, uint32 iLast, out float lpBuffer);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCharWidthFloatW(HDC hdc, uint32 iFirst, uint32 iLast, out float lpBuffer);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCharABCWidthsA(HDC hdc, uint32 wFirst, uint32 wLast, out ABC lpABC);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCharABCWidthsW(HDC hdc, uint32 wFirst, uint32 wLast, out ABC lpABC);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCharABCWidthsFloatA(HDC hdc, uint32 iFirst, uint32 iLast, out ABCFLOAT lpABC);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCharABCWidthsFloatW(HDC hdc, uint32 iFirst, uint32 iLast, out ABCFLOAT lpABC);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetClipBox(HDC hdc, out RECT lprect);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetClipRgn(HDC hdc, HRGN hrgn);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetMetaRgn(HDC hdc, HRGN hrgn);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HGDIOBJ GetCurrentObject(HDC hdc, OBJ_TYPE type);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCurrentPositionEx(HDC hdc, out POINT lppt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetDeviceCaps(HDC hdc, GET_DEVICE_CAPS_INDEX index);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetDIBits(HDC hdc, HBITMAP hbm, uint32 start, uint32 cLines, void* lpvBits, out BITMAPINFO lpbmi, DIB_USAGE usage);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFontData(HDC hdc, uint32 dwTable, uint32 dwOffset, void* pvBuffer, uint32 cjBuffer);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetGlyphOutlineA(HDC hdc, uint32 uChar, GET_GLYPH_OUTLINE_FORMAT fuFormat, out GLYPHMETRICS lpgm, uint32 cjBuffer, void* pvBuffer, in MAT2 lpmat2);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetGlyphOutlineW(HDC hdc, uint32 uChar, GET_GLYPH_OUTLINE_FORMAT fuFormat, out GLYPHMETRICS lpgm, uint32 cjBuffer, void* pvBuffer, in MAT2 lpmat2);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetGraphicsMode(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetMapMode(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetMetaFileBitsEx(HMETAFILE hMF, uint32 cbBuffer, void* lpData);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HMETAFILE GetMetaFileA(PSTR lpName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HMETAFILE GetMetaFileW(PWSTR lpName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetNearestColor(HDC hdc, uint32 color);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetNearestPaletteIndex(HPALETTE h, uint32 color);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetObjectType(HGDIOBJ h);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetOutlineTextMetricsA(HDC hdc, uint32 cjCopy, OUTLINETEXTMETRICA* potm);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetOutlineTextMetricsW(HDC hdc, uint32 cjCopy, OUTLINETEXTMETRICW* potm);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetPaletteEntries(HPALETTE hpal, uint32 iStart, uint32 cEntries, PALETTEENTRY* pPalEntries);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetPixel(HDC hdc, int32 x, int32 y);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPolyFillMode(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetRasterizerCaps(out RASTERIZER_STATUS lpraststat, uint32 cjBytes);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetRandomRgn(HDC hdc, HRGN hrgn, int32 i);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetRegionData(HRGN hrgn, uint32 nCount, RGNDATA* lpRgnData);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetRgnBox(HRGN hrgn, out RECT lprc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HGDIOBJ GetStockObject(GET_STOCK_OBJECT_FLAGS i);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetStretchBltMode(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSystemPaletteEntries(HDC hdc, uint32 iStart, uint32 cEntries, PALETTEENTRY* pPalEntries);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSystemPaletteUse(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetTextCharacterExtra(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTextAlign(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTextColor(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTextExtentPointA(HDC hdc, uint8* lpString, int32 c, out SIZE lpsz);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTextExtentPointW(HDC hdc, char16* lpString, int32 c, out SIZE lpsz);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTextExtentPoint32A(HDC hdc, uint8* lpString, int32 c, out SIZE psizl);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTextExtentPoint32W(HDC hdc, char16* lpString, int32 c, out SIZE psizl);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTextExtentExPointA(HDC hdc, uint8* lpszString, int32 cchString, int32 nMaxExtent, int32* lpnFit, int32* lpnDx, out SIZE lpSize);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTextExtentExPointW(HDC hdc, char16* lpszString, int32 cchString, int32 nMaxExtent, int32* lpnFit, int32* lpnDx, out SIZE lpSize);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFontLanguageInfo(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetCharacterPlacementA(HDC hdc, uint8* lpString, int32 nCount, int32 nMexExtent, out GCP_RESULTSA lpResults, GET_CHARACTER_PLACEMENT_FLAGS dwFlags);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetCharacterPlacementW(HDC hdc, char16* lpString, int32 nCount, int32 nMexExtent, out GCP_RESULTSW lpResults, GET_CHARACTER_PLACEMENT_FLAGS dwFlags);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFontUnicodeRanges(HDC hdc, GLYPHSET* lpgs);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetGlyphIndicesA(HDC hdc, uint8* lpstr, int32 c, uint16* pgi, uint32 fl);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetGlyphIndicesW(HDC hdc, char16* lpstr, int32 c, uint16* pgi, uint32 fl);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTextExtentPointI(HDC hdc, uint16* pgiIn, int32 cgi, out SIZE psize);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTextExtentExPointI(HDC hdc, uint16* lpwszString, int32 cwchString, int32 nMaxExtent, int32* lpnFit, int32* lpnDx, out SIZE lpSize);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCharWidthI(HDC hdc, uint32 giFirst, uint32 cgi, uint16* pgi, int32* piWidths);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCharABCWidthsI(HDC hdc, uint32 giFirst, uint32 cgi, uint16* pgi, ABC* pabc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AddFontResourceExA(PSTR name, FONT_RESOURCE_CHARACTERISTICS fl, void* res);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AddFontResourceExW(PWSTR name, FONT_RESOURCE_CHARACTERISTICS fl, void* res);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveFontResourceExA(PSTR name, uint32 fl, void* pdv);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveFontResourceExW(PWSTR name, uint32 fl, void* pdv);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE AddFontMemResourceEx(void* pFileView, uint32 cjSize, void* pvResrved, ref uint32 pNumFonts);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveFontMemResourceEx(HANDLE h);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HFONT CreateFontIndirectExA(in ENUMLOGFONTEXDVA param0);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HFONT CreateFontIndirectExW(in ENUMLOGFONTEXDVW param0);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetViewportExtEx(HDC hdc, out SIZE lpsize);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetViewportOrgEx(HDC hdc, out POINT lppoint);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetWindowExtEx(HDC hdc, out SIZE lpsize);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetWindowOrgEx(HDC hdc, out POINT lppoint);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 IntersectClipRect(HDC hdc, int32 left, int32 top, int32 right, int32 bottom);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InvertRgn(HDC hdc, HRGN hrgn);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LineDDA(int32 xStart, int32 yStart, int32 xEnd, int32 yEnd, LINEDDAPROC lpProc, LPARAM data);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LineTo(HDC hdc, int32 x, int32 y);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MaskBlt(HDC hdcDest, int32 xDest, int32 yDest, int32 width, int32 height, HDC hdcSrc, int32 xSrc, int32 ySrc, HBITMAP hbmMask, int32 xMask, int32 yMask, uint32 rop);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PlgBlt(HDC hdcDest, POINT* lpPoint, HDC hdcSrc, int32 xSrc, int32 ySrc, int32 width, int32 height, HBITMAP hbmMask, int32 xMask, int32 yMask);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 OffsetClipRgn(HDC hdc, int32 x, int32 y);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 OffsetRgn(HRGN hrgn, int32 x, int32 y);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PatBlt(HDC hdc, int32 x, int32 y, int32 w, int32 h, ROP_CODE rop);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Pie(HDC hdc, int32 left, int32 top, int32 right, int32 bottom, int32 xr1, int32 yr1, int32 xr2, int32 yr2);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PlayMetaFile(HDC hdc, HMETAFILE hmf);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PaintRgn(HDC hdc, HRGN hrgn);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PolyPolygon(HDC hdc, in POINT apt, int32* asz, int32 csz);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PtInRegion(HRGN hrgn, int32 x, int32 y);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PtVisible(HDC hdc, int32 x, int32 y);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RectInRegion(HRGN hrgn, in RECT lprect);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RectVisible(HDC hdc, in RECT lprect);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Rectangle(HDC hdc, int32 left, int32 top, int32 right, int32 bottom);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RestoreDC(HDC hdc, int32 nSavedDC);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDC ResetDCA(HDC hdc, in DEVMODEA lpdm);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDC ResetDCW(HDC hdc, in DEVMODEW lpdm);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RealizePalette(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveFontResourceA(PSTR lpFileName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveFontResourceW(PWSTR lpFileName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RoundRect(HDC hdc, int32 left, int32 top, int32 right, int32 bottom, int32 width, int32 height);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ResizePalette(HPALETTE hpal, uint32 n);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SaveDC(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SelectClipRgn(HDC hdc, HRGN hrgn);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ExtSelectClipRgn(HDC hdc, HRGN hrgn, RGN_COMBINE_MODE mode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetMetaRgn(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HGDIOBJ SelectObject(HDC hdc, HGDIOBJ h);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HPALETTE SelectPalette(HDC hdc, HPALETTE hPal, BOOL bForceBkgd);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetBkColor(HDC hdc, uint32 color);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetDCBrushColor(HDC hdc, uint32 color);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetDCPenColor(HDC hdc, uint32 color);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetBkMode(HDC hdc, BACKGROUND_MODE mode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetBitmapBits(HBITMAP hbm, uint32 cb, void* pvBits);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetBoundsRect(HDC hdc, RECT* lprect, SET_BOUNDS_RECT_FLAGS flags);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetDIBits(HDC hdc, HBITMAP hbm, uint32 start, uint32 cLines, void* lpBits, in BITMAPINFO lpbmi, DIB_USAGE ColorUse);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetDIBitsToDevice(HDC hdc, int32 xDest, int32 yDest, uint32 w, uint32 h, int32 xSrc, int32 ySrc, uint32 StartScan, uint32 cLines, void* lpvBits, in BITMAPINFO lpbmi, DIB_USAGE ColorUse);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetMapperFlags(HDC hdc, uint32 flags);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetGraphicsMode(HDC hdc, GRAPHICS_MODE iMode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetMapMode(HDC hdc, HDC_MAP_MODE iMode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetLayout(HDC hdc, DC_LAYOUT l);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetLayout(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HMETAFILE SetMetaFileBitsEx(uint32 cbBuffer, in uint8 lpData);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetPaletteEntries(HPALETTE hpal, uint32 iStart, uint32 cEntries, PALETTEENTRY* pPalEntries);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetPixel(HDC hdc, int32 x, int32 y, uint32 color);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetPixelV(HDC hdc, int32 x, int32 y, uint32 color);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetPolyFillMode(HDC hdc, CREATE_POLYGON_RGN_MODE mode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StretchBlt(HDC hdcDest, int32 xDest, int32 yDest, int32 wDest, int32 hDest, HDC hdcSrc, int32 xSrc, int32 ySrc, int32 wSrc, int32 hSrc, ROP_CODE rop);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetRectRgn(HRGN hrgn, int32 left, int32 top, int32 right, int32 bottom);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StretchDIBits(HDC hdc, int32 xDest, int32 yDest, int32 DestWidth, int32 DestHeight, int32 xSrc, int32 ySrc, int32 SrcWidth, int32 SrcHeight, void* lpBits, in BITMAPINFO lpbmi, DIB_USAGE iUsage, ROP_CODE rop);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetROP2(HDC hdc, R2_MODE rop2);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetStretchBltMode(HDC hdc, STRETCH_BLT_MODE mode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetSystemPaletteUse(HDC hdc, SYSTEM_PALETTE_USE use);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetTextCharacterExtra(HDC hdc, int32 extra);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetTextColor(HDC hdc, uint32 color);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetTextAlign(HDC hdc, TEXT_ALIGN_OPTIONS align);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetTextJustification(HDC hdc, int32 extra, int32 count);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UpdateColors(HDC hdc);
		[Import("msimg32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AlphaBlend(HDC hdcDest, int32 xoriginDest, int32 yoriginDest, int32 wDest, int32 hDest, HDC hdcSrc, int32 xoriginSrc, int32 yoriginSrc, int32 wSrc, int32 hSrc, BLENDFUNCTION ftn);
		[Import("msimg32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TransparentBlt(HDC hdcDest, int32 xoriginDest, int32 yoriginDest, int32 wDest, int32 hDest, HDC hdcSrc, int32 xoriginSrc, int32 yoriginSrc, int32 wSrc, int32 hSrc, uint32 crTransparent);
		[Import("msimg32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GradientFill(HDC hdc, TRIVERTEX* pVertex, uint32 nVertex, void* pMesh, uint32 nMesh, GRADIENT_FILL ulMode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GdiAlphaBlend(HDC hdcDest, int32 xoriginDest, int32 yoriginDest, int32 wDest, int32 hDest, HDC hdcSrc, int32 xoriginSrc, int32 yoriginSrc, int32 wSrc, int32 hSrc, BLENDFUNCTION ftn);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GdiTransparentBlt(HDC hdcDest, int32 xoriginDest, int32 yoriginDest, int32 wDest, int32 hDest, HDC hdcSrc, int32 xoriginSrc, int32 yoriginSrc, int32 wSrc, int32 hSrc, uint32 crTransparent);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GdiGradientFill(HDC hdc, TRIVERTEX* pVertex, uint32 nVertex, void* pMesh, uint32 nCount, GRADIENT_FILL ulMode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PlayMetaFileRecord(HDC hdc, HANDLETABLE* lpHandleTable, ref METARECORD lpMR, uint32 noObjs);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumMetaFile(HDC hdc, HMETAFILE hmf, MFENUMPROC proc, LPARAM param3);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HENHMETAFILE CloseEnhMetaFile(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HENHMETAFILE CopyEnhMetaFileA(HENHMETAFILE hEnh, PSTR lpFileName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HENHMETAFILE CopyEnhMetaFileW(HENHMETAFILE hEnh, PWSTR lpFileName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HdcMetdataEnhFileHandle CreateEnhMetaFileA(HDC hdc, PSTR lpFilename, RECT* lprc, PSTR lpDesc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HdcMetdataEnhFileHandle CreateEnhMetaFileW(HDC hdc, PWSTR lpFilename, RECT* lprc, PWSTR lpDesc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteEnhMetaFile(HENHMETAFILE hmf);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumEnhMetaFile(HDC hdc, HENHMETAFILE hmf, ENHMFENUMPROC proc, void* param3, RECT* lpRect);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HENHMETAFILE GetEnhMetaFileA(PSTR lpName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HENHMETAFILE GetEnhMetaFileW(PWSTR lpName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetEnhMetaFileBits(HENHMETAFILE hEMF, uint32 nSize, uint8* lpData);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetEnhMetaFileDescriptionA(HENHMETAFILE hemf, uint32 cchBuffer, uint8* lpDescription);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetEnhMetaFileDescriptionW(HENHMETAFILE hemf, uint32 cchBuffer, char16* lpDescription);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetEnhMetaFileHeader(HENHMETAFILE hemf, uint32 nSize, ENHMETAHEADER* lpEnhMetaHeader);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetEnhMetaFilePaletteEntries(HENHMETAFILE hemf, uint32 nNumEntries, PALETTEENTRY* lpPaletteEntries);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetWinMetaFileBits(HENHMETAFILE hemf, uint32 cbData16, uint8* pData16, int32 iMapMode, HDC hdcRef);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PlayEnhMetaFile(HDC hdc, HENHMETAFILE hmf, in RECT lprect);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PlayEnhMetaFileRecord(HDC hdc, HANDLETABLE* pht, in ENHMETARECORD pmr, uint32 cht);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HENHMETAFILE SetEnhMetaFileBits(uint32 nSize, in uint8 pb);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GdiComment(HDC hdc, uint32 nSize, in uint8 lpData);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTextMetricsA(HDC hdc, out TEXTMETRICA lptm);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTextMetricsW(HDC hdc, out TEXTMETRICW lptm);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AngleArc(HDC hdc, int32 x, int32 y, uint32 r, float StartAngle, float SweepAngle);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PolyPolyline(HDC hdc, in POINT apt, uint32* asz, uint32 csz);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetWorldTransform(HDC hdc, out XFORM lpxf);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetWorldTransform(HDC hdc, in XFORM lpxf);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ModifyWorldTransform(HDC hdc, XFORM* lpxf, MODIFY_WORLD_TRANSFORM_MODE mode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CombineTransform(out XFORM lpxfOut, in XFORM lpxf1, in XFORM lpxf2);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBITMAP CreateDIBSection(HDC hdc, in BITMAPINFO pbmi, DIB_USAGE usage, void** ppvBits, HANDLE hSection, uint32 offset);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDIBColorTable(HDC hdc, uint32 iStart, uint32 cEntries, RGBQUAD* prgbq);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetDIBColorTable(HDC hdc, uint32 iStart, uint32 cEntries, RGBQUAD* prgbq);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetColorAdjustment(HDC hdc, in COLORADJUSTMENT lpca);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetColorAdjustment(HDC hdc, out COLORADJUSTMENT lpca);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HPALETTE CreateHalftonePalette(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AbortPath(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ArcTo(HDC hdc, int32 left, int32 top, int32 right, int32 bottom, int32 xr1, int32 yr1, int32 xr2, int32 yr2);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BeginPath(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CloseFigure(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EndPath(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FillPath(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FlattenPath(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPath(HDC hdc, POINT* apt, uint8* aj, int32 cpt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRGN PathToRegion(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PolyDraw(HDC hdc, POINT* apt, uint8* aj, int32 cpt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SelectClipPath(HDC hdc, RGN_COMBINE_MODE mode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetArcDirection(HDC hdc, ARC_DIRECTION dir);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetMiterLimit(HDC hdc, float limit, float* old);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StrokeAndFillPath(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StrokePath(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WidenPath(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HPEN ExtCreatePen(PEN_STYLE iPenStyle, uint32 cWidth, in LOGBRUSH plbrush, uint32 cStyle, uint32* pstyle);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetMiterLimit(HDC hdc, out float plimit);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetArcDirection(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetObjectW(HGDIOBJ h, int32 c, void* pv);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MoveToEx(HDC hdc, int32 x, int32 y, POINT* lppt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TextOutA(HDC hdc, int32 x, int32 y, uint8* lpString, int32 c);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TextOutW(HDC hdc, int32 x, int32 y, char16* lpString, int32 c);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ExtTextOutA(HDC hdc, int32 x, int32 y, ETO_OPTIONS options, RECT* lprect, uint8* lpString, uint32 c, int32* lpDx);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ExtTextOutW(HDC hdc, int32 x, int32 y, ETO_OPTIONS options, RECT* lprect, char16* lpString, uint32 c, int32* lpDx);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PolyTextOutA(HDC hdc, POLYTEXTA* ppt, int32 nstrings);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PolyTextOutW(HDC hdc, POLYTEXTW* ppt, int32 nstrings);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRGN CreatePolygonRgn(POINT* pptl, int32 cPoint, CREATE_POLYGON_RGN_MODE iMode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DPtoLP(HDC hdc, POINT* lppt, int32 c);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LPtoDP(HDC hdc, POINT* lppt, int32 c);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Polygon(HDC hdc, POINT* apt, int32 cpt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Polyline(HDC hdc, POINT* apt, int32 cpt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PolyBezier(HDC hdc, POINT* apt, uint32 cpt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PolyBezierTo(HDC hdc, POINT* apt, uint32 cpt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PolylineTo(HDC hdc, POINT* apt, uint32 cpt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetViewportExtEx(HDC hdc, int32 x, int32 y, SIZE* lpsz);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetViewportOrgEx(HDC hdc, int32 x, int32 y, POINT* lppt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetWindowExtEx(HDC hdc, int32 x, int32 y, SIZE* lpsz);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetWindowOrgEx(HDC hdc, int32 x, int32 y, POINT* lppt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OffsetViewportOrgEx(HDC hdc, int32 x, int32 y, POINT* lppt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OffsetWindowOrgEx(HDC hdc, int32 x, int32 y, POINT* lppt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ScaleViewportExtEx(HDC hdc, int32 xn, int32 dx, int32 yn, int32 yd, SIZE* lpsz);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ScaleWindowExtEx(HDC hdc, int32 xn, int32 xd, int32 yn, int32 yd, SIZE* lpsz);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetBitmapDimensionEx(HBITMAP hbm, int32 w, int32 h, SIZE* lpsz);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetBrushOrgEx(HDC hdc, int32 x, int32 y, POINT* lppt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetTextFaceA(HDC hdc, int32 c, uint8* lpName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetTextFaceW(HDC hdc, int32 c, char16* lpName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetKerningPairsA(HDC hdc, uint32 nPairs, KERNINGPAIR* lpKernPair);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetKerningPairsW(HDC hdc, uint32 nPairs, KERNINGPAIR* lpKernPair);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDCOrgEx(HDC hdc, out POINT lppt);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FixBrushOrgEx(HDC hdc, int32 x, int32 y, POINT* ptl);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnrealizeObject(HGDIOBJ h);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GdiFlush();
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GdiSetBatchLimit(uint32 dw);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GdiGetBatchLimit();
		[Import("opengl32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 wglSwapMultipleBuffers(uint32 param0, in WGLSWAP param1);
		[Import("fontsub.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CreateFontPackage(in uint8 puchSrcBuffer, uint32 ulSrcBufferSize, out uint8* ppuchFontPackageBuffer, out uint32 pulFontPackageBufferSize, out uint32 pulBytesWritten, uint16 usFlag, uint16 usTTCIndex, uint16 usSubsetFormat, uint16 usSubsetLanguage, CREATE_FONT_PACKAGE_SUBSET_PLATFORM usSubsetPlatform, CREATE_FONT_PACKAGE_SUBSET_ENCODING usSubsetEncoding, in uint16 pusSubsetKeepList, uint16 usSubsetListCount, CFP_ALLOCPROC lpfnAllocate, CFP_REALLOCPROC lpfnReAllocate, CFP_FREEPROC lpfnFree, void* lpvReserved);
		[Import("fontsub.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MergeFontPackage(in uint8 puchMergeFontBuffer, uint32 ulMergeFontBufferSize, in uint8 puchFontPackageBuffer, uint32 ulFontPackageBufferSize, out uint8* ppuchDestBuffer, out uint32 pulDestBufferSize, out uint32 pulBytesWritten, uint16 usMode, CFP_ALLOCPROC lpfnAllocate, CFP_REALLOCPROC lpfnReAllocate, CFP_FREEPROC lpfnFree, void* lpvReserved);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTEmbedFont(HDC hDC, TTEMBED_FLAGS ulFlags, EMBED_FONT_CHARSET ulCharSet, out EMBEDDED_FONT_PRIV_STATUS pulPrivStatus, out uint32 pulStatus, WRITEEMBEDPROC lpfnWriteToStream, void* lpvWriteStream, uint16* pusCharCodeSet, uint16 usCharCodeCount, uint16 usLanguage, TTEMBEDINFO* pTTEmbedInfo);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTEmbedFontFromFileA(HDC hDC, PSTR szFontFileName, uint16 usTTCIndex, TTEMBED_FLAGS ulFlags, EMBED_FONT_CHARSET ulCharSet, out EMBEDDED_FONT_PRIV_STATUS pulPrivStatus, out uint32 pulStatus, WRITEEMBEDPROC lpfnWriteToStream, void* lpvWriteStream, uint16* pusCharCodeSet, uint16 usCharCodeCount, uint16 usLanguage, TTEMBEDINFO* pTTEmbedInfo);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTLoadEmbeddedFont(out HANDLE phFontReference, uint32 ulFlags, out EMBEDDED_FONT_PRIV_STATUS pulPrivStatus, FONT_LICENSE_PRIVS ulPrivs, out TTLOAD_EMBEDDED_FONT_STATUS pulStatus, READEMBEDPROC lpfnReadFromStream, void* lpvReadStream, PWSTR szWinFamilyName, PSTR szMacFamilyName, TTLOADINFO* pTTLoadInfo);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTGetEmbeddedFontInfo(TTEMBED_FLAGS ulFlags, out uint32 pulPrivStatus, FONT_LICENSE_PRIVS ulPrivs, out uint32 pulStatus, READEMBEDPROC lpfnReadFromStream, void* lpvReadStream, TTLOADINFO* pTTLoadInfo);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTDeleteEmbeddedFont(HANDLE hFontReference, uint32 ulFlags, out uint32 pulStatus);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTGetEmbeddingType(HDC hDC, out EMBEDDED_FONT_PRIV_STATUS pulEmbedType);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTCharToUnicode(HDC hDC, uint8* pucCharCodes, uint32 ulCharCodeSize, uint16* pusShortCodes, uint32 ulShortCodeSize, uint32 ulFlags);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTRunValidationTests(HDC hDC, ref TTVALIDATIONTESTSPARAMS pTestParam);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTIsEmbeddingEnabled(HDC hDC, out BOOL pbEnabled);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTIsEmbeddingEnabledForFacename(PSTR lpszFacename, out BOOL pbEnabled);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTEnableEmbeddingForFacename(PSTR lpszFacename, BOOL bEnable);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTEmbedFontEx(HDC hDC, TTEMBED_FLAGS ulFlags, EMBED_FONT_CHARSET ulCharSet, out EMBEDDED_FONT_PRIV_STATUS pulPrivStatus, out uint32 pulStatus, WRITEEMBEDPROC lpfnWriteToStream, void* lpvWriteStream, uint32* pulCharCodeSet, uint16 usCharCodeCount, uint16 usLanguage, TTEMBEDINFO* pTTEmbedInfo);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTRunValidationTestsEx(HDC hDC, ref TTVALIDATIONTESTSPARAMSEX pTestParam);
		[Import("t2embed.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TTGetNewFontName(ref HANDLE phFontReference, char16* wzWinFamilyName, int32 cchMaxWinName, uint8* szMacFamilyName, int32 cchMaxMacName);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DrawEdge(HDC hdc, out RECT qrc, DRAWEDGE_FLAGS edge, DRAW_EDGE_FLAGS grfFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DrawFrameControl(HDC param0, out RECT param1, DFC_TYPE param2, DFCS_STATE param3);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DrawCaption(HWND hwnd, HDC hdc, in RECT lprect, DRAW_CAPTION_FLAGS flags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DrawAnimatedRects(HWND hwnd, int32 idAni, in RECT lprcFrom, in RECT lprcTo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DrawTextA(HDC hdc, uint8* lpchText, int32 cchText, out RECT lprc, DRAW_TEXT_FORMAT format);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DrawTextW(HDC hdc, char16* lpchText, int32 cchText, out RECT lprc, DRAW_TEXT_FORMAT format);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DrawTextExA(HDC hdc, uint8* lpchText, int32 cchText, out RECT lprc, DRAW_TEXT_FORMAT format, DRAWTEXTPARAMS* lpdtp);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DrawTextExW(HDC hdc, char16* lpchText, int32 cchText, out RECT lprc, DRAW_TEXT_FORMAT format, DRAWTEXTPARAMS* lpdtp);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GrayStringA(HDC hDC, HBRUSH hBrush, GRAYSTRINGPROC lpOutputFunc, LPARAM lpData, int32 nCount, int32 X, int32 Y, int32 nWidth, int32 nHeight);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GrayStringW(HDC hDC, HBRUSH hBrush, GRAYSTRINGPROC lpOutputFunc, LPARAM lpData, int32 nCount, int32 X, int32 Y, int32 nWidth, int32 nHeight);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DrawStateA(HDC hdc, HBRUSH hbrFore, DRAWSTATEPROC qfnCallBack, LPARAM lData, WPARAM wData, int32 x, int32 y, int32 cx, int32 cy, DRAWSTATE_FLAGS uFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DrawStateW(HDC hdc, HBRUSH hbrFore, DRAWSTATEPROC qfnCallBack, LPARAM lData, WPARAM wData, int32 x, int32 y, int32 cx, int32 cy, DRAWSTATE_FLAGS uFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TabbedTextOutA(HDC hdc, int32 x, int32 y, uint8* lpString, int32 chCount, int32 nTabPositions, int32* lpnTabStopPositions, int32 nTabOrigin);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 TabbedTextOutW(HDC hdc, int32 x, int32 y, char16* lpString, int32 chCount, int32 nTabPositions, int32* lpnTabStopPositions, int32 nTabOrigin);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTabbedTextExtentA(HDC hdc, uint8* lpString, int32 chCount, int32 nTabPositions, int32* lpnTabStopPositions);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTabbedTextExtentW(HDC hdc, char16* lpString, int32 chCount, int32 nTabPositions, int32* lpnTabStopPositions);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UpdateWindow(HWND hWnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PaintDesktop(HDC hdc);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND WindowFromDC(HDC hDC);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDC GetDC(HWND hWnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDC GetDCEx(HWND hWnd, HRGN hrgnClip, GET_DCX_FLAGS flags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDC GetWindowDC(HWND hWnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ReleaseDC(HWND hWnd, HDC hDC);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDC BeginPaint(HWND hWnd, out PAINTSTRUCT lpPaint);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EndPaint(HWND hWnd, in PAINTSTRUCT lpPaint);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetUpdateRect(HWND hWnd, RECT* lpRect, BOOL bErase);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetUpdateRgn(HWND hWnd, HRGN hRgn, BOOL bErase);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetWindowRgn(HWND hWnd, HRGN hRgn, BOOL bRedraw);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetWindowRgn(HWND hWnd, HRGN hRgn);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetWindowRgnBox(HWND hWnd, out RECT lprc);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ExcludeUpdateRgn(HDC hDC, HWND hWnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InvalidateRect(HWND hWnd, RECT* lpRect, BOOL bErase);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ValidateRect(HWND hWnd, RECT* lpRect);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InvalidateRgn(HWND hWnd, HRGN hRgn, BOOL bErase);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ValidateRgn(HWND hWnd, HRGN hRgn);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RedrawWindow(HWND hWnd, RECT* lprcUpdate, HRGN hrgnUpdate, REDRAW_WINDOW_FLAGS flags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LockWindowUpdate(HWND hWndLock);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ClientToScreen(HWND hWnd, out POINT lpPoint);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ScreenToClient(HWND hWnd, out POINT lpPoint);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 MapWindowPoints(HWND hWndFrom, HWND hWndTo, POINT* lpPoints, uint32 cPoints);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBRUSH GetSysColorBrush(int32 nIndex);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DrawFocusRect(HDC hDC, in RECT lprc);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 FillRect(HDC hDC, in RECT lprc, HBRUSH hbr);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 FrameRect(HDC hDC, in RECT lprc, HBRUSH hbr);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InvertRect(HDC hDC, in RECT lprc);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetRect(out RECT lprc, int32 xLeft, int32 yTop, int32 xRight, int32 yBottom);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetRectEmpty(out RECT lprc);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CopyRect(out RECT lprcDst, in RECT lprcSrc);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InflateRect(out RECT lprc, int32 dx, int32 dy);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IntersectRect(out RECT lprcDst, in RECT lprcSrc1, in RECT lprcSrc2);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnionRect(out RECT lprcDst, in RECT lprcSrc1, in RECT lprcSrc2);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SubtractRect(out RECT lprcDst, in RECT lprcSrc1, in RECT lprcSrc2);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OffsetRect(out RECT lprc, int32 dx, int32 dy);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsRectEmpty(in RECT lprc);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EqualRect(in RECT lprc1, in RECT lprc2);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PtInRect(in RECT lprc, POINT pt);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBITMAP LoadBitmapA(HINSTANCE hInstance, PSTR lpBitmapName);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HBITMAP LoadBitmapW(HINSTANCE hInstance, PWSTR lpBitmapName);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DISP_CHANGE ChangeDisplaySettingsA(DEVMODEA* lpDevMode, CDS_TYPE dwFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DISP_CHANGE ChangeDisplaySettingsW(DEVMODEW* lpDevMode, CDS_TYPE dwFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DISP_CHANGE ChangeDisplaySettingsExA(PSTR lpszDeviceName, DEVMODEA* lpDevMode, HWND hwnd, CDS_TYPE dwflags, void* lParam);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DISP_CHANGE ChangeDisplaySettingsExW(PWSTR lpszDeviceName, DEVMODEW* lpDevMode, HWND hwnd, CDS_TYPE dwflags, void* lParam);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumDisplaySettingsA(PSTR lpszDeviceName, ENUM_DISPLAY_SETTINGS_MODE iModeNum, out DEVMODEA lpDevMode);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumDisplaySettingsW(PWSTR lpszDeviceName, ENUM_DISPLAY_SETTINGS_MODE iModeNum, out DEVMODEW lpDevMode);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumDisplaySettingsExA(PSTR lpszDeviceName, ENUM_DISPLAY_SETTINGS_MODE iModeNum, out DEVMODEA lpDevMode, uint32 dwFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumDisplaySettingsExW(PWSTR lpszDeviceName, ENUM_DISPLAY_SETTINGS_MODE iModeNum, out DEVMODEW lpDevMode, uint32 dwFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumDisplayDevicesA(PSTR lpDevice, uint32 iDevNum, out DISPLAY_DEVICEA lpDisplayDevice, uint32 dwFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumDisplayDevicesW(PWSTR lpDevice, uint32 iDevNum, out DISPLAY_DEVICEW lpDisplayDevice, uint32 dwFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HMONITOR MonitorFromPoint(POINT pt, MONITOR_FROM_FLAGS dwFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HMONITOR MonitorFromRect(ref RECT lprc, MONITOR_FROM_FLAGS dwFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HMONITOR MonitorFromWindow(HWND hwnd, MONITOR_FROM_FLAGS dwFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetMonitorInfoA(HMONITOR hMonitor, out MONITORINFO lpmi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetMonitorInfoW(HMONITOR hMonitor, out MONITORINFO lpmi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumDisplayMonitors(HDC hdc, RECT* lprcClip, MONITORENUMPROC lpfnEnum, LPARAM dwData);
	}
}
