namespace Win32.Graphics.DirectWrite;

using System;
using Win32.Foundation;
using Win32.Globalization;
using Win32.Graphics.Direct2D.Common;
using Win32.Graphics.Gdi;
using Win32.System.Com;

static
{
	#region Constants
	public const uint32 DWRITE_ALPHA_MAX = 255;
	public const uint32 FACILITY_DWRITE = 2200;
	public const uint32 DWRITE_ERR_BASE = 20480;
	public const HRESULT DWRITE_E_REMOTEFONT = -2003283955;
	public const HRESULT DWRITE_E_DOWNLOADCANCELLED = -2003283954;
	public const HRESULT DWRITE_E_DOWNLOADFAILED = -2003283953;
	public const HRESULT DWRITE_E_TOOMANYDOWNLOADS = -2003283952;
	#endregion
	
	#region Enums
	public enum DWRITE_FONT_AXIS_TAG : uint32
	{
		WEIGHT = 1952999287,
		WIDTH = 1752458359,
		SLANT = 1953393779,
		OPTICAL_SIZE = 2054385775,
		ITALIC = 1818326121,
	}
	public enum DWRITE_MEASURING_MODE : int32
	{
		NATURAL = 0,
		GDI_CLASSIC = 1,
		GDI_NATURAL = 2,
	}
	public enum DWRITE_GLYPH_IMAGE_FORMATS : uint32
	{
		NONE = 0,
		TRUETYPE = 1,
		CFF = 2,
		COLR = 4,
		SVG = 8,
		PNG = 16,
		JPEG = 32,
		TIFF = 64,
		PREMULTIPLIED_B8G8R8A8 = 128,
	}
	[AllowDuplicates]
	public enum DWRITE_FONT_FILE_TYPE : int32
	{
		UNKNOWN = 0,
		CFF = 1,
		TRUETYPE = 2,
		OPENTYPE_COLLECTION = 3,
		TYPE1_PFM = 4,
		TYPE1_PFB = 5,
		VECTOR = 6,
		BITMAP = 7,
		TRUETYPE_COLLECTION = 3,
	}
	[AllowDuplicates]
	public enum DWRITE_FONT_FACE_TYPE : int32
	{
		CFF = 0,
		TRUETYPE = 1,
		OPENTYPE_COLLECTION = 2,
		TYPE1 = 3,
		VECTOR = 4,
		BITMAP = 5,
		UNKNOWN = 6,
		RAW_CFF = 7,
		TRUETYPE_COLLECTION = 2,
	}
	public enum DWRITE_FONT_SIMULATIONS : uint32
	{
		NONE = 0,
		BOLD = 1,
		OBLIQUE = 2,
	}
	[AllowDuplicates]
	public enum DWRITE_FONT_WEIGHT : int32
	{
		THIN = 100,
		EXTRA_LIGHT = 200,
		ULTRA_LIGHT = 200,
		LIGHT = 300,
		SEMI_LIGHT = 350,
		NORMAL = 400,
		REGULAR = 400,
		MEDIUM = 500,
		DEMI_BOLD = 600,
		SEMI_BOLD = 600,
		BOLD = 700,
		EXTRA_BOLD = 800,
		ULTRA_BOLD = 800,
		BLACK = 900,
		HEAVY = 900,
		EXTRA_BLACK = 950,
		ULTRA_BLACK = 950,
	}
	[AllowDuplicates]
	public enum DWRITE_FONT_STRETCH : int32
	{
		UNDEFINED = 0,
		ULTRA_CONDENSED = 1,
		EXTRA_CONDENSED = 2,
		CONDENSED = 3,
		SEMI_CONDENSED = 4,
		NORMAL = 5,
		MEDIUM = 5,
		SEMI_EXPANDED = 6,
		EXPANDED = 7,
		EXTRA_EXPANDED = 8,
		ULTRA_EXPANDED = 9,
	}
	public enum DWRITE_FONT_STYLE : int32
	{
		NORMAL = 0,
		OBLIQUE = 1,
		ITALIC = 2,
	}
	[AllowDuplicates]
	public enum DWRITE_INFORMATIONAL_STRING_ID : int32
	{
		NONE = 0,
		COPYRIGHT_NOTICE = 1,
		VERSION_STRINGS = 2,
		TRADEMARK = 3,
		MANUFACTURER = 4,
		DESIGNER = 5,
		DESIGNER_URL = 6,
		DESCRIPTION = 7,
		FONT_VENDOR_URL = 8,
		LICENSE_DESCRIPTION = 9,
		LICENSE_INFO_URL = 10,
		WIN32_FAMILY_NAMES = 11,
		WIN32_SUBFAMILY_NAMES = 12,
		TYPOGRAPHIC_FAMILY_NAMES = 13,
		TYPOGRAPHIC_SUBFAMILY_NAMES = 14,
		SAMPLE_TEXT = 15,
		FULL_NAME = 16,
		POSTSCRIPT_NAME = 17,
		POSTSCRIPT_CID_NAME = 18,
		WEIGHT_STRETCH_STYLE_FAMILY_NAME = 19,
		DESIGN_SCRIPT_LANGUAGE_TAG = 20,
		SUPPORTED_SCRIPT_LANGUAGE_TAG = 21,
		PREFERRED_FAMILY_NAMES = 13,
		PREFERRED_SUBFAMILY_NAMES = 14,
		WWS_FAMILY_NAME = 19,
	}
	public enum DWRITE_FACTORY_TYPE : int32
	{
		SHARED = 0,
		ISOLATED = 1,
	}
	public enum DWRITE_PIXEL_GEOMETRY : int32
	{
		FLAT = 0,
		RGB = 1,
		BGR = 2,
	}
	[AllowDuplicates]
	public enum DWRITE_RENDERING_MODE : int32
	{
		DEFAULT = 0,
		ALIASED = 1,
		GDI_CLASSIC = 2,
		GDI_NATURAL = 3,
		NATURAL = 4,
		NATURAL_SYMMETRIC = 5,
		OUTLINE = 6,
		CLEARTYPE_GDI_CLASSIC = 2,
		CLEARTYPE_GDI_NATURAL = 3,
		CLEARTYPE_NATURAL = 4,
		CLEARTYPE_NATURAL_SYMMETRIC = 5,
	}
	public enum DWRITE_READING_DIRECTION : int32
	{
		LEFT_TO_RIGHT = 0,
		RIGHT_TO_LEFT = 1,
		TOP_TO_BOTTOM = 2,
		BOTTOM_TO_TOP = 3,
	}
	public enum DWRITE_FLOW_DIRECTION : int32
	{
		TOP_TO_BOTTOM = 0,
		BOTTOM_TO_TOP = 1,
		LEFT_TO_RIGHT = 2,
		RIGHT_TO_LEFT = 3,
	}
	public enum DWRITE_TEXT_ALIGNMENT : int32
	{
		LEADING = 0,
		TRAILING = 1,
		CENTER = 2,
		JUSTIFIED = 3,
	}
	public enum DWRITE_PARAGRAPH_ALIGNMENT : int32
	{
		NEAR = 0,
		FAR = 1,
		CENTER = 2,
	}
	public enum DWRITE_WORD_WRAPPING : int32
	{
		WRAP = 0,
		NO_WRAP = 1,
		EMERGENCY_BREAK = 2,
		WHOLE_WORD = 3,
		CHARACTER = 4,
	}
	public enum DWRITE_LINE_SPACING_METHOD : int32
	{
		DEFAULT = 0,
		UNIFORM = 1,
		PROPORTIONAL = 2,
	}
	public enum DWRITE_TRIMMING_GRANULARITY : int32
	{
		NONE = 0,
		CHARACTER = 1,
		WORD = 2,
	}
	public enum DWRITE_FONT_FEATURE_TAG : uint32
	{
		ALTERNATIVE_FRACTIONS = 1668441697,
		PETITE_CAPITALS_FROM_CAPITALS = 1668297315,
		SMALL_CAPITALS_FROM_CAPITALS = 1668493923,
		CONTEXTUAL_ALTERNATES = 1953259875,
		CASE_SENSITIVE_FORMS = 1702060387,
		GLYPH_COMPOSITION_DECOMPOSITION = 1886217059,
		CONTEXTUAL_LIGATURES = 1734962275,
		CAPITAL_SPACING = 1886613603,
		CONTEXTUAL_SWASH = 1752658787,
		CURSIVE_POSITIONING = 1936880995,
		DEFAULT = 1953261156,
		DISCRETIONARY_LIGATURES = 1734962276,
		EXPERT_FORMS = 1953527909,
		FRACTIONS = 1667330662,
		FULL_WIDTH = 1684633446,
		HALF_FORMS = 1718378856,
		HALANT_FORMS = 1852596584,
		ALTERNATE_HALF_WIDTH = 1953259880,
		HISTORICAL_FORMS = 1953720680,
		HORIZONTAL_KANA_ALTERNATES = 1634626408,
		HISTORICAL_LIGATURES = 1734962280,
		HALF_WIDTH = 1684633448,
		HOJO_KANJI_FORMS = 1869246312,
		JIS04_FORMS = 875589738,
		JIS78_FORMS = 943157354,
		JIS83_FORMS = 859336810,
		JIS90_FORMS = 809070698,
		KERNING = 1852990827,
		STANDARD_LIGATURES = 1634167148,
		LINING_FIGURES = 1836412524,
		LOCALIZED_FORMS = 1818455916,
		MARK_POSITIONING = 1802658157,
		MATHEMATICAL_GREEK = 1802659693,
		MARK_TO_MARK_POSITIONING = 1802333037,
		ALTERNATE_ANNOTATION_FORMS = 1953259886,
		NLC_KANJI_FORMS = 1801677934,
		OLD_STYLE_FIGURES = 1836412527,
		ORDINALS = 1852076655,
		PROPORTIONAL_ALTERNATE_WIDTH = 1953259888,
		PETITE_CAPITALS = 1885430640,
		PROPORTIONAL_FIGURES = 1836412528,
		PROPORTIONAL_WIDTHS = 1684633456,
		QUARTER_WIDTHS = 1684633457,
		REQUIRED_LIGATURES = 1734962290,
		RUBY_NOTATION_FORMS = 2036495730,
		STYLISTIC_ALTERNATES = 1953259891,
		SCIENTIFIC_INFERIORS = 1718511987,
		SMALL_CAPITALS = 1885564275,
		SIMPLIFIED_FORMS = 1819307379,
		STYLISTIC_SET_1 = 825258867,
		STYLISTIC_SET_2 = 842036083,
		STYLISTIC_SET_3 = 858813299,
		STYLISTIC_SET_4 = 875590515,
		STYLISTIC_SET_5 = 892367731,
		STYLISTIC_SET_6 = 909144947,
		STYLISTIC_SET_7 = 925922163,
		STYLISTIC_SET_8 = 942699379,
		STYLISTIC_SET_9 = 959476595,
		STYLISTIC_SET_10 = 808547187,
		STYLISTIC_SET_11 = 825324403,
		STYLISTIC_SET_12 = 842101619,
		STYLISTIC_SET_13 = 858878835,
		STYLISTIC_SET_14 = 875656051,
		STYLISTIC_SET_15 = 892433267,
		STYLISTIC_SET_16 = 909210483,
		STYLISTIC_SET_17 = 925987699,
		STYLISTIC_SET_18 = 942764915,
		STYLISTIC_SET_19 = 959542131,
		STYLISTIC_SET_20 = 808612723,
		SUBSCRIPT = 1935832435,
		SUPERSCRIPT = 1936749939,
		SWASH = 1752397683,
		TITLING = 1819568500,
		TRADITIONAL_NAME_FORMS = 1835101812,
		TABULAR_FIGURES = 1836412532,
		TRADITIONAL_FORMS = 1684107892,
		THIRD_WIDTHS = 1684633460,
		UNICASE = 1667853941,
		VERTICAL_WRITING = 1953654134,
		VERTICAL_ALTERNATES_AND_ROTATION = 846492278,
		SLASHED_ZERO = 1869768058,
	}
	public enum DWRITE_SCRIPT_SHAPES : uint32
	{
		DEFAULT = 0,
		NO_VISUAL = 1,
	}
	public enum DWRITE_BREAK_CONDITION : int32
	{
		NEUTRAL = 0,
		CAN_BREAK = 1,
		MAY_NOT_BREAK = 2,
		MUST_BREAK = 3,
	}
	public enum DWRITE_NUMBER_SUBSTITUTION_METHOD : int32
	{
		FROM_CULTURE = 0,
		CONTEXTUAL = 1,
		NONE = 2,
		NATIONAL = 3,
		TRADITIONAL = 4,
	}
	public enum DWRITE_TEXTURE_TYPE : int32
	{
		ALIASED_1x1 = 0,
		CLEARTYPE_3x1 = 1,
	}
	[AllowDuplicates]
	public enum DWRITE_PANOSE_FAMILY : int32
	{
		ANY = 0,
		NO_FIT = 1,
		TEXT_DISPLAY = 2,
		SCRIPT = 3,
		DECORATIVE = 4,
		SYMBOL = 5,
		PICTORIAL = 5,
	}
	[AllowDuplicates]
	public enum DWRITE_PANOSE_SERIF_STYLE : int32
	{
		ANY = 0,
		NO_FIT = 1,
		COVE = 2,
		OBTUSE_COVE = 3,
		SQUARE_COVE = 4,
		OBTUSE_SQUARE_COVE = 5,
		SQUARE = 6,
		THIN = 7,
		OVAL = 8,
		EXAGGERATED = 9,
		TRIANGLE = 10,
		NORMAL_SANS = 11,
		OBTUSE_SANS = 12,
		PERPENDICULAR_SANS = 13,
		FLARED = 14,
		ROUNDED = 15,
		SCRIPT = 16,
		PERP_SANS = 13,
		BONE = 8,
	}
	[AllowDuplicates]
	public enum DWRITE_PANOSE_WEIGHT : int32
	{
		ANY = 0,
		NO_FIT = 1,
		VERY_LIGHT = 2,
		LIGHT = 3,
		THIN = 4,
		BOOK = 5,
		MEDIUM = 6,
		DEMI = 7,
		BOLD = 8,
		HEAVY = 9,
		BLACK = 10,
		EXTRA_BLACK = 11,
		NORD = 11,
	}
	public enum DWRITE_PANOSE_PROPORTION : int32
	{
		ANY = 0,
		NO_FIT = 1,
		OLD_STYLE = 2,
		MODERN = 3,
		EVEN_WIDTH = 4,
		EXPANDED = 5,
		CONDENSED = 6,
		VERY_EXPANDED = 7,
		VERY_CONDENSED = 8,
		MONOSPACED = 9,
	}
	public enum DWRITE_PANOSE_CONTRAST : int32
	{
		ANY = 0,
		NO_FIT = 1,
		NONE = 2,
		VERY_LOW = 3,
		LOW = 4,
		MEDIUM_LOW = 5,
		MEDIUM = 6,
		MEDIUM_HIGH = 7,
		HIGH = 8,
		VERY_HIGH = 9,
		HORIZONTAL_LOW = 10,
		HORIZONTAL_MEDIUM = 11,
		HORIZONTAL_HIGH = 12,
		BROKEN = 13,
	}
	public enum DWRITE_PANOSE_STROKE_VARIATION : int32
	{
		ANY = 0,
		NO_FIT = 1,
		NO_VARIATION = 2,
		GRADUAL_DIAGONAL = 3,
		GRADUAL_TRANSITIONAL = 4,
		GRADUAL_VERTICAL = 5,
		GRADUAL_HORIZONTAL = 6,
		RAPID_VERTICAL = 7,
		RAPID_HORIZONTAL = 8,
		INSTANT_VERTICAL = 9,
		INSTANT_HORIZONTAL = 10,
	}
	[AllowDuplicates]
	public enum DWRITE_PANOSE_ARM_STYLE : int32
	{
		ANY = 0,
		NO_FIT = 1,
		STRAIGHT_ARMS_HORIZONTAL = 2,
		STRAIGHT_ARMS_WEDGE = 3,
		STRAIGHT_ARMS_VERTICAL = 4,
		STRAIGHT_ARMS_SINGLE_SERIF = 5,
		STRAIGHT_ARMS_DOUBLE_SERIF = 6,
		NONSTRAIGHT_ARMS_HORIZONTAL = 7,
		NONSTRAIGHT_ARMS_WEDGE = 8,
		NONSTRAIGHT_ARMS_VERTICAL = 9,
		NONSTRAIGHT_ARMS_SINGLE_SERIF = 10,
		NONSTRAIGHT_ARMS_DOUBLE_SERIF = 11,
		STRAIGHT_ARMS_HORZ = 2,
		STRAIGHT_ARMS_VERT = 4,
		BENT_ARMS_HORZ = 7,
		BENT_ARMS_WEDGE = 8,
		BENT_ARMS_VERT = 9,
		BENT_ARMS_SINGLE_SERIF = 10,
		BENT_ARMS_DOUBLE_SERIF = 11,
	}
	public enum DWRITE_PANOSE_LETTERFORM : int32
	{
		ANY = 0,
		NO_FIT = 1,
		NORMAL_CONTACT = 2,
		NORMAL_WEIGHTED = 3,
		NORMAL_BOXED = 4,
		NORMAL_FLATTENED = 5,
		NORMAL_ROUNDED = 6,
		NORMAL_OFF_CENTER = 7,
		NORMAL_SQUARE = 8,
		OBLIQUE_CONTACT = 9,
		OBLIQUE_WEIGHTED = 10,
		OBLIQUE_BOXED = 11,
		OBLIQUE_FLATTENED = 12,
		OBLIQUE_ROUNDED = 13,
		OBLIQUE_OFF_CENTER = 14,
		OBLIQUE_SQUARE = 15,
	}
	public enum DWRITE_PANOSE_MIDLINE : int32
	{
		ANY = 0,
		NO_FIT = 1,
		STANDARD_TRIMMED = 2,
		STANDARD_POINTED = 3,
		STANDARD_SERIFED = 4,
		HIGH_TRIMMED = 5,
		HIGH_POINTED = 6,
		HIGH_SERIFED = 7,
		CONSTANT_TRIMMED = 8,
		CONSTANT_POINTED = 9,
		CONSTANT_SERIFED = 10,
		LOW_TRIMMED = 11,
		LOW_POINTED = 12,
		LOW_SERIFED = 13,
	}
	[AllowDuplicates]
	public enum DWRITE_PANOSE_XHEIGHT : int32
	{
		ANY = 0,
		NO_FIT = 1,
		CONSTANT_SMALL = 2,
		CONSTANT_STANDARD = 3,
		CONSTANT_LARGE = 4,
		DUCKING_SMALL = 5,
		DUCKING_STANDARD = 6,
		DUCKING_LARGE = 7,
		CONSTANT_STD = 3,
		DUCKING_STD = 6,
	}
	public enum DWRITE_PANOSE_TOOL_KIND : int32
	{
		ANY = 0,
		NO_FIT = 1,
		FLAT_NIB = 2,
		PRESSURE_POINT = 3,
		ENGRAVED = 4,
		BALL = 5,
		BRUSH = 6,
		ROUGH = 7,
		FELT_PEN_BRUSH_TIP = 8,
		WILD_BRUSH = 9,
	}
	public enum DWRITE_PANOSE_SPACING : int32
	{
		ANY = 0,
		NO_FIT = 1,
		PROPORTIONAL_SPACED = 2,
		MONOSPACED = 3,
	}
	public enum DWRITE_PANOSE_ASPECT_RATIO : int32
	{
		ANY = 0,
		NO_FIT = 1,
		VERY_CONDENSED = 2,
		CONDENSED = 3,
		NORMAL = 4,
		EXPANDED = 5,
		VERY_EXPANDED = 6,
	}
	public enum DWRITE_PANOSE_SCRIPT_TOPOLOGY : int32
	{
		ANY = 0,
		NO_FIT = 1,
		ROMAN_DISCONNECTED = 2,
		ROMAN_TRAILING = 3,
		ROMAN_CONNECTED = 4,
		CURSIVE_DISCONNECTED = 5,
		CURSIVE_TRAILING = 6,
		CURSIVE_CONNECTED = 7,
		BLACKLETTER_DISCONNECTED = 8,
		BLACKLETTER_TRAILING = 9,
		BLACKLETTER_CONNECTED = 10,
	}
	public enum DWRITE_PANOSE_SCRIPT_FORM : int32
	{
		ANY = 0,
		NO_FIT = 1,
		UPRIGHT_NO_WRAPPING = 2,
		UPRIGHT_SOME_WRAPPING = 3,
		UPRIGHT_MORE_WRAPPING = 4,
		UPRIGHT_EXTREME_WRAPPING = 5,
		OBLIQUE_NO_WRAPPING = 6,
		OBLIQUE_SOME_WRAPPING = 7,
		OBLIQUE_MORE_WRAPPING = 8,
		OBLIQUE_EXTREME_WRAPPING = 9,
		EXAGGERATED_NO_WRAPPING = 10,
		EXAGGERATED_SOME_WRAPPING = 11,
		EXAGGERATED_MORE_WRAPPING = 12,
		EXAGGERATED_EXTREME_WRAPPING = 13,
	}
	public enum DWRITE_PANOSE_FINIALS : int32
	{
		ANY = 0,
		NO_FIT = 1,
		NONE_NO_LOOPS = 2,
		NONE_CLOSED_LOOPS = 3,
		NONE_OPEN_LOOPS = 4,
		SHARP_NO_LOOPS = 5,
		SHARP_CLOSED_LOOPS = 6,
		SHARP_OPEN_LOOPS = 7,
		TAPERED_NO_LOOPS = 8,
		TAPERED_CLOSED_LOOPS = 9,
		TAPERED_OPEN_LOOPS = 10,
		ROUND_NO_LOOPS = 11,
		ROUND_CLOSED_LOOPS = 12,
		ROUND_OPEN_LOOPS = 13,
	}
	public enum DWRITE_PANOSE_XASCENT : int32
	{
		ANY = 0,
		NO_FIT = 1,
		VERY_LOW = 2,
		LOW = 3,
		MEDIUM = 4,
		HIGH = 5,
		VERY_HIGH = 6,
	}
	public enum DWRITE_PANOSE_DECORATIVE_CLASS : int32
	{
		ANY = 0,
		NO_FIT = 1,
		DERIVATIVE = 2,
		NONSTANDARD_TOPOLOGY = 3,
		NONSTANDARD_ELEMENTS = 4,
		NONSTANDARD_ASPECT = 5,
		INITIALS = 6,
		CARTOON = 7,
		PICTURE_STEMS = 8,
		ORNAMENTED = 9,
		TEXT_AND_BACKGROUND = 10,
		COLLAGE = 11,
		MONTAGE = 12,
	}
	public enum DWRITE_PANOSE_ASPECT : int32
	{
		ANY = 0,
		NO_FIT = 1,
		SUPER_CONDENSED = 2,
		VERY_CONDENSED = 3,
		CONDENSED = 4,
		NORMAL = 5,
		EXTENDED = 6,
		VERY_EXTENDED = 7,
		SUPER_EXTENDED = 8,
		MONOSPACED = 9,
	}
	public enum DWRITE_PANOSE_FILL : int32
	{
		ANY = 0,
		NO_FIT = 1,
		STANDARD_SOLID_FILL = 2,
		NO_FILL = 3,
		PATTERNED_FILL = 4,
		COMPLEX_FILL = 5,
		SHAPED_FILL = 6,
		DRAWN_DISTRESSED = 7,
	}
	public enum DWRITE_PANOSE_LINING : int32
	{
		ANY = 0,
		NO_FIT = 1,
		NONE = 2,
		INLINE = 3,
		OUTLINE = 4,
		ENGRAVED = 5,
		SHADOW = 6,
		RELIEF = 7,
		BACKDROP = 8,
	}
	public enum DWRITE_PANOSE_DECORATIVE_TOPOLOGY : int32
	{
		ANY = 0,
		NO_FIT = 1,
		STANDARD = 2,
		SQUARE = 3,
		MULTIPLE_SEGMENT = 4,
		ART_DECO = 5,
		UNEVEN_WEIGHTING = 6,
		DIVERSE_ARMS = 7,
		DIVERSE_FORMS = 8,
		LOMBARDIC_FORMS = 9,
		UPPER_CASE_IN_LOWER_CASE = 10,
		IMPLIED_TOPOLOGY = 11,
		HORSESHOE_E_AND_A = 12,
		CURSIVE = 13,
		BLACKLETTER = 14,
		SWASH_VARIANCE = 15,
	}
	public enum DWRITE_PANOSE_CHARACTER_RANGES : int32
	{
		ANY = 0,
		NO_FIT = 1,
		EXTENDED_COLLECTION = 2,
		LITERALS = 3,
		NO_LOWER_CASE = 4,
		SMALL_CAPS = 5,
	}
	public enum DWRITE_PANOSE_SYMBOL_KIND : int32
	{
		ANY = 0,
		NO_FIT = 1,
		MONTAGES = 2,
		PICTURES = 3,
		SHAPES = 4,
		SCIENTIFIC = 5,
		MUSIC = 6,
		EXPERT = 7,
		PATTERNS = 8,
		BOARDERS = 9,
		ICONS = 10,
		LOGOS = 11,
		INDUSTRY_SPECIFIC = 12,
	}
	public enum DWRITE_PANOSE_SYMBOL_ASPECT_RATIO : int32
	{
		ANY = 0,
		NO_FIT = 1,
		NO_WIDTH = 2,
		EXCEPTIONALLY_WIDE = 3,
		SUPER_WIDE = 4,
		VERY_WIDE = 5,
		WIDE = 6,
		NORMAL = 7,
		NARROW = 8,
		VERY_NARROW = 9,
	}
	public enum DWRITE_OUTLINE_THRESHOLD : int32
	{
		ANTIALIASED = 0,
		ALIASED = 1,
	}
	public enum DWRITE_BASELINE : int32
	{
		DEFAULT = 0,
		ROMAN = 1,
		CENTRAL = 2,
		MATH = 3,
		HANGING = 4,
		IDEOGRAPHIC_BOTTOM = 5,
		IDEOGRAPHIC_TOP = 6,
		MINIMUM = 7,
		MAXIMUM = 8,
	}
	public enum DWRITE_VERTICAL_GLYPH_ORIENTATION : int32
	{
		DEFAULT = 0,
		STACKED = 1,
	}
	public enum DWRITE_GLYPH_ORIENTATION_ANGLE : int32
	{
		_0_DEGREES = 0,
		_90_DEGREES = 1,
		_180_DEGREES = 2,
		_270_DEGREES = 3,
	}
	public enum DWRITE_TEXT_ANTIALIAS_MODE : int32
	{
		CLEARTYPE = 0,
		GRAYSCALE = 1,
	}
	public enum DWRITE_OPTICAL_ALIGNMENT : int32
	{
		NONE = 0,
		NO_SIDE_BEARINGS = 1,
	}
	public enum DWRITE_GRID_FIT_MODE : int32
	{
		DEFAULT = 0,
		DISABLED = 1,
		ENABLED = 2,
	}
	[AllowDuplicates]
	public enum DWRITE_FONT_PROPERTY_ID : int32
	{
		NONE = 0,
		WEIGHT_STRETCH_STYLE_FAMILY_NAME = 1,
		TYPOGRAPHIC_FAMILY_NAME = 2,
		WEIGHT_STRETCH_STYLE_FACE_NAME = 3,
		FULL_NAME = 4,
		WIN32_FAMILY_NAME = 5,
		POSTSCRIPT_NAME = 6,
		DESIGN_SCRIPT_LANGUAGE_TAG = 7,
		SUPPORTED_SCRIPT_LANGUAGE_TAG = 8,
		SEMANTIC_TAG = 9,
		WEIGHT = 10,
		STRETCH = 11,
		STYLE = 12,
		TYPOGRAPHIC_FACE_NAME = 13,
		TOTAL = 13,
		TOTAL_RS3 = 14,
		PREFERRED_FAMILY_NAME = 2,
		FAMILY_NAME = 1,
		FACE_NAME = 3,
	}
	public enum DWRITE_LOCALITY : int32
	{
		REMOTE = 0,
		PARTIAL = 1,
		LOCAL = 2,
	}
	public enum DWRITE_RENDERING_MODE1 : int32
	{
		DEFAULT = 0,
		ALIASED = 1,
		GDI_CLASSIC = 2,
		GDI_NATURAL = 3,
		NATURAL = 4,
		NATURAL_SYMMETRIC = 5,
		OUTLINE = 6,
		NATURAL_SYMMETRIC_DOWNSAMPLED = 7,
	}
	public enum DWRITE_FONT_LINE_GAP_USAGE : int32
	{
		DEFAULT = 0,
		DISABLED = 1,
		ENABLED = 2,
	}
	public enum DWRITE_CONTAINER_TYPE : int32
	{
		UNKNOWN = 0,
		WOFF = 1,
		WOFF2 = 2,
	}
	public enum DWRITE_FONT_FAMILY_MODEL : int32
	{
		TYPOGRAPHIC = 0,
		WEIGHT_STRETCH_STYLE = 1,
	}
	public enum DWRITE_AUTOMATIC_FONT_AXES : uint32
	{
		NONE = 0,
		OPTICAL_SIZE = 1,
	}
	public enum DWRITE_FONT_AXIS_ATTRIBUTES : uint32
	{
		NONE = 0,
		VARIABLE = 1,
		HIDDEN = 2,
	}
	public enum DWRITE_FONT_SOURCE_TYPE : int32
	{
		UNKNOWN = 0,
		PER_MACHINE = 1,
		PER_USER = 2,
		APPX_PACKAGE = 3,
		REMOTE_FONT_PROVIDER = 4,
	}
	#endregion
	
	#region Structs
	[CRepr]
	public struct DWRITE_COLOR_F
	{
		public float r;
		public float g;
		public float b;
		public float a;
	}
	[CRepr]
	public struct DWRITE_FONT_METRICS
	{
		public uint16 designUnitsPerEm;
		public uint16 ascent;
		public uint16 descent;
		public int16 lineGap;
		public uint16 capHeight;
		public uint16 xHeight;
		public int16 underlinePosition;
		public uint16 underlineThickness;
		public int16 strikethroughPosition;
		public uint16 strikethroughThickness;
	}
	[CRepr]
	public struct DWRITE_GLYPH_METRICS
	{
		public int32 leftSideBearing;
		public uint32 advanceWidth;
		public int32 rightSideBearing;
		public int32 topSideBearing;
		public uint32 advanceHeight;
		public int32 bottomSideBearing;
		public int32 verticalOriginY;
	}
	[CRepr]
	public struct DWRITE_GLYPH_OFFSET
	{
		public float advanceOffset;
		public float ascenderOffset;
	}
	[CRepr]
	public struct DWRITE_MATRIX
	{
		public float m11;
		public float m12;
		public float m21;
		public float m22;
		public float dx;
		public float dy;
	}
	[CRepr]
	public struct DWRITE_TEXT_RANGE
	{
		public uint32 startPosition;
		public uint32 length;
	}
	[CRepr]
	public struct DWRITE_FONT_FEATURE
	{
		public DWRITE_FONT_FEATURE_TAG nameTag;
		public uint32 parameter;
	}
	[CRepr]
	public struct DWRITE_TYPOGRAPHIC_FEATURES
	{
		public DWRITE_FONT_FEATURE* features;
		public uint32 featureCount;
	}
	[CRepr]
	public struct DWRITE_TRIMMING
	{
		public DWRITE_TRIMMING_GRANULARITY granularity;
		public uint32 delimiter;
		public uint32 delimiterCount;
	}
	[CRepr]
	public struct DWRITE_SCRIPT_ANALYSIS
	{
		public uint16 script;
		public DWRITE_SCRIPT_SHAPES shapes;
	}
	[CRepr]
	public struct DWRITE_LINE_BREAKPOINT
	{
		public uint8 _bitfield;
	}
	[CRepr]
	public struct DWRITE_SHAPING_TEXT_PROPERTIES
	{
		public uint16 _bitfield;
	}
	[CRepr]
	public struct DWRITE_SHAPING_GLYPH_PROPERTIES
	{
		public uint16 _bitfield;
	}
	[CRepr]
	public struct DWRITE_GLYPH_RUN
	{
		public IDWriteFontFace* fontFace;
		public float fontEmSize;
		public uint32 glyphCount;
		public uint16* glyphIndices;
		public float* glyphAdvances;
		public DWRITE_GLYPH_OFFSET* glyphOffsets;
		public BOOL isSideways;
		public uint32 bidiLevel;
	}
	[CRepr]
	public struct DWRITE_GLYPH_RUN_DESCRIPTION
	{
		public PWSTR localeName;
		public PWSTR string;
		public uint32 stringLength;
		public uint16* clusterMap;
		public uint32 textPosition;
	}
	[CRepr]
	public struct DWRITE_UNDERLINE
	{
		public float width;
		public float thickness;
		public float offset;
		public float runHeight;
		public DWRITE_READING_DIRECTION readingDirection;
		public DWRITE_FLOW_DIRECTION flowDirection;
		public PWSTR localeName;
		public DWRITE_MEASURING_MODE measuringMode;
	}
	[CRepr]
	public struct DWRITE_STRIKETHROUGH
	{
		public float width;
		public float thickness;
		public float offset;
		public DWRITE_READING_DIRECTION readingDirection;
		public DWRITE_FLOW_DIRECTION flowDirection;
		public PWSTR localeName;
		public DWRITE_MEASURING_MODE measuringMode;
	}
	[CRepr]
	public struct DWRITE_LINE_METRICS
	{
		public uint32 length;
		public uint32 trailingWhitespaceLength;
		public uint32 newlineLength;
		public float height;
		public float baseline;
		public BOOL isTrimmed;
	}
	[CRepr]
	public struct DWRITE_CLUSTER_METRICS
	{
		public float width;
		public uint16 length;
		public uint16 _bitfield;
	}
	[CRepr]
	public struct DWRITE_TEXT_METRICS
	{
		public float left;
		public float top;
		public float width;
		public float widthIncludingTrailingWhitespace;
		public float height;
		public float layoutWidth;
		public float layoutHeight;
		public uint32 maxBidiReorderingDepth;
		public uint32 lineCount;
	}
	[CRepr]
	public struct DWRITE_INLINE_OBJECT_METRICS
	{
		public float width;
		public float height;
		public float baseline;
		public BOOL supportsSideways;
	}
	[CRepr]
	public struct DWRITE_OVERHANG_METRICS
	{
		public float left;
		public float top;
		public float right;
		public float bottom;
	}
	[CRepr]
	public struct DWRITE_HIT_TEST_METRICS
	{
		public uint32 textPosition;
		public uint32 length;
		public float left;
		public float top;
		public float width;
		public float height;
		public uint32 bidiLevel;
		public BOOL isText;
		public BOOL isTrimmed;
	}
	[CRepr]
	public struct DWRITE_FONT_METRICS1
	{
		public DWRITE_FONT_METRICS __AnonymousBase_DWrite_1_L627_C38;
		public int16 glyphBoxLeft;
		public int16 glyphBoxTop;
		public int16 glyphBoxRight;
		public int16 glyphBoxBottom;
		public int16 subscriptPositionX;
		public int16 subscriptPositionY;
		public int16 subscriptSizeX;
		public int16 subscriptSizeY;
		public int16 superscriptPositionX;
		public int16 superscriptPositionY;
		public int16 superscriptSizeX;
		public int16 superscriptSizeY;
		public BOOL hasTypographicMetrics;
	}
	[CRepr]
	public struct DWRITE_CARET_METRICS
	{
		public int16 slopeRise;
		public int16 slopeRun;
		public int16 offset;
	}
	[CRepr, Union]
	public struct DWRITE_PANOSE
	{
		public uint8[10] values;
		public uint8 familyKind;
		public _text_e__Struct text;
		public _script_e__Struct script;
		public _decorative_e__Struct decorative;
		public _symbol_e__Struct symbol;
		
		[CRepr]
		public struct _decorative_e__Struct
		{
			public uint8 familyKind;
			public uint8 decorativeClass;
			public uint8 weight;
			public uint8 aspect;
			public uint8 contrast;
			public uint8 serifVariant;
			public uint8 fill;
			public uint8 lining;
			public uint8 decorativeTopology;
			public uint8 characterRange;
		}
		[CRepr]
		public struct _text_e__Struct
		{
			public uint8 familyKind;
			public uint8 serifStyle;
			public uint8 weight;
			public uint8 proportion;
			public uint8 contrast;
			public uint8 strokeVariation;
			public uint8 armStyle;
			public uint8 letterform;
			public uint8 midline;
			public uint8 xHeight;
		}
		[CRepr]
		public struct _symbol_e__Struct
		{
			public uint8 familyKind;
			public uint8 symbolKind;
			public uint8 weight;
			public uint8 spacing;
			public uint8 aspectRatioAndContrast;
			public uint8 aspectRatio94;
			public uint8 aspectRatio119;
			public uint8 aspectRatio157;
			public uint8 aspectRatio163;
			public uint8 aspectRatio211;
		}
		[CRepr]
		public struct _script_e__Struct
		{
			public uint8 familyKind;
			public uint8 toolKind;
			public uint8 weight;
			public uint8 spacing;
			public uint8 aspectRatio;
			public uint8 contrast;
			public uint8 scriptTopology;
			public uint8 scriptForm;
			public uint8 finials;
			public uint8 xAscent;
		}
	}
	[CRepr]
	public struct DWRITE_UNICODE_RANGE
	{
		public uint32 first;
		public uint32 last;
	}
	[CRepr]
	public struct DWRITE_SCRIPT_PROPERTIES
	{
		public uint32 isoScriptCode;
		public uint32 isoScriptNumber;
		public uint32 clusterLookahead;
		public uint32 justificationCharacter;
		public uint32 _bitfield;
	}
	[CRepr]
	public struct DWRITE_JUSTIFICATION_OPPORTUNITY
	{
		public float expansionMinimum;
		public float expansionMaximum;
		public float compressionMaximum;
		public uint32 _bitfield;
	}
	[CRepr]
	public struct DWRITE_TEXT_METRICS1
	{
		public DWRITE_TEXT_METRICS Base;
		public float heightIncludingTrailingWhitespace;
	}
	[CRepr]
	public struct DWRITE_COLOR_GLYPH_RUN
	{
		public DWRITE_GLYPH_RUN glyphRun;
		public DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription;
		public float baselineOriginX;
		public float baselineOriginY;
		public DWRITE_COLOR_F runColor;
		public uint16 paletteIndex;
	}
	[CRepr]
	public struct DWRITE_FONT_PROPERTY
	{
		public DWRITE_FONT_PROPERTY_ID propertyId;
		public PWSTR propertyValue;
		public PWSTR localeName;
	}
	[CRepr]
	public struct DWRITE_LINE_METRICS1
	{
		public DWRITE_LINE_METRICS Base;
		public float leadingBefore;
		public float leadingAfter;
	}
	[CRepr]
	public struct DWRITE_LINE_SPACING
	{
		public DWRITE_LINE_SPACING_METHOD method;
		public float height;
		public float baseline;
		public float leadingBefore;
		public DWRITE_FONT_LINE_GAP_USAGE fontLineGapUsage;
	}
	[CRepr]
	public struct DWRITE_COLOR_GLYPH_RUN1
	{
		public DWRITE_COLOR_GLYPH_RUN Base;
		public DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat;
		public DWRITE_MEASURING_MODE measuringMode;
	}
	[CRepr]
	public struct DWRITE_GLYPH_IMAGE_DATA
	{
		public void* imageData;
		public uint32 imageDataSize;
		public uint32 uniqueDataId;
		public uint32 pixelsPerEm;
		public D2D_SIZE_U pixelSize;
		public POINT horizontalLeftOrigin;
		public POINT horizontalRightOrigin;
		public POINT verticalTopOrigin;
		public POINT verticalBottomOrigin;
	}
	[CRepr]
	public struct DWRITE_FILE_FRAGMENT
	{
		public uint64 fileOffset;
		public uint64 fragmentSize;
	}
	[CRepr]
	public struct DWRITE_FONT_AXIS_VALUE
	{
		public DWRITE_FONT_AXIS_TAG axisTag;
		public float value;
	}
	[CRepr]
	public struct DWRITE_FONT_AXIS_RANGE
	{
		public DWRITE_FONT_AXIS_TAG axisTag;
		public float minValue;
		public float maxValue;
	}
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct IDWriteFontFileLoader : IUnknown
	{
		public const new Guid IID = .(0x727cad4e, 0xd6af, 0x4c9e, 0x8a, 0x08, 0xd6, 0x95, 0xb1, 0x1c, 0xaa, 0x49);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateStreamFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out IDWriteFontFileStream* fontFileStream) mut => VT.CreateStreamFromKey(ref this, fontFileReferenceKey, fontFileReferenceKeySize, out fontFileStream);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFileLoader self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out IDWriteFontFileStream* fontFileStream) CreateStreamFromKey;
		}
	}
	[CRepr]
	public struct IDWriteLocalFontFileLoader : IDWriteFontFileLoader
	{
		public const new Guid IID = .(0xb2d9f3ec, 0xc9fe, 0x4a11, 0xa2, 0xec, 0xd8, 0x62, 0x08, 0xf7, 0xc0, 0xa2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFilePathLengthFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out uint32 filePathLength) mut => VT.GetFilePathLengthFromKey(ref this, fontFileReferenceKey, fontFileReferenceKeySize, out filePathLength);
		public HRESULT GetFilePathFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, char16* filePath, uint32 filePathSize) mut => VT.GetFilePathFromKey(ref this, fontFileReferenceKey, fontFileReferenceKeySize, filePath, filePathSize);
		public HRESULT GetLastWriteTimeFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out FILETIME lastWriteTime) mut => VT.GetLastWriteTimeFromKey(ref this, fontFileReferenceKey, fontFileReferenceKeySize, out lastWriteTime);

		[CRepr]
		public struct VTable : IDWriteFontFileLoader.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteLocalFontFileLoader self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out uint32 filePathLength) GetFilePathLengthFromKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteLocalFontFileLoader self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, char16* filePath, uint32 filePathSize) GetFilePathFromKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteLocalFontFileLoader self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out FILETIME lastWriteTime) GetLastWriteTimeFromKey;
		}
	}
	[CRepr]
	public struct IDWriteFontFileStream : IUnknown
	{
		public const new Guid IID = .(0x6d4865fe, 0x0ab8, 0x4d91, 0x8f, 0x62, 0x5d, 0xd6, 0xbe, 0x34, 0xa3, 0xe0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ReadFileFragment(void** fragmentStart, uint64 fileOffset, uint64 fragmentSize, void** fragmentContext) mut => VT.ReadFileFragment(ref this, fragmentStart, fileOffset, fragmentSize, fragmentContext);
		public void ReleaseFileFragment(void* fragmentContext) mut => VT.ReleaseFileFragment(ref this, fragmentContext);
		public HRESULT GetFileSize(out uint64 fileSize) mut => VT.GetFileSize(ref this, out fileSize);
		public HRESULT GetLastWriteTime(out uint64 lastWriteTime) mut => VT.GetLastWriteTime(ref this, out lastWriteTime);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFileStream self, void** fragmentStart, uint64 fileOffset, uint64 fragmentSize, void** fragmentContext) ReadFileFragment;
			public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFileStream self, void* fragmentContext) ReleaseFileFragment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFileStream self, out uint64 fileSize) GetFileSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFileStream self, out uint64 lastWriteTime) GetLastWriteTime;
		}
	}
	[CRepr]
	public struct IDWriteFontFile : IUnknown
	{
		public const new Guid IID = .(0x739d886a, 0xcef5, 0x47dc, 0x87, 0x69, 0x1a, 0x8b, 0x41, 0xbe, 0xbb, 0xb0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetReferenceKey(void** fontFileReferenceKey, out uint32 fontFileReferenceKeySize) mut => VT.GetReferenceKey(ref this, fontFileReferenceKey, out fontFileReferenceKeySize);
		public HRESULT GetLoader(out IDWriteFontFileLoader* fontFileLoader) mut => VT.GetLoader(ref this, out fontFileLoader);
		public HRESULT Analyze(out BOOL isSupportedFontType, out DWRITE_FONT_FILE_TYPE fontFileType, DWRITE_FONT_FACE_TYPE* fontFaceType, out uint32 numberOfFaces) mut => VT.Analyze(ref this, out isSupportedFontType, out fontFileType, fontFaceType, out numberOfFaces);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFile self, void** fontFileReferenceKey, out uint32 fontFileReferenceKeySize) GetReferenceKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFile self, out IDWriteFontFileLoader* fontFileLoader) GetLoader;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFile self, out BOOL isSupportedFontType, out DWRITE_FONT_FILE_TYPE fontFileType, DWRITE_FONT_FACE_TYPE* fontFaceType, out uint32 numberOfFaces) Analyze;
		}
	}
	[CRepr]
	public struct IDWriteRenderingParams : IUnknown
	{
		public const new Guid IID = .(0x2f0da53a, 0x2add, 0x47cd, 0x82, 0xee, 0xd9, 0xec, 0x34, 0x68, 0x8e, 0x75);
		
		public new VTable* VT { get => (.)vt; }
		
		public float GetGamma() mut => VT.GetGamma(ref this);
		public float GetEnhancedContrast() mut => VT.GetEnhancedContrast(ref this);
		public float GetClearTypeLevel() mut => VT.GetClearTypeLevel(ref this);
		public DWRITE_PIXEL_GEOMETRY GetPixelGeometry() mut => VT.GetPixelGeometry(ref this);
		public DWRITE_RENDERING_MODE GetRenderingMode() mut => VT.GetRenderingMode(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] float(ref IDWriteRenderingParams self) GetGamma;
			public new function [CallingConvention(.Stdcall)] float(ref IDWriteRenderingParams self) GetEnhancedContrast;
			public new function [CallingConvention(.Stdcall)] float(ref IDWriteRenderingParams self) GetClearTypeLevel;
			public new function [CallingConvention(.Stdcall)] DWRITE_PIXEL_GEOMETRY(ref IDWriteRenderingParams self) GetPixelGeometry;
			public new function [CallingConvention(.Stdcall)] DWRITE_RENDERING_MODE(ref IDWriteRenderingParams self) GetRenderingMode;
		}
	}
	[CRepr]
	public struct IDWriteFontFace : IUnknown
	{
		public const new Guid IID = .(0x5f49804d, 0x7024, 0x4d43, 0xbf, 0xa9, 0xd2, 0x59, 0x84, 0xf5, 0x38, 0x49);
		
		public new VTable* VT { get => (.)vt; }
		
		public DWRITE_FONT_FACE_TYPE ComGetType() mut => VT.ComGetType(ref this);
		public HRESULT GetFiles(out uint32 numberOfFiles, IDWriteFontFile** fontFiles) mut => VT.GetFiles(ref this, out numberOfFiles, fontFiles);
		public uint32 GetIndex() mut => VT.GetIndex(ref this);
		public DWRITE_FONT_SIMULATIONS GetSimulations() mut => VT.GetSimulations(ref this);
		public BOOL IsSymbolFont() mut => VT.IsSymbolFont(ref this);
		public void GetMetrics(out DWRITE_FONT_METRICS fontFaceMetrics) mut => VT.GetMetrics(ref this, out fontFaceMetrics);
		public uint16 GetGlyphCount() mut => VT.GetGlyphCount(ref this);
		public HRESULT GetDesignGlyphMetrics(uint16* glyphIndices, uint32 glyphCount, DWRITE_GLYPH_METRICS* glyphMetrics, BOOL isSideways) mut => VT.GetDesignGlyphMetrics(ref this, glyphIndices, glyphCount, glyphMetrics, isSideways);
		public HRESULT GetGlyphIndices(uint32* codePoints, uint32 codePointCount, uint16* glyphIndices) mut => VT.GetGlyphIndices(ref this, codePoints, codePointCount, glyphIndices);
		public HRESULT TryGetFontTable(uint32 openTypeTableTag, void** tableData, out uint32 tableSize, void** tableContext, out BOOL exists) mut => VT.TryGetFontTable(ref this, openTypeTableTag, tableData, out tableSize, tableContext, out exists);
		public void ReleaseFontTable(void* tableContext) mut => VT.ReleaseFontTable(ref this, tableContext);
		public HRESULT GetGlyphRunOutline(float emSize, uint16* glyphIndices, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets, uint32 glyphCount, BOOL isSideways, BOOL isRightToLeft, ref ID2D1SimplifiedGeometrySink geometrySink) mut => VT.GetGlyphRunOutline(ref this, emSize, glyphIndices, glyphAdvances, glyphOffsets, glyphCount, isSideways, isRightToLeft, ref geometrySink);
		public HRESULT GetRecommendedRenderingMode(float emSize, float pixelsPerDip, DWRITE_MEASURING_MODE measuringMode, ref IDWriteRenderingParams renderingParams, out DWRITE_RENDERING_MODE renderingMode) mut => VT.GetRecommendedRenderingMode(ref this, emSize, pixelsPerDip, measuringMode, ref renderingParams, out renderingMode);
		public HRESULT GetGdiCompatibleMetrics(float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, out DWRITE_FONT_METRICS fontFaceMetrics) mut => VT.GetGdiCompatibleMetrics(ref this, emSize, pixelsPerDip, transform, out fontFaceMetrics);
		public HRESULT GetGdiCompatibleGlyphMetrics(float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, uint16* glyphIndices, uint32 glyphCount, DWRITE_GLYPH_METRICS* glyphMetrics, BOOL isSideways) mut => VT.GetGdiCompatibleGlyphMetrics(ref this, emSize, pixelsPerDip, transform, useGdiNatural, glyphIndices, glyphCount, glyphMetrics, isSideways);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_FACE_TYPE(ref IDWriteFontFace self) ComGetType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace self, out uint32 numberOfFiles, IDWriteFontFile** fontFiles) GetFiles;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontFace self) GetIndex;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_SIMULATIONS(ref IDWriteFontFace self) GetSimulations;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFontFace self) IsSymbolFont;
			public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFace self, out DWRITE_FONT_METRICS fontFaceMetrics) GetMetrics;
			public new function [CallingConvention(.Stdcall)] uint16(ref IDWriteFontFace self) GetGlyphCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace self, uint16* glyphIndices, uint32 glyphCount, DWRITE_GLYPH_METRICS* glyphMetrics, BOOL isSideways) GetDesignGlyphMetrics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace self, uint32* codePoints, uint32 codePointCount, uint16* glyphIndices) GetGlyphIndices;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace self, uint32 openTypeTableTag, void** tableData, out uint32 tableSize, void** tableContext, out BOOL exists) TryGetFontTable;
			public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFace self, void* tableContext) ReleaseFontTable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace self, float emSize, uint16* glyphIndices, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets, uint32 glyphCount, BOOL isSideways, BOOL isRightToLeft, ref ID2D1SimplifiedGeometrySink geometrySink) GetGlyphRunOutline;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace self, float emSize, float pixelsPerDip, DWRITE_MEASURING_MODE measuringMode, ref IDWriteRenderingParams renderingParams, out DWRITE_RENDERING_MODE renderingMode) GetRecommendedRenderingMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace self, float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, out DWRITE_FONT_METRICS fontFaceMetrics) GetGdiCompatibleMetrics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace self, float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, uint16* glyphIndices, uint32 glyphCount, DWRITE_GLYPH_METRICS* glyphMetrics, BOOL isSideways) GetGdiCompatibleGlyphMetrics;
		}
	}
	[CRepr]
	public struct IDWriteFontCollectionLoader : IUnknown
	{
		public const new Guid IID = .(0xcca920e4, 0x52f0, 0x492b, 0xbf, 0xa8, 0x29, 0xc7, 0x2e, 0xe0, 0xa4, 0x68);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateEnumeratorFromKey(ref IDWriteFactory factory, void* collectionKey, uint32 collectionKeySize, out IDWriteFontFileEnumerator* fontFileEnumerator) mut => VT.CreateEnumeratorFromKey(ref this, ref factory, collectionKey, collectionKeySize, out fontFileEnumerator);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontCollectionLoader self, ref IDWriteFactory factory, void* collectionKey, uint32 collectionKeySize, out IDWriteFontFileEnumerator* fontFileEnumerator) CreateEnumeratorFromKey;
		}
	}
	[CRepr]
	public struct IDWriteFontFileEnumerator : IUnknown
	{
		public const new Guid IID = .(0x72755049, 0x5ff7, 0x435d, 0x83, 0x48, 0x4b, 0xe9, 0x7c, 0xfa, 0x6c, 0x7c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MoveNext(out BOOL hasCurrentFile) mut => VT.MoveNext(ref this, out hasCurrentFile);
		public HRESULT GetCurrentFontFile(out IDWriteFontFile* fontFile) mut => VT.GetCurrentFontFile(ref this, out fontFile);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFileEnumerator self, out BOOL hasCurrentFile) MoveNext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFileEnumerator self, out IDWriteFontFile* fontFile) GetCurrentFontFile;
		}
	}
	[CRepr]
	public struct IDWriteLocalizedStrings : IUnknown
	{
		public const new Guid IID = .(0x08256209, 0x099a, 0x4b34, 0xb8, 0x6d, 0xc2, 0x2b, 0x11, 0x0e, 0x77, 0x71);
		
		public new VTable* VT { get => (.)vt; }
		
		public uint32 GetCount() mut => VT.GetCount(ref this);
		public HRESULT FindLocaleName(PWSTR localeName, out uint32 index, out BOOL exists) mut => VT.FindLocaleName(ref this, localeName, out index, out exists);
		public HRESULT GetLocaleNameLength(uint32 index, out uint32 length) mut => VT.GetLocaleNameLength(ref this, index, out length);
		public HRESULT GetLocaleName(uint32 index, char16* localeName, uint32 size) mut => VT.GetLocaleName(ref this, index, localeName, size);
		public HRESULT GetStringLength(uint32 index, out uint32 length) mut => VT.GetStringLength(ref this, index, out length);
		public HRESULT GetString(uint32 index, char16* stringBuffer, uint32 size) mut => VT.GetString(ref this, index, stringBuffer, size);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteLocalizedStrings self) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteLocalizedStrings self, PWSTR localeName, out uint32 index, out BOOL exists) FindLocaleName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteLocalizedStrings self, uint32 index, out uint32 length) GetLocaleNameLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteLocalizedStrings self, uint32 index, char16* localeName, uint32 size) GetLocaleName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteLocalizedStrings self, uint32 index, out uint32 length) GetStringLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteLocalizedStrings self, uint32 index, char16* stringBuffer, uint32 size) GetString;
		}
	}
	[CRepr]
	public struct IDWriteFontCollection : IUnknown
	{
		public const new Guid IID = .(0xa84cee02, 0x3eea, 0x4eee, 0xa8, 0x27, 0x87, 0xc1, 0xa0, 0x2a, 0x0f, 0xcc);
		
		public new VTable* VT { get => (.)vt; }
		
		public uint32 GetFontFamilyCount() mut => VT.GetFontFamilyCount(ref this);
		public HRESULT GetFontFamily(uint32 index, out IDWriteFontFamily* fontFamily) mut => VT.GetFontFamily(ref this, index, out fontFamily);
		public HRESULT FindFamilyName(PWSTR familyName, out uint32 index, out BOOL exists) mut => VT.FindFamilyName(ref this, familyName, out index, out exists);
		public HRESULT GetFontFromFontFace(ref IDWriteFontFace fontFace, out IDWriteFont* font) mut => VT.GetFontFromFontFace(ref this, ref fontFace, out font);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontCollection self) GetFontFamilyCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontCollection self, uint32 index, out IDWriteFontFamily* fontFamily) GetFontFamily;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontCollection self, PWSTR familyName, out uint32 index, out BOOL exists) FindFamilyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontCollection self, ref IDWriteFontFace fontFace, out IDWriteFont* font) GetFontFromFontFace;
		}
	}
	[CRepr]
	public struct IDWriteFontList : IUnknown
	{
		public const new Guid IID = .(0x1a0d8438, 0x1d97, 0x4ec1, 0xae, 0xf9, 0xa2, 0xfb, 0x86, 0xed, 0x6a, 0xcb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFontCollection(out IDWriteFontCollection* fontCollection) mut => VT.GetFontCollection(ref this, out fontCollection);
		public uint32 GetFontCount() mut => VT.GetFontCount(ref this);
		public HRESULT GetFont(uint32 index, out IDWriteFont* font) mut => VT.GetFont(ref this, index, out font);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontList self, out IDWriteFontCollection* fontCollection) GetFontCollection;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontList self) GetFontCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontList self, uint32 index, out IDWriteFont* font) GetFont;
		}
	}
	[CRepr]
	public struct IDWriteFontFamily : IDWriteFontList
	{
		public const new Guid IID = .(0xda20d8ef, 0x812a, 0x4c43, 0x98, 0x02, 0x62, 0xec, 0x4a, 0xbd, 0x7a, 0xdd);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFamilyNames(out IDWriteLocalizedStrings* names) mut => VT.GetFamilyNames(ref this, out names);
		public HRESULT GetFirstMatchingFont(DWRITE_FONT_WEIGHT weight, DWRITE_FONT_STRETCH stretch, DWRITE_FONT_STYLE style, out IDWriteFont* matchingFont) mut => VT.GetFirstMatchingFont(ref this, weight, stretch, style, out matchingFont);
		public HRESULT GetMatchingFonts(DWRITE_FONT_WEIGHT weight, DWRITE_FONT_STRETCH stretch, DWRITE_FONT_STYLE style, out IDWriteFontList* matchingFonts) mut => VT.GetMatchingFonts(ref this, weight, stretch, style, out matchingFonts);

		[CRepr]
		public struct VTable : IDWriteFontList.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFamily self, out IDWriteLocalizedStrings* names) GetFamilyNames;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFamily self, DWRITE_FONT_WEIGHT weight, DWRITE_FONT_STRETCH stretch, DWRITE_FONT_STYLE style, out IDWriteFont* matchingFont) GetFirstMatchingFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFamily self, DWRITE_FONT_WEIGHT weight, DWRITE_FONT_STRETCH stretch, DWRITE_FONT_STYLE style, out IDWriteFontList* matchingFonts) GetMatchingFonts;
		}
	}
	[CRepr]
	public struct IDWriteFont : IUnknown
	{
		public const new Guid IID = .(0xacd16696, 0x8c14, 0x4f5d, 0x87, 0x7e, 0xfe, 0x3f, 0xc1, 0xd3, 0x27, 0x37);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFontFamily(out IDWriteFontFamily* fontFamily) mut => VT.GetFontFamily(ref this, out fontFamily);
		public DWRITE_FONT_WEIGHT GetWeight() mut => VT.GetWeight(ref this);
		public DWRITE_FONT_STRETCH GetStretch() mut => VT.GetStretch(ref this);
		public DWRITE_FONT_STYLE GetStyle() mut => VT.GetStyle(ref this);
		public BOOL IsSymbolFont() mut => VT.IsSymbolFont(ref this);
		public HRESULT GetFaceNames(out IDWriteLocalizedStrings* names) mut => VT.GetFaceNames(ref this, out names);
		public HRESULT GetInformationalStrings(DWRITE_INFORMATIONAL_STRING_ID informationalStringID, IDWriteLocalizedStrings** informationalStrings, out BOOL exists) mut => VT.GetInformationalStrings(ref this, informationalStringID, informationalStrings, out exists);
		public DWRITE_FONT_SIMULATIONS GetSimulations() mut => VT.GetSimulations(ref this);
		public void GetMetrics(out DWRITE_FONT_METRICS fontMetrics) mut => VT.GetMetrics(ref this, out fontMetrics);
		public HRESULT HasCharacter(uint32 unicodeValue, out BOOL exists) mut => VT.HasCharacter(ref this, unicodeValue, out exists);
		public HRESULT CreateFontFace(out IDWriteFontFace* fontFace) mut => VT.CreateFontFace(ref this, out fontFace);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFont self, out IDWriteFontFamily* fontFamily) GetFontFamily;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_WEIGHT(ref IDWriteFont self) GetWeight;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_STRETCH(ref IDWriteFont self) GetStretch;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_STYLE(ref IDWriteFont self) GetStyle;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFont self) IsSymbolFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFont self, out IDWriteLocalizedStrings* names) GetFaceNames;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFont self, DWRITE_INFORMATIONAL_STRING_ID informationalStringID, IDWriteLocalizedStrings** informationalStrings, out BOOL exists) GetInformationalStrings;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_SIMULATIONS(ref IDWriteFont self) GetSimulations;
			public new function [CallingConvention(.Stdcall)] void(ref IDWriteFont self, out DWRITE_FONT_METRICS fontMetrics) GetMetrics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFont self, uint32 unicodeValue, out BOOL exists) HasCharacter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFont self, out IDWriteFontFace* fontFace) CreateFontFace;
		}
	}
	[CRepr]
	public struct IDWriteTextFormat : IUnknown
	{
		public const new Guid IID = .(0x9c906818, 0x31d7, 0x4fd3, 0xa1, 0x51, 0x7c, 0x5e, 0x22, 0x5d, 0xb5, 0x5a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetTextAlignment(DWRITE_TEXT_ALIGNMENT textAlignment) mut => VT.SetTextAlignment(ref this, textAlignment);
		public HRESULT SetParagraphAlignment(DWRITE_PARAGRAPH_ALIGNMENT paragraphAlignment) mut => VT.SetParagraphAlignment(ref this, paragraphAlignment);
		public HRESULT SetWordWrapping(DWRITE_WORD_WRAPPING wordWrapping) mut => VT.SetWordWrapping(ref this, wordWrapping);
		public HRESULT SetReadingDirection(DWRITE_READING_DIRECTION readingDirection) mut => VT.SetReadingDirection(ref this, readingDirection);
		public HRESULT SetFlowDirection(DWRITE_FLOW_DIRECTION flowDirection) mut => VT.SetFlowDirection(ref this, flowDirection);
		public HRESULT SetIncrementalTabStop(float incrementalTabStop) mut => VT.SetIncrementalTabStop(ref this, incrementalTabStop);
		public HRESULT SetTrimming(in DWRITE_TRIMMING trimmingOptions, IDWriteInlineObject* trimmingSign) mut => VT.SetTrimming(ref this, trimmingOptions, trimmingSign);
		public HRESULT SetLineSpacing(DWRITE_LINE_SPACING_METHOD lineSpacingMethod, float lineSpacing, float baseline) mut => VT.SetLineSpacing(ref this, lineSpacingMethod, lineSpacing, baseline);
		public DWRITE_TEXT_ALIGNMENT GetTextAlignment() mut => VT.GetTextAlignment(ref this);
		public DWRITE_PARAGRAPH_ALIGNMENT GetParagraphAlignment() mut => VT.GetParagraphAlignment(ref this);
		public DWRITE_WORD_WRAPPING GetWordWrapping() mut => VT.GetWordWrapping(ref this);
		public DWRITE_READING_DIRECTION GetReadingDirection() mut => VT.GetReadingDirection(ref this);
		public DWRITE_FLOW_DIRECTION GetFlowDirection() mut => VT.GetFlowDirection(ref this);
		public float GetIncrementalTabStop() mut => VT.GetIncrementalTabStop(ref this);
		public HRESULT GetTrimming(out DWRITE_TRIMMING trimmingOptions, out IDWriteInlineObject* trimmingSign) mut => VT.GetTrimming(ref this, out trimmingOptions, out trimmingSign);
		public HRESULT GetLineSpacing(out DWRITE_LINE_SPACING_METHOD lineSpacingMethod, out float lineSpacing, out float baseline) mut => VT.GetLineSpacing(ref this, out lineSpacingMethod, out lineSpacing, out baseline);
		public HRESULT GetFontCollection(out IDWriteFontCollection* fontCollection) mut => VT.GetFontCollection(ref this, out fontCollection);
		public uint32 GetFontFamilyNameLength() mut => VT.GetFontFamilyNameLength(ref this);
		public HRESULT GetFontFamilyName(char16* fontFamilyName, uint32 nameSize) mut => VT.GetFontFamilyName(ref this, fontFamilyName, nameSize);
		public DWRITE_FONT_WEIGHT GetFontWeight() mut => VT.GetFontWeight(ref this);
		public DWRITE_FONT_STYLE GetFontStyle() mut => VT.GetFontStyle(ref this);
		public DWRITE_FONT_STRETCH GetFontStretch() mut => VT.GetFontStretch(ref this);
		public float GetFontSize() mut => VT.GetFontSize(ref this);
		public uint32 GetLocaleNameLength() mut => VT.GetLocaleNameLength(ref this);
		public HRESULT GetLocaleName(char16* localeName, uint32 nameSize) mut => VT.GetLocaleName(ref this, localeName, nameSize);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat self, DWRITE_TEXT_ALIGNMENT textAlignment) SetTextAlignment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat self, DWRITE_PARAGRAPH_ALIGNMENT paragraphAlignment) SetParagraphAlignment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat self, DWRITE_WORD_WRAPPING wordWrapping) SetWordWrapping;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat self, DWRITE_READING_DIRECTION readingDirection) SetReadingDirection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat self, DWRITE_FLOW_DIRECTION flowDirection) SetFlowDirection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat self, float incrementalTabStop) SetIncrementalTabStop;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat self, in DWRITE_TRIMMING trimmingOptions, IDWriteInlineObject* trimmingSign) SetTrimming;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat self, DWRITE_LINE_SPACING_METHOD lineSpacingMethod, float lineSpacing, float baseline) SetLineSpacing;
			public new function [CallingConvention(.Stdcall)] DWRITE_TEXT_ALIGNMENT(ref IDWriteTextFormat self) GetTextAlignment;
			public new function [CallingConvention(.Stdcall)] DWRITE_PARAGRAPH_ALIGNMENT(ref IDWriteTextFormat self) GetParagraphAlignment;
			public new function [CallingConvention(.Stdcall)] DWRITE_WORD_WRAPPING(ref IDWriteTextFormat self) GetWordWrapping;
			public new function [CallingConvention(.Stdcall)] DWRITE_READING_DIRECTION(ref IDWriteTextFormat self) GetReadingDirection;
			public new function [CallingConvention(.Stdcall)] DWRITE_FLOW_DIRECTION(ref IDWriteTextFormat self) GetFlowDirection;
			public new function [CallingConvention(.Stdcall)] float(ref IDWriteTextFormat self) GetIncrementalTabStop;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat self, out DWRITE_TRIMMING trimmingOptions, out IDWriteInlineObject* trimmingSign) GetTrimming;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat self, out DWRITE_LINE_SPACING_METHOD lineSpacingMethod, out float lineSpacing, out float baseline) GetLineSpacing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat self, out IDWriteFontCollection* fontCollection) GetFontCollection;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteTextFormat self) GetFontFamilyNameLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat self, char16* fontFamilyName, uint32 nameSize) GetFontFamilyName;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_WEIGHT(ref IDWriteTextFormat self) GetFontWeight;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_STYLE(ref IDWriteTextFormat self) GetFontStyle;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_STRETCH(ref IDWriteTextFormat self) GetFontStretch;
			public new function [CallingConvention(.Stdcall)] float(ref IDWriteTextFormat self) GetFontSize;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteTextFormat self) GetLocaleNameLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat self, char16* localeName, uint32 nameSize) GetLocaleName;
		}
	}
	[CRepr]
	public struct IDWriteTypography : IUnknown
	{
		public const new Guid IID = .(0x55f1112b, 0x1dc2, 0x4b3c, 0x95, 0x41, 0xf4, 0x68, 0x94, 0xed, 0x85, 0xb6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddFontFeature(DWRITE_FONT_FEATURE fontFeature) mut => VT.AddFontFeature(ref this, fontFeature);
		public uint32 GetFontFeatureCount() mut => VT.GetFontFeatureCount(ref this);
		public HRESULT GetFontFeature(uint32 fontFeatureIndex, out DWRITE_FONT_FEATURE fontFeature) mut => VT.GetFontFeature(ref this, fontFeatureIndex, out fontFeature);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTypography self, DWRITE_FONT_FEATURE fontFeature) AddFontFeature;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteTypography self) GetFontFeatureCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTypography self, uint32 fontFeatureIndex, out DWRITE_FONT_FEATURE fontFeature) GetFontFeature;
		}
	}
	[CRepr]
	public struct IDWriteNumberSubstitution : IUnknown
	{
		public const new Guid IID = .(0x14885cc9, 0xbab0, 0x4f90, 0xb6, 0xed, 0x5c, 0x36, 0x6a, 0x2c, 0xd0, 0x3d);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IUnknown.VTable {}
	}
	[CRepr]
	public struct IDWriteTextAnalysisSource : IUnknown
	{
		public const new Guid IID = .(0x688e1a58, 0x5094, 0x47c8, 0xad, 0xc8, 0xfb, 0xce, 0xa6, 0x0a, 0xe9, 0x2b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetTextAtPosition(uint32 textPosition, out uint16* textString, out uint32 textLength) mut => VT.GetTextAtPosition(ref this, textPosition, out textString, out textLength);
		public HRESULT GetTextBeforePosition(uint32 textPosition, out uint16* textString, out uint32 textLength) mut => VT.GetTextBeforePosition(ref this, textPosition, out textString, out textLength);
		public DWRITE_READING_DIRECTION GetParagraphReadingDirection() mut => VT.GetParagraphReadingDirection(ref this);
		public HRESULT GetLocaleName(uint32 textPosition, out uint32 textLength, out uint16* localeName) mut => VT.GetLocaleName(ref this, textPosition, out textLength, out localeName);
		public HRESULT GetNumberSubstitution(uint32 textPosition, out uint32 textLength, out IDWriteNumberSubstitution* numberSubstitution) mut => VT.GetNumberSubstitution(ref this, textPosition, out textLength, out numberSubstitution);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalysisSource self, uint32 textPosition, out uint16* textString, out uint32 textLength) GetTextAtPosition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalysisSource self, uint32 textPosition, out uint16* textString, out uint32 textLength) GetTextBeforePosition;
			public new function [CallingConvention(.Stdcall)] DWRITE_READING_DIRECTION(ref IDWriteTextAnalysisSource self) GetParagraphReadingDirection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalysisSource self, uint32 textPosition, out uint32 textLength, out uint16* localeName) GetLocaleName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalysisSource self, uint32 textPosition, out uint32 textLength, out IDWriteNumberSubstitution* numberSubstitution) GetNumberSubstitution;
		}
	}
	[CRepr]
	public struct IDWriteTextAnalysisSink : IUnknown
	{
		public const new Guid IID = .(0x5810cd44, 0x0ca0, 0x4701, 0xb3, 0xfa, 0xbe, 0xc5, 0x18, 0x2a, 0xe4, 0xf6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetScriptAnalysis(uint32 textPosition, uint32 textLength, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis) mut => VT.SetScriptAnalysis(ref this, textPosition, textLength, scriptAnalysis);
		public HRESULT SetLineBreakpoints(uint32 textPosition, uint32 textLength, DWRITE_LINE_BREAKPOINT* lineBreakpoints) mut => VT.SetLineBreakpoints(ref this, textPosition, textLength, lineBreakpoints);
		public HRESULT SetBidiLevel(uint32 textPosition, uint32 textLength, uint8 explicitLevel, uint8 resolvedLevel) mut => VT.SetBidiLevel(ref this, textPosition, textLength, explicitLevel, resolvedLevel);
		public HRESULT SetNumberSubstitution(uint32 textPosition, uint32 textLength, ref IDWriteNumberSubstitution numberSubstitution) mut => VT.SetNumberSubstitution(ref this, textPosition, textLength, ref numberSubstitution);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalysisSink self, uint32 textPosition, uint32 textLength, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis) SetScriptAnalysis;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalysisSink self, uint32 textPosition, uint32 textLength, DWRITE_LINE_BREAKPOINT* lineBreakpoints) SetLineBreakpoints;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalysisSink self, uint32 textPosition, uint32 textLength, uint8 explicitLevel, uint8 resolvedLevel) SetBidiLevel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalysisSink self, uint32 textPosition, uint32 textLength, ref IDWriteNumberSubstitution numberSubstitution) SetNumberSubstitution;
		}
	}
	[CRepr]
	public struct IDWriteTextAnalyzer : IUnknown
	{
		public const new Guid IID = .(0xb7e6163e, 0x7f46, 0x43b4, 0x84, 0xb3, 0xe4, 0xe6, 0x24, 0x9c, 0x36, 0x5d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AnalyzeScript(ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) mut => VT.AnalyzeScript(ref this, ref analysisSource, textPosition, textLength, ref analysisSink);
		public HRESULT AnalyzeBidi(ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) mut => VT.AnalyzeBidi(ref this, ref analysisSource, textPosition, textLength, ref analysisSink);
		public HRESULT AnalyzeNumberSubstitution(ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) mut => VT.AnalyzeNumberSubstitution(ref this, ref analysisSource, textPosition, textLength, ref analysisSink);
		public HRESULT AnalyzeLineBreakpoints(ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) mut => VT.AnalyzeLineBreakpoints(ref this, ref analysisSource, textPosition, textLength, ref analysisSink);
		public HRESULT GetGlyphs(char16* textString, uint32 textLength, ref IDWriteFontFace fontFace, BOOL isSideways, BOOL isRightToLeft, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, IDWriteNumberSubstitution* numberSubstitution, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, uint32 maxGlyphCount, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, out uint32 actualGlyphCount) mut => VT.GetGlyphs(ref this, textString, textLength, ref fontFace, isSideways, isRightToLeft, scriptAnalysis, localeName, numberSubstitution, features, featureRangeLengths, featureRanges, maxGlyphCount, clusterMap, textProps, glyphIndices, glyphProps, out actualGlyphCount);
		public HRESULT GetGlyphPlacements(char16* textString, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint32 textLength, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32 glyphCount, ref IDWriteFontFace fontFace, float fontEmSize, BOOL isSideways, BOOL isRightToLeft, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets) mut => VT.GetGlyphPlacements(ref this, textString, clusterMap, textProps, textLength, glyphIndices, glyphProps, glyphCount, ref fontFace, fontEmSize, isSideways, isRightToLeft, scriptAnalysis, localeName, features, featureRangeLengths, featureRanges, glyphAdvances, glyphOffsets);
		public HRESULT GetGdiCompatibleGlyphPlacements(char16* textString, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint32 textLength, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32 glyphCount, ref IDWriteFontFace fontFace, float fontEmSize, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, BOOL isSideways, BOOL isRightToLeft, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets) mut => VT.GetGdiCompatibleGlyphPlacements(ref this, textString, clusterMap, textProps, textLength, glyphIndices, glyphProps, glyphCount, ref fontFace, fontEmSize, pixelsPerDip, transform, useGdiNatural, isSideways, isRightToLeft, scriptAnalysis, localeName, features, featureRangeLengths, featureRanges, glyphAdvances, glyphOffsets);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer self, ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) AnalyzeScript;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer self, ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) AnalyzeBidi;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer self, ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) AnalyzeNumberSubstitution;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer self, ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink analysisSink) AnalyzeLineBreakpoints;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer self, char16* textString, uint32 textLength, ref IDWriteFontFace fontFace, BOOL isSideways, BOOL isRightToLeft, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, IDWriteNumberSubstitution* numberSubstitution, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, uint32 maxGlyphCount, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, out uint32 actualGlyphCount) GetGlyphs;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer self, char16* textString, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint32 textLength, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32 glyphCount, ref IDWriteFontFace fontFace, float fontEmSize, BOOL isSideways, BOOL isRightToLeft, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets) GetGlyphPlacements;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer self, char16* textString, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint32 textLength, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32 glyphCount, ref IDWriteFontFace fontFace, float fontEmSize, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, BOOL isSideways, BOOL isRightToLeft, in DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets) GetGdiCompatibleGlyphPlacements;
		}
	}
	[CRepr]
	public struct IDWriteInlineObject : IUnknown
	{
		public const new Guid IID = .(0x8339fde3, 0x106f, 0x47ab, 0x83, 0x73, 0x1c, 0x62, 0x95, 0xeb, 0x10, 0xb3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Draw(void* clientDrawingContext, ref IDWriteTextRenderer renderer, float originX, float originY, BOOL isSideways, BOOL isRightToLeft, IUnknown* clientDrawingEffect) mut => VT.Draw(ref this, clientDrawingContext, ref renderer, originX, originY, isSideways, isRightToLeft, clientDrawingEffect);
		public HRESULT GetMetrics(out DWRITE_INLINE_OBJECT_METRICS metrics) mut => VT.GetMetrics(ref this, out metrics);
		public HRESULT GetOverhangMetrics(out DWRITE_OVERHANG_METRICS overhangs) mut => VT.GetOverhangMetrics(ref this, out overhangs);
		public HRESULT GetBreakConditions(out DWRITE_BREAK_CONDITION breakConditionBefore, out DWRITE_BREAK_CONDITION breakConditionAfter) mut => VT.GetBreakConditions(ref this, out breakConditionBefore, out breakConditionAfter);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteInlineObject self, void* clientDrawingContext, ref IDWriteTextRenderer renderer, float originX, float originY, BOOL isSideways, BOOL isRightToLeft, IUnknown* clientDrawingEffect) Draw;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteInlineObject self, out DWRITE_INLINE_OBJECT_METRICS metrics) GetMetrics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteInlineObject self, out DWRITE_OVERHANG_METRICS overhangs) GetOverhangMetrics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteInlineObject self, out DWRITE_BREAK_CONDITION breakConditionBefore, out DWRITE_BREAK_CONDITION breakConditionAfter) GetBreakConditions;
		}
	}
	[CRepr]
	public struct IDWritePixelSnapping : IUnknown
	{
		public const new Guid IID = .(0xeaf3a2da, 0xecf4, 0x4d24, 0xb6, 0x44, 0xb3, 0x4f, 0x68, 0x42, 0x02, 0x4b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT IsPixelSnappingDisabled(void* clientDrawingContext, out BOOL isDisabled) mut => VT.IsPixelSnappingDisabled(ref this, clientDrawingContext, out isDisabled);
		public HRESULT GetCurrentTransform(void* clientDrawingContext, out DWRITE_MATRIX transform) mut => VT.GetCurrentTransform(ref this, clientDrawingContext, out transform);
		public HRESULT GetPixelsPerDip(void* clientDrawingContext, out float pixelsPerDip) mut => VT.GetPixelsPerDip(ref this, clientDrawingContext, out pixelsPerDip);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWritePixelSnapping self, void* clientDrawingContext, out BOOL isDisabled) IsPixelSnappingDisabled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWritePixelSnapping self, void* clientDrawingContext, out DWRITE_MATRIX transform) GetCurrentTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWritePixelSnapping self, void* clientDrawingContext, out float pixelsPerDip) GetPixelsPerDip;
		}
	}
	[CRepr]
	public struct IDWriteTextRenderer : IDWritePixelSnapping
	{
		public const new Guid IID = .(0xef8a8135, 0x5cc6, 0x45fe, 0x88, 0x25, 0xc5, 0xa0, 0x72, 0x4e, 0xb8, 0x19);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DrawGlyphRun(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_MEASURING_MODE measuringMode, in DWRITE_GLYPH_RUN glyphRun, in DWRITE_GLYPH_RUN_DESCRIPTION glyphRunDescription, IUnknown* clientDrawingEffect) mut => VT.DrawGlyphRun(ref this, clientDrawingContext, baselineOriginX, baselineOriginY, measuringMode, glyphRun, glyphRunDescription, clientDrawingEffect);
		public HRESULT DrawUnderline(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, in DWRITE_UNDERLINE underline, IUnknown* clientDrawingEffect) mut => VT.DrawUnderline(ref this, clientDrawingContext, baselineOriginX, baselineOriginY, underline, clientDrawingEffect);
		public HRESULT DrawStrikethrough(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, in DWRITE_STRIKETHROUGH strikethrough, IUnknown* clientDrawingEffect) mut => VT.DrawStrikethrough(ref this, clientDrawingContext, baselineOriginX, baselineOriginY, strikethrough, clientDrawingEffect);
		public HRESULT DrawInlineObject(void* clientDrawingContext, float originX, float originY, ref IDWriteInlineObject inlineObject, BOOL isSideways, BOOL isRightToLeft, IUnknown* clientDrawingEffect) mut => VT.DrawInlineObject(ref this, clientDrawingContext, originX, originY, ref inlineObject, isSideways, isRightToLeft, clientDrawingEffect);

		[CRepr]
		public struct VTable : IDWritePixelSnapping.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextRenderer self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_MEASURING_MODE measuringMode, in DWRITE_GLYPH_RUN glyphRun, in DWRITE_GLYPH_RUN_DESCRIPTION glyphRunDescription, IUnknown* clientDrawingEffect) DrawGlyphRun;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextRenderer self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, in DWRITE_UNDERLINE underline, IUnknown* clientDrawingEffect) DrawUnderline;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextRenderer self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, in DWRITE_STRIKETHROUGH strikethrough, IUnknown* clientDrawingEffect) DrawStrikethrough;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextRenderer self, void* clientDrawingContext, float originX, float originY, ref IDWriteInlineObject inlineObject, BOOL isSideways, BOOL isRightToLeft, IUnknown* clientDrawingEffect) DrawInlineObject;
		}
	}
	[CRepr]
	public struct IDWriteTextLayout : IDWriteTextFormat
	{
		public const new Guid IID = .(0x53737037, 0x6d14, 0x410b, 0x9b, 0xfe, 0x0b, 0x18, 0x2b, 0xb7, 0x09, 0x61);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetMaxWidth(float maxWidth) mut => VT.SetMaxWidth(ref this, maxWidth);
		public HRESULT SetMaxHeight(float maxHeight) mut => VT.SetMaxHeight(ref this, maxHeight);
		public HRESULT SetFontCollection(ref IDWriteFontCollection fontCollection, DWRITE_TEXT_RANGE textRange) mut => VT.SetFontCollection(ref this, ref fontCollection, textRange);
		public HRESULT SetFontFamilyName(PWSTR fontFamilyName, DWRITE_TEXT_RANGE textRange) mut => VT.SetFontFamilyName(ref this, fontFamilyName, textRange);
		public HRESULT SetFontWeight(DWRITE_FONT_WEIGHT fontWeight, DWRITE_TEXT_RANGE textRange) mut => VT.SetFontWeight(ref this, fontWeight, textRange);
		public HRESULT SetFontStyle(DWRITE_FONT_STYLE fontStyle, DWRITE_TEXT_RANGE textRange) mut => VT.SetFontStyle(ref this, fontStyle, textRange);
		public HRESULT SetFontStretch(DWRITE_FONT_STRETCH fontStretch, DWRITE_TEXT_RANGE textRange) mut => VT.SetFontStretch(ref this, fontStretch, textRange);
		public HRESULT SetFontSize(float fontSize, DWRITE_TEXT_RANGE textRange) mut => VT.SetFontSize(ref this, fontSize, textRange);
		public HRESULT SetUnderline(BOOL hasUnderline, DWRITE_TEXT_RANGE textRange) mut => VT.SetUnderline(ref this, hasUnderline, textRange);
		public HRESULT SetStrikethrough(BOOL hasStrikethrough, DWRITE_TEXT_RANGE textRange) mut => VT.SetStrikethrough(ref this, hasStrikethrough, textRange);
		public HRESULT SetDrawingEffect(ref IUnknown drawingEffect, DWRITE_TEXT_RANGE textRange) mut => VT.SetDrawingEffect(ref this, ref drawingEffect, textRange);
		public HRESULT SetInlineObject(ref IDWriteInlineObject inlineObject, DWRITE_TEXT_RANGE textRange) mut => VT.SetInlineObject(ref this, ref inlineObject, textRange);
		public HRESULT SetTypography(ref IDWriteTypography typography, DWRITE_TEXT_RANGE textRange) mut => VT.SetTypography(ref this, ref typography, textRange);
		public HRESULT SetLocaleName(PWSTR localeName, DWRITE_TEXT_RANGE textRange) mut => VT.SetLocaleName(ref this, localeName, textRange);
		public float GetMaxWidth() mut => VT.GetMaxWidth(ref this);
		public float GetMaxHeight() mut => VT.GetMaxHeight(ref this);
		public HRESULT GetFontCollection(uint32 currentPosition, out IDWriteFontCollection* fontCollection, DWRITE_TEXT_RANGE* textRange) mut => VT.GetFontCollection(ref this, currentPosition, out fontCollection, textRange);
		public HRESULT GetFontFamilyNameLength(uint32 currentPosition, out uint32 nameLength, DWRITE_TEXT_RANGE* textRange) mut => VT.GetFontFamilyNameLength(ref this, currentPosition, out nameLength, textRange);
		public HRESULT GetFontFamilyName(uint32 currentPosition, char16* fontFamilyName, uint32 nameSize, DWRITE_TEXT_RANGE* textRange) mut => VT.GetFontFamilyName(ref this, currentPosition, fontFamilyName, nameSize, textRange);
		public HRESULT GetFontWeight(uint32 currentPosition, out DWRITE_FONT_WEIGHT fontWeight, DWRITE_TEXT_RANGE* textRange) mut => VT.GetFontWeight(ref this, currentPosition, out fontWeight, textRange);
		public HRESULT GetFontStyle(uint32 currentPosition, out DWRITE_FONT_STYLE fontStyle, DWRITE_TEXT_RANGE* textRange) mut => VT.GetFontStyle(ref this, currentPosition, out fontStyle, textRange);
		public HRESULT GetFontStretch(uint32 currentPosition, out DWRITE_FONT_STRETCH fontStretch, DWRITE_TEXT_RANGE* textRange) mut => VT.GetFontStretch(ref this, currentPosition, out fontStretch, textRange);
		public HRESULT GetFontSize(uint32 currentPosition, out float fontSize, DWRITE_TEXT_RANGE* textRange) mut => VT.GetFontSize(ref this, currentPosition, out fontSize, textRange);
		public HRESULT GetUnderline(uint32 currentPosition, out BOOL hasUnderline, DWRITE_TEXT_RANGE* textRange) mut => VT.GetUnderline(ref this, currentPosition, out hasUnderline, textRange);
		public HRESULT GetStrikethrough(uint32 currentPosition, out BOOL hasStrikethrough, DWRITE_TEXT_RANGE* textRange) mut => VT.GetStrikethrough(ref this, currentPosition, out hasStrikethrough, textRange);
		public HRESULT GetDrawingEffect(uint32 currentPosition, out IUnknown* drawingEffect, DWRITE_TEXT_RANGE* textRange) mut => VT.GetDrawingEffect(ref this, currentPosition, out drawingEffect, textRange);
		public HRESULT GetInlineObject(uint32 currentPosition, out IDWriteInlineObject* inlineObject, DWRITE_TEXT_RANGE* textRange) mut => VT.GetInlineObject(ref this, currentPosition, out inlineObject, textRange);
		public HRESULT GetTypography(uint32 currentPosition, out IDWriteTypography* typography, DWRITE_TEXT_RANGE* textRange) mut => VT.GetTypography(ref this, currentPosition, out typography, textRange);
		public HRESULT GetLocaleNameLength(uint32 currentPosition, out uint32 nameLength, DWRITE_TEXT_RANGE* textRange) mut => VT.GetLocaleNameLength(ref this, currentPosition, out nameLength, textRange);
		public HRESULT GetLocaleName(uint32 currentPosition, char16* localeName, uint32 nameSize, DWRITE_TEXT_RANGE* textRange) mut => VT.GetLocaleName(ref this, currentPosition, localeName, nameSize, textRange);
		public HRESULT Draw(void* clientDrawingContext, ref IDWriteTextRenderer renderer, float originX, float originY) mut => VT.Draw(ref this, clientDrawingContext, ref renderer, originX, originY);
		public HRESULT GetLineMetrics(DWRITE_LINE_METRICS* lineMetrics, uint32 maxLineCount, out uint32 actualLineCount) mut => VT.GetLineMetrics(ref this, lineMetrics, maxLineCount, out actualLineCount);
		public HRESULT GetMetrics(out DWRITE_TEXT_METRICS textMetrics) mut => VT.GetMetrics(ref this, out textMetrics);
		public HRESULT GetOverhangMetrics(out DWRITE_OVERHANG_METRICS overhangs) mut => VT.GetOverhangMetrics(ref this, out overhangs);
		public HRESULT GetClusterMetrics(DWRITE_CLUSTER_METRICS* clusterMetrics, uint32 maxClusterCount, out uint32 actualClusterCount) mut => VT.GetClusterMetrics(ref this, clusterMetrics, maxClusterCount, out actualClusterCount);
		public HRESULT DetermineMinWidth(out float minWidth) mut => VT.DetermineMinWidth(ref this, out minWidth);
		public HRESULT HitTestPoint(float pointX, float pointY, out BOOL isTrailingHit, out BOOL isInside, out DWRITE_HIT_TEST_METRICS hitTestMetrics) mut => VT.HitTestPoint(ref this, pointX, pointY, out isTrailingHit, out isInside, out hitTestMetrics);
		public HRESULT HitTestTextPosition(uint32 textPosition, BOOL isTrailingHit, out float pointX, out float pointY, out DWRITE_HIT_TEST_METRICS hitTestMetrics) mut => VT.HitTestTextPosition(ref this, textPosition, isTrailingHit, out pointX, out pointY, out hitTestMetrics);
		public HRESULT HitTestTextRange(uint32 textPosition, uint32 textLength, float originX, float originY, DWRITE_HIT_TEST_METRICS* hitTestMetrics, uint32 maxHitTestMetricsCount, out uint32 actualHitTestMetricsCount) mut => VT.HitTestTextRange(ref this, textPosition, textLength, originX, originY, hitTestMetrics, maxHitTestMetricsCount, out actualHitTestMetricsCount);

		[CRepr]
		public struct VTable : IDWriteTextFormat.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, float maxWidth) SetMaxWidth;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, float maxHeight) SetMaxHeight;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, ref IDWriteFontCollection fontCollection, DWRITE_TEXT_RANGE textRange) SetFontCollection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, PWSTR fontFamilyName, DWRITE_TEXT_RANGE textRange) SetFontFamilyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, DWRITE_FONT_WEIGHT fontWeight, DWRITE_TEXT_RANGE textRange) SetFontWeight;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, DWRITE_FONT_STYLE fontStyle, DWRITE_TEXT_RANGE textRange) SetFontStyle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, DWRITE_FONT_STRETCH fontStretch, DWRITE_TEXT_RANGE textRange) SetFontStretch;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, float fontSize, DWRITE_TEXT_RANGE textRange) SetFontSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, BOOL hasUnderline, DWRITE_TEXT_RANGE textRange) SetUnderline;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, BOOL hasStrikethrough, DWRITE_TEXT_RANGE textRange) SetStrikethrough;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, ref IUnknown drawingEffect, DWRITE_TEXT_RANGE textRange) SetDrawingEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, ref IDWriteInlineObject inlineObject, DWRITE_TEXT_RANGE textRange) SetInlineObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, ref IDWriteTypography typography, DWRITE_TEXT_RANGE textRange) SetTypography;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, PWSTR localeName, DWRITE_TEXT_RANGE textRange) SetLocaleName;
			public new function [CallingConvention(.Stdcall)] float(ref IDWriteTextLayout self) GetMaxWidth;
			public new function [CallingConvention(.Stdcall)] float(ref IDWriteTextLayout self) GetMaxHeight;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, out IDWriteFontCollection* fontCollection, DWRITE_TEXT_RANGE* textRange) GetFontCollection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, out uint32 nameLength, DWRITE_TEXT_RANGE* textRange) GetFontFamilyNameLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, char16* fontFamilyName, uint32 nameSize, DWRITE_TEXT_RANGE* textRange) GetFontFamilyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, out DWRITE_FONT_WEIGHT fontWeight, DWRITE_TEXT_RANGE* textRange) GetFontWeight;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, out DWRITE_FONT_STYLE fontStyle, DWRITE_TEXT_RANGE* textRange) GetFontStyle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, out DWRITE_FONT_STRETCH fontStretch, DWRITE_TEXT_RANGE* textRange) GetFontStretch;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, out float fontSize, DWRITE_TEXT_RANGE* textRange) GetFontSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, out BOOL hasUnderline, DWRITE_TEXT_RANGE* textRange) GetUnderline;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, out BOOL hasStrikethrough, DWRITE_TEXT_RANGE* textRange) GetStrikethrough;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, out IUnknown* drawingEffect, DWRITE_TEXT_RANGE* textRange) GetDrawingEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, out IDWriteInlineObject* inlineObject, DWRITE_TEXT_RANGE* textRange) GetInlineObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, out IDWriteTypography* typography, DWRITE_TEXT_RANGE* textRange) GetTypography;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, out uint32 nameLength, DWRITE_TEXT_RANGE* textRange) GetLocaleNameLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 currentPosition, char16* localeName, uint32 nameSize, DWRITE_TEXT_RANGE* textRange) GetLocaleName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, void* clientDrawingContext, ref IDWriteTextRenderer renderer, float originX, float originY) Draw;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, DWRITE_LINE_METRICS* lineMetrics, uint32 maxLineCount, out uint32 actualLineCount) GetLineMetrics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, out DWRITE_TEXT_METRICS textMetrics) GetMetrics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, out DWRITE_OVERHANG_METRICS overhangs) GetOverhangMetrics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, DWRITE_CLUSTER_METRICS* clusterMetrics, uint32 maxClusterCount, out uint32 actualClusterCount) GetClusterMetrics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, out float minWidth) DetermineMinWidth;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, float pointX, float pointY, out BOOL isTrailingHit, out BOOL isInside, out DWRITE_HIT_TEST_METRICS hitTestMetrics) HitTestPoint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 textPosition, BOOL isTrailingHit, out float pointX, out float pointY, out DWRITE_HIT_TEST_METRICS hitTestMetrics) HitTestTextPosition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout self, uint32 textPosition, uint32 textLength, float originX, float originY, DWRITE_HIT_TEST_METRICS* hitTestMetrics, uint32 maxHitTestMetricsCount, out uint32 actualHitTestMetricsCount) HitTestTextRange;
		}
	}
	[CRepr]
	public struct IDWriteBitmapRenderTarget : IUnknown
	{
		public const new Guid IID = .(0x5e5a32a3, 0x8dff, 0x4773, 0x9f, 0xf6, 0x06, 0x96, 0xea, 0xb7, 0x72, 0x67);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DrawGlyphRun(float baselineOriginX, float baselineOriginY, DWRITE_MEASURING_MODE measuringMode, in DWRITE_GLYPH_RUN glyphRun, ref IDWriteRenderingParams renderingParams, uint32 textColor, RECT* blackBoxRect) mut => VT.DrawGlyphRun(ref this, baselineOriginX, baselineOriginY, measuringMode, glyphRun, ref renderingParams, textColor, blackBoxRect);
		public HDC GetMemoryDC() mut => VT.GetMemoryDC(ref this);
		public float GetPixelsPerDip() mut => VT.GetPixelsPerDip(ref this);
		public HRESULT SetPixelsPerDip(float pixelsPerDip) mut => VT.SetPixelsPerDip(ref this, pixelsPerDip);
		public HRESULT GetCurrentTransform(out DWRITE_MATRIX transform) mut => VT.GetCurrentTransform(ref this, out transform);
		public HRESULT SetCurrentTransform(DWRITE_MATRIX* transform) mut => VT.SetCurrentTransform(ref this, transform);
		public HRESULT GetSize(out SIZE size) mut => VT.GetSize(ref this, out size);
		public HRESULT Resize(uint32 width, uint32 height) mut => VT.Resize(ref this, width, height);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteBitmapRenderTarget self, float baselineOriginX, float baselineOriginY, DWRITE_MEASURING_MODE measuringMode, in DWRITE_GLYPH_RUN glyphRun, ref IDWriteRenderingParams renderingParams, uint32 textColor, RECT* blackBoxRect) DrawGlyphRun;
			public new function [CallingConvention(.Stdcall)] HDC(ref IDWriteBitmapRenderTarget self) GetMemoryDC;
			public new function [CallingConvention(.Stdcall)] float(ref IDWriteBitmapRenderTarget self) GetPixelsPerDip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteBitmapRenderTarget self, float pixelsPerDip) SetPixelsPerDip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteBitmapRenderTarget self, out DWRITE_MATRIX transform) GetCurrentTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteBitmapRenderTarget self, DWRITE_MATRIX* transform) SetCurrentTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteBitmapRenderTarget self, out SIZE size) GetSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteBitmapRenderTarget self, uint32 width, uint32 height) Resize;
		}
	}
	[CRepr]
	public struct IDWriteGdiInterop : IUnknown
	{
		public const new Guid IID = .(0x1edd9491, 0x9853, 0x4299, 0x89, 0x8f, 0x64, 0x32, 0x98, 0x3b, 0x6f, 0x3a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateFontFromLOGFONT(in LOGFONTW logFont, out IDWriteFont* font) mut => VT.CreateFontFromLOGFONT(ref this, logFont, out font);
		public HRESULT ConvertFontToLOGFONT(ref IDWriteFont font, out LOGFONTW logFont, out BOOL isSystemFont) mut => VT.ConvertFontToLOGFONT(ref this, ref font, out logFont, out isSystemFont);
		public HRESULT ConvertFontFaceToLOGFONT(ref IDWriteFontFace font, out LOGFONTW logFont) mut => VT.ConvertFontFaceToLOGFONT(ref this, ref font, out logFont);
		public HRESULT CreateFontFaceFromHdc(HDC hdc, out IDWriteFontFace* fontFace) mut => VT.CreateFontFaceFromHdc(ref this, hdc, out fontFace);
		public HRESULT CreateBitmapRenderTarget(HDC hdc, uint32 width, uint32 height, out IDWriteBitmapRenderTarget* renderTarget) mut => VT.CreateBitmapRenderTarget(ref this, hdc, width, height, out renderTarget);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteGdiInterop self, in LOGFONTW logFont, out IDWriteFont* font) CreateFontFromLOGFONT;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteGdiInterop self, ref IDWriteFont font, out LOGFONTW logFont, out BOOL isSystemFont) ConvertFontToLOGFONT;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteGdiInterop self, ref IDWriteFontFace font, out LOGFONTW logFont) ConvertFontFaceToLOGFONT;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteGdiInterop self, HDC hdc, out IDWriteFontFace* fontFace) CreateFontFaceFromHdc;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteGdiInterop self, HDC hdc, uint32 width, uint32 height, out IDWriteBitmapRenderTarget* renderTarget) CreateBitmapRenderTarget;
		}
	}
	[CRepr]
	public struct IDWriteGlyphRunAnalysis : IUnknown
	{
		public const new Guid IID = .(0x7d97dbf7, 0xe085, 0x42d4, 0x81, 0xe3, 0x6a, 0x88, 0x3b, 0xde, 0xd1, 0x18);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetAlphaTextureBounds(DWRITE_TEXTURE_TYPE textureType, out RECT textureBounds) mut => VT.GetAlphaTextureBounds(ref this, textureType, out textureBounds);
		public HRESULT CreateAlphaTexture(DWRITE_TEXTURE_TYPE textureType, in RECT textureBounds, out uint8 alphaValues, uint32 bufferSize) mut => VT.CreateAlphaTexture(ref this, textureType, textureBounds, out alphaValues, bufferSize);
		public HRESULT GetAlphaBlendParams(ref IDWriteRenderingParams renderingParams, out float blendGamma, out float blendEnhancedContrast, out float blendClearTypeLevel) mut => VT.GetAlphaBlendParams(ref this, ref renderingParams, out blendGamma, out blendEnhancedContrast, out blendClearTypeLevel);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteGlyphRunAnalysis self, DWRITE_TEXTURE_TYPE textureType, out RECT textureBounds) GetAlphaTextureBounds;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteGlyphRunAnalysis self, DWRITE_TEXTURE_TYPE textureType, in RECT textureBounds, out uint8 alphaValues, uint32 bufferSize) CreateAlphaTexture;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteGlyphRunAnalysis self, ref IDWriteRenderingParams renderingParams, out float blendGamma, out float blendEnhancedContrast, out float blendClearTypeLevel) GetAlphaBlendParams;
		}
	}
	[CRepr]
	public struct IDWriteFactory : IUnknown
	{
		public const new Guid IID = .(0xb859ee5a, 0xd838, 0x4b5b, 0xa2, 0xe8, 0x1a, 0xdc, 0x7d, 0x93, 0xdb, 0x48);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSystemFontCollection(out IDWriteFontCollection* fontCollection, BOOL checkForUpdates) mut => VT.GetSystemFontCollection(ref this, out fontCollection, checkForUpdates);
		public HRESULT CreateCustomFontCollection(ref IDWriteFontCollectionLoader collectionLoader, void* collectionKey, uint32 collectionKeySize, out IDWriteFontCollection* fontCollection) mut => VT.CreateCustomFontCollection(ref this, ref collectionLoader, collectionKey, collectionKeySize, out fontCollection);
		public HRESULT RegisterFontCollectionLoader(ref IDWriteFontCollectionLoader fontCollectionLoader) mut => VT.RegisterFontCollectionLoader(ref this, ref fontCollectionLoader);
		public HRESULT UnregisterFontCollectionLoader(ref IDWriteFontCollectionLoader fontCollectionLoader) mut => VT.UnregisterFontCollectionLoader(ref this, ref fontCollectionLoader);
		public HRESULT CreateFontFileReference(PWSTR filePath, FILETIME* lastWriteTime, out IDWriteFontFile* fontFile) mut => VT.CreateFontFileReference(ref this, filePath, lastWriteTime, out fontFile);
		public HRESULT CreateCustomFontFileReference(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, ref IDWriteFontFileLoader fontFileLoader, out IDWriteFontFile* fontFile) mut => VT.CreateCustomFontFileReference(ref this, fontFileReferenceKey, fontFileReferenceKeySize, ref fontFileLoader, out fontFile);
		public HRESULT CreateFontFace(DWRITE_FONT_FACE_TYPE fontFaceType, uint32 numberOfFiles, IDWriteFontFile** fontFiles, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontFaceSimulationFlags, out IDWriteFontFace* fontFace) mut => VT.CreateFontFace(ref this, fontFaceType, numberOfFiles, fontFiles, faceIndex, fontFaceSimulationFlags, out fontFace);
		public HRESULT CreateRenderingParams(out IDWriteRenderingParams* renderingParams) mut => VT.CreateRenderingParams(ref this, out renderingParams);
		public HRESULT CreateMonitorRenderingParams(HMONITOR monitor, out IDWriteRenderingParams* renderingParams) mut => VT.CreateMonitorRenderingParams(ref this, monitor, out renderingParams);
		public HRESULT CreateCustomRenderingParams(float gamma, float enhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, out IDWriteRenderingParams* renderingParams) mut => VT.CreateCustomRenderingParams(ref this, gamma, enhancedContrast, clearTypeLevel, pixelGeometry, renderingMode, out renderingParams);
		public HRESULT RegisterFontFileLoader(ref IDWriteFontFileLoader fontFileLoader) mut => VT.RegisterFontFileLoader(ref this, ref fontFileLoader);
		public HRESULT UnregisterFontFileLoader(ref IDWriteFontFileLoader fontFileLoader) mut => VT.UnregisterFontFileLoader(ref this, ref fontFileLoader);
		public HRESULT CreateTextFormat(PWSTR fontFamilyName, IDWriteFontCollection* fontCollection, DWRITE_FONT_WEIGHT fontWeight, DWRITE_FONT_STYLE fontStyle, DWRITE_FONT_STRETCH fontStretch, float fontSize, PWSTR localeName, out IDWriteTextFormat* textFormat) mut => VT.CreateTextFormat(ref this, fontFamilyName, fontCollection, fontWeight, fontStyle, fontStretch, fontSize, localeName, out textFormat);
		public HRESULT CreateTypography(out IDWriteTypography* typography) mut => VT.CreateTypography(ref this, out typography);
		public HRESULT GetGdiInterop(out IDWriteGdiInterop* gdiInterop) mut => VT.GetGdiInterop(ref this, out gdiInterop);
		public HRESULT CreateTextLayout(char16* string, uint32 stringLength, ref IDWriteTextFormat textFormat, float maxWidth, float maxHeight, out IDWriteTextLayout* textLayout) mut => VT.CreateTextLayout(ref this, string, stringLength, ref textFormat, maxWidth, maxHeight, out textLayout);
		public HRESULT CreateGdiCompatibleTextLayout(char16* string, uint32 stringLength, ref IDWriteTextFormat textFormat, float layoutWidth, float layoutHeight, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, out IDWriteTextLayout* textLayout) mut => VT.CreateGdiCompatibleTextLayout(ref this, string, stringLength, ref textFormat, layoutWidth, layoutHeight, pixelsPerDip, transform, useGdiNatural, out textLayout);
		public HRESULT CreateEllipsisTrimmingSign(ref IDWriteTextFormat textFormat, out IDWriteInlineObject* trimmingSign) mut => VT.CreateEllipsisTrimmingSign(ref this, ref textFormat, out trimmingSign);
		public HRESULT CreateTextAnalyzer(out IDWriteTextAnalyzer* textAnalyzer) mut => VT.CreateTextAnalyzer(ref this, out textAnalyzer);
		public HRESULT CreateNumberSubstitution(DWRITE_NUMBER_SUBSTITUTION_METHOD substitutionMethod, PWSTR localeName, BOOL ignoreUserOverride, out IDWriteNumberSubstitution* numberSubstitution) mut => VT.CreateNumberSubstitution(ref this, substitutionMethod, localeName, ignoreUserOverride, out numberSubstitution);
		public HRESULT CreateGlyphRunAnalysis(in DWRITE_GLYPH_RUN glyphRun, float pixelsPerDip, DWRITE_MATRIX* transform, DWRITE_RENDERING_MODE renderingMode, DWRITE_MEASURING_MODE measuringMode, float baselineOriginX, float baselineOriginY, out IDWriteGlyphRunAnalysis* glyphRunAnalysis) mut => VT.CreateGlyphRunAnalysis(ref this, glyphRun, pixelsPerDip, transform, renderingMode, measuringMode, baselineOriginX, baselineOriginY, out glyphRunAnalysis);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, out IDWriteFontCollection* fontCollection, BOOL checkForUpdates) GetSystemFontCollection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, ref IDWriteFontCollectionLoader collectionLoader, void* collectionKey, uint32 collectionKeySize, out IDWriteFontCollection* fontCollection) CreateCustomFontCollection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, ref IDWriteFontCollectionLoader fontCollectionLoader) RegisterFontCollectionLoader;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, ref IDWriteFontCollectionLoader fontCollectionLoader) UnregisterFontCollectionLoader;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, PWSTR filePath, FILETIME* lastWriteTime, out IDWriteFontFile* fontFile) CreateFontFileReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, ref IDWriteFontFileLoader fontFileLoader, out IDWriteFontFile* fontFile) CreateCustomFontFileReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, DWRITE_FONT_FACE_TYPE fontFaceType, uint32 numberOfFiles, IDWriteFontFile** fontFiles, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontFaceSimulationFlags, out IDWriteFontFace* fontFace) CreateFontFace;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, out IDWriteRenderingParams* renderingParams) CreateRenderingParams;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, HMONITOR monitor, out IDWriteRenderingParams* renderingParams) CreateMonitorRenderingParams;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, float gamma, float enhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, out IDWriteRenderingParams* renderingParams) CreateCustomRenderingParams;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, ref IDWriteFontFileLoader fontFileLoader) RegisterFontFileLoader;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, ref IDWriteFontFileLoader fontFileLoader) UnregisterFontFileLoader;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, PWSTR fontFamilyName, IDWriteFontCollection* fontCollection, DWRITE_FONT_WEIGHT fontWeight, DWRITE_FONT_STYLE fontStyle, DWRITE_FONT_STRETCH fontStretch, float fontSize, PWSTR localeName, out IDWriteTextFormat* textFormat) CreateTextFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, out IDWriteTypography* typography) CreateTypography;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, out IDWriteGdiInterop* gdiInterop) GetGdiInterop;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, char16* string, uint32 stringLength, ref IDWriteTextFormat textFormat, float maxWidth, float maxHeight, out IDWriteTextLayout* textLayout) CreateTextLayout;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, char16* string, uint32 stringLength, ref IDWriteTextFormat textFormat, float layoutWidth, float layoutHeight, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, out IDWriteTextLayout* textLayout) CreateGdiCompatibleTextLayout;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, ref IDWriteTextFormat textFormat, out IDWriteInlineObject* trimmingSign) CreateEllipsisTrimmingSign;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, out IDWriteTextAnalyzer* textAnalyzer) CreateTextAnalyzer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, DWRITE_NUMBER_SUBSTITUTION_METHOD substitutionMethod, PWSTR localeName, BOOL ignoreUserOverride, out IDWriteNumberSubstitution* numberSubstitution) CreateNumberSubstitution;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory self, in DWRITE_GLYPH_RUN glyphRun, float pixelsPerDip, DWRITE_MATRIX* transform, DWRITE_RENDERING_MODE renderingMode, DWRITE_MEASURING_MODE measuringMode, float baselineOriginX, float baselineOriginY, out IDWriteGlyphRunAnalysis* glyphRunAnalysis) CreateGlyphRunAnalysis;
		}
	}
	[CRepr]
	public struct IDWriteFactory1 : IDWriteFactory
	{
		public const new Guid IID = .(0x30572f99, 0xdac6, 0x41db, 0xa1, 0x6e, 0x04, 0x86, 0x30, 0x7e, 0x60, 0x6a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetEudcFontCollection(out IDWriteFontCollection* fontCollection, BOOL checkForUpdates) mut => VT.GetEudcFontCollection(ref this, out fontCollection, checkForUpdates);
		public HRESULT CreateCustomRenderingParams(float gamma, float enhancedContrast, float enhancedContrastGrayscale, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, out IDWriteRenderingParams1* renderingParams) mut => VT.CreateCustomRenderingParams(ref this, gamma, enhancedContrast, enhancedContrastGrayscale, clearTypeLevel, pixelGeometry, renderingMode, out renderingParams);

		[CRepr]
		public struct VTable : IDWriteFactory.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory1 self, out IDWriteFontCollection* fontCollection, BOOL checkForUpdates) GetEudcFontCollection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory1 self, float gamma, float enhancedContrast, float enhancedContrastGrayscale, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, out IDWriteRenderingParams1* renderingParams) CreateCustomRenderingParams;
		}
	}
	[CRepr]
	public struct IDWriteFontFace1 : IDWriteFontFace
	{
		public const new Guid IID = .(0xa71efdb4, 0x9fdb, 0x4838, 0xad, 0x90, 0xcf, 0xc3, 0xbe, 0x8c, 0x3d, 0xaf);
		
		public new VTable* VT { get => (.)vt; }
		
		public void GetMetrics(out DWRITE_FONT_METRICS1 fontMetrics) mut => VT.GetMetrics(ref this, out fontMetrics);
		public HRESULT GetGdiCompatibleMetrics(float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, out DWRITE_FONT_METRICS1 fontMetrics) mut => VT.GetGdiCompatibleMetrics(ref this, emSize, pixelsPerDip, transform, out fontMetrics);
		public void GetCaretMetrics(out DWRITE_CARET_METRICS caretMetrics) mut => VT.GetCaretMetrics(ref this, out caretMetrics);
		public HRESULT GetUnicodeRanges(uint32 maxRangeCount, DWRITE_UNICODE_RANGE* unicodeRanges, out uint32 actualRangeCount) mut => VT.GetUnicodeRanges(ref this, maxRangeCount, unicodeRanges, out actualRangeCount);
		public BOOL IsMonospacedFont() mut => VT.IsMonospacedFont(ref this);
		public HRESULT GetDesignGlyphAdvances(uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvances, BOOL isSideways) mut => VT.GetDesignGlyphAdvances(ref this, glyphCount, glyphIndices, glyphAdvances, isSideways);
		public HRESULT GetGdiCompatibleGlyphAdvances(float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, BOOL isSideways, uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvances) mut => VT.GetGdiCompatibleGlyphAdvances(ref this, emSize, pixelsPerDip, transform, useGdiNatural, isSideways, glyphCount, glyphIndices, glyphAdvances);
		public HRESULT GetKerningPairAdjustments(uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvanceAdjustments) mut => VT.GetKerningPairAdjustments(ref this, glyphCount, glyphIndices, glyphAdvanceAdjustments);
		public BOOL HasKerningPairs() mut => VT.HasKerningPairs(ref this);
		public HRESULT GetRecommendedRenderingMode(float fontEmSize, float dpiX, float dpiY, DWRITE_MATRIX* transform, BOOL isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, out DWRITE_RENDERING_MODE renderingMode) mut => VT.GetRecommendedRenderingMode(ref this, fontEmSize, dpiX, dpiY, transform, isSideways, outlineThreshold, measuringMode, out renderingMode);
		public HRESULT GetVerticalGlyphVariants(uint32 glyphCount, uint16* nominalGlyphIndices, uint16* verticalGlyphIndices) mut => VT.GetVerticalGlyphVariants(ref this, glyphCount, nominalGlyphIndices, verticalGlyphIndices);
		public BOOL HasVerticalGlyphVariants() mut => VT.HasVerticalGlyphVariants(ref this);

		[CRepr]
		public struct VTable : IDWriteFontFace.VTable
		{
			public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFace1 self, out DWRITE_FONT_METRICS1 fontMetrics) GetMetrics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace1 self, float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, out DWRITE_FONT_METRICS1 fontMetrics) GetGdiCompatibleMetrics;
			public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFace1 self, out DWRITE_CARET_METRICS caretMetrics) GetCaretMetrics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace1 self, uint32 maxRangeCount, DWRITE_UNICODE_RANGE* unicodeRanges, out uint32 actualRangeCount) GetUnicodeRanges;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFontFace1 self) IsMonospacedFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace1 self, uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvances, BOOL isSideways) GetDesignGlyphAdvances;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace1 self, float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, BOOL isSideways, uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvances) GetGdiCompatibleGlyphAdvances;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace1 self, uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvanceAdjustments) GetKerningPairAdjustments;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFontFace1 self) HasKerningPairs;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace1 self, float fontEmSize, float dpiX, float dpiY, DWRITE_MATRIX* transform, BOOL isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, out DWRITE_RENDERING_MODE renderingMode) GetRecommendedRenderingMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace1 self, uint32 glyphCount, uint16* nominalGlyphIndices, uint16* verticalGlyphIndices) GetVerticalGlyphVariants;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFontFace1 self) HasVerticalGlyphVariants;
		}
	}
	[CRepr]
	public struct IDWriteFont1 : IDWriteFont
	{
		public const new Guid IID = .(0xacd16696, 0x8c14, 0x4f5d, 0x87, 0x7e, 0xfe, 0x3f, 0xc1, 0xd3, 0x27, 0x38);
		
		public new VTable* VT { get => (.)vt; }
		
		public void GetMetrics(out DWRITE_FONT_METRICS1 fontMetrics) mut => VT.GetMetrics(ref this, out fontMetrics);
		public void GetPanose(out DWRITE_PANOSE panose) mut => VT.GetPanose(ref this, out panose);
		public HRESULT GetUnicodeRanges(uint32 maxRangeCount, DWRITE_UNICODE_RANGE* unicodeRanges, out uint32 actualRangeCount) mut => VT.GetUnicodeRanges(ref this, maxRangeCount, unicodeRanges, out actualRangeCount);
		public BOOL IsMonospacedFont() mut => VT.IsMonospacedFont(ref this);

		[CRepr]
		public struct VTable : IDWriteFont.VTable
		{
			public new function [CallingConvention(.Stdcall)] void(ref IDWriteFont1 self, out DWRITE_FONT_METRICS1 fontMetrics) GetMetrics;
			public new function [CallingConvention(.Stdcall)] void(ref IDWriteFont1 self, out DWRITE_PANOSE panose) GetPanose;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFont1 self, uint32 maxRangeCount, DWRITE_UNICODE_RANGE* unicodeRanges, out uint32 actualRangeCount) GetUnicodeRanges;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFont1 self) IsMonospacedFont;
		}
	}
	[CRepr]
	public struct IDWriteRenderingParams1 : IDWriteRenderingParams
	{
		public const new Guid IID = .(0x94413cf4, 0xa6fc, 0x4248, 0x8b, 0x50, 0x66, 0x74, 0x34, 0x8f, 0xca, 0xd3);
		
		public new VTable* VT { get => (.)vt; }
		
		public float GetGrayscaleEnhancedContrast() mut => VT.GetGrayscaleEnhancedContrast(ref this);

		[CRepr]
		public struct VTable : IDWriteRenderingParams.VTable
		{
			public new function [CallingConvention(.Stdcall)] float(ref IDWriteRenderingParams1 self) GetGrayscaleEnhancedContrast;
		}
	}
	[CRepr]
	public struct IDWriteTextAnalyzer1 : IDWriteTextAnalyzer
	{
		public const new Guid IID = .(0x80dad800, 0xe21f, 0x4e83, 0x96, 0xce, 0xbf, 0xcc, 0xe5, 0x00, 0xdb, 0x7c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ApplyCharacterSpacing(float leadingSpacing, float trailingSpacing, float minimumAdvanceWidth, uint32 textLength, uint32 glyphCount, uint16* clusterMap, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, float* modifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* modifiedGlyphOffsets) mut => VT.ApplyCharacterSpacing(ref this, leadingSpacing, trailingSpacing, minimumAdvanceWidth, textLength, glyphCount, clusterMap, glyphAdvances, glyphOffsets, glyphProperties, modifiedGlyphAdvances, modifiedGlyphOffsets);
		public HRESULT GetBaseline(ref IDWriteFontFace fontFace, DWRITE_BASELINE baseline, BOOL isVertical, BOOL isSimulationAllowed, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, out int32 baselineCoordinate, out BOOL exists) mut => VT.GetBaseline(ref this, ref fontFace, baseline, isVertical, isSimulationAllowed, scriptAnalysis, localeName, out baselineCoordinate, out exists);
		public HRESULT AnalyzeVerticalGlyphOrientation(ref IDWriteTextAnalysisSource1 analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink1 analysisSink) mut => VT.AnalyzeVerticalGlyphOrientation(ref this, ref analysisSource, textPosition, textLength, ref analysisSink);
		public HRESULT GetGlyphOrientationTransform(DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, BOOL isSideways, out DWRITE_MATRIX transform) mut => VT.GetGlyphOrientationTransform(ref this, glyphOrientationAngle, isSideways, out transform);
		public HRESULT GetScriptProperties(DWRITE_SCRIPT_ANALYSIS scriptAnalysis, out DWRITE_SCRIPT_PROPERTIES scriptProperties) mut => VT.GetScriptProperties(ref this, scriptAnalysis, out scriptProperties);
		public HRESULT GetTextComplexity(char16* textString, uint32 textLength, ref IDWriteFontFace fontFace, out BOOL isTextSimple, out uint32 textLengthRead, uint16* glyphIndices) mut => VT.GetTextComplexity(ref this, textString, textLength, ref fontFace, out isTextSimple, out textLengthRead, glyphIndices);
		public HRESULT GetJustificationOpportunities(IDWriteFontFace* fontFace, float fontEmSize, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, uint32 textLength, uint32 glyphCount, char16* textString, uint16* clusterMap, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, DWRITE_JUSTIFICATION_OPPORTUNITY* justificationOpportunities) mut => VT.GetJustificationOpportunities(ref this, fontFace, fontEmSize, scriptAnalysis, textLength, glyphCount, textString, clusterMap, glyphProperties, justificationOpportunities);
		public HRESULT JustifyGlyphAdvances(float lineWidth, uint32 glyphCount, DWRITE_JUSTIFICATION_OPPORTUNITY* justificationOpportunities, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets, float* justifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* justifiedGlyphOffsets) mut => VT.JustifyGlyphAdvances(ref this, lineWidth, glyphCount, justificationOpportunities, glyphAdvances, glyphOffsets, justifiedGlyphAdvances, justifiedGlyphOffsets);
		public HRESULT GetJustifiedGlyphs(IDWriteFontFace* fontFace, float fontEmSize, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, uint32 textLength, uint32 glyphCount, uint32 maxGlyphCount, uint16* clusterMap, uint16* glyphIndices, float* glyphAdvances, float* justifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* justifiedGlyphOffsets, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, out uint32 actualGlyphCount, uint16* modifiedClusterMap, uint16* modifiedGlyphIndices, float* modifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* modifiedGlyphOffsets) mut => VT.GetJustifiedGlyphs(ref this, fontFace, fontEmSize, scriptAnalysis, textLength, glyphCount, maxGlyphCount, clusterMap, glyphIndices, glyphAdvances, justifiedGlyphAdvances, justifiedGlyphOffsets, glyphProperties, out actualGlyphCount, modifiedClusterMap, modifiedGlyphIndices, modifiedGlyphAdvances, modifiedGlyphOffsets);

		[CRepr]
		public struct VTable : IDWriteTextAnalyzer.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer1 self, float leadingSpacing, float trailingSpacing, float minimumAdvanceWidth, uint32 textLength, uint32 glyphCount, uint16* clusterMap, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, float* modifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* modifiedGlyphOffsets) ApplyCharacterSpacing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer1 self, ref IDWriteFontFace fontFace, DWRITE_BASELINE baseline, BOOL isVertical, BOOL isSimulationAllowed, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, out int32 baselineCoordinate, out BOOL exists) GetBaseline;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer1 self, ref IDWriteTextAnalysisSource1 analysisSource, uint32 textPosition, uint32 textLength, ref IDWriteTextAnalysisSink1 analysisSink) AnalyzeVerticalGlyphOrientation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer1 self, DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, BOOL isSideways, out DWRITE_MATRIX transform) GetGlyphOrientationTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer1 self, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, out DWRITE_SCRIPT_PROPERTIES scriptProperties) GetScriptProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer1 self, char16* textString, uint32 textLength, ref IDWriteFontFace fontFace, out BOOL isTextSimple, out uint32 textLengthRead, uint16* glyphIndices) GetTextComplexity;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer1 self, IDWriteFontFace* fontFace, float fontEmSize, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, uint32 textLength, uint32 glyphCount, char16* textString, uint16* clusterMap, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, DWRITE_JUSTIFICATION_OPPORTUNITY* justificationOpportunities) GetJustificationOpportunities;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer1 self, float lineWidth, uint32 glyphCount, DWRITE_JUSTIFICATION_OPPORTUNITY* justificationOpportunities, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets, float* justifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* justifiedGlyphOffsets) JustifyGlyphAdvances;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer1 self, IDWriteFontFace* fontFace, float fontEmSize, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, uint32 textLength, uint32 glyphCount, uint32 maxGlyphCount, uint16* clusterMap, uint16* glyphIndices, float* glyphAdvances, float* justifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* justifiedGlyphOffsets, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, out uint32 actualGlyphCount, uint16* modifiedClusterMap, uint16* modifiedGlyphIndices, float* modifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* modifiedGlyphOffsets) GetJustifiedGlyphs;
		}
	}
	[CRepr]
	public struct IDWriteTextAnalysisSource1 : IDWriteTextAnalysisSource
	{
		public const new Guid IID = .(0x639cfad8, 0x0fb4, 0x4b21, 0xa5, 0x8a, 0x06, 0x79, 0x20, 0x12, 0x00, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetVerticalGlyphOrientation(uint32 textPosition, out uint32 textLength, out DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation, out uint8 bidiLevel) mut => VT.GetVerticalGlyphOrientation(ref this, textPosition, out textLength, out glyphOrientation, out bidiLevel);

		[CRepr]
		public struct VTable : IDWriteTextAnalysisSource.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalysisSource1 self, uint32 textPosition, out uint32 textLength, out DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation, out uint8 bidiLevel) GetVerticalGlyphOrientation;
		}
	}
	[CRepr]
	public struct IDWriteTextAnalysisSink1 : IDWriteTextAnalysisSink
	{
		public const new Guid IID = .(0xb0d941a0, 0x85e7, 0x4d8b, 0x9f, 0xd3, 0x5c, 0xed, 0x99, 0x34, 0x48, 0x2a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetGlyphOrientation(uint32 textPosition, uint32 textLength, DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, uint8 adjustedBidiLevel, BOOL isSideways, BOOL isRightToLeft) mut => VT.SetGlyphOrientation(ref this, textPosition, textLength, glyphOrientationAngle, adjustedBidiLevel, isSideways, isRightToLeft);

		[CRepr]
		public struct VTable : IDWriteTextAnalysisSink.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalysisSink1 self, uint32 textPosition, uint32 textLength, DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, uint8 adjustedBidiLevel, BOOL isSideways, BOOL isRightToLeft) SetGlyphOrientation;
		}
	}
	[CRepr]
	public struct IDWriteTextLayout1 : IDWriteTextLayout
	{
		public const new Guid IID = .(0x9064d822, 0x80a7, 0x465c, 0xa9, 0x86, 0xdf, 0x65, 0xf7, 0x8b, 0x8f, 0xeb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetPairKerning(BOOL isPairKerningEnabled, DWRITE_TEXT_RANGE textRange) mut => VT.SetPairKerning(ref this, isPairKerningEnabled, textRange);
		public HRESULT GetPairKerning(uint32 currentPosition, out BOOL isPairKerningEnabled, DWRITE_TEXT_RANGE* textRange) mut => VT.GetPairKerning(ref this, currentPosition, out isPairKerningEnabled, textRange);
		public HRESULT SetCharacterSpacing(float leadingSpacing, float trailingSpacing, float minimumAdvanceWidth, DWRITE_TEXT_RANGE textRange) mut => VT.SetCharacterSpacing(ref this, leadingSpacing, trailingSpacing, minimumAdvanceWidth, textRange);
		public HRESULT GetCharacterSpacing(uint32 currentPosition, out float leadingSpacing, out float trailingSpacing, out float minimumAdvanceWidth, DWRITE_TEXT_RANGE* textRange) mut => VT.GetCharacterSpacing(ref this, currentPosition, out leadingSpacing, out trailingSpacing, out minimumAdvanceWidth, textRange);

		[CRepr]
		public struct VTable : IDWriteTextLayout.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout1 self, BOOL isPairKerningEnabled, DWRITE_TEXT_RANGE textRange) SetPairKerning;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout1 self, uint32 currentPosition, out BOOL isPairKerningEnabled, DWRITE_TEXT_RANGE* textRange) GetPairKerning;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout1 self, float leadingSpacing, float trailingSpacing, float minimumAdvanceWidth, DWRITE_TEXT_RANGE textRange) SetCharacterSpacing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout1 self, uint32 currentPosition, out float leadingSpacing, out float trailingSpacing, out float minimumAdvanceWidth, DWRITE_TEXT_RANGE* textRange) GetCharacterSpacing;
		}
	}
	[CRepr]
	public struct IDWriteBitmapRenderTarget1 : IDWriteBitmapRenderTarget
	{
		public const new Guid IID = .(0x791e8298, 0x3ef3, 0x4230, 0x98, 0x80, 0xc9, 0xbd, 0xec, 0xc4, 0x20, 0x64);
		
		public new VTable* VT { get => (.)vt; }
		
		public DWRITE_TEXT_ANTIALIAS_MODE GetTextAntialiasMode() mut => VT.GetTextAntialiasMode(ref this);
		public HRESULT SetTextAntialiasMode(DWRITE_TEXT_ANTIALIAS_MODE antialiasMode) mut => VT.SetTextAntialiasMode(ref this, antialiasMode);

		[CRepr]
		public struct VTable : IDWriteBitmapRenderTarget.VTable
		{
			public new function [CallingConvention(.Stdcall)] DWRITE_TEXT_ANTIALIAS_MODE(ref IDWriteBitmapRenderTarget1 self) GetTextAntialiasMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteBitmapRenderTarget1 self, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode) SetTextAntialiasMode;
		}
	}
	[CRepr]
	public struct IDWriteTextRenderer1 : IDWriteTextRenderer
	{
		public const new Guid IID = .(0xd3e0e934, 0x22a0, 0x427e, 0xaa, 0xe4, 0x7d, 0x95, 0x74, 0xb5, 0x9d, 0xb1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DrawGlyphRun(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, DWRITE_MEASURING_MODE measuringMode, in DWRITE_GLYPH_RUN glyphRun, in DWRITE_GLYPH_RUN_DESCRIPTION glyphRunDescription, IUnknown* clientDrawingEffect) mut => VT.DrawGlyphRun(ref this, clientDrawingContext, baselineOriginX, baselineOriginY, orientationAngle, measuringMode, glyphRun, glyphRunDescription, clientDrawingEffect);
		public HRESULT DrawUnderline(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, in DWRITE_UNDERLINE underline, IUnknown* clientDrawingEffect) mut => VT.DrawUnderline(ref this, clientDrawingContext, baselineOriginX, baselineOriginY, orientationAngle, underline, clientDrawingEffect);
		public HRESULT DrawStrikethrough(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, in DWRITE_STRIKETHROUGH strikethrough, IUnknown* clientDrawingEffect) mut => VT.DrawStrikethrough(ref this, clientDrawingContext, baselineOriginX, baselineOriginY, orientationAngle, strikethrough, clientDrawingEffect);
		public HRESULT DrawInlineObject(void* clientDrawingContext, float originX, float originY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, ref IDWriteInlineObject inlineObject, BOOL isSideways, BOOL isRightToLeft, IUnknown* clientDrawingEffect) mut => VT.DrawInlineObject(ref this, clientDrawingContext, originX, originY, orientationAngle, ref inlineObject, isSideways, isRightToLeft, clientDrawingEffect);

		[CRepr]
		public struct VTable : IDWriteTextRenderer.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextRenderer1 self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, DWRITE_MEASURING_MODE measuringMode, in DWRITE_GLYPH_RUN glyphRun, in DWRITE_GLYPH_RUN_DESCRIPTION glyphRunDescription, IUnknown* clientDrawingEffect) DrawGlyphRun;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextRenderer1 self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, in DWRITE_UNDERLINE underline, IUnknown* clientDrawingEffect) DrawUnderline;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextRenderer1 self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, in DWRITE_STRIKETHROUGH strikethrough, IUnknown* clientDrawingEffect) DrawStrikethrough;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextRenderer1 self, void* clientDrawingContext, float originX, float originY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, ref IDWriteInlineObject inlineObject, BOOL isSideways, BOOL isRightToLeft, IUnknown* clientDrawingEffect) DrawInlineObject;
		}
	}
	[CRepr]
	public struct IDWriteTextFormat1 : IDWriteTextFormat
	{
		public const new Guid IID = .(0x5f174b49, 0x0d8b, 0x4cfb, 0x8b, 0xca, 0xf1, 0xcc, 0xe9, 0xd0, 0x6c, 0x67);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetVerticalGlyphOrientation(DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation) mut => VT.SetVerticalGlyphOrientation(ref this, glyphOrientation);
		public DWRITE_VERTICAL_GLYPH_ORIENTATION GetVerticalGlyphOrientation() mut => VT.GetVerticalGlyphOrientation(ref this);
		public HRESULT SetLastLineWrapping(BOOL isLastLineWrappingEnabled) mut => VT.SetLastLineWrapping(ref this, isLastLineWrappingEnabled);
		public BOOL GetLastLineWrapping() mut => VT.GetLastLineWrapping(ref this);
		public HRESULT SetOpticalAlignment(DWRITE_OPTICAL_ALIGNMENT opticalAlignment) mut => VT.SetOpticalAlignment(ref this, opticalAlignment);
		public DWRITE_OPTICAL_ALIGNMENT GetOpticalAlignment() mut => VT.GetOpticalAlignment(ref this);
		public HRESULT SetFontFallback(ref IDWriteFontFallback fontFallback) mut => VT.SetFontFallback(ref this, ref fontFallback);
		public HRESULT GetFontFallback(out IDWriteFontFallback* fontFallback) mut => VT.GetFontFallback(ref this, out fontFallback);

		[CRepr]
		public struct VTable : IDWriteTextFormat.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat1 self, DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation) SetVerticalGlyphOrientation;
			public new function [CallingConvention(.Stdcall)] DWRITE_VERTICAL_GLYPH_ORIENTATION(ref IDWriteTextFormat1 self) GetVerticalGlyphOrientation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat1 self, BOOL isLastLineWrappingEnabled) SetLastLineWrapping;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteTextFormat1 self) GetLastLineWrapping;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat1 self, DWRITE_OPTICAL_ALIGNMENT opticalAlignment) SetOpticalAlignment;
			public new function [CallingConvention(.Stdcall)] DWRITE_OPTICAL_ALIGNMENT(ref IDWriteTextFormat1 self) GetOpticalAlignment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat1 self, ref IDWriteFontFallback fontFallback) SetFontFallback;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat1 self, out IDWriteFontFallback* fontFallback) GetFontFallback;
		}
	}
	[CRepr]
	public struct IDWriteTextLayout2 : IDWriteTextLayout1
	{
		public const new Guid IID = .(0x1093c18f, 0x8d5e, 0x43f0, 0xb0, 0x64, 0x09, 0x17, 0x31, 0x1b, 0x52, 0x5e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetMetrics(out DWRITE_TEXT_METRICS1 textMetrics) mut => VT.GetMetrics(ref this, out textMetrics);
		public HRESULT SetVerticalGlyphOrientation(DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation) mut => VT.SetVerticalGlyphOrientation(ref this, glyphOrientation);
		public DWRITE_VERTICAL_GLYPH_ORIENTATION GetVerticalGlyphOrientation() mut => VT.GetVerticalGlyphOrientation(ref this);
		public HRESULT SetLastLineWrapping(BOOL isLastLineWrappingEnabled) mut => VT.SetLastLineWrapping(ref this, isLastLineWrappingEnabled);
		public BOOL GetLastLineWrapping() mut => VT.GetLastLineWrapping(ref this);
		public HRESULT SetOpticalAlignment(DWRITE_OPTICAL_ALIGNMENT opticalAlignment) mut => VT.SetOpticalAlignment(ref this, opticalAlignment);
		public DWRITE_OPTICAL_ALIGNMENT GetOpticalAlignment() mut => VT.GetOpticalAlignment(ref this);
		public HRESULT SetFontFallback(ref IDWriteFontFallback fontFallback) mut => VT.SetFontFallback(ref this, ref fontFallback);
		public HRESULT GetFontFallback(out IDWriteFontFallback* fontFallback) mut => VT.GetFontFallback(ref this, out fontFallback);

		[CRepr]
		public struct VTable : IDWriteTextLayout1.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout2 self, out DWRITE_TEXT_METRICS1 textMetrics) GetMetrics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout2 self, DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation) SetVerticalGlyphOrientation;
			public new function [CallingConvention(.Stdcall)] DWRITE_VERTICAL_GLYPH_ORIENTATION(ref IDWriteTextLayout2 self) GetVerticalGlyphOrientation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout2 self, BOOL isLastLineWrappingEnabled) SetLastLineWrapping;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteTextLayout2 self) GetLastLineWrapping;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout2 self, DWRITE_OPTICAL_ALIGNMENT opticalAlignment) SetOpticalAlignment;
			public new function [CallingConvention(.Stdcall)] DWRITE_OPTICAL_ALIGNMENT(ref IDWriteTextLayout2 self) GetOpticalAlignment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout2 self, ref IDWriteFontFallback fontFallback) SetFontFallback;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout2 self, out IDWriteFontFallback* fontFallback) GetFontFallback;
		}
	}
	[CRepr]
	public struct IDWriteTextAnalyzer2 : IDWriteTextAnalyzer1
	{
		public const new Guid IID = .(0x553a9ff3, 0x5693, 0x4df7, 0xb5, 0x2b, 0x74, 0x80, 0x6f, 0x7f, 0x2e, 0xb9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetGlyphOrientationTransform(DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, BOOL isSideways, float originX, float originY, out DWRITE_MATRIX transform) mut => VT.GetGlyphOrientationTransform(ref this, glyphOrientationAngle, isSideways, originX, originY, out transform);
		public HRESULT GetTypographicFeatures(ref IDWriteFontFace fontFace, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, uint32 maxTagCount, out uint32 actualTagCount, DWRITE_FONT_FEATURE_TAG* tags) mut => VT.GetTypographicFeatures(ref this, ref fontFace, scriptAnalysis, localeName, maxTagCount, out actualTagCount, tags);
		public HRESULT CheckTypographicFeature(ref IDWriteFontFace fontFace, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, DWRITE_FONT_FEATURE_TAG featureTag, uint32 glyphCount, uint16* glyphIndices, uint8* featureApplies) mut => VT.CheckTypographicFeature(ref this, ref fontFace, scriptAnalysis, localeName, featureTag, glyphCount, glyphIndices, featureApplies);

		[CRepr]
		public struct VTable : IDWriteTextAnalyzer1.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer2 self, DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, BOOL isSideways, float originX, float originY, out DWRITE_MATRIX transform) GetGlyphOrientationTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer2 self, ref IDWriteFontFace fontFace, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, uint32 maxTagCount, out uint32 actualTagCount, DWRITE_FONT_FEATURE_TAG* tags) GetTypographicFeatures;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextAnalyzer2 self, ref IDWriteFontFace fontFace, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, DWRITE_FONT_FEATURE_TAG featureTag, uint32 glyphCount, uint16* glyphIndices, uint8* featureApplies) CheckTypographicFeature;
		}
	}
	[CRepr]
	public struct IDWriteFontFallback : IUnknown
	{
		public const new Guid IID = .(0xefa008f9, 0xf7a1, 0x48bf, 0xb0, 0x5c, 0xf2, 0x24, 0x71, 0x3c, 0xc0, 0xff);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MapCharacters(ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, IDWriteFontCollection* baseFontCollection, PWSTR baseFamilyName, DWRITE_FONT_WEIGHT baseWeight, DWRITE_FONT_STYLE baseStyle, DWRITE_FONT_STRETCH baseStretch, out uint32 mappedLength, IDWriteFont** mappedFont, out float scale) mut => VT.MapCharacters(ref this, ref analysisSource, textPosition, textLength, baseFontCollection, baseFamilyName, baseWeight, baseStyle, baseStretch, out mappedLength, mappedFont, out scale);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFallback self, ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, IDWriteFontCollection* baseFontCollection, PWSTR baseFamilyName, DWRITE_FONT_WEIGHT baseWeight, DWRITE_FONT_STYLE baseStyle, DWRITE_FONT_STRETCH baseStretch, out uint32 mappedLength, IDWriteFont** mappedFont, out float scale) MapCharacters;
		}
	}
	[CRepr]
	public struct IDWriteFontFallbackBuilder : IUnknown
	{
		public const new Guid IID = .(0xfd882d06, 0x8aba, 0x4fb8, 0xb8, 0x49, 0x8b, 0xe8, 0xb7, 0x3e, 0x14, 0xde);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddMapping(DWRITE_UNICODE_RANGE* ranges, uint32 rangesCount, uint16** targetFamilyNames, uint32 targetFamilyNamesCount, IDWriteFontCollection* fontCollection, PWSTR localeName, PWSTR baseFamilyName, float scale) mut => VT.AddMapping(ref this, ranges, rangesCount, targetFamilyNames, targetFamilyNamesCount, fontCollection, localeName, baseFamilyName, scale);
		public HRESULT AddMappings(ref IDWriteFontFallback fontFallback) mut => VT.AddMappings(ref this, ref fontFallback);
		public HRESULT CreateFontFallback(out IDWriteFontFallback* fontFallback) mut => VT.CreateFontFallback(ref this, out fontFallback);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFallbackBuilder self, DWRITE_UNICODE_RANGE* ranges, uint32 rangesCount, uint16** targetFamilyNames, uint32 targetFamilyNamesCount, IDWriteFontCollection* fontCollection, PWSTR localeName, PWSTR baseFamilyName, float scale) AddMapping;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFallbackBuilder self, ref IDWriteFontFallback fontFallback) AddMappings;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFallbackBuilder self, out IDWriteFontFallback* fontFallback) CreateFontFallback;
		}
	}
	[CRepr]
	public struct IDWriteFont2 : IDWriteFont1
	{
		public const new Guid IID = .(0x29748ed6, 0x8c9c, 0x4a6a, 0xbe, 0x0b, 0xd9, 0x12, 0xe8, 0x53, 0x89, 0x44);
		
		public new VTable* VT { get => (.)vt; }
		
		public BOOL IsColorFont() mut => VT.IsColorFont(ref this);

		[CRepr]
		public struct VTable : IDWriteFont1.VTable
		{
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFont2 self) IsColorFont;
		}
	}
	[CRepr]
	public struct IDWriteFontFace2 : IDWriteFontFace1
	{
		public const new Guid IID = .(0xd8b768ff, 0x64bc, 0x4e66, 0x98, 0x2b, 0xec, 0x8e, 0x87, 0xf6, 0x93, 0xf7);
		
		public new VTable* VT { get => (.)vt; }
		
		public BOOL IsColorFont() mut => VT.IsColorFont(ref this);
		public uint32 GetColorPaletteCount() mut => VT.GetColorPaletteCount(ref this);
		public uint32 GetPaletteEntryCount() mut => VT.GetPaletteEntryCount(ref this);
		public HRESULT GetPaletteEntries(uint32 colorPaletteIndex, uint32 firstEntryIndex, uint32 entryCount, DWRITE_COLOR_F* paletteEntries) mut => VT.GetPaletteEntries(ref this, colorPaletteIndex, firstEntryIndex, entryCount, paletteEntries);
		public HRESULT GetRecommendedRenderingMode(float fontEmSize, float dpiX, float dpiY, DWRITE_MATRIX* transform, BOOL isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, out DWRITE_RENDERING_MODE renderingMode, out DWRITE_GRID_FIT_MODE gridFitMode) mut => VT.GetRecommendedRenderingMode(ref this, fontEmSize, dpiX, dpiY, transform, isSideways, outlineThreshold, measuringMode, renderingParams, out renderingMode, out gridFitMode);

		[CRepr]
		public struct VTable : IDWriteFontFace1.VTable
		{
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFontFace2 self) IsColorFont;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontFace2 self) GetColorPaletteCount;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontFace2 self) GetPaletteEntryCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace2 self, uint32 colorPaletteIndex, uint32 firstEntryIndex, uint32 entryCount, DWRITE_COLOR_F* paletteEntries) GetPaletteEntries;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace2 self, float fontEmSize, float dpiX, float dpiY, DWRITE_MATRIX* transform, BOOL isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, out DWRITE_RENDERING_MODE renderingMode, out DWRITE_GRID_FIT_MODE gridFitMode) GetRecommendedRenderingMode;
		}
	}
	[CRepr]
	public struct IDWriteColorGlyphRunEnumerator : IUnknown
	{
		public const new Guid IID = .(0xd31fbe17, 0xf157, 0x41a2, 0x8d, 0x24, 0xcb, 0x77, 0x9e, 0x05, 0x60, 0xe8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MoveNext(out BOOL hasRun) mut => VT.MoveNext(ref this, out hasRun);
		public HRESULT GetCurrentRun(out DWRITE_COLOR_GLYPH_RUN* colorGlyphRun) mut => VT.GetCurrentRun(ref this, out colorGlyphRun);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteColorGlyphRunEnumerator self, out BOOL hasRun) MoveNext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteColorGlyphRunEnumerator self, out DWRITE_COLOR_GLYPH_RUN* colorGlyphRun) GetCurrentRun;
		}
	}
	[CRepr]
	public struct IDWriteRenderingParams2 : IDWriteRenderingParams1
	{
		public const new Guid IID = .(0xf9d711c3, 0x9777, 0x40ae, 0x87, 0xe8, 0x3e, 0x5a, 0xf9, 0xbf, 0x09, 0x48);
		
		public new VTable* VT { get => (.)vt; }
		
		public DWRITE_GRID_FIT_MODE GetGridFitMode() mut => VT.GetGridFitMode(ref this);

		[CRepr]
		public struct VTable : IDWriteRenderingParams1.VTable
		{
			public new function [CallingConvention(.Stdcall)] DWRITE_GRID_FIT_MODE(ref IDWriteRenderingParams2 self) GetGridFitMode;
		}
	}
	[CRepr]
	public struct IDWriteFactory2 : IDWriteFactory1
	{
		public const new Guid IID = .(0x0439fc60, 0xca44, 0x4994, 0x8d, 0xee, 0x3a, 0x9a, 0xf7, 0xb7, 0x32, 0xec);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSystemFontFallback(out IDWriteFontFallback* fontFallback) mut => VT.GetSystemFontFallback(ref this, out fontFallback);
		public HRESULT CreateFontFallbackBuilder(out IDWriteFontFallbackBuilder* fontFallbackBuilder) mut => VT.CreateFontFallbackBuilder(ref this, out fontFallbackBuilder);
		public HRESULT TranslateColorGlyphRun(float baselineOriginX, float baselineOriginY, in DWRITE_GLYPH_RUN glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, DWRITE_MEASURING_MODE measuringMode, DWRITE_MATRIX* worldToDeviceTransform, uint32 colorPaletteIndex, out IDWriteColorGlyphRunEnumerator* colorLayers) mut => VT.TranslateColorGlyphRun(ref this, baselineOriginX, baselineOriginY, glyphRun, glyphRunDescription, measuringMode, worldToDeviceTransform, colorPaletteIndex, out colorLayers);
		public HRESULT CreateCustomRenderingParams(float gamma, float enhancedContrast, float grayscaleEnhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, DWRITE_GRID_FIT_MODE gridFitMode, out IDWriteRenderingParams2* renderingParams) mut => VT.CreateCustomRenderingParams(ref this, gamma, enhancedContrast, grayscaleEnhancedContrast, clearTypeLevel, pixelGeometry, renderingMode, gridFitMode, out renderingParams);
		public HRESULT CreateGlyphRunAnalysis(in DWRITE_GLYPH_RUN glyphRun, DWRITE_MATRIX* transform, DWRITE_RENDERING_MODE renderingMode, DWRITE_MEASURING_MODE measuringMode, DWRITE_GRID_FIT_MODE gridFitMode, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode, float baselineOriginX, float baselineOriginY, out IDWriteGlyphRunAnalysis* glyphRunAnalysis) mut => VT.CreateGlyphRunAnalysis(ref this, glyphRun, transform, renderingMode, measuringMode, gridFitMode, antialiasMode, baselineOriginX, baselineOriginY, out glyphRunAnalysis);

		[CRepr]
		public struct VTable : IDWriteFactory1.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory2 self, out IDWriteFontFallback* fontFallback) GetSystemFontFallback;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory2 self, out IDWriteFontFallbackBuilder* fontFallbackBuilder) CreateFontFallbackBuilder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory2 self, float baselineOriginX, float baselineOriginY, in DWRITE_GLYPH_RUN glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, DWRITE_MEASURING_MODE measuringMode, DWRITE_MATRIX* worldToDeviceTransform, uint32 colorPaletteIndex, out IDWriteColorGlyphRunEnumerator* colorLayers) TranslateColorGlyphRun;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory2 self, float gamma, float enhancedContrast, float grayscaleEnhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, DWRITE_GRID_FIT_MODE gridFitMode, out IDWriteRenderingParams2* renderingParams) CreateCustomRenderingParams;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory2 self, in DWRITE_GLYPH_RUN glyphRun, DWRITE_MATRIX* transform, DWRITE_RENDERING_MODE renderingMode, DWRITE_MEASURING_MODE measuringMode, DWRITE_GRID_FIT_MODE gridFitMode, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode, float baselineOriginX, float baselineOriginY, out IDWriteGlyphRunAnalysis* glyphRunAnalysis) CreateGlyphRunAnalysis;
		}
	}
	[CRepr]
	public struct IDWriteRenderingParams3 : IDWriteRenderingParams2
	{
		public const new Guid IID = .(0xb7924baa, 0x391b, 0x412a, 0x8c, 0x5c, 0xe4, 0x4c, 0xc2, 0xd8, 0x67, 0xdc);
		
		public new VTable* VT { get => (.)vt; }
		
		public DWRITE_RENDERING_MODE1 GetRenderingMode1() mut => VT.GetRenderingMode1(ref this);

		[CRepr]
		public struct VTable : IDWriteRenderingParams2.VTable
		{
			public new function [CallingConvention(.Stdcall)] DWRITE_RENDERING_MODE1(ref IDWriteRenderingParams3 self) GetRenderingMode1;
		}
	}
	[CRepr]
	public struct IDWriteFactory3 : IDWriteFactory2
	{
		public const new Guid IID = .(0x9a1b41c3, 0xd3bb, 0x466a, 0x87, 0xfc, 0xfe, 0x67, 0x55, 0x6a, 0x3b, 0x65);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateGlyphRunAnalysis(in DWRITE_GLYPH_RUN glyphRun, DWRITE_MATRIX* transform, DWRITE_RENDERING_MODE1 renderingMode, DWRITE_MEASURING_MODE measuringMode, DWRITE_GRID_FIT_MODE gridFitMode, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode, float baselineOriginX, float baselineOriginY, out IDWriteGlyphRunAnalysis* glyphRunAnalysis) mut => VT.CreateGlyphRunAnalysis(ref this, glyphRun, transform, renderingMode, measuringMode, gridFitMode, antialiasMode, baselineOriginX, baselineOriginY, out glyphRunAnalysis);
		public HRESULT CreateCustomRenderingParams(float gamma, float enhancedContrast, float grayscaleEnhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE1 renderingMode, DWRITE_GRID_FIT_MODE gridFitMode, out IDWriteRenderingParams3* renderingParams) mut => VT.CreateCustomRenderingParams(ref this, gamma, enhancedContrast, grayscaleEnhancedContrast, clearTypeLevel, pixelGeometry, renderingMode, gridFitMode, out renderingParams);
		public HRESULT CreateFontFaceReference(ref IDWriteFontFile fontFile, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, out IDWriteFontFaceReference* fontFaceReference) mut => VT.CreateFontFaceReference(ref this, ref fontFile, faceIndex, fontSimulations, out fontFaceReference);
		public HRESULT CreateFontFaceReference(PWSTR filePath, FILETIME* lastWriteTime, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, out IDWriteFontFaceReference* fontFaceReference) mut => VT.CreateFontFaceReference2(ref this, filePath, lastWriteTime, faceIndex, fontSimulations, out fontFaceReference);
		public HRESULT GetSystemFontSet(out IDWriteFontSet* fontSet) mut => VT.GetSystemFontSet(ref this, out fontSet);
		public HRESULT CreateFontSetBuilder(out IDWriteFontSetBuilder* fontSetBuilder) mut => VT.CreateFontSetBuilder(ref this, out fontSetBuilder);
		public HRESULT CreateFontCollectionFromFontSet(ref IDWriteFontSet fontSet, out IDWriteFontCollection1* fontCollection) mut => VT.CreateFontCollectionFromFontSet(ref this, ref fontSet, out fontCollection);
		public HRESULT GetSystemFontCollection(BOOL includeDownloadableFonts, out IDWriteFontCollection1* fontCollection, BOOL checkForUpdates) mut => VT.GetSystemFontCollection(ref this, includeDownloadableFonts, out fontCollection, checkForUpdates);
		public HRESULT GetFontDownloadQueue(out IDWriteFontDownloadQueue* fontDownloadQueue) mut => VT.GetFontDownloadQueue(ref this, out fontDownloadQueue);

		[CRepr]
		public struct VTable : IDWriteFactory2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory3 self, in DWRITE_GLYPH_RUN glyphRun, DWRITE_MATRIX* transform, DWRITE_RENDERING_MODE1 renderingMode, DWRITE_MEASURING_MODE measuringMode, DWRITE_GRID_FIT_MODE gridFitMode, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode, float baselineOriginX, float baselineOriginY, out IDWriteGlyphRunAnalysis* glyphRunAnalysis) CreateGlyphRunAnalysis;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory3 self, float gamma, float enhancedContrast, float grayscaleEnhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE1 renderingMode, DWRITE_GRID_FIT_MODE gridFitMode, out IDWriteRenderingParams3* renderingParams) CreateCustomRenderingParams;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory3 self, ref IDWriteFontFile fontFile, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, out IDWriteFontFaceReference* fontFaceReference) CreateFontFaceReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory3 self, PWSTR filePath, FILETIME* lastWriteTime, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, out IDWriteFontFaceReference* fontFaceReference) CreateFontFaceReference2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory3 self, out IDWriteFontSet* fontSet) GetSystemFontSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory3 self, out IDWriteFontSetBuilder* fontSetBuilder) CreateFontSetBuilder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory3 self, ref IDWriteFontSet fontSet, out IDWriteFontCollection1* fontCollection) CreateFontCollectionFromFontSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory3 self, BOOL includeDownloadableFonts, out IDWriteFontCollection1* fontCollection, BOOL checkForUpdates) GetSystemFontCollection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory3 self, out IDWriteFontDownloadQueue* fontDownloadQueue) GetFontDownloadQueue;
		}
	}
	[CRepr]
	public struct IDWriteFontSet : IUnknown
	{
		public const new Guid IID = .(0x53585141, 0xd9f8, 0x4095, 0x83, 0x21, 0xd7, 0x3c, 0xf6, 0xbd, 0x11, 0x6b);
		
		public new VTable* VT { get => (.)vt; }
		
		public uint32 GetFontCount() mut => VT.GetFontCount(ref this);
		public HRESULT GetFontFaceReference(uint32 listIndex, out IDWriteFontFaceReference* fontFaceReference) mut => VT.GetFontFaceReference(ref this, listIndex, out fontFaceReference);
		public HRESULT FindFontFaceReference(ref IDWriteFontFaceReference fontFaceReference, out uint32 listIndex, out BOOL exists) mut => VT.FindFontFaceReference(ref this, ref fontFaceReference, out listIndex, out exists);
		public HRESULT FindFontFace(ref IDWriteFontFace fontFace, out uint32 listIndex, out BOOL exists) mut => VT.FindFontFace(ref this, ref fontFace, out listIndex, out exists);
		public HRESULT GetPropertyValues(DWRITE_FONT_PROPERTY_ID propertyID, out IDWriteStringList* values) mut => VT.GetPropertyValues(ref this, propertyID, out values);
		public HRESULT GetPropertyValues(DWRITE_FONT_PROPERTY_ID propertyID, PWSTR preferredLocaleNames, out IDWriteStringList* values) mut => VT.GetPropertyValues2(ref this, propertyID, preferredLocaleNames, out values);
		public HRESULT GetPropertyValues(uint32 listIndex, DWRITE_FONT_PROPERTY_ID propertyId, out BOOL exists, IDWriteLocalizedStrings** values) mut => VT.GetPropertyValues3(ref this, listIndex, propertyId, out exists, values);
		public HRESULT GetPropertyOccurrenceCount(in DWRITE_FONT_PROPERTY property, out uint32 propertyOccurrenceCount) mut => VT.GetPropertyOccurrenceCount(ref this, property, out propertyOccurrenceCount);
		public HRESULT GetMatchingFonts(PWSTR familyName, DWRITE_FONT_WEIGHT fontWeight, DWRITE_FONT_STRETCH fontStretch, DWRITE_FONT_STYLE fontStyle, out IDWriteFontSet* filteredSet) mut => VT.GetMatchingFonts(ref this, familyName, fontWeight, fontStretch, fontStyle, out filteredSet);
		public HRESULT GetMatchingFonts(DWRITE_FONT_PROPERTY* properties, uint32 propertyCount, out IDWriteFontSet* filteredSet) mut => VT.GetMatchingFonts2(ref this, properties, propertyCount, out filteredSet);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontSet self) GetFontCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet self, uint32 listIndex, out IDWriteFontFaceReference* fontFaceReference) GetFontFaceReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet self, ref IDWriteFontFaceReference fontFaceReference, out uint32 listIndex, out BOOL exists) FindFontFaceReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet self, ref IDWriteFontFace fontFace, out uint32 listIndex, out BOOL exists) FindFontFace;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet self, DWRITE_FONT_PROPERTY_ID propertyID, out IDWriteStringList* values) GetPropertyValues;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet self, DWRITE_FONT_PROPERTY_ID propertyID, PWSTR preferredLocaleNames, out IDWriteStringList* values) GetPropertyValues2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet self, uint32 listIndex, DWRITE_FONT_PROPERTY_ID propertyId, out BOOL exists, IDWriteLocalizedStrings** values) GetPropertyValues3;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet self, in DWRITE_FONT_PROPERTY property, out uint32 propertyOccurrenceCount) GetPropertyOccurrenceCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet self, PWSTR familyName, DWRITE_FONT_WEIGHT fontWeight, DWRITE_FONT_STRETCH fontStretch, DWRITE_FONT_STYLE fontStyle, out IDWriteFontSet* filteredSet) GetMatchingFonts;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet self, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount, out IDWriteFontSet* filteredSet) GetMatchingFonts2;
		}
	}
	[CRepr]
	public struct IDWriteFontSetBuilder : IUnknown
	{
		public const new Guid IID = .(0x2f642afe, 0x9c68, 0x4f40, 0xb8, 0xbe, 0x45, 0x74, 0x01, 0xaf, 0xcb, 0x3d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddFontFaceReference(ref IDWriteFontFaceReference fontFaceReference, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount) mut => VT.AddFontFaceReference(ref this, ref fontFaceReference, properties, propertyCount);
		public HRESULT AddFontFaceReference(ref IDWriteFontFaceReference fontFaceReference) mut => VT.AddFontFaceReference2(ref this, ref fontFaceReference);
		public HRESULT AddFontSet(ref IDWriteFontSet fontSet) mut => VT.AddFontSet(ref this, ref fontSet);
		public HRESULT CreateFontSet(out IDWriteFontSet* fontSet) mut => VT.CreateFontSet(ref this, out fontSet);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSetBuilder self, ref IDWriteFontFaceReference fontFaceReference, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount) AddFontFaceReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSetBuilder self, ref IDWriteFontFaceReference fontFaceReference) AddFontFaceReference2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSetBuilder self, ref IDWriteFontSet fontSet) AddFontSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSetBuilder self, out IDWriteFontSet* fontSet) CreateFontSet;
		}
	}
	[CRepr]
	public struct IDWriteFontCollection1 : IDWriteFontCollection
	{
		public const new Guid IID = .(0x53585141, 0xd9f8, 0x4095, 0x83, 0x21, 0xd7, 0x3c, 0xf6, 0xbd, 0x11, 0x6c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFontSet(out IDWriteFontSet* fontSet) mut => VT.GetFontSet(ref this, out fontSet);
		public HRESULT GetFontFamily(uint32 index, out IDWriteFontFamily1* fontFamily) mut => VT.GetFontFamily(ref this, index, out fontFamily);

		[CRepr]
		public struct VTable : IDWriteFontCollection.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontCollection1 self, out IDWriteFontSet* fontSet) GetFontSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontCollection1 self, uint32 index, out IDWriteFontFamily1* fontFamily) GetFontFamily;
		}
	}
	[CRepr]
	public struct IDWriteFontFamily1 : IDWriteFontFamily
	{
		public const new Guid IID = .(0xda20d8ef, 0x812a, 0x4c43, 0x98, 0x02, 0x62, 0xec, 0x4a, 0xbd, 0x7a, 0xdf);
		
		public new VTable* VT { get => (.)vt; }
		
		public DWRITE_LOCALITY GetFontLocality(uint32 listIndex) mut => VT.GetFontLocality(ref this, listIndex);
		public HRESULT GetFont(uint32 listIndex, out IDWriteFont3* font) mut => VT.GetFont(ref this, listIndex, out font);
		public HRESULT GetFontFaceReference(uint32 listIndex, out IDWriteFontFaceReference* fontFaceReference) mut => VT.GetFontFaceReference(ref this, listIndex, out fontFaceReference);

		[CRepr]
		public struct VTable : IDWriteFontFamily.VTable
		{
			public new function [CallingConvention(.Stdcall)] DWRITE_LOCALITY(ref IDWriteFontFamily1 self, uint32 listIndex) GetFontLocality;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFamily1 self, uint32 listIndex, out IDWriteFont3* font) GetFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFamily1 self, uint32 listIndex, out IDWriteFontFaceReference* fontFaceReference) GetFontFaceReference;
		}
	}
	[CRepr]
	public struct IDWriteFontList1 : IDWriteFontList
	{
		public const new Guid IID = .(0xda20d8ef, 0x812a, 0x4c43, 0x98, 0x02, 0x62, 0xec, 0x4a, 0xbd, 0x7a, 0xde);
		
		public new VTable* VT { get => (.)vt; }
		
		public DWRITE_LOCALITY GetFontLocality(uint32 listIndex) mut => VT.GetFontLocality(ref this, listIndex);
		public HRESULT GetFont(uint32 listIndex, out IDWriteFont3* font) mut => VT.GetFont(ref this, listIndex, out font);
		public HRESULT GetFontFaceReference(uint32 listIndex, out IDWriteFontFaceReference* fontFaceReference) mut => VT.GetFontFaceReference(ref this, listIndex, out fontFaceReference);

		[CRepr]
		public struct VTable : IDWriteFontList.VTable
		{
			public new function [CallingConvention(.Stdcall)] DWRITE_LOCALITY(ref IDWriteFontList1 self, uint32 listIndex) GetFontLocality;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontList1 self, uint32 listIndex, out IDWriteFont3* font) GetFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontList1 self, uint32 listIndex, out IDWriteFontFaceReference* fontFaceReference) GetFontFaceReference;
		}
	}
	[CRepr]
	public struct IDWriteFontFaceReference : IUnknown
	{
		public const new Guid IID = .(0x5e7fa7ca, 0xdde3, 0x424c, 0x89, 0xf0, 0x9f, 0xcd, 0x6f, 0xed, 0x58, 0xcd);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateFontFace(out IDWriteFontFace3* fontFace) mut => VT.CreateFontFace(ref this, out fontFace);
		public HRESULT CreateFontFaceWithSimulations(DWRITE_FONT_SIMULATIONS fontFaceSimulationFlags, out IDWriteFontFace3* fontFace) mut => VT.CreateFontFaceWithSimulations(ref this, fontFaceSimulationFlags, out fontFace);
		public BOOL ComEquals(ref IDWriteFontFaceReference fontFaceReference) mut => VT.ComEquals(ref this, ref fontFaceReference);
		public uint32 GetFontFaceIndex() mut => VT.GetFontFaceIndex(ref this);
		public DWRITE_FONT_SIMULATIONS GetSimulations() mut => VT.GetSimulations(ref this);
		public HRESULT GetFontFile(out IDWriteFontFile* fontFile) mut => VT.GetFontFile(ref this, out fontFile);
		public uint64 GetLocalFileSize() mut => VT.GetLocalFileSize(ref this);
		public uint64 GetFileSize() mut => VT.GetFileSize(ref this);
		public HRESULT GetFileTime(out FILETIME lastWriteTime) mut => VT.GetFileTime(ref this, out lastWriteTime);
		public DWRITE_LOCALITY GetLocality() mut => VT.GetLocality(ref this);
		public HRESULT EnqueueFontDownloadRequest() mut => VT.EnqueueFontDownloadRequest(ref this);
		public HRESULT EnqueueCharacterDownloadRequest(char16* characters, uint32 characterCount) mut => VT.EnqueueCharacterDownloadRequest(ref this, characters, characterCount);
		public HRESULT EnqueueGlyphDownloadRequest(uint16* glyphIndices, uint32 glyphCount) mut => VT.EnqueueGlyphDownloadRequest(ref this, glyphIndices, glyphCount);
		public HRESULT EnqueueFileFragmentDownloadRequest(uint64 fileOffset, uint64 fragmentSize) mut => VT.EnqueueFileFragmentDownloadRequest(ref this, fileOffset, fragmentSize);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFaceReference self, out IDWriteFontFace3* fontFace) CreateFontFace;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFaceReference self, DWRITE_FONT_SIMULATIONS fontFaceSimulationFlags, out IDWriteFontFace3* fontFace) CreateFontFaceWithSimulations;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFontFaceReference self, ref IDWriteFontFaceReference fontFaceReference) ComEquals;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontFaceReference self) GetFontFaceIndex;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_SIMULATIONS(ref IDWriteFontFaceReference self) GetSimulations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFaceReference self, out IDWriteFontFile* fontFile) GetFontFile;
			public new function [CallingConvention(.Stdcall)] uint64(ref IDWriteFontFaceReference self) GetLocalFileSize;
			public new function [CallingConvention(.Stdcall)] uint64(ref IDWriteFontFaceReference self) GetFileSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFaceReference self, out FILETIME lastWriteTime) GetFileTime;
			public new function [CallingConvention(.Stdcall)] DWRITE_LOCALITY(ref IDWriteFontFaceReference self) GetLocality;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFaceReference self) EnqueueFontDownloadRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFaceReference self, char16* characters, uint32 characterCount) EnqueueCharacterDownloadRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFaceReference self, uint16* glyphIndices, uint32 glyphCount) EnqueueGlyphDownloadRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFaceReference self, uint64 fileOffset, uint64 fragmentSize) EnqueueFileFragmentDownloadRequest;
		}
	}
	[CRepr]
	public struct IDWriteFont3 : IDWriteFont2
	{
		public const new Guid IID = .(0x29748ed6, 0x8c9c, 0x4a6a, 0xbe, 0x0b, 0xd9, 0x12, 0xe8, 0x53, 0x89, 0x44);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateFontFace(out IDWriteFontFace3* fontFace) mut => VT.CreateFontFace(ref this, out fontFace);
		public BOOL ComEquals(ref IDWriteFont font) mut => VT.ComEquals(ref this, ref font);
		public HRESULT GetFontFaceReference(out IDWriteFontFaceReference* fontFaceReference) mut => VT.GetFontFaceReference(ref this, out fontFaceReference);
		public BOOL HasCharacter(uint32 unicodeValue) mut => VT.HasCharacter(ref this, unicodeValue);
		public DWRITE_LOCALITY GetLocality() mut => VT.GetLocality(ref this);

		[CRepr]
		public struct VTable : IDWriteFont2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFont3 self, out IDWriteFontFace3* fontFace) CreateFontFace;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFont3 self, ref IDWriteFont font) ComEquals;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFont3 self, out IDWriteFontFaceReference* fontFaceReference) GetFontFaceReference;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFont3 self, uint32 unicodeValue) HasCharacter;
			public new function [CallingConvention(.Stdcall)] DWRITE_LOCALITY(ref IDWriteFont3 self) GetLocality;
		}
	}
	[CRepr]
	public struct IDWriteFontFace3 : IDWriteFontFace2
	{
		public const new Guid IID = .(0xd37d7598, 0x09be, 0x4222, 0xa2, 0x36, 0x20, 0x81, 0x34, 0x1c, 0xc1, 0xf2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFontFaceReference(out IDWriteFontFaceReference* fontFaceReference) mut => VT.GetFontFaceReference(ref this, out fontFaceReference);
		public void GetPanose(out DWRITE_PANOSE panose) mut => VT.GetPanose(ref this, out panose);
		public DWRITE_FONT_WEIGHT GetWeight() mut => VT.GetWeight(ref this);
		public DWRITE_FONT_STRETCH GetStretch() mut => VT.GetStretch(ref this);
		public DWRITE_FONT_STYLE GetStyle() mut => VT.GetStyle(ref this);
		public HRESULT GetFamilyNames(out IDWriteLocalizedStrings* names) mut => VT.GetFamilyNames(ref this, out names);
		public HRESULT GetFaceNames(out IDWriteLocalizedStrings* names) mut => VT.GetFaceNames(ref this, out names);
		public HRESULT GetInformationalStrings(DWRITE_INFORMATIONAL_STRING_ID informationalStringID, IDWriteLocalizedStrings** informationalStrings, out BOOL exists) mut => VT.GetInformationalStrings(ref this, informationalStringID, informationalStrings, out exists);
		public BOOL HasCharacter(uint32 unicodeValue) mut => VT.HasCharacter(ref this, unicodeValue);
		public HRESULT GetRecommendedRenderingMode(float fontEmSize, float dpiX, float dpiY, DWRITE_MATRIX* transform, BOOL isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, out DWRITE_RENDERING_MODE1 renderingMode, out DWRITE_GRID_FIT_MODE gridFitMode) mut => VT.GetRecommendedRenderingMode(ref this, fontEmSize, dpiX, dpiY, transform, isSideways, outlineThreshold, measuringMode, renderingParams, out renderingMode, out gridFitMode);
		public BOOL IsCharacterLocal(uint32 unicodeValue) mut => VT.IsCharacterLocal(ref this, unicodeValue);
		public BOOL IsGlyphLocal(uint16 glyphId) mut => VT.IsGlyphLocal(ref this, glyphId);
		public HRESULT AreCharactersLocal(char16* characters, uint32 characterCount, BOOL enqueueIfNotLocal, out BOOL isLocal) mut => VT.AreCharactersLocal(ref this, characters, characterCount, enqueueIfNotLocal, out isLocal);
		public HRESULT AreGlyphsLocal(uint16* glyphIndices, uint32 glyphCount, BOOL enqueueIfNotLocal, out BOOL isLocal) mut => VT.AreGlyphsLocal(ref this, glyphIndices, glyphCount, enqueueIfNotLocal, out isLocal);

		[CRepr]
		public struct VTable : IDWriteFontFace2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace3 self, out IDWriteFontFaceReference* fontFaceReference) GetFontFaceReference;
			public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFace3 self, out DWRITE_PANOSE panose) GetPanose;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_WEIGHT(ref IDWriteFontFace3 self) GetWeight;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_STRETCH(ref IDWriteFontFace3 self) GetStretch;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_STYLE(ref IDWriteFontFace3 self) GetStyle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace3 self, out IDWriteLocalizedStrings* names) GetFamilyNames;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace3 self, out IDWriteLocalizedStrings* names) GetFaceNames;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace3 self, DWRITE_INFORMATIONAL_STRING_ID informationalStringID, IDWriteLocalizedStrings** informationalStrings, out BOOL exists) GetInformationalStrings;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFontFace3 self, uint32 unicodeValue) HasCharacter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace3 self, float fontEmSize, float dpiX, float dpiY, DWRITE_MATRIX* transform, BOOL isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, out DWRITE_RENDERING_MODE1 renderingMode, out DWRITE_GRID_FIT_MODE gridFitMode) GetRecommendedRenderingMode;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFontFace3 self, uint32 unicodeValue) IsCharacterLocal;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFontFace3 self, uint16 glyphId) IsGlyphLocal;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace3 self, char16* characters, uint32 characterCount, BOOL enqueueIfNotLocal, out BOOL isLocal) AreCharactersLocal;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace3 self, uint16* glyphIndices, uint32 glyphCount, BOOL enqueueIfNotLocal, out BOOL isLocal) AreGlyphsLocal;
		}
	}
	[CRepr]
	public struct IDWriteStringList : IUnknown
	{
		public const new Guid IID = .(0xcfee3140, 0x1157, 0x47ca, 0x8b, 0x85, 0x31, 0xbf, 0xcf, 0x3f, 0x2d, 0x0e);
		
		public new VTable* VT { get => (.)vt; }
		
		public uint32 GetCount() mut => VT.GetCount(ref this);
		public HRESULT GetLocaleNameLength(uint32 listIndex, out uint32 length) mut => VT.GetLocaleNameLength(ref this, listIndex, out length);
		public HRESULT GetLocaleName(uint32 listIndex, char16* localeName, uint32 size) mut => VT.GetLocaleName(ref this, listIndex, localeName, size);
		public HRESULT GetStringLength(uint32 listIndex, out uint32 length) mut => VT.GetStringLength(ref this, listIndex, out length);
		public HRESULT GetString(uint32 listIndex, char16* stringBuffer, uint32 stringBufferSize) mut => VT.GetString(ref this, listIndex, stringBuffer, stringBufferSize);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteStringList self) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteStringList self, uint32 listIndex, out uint32 length) GetLocaleNameLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteStringList self, uint32 listIndex, char16* localeName, uint32 size) GetLocaleName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteStringList self, uint32 listIndex, out uint32 length) GetStringLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteStringList self, uint32 listIndex, char16* stringBuffer, uint32 stringBufferSize) GetString;
		}
	}
	[CRepr]
	public struct IDWriteFontDownloadListener : IUnknown
	{
		public const new Guid IID = .(0xb06fe5b9, 0x43ec, 0x4393, 0x88, 0x1b, 0xdb, 0xe4, 0xdc, 0x72, 0xfd, 0xa7);
		
		public new VTable* VT { get => (.)vt; }
		
		public void DownloadCompleted(ref IDWriteFontDownloadQueue downloadQueue, IUnknown* context, HRESULT downloadResult) mut => VT.DownloadCompleted(ref this, ref downloadQueue, context, downloadResult);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontDownloadListener self, ref IDWriteFontDownloadQueue downloadQueue, IUnknown* context, HRESULT downloadResult) DownloadCompleted;
		}
	}
	[CRepr]
	public struct IDWriteFontDownloadQueue : IUnknown
	{
		public const new Guid IID = .(0xb71e6052, 0x5aea, 0x4fa3, 0x83, 0x2e, 0xf6, 0x0d, 0x43, 0x1f, 0x7e, 0x91);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddListener(ref IDWriteFontDownloadListener listener, out uint32 token) mut => VT.AddListener(ref this, ref listener, out token);
		public HRESULT RemoveListener(uint32 token) mut => VT.RemoveListener(ref this, token);
		public BOOL IsEmpty() mut => VT.IsEmpty(ref this);
		public HRESULT BeginDownload(IUnknown* context) mut => VT.BeginDownload(ref this, context);
		public HRESULT CancelDownload() mut => VT.CancelDownload(ref this);
		public uint64 GetGenerationCount() mut => VT.GetGenerationCount(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontDownloadQueue self, ref IDWriteFontDownloadListener listener, out uint32 token) AddListener;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontDownloadQueue self, uint32 token) RemoveListener;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFontDownloadQueue self) IsEmpty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontDownloadQueue self, IUnknown* context) BeginDownload;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontDownloadQueue self) CancelDownload;
			public new function [CallingConvention(.Stdcall)] uint64(ref IDWriteFontDownloadQueue self) GetGenerationCount;
		}
	}
	[CRepr]
	public struct IDWriteGdiInterop1 : IDWriteGdiInterop
	{
		public const new Guid IID = .(0x4556be70, 0x3abd, 0x4f70, 0x90, 0xbe, 0x42, 0x17, 0x80, 0xa6, 0xf5, 0x15);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateFontFromLOGFONT(in LOGFONTW logFont, IDWriteFontCollection* fontCollection, out IDWriteFont* font) mut => VT.CreateFontFromLOGFONT(ref this, logFont, fontCollection, out font);
		public HRESULT GetFontSignature(ref IDWriteFontFace fontFace, out FONTSIGNATURE fontSignature) mut => VT.GetFontSignature(ref this, ref fontFace, out fontSignature);
		public HRESULT GetFontSignature(ref IDWriteFont font, out FONTSIGNATURE fontSignature) mut => VT.GetFontSignature2(ref this, ref font, out fontSignature);
		public HRESULT GetMatchingFontsByLOGFONT(in LOGFONTA logFont, ref IDWriteFontSet fontSet, out IDWriteFontSet* filteredSet) mut => VT.GetMatchingFontsByLOGFONT(ref this, logFont, ref fontSet, out filteredSet);

		[CRepr]
		public struct VTable : IDWriteGdiInterop.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteGdiInterop1 self, in LOGFONTW logFont, IDWriteFontCollection* fontCollection, out IDWriteFont* font) CreateFontFromLOGFONT;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteGdiInterop1 self, ref IDWriteFontFace fontFace, out FONTSIGNATURE fontSignature) GetFontSignature;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteGdiInterop1 self, ref IDWriteFont font, out FONTSIGNATURE fontSignature) GetFontSignature2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteGdiInterop1 self, in LOGFONTA logFont, ref IDWriteFontSet fontSet, out IDWriteFontSet* filteredSet) GetMatchingFontsByLOGFONT;
		}
	}
	[CRepr]
	public struct IDWriteTextFormat2 : IDWriteTextFormat1
	{
		public const new Guid IID = .(0xf67e0edd, 0x9e3d, 0x4ecc, 0x8c, 0x32, 0x41, 0x83, 0x25, 0x3d, 0xfe, 0x70);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetLineSpacing(in DWRITE_LINE_SPACING lineSpacingOptions) mut => VT.SetLineSpacing(ref this, lineSpacingOptions);
		public HRESULT GetLineSpacing(out DWRITE_LINE_SPACING lineSpacingOptions) mut => VT.GetLineSpacing(ref this, out lineSpacingOptions);

		[CRepr]
		public struct VTable : IDWriteTextFormat1.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat2 self, in DWRITE_LINE_SPACING lineSpacingOptions) SetLineSpacing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat2 self, out DWRITE_LINE_SPACING lineSpacingOptions) GetLineSpacing;
		}
	}
	[CRepr]
	public struct IDWriteTextLayout3 : IDWriteTextLayout2
	{
		public const new Guid IID = .(0x07ddcd52, 0x020e, 0x4de8, 0xac, 0x33, 0x6c, 0x95, 0x3d, 0x83, 0xf9, 0x2d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InvalidateLayout() mut => VT.InvalidateLayout(ref this);
		public HRESULT SetLineSpacing(in DWRITE_LINE_SPACING lineSpacingOptions) mut => VT.SetLineSpacing(ref this, lineSpacingOptions);
		public HRESULT GetLineSpacing(out DWRITE_LINE_SPACING lineSpacingOptions) mut => VT.GetLineSpacing(ref this, out lineSpacingOptions);
		public HRESULT GetLineMetrics(DWRITE_LINE_METRICS1* lineMetrics, uint32 maxLineCount, out uint32 actualLineCount) mut => VT.GetLineMetrics(ref this, lineMetrics, maxLineCount, out actualLineCount);

		[CRepr]
		public struct VTable : IDWriteTextLayout2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout3 self) InvalidateLayout;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout3 self, in DWRITE_LINE_SPACING lineSpacingOptions) SetLineSpacing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout3 self, out DWRITE_LINE_SPACING lineSpacingOptions) GetLineSpacing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout3 self, DWRITE_LINE_METRICS1* lineMetrics, uint32 maxLineCount, out uint32 actualLineCount) GetLineMetrics;
		}
	}
	[CRepr]
	public struct IDWriteColorGlyphRunEnumerator1 : IDWriteColorGlyphRunEnumerator
	{
		public const new Guid IID = .(0x7c5f86da, 0xc7a1, 0x4f05, 0xb8, 0xe1, 0x55, 0xa1, 0x79, 0xfe, 0x5a, 0x35);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCurrentRun(out DWRITE_COLOR_GLYPH_RUN1* colorGlyphRun) mut => VT.GetCurrentRun(ref this, out colorGlyphRun);

		[CRepr]
		public struct VTable : IDWriteColorGlyphRunEnumerator.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteColorGlyphRunEnumerator1 self, out DWRITE_COLOR_GLYPH_RUN1* colorGlyphRun) GetCurrentRun;
		}
	}
	[CRepr]
	public struct IDWriteFontFace4 : IDWriteFontFace3
	{
		public const new Guid IID = .(0x27f2a904, 0x4eb8, 0x441d, 0x96, 0x78, 0x05, 0x63, 0xf5, 0x3e, 0x3e, 0x2f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetGlyphImageFormats(uint16 glyphId, uint32 pixelsPerEmFirst, uint32 pixelsPerEmLast, out DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormats) mut => VT.GetGlyphImageFormats(ref this, glyphId, pixelsPerEmFirst, pixelsPerEmLast, out glyphImageFormats);
		public DWRITE_GLYPH_IMAGE_FORMATS GetGlyphImageFormats() mut => VT.GetGlyphImageFormats2(ref this);
		public HRESULT GetGlyphImageData(uint16 glyphId, uint32 pixelsPerEm, DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, out DWRITE_GLYPH_IMAGE_DATA glyphData, void** glyphDataContext) mut => VT.GetGlyphImageData(ref this, glyphId, pixelsPerEm, glyphImageFormat, out glyphData, glyphDataContext);
		public void ReleaseGlyphImageData(void* glyphDataContext) mut => VT.ReleaseGlyphImageData(ref this, glyphDataContext);

		[CRepr]
		public struct VTable : IDWriteFontFace3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace4 self, uint16 glyphId, uint32 pixelsPerEmFirst, uint32 pixelsPerEmLast, out DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormats) GetGlyphImageFormats;
			public new function [CallingConvention(.Stdcall)] DWRITE_GLYPH_IMAGE_FORMATS(ref IDWriteFontFace4 self) GetGlyphImageFormats2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace4 self, uint16 glyphId, uint32 pixelsPerEm, DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, out DWRITE_GLYPH_IMAGE_DATA glyphData, void** glyphDataContext) GetGlyphImageData;
			public new function [CallingConvention(.Stdcall)] void(ref IDWriteFontFace4 self, void* glyphDataContext) ReleaseGlyphImageData;
		}
	}
	[CRepr]
	public struct IDWriteFactory4 : IDWriteFactory3
	{
		public const new Guid IID = .(0x4b0b5bd3, 0x0797, 0x4549, 0x8a, 0xc5, 0xfe, 0x91, 0x5c, 0xc5, 0x38, 0x56);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT TranslateColorGlyphRun(D2D_POINT_2F baselineOrigin, in DWRITE_GLYPH_RUN glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, DWRITE_GLYPH_IMAGE_FORMATS desiredGlyphImageFormats, DWRITE_MEASURING_MODE measuringMode, DWRITE_MATRIX* worldAndDpiTransform, uint32 colorPaletteIndex, out IDWriteColorGlyphRunEnumerator1* colorLayers) mut => VT.TranslateColorGlyphRun(ref this, baselineOrigin, glyphRun, glyphRunDescription, desiredGlyphImageFormats, measuringMode, worldAndDpiTransform, colorPaletteIndex, out colorLayers);
		public HRESULT ComputeGlyphOrigins(in DWRITE_GLYPH_RUN glyphRun, D2D_POINT_2F baselineOrigin, out D2D_POINT_2F glyphOrigins) mut => VT.ComputeGlyphOrigins(ref this, glyphRun, baselineOrigin, out glyphOrigins);
		public HRESULT ComputeGlyphOrigins(in DWRITE_GLYPH_RUN glyphRun, DWRITE_MEASURING_MODE measuringMode, D2D_POINT_2F baselineOrigin, DWRITE_MATRIX* worldAndDpiTransform, out D2D_POINT_2F glyphOrigins) mut => VT.ComputeGlyphOrigins2(ref this, glyphRun, measuringMode, baselineOrigin, worldAndDpiTransform, out glyphOrigins);

		[CRepr]
		public struct VTable : IDWriteFactory3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory4 self, D2D_POINT_2F baselineOrigin, in DWRITE_GLYPH_RUN glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, DWRITE_GLYPH_IMAGE_FORMATS desiredGlyphImageFormats, DWRITE_MEASURING_MODE measuringMode, DWRITE_MATRIX* worldAndDpiTransform, uint32 colorPaletteIndex, out IDWriteColorGlyphRunEnumerator1* colorLayers) TranslateColorGlyphRun;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory4 self, in DWRITE_GLYPH_RUN glyphRun, D2D_POINT_2F baselineOrigin, out D2D_POINT_2F glyphOrigins) ComputeGlyphOrigins;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory4 self, in DWRITE_GLYPH_RUN glyphRun, DWRITE_MEASURING_MODE measuringMode, D2D_POINT_2F baselineOrigin, DWRITE_MATRIX* worldAndDpiTransform, out D2D_POINT_2F glyphOrigins) ComputeGlyphOrigins2;
		}
	}
	[CRepr]
	public struct IDWriteFontSetBuilder1 : IDWriteFontSetBuilder
	{
		public const new Guid IID = .(0x3ff7715f, 0x3cdc, 0x4dc6, 0x9b, 0x72, 0xec, 0x56, 0x21, 0xdc, 0xca, 0xfd);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddFontFile(ref IDWriteFontFile fontFile) mut => VT.AddFontFile(ref this, ref fontFile);

		[CRepr]
		public struct VTable : IDWriteFontSetBuilder.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSetBuilder1 self, ref IDWriteFontFile fontFile) AddFontFile;
		}
	}
	[CRepr]
	public struct IDWriteAsyncResult : IUnknown
	{
		public const new Guid IID = .(0xce25f8fd, 0x863b, 0x4d13, 0x96, 0x51, 0xc1, 0xf8, 0x8d, 0xc7, 0x3f, 0xe2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HANDLE GetWaitHandle() mut => VT.GetWaitHandle(ref this);
		public HRESULT GetResult() mut => VT.GetResult(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HANDLE(ref IDWriteAsyncResult self) GetWaitHandle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteAsyncResult self) GetResult;
		}
	}
	[CRepr]
	public struct IDWriteRemoteFontFileStream : IDWriteFontFileStream
	{
		public const new Guid IID = .(0x4db3757a, 0x2c72, 0x4ed9, 0xb2, 0xb6, 0x1a, 0xba, 0xbe, 0x1a, 0xff, 0x9c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetLocalFileSize(out uint64 localFileSize) mut => VT.GetLocalFileSize(ref this, out localFileSize);
		public HRESULT GetFileFragmentLocality(uint64 fileOffset, uint64 fragmentSize, out BOOL isLocal, out uint64 partialSize) mut => VT.GetFileFragmentLocality(ref this, fileOffset, fragmentSize, out isLocal, out partialSize);
		public DWRITE_LOCALITY GetLocality() mut => VT.GetLocality(ref this);
		public HRESULT BeginDownload(in Guid downloadOperationID, DWRITE_FILE_FRAGMENT* fileFragments, uint32 fragmentCount, IDWriteAsyncResult** asyncResult) mut => VT.BeginDownload(ref this, downloadOperationID, fileFragments, fragmentCount, asyncResult);

		[CRepr]
		public struct VTable : IDWriteFontFileStream.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteRemoteFontFileStream self, out uint64 localFileSize) GetLocalFileSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteRemoteFontFileStream self, uint64 fileOffset, uint64 fragmentSize, out BOOL isLocal, out uint64 partialSize) GetFileFragmentLocality;
			public new function [CallingConvention(.Stdcall)] DWRITE_LOCALITY(ref IDWriteRemoteFontFileStream self) GetLocality;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteRemoteFontFileStream self, in Guid downloadOperationID, DWRITE_FILE_FRAGMENT* fileFragments, uint32 fragmentCount, IDWriteAsyncResult** asyncResult) BeginDownload;
		}
	}
	[CRepr]
	public struct IDWriteRemoteFontFileLoader : IDWriteFontFileLoader
	{
		public const new Guid IID = .(0x68648c83, 0x6ede, 0x46c0, 0xab, 0x46, 0x20, 0x08, 0x3a, 0x88, 0x7f, 0xde);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateRemoteStreamFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out IDWriteRemoteFontFileStream* fontFileStream) mut => VT.CreateRemoteStreamFromKey(ref this, fontFileReferenceKey, fontFileReferenceKeySize, out fontFileStream);
		public HRESULT GetLocalityFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out DWRITE_LOCALITY locality) mut => VT.GetLocalityFromKey(ref this, fontFileReferenceKey, fontFileReferenceKeySize, out locality);
		public HRESULT CreateFontFileReferenceFromUrl(ref IDWriteFactory factory, PWSTR baseUrl, PWSTR fontFileUrl, out IDWriteFontFile* fontFile) mut => VT.CreateFontFileReferenceFromUrl(ref this, ref factory, baseUrl, fontFileUrl, out fontFile);

		[CRepr]
		public struct VTable : IDWriteFontFileLoader.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteRemoteFontFileLoader self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out IDWriteRemoteFontFileStream* fontFileStream) CreateRemoteStreamFromKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteRemoteFontFileLoader self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, out DWRITE_LOCALITY locality) GetLocalityFromKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteRemoteFontFileLoader self, ref IDWriteFactory factory, PWSTR baseUrl, PWSTR fontFileUrl, out IDWriteFontFile* fontFile) CreateFontFileReferenceFromUrl;
		}
	}
	[CRepr]
	public struct IDWriteInMemoryFontFileLoader : IDWriteFontFileLoader
	{
		public const new Guid IID = .(0xdc102f47, 0xa12d, 0x4b1c, 0x82, 0x2d, 0x9e, 0x11, 0x7e, 0x33, 0x04, 0x3f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateInMemoryFontFileReference(ref IDWriteFactory factory, void* fontData, uint32 fontDataSize, IUnknown* ownerObject, out IDWriteFontFile* fontFile) mut => VT.CreateInMemoryFontFileReference(ref this, ref factory, fontData, fontDataSize, ownerObject, out fontFile);
		public uint32 GetFileCount() mut => VT.GetFileCount(ref this);

		[CRepr]
		public struct VTable : IDWriteFontFileLoader.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteInMemoryFontFileLoader self, ref IDWriteFactory factory, void* fontData, uint32 fontDataSize, IUnknown* ownerObject, out IDWriteFontFile* fontFile) CreateInMemoryFontFileReference;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteInMemoryFontFileLoader self) GetFileCount;
		}
	}
	[CRepr]
	public struct IDWriteFactory5 : IDWriteFactory4
	{
		public const new Guid IID = .(0x958db99a, 0xbe2a, 0x4f09, 0xaf, 0x7d, 0x65, 0x18, 0x98, 0x03, 0xd1, 0xd3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateFontSetBuilder(out IDWriteFontSetBuilder1* fontSetBuilder) mut => VT.CreateFontSetBuilder(ref this, out fontSetBuilder);
		public HRESULT CreateInMemoryFontFileLoader(out IDWriteInMemoryFontFileLoader* newLoader) mut => VT.CreateInMemoryFontFileLoader(ref this, out newLoader);
		public HRESULT CreateHttpFontFileLoader(PWSTR referrerUrl, PWSTR extraHeaders, out IDWriteRemoteFontFileLoader* newLoader) mut => VT.CreateHttpFontFileLoader(ref this, referrerUrl, extraHeaders, out newLoader);
		public DWRITE_CONTAINER_TYPE AnalyzeContainerType(void* fileData, uint32 fileDataSize) mut => VT.AnalyzeContainerType(ref this, fileData, fileDataSize);
		public HRESULT UnpackFontFile(DWRITE_CONTAINER_TYPE containerType, void* fileData, uint32 fileDataSize, out IDWriteFontFileStream* unpackedFontStream) mut => VT.UnpackFontFile(ref this, containerType, fileData, fileDataSize, out unpackedFontStream);

		[CRepr]
		public struct VTable : IDWriteFactory4.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory5 self, out IDWriteFontSetBuilder1* fontSetBuilder) CreateFontSetBuilder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory5 self, out IDWriteInMemoryFontFileLoader* newLoader) CreateInMemoryFontFileLoader;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory5 self, PWSTR referrerUrl, PWSTR extraHeaders, out IDWriteRemoteFontFileLoader* newLoader) CreateHttpFontFileLoader;
			public new function [CallingConvention(.Stdcall)] DWRITE_CONTAINER_TYPE(ref IDWriteFactory5 self, void* fileData, uint32 fileDataSize) AnalyzeContainerType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory5 self, DWRITE_CONTAINER_TYPE containerType, void* fileData, uint32 fileDataSize, out IDWriteFontFileStream* unpackedFontStream) UnpackFontFile;
		}
	}
	[CRepr]
	public struct IDWriteFactory6 : IDWriteFactory5
	{
		public const new Guid IID = .(0xf3744d80, 0x21f7, 0x42eb, 0xb3, 0x5d, 0x99, 0x5b, 0xc7, 0x2f, 0xc2, 0x23);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateFontFaceReference(ref IDWriteFontFile fontFile, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontFaceReference1* fontFaceReference) mut => VT.CreateFontFaceReference(ref this, ref fontFile, faceIndex, fontSimulations, fontAxisValues, fontAxisValueCount, out fontFaceReference);
		public HRESULT CreateFontResource(ref IDWriteFontFile fontFile, uint32 faceIndex, out IDWriteFontResource* fontResource) mut => VT.CreateFontResource(ref this, ref fontFile, faceIndex, out fontResource);
		public HRESULT GetSystemFontSet(BOOL includeDownloadableFonts, out IDWriteFontSet1* fontSet) mut => VT.GetSystemFontSet(ref this, includeDownloadableFonts, out fontSet);
		public HRESULT GetSystemFontCollection(BOOL includeDownloadableFonts, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, out IDWriteFontCollection2* fontCollection) mut => VT.GetSystemFontCollection(ref this, includeDownloadableFonts, fontFamilyModel, out fontCollection);
		public HRESULT CreateFontCollectionFromFontSet(ref IDWriteFontSet fontSet, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, out IDWriteFontCollection2* fontCollection) mut => VT.CreateFontCollectionFromFontSet(ref this, ref fontSet, fontFamilyModel, out fontCollection);
		public HRESULT CreateFontSetBuilder(out IDWriteFontSetBuilder2* fontSetBuilder) mut => VT.CreateFontSetBuilder(ref this, out fontSetBuilder);
		public HRESULT CreateTextFormat(PWSTR fontFamilyName, IDWriteFontCollection* fontCollection, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, float fontSize, PWSTR localeName, out IDWriteTextFormat3* textFormat) mut => VT.CreateTextFormat(ref this, fontFamilyName, fontCollection, fontAxisValues, fontAxisValueCount, fontSize, localeName, out textFormat);

		[CRepr]
		public struct VTable : IDWriteFactory5.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory6 self, ref IDWriteFontFile fontFile, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontFaceReference1* fontFaceReference) CreateFontFaceReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory6 self, ref IDWriteFontFile fontFile, uint32 faceIndex, out IDWriteFontResource* fontResource) CreateFontResource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory6 self, BOOL includeDownloadableFonts, out IDWriteFontSet1* fontSet) GetSystemFontSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory6 self, BOOL includeDownloadableFonts, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, out IDWriteFontCollection2* fontCollection) GetSystemFontCollection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory6 self, ref IDWriteFontSet fontSet, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, out IDWriteFontCollection2* fontCollection) CreateFontCollectionFromFontSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory6 self, out IDWriteFontSetBuilder2* fontSetBuilder) CreateFontSetBuilder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory6 self, PWSTR fontFamilyName, IDWriteFontCollection* fontCollection, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, float fontSize, PWSTR localeName, out IDWriteTextFormat3* textFormat) CreateTextFormat;
		}
	}
	[CRepr]
	public struct IDWriteFontFace5 : IDWriteFontFace4
	{
		public const new Guid IID = .(0x98eff3a5, 0xb667, 0x479a, 0xb1, 0x45, 0xe2, 0xfa, 0x5b, 0x9f, 0xdc, 0x29);
		
		public new VTable* VT { get => (.)vt; }
		
		public uint32 GetFontAxisValueCount() mut => VT.GetFontAxisValueCount(ref this);
		public HRESULT GetFontAxisValues(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) mut => VT.GetFontAxisValues(ref this, fontAxisValues, fontAxisValueCount);
		public BOOL HasVariations() mut => VT.HasVariations(ref this);
		public HRESULT GetFontResource(out IDWriteFontResource* fontResource) mut => VT.GetFontResource(ref this, out fontResource);
		public BOOL ComEquals(ref IDWriteFontFace fontFace) mut => VT.ComEquals(ref this, ref fontFace);

		[CRepr]
		public struct VTable : IDWriteFontFace4.VTable
		{
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontFace5 self) GetFontAxisValueCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace5 self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) GetFontAxisValues;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFontFace5 self) HasVariations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace5 self, out IDWriteFontResource* fontResource) GetFontResource;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFontFace5 self, ref IDWriteFontFace fontFace) ComEquals;
		}
	}
	[CRepr]
	public struct IDWriteFontResource : IUnknown
	{
		public const new Guid IID = .(0x1f803a76, 0x6871, 0x48e8, 0x98, 0x7f, 0xb9, 0x75, 0x55, 0x1c, 0x50, 0xf2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFontFile(out IDWriteFontFile* fontFile) mut => VT.GetFontFile(ref this, out fontFile);
		public uint32 GetFontFaceIndex() mut => VT.GetFontFaceIndex(ref this);
		public uint32 GetFontAxisCount() mut => VT.GetFontAxisCount(ref this);
		public HRESULT GetDefaultFontAxisValues(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) mut => VT.GetDefaultFontAxisValues(ref this, fontAxisValues, fontAxisValueCount);
		public HRESULT GetFontAxisRanges(DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount) mut => VT.GetFontAxisRanges(ref this, fontAxisRanges, fontAxisRangeCount);
		public DWRITE_FONT_AXIS_ATTRIBUTES GetFontAxisAttributes(uint32 axisIndex) mut => VT.GetFontAxisAttributes(ref this, axisIndex);
		public HRESULT GetAxisNames(uint32 axisIndex, out IDWriteLocalizedStrings* names) mut => VT.GetAxisNames(ref this, axisIndex, out names);
		public uint32 GetAxisValueNameCount(uint32 axisIndex) mut => VT.GetAxisValueNameCount(ref this, axisIndex);
		public HRESULT GetAxisValueNames(uint32 axisIndex, uint32 axisValueIndex, out DWRITE_FONT_AXIS_RANGE fontAxisRange, out IDWriteLocalizedStrings* names) mut => VT.GetAxisValueNames(ref this, axisIndex, axisValueIndex, out fontAxisRange, out names);
		public BOOL HasVariations() mut => VT.HasVariations(ref this);
		public HRESULT CreateFontFace(DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontFace5* fontFace) mut => VT.CreateFontFace(ref this, fontSimulations, fontAxisValues, fontAxisValueCount, out fontFace);
		public HRESULT CreateFontFaceReference(DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontFaceReference1* fontFaceReference) mut => VT.CreateFontFaceReference(ref this, fontSimulations, fontAxisValues, fontAxisValueCount, out fontFaceReference);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontResource self, out IDWriteFontFile* fontFile) GetFontFile;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontResource self) GetFontFaceIndex;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontResource self) GetFontAxisCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontResource self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) GetDefaultFontAxisValues;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontResource self, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount) GetFontAxisRanges;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_AXIS_ATTRIBUTES(ref IDWriteFontResource self, uint32 axisIndex) GetFontAxisAttributes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontResource self, uint32 axisIndex, out IDWriteLocalizedStrings* names) GetAxisNames;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontResource self, uint32 axisIndex) GetAxisValueNameCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontResource self, uint32 axisIndex, uint32 axisValueIndex, out DWRITE_FONT_AXIS_RANGE fontAxisRange, out IDWriteLocalizedStrings* names) GetAxisValueNames;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDWriteFontResource self) HasVariations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontResource self, DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontFace5* fontFace) CreateFontFace;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontResource self, DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontFaceReference1* fontFaceReference) CreateFontFaceReference;
		}
	}
	[CRepr]
	public struct IDWriteFontFaceReference1 : IDWriteFontFaceReference
	{
		public const new Guid IID = .(0xc081fe77, 0x2fd1, 0x41ac, 0xa5, 0xa3, 0x34, 0x98, 0x3c, 0x4b, 0xa6, 0x1a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateFontFace(out IDWriteFontFace5* fontFace) mut => VT.CreateFontFace(ref this, out fontFace);
		public uint32 GetFontAxisValueCount() mut => VT.GetFontAxisValueCount(ref this);
		public HRESULT GetFontAxisValues(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) mut => VT.GetFontAxisValues(ref this, fontAxisValues, fontAxisValueCount);

		[CRepr]
		public struct VTable : IDWriteFontFaceReference.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFaceReference1 self, out IDWriteFontFace5* fontFace) CreateFontFace;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontFaceReference1 self) GetFontAxisValueCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFaceReference1 self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) GetFontAxisValues;
		}
	}
	[CRepr]
	public struct IDWriteFontSetBuilder2 : IDWriteFontSetBuilder1
	{
		public const new Guid IID = .(0xee5ba612, 0xb131, 0x463c, 0x8f, 0x4f, 0x31, 0x89, 0xb9, 0x40, 0x1e, 0x45);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddFont(ref IDWriteFontFile fontFile, uint32 fontFaceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount) mut => VT.AddFont(ref this, ref fontFile, fontFaceIndex, fontSimulations, fontAxisValues, fontAxisValueCount, fontAxisRanges, fontAxisRangeCount, properties, propertyCount);
		public HRESULT AddFontFile(PWSTR filePath) mut => VT.AddFontFile(ref this, filePath);

		[CRepr]
		public struct VTable : IDWriteFontSetBuilder1.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSetBuilder2 self, ref IDWriteFontFile fontFile, uint32 fontFaceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount) AddFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSetBuilder2 self, PWSTR filePath) AddFontFile;
		}
	}
	[CRepr]
	public struct IDWriteFontSet1 : IDWriteFontSet
	{
		public const new Guid IID = .(0x7e9fda85, 0x6c92, 0x4053, 0xbc, 0x47, 0x7a, 0xe3, 0x53, 0x0d, 0xb4, 0xd3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetMatchingFonts(DWRITE_FONT_PROPERTY* fontProperty, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontSet1* matchingFonts) mut => VT.GetMatchingFonts(ref this, fontProperty, fontAxisValues, fontAxisValueCount, out matchingFonts);
		public HRESULT GetFirstFontResources(out IDWriteFontSet1* filteredFontSet) mut => VT.GetFirstFontResources(ref this, out filteredFontSet);
		public HRESULT GetFilteredFonts(uint32* indices, uint32 indexCount, out IDWriteFontSet1* filteredFontSet) mut => VT.GetFilteredFonts(ref this, indices, indexCount, out filteredFontSet);
		public HRESULT GetFilteredFonts(DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount, BOOL selectAnyRange, out IDWriteFontSet1* filteredFontSet) mut => VT.GetFilteredFonts2(ref this, fontAxisRanges, fontAxisRangeCount, selectAnyRange, out filteredFontSet);
		public HRESULT GetFilteredFonts(DWRITE_FONT_PROPERTY* properties, uint32 propertyCount, BOOL selectAnyProperty, out IDWriteFontSet1* filteredFontSet) mut => VT.GetFilteredFonts3(ref this, properties, propertyCount, selectAnyProperty, out filteredFontSet);
		public HRESULT GetFilteredFontIndices(DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount, BOOL selectAnyRange, uint32* indices, uint32 maxIndexCount, out uint32 actualIndexCount) mut => VT.GetFilteredFontIndices(ref this, fontAxisRanges, fontAxisRangeCount, selectAnyRange, indices, maxIndexCount, out actualIndexCount);
		public HRESULT GetFilteredFontIndices(DWRITE_FONT_PROPERTY* properties, uint32 propertyCount, BOOL selectAnyProperty, uint32* indices, uint32 maxIndexCount, out uint32 actualIndexCount) mut => VT.GetFilteredFontIndices2(ref this, properties, propertyCount, selectAnyProperty, indices, maxIndexCount, out actualIndexCount);
		public HRESULT GetFontAxisRanges(uint32 listIndex, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 maxFontAxisRangeCount, out uint32 actualFontAxisRangeCount) mut => VT.GetFontAxisRanges(ref this, listIndex, fontAxisRanges, maxFontAxisRangeCount, out actualFontAxisRangeCount);
		public HRESULT GetFontAxisRanges(DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 maxFontAxisRangeCount, out uint32 actualFontAxisRangeCount) mut => VT.GetFontAxisRanges2(ref this, fontAxisRanges, maxFontAxisRangeCount, out actualFontAxisRangeCount);
		public HRESULT GetFontFaceReference(uint32 listIndex, out IDWriteFontFaceReference1* fontFaceReference) mut => VT.GetFontFaceReference(ref this, listIndex, out fontFaceReference);
		public HRESULT CreateFontResource(uint32 listIndex, out IDWriteFontResource* fontResource) mut => VT.CreateFontResource(ref this, listIndex, out fontResource);
		public HRESULT CreateFontFace(uint32 listIndex, out IDWriteFontFace5* fontFace) mut => VT.CreateFontFace(ref this, listIndex, out fontFace);
		public DWRITE_LOCALITY GetFontLocality(uint32 listIndex) mut => VT.GetFontLocality(ref this, listIndex);

		[CRepr]
		public struct VTable : IDWriteFontSet.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet1 self, DWRITE_FONT_PROPERTY* fontProperty, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontSet1* matchingFonts) GetMatchingFonts;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet1 self, out IDWriteFontSet1* filteredFontSet) GetFirstFontResources;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet1 self, uint32* indices, uint32 indexCount, out IDWriteFontSet1* filteredFontSet) GetFilteredFonts;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet1 self, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount, BOOL selectAnyRange, out IDWriteFontSet1* filteredFontSet) GetFilteredFonts2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet1 self, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount, BOOL selectAnyProperty, out IDWriteFontSet1* filteredFontSet) GetFilteredFonts3;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet1 self, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount, BOOL selectAnyRange, uint32* indices, uint32 maxIndexCount, out uint32 actualIndexCount) GetFilteredFontIndices;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet1 self, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount, BOOL selectAnyProperty, uint32* indices, uint32 maxIndexCount, out uint32 actualIndexCount) GetFilteredFontIndices2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet1 self, uint32 listIndex, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 maxFontAxisRangeCount, out uint32 actualFontAxisRangeCount) GetFontAxisRanges;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet1 self, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 maxFontAxisRangeCount, out uint32 actualFontAxisRangeCount) GetFontAxisRanges2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet1 self, uint32 listIndex, out IDWriteFontFaceReference1* fontFaceReference) GetFontFaceReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet1 self, uint32 listIndex, out IDWriteFontResource* fontResource) CreateFontResource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet1 self, uint32 listIndex, out IDWriteFontFace5* fontFace) CreateFontFace;
			public new function [CallingConvention(.Stdcall)] DWRITE_LOCALITY(ref IDWriteFontSet1 self, uint32 listIndex) GetFontLocality;
		}
	}
	[CRepr]
	public struct IDWriteFontList2 : IDWriteFontList1
	{
		public const new Guid IID = .(0xc0763a34, 0x77af, 0x445a, 0xb7, 0x35, 0x08, 0xc3, 0x7b, 0x0a, 0x5b, 0xf5);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFontSet(out IDWriteFontSet1* fontSet) mut => VT.GetFontSet(ref this, out fontSet);

		[CRepr]
		public struct VTable : IDWriteFontList1.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontList2 self, out IDWriteFontSet1* fontSet) GetFontSet;
		}
	}
	[CRepr]
	public struct IDWriteFontFamily2 : IDWriteFontFamily1
	{
		public const new Guid IID = .(0x3ed49e77, 0xa398, 0x4261, 0xb9, 0xcf, 0xc1, 0x26, 0xc2, 0x13, 0x1e, 0xf3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetMatchingFonts(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontList2* matchingFonts) mut => VT.GetMatchingFonts(ref this, fontAxisValues, fontAxisValueCount, out matchingFonts);
		public HRESULT GetFontSet(out IDWriteFontSet1* fontSet) mut => VT.GetFontSet(ref this, out fontSet);

		[CRepr]
		public struct VTable : IDWriteFontFamily1.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFamily2 self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontList2* matchingFonts) GetMatchingFonts;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFamily2 self, out IDWriteFontSet1* fontSet) GetFontSet;
		}
	}
	[CRepr]
	public struct IDWriteFontCollection2 : IDWriteFontCollection1
	{
		public const new Guid IID = .(0x514039c6, 0x4617, 0x4064, 0xbf, 0x8b, 0x92, 0xea, 0x83, 0xe5, 0x06, 0xe0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFontFamily(uint32 index, out IDWriteFontFamily2* fontFamily) mut => VT.GetFontFamily(ref this, index, out fontFamily);
		public HRESULT GetMatchingFonts(PWSTR familyName, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontList2* fontList) mut => VT.GetMatchingFonts(ref this, familyName, fontAxisValues, fontAxisValueCount, out fontList);
		public DWRITE_FONT_FAMILY_MODEL GetFontFamilyModel() mut => VT.GetFontFamilyModel(ref this);
		public HRESULT GetFontSet(out IDWriteFontSet1* fontSet) mut => VT.GetFontSet(ref this, out fontSet);

		[CRepr]
		public struct VTable : IDWriteFontCollection1.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontCollection2 self, uint32 index, out IDWriteFontFamily2* fontFamily) GetFontFamily;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontCollection2 self, PWSTR familyName, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out IDWriteFontList2* fontList) GetMatchingFonts;
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_FAMILY_MODEL(ref IDWriteFontCollection2 self) GetFontFamilyModel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontCollection2 self, out IDWriteFontSet1* fontSet) GetFontSet;
		}
	}
	[CRepr]
	public struct IDWriteTextLayout4 : IDWriteTextLayout3
	{
		public const new Guid IID = .(0x05a9bf42, 0x223f, 0x4441, 0xb5, 0xfb, 0x82, 0x63, 0x68, 0x5f, 0x55, 0xe9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetFontAxisValues(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, DWRITE_TEXT_RANGE textRange) mut => VT.SetFontAxisValues(ref this, fontAxisValues, fontAxisValueCount, textRange);
		public uint32 GetFontAxisValueCount(uint32 currentPosition) mut => VT.GetFontAxisValueCount(ref this, currentPosition);
		public HRESULT GetFontAxisValues(uint32 currentPosition, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, DWRITE_TEXT_RANGE* textRange) mut => VT.GetFontAxisValues(ref this, currentPosition, fontAxisValues, fontAxisValueCount, textRange);
		public DWRITE_AUTOMATIC_FONT_AXES GetAutomaticFontAxes() mut => VT.GetAutomaticFontAxes(ref this);
		public HRESULT SetAutomaticFontAxes(DWRITE_AUTOMATIC_FONT_AXES automaticFontAxes) mut => VT.SetAutomaticFontAxes(ref this, automaticFontAxes);

		[CRepr]
		public struct VTable : IDWriteTextLayout3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout4 self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, DWRITE_TEXT_RANGE textRange) SetFontAxisValues;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteTextLayout4 self, uint32 currentPosition) GetFontAxisValueCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout4 self, uint32 currentPosition, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, DWRITE_TEXT_RANGE* textRange) GetFontAxisValues;
			public new function [CallingConvention(.Stdcall)] DWRITE_AUTOMATIC_FONT_AXES(ref IDWriteTextLayout4 self) GetAutomaticFontAxes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextLayout4 self, DWRITE_AUTOMATIC_FONT_AXES automaticFontAxes) SetAutomaticFontAxes;
		}
	}
	[CRepr]
	public struct IDWriteTextFormat3 : IDWriteTextFormat2
	{
		public const new Guid IID = .(0x6d3b5641, 0xe550, 0x430d, 0xa8, 0x5b, 0xb7, 0xbf, 0x48, 0xa9, 0x34, 0x27);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetFontAxisValues(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) mut => VT.SetFontAxisValues(ref this, fontAxisValues, fontAxisValueCount);
		public uint32 GetFontAxisValueCount() mut => VT.GetFontAxisValueCount(ref this);
		public HRESULT GetFontAxisValues(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) mut => VT.GetFontAxisValues(ref this, fontAxisValues, fontAxisValueCount);
		public DWRITE_AUTOMATIC_FONT_AXES GetAutomaticFontAxes() mut => VT.GetAutomaticFontAxes(ref this);
		public HRESULT SetAutomaticFontAxes(DWRITE_AUTOMATIC_FONT_AXES automaticFontAxes) mut => VT.SetAutomaticFontAxes(ref this, automaticFontAxes);

		[CRepr]
		public struct VTable : IDWriteTextFormat2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat3 self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) SetFontAxisValues;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteTextFormat3 self) GetFontAxisValueCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat3 self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) GetFontAxisValues;
			public new function [CallingConvention(.Stdcall)] DWRITE_AUTOMATIC_FONT_AXES(ref IDWriteTextFormat3 self) GetAutomaticFontAxes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteTextFormat3 self, DWRITE_AUTOMATIC_FONT_AXES automaticFontAxes) SetAutomaticFontAxes;
		}
	}
	[CRepr]
	public struct IDWriteFontFallback1 : IDWriteFontFallback
	{
		public const new Guid IID = .(0x2397599d, 0xdd0d, 0x4681, 0xbd, 0x6a, 0xf4, 0xf3, 0x1e, 0xaa, 0xde, 0x77);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MapCharacters(ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, IDWriteFontCollection* baseFontCollection, PWSTR baseFamilyName, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out uint32 mappedLength, out float scale, out IDWriteFontFace5* mappedFontFace) mut => VT.MapCharacters(ref this, ref analysisSource, textPosition, textLength, baseFontCollection, baseFamilyName, fontAxisValues, fontAxisValueCount, out mappedLength, out scale, out mappedFontFace);

		[CRepr]
		public struct VTable : IDWriteFontFallback.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFallback1 self, ref IDWriteTextAnalysisSource analysisSource, uint32 textPosition, uint32 textLength, IDWriteFontCollection* baseFontCollection, PWSTR baseFamilyName, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, out uint32 mappedLength, out float scale, out IDWriteFontFace5* mappedFontFace) MapCharacters;
		}
	}
	[CRepr]
	public struct IDWriteFontSet2 : IDWriteFontSet1
	{
		public const new Guid IID = .(0xdc7ead19, 0xe54c, 0x43af, 0xb2, 0xda, 0x4e, 0x2b, 0x79, 0xba, 0x3f, 0x7f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HANDLE GetExpirationEvent() mut => VT.GetExpirationEvent(ref this);

		[CRepr]
		public struct VTable : IDWriteFontSet1.VTable
		{
			public new function [CallingConvention(.Stdcall)] HANDLE(ref IDWriteFontSet2 self) GetExpirationEvent;
		}
	}
	[CRepr]
	public struct IDWriteFontCollection3 : IDWriteFontCollection2
	{
		public const new Guid IID = .(0xa4d055a6, 0xf9e3, 0x4e25, 0x93, 0xb7, 0x9e, 0x30, 0x9f, 0x3a, 0xf8, 0xe9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HANDLE GetExpirationEvent() mut => VT.GetExpirationEvent(ref this);

		[CRepr]
		public struct VTable : IDWriteFontCollection2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HANDLE(ref IDWriteFontCollection3 self) GetExpirationEvent;
		}
	}
	[CRepr]
	public struct IDWriteFactory7 : IDWriteFactory6
	{
		public const new Guid IID = .(0x35d0e0b3, 0x9076, 0x4d2e, 0xa0, 0x16, 0xa9, 0x1b, 0x56, 0x8a, 0x06, 0xb4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSystemFontSet(BOOL includeDownloadableFonts, out IDWriteFontSet2* fontSet) mut => VT.GetSystemFontSet(ref this, includeDownloadableFonts, out fontSet);
		public HRESULT GetSystemFontCollection(BOOL includeDownloadableFonts, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, out IDWriteFontCollection3* fontCollection) mut => VT.GetSystemFontCollection(ref this, includeDownloadableFonts, fontFamilyModel, out fontCollection);

		[CRepr]
		public struct VTable : IDWriteFactory6.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory7 self, BOOL includeDownloadableFonts, out IDWriteFontSet2* fontSet) GetSystemFontSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFactory7 self, BOOL includeDownloadableFonts, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, out IDWriteFontCollection3* fontCollection) GetSystemFontCollection;
		}
	}
	[CRepr]
	public struct IDWriteFontSet3 : IDWriteFontSet2
	{
		public const new Guid IID = .(0x7c073ef2, 0xa7f4, 0x4045, 0x8c, 0x32, 0x8a, 0xb8, 0xae, 0x64, 0x0f, 0x90);
		
		public new VTable* VT { get => (.)vt; }
		
		public DWRITE_FONT_SOURCE_TYPE GetFontSourceType(uint32 fontIndex) mut => VT.GetFontSourceType(ref this, fontIndex);
		public uint32 GetFontSourceNameLength(uint32 listIndex) mut => VT.GetFontSourceNameLength(ref this, listIndex);
		public HRESULT GetFontSourceName(uint32 listIndex, char16* stringBuffer, uint32 stringBufferSize) mut => VT.GetFontSourceName(ref this, listIndex, stringBuffer, stringBufferSize);

		[CRepr]
		public struct VTable : IDWriteFontSet2.VTable
		{
			public new function [CallingConvention(.Stdcall)] DWRITE_FONT_SOURCE_TYPE(ref IDWriteFontSet3 self, uint32 fontIndex) GetFontSourceType;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDWriteFontSet3 self, uint32 listIndex) GetFontSourceNameLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontSet3 self, uint32 listIndex, char16* stringBuffer, uint32 stringBufferSize) GetFontSourceName;
		}
	}
	[CRepr]
	public struct IDWriteFontFace6 : IDWriteFontFace5
	{
		public const new Guid IID = .(0xc4b1fe1b, 0x6e84, 0x47d5, 0xb5, 0x4c, 0xa5, 0x97, 0x98, 0x1b, 0x06, 0xad);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFamilyNames(DWRITE_FONT_FAMILY_MODEL fontFamilyModel, out IDWriteLocalizedStrings* names) mut => VT.GetFamilyNames(ref this, fontFamilyModel, out names);
		public HRESULT GetFaceNames(DWRITE_FONT_FAMILY_MODEL fontFamilyModel, out IDWriteLocalizedStrings* names) mut => VT.GetFaceNames(ref this, fontFamilyModel, out names);

		[CRepr]
		public struct VTable : IDWriteFontFace5.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace6 self, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, out IDWriteLocalizedStrings* names) GetFamilyNames;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDWriteFontFace6 self, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, out IDWriteLocalizedStrings* names) GetFaceNames;
		}
	}
	#endregion
	
	#region Functions
	[Import("dwrite.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DWriteCreateFactory(DWRITE_FACTORY_TYPE factoryType, in Guid iid, out IUnknown* factory);
	#endregion
}
