using System;

// namespace Graphics.DirectWrite
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DWRITE_ALPHA_MAX = 255;
		public const uint32 FACILITY_DWRITE = 2200;
		public const uint32 DWRITE_ERR_BASE = 20480;
		public const HRESULT DWRITE_E_REMOTEFONT = -2003283955;
		public const HRESULT DWRITE_E_DOWNLOADCANCELLED = -2003283954;
		public const HRESULT DWRITE_E_DOWNLOADFAILED = -2003283953;
		public const HRESULT DWRITE_E_TOOMANYDOWNLOADS = -2003283952;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum DWRITE_FONT_AXIS_TAG : uint32
		{
			WEIGHT = 1952999287,
			WIDTH = 1752458359,
			SLANT = 1953393779,
			OPTICAL_SIZE = 2054385775,
			ITALIC = 1818326121,
		}
		[AllowDuplicates]
		public enum DWRITE_MEASURING_MODE : int32
		{
			NATURAL = 0,
			GDI_CLASSIC = 1,
			GDI_NATURAL = 2,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum DWRITE_FACTORY_TYPE : int32
		{
			SHARED = 0,
			ISOLATED = 1,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum DWRITE_READING_DIRECTION : int32
		{
			LEFT_TO_RIGHT = 0,
			RIGHT_TO_LEFT = 1,
			TOP_TO_BOTTOM = 2,
			BOTTOM_TO_TOP = 3,
		}
		[AllowDuplicates]
		public enum DWRITE_FLOW_DIRECTION : int32
		{
			TOP_TO_BOTTOM = 0,
			BOTTOM_TO_TOP = 1,
			LEFT_TO_RIGHT = 2,
			RIGHT_TO_LEFT = 3,
		}
		[AllowDuplicates]
		public enum DWRITE_TEXT_ALIGNMENT : int32
		{
			LEADING = 0,
			TRAILING = 1,
			CENTER = 2,
			JUSTIFIED = 3,
		}
		[AllowDuplicates]
		public enum DWRITE_PARAGRAPH_ALIGNMENT : int32
		{
			NEAR = 0,
			FAR = 1,
			CENTER = 2,
		}
		[AllowDuplicates]
		public enum DWRITE_WORD_WRAPPING : int32
		{
			WRAP = 0,
			NO_WRAP = 1,
			EMERGENCY_BREAK = 2,
			WHOLE_WORD = 3,
			CHARACTER = 4,
		}
		[AllowDuplicates]
		public enum DWRITE_LINE_SPACING_METHOD : int32
		{
			DEFAULT = 0,
			UNIFORM = 1,
			PROPORTIONAL = 2,
		}
		[AllowDuplicates]
		public enum DWRITE_TRIMMING_GRANULARITY : int32
		{
			NONE = 0,
			CHARACTER = 1,
			WORD = 2,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum DWRITE_SCRIPT_SHAPES : uint32
		{
			DEFAULT = 0,
			NO_VISUAL = 1,
		}
		[AllowDuplicates]
		public enum DWRITE_BREAK_CONDITION : int32
		{
			NEUTRAL = 0,
			CAN_BREAK = 1,
			MAY_NOT_BREAK = 2,
			MUST_BREAK = 3,
		}
		[AllowDuplicates]
		public enum DWRITE_NUMBER_SUBSTITUTION_METHOD : int32
		{
			FROM_CULTURE = 0,
			CONTEXTUAL = 1,
			NONE = 2,
			NATIONAL = 3,
			TRADITIONAL = 4,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum DWRITE_PANOSE_SPACING : int32
		{
			ANY = 0,
			NO_FIT = 1,
			PROPORTIONAL_SPACED = 2,
			MONOSPACED = 3,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum DWRITE_PANOSE_CHARACTER_RANGES : int32
		{
			ANY = 0,
			NO_FIT = 1,
			EXTENDED_COLLECTION = 2,
			LITERALS = 3,
			NO_LOWER_CASE = 4,
			SMALL_CAPS = 5,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum DWRITE_OUTLINE_THRESHOLD : int32
		{
			NTIALIASED = 0,
			LIASED = 1,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum DWRITE_VERTICAL_GLYPH_ORIENTATION : int32
		{
			DEFAULT = 0,
			STACKED = 1,
		}
		[AllowDuplicates]
		public enum DWRITE_GLYPH_ORIENTATION_ANGLE : int32
		{
			_0_DEGREES = 0,
			_90_DEGREES = 1,
			_180_DEGREES = 2,
			_270_DEGREES = 3,
		}
		[AllowDuplicates]
		public enum DWRITE_TEXT_ANTIALIAS_MODE : int32
		{
			CLEARTYPE = 0,
			GRAYSCALE = 1,
		}
		[AllowDuplicates]
		public enum DWRITE_OPTICAL_ALIGNMENT : int32
		{
			NE = 0,
			_SIDE_BEARINGS = 1,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum DWRITE_LOCALITY : int32
		{
			REMOTE = 0,
			PARTIAL = 1,
			LOCAL = 2,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum DWRITE_FONT_LINE_GAP_USAGE : int32
		{
			DEFAULT = 0,
			DISABLED = 1,
			ENABLED = 2,
		}
		[AllowDuplicates]
		public enum DWRITE_CONTAINER_TYPE : int32
		{
			UNKNOWN = 0,
			WOFF = 1,
			WOFF2 = 2,
		}
		[AllowDuplicates]
		public enum DWRITE_FONT_FAMILY_MODEL : int32
		{
			TYPOGRAPHIC = 0,
			WEIGHT_STRETCH_STYLE = 1,
		}
		[AllowDuplicates]
		public enum DWRITE_AUTOMATIC_FONT_AXES : uint32
		{
			NONE = 0,
			OPTICAL_SIZE = 1,
		}
		[AllowDuplicates]
		public enum DWRITE_FONT_AXIS_ATTRIBUTES : uint32
		{
			NONE = 0,
			VARIABLE = 1,
			HIDDEN = 2,
		}
		[AllowDuplicates]
		public enum DWRITE_FONT_SOURCE_TYPE : int32
		{
			UNKNOWN = 0,
			PER_MACHINE = 1,
			PER_USER = 2,
			APPX_PACKAGE = 3,
			REMOTE_FONT_PROVIDER = 4,
		}
		
		// --- Structs ---
		
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
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDWriteFontFileLoader : IUnknown
		{
			public const new Guid IID = .(0x727cad4e, 0xd6af, 0x4c9e, 0x8a, 0x08, 0xd6, 0x95, 0xb1, 0x1c, 0xaa, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateStreamFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, IDWriteFontFileStream** fontFileStream) mut
			{
				return VT.CreateStreamFromKey(&this, fontFileReferenceKey, fontFileReferenceKeySize, fontFileStream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFontFileLoader *self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, IDWriteFontFileStream** fontFileStream) CreateStreamFromKey;
			}
		}
		[CRepr]
		public struct IDWriteLocalFontFileLoader : IDWriteFontFileLoader
		{
			public const new Guid IID = .(0xb2d9f3ec, 0xc9fe, 0x4a11, 0xa2, 0xec, 0xd8, 0x62, 0x08, 0xf7, 0xc0, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFilePathLengthFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, uint32* filePathLength) mut
			{
				return VT.GetFilePathLengthFromKey(&this, fontFileReferenceKey, fontFileReferenceKeySize, filePathLength);
			}
			public HRESULT GetFilePathFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, char16* filePath, uint32 filePathSize) mut
			{
				return VT.GetFilePathFromKey(&this, fontFileReferenceKey, fontFileReferenceKeySize, filePath, filePathSize);
			}
			public HRESULT GetLastWriteTimeFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, FILETIME* lastWriteTime) mut
			{
				return VT.GetLastWriteTimeFromKey(&this, fontFileReferenceKey, fontFileReferenceKeySize, lastWriteTime);
			}
			[CRepr]
			public struct VTable : IDWriteFontFileLoader.VTable
			{
				public new function HRESULT(IDWriteLocalFontFileLoader *self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, uint32* filePathLength) GetFilePathLengthFromKey;
				public new function HRESULT(IDWriteLocalFontFileLoader *self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, char16* filePath, uint32 filePathSize) GetFilePathFromKey;
				public new function HRESULT(IDWriteLocalFontFileLoader *self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, FILETIME* lastWriteTime) GetLastWriteTimeFromKey;
			}
		}
		[CRepr]
		public struct IDWriteFontFileStream : IUnknown
		{
			public const new Guid IID = .(0x6d4865fe, 0x0ab8, 0x4d91, 0x8f, 0x62, 0x5d, 0xd6, 0xbe, 0x34, 0xa3, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReadFileFragment(void** fragmentStart, uint64 fileOffset, uint64 fragmentSize, void** fragmentContext) mut
			{
				return VT.ReadFileFragment(&this, fragmentStart, fileOffset, fragmentSize, fragmentContext);
			}
			public void ReleaseFileFragment(void* fragmentContext) mut
			{
				VT.ReleaseFileFragment(&this, fragmentContext);
			}
			public HRESULT GetFileSize(uint64* fileSize) mut
			{
				return VT.GetFileSize(&this, fileSize);
			}
			public HRESULT GetLastWriteTime(uint64* lastWriteTime) mut
			{
				return VT.GetLastWriteTime(&this, lastWriteTime);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFontFileStream *self, void** fragmentStart, uint64 fileOffset, uint64 fragmentSize, void** fragmentContext) ReadFileFragment;
				public new function void(IDWriteFontFileStream *self, void* fragmentContext) ReleaseFileFragment;
				public new function HRESULT(IDWriteFontFileStream *self, uint64* fileSize) GetFileSize;
				public new function HRESULT(IDWriteFontFileStream *self, uint64* lastWriteTime) GetLastWriteTime;
			}
		}
		[CRepr]
		public struct IDWriteFontFile : IUnknown
		{
			public const new Guid IID = .(0x739d886a, 0xcef5, 0x47dc, 0x87, 0x69, 0x1a, 0x8b, 0x41, 0xbe, 0xbb, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetReferenceKey(void** fontFileReferenceKey, uint32* fontFileReferenceKeySize) mut
			{
				return VT.GetReferenceKey(&this, fontFileReferenceKey, fontFileReferenceKeySize);
			}
			public HRESULT GetLoader(IDWriteFontFileLoader** fontFileLoader) mut
			{
				return VT.GetLoader(&this, fontFileLoader);
			}
			public HRESULT Analyze(BOOL* isSupportedFontType, DWRITE_FONT_FILE_TYPE* fontFileType, DWRITE_FONT_FACE_TYPE* fontFaceType, uint32* numberOfFaces) mut
			{
				return VT.Analyze(&this, isSupportedFontType, fontFileType, fontFaceType, numberOfFaces);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFontFile *self, void** fontFileReferenceKey, uint32* fontFileReferenceKeySize) GetReferenceKey;
				public new function HRESULT(IDWriteFontFile *self, IDWriteFontFileLoader** fontFileLoader) GetLoader;
				public new function HRESULT(IDWriteFontFile *self, BOOL* isSupportedFontType, DWRITE_FONT_FILE_TYPE* fontFileType, DWRITE_FONT_FACE_TYPE* fontFaceType, uint32* numberOfFaces) Analyze;
			}
		}
		[CRepr]
		public struct IDWriteRenderingParams : IUnknown
		{
			public const new Guid IID = .(0x2f0da53a, 0x2add, 0x47cd, 0x82, 0xee, 0xd9, 0xec, 0x34, 0x68, 0x8e, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public float GetGamma() mut
			{
				return VT.GetGamma(&this);
			}
			public float GetEnhancedContrast() mut
			{
				return VT.GetEnhancedContrast(&this);
			}
			public float GetClearTypeLevel() mut
			{
				return VT.GetClearTypeLevel(&this);
			}
			public DWRITE_PIXEL_GEOMETRY GetPixelGeometry() mut
			{
				return VT.GetPixelGeometry(&this);
			}
			public DWRITE_RENDERING_MODE GetRenderingMode() mut
			{
				return VT.GetRenderingMode(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function float(IDWriteRenderingParams *self) GetGamma;
				public new function float(IDWriteRenderingParams *self) GetEnhancedContrast;
				public new function float(IDWriteRenderingParams *self) GetClearTypeLevel;
				public new function DWRITE_PIXEL_GEOMETRY(IDWriteRenderingParams *self) GetPixelGeometry;
				public new function DWRITE_RENDERING_MODE(IDWriteRenderingParams *self) GetRenderingMode;
			}
		}
		[CRepr]
		public struct IDWriteFontFace : IUnknown
		{
			public const new Guid IID = .(0x5f49804d, 0x7024, 0x4d43, 0xbf, 0xa9, 0xd2, 0x59, 0x84, 0xf5, 0x38, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public DWRITE_FONT_FACE_TYPE ComGetType() mut
			{
				return VT.ComGetType(&this);
			}
			public HRESULT GetFiles(uint32* numberOfFiles, IDWriteFontFile** fontFiles) mut
			{
				return VT.GetFiles(&this, numberOfFiles, fontFiles);
			}
			public uint32 GetIndex() mut
			{
				return VT.GetIndex(&this);
			}
			public DWRITE_FONT_SIMULATIONS GetSimulations() mut
			{
				return VT.GetSimulations(&this);
			}
			public BOOL IsSymbolFont() mut
			{
				return VT.IsSymbolFont(&this);
			}
			public void GetMetrics(DWRITE_FONT_METRICS* fontFaceMetrics) mut
			{
				VT.GetMetrics(&this, fontFaceMetrics);
			}
			public uint16 GetGlyphCount() mut
			{
				return VT.GetGlyphCount(&this);
			}
			public HRESULT GetDesignGlyphMetrics(uint16* glyphIndices, uint32 glyphCount, DWRITE_GLYPH_METRICS* glyphMetrics, BOOL isSideways) mut
			{
				return VT.GetDesignGlyphMetrics(&this, glyphIndices, glyphCount, glyphMetrics, isSideways);
			}
			public HRESULT GetGlyphIndices(uint32* codePoints, uint32 codePointCount, uint16* glyphIndices) mut
			{
				return VT.GetGlyphIndices(&this, codePoints, codePointCount, glyphIndices);
			}
			public HRESULT TryGetFontTable(uint32 openTypeTableTag, void** tableData, uint32* tableSize, void** tableContext, BOOL* exists) mut
			{
				return VT.TryGetFontTable(&this, openTypeTableTag, tableData, tableSize, tableContext, exists);
			}
			public void ReleaseFontTable(void* tableContext) mut
			{
				VT.ReleaseFontTable(&this, tableContext);
			}
			public HRESULT GetGlyphRunOutline(float emSize, uint16* glyphIndices, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets, uint32 glyphCount, BOOL isSideways, BOOL isRightToLeft, ID2D1SimplifiedGeometrySink* geometrySink) mut
			{
				return VT.GetGlyphRunOutline(&this, emSize, glyphIndices, glyphAdvances, glyphOffsets, glyphCount, isSideways, isRightToLeft, geometrySink);
			}
			public HRESULT GetRecommendedRenderingMode(float emSize, float pixelsPerDip, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, DWRITE_RENDERING_MODE* renderingMode) mut
			{
				return VT.GetRecommendedRenderingMode(&this, emSize, pixelsPerDip, measuringMode, renderingParams, renderingMode);
			}
			public HRESULT GetGdiCompatibleMetrics(float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, DWRITE_FONT_METRICS* fontFaceMetrics) mut
			{
				return VT.GetGdiCompatibleMetrics(&this, emSize, pixelsPerDip, transform, fontFaceMetrics);
			}
			public HRESULT GetGdiCompatibleGlyphMetrics(float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, uint16* glyphIndices, uint32 glyphCount, DWRITE_GLYPH_METRICS* glyphMetrics, BOOL isSideways) mut
			{
				return VT.GetGdiCompatibleGlyphMetrics(&this, emSize, pixelsPerDip, transform, useGdiNatural, glyphIndices, glyphCount, glyphMetrics, isSideways);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function DWRITE_FONT_FACE_TYPE(IDWriteFontFace *self) ComGetType;
				public new function HRESULT(IDWriteFontFace *self, uint32* numberOfFiles, IDWriteFontFile** fontFiles) GetFiles;
				public new function uint32(IDWriteFontFace *self) GetIndex;
				public new function DWRITE_FONT_SIMULATIONS(IDWriteFontFace *self) GetSimulations;
				public new function BOOL(IDWriteFontFace *self) IsSymbolFont;
				public new function void(IDWriteFontFace *self, DWRITE_FONT_METRICS* fontFaceMetrics) GetMetrics;
				public new function uint16(IDWriteFontFace *self) GetGlyphCount;
				public new function HRESULT(IDWriteFontFace *self, uint16* glyphIndices, uint32 glyphCount, DWRITE_GLYPH_METRICS* glyphMetrics, BOOL isSideways) GetDesignGlyphMetrics;
				public new function HRESULT(IDWriteFontFace *self, uint32* codePoints, uint32 codePointCount, uint16* glyphIndices) GetGlyphIndices;
				public new function HRESULT(IDWriteFontFace *self, uint32 openTypeTableTag, void** tableData, uint32* tableSize, void** tableContext, BOOL* exists) TryGetFontTable;
				public new function void(IDWriteFontFace *self, void* tableContext) ReleaseFontTable;
				public new function HRESULT(IDWriteFontFace *self, float emSize, uint16* glyphIndices, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets, uint32 glyphCount, BOOL isSideways, BOOL isRightToLeft, ID2D1SimplifiedGeometrySink* geometrySink) GetGlyphRunOutline;
				public new function HRESULT(IDWriteFontFace *self, float emSize, float pixelsPerDip, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, DWRITE_RENDERING_MODE* renderingMode) GetRecommendedRenderingMode;
				public new function HRESULT(IDWriteFontFace *self, float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, DWRITE_FONT_METRICS* fontFaceMetrics) GetGdiCompatibleMetrics;
				public new function HRESULT(IDWriteFontFace *self, float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, uint16* glyphIndices, uint32 glyphCount, DWRITE_GLYPH_METRICS* glyphMetrics, BOOL isSideways) GetGdiCompatibleGlyphMetrics;
			}
		}
		[CRepr]
		public struct IDWriteFontCollectionLoader : IUnknown
		{
			public const new Guid IID = .(0xcca920e4, 0x52f0, 0x492b, 0xbf, 0xa8, 0x29, 0xc7, 0x2e, 0xe0, 0xa4, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateEnumeratorFromKey(IDWriteFactory* factory, void* collectionKey, uint32 collectionKeySize, IDWriteFontFileEnumerator** fontFileEnumerator) mut
			{
				return VT.CreateEnumeratorFromKey(&this, factory, collectionKey, collectionKeySize, fontFileEnumerator);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFontCollectionLoader *self, IDWriteFactory* factory, void* collectionKey, uint32 collectionKeySize, IDWriteFontFileEnumerator** fontFileEnumerator) CreateEnumeratorFromKey;
			}
		}
		[CRepr]
		public struct IDWriteFontFileEnumerator : IUnknown
		{
			public const new Guid IID = .(0x72755049, 0x5ff7, 0x435d, 0x83, 0x48, 0x4b, 0xe9, 0x7c, 0xfa, 0x6c, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MoveNext(BOOL* hasCurrentFile) mut
			{
				return VT.MoveNext(&this, hasCurrentFile);
			}
			public HRESULT GetCurrentFontFile(IDWriteFontFile** fontFile) mut
			{
				return VT.GetCurrentFontFile(&this, fontFile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFontFileEnumerator *self, BOOL* hasCurrentFile) MoveNext;
				public new function HRESULT(IDWriteFontFileEnumerator *self, IDWriteFontFile** fontFile) GetCurrentFontFile;
			}
		}
		[CRepr]
		public struct IDWriteLocalizedStrings : IUnknown
		{
			public const new Guid IID = .(0x08256209, 0x099a, 0x4b34, 0xb8, 0x6d, 0xc2, 0x2b, 0x11, 0x0e, 0x77, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetCount() mut
			{
				return VT.GetCount(&this);
			}
			public HRESULT FindLocaleName(PWSTR localeName, uint32* index, BOOL* exists) mut
			{
				return VT.FindLocaleName(&this, localeName, index, exists);
			}
			public HRESULT GetLocaleNameLength(uint32 index, uint32* length) mut
			{
				return VT.GetLocaleNameLength(&this, index, length);
			}
			public HRESULT GetLocaleName(uint32 index, char16* localeName, uint32 size) mut
			{
				return VT.GetLocaleName(&this, index, localeName, size);
			}
			public HRESULT GetStringLength(uint32 index, uint32* length) mut
			{
				return VT.GetStringLength(&this, index, length);
			}
			public HRESULT GetString(uint32 index, char16* stringBuffer, uint32 size) mut
			{
				return VT.GetString(&this, index, stringBuffer, size);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(IDWriteLocalizedStrings *self) GetCount;
				public new function HRESULT(IDWriteLocalizedStrings *self, PWSTR localeName, uint32* index, BOOL* exists) FindLocaleName;
				public new function HRESULT(IDWriteLocalizedStrings *self, uint32 index, uint32* length) GetLocaleNameLength;
				public new function HRESULT(IDWriteLocalizedStrings *self, uint32 index, char16* localeName, uint32 size) GetLocaleName;
				public new function HRESULT(IDWriteLocalizedStrings *self, uint32 index, uint32* length) GetStringLength;
				public new function HRESULT(IDWriteLocalizedStrings *self, uint32 index, char16* stringBuffer, uint32 size) GetString;
			}
		}
		[CRepr]
		public struct IDWriteFontCollection : IUnknown
		{
			public const new Guid IID = .(0xa84cee02, 0x3eea, 0x4eee, 0xa8, 0x27, 0x87, 0xc1, 0xa0, 0x2a, 0x0f, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetFontFamilyCount() mut
			{
				return VT.GetFontFamilyCount(&this);
			}
			public HRESULT GetFontFamily(uint32 index, IDWriteFontFamily** fontFamily) mut
			{
				return VT.GetFontFamily(&this, index, fontFamily);
			}
			public HRESULT FindFamilyName(PWSTR familyName, uint32* index, BOOL* exists) mut
			{
				return VT.FindFamilyName(&this, familyName, index, exists);
			}
			public HRESULT GetFontFromFontFace(IDWriteFontFace* fontFace, IDWriteFont** font) mut
			{
				return VT.GetFontFromFontFace(&this, fontFace, font);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(IDWriteFontCollection *self) GetFontFamilyCount;
				public new function HRESULT(IDWriteFontCollection *self, uint32 index, IDWriteFontFamily** fontFamily) GetFontFamily;
				public new function HRESULT(IDWriteFontCollection *self, PWSTR familyName, uint32* index, BOOL* exists) FindFamilyName;
				public new function HRESULT(IDWriteFontCollection *self, IDWriteFontFace* fontFace, IDWriteFont** font) GetFontFromFontFace;
			}
		}
		[CRepr]
		public struct IDWriteFontList : IUnknown
		{
			public const new Guid IID = .(0x1a0d8438, 0x1d97, 0x4ec1, 0xae, 0xf9, 0xa2, 0xfb, 0x86, 0xed, 0x6a, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFontCollection(IDWriteFontCollection** fontCollection) mut
			{
				return VT.GetFontCollection(&this, fontCollection);
			}
			public uint32 GetFontCount() mut
			{
				return VT.GetFontCount(&this);
			}
			public HRESULT GetFont(uint32 index, IDWriteFont** font) mut
			{
				return VT.GetFont(&this, index, font);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFontList *self, IDWriteFontCollection** fontCollection) GetFontCollection;
				public new function uint32(IDWriteFontList *self) GetFontCount;
				public new function HRESULT(IDWriteFontList *self, uint32 index, IDWriteFont** font) GetFont;
			}
		}
		[CRepr]
		public struct IDWriteFontFamily : IDWriteFontList
		{
			public const new Guid IID = .(0xda20d8ef, 0x812a, 0x4c43, 0x98, 0x02, 0x62, 0xec, 0x4a, 0xbd, 0x7a, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFamilyNames(IDWriteLocalizedStrings** names) mut
			{
				return VT.GetFamilyNames(&this, names);
			}
			public HRESULT GetFirstMatchingFont(DWRITE_FONT_WEIGHT weight, DWRITE_FONT_STRETCH stretch, DWRITE_FONT_STYLE style, IDWriteFont** matchingFont) mut
			{
				return VT.GetFirstMatchingFont(&this, weight, stretch, style, matchingFont);
			}
			public HRESULT GetMatchingFonts(DWRITE_FONT_WEIGHT weight, DWRITE_FONT_STRETCH stretch, DWRITE_FONT_STYLE style, IDWriteFontList** matchingFonts) mut
			{
				return VT.GetMatchingFonts(&this, weight, stretch, style, matchingFonts);
			}
			[CRepr]
			public struct VTable : IDWriteFontList.VTable
			{
				public new function HRESULT(IDWriteFontFamily *self, IDWriteLocalizedStrings** names) GetFamilyNames;
				public new function HRESULT(IDWriteFontFamily *self, DWRITE_FONT_WEIGHT weight, DWRITE_FONT_STRETCH stretch, DWRITE_FONT_STYLE style, IDWriteFont** matchingFont) GetFirstMatchingFont;
				public new function HRESULT(IDWriteFontFamily *self, DWRITE_FONT_WEIGHT weight, DWRITE_FONT_STRETCH stretch, DWRITE_FONT_STYLE style, IDWriteFontList** matchingFonts) GetMatchingFonts;
			}
		}
		[CRepr]
		public struct IDWriteFont : IUnknown
		{
			public const new Guid IID = .(0xacd16696, 0x8c14, 0x4f5d, 0x87, 0x7e, 0xfe, 0x3f, 0xc1, 0xd3, 0x27, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFontFamily(IDWriteFontFamily** fontFamily) mut
			{
				return VT.GetFontFamily(&this, fontFamily);
			}
			public DWRITE_FONT_WEIGHT GetWeight() mut
			{
				return VT.GetWeight(&this);
			}
			public DWRITE_FONT_STRETCH GetStretch() mut
			{
				return VT.GetStretch(&this);
			}
			public DWRITE_FONT_STYLE GetStyle() mut
			{
				return VT.GetStyle(&this);
			}
			public BOOL IsSymbolFont() mut
			{
				return VT.IsSymbolFont(&this);
			}
			public HRESULT GetFaceNames(IDWriteLocalizedStrings** names) mut
			{
				return VT.GetFaceNames(&this, names);
			}
			public HRESULT GetInformationalStrings(DWRITE_INFORMATIONAL_STRING_ID informationalStringID, IDWriteLocalizedStrings** informationalStrings, BOOL* exists) mut
			{
				return VT.GetInformationalStrings(&this, informationalStringID, informationalStrings, exists);
			}
			public DWRITE_FONT_SIMULATIONS GetSimulations() mut
			{
				return VT.GetSimulations(&this);
			}
			public void GetMetrics(DWRITE_FONT_METRICS* fontMetrics) mut
			{
				VT.GetMetrics(&this, fontMetrics);
			}
			public HRESULT HasCharacter(uint32 unicodeValue, BOOL* exists) mut
			{
				return VT.HasCharacter(&this, unicodeValue, exists);
			}
			public HRESULT CreateFontFace(IDWriteFontFace** fontFace) mut
			{
				return VT.CreateFontFace(&this, fontFace);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFont *self, IDWriteFontFamily** fontFamily) GetFontFamily;
				public new function DWRITE_FONT_WEIGHT(IDWriteFont *self) GetWeight;
				public new function DWRITE_FONT_STRETCH(IDWriteFont *self) GetStretch;
				public new function DWRITE_FONT_STYLE(IDWriteFont *self) GetStyle;
				public new function BOOL(IDWriteFont *self) IsSymbolFont;
				public new function HRESULT(IDWriteFont *self, IDWriteLocalizedStrings** names) GetFaceNames;
				public new function HRESULT(IDWriteFont *self, DWRITE_INFORMATIONAL_STRING_ID informationalStringID, IDWriteLocalizedStrings** informationalStrings, BOOL* exists) GetInformationalStrings;
				public new function DWRITE_FONT_SIMULATIONS(IDWriteFont *self) GetSimulations;
				public new function void(IDWriteFont *self, DWRITE_FONT_METRICS* fontMetrics) GetMetrics;
				public new function HRESULT(IDWriteFont *self, uint32 unicodeValue, BOOL* exists) HasCharacter;
				public new function HRESULT(IDWriteFont *self, IDWriteFontFace** fontFace) CreateFontFace;
			}
		}
		[CRepr]
		public struct IDWriteTextFormat : IUnknown
		{
			public const new Guid IID = .(0x9c906818, 0x31d7, 0x4fd3, 0xa1, 0x51, 0x7c, 0x5e, 0x22, 0x5d, 0xb5, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTextAlignment(DWRITE_TEXT_ALIGNMENT textAlignment) mut
			{
				return VT.SetTextAlignment(&this, textAlignment);
			}
			public HRESULT SetParagraphAlignment(DWRITE_PARAGRAPH_ALIGNMENT paragraphAlignment) mut
			{
				return VT.SetParagraphAlignment(&this, paragraphAlignment);
			}
			public HRESULT SetWordWrapping(DWRITE_WORD_WRAPPING wordWrapping) mut
			{
				return VT.SetWordWrapping(&this, wordWrapping);
			}
			public HRESULT SetReadingDirection(DWRITE_READING_DIRECTION readingDirection) mut
			{
				return VT.SetReadingDirection(&this, readingDirection);
			}
			public HRESULT SetFlowDirection(DWRITE_FLOW_DIRECTION flowDirection) mut
			{
				return VT.SetFlowDirection(&this, flowDirection);
			}
			public HRESULT SetIncrementalTabStop(float incrementalTabStop) mut
			{
				return VT.SetIncrementalTabStop(&this, incrementalTabStop);
			}
			public HRESULT SetTrimming(DWRITE_TRIMMING* trimmingOptions, IDWriteInlineObject* trimmingSign) mut
			{
				return VT.SetTrimming(&this, trimmingOptions, trimmingSign);
			}
			public HRESULT SetLineSpacing(DWRITE_LINE_SPACING_METHOD lineSpacingMethod, float lineSpacing, float baseline) mut
			{
				return VT.SetLineSpacing(&this, lineSpacingMethod, lineSpacing, baseline);
			}
			public DWRITE_TEXT_ALIGNMENT GetTextAlignment() mut
			{
				return VT.GetTextAlignment(&this);
			}
			public DWRITE_PARAGRAPH_ALIGNMENT GetParagraphAlignment() mut
			{
				return VT.GetParagraphAlignment(&this);
			}
			public DWRITE_WORD_WRAPPING GetWordWrapping() mut
			{
				return VT.GetWordWrapping(&this);
			}
			public DWRITE_READING_DIRECTION GetReadingDirection() mut
			{
				return VT.GetReadingDirection(&this);
			}
			public DWRITE_FLOW_DIRECTION GetFlowDirection() mut
			{
				return VT.GetFlowDirection(&this);
			}
			public float GetIncrementalTabStop() mut
			{
				return VT.GetIncrementalTabStop(&this);
			}
			public HRESULT GetTrimming(DWRITE_TRIMMING* trimmingOptions, IDWriteInlineObject** trimmingSign) mut
			{
				return VT.GetTrimming(&this, trimmingOptions, trimmingSign);
			}
			public HRESULT GetLineSpacing(DWRITE_LINE_SPACING_METHOD* lineSpacingMethod, float* lineSpacing, float* baseline) mut
			{
				return VT.GetLineSpacing(&this, lineSpacingMethod, lineSpacing, baseline);
			}
			public HRESULT GetFontCollection(IDWriteFontCollection** fontCollection) mut
			{
				return VT.GetFontCollection(&this, fontCollection);
			}
			public uint32 GetFontFamilyNameLength() mut
			{
				return VT.GetFontFamilyNameLength(&this);
			}
			public HRESULT GetFontFamilyName(char16* fontFamilyName, uint32 nameSize) mut
			{
				return VT.GetFontFamilyName(&this, fontFamilyName, nameSize);
			}
			public DWRITE_FONT_WEIGHT GetFontWeight() mut
			{
				return VT.GetFontWeight(&this);
			}
			public DWRITE_FONT_STYLE GetFontStyle() mut
			{
				return VT.GetFontStyle(&this);
			}
			public DWRITE_FONT_STRETCH GetFontStretch() mut
			{
				return VT.GetFontStretch(&this);
			}
			public float GetFontSize() mut
			{
				return VT.GetFontSize(&this);
			}
			public uint32 GetLocaleNameLength() mut
			{
				return VT.GetLocaleNameLength(&this);
			}
			public HRESULT GetLocaleName(char16* localeName, uint32 nameSize) mut
			{
				return VT.GetLocaleName(&this, localeName, nameSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteTextFormat *self, DWRITE_TEXT_ALIGNMENT textAlignment) SetTextAlignment;
				public new function HRESULT(IDWriteTextFormat *self, DWRITE_PARAGRAPH_ALIGNMENT paragraphAlignment) SetParagraphAlignment;
				public new function HRESULT(IDWriteTextFormat *self, DWRITE_WORD_WRAPPING wordWrapping) SetWordWrapping;
				public new function HRESULT(IDWriteTextFormat *self, DWRITE_READING_DIRECTION readingDirection) SetReadingDirection;
				public new function HRESULT(IDWriteTextFormat *self, DWRITE_FLOW_DIRECTION flowDirection) SetFlowDirection;
				public new function HRESULT(IDWriteTextFormat *self, float incrementalTabStop) SetIncrementalTabStop;
				public new function HRESULT(IDWriteTextFormat *self, DWRITE_TRIMMING* trimmingOptions, IDWriteInlineObject* trimmingSign) SetTrimming;
				public new function HRESULT(IDWriteTextFormat *self, DWRITE_LINE_SPACING_METHOD lineSpacingMethod, float lineSpacing, float baseline) SetLineSpacing;
				public new function DWRITE_TEXT_ALIGNMENT(IDWriteTextFormat *self) GetTextAlignment;
				public new function DWRITE_PARAGRAPH_ALIGNMENT(IDWriteTextFormat *self) GetParagraphAlignment;
				public new function DWRITE_WORD_WRAPPING(IDWriteTextFormat *self) GetWordWrapping;
				public new function DWRITE_READING_DIRECTION(IDWriteTextFormat *self) GetReadingDirection;
				public new function DWRITE_FLOW_DIRECTION(IDWriteTextFormat *self) GetFlowDirection;
				public new function float(IDWriteTextFormat *self) GetIncrementalTabStop;
				public new function HRESULT(IDWriteTextFormat *self, DWRITE_TRIMMING* trimmingOptions, IDWriteInlineObject** trimmingSign) GetTrimming;
				public new function HRESULT(IDWriteTextFormat *self, DWRITE_LINE_SPACING_METHOD* lineSpacingMethod, float* lineSpacing, float* baseline) GetLineSpacing;
				public new function HRESULT(IDWriteTextFormat *self, IDWriteFontCollection** fontCollection) GetFontCollection;
				public new function uint32(IDWriteTextFormat *self) GetFontFamilyNameLength;
				public new function HRESULT(IDWriteTextFormat *self, char16* fontFamilyName, uint32 nameSize) GetFontFamilyName;
				public new function DWRITE_FONT_WEIGHT(IDWriteTextFormat *self) GetFontWeight;
				public new function DWRITE_FONT_STYLE(IDWriteTextFormat *self) GetFontStyle;
				public new function DWRITE_FONT_STRETCH(IDWriteTextFormat *self) GetFontStretch;
				public new function float(IDWriteTextFormat *self) GetFontSize;
				public new function uint32(IDWriteTextFormat *self) GetLocaleNameLength;
				public new function HRESULT(IDWriteTextFormat *self, char16* localeName, uint32 nameSize) GetLocaleName;
			}
		}
		[CRepr]
		public struct IDWriteTypography : IUnknown
		{
			public const new Guid IID = .(0x55f1112b, 0x1dc2, 0x4b3c, 0x95, 0x41, 0xf4, 0x68, 0x94, 0xed, 0x85, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddFontFeature(DWRITE_FONT_FEATURE fontFeature) mut
			{
				return VT.AddFontFeature(&this, fontFeature);
			}
			public uint32 GetFontFeatureCount() mut
			{
				return VT.GetFontFeatureCount(&this);
			}
			public HRESULT GetFontFeature(uint32 fontFeatureIndex, DWRITE_FONT_FEATURE* fontFeature) mut
			{
				return VT.GetFontFeature(&this, fontFeatureIndex, fontFeature);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteTypography *self, DWRITE_FONT_FEATURE fontFeature) AddFontFeature;
				public new function uint32(IDWriteTypography *self) GetFontFeatureCount;
				public new function HRESULT(IDWriteTypography *self, uint32 fontFeatureIndex, DWRITE_FONT_FEATURE* fontFeature) GetFontFeature;
			}
		}
		[CRepr]
		public struct IDWriteNumberSubstitution : IUnknown
		{
			public const new Guid IID = .(0x14885cc9, 0xbab0, 0x4f90, 0xb6, 0xed, 0x5c, 0x36, 0x6a, 0x2c, 0xd0, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct IDWriteTextAnalysisSource : IUnknown
		{
			public const new Guid IID = .(0x688e1a58, 0x5094, 0x47c8, 0xad, 0xc8, 0xfb, 0xce, 0xa6, 0x0a, 0xe9, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTextAtPosition(uint32 textPosition, uint16** textString, uint32* textLength) mut
			{
				return VT.GetTextAtPosition(&this, textPosition, textString, textLength);
			}
			public HRESULT GetTextBeforePosition(uint32 textPosition, uint16** textString, uint32* textLength) mut
			{
				return VT.GetTextBeforePosition(&this, textPosition, textString, textLength);
			}
			public DWRITE_READING_DIRECTION GetParagraphReadingDirection() mut
			{
				return VT.GetParagraphReadingDirection(&this);
			}
			public HRESULT GetLocaleName(uint32 textPosition, uint32* textLength, uint16** localeName) mut
			{
				return VT.GetLocaleName(&this, textPosition, textLength, localeName);
			}
			public HRESULT GetNumberSubstitution(uint32 textPosition, uint32* textLength, IDWriteNumberSubstitution** numberSubstitution) mut
			{
				return VT.GetNumberSubstitution(&this, textPosition, textLength, numberSubstitution);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteTextAnalysisSource *self, uint32 textPosition, uint16** textString, uint32* textLength) GetTextAtPosition;
				public new function HRESULT(IDWriteTextAnalysisSource *self, uint32 textPosition, uint16** textString, uint32* textLength) GetTextBeforePosition;
				public new function DWRITE_READING_DIRECTION(IDWriteTextAnalysisSource *self) GetParagraphReadingDirection;
				public new function HRESULT(IDWriteTextAnalysisSource *self, uint32 textPosition, uint32* textLength, uint16** localeName) GetLocaleName;
				public new function HRESULT(IDWriteTextAnalysisSource *self, uint32 textPosition, uint32* textLength, IDWriteNumberSubstitution** numberSubstitution) GetNumberSubstitution;
			}
		}
		[CRepr]
		public struct IDWriteTextAnalysisSink : IUnknown
		{
			public const new Guid IID = .(0x5810cd44, 0x0ca0, 0x4701, 0xb3, 0xfa, 0xbe, 0xc5, 0x18, 0x2a, 0xe4, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetScriptAnalysis(uint32 textPosition, uint32 textLength, DWRITE_SCRIPT_ANALYSIS* scriptAnalysis) mut
			{
				return VT.SetScriptAnalysis(&this, textPosition, textLength, scriptAnalysis);
			}
			public HRESULT SetLineBreakpoints(uint32 textPosition, uint32 textLength, DWRITE_LINE_BREAKPOINT* lineBreakpoints) mut
			{
				return VT.SetLineBreakpoints(&this, textPosition, textLength, lineBreakpoints);
			}
			public HRESULT SetBidiLevel(uint32 textPosition, uint32 textLength, uint8 explicitLevel, uint8 resolvedLevel) mut
			{
				return VT.SetBidiLevel(&this, textPosition, textLength, explicitLevel, resolvedLevel);
			}
			public HRESULT SetNumberSubstitution(uint32 textPosition, uint32 textLength, IDWriteNumberSubstitution* numberSubstitution) mut
			{
				return VT.SetNumberSubstitution(&this, textPosition, textLength, numberSubstitution);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteTextAnalysisSink *self, uint32 textPosition, uint32 textLength, DWRITE_SCRIPT_ANALYSIS* scriptAnalysis) SetScriptAnalysis;
				public new function HRESULT(IDWriteTextAnalysisSink *self, uint32 textPosition, uint32 textLength, DWRITE_LINE_BREAKPOINT* lineBreakpoints) SetLineBreakpoints;
				public new function HRESULT(IDWriteTextAnalysisSink *self, uint32 textPosition, uint32 textLength, uint8 explicitLevel, uint8 resolvedLevel) SetBidiLevel;
				public new function HRESULT(IDWriteTextAnalysisSink *self, uint32 textPosition, uint32 textLength, IDWriteNumberSubstitution* numberSubstitution) SetNumberSubstitution;
			}
		}
		[CRepr]
		public struct IDWriteTextAnalyzer : IUnknown
		{
			public const new Guid IID = .(0xb7e6163e, 0x7f46, 0x43b4, 0x84, 0xb3, 0xe4, 0xe6, 0x24, 0x9c, 0x36, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AnalyzeScript(IDWriteTextAnalysisSource* analysisSource, uint32 textPosition, uint32 textLength, IDWriteTextAnalysisSink* analysisSink) mut
			{
				return VT.AnalyzeScript(&this, analysisSource, textPosition, textLength, analysisSink);
			}
			public HRESULT AnalyzeBidi(IDWriteTextAnalysisSource* analysisSource, uint32 textPosition, uint32 textLength, IDWriteTextAnalysisSink* analysisSink) mut
			{
				return VT.AnalyzeBidi(&this, analysisSource, textPosition, textLength, analysisSink);
			}
			public HRESULT AnalyzeNumberSubstitution(IDWriteTextAnalysisSource* analysisSource, uint32 textPosition, uint32 textLength, IDWriteTextAnalysisSink* analysisSink) mut
			{
				return VT.AnalyzeNumberSubstitution(&this, analysisSource, textPosition, textLength, analysisSink);
			}
			public HRESULT AnalyzeLineBreakpoints(IDWriteTextAnalysisSource* analysisSource, uint32 textPosition, uint32 textLength, IDWriteTextAnalysisSink* analysisSink) mut
			{
				return VT.AnalyzeLineBreakpoints(&this, analysisSource, textPosition, textLength, analysisSink);
			}
			public HRESULT GetGlyphs(char16* textString, uint32 textLength, IDWriteFontFace* fontFace, BOOL isSideways, BOOL isRightToLeft, DWRITE_SCRIPT_ANALYSIS* scriptAnalysis, PWSTR localeName, IDWriteNumberSubstitution* numberSubstitution, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, uint32 maxGlyphCount, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32* actualGlyphCount) mut
			{
				return VT.GetGlyphs(&this, textString, textLength, fontFace, isSideways, isRightToLeft, scriptAnalysis, localeName, numberSubstitution, features, featureRangeLengths, featureRanges, maxGlyphCount, clusterMap, textProps, glyphIndices, glyphProps, actualGlyphCount);
			}
			public HRESULT GetGlyphPlacements(char16* textString, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint32 textLength, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32 glyphCount, IDWriteFontFace* fontFace, float fontEmSize, BOOL isSideways, BOOL isRightToLeft, DWRITE_SCRIPT_ANALYSIS* scriptAnalysis, PWSTR localeName, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets) mut
			{
				return VT.GetGlyphPlacements(&this, textString, clusterMap, textProps, textLength, glyphIndices, glyphProps, glyphCount, fontFace, fontEmSize, isSideways, isRightToLeft, scriptAnalysis, localeName, features, featureRangeLengths, featureRanges, glyphAdvances, glyphOffsets);
			}
			public HRESULT GetGdiCompatibleGlyphPlacements(char16* textString, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint32 textLength, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32 glyphCount, IDWriteFontFace* fontFace, float fontEmSize, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, BOOL isSideways, BOOL isRightToLeft, DWRITE_SCRIPT_ANALYSIS* scriptAnalysis, PWSTR localeName, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets) mut
			{
				return VT.GetGdiCompatibleGlyphPlacements(&this, textString, clusterMap, textProps, textLength, glyphIndices, glyphProps, glyphCount, fontFace, fontEmSize, pixelsPerDip, transform, useGdiNatural, isSideways, isRightToLeft, scriptAnalysis, localeName, features, featureRangeLengths, featureRanges, glyphAdvances, glyphOffsets);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteTextAnalyzer *self, IDWriteTextAnalysisSource* analysisSource, uint32 textPosition, uint32 textLength, IDWriteTextAnalysisSink* analysisSink) AnalyzeScript;
				public new function HRESULT(IDWriteTextAnalyzer *self, IDWriteTextAnalysisSource* analysisSource, uint32 textPosition, uint32 textLength, IDWriteTextAnalysisSink* analysisSink) AnalyzeBidi;
				public new function HRESULT(IDWriteTextAnalyzer *self, IDWriteTextAnalysisSource* analysisSource, uint32 textPosition, uint32 textLength, IDWriteTextAnalysisSink* analysisSink) AnalyzeNumberSubstitution;
				public new function HRESULT(IDWriteTextAnalyzer *self, IDWriteTextAnalysisSource* analysisSource, uint32 textPosition, uint32 textLength, IDWriteTextAnalysisSink* analysisSink) AnalyzeLineBreakpoints;
				public new function HRESULT(IDWriteTextAnalyzer *self, char16* textString, uint32 textLength, IDWriteFontFace* fontFace, BOOL isSideways, BOOL isRightToLeft, DWRITE_SCRIPT_ANALYSIS* scriptAnalysis, PWSTR localeName, IDWriteNumberSubstitution* numberSubstitution, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, uint32 maxGlyphCount, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32* actualGlyphCount) GetGlyphs;
				public new function HRESULT(IDWriteTextAnalyzer *self, char16* textString, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint32 textLength, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32 glyphCount, IDWriteFontFace* fontFace, float fontEmSize, BOOL isSideways, BOOL isRightToLeft, DWRITE_SCRIPT_ANALYSIS* scriptAnalysis, PWSTR localeName, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets) GetGlyphPlacements;
				public new function HRESULT(IDWriteTextAnalyzer *self, char16* textString, uint16* clusterMap, DWRITE_SHAPING_TEXT_PROPERTIES* textProps, uint32 textLength, uint16* glyphIndices, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProps, uint32 glyphCount, IDWriteFontFace* fontFace, float fontEmSize, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, BOOL isSideways, BOOL isRightToLeft, DWRITE_SCRIPT_ANALYSIS* scriptAnalysis, PWSTR localeName, DWRITE_TYPOGRAPHIC_FEATURES** features, uint32* featureRangeLengths, uint32 featureRanges, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets) GetGdiCompatibleGlyphPlacements;
			}
		}
		[CRepr]
		public struct IDWriteInlineObject : IUnknown
		{
			public const new Guid IID = .(0x8339fde3, 0x106f, 0x47ab, 0x83, 0x73, 0x1c, 0x62, 0x95, 0xeb, 0x10, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Draw(void* clientDrawingContext, IDWriteTextRenderer* renderer, float originX, float originY, BOOL isSideways, BOOL isRightToLeft, IUnknown* clientDrawingEffect) mut
			{
				return VT.Draw(&this, clientDrawingContext, renderer, originX, originY, isSideways, isRightToLeft, clientDrawingEffect);
			}
			public HRESULT GetMetrics(DWRITE_INLINE_OBJECT_METRICS* metrics) mut
			{
				return VT.GetMetrics(&this, metrics);
			}
			public HRESULT GetOverhangMetrics(DWRITE_OVERHANG_METRICS* overhangs) mut
			{
				return VT.GetOverhangMetrics(&this, overhangs);
			}
			public HRESULT GetBreakConditions(DWRITE_BREAK_CONDITION* breakConditionBefore, DWRITE_BREAK_CONDITION* breakConditionAfter) mut
			{
				return VT.GetBreakConditions(&this, breakConditionBefore, breakConditionAfter);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteInlineObject *self, void* clientDrawingContext, IDWriteTextRenderer* renderer, float originX, float originY, BOOL isSideways, BOOL isRightToLeft, IUnknown* clientDrawingEffect) Draw;
				public new function HRESULT(IDWriteInlineObject *self, DWRITE_INLINE_OBJECT_METRICS* metrics) GetMetrics;
				public new function HRESULT(IDWriteInlineObject *self, DWRITE_OVERHANG_METRICS* overhangs) GetOverhangMetrics;
				public new function HRESULT(IDWriteInlineObject *self, DWRITE_BREAK_CONDITION* breakConditionBefore, DWRITE_BREAK_CONDITION* breakConditionAfter) GetBreakConditions;
			}
		}
		[CRepr]
		public struct IDWritePixelSnapping : IUnknown
		{
			public const new Guid IID = .(0xeaf3a2da, 0xecf4, 0x4d24, 0xb6, 0x44, 0xb3, 0x4f, 0x68, 0x42, 0x02, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsPixelSnappingDisabled(void* clientDrawingContext, BOOL* isDisabled) mut
			{
				return VT.IsPixelSnappingDisabled(&this, clientDrawingContext, isDisabled);
			}
			public HRESULT GetCurrentTransform(void* clientDrawingContext, DWRITE_MATRIX* transform) mut
			{
				return VT.GetCurrentTransform(&this, clientDrawingContext, transform);
			}
			public HRESULT GetPixelsPerDip(void* clientDrawingContext, float* pixelsPerDip) mut
			{
				return VT.GetPixelsPerDip(&this, clientDrawingContext, pixelsPerDip);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWritePixelSnapping *self, void* clientDrawingContext, BOOL* isDisabled) IsPixelSnappingDisabled;
				public new function HRESULT(IDWritePixelSnapping *self, void* clientDrawingContext, DWRITE_MATRIX* transform) GetCurrentTransform;
				public new function HRESULT(IDWritePixelSnapping *self, void* clientDrawingContext, float* pixelsPerDip) GetPixelsPerDip;
			}
		}
		[CRepr]
		public struct IDWriteTextRenderer : IDWritePixelSnapping
		{
			public const new Guid IID = .(0xef8a8135, 0x5cc6, 0x45fe, 0x88, 0x25, 0xc5, 0xa0, 0x72, 0x4e, 0xb8, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DrawGlyphRun(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_MEASURING_MODE measuringMode, DWRITE_GLYPH_RUN* glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, IUnknown* clientDrawingEffect) mut
			{
				return VT.DrawGlyphRun(&this, clientDrawingContext, baselineOriginX, baselineOriginY, measuringMode, glyphRun, glyphRunDescription, clientDrawingEffect);
			}
			public HRESULT DrawUnderline(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_UNDERLINE* underline, IUnknown* clientDrawingEffect) mut
			{
				return VT.DrawUnderline(&this, clientDrawingContext, baselineOriginX, baselineOriginY, underline, clientDrawingEffect);
			}
			public HRESULT DrawStrikethrough(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_STRIKETHROUGH* strikethrough, IUnknown* clientDrawingEffect) mut
			{
				return VT.DrawStrikethrough(&this, clientDrawingContext, baselineOriginX, baselineOriginY, strikethrough, clientDrawingEffect);
			}
			public HRESULT DrawInlineObject(void* clientDrawingContext, float originX, float originY, IDWriteInlineObject* inlineObject, BOOL isSideways, BOOL isRightToLeft, IUnknown* clientDrawingEffect) mut
			{
				return VT.DrawInlineObject(&this, clientDrawingContext, originX, originY, inlineObject, isSideways, isRightToLeft, clientDrawingEffect);
			}
			[CRepr]
			public struct VTable : IDWritePixelSnapping.VTable
			{
				public new function HRESULT(IDWriteTextRenderer *self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_MEASURING_MODE measuringMode, DWRITE_GLYPH_RUN* glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, IUnknown* clientDrawingEffect) DrawGlyphRun;
				public new function HRESULT(IDWriteTextRenderer *self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_UNDERLINE* underline, IUnknown* clientDrawingEffect) DrawUnderline;
				public new function HRESULT(IDWriteTextRenderer *self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_STRIKETHROUGH* strikethrough, IUnknown* clientDrawingEffect) DrawStrikethrough;
				public new function HRESULT(IDWriteTextRenderer *self, void* clientDrawingContext, float originX, float originY, IDWriteInlineObject* inlineObject, BOOL isSideways, BOOL isRightToLeft, IUnknown* clientDrawingEffect) DrawInlineObject;
			}
		}
		[CRepr]
		public struct IDWriteTextLayout : IDWriteTextFormat
		{
			public const new Guid IID = .(0x53737037, 0x6d14, 0x410b, 0x9b, 0xfe, 0x0b, 0x18, 0x2b, 0xb7, 0x09, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMaxWidth(float maxWidth) mut
			{
				return VT.SetMaxWidth(&this, maxWidth);
			}
			public HRESULT SetMaxHeight(float maxHeight) mut
			{
				return VT.SetMaxHeight(&this, maxHeight);
			}
			public HRESULT SetFontCollection(IDWriteFontCollection* fontCollection, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetFontCollection(&this, fontCollection, textRange);
			}
			public HRESULT SetFontFamilyName(PWSTR fontFamilyName, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetFontFamilyName(&this, fontFamilyName, textRange);
			}
			public HRESULT SetFontWeight(DWRITE_FONT_WEIGHT fontWeight, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetFontWeight(&this, fontWeight, textRange);
			}
			public HRESULT SetFontStyle(DWRITE_FONT_STYLE fontStyle, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetFontStyle(&this, fontStyle, textRange);
			}
			public HRESULT SetFontStretch(DWRITE_FONT_STRETCH fontStretch, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetFontStretch(&this, fontStretch, textRange);
			}
			public HRESULT SetFontSize(float fontSize, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetFontSize(&this, fontSize, textRange);
			}
			public HRESULT SetUnderline(BOOL hasUnderline, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetUnderline(&this, hasUnderline, textRange);
			}
			public HRESULT SetStrikethrough(BOOL hasStrikethrough, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetStrikethrough(&this, hasStrikethrough, textRange);
			}
			public HRESULT SetDrawingEffect(IUnknown* drawingEffect, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetDrawingEffect(&this, drawingEffect, textRange);
			}
			public HRESULT SetInlineObject(IDWriteInlineObject* inlineObject, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetInlineObject(&this, inlineObject, textRange);
			}
			public HRESULT SetTypography(IDWriteTypography* typography, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetTypography(&this, typography, textRange);
			}
			public HRESULT SetLocaleName(PWSTR localeName, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetLocaleName(&this, localeName, textRange);
			}
			public float GetMaxWidth() mut
			{
				return VT.GetMaxWidth(&this);
			}
			public float GetMaxHeight() mut
			{
				return VT.GetMaxHeight(&this);
			}
			public HRESULT GetFontCollection(uint32 currentPosition, IDWriteFontCollection** fontCollection, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetFontCollection(&this, currentPosition, fontCollection, textRange);
			}
			public HRESULT GetFontFamilyNameLength(uint32 currentPosition, uint32* nameLength, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetFontFamilyNameLength(&this, currentPosition, nameLength, textRange);
			}
			public HRESULT GetFontFamilyName(uint32 currentPosition, char16* fontFamilyName, uint32 nameSize, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetFontFamilyName(&this, currentPosition, fontFamilyName, nameSize, textRange);
			}
			public HRESULT GetFontWeight(uint32 currentPosition, DWRITE_FONT_WEIGHT* fontWeight, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetFontWeight(&this, currentPosition, fontWeight, textRange);
			}
			public HRESULT GetFontStyle(uint32 currentPosition, DWRITE_FONT_STYLE* fontStyle, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetFontStyle(&this, currentPosition, fontStyle, textRange);
			}
			public HRESULT GetFontStretch(uint32 currentPosition, DWRITE_FONT_STRETCH* fontStretch, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetFontStretch(&this, currentPosition, fontStretch, textRange);
			}
			public HRESULT GetFontSize(uint32 currentPosition, float* fontSize, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetFontSize(&this, currentPosition, fontSize, textRange);
			}
			public HRESULT GetUnderline(uint32 currentPosition, BOOL* hasUnderline, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetUnderline(&this, currentPosition, hasUnderline, textRange);
			}
			public HRESULT GetStrikethrough(uint32 currentPosition, BOOL* hasStrikethrough, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetStrikethrough(&this, currentPosition, hasStrikethrough, textRange);
			}
			public HRESULT GetDrawingEffect(uint32 currentPosition, IUnknown** drawingEffect, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetDrawingEffect(&this, currentPosition, drawingEffect, textRange);
			}
			public HRESULT GetInlineObject(uint32 currentPosition, IDWriteInlineObject** inlineObject, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetInlineObject(&this, currentPosition, inlineObject, textRange);
			}
			public HRESULT GetTypography(uint32 currentPosition, IDWriteTypography** typography, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetTypography(&this, currentPosition, typography, textRange);
			}
			public HRESULT GetLocaleNameLength(uint32 currentPosition, uint32* nameLength, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetLocaleNameLength(&this, currentPosition, nameLength, textRange);
			}
			public HRESULT GetLocaleName(uint32 currentPosition, char16* localeName, uint32 nameSize, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetLocaleName(&this, currentPosition, localeName, nameSize, textRange);
			}
			public HRESULT Draw(void* clientDrawingContext, IDWriteTextRenderer* renderer, float originX, float originY) mut
			{
				return VT.Draw(&this, clientDrawingContext, renderer, originX, originY);
			}
			public HRESULT GetLineMetrics(DWRITE_LINE_METRICS* lineMetrics, uint32 maxLineCount, uint32* actualLineCount) mut
			{
				return VT.GetLineMetrics(&this, lineMetrics, maxLineCount, actualLineCount);
			}
			public HRESULT GetMetrics(DWRITE_TEXT_METRICS* textMetrics) mut
			{
				return VT.GetMetrics(&this, textMetrics);
			}
			public HRESULT GetOverhangMetrics(DWRITE_OVERHANG_METRICS* overhangs) mut
			{
				return VT.GetOverhangMetrics(&this, overhangs);
			}
			public HRESULT GetClusterMetrics(DWRITE_CLUSTER_METRICS* clusterMetrics, uint32 maxClusterCount, uint32* actualClusterCount) mut
			{
				return VT.GetClusterMetrics(&this, clusterMetrics, maxClusterCount, actualClusterCount);
			}
			public HRESULT DetermineMinWidth(float* minWidth) mut
			{
				return VT.DetermineMinWidth(&this, minWidth);
			}
			public HRESULT HitTestPoint(float pointX, float pointY, BOOL* isTrailingHit, BOOL* isInside, DWRITE_HIT_TEST_METRICS* hitTestMetrics) mut
			{
				return VT.HitTestPoint(&this, pointX, pointY, isTrailingHit, isInside, hitTestMetrics);
			}
			public HRESULT HitTestTextPosition(uint32 textPosition, BOOL isTrailingHit, float* pointX, float* pointY, DWRITE_HIT_TEST_METRICS* hitTestMetrics) mut
			{
				return VT.HitTestTextPosition(&this, textPosition, isTrailingHit, pointX, pointY, hitTestMetrics);
			}
			public HRESULT HitTestTextRange(uint32 textPosition, uint32 textLength, float originX, float originY, DWRITE_HIT_TEST_METRICS* hitTestMetrics, uint32 maxHitTestMetricsCount, uint32* actualHitTestMetricsCount) mut
			{
				return VT.HitTestTextRange(&this, textPosition, textLength, originX, originY, hitTestMetrics, maxHitTestMetricsCount, actualHitTestMetricsCount);
			}
			[CRepr]
			public struct VTable : IDWriteTextFormat.VTable
			{
				public new function HRESULT(IDWriteTextLayout *self, float maxWidth) SetMaxWidth;
				public new function HRESULT(IDWriteTextLayout *self, float maxHeight) SetMaxHeight;
				public new function HRESULT(IDWriteTextLayout *self, IDWriteFontCollection* fontCollection, DWRITE_TEXT_RANGE textRange) SetFontCollection;
				public new function HRESULT(IDWriteTextLayout *self, PWSTR fontFamilyName, DWRITE_TEXT_RANGE textRange) SetFontFamilyName;
				public new function HRESULT(IDWriteTextLayout *self, DWRITE_FONT_WEIGHT fontWeight, DWRITE_TEXT_RANGE textRange) SetFontWeight;
				public new function HRESULT(IDWriteTextLayout *self, DWRITE_FONT_STYLE fontStyle, DWRITE_TEXT_RANGE textRange) SetFontStyle;
				public new function HRESULT(IDWriteTextLayout *self, DWRITE_FONT_STRETCH fontStretch, DWRITE_TEXT_RANGE textRange) SetFontStretch;
				public new function HRESULT(IDWriteTextLayout *self, float fontSize, DWRITE_TEXT_RANGE textRange) SetFontSize;
				public new function HRESULT(IDWriteTextLayout *self, BOOL hasUnderline, DWRITE_TEXT_RANGE textRange) SetUnderline;
				public new function HRESULT(IDWriteTextLayout *self, BOOL hasStrikethrough, DWRITE_TEXT_RANGE textRange) SetStrikethrough;
				public new function HRESULT(IDWriteTextLayout *self, IUnknown* drawingEffect, DWRITE_TEXT_RANGE textRange) SetDrawingEffect;
				public new function HRESULT(IDWriteTextLayout *self, IDWriteInlineObject* inlineObject, DWRITE_TEXT_RANGE textRange) SetInlineObject;
				public new function HRESULT(IDWriteTextLayout *self, IDWriteTypography* typography, DWRITE_TEXT_RANGE textRange) SetTypography;
				public new function HRESULT(IDWriteTextLayout *self, PWSTR localeName, DWRITE_TEXT_RANGE textRange) SetLocaleName;
				public new function float(IDWriteTextLayout *self) GetMaxWidth;
				public new function float(IDWriteTextLayout *self) GetMaxHeight;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, IDWriteFontCollection** fontCollection, DWRITE_TEXT_RANGE* textRange) GetFontCollection;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, uint32* nameLength, DWRITE_TEXT_RANGE* textRange) GetFontFamilyNameLength;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, char16* fontFamilyName, uint32 nameSize, DWRITE_TEXT_RANGE* textRange) GetFontFamilyName;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, DWRITE_FONT_WEIGHT* fontWeight, DWRITE_TEXT_RANGE* textRange) GetFontWeight;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, DWRITE_FONT_STYLE* fontStyle, DWRITE_TEXT_RANGE* textRange) GetFontStyle;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, DWRITE_FONT_STRETCH* fontStretch, DWRITE_TEXT_RANGE* textRange) GetFontStretch;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, float* fontSize, DWRITE_TEXT_RANGE* textRange) GetFontSize;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, BOOL* hasUnderline, DWRITE_TEXT_RANGE* textRange) GetUnderline;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, BOOL* hasStrikethrough, DWRITE_TEXT_RANGE* textRange) GetStrikethrough;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, IUnknown** drawingEffect, DWRITE_TEXT_RANGE* textRange) GetDrawingEffect;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, IDWriteInlineObject** inlineObject, DWRITE_TEXT_RANGE* textRange) GetInlineObject;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, IDWriteTypography** typography, DWRITE_TEXT_RANGE* textRange) GetTypography;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, uint32* nameLength, DWRITE_TEXT_RANGE* textRange) GetLocaleNameLength;
				public new function HRESULT(IDWriteTextLayout *self, uint32 currentPosition, char16* localeName, uint32 nameSize, DWRITE_TEXT_RANGE* textRange) GetLocaleName;
				public new function HRESULT(IDWriteTextLayout *self, void* clientDrawingContext, IDWriteTextRenderer* renderer, float originX, float originY) Draw;
				public new function HRESULT(IDWriteTextLayout *self, DWRITE_LINE_METRICS* lineMetrics, uint32 maxLineCount, uint32* actualLineCount) GetLineMetrics;
				public new function HRESULT(IDWriteTextLayout *self, DWRITE_TEXT_METRICS* textMetrics) GetMetrics;
				public new function HRESULT(IDWriteTextLayout *self, DWRITE_OVERHANG_METRICS* overhangs) GetOverhangMetrics;
				public new function HRESULT(IDWriteTextLayout *self, DWRITE_CLUSTER_METRICS* clusterMetrics, uint32 maxClusterCount, uint32* actualClusterCount) GetClusterMetrics;
				public new function HRESULT(IDWriteTextLayout *self, float* minWidth) DetermineMinWidth;
				public new function HRESULT(IDWriteTextLayout *self, float pointX, float pointY, BOOL* isTrailingHit, BOOL* isInside, DWRITE_HIT_TEST_METRICS* hitTestMetrics) HitTestPoint;
				public new function HRESULT(IDWriteTextLayout *self, uint32 textPosition, BOOL isTrailingHit, float* pointX, float* pointY, DWRITE_HIT_TEST_METRICS* hitTestMetrics) HitTestTextPosition;
				public new function HRESULT(IDWriteTextLayout *self, uint32 textPosition, uint32 textLength, float originX, float originY, DWRITE_HIT_TEST_METRICS* hitTestMetrics, uint32 maxHitTestMetricsCount, uint32* actualHitTestMetricsCount) HitTestTextRange;
			}
		}
		[CRepr]
		public struct IDWriteBitmapRenderTarget : IUnknown
		{
			public const new Guid IID = .(0x5e5a32a3, 0x8dff, 0x4773, 0x9f, 0xf6, 0x06, 0x96, 0xea, 0xb7, 0x72, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DrawGlyphRun(float baselineOriginX, float baselineOriginY, DWRITE_MEASURING_MODE measuringMode, DWRITE_GLYPH_RUN* glyphRun, IDWriteRenderingParams* renderingParams, uint32 textColor, RECT* blackBoxRect) mut
			{
				return VT.DrawGlyphRun(&this, baselineOriginX, baselineOriginY, measuringMode, glyphRun, renderingParams, textColor, blackBoxRect);
			}
			public HDC GetMemoryDC() mut
			{
				return VT.GetMemoryDC(&this);
			}
			public float GetPixelsPerDip() mut
			{
				return VT.GetPixelsPerDip(&this);
			}
			public HRESULT SetPixelsPerDip(float pixelsPerDip) mut
			{
				return VT.SetPixelsPerDip(&this, pixelsPerDip);
			}
			public HRESULT GetCurrentTransform(DWRITE_MATRIX* transform) mut
			{
				return VT.GetCurrentTransform(&this, transform);
			}
			public HRESULT SetCurrentTransform(DWRITE_MATRIX* transform) mut
			{
				return VT.SetCurrentTransform(&this, transform);
			}
			public HRESULT GetSize(SIZE* size) mut
			{
				return VT.GetSize(&this, size);
			}
			public HRESULT Resize(uint32 width, uint32 height) mut
			{
				return VT.Resize(&this, width, height);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteBitmapRenderTarget *self, float baselineOriginX, float baselineOriginY, DWRITE_MEASURING_MODE measuringMode, DWRITE_GLYPH_RUN* glyphRun, IDWriteRenderingParams* renderingParams, uint32 textColor, RECT* blackBoxRect) DrawGlyphRun;
				public new function HDC(IDWriteBitmapRenderTarget *self) GetMemoryDC;
				public new function float(IDWriteBitmapRenderTarget *self) GetPixelsPerDip;
				public new function HRESULT(IDWriteBitmapRenderTarget *self, float pixelsPerDip) SetPixelsPerDip;
				public new function HRESULT(IDWriteBitmapRenderTarget *self, DWRITE_MATRIX* transform) GetCurrentTransform;
				public new function HRESULT(IDWriteBitmapRenderTarget *self, DWRITE_MATRIX* transform) SetCurrentTransform;
				public new function HRESULT(IDWriteBitmapRenderTarget *self, SIZE* size) GetSize;
				public new function HRESULT(IDWriteBitmapRenderTarget *self, uint32 width, uint32 height) Resize;
			}
		}
		[CRepr]
		public struct IDWriteGdiInterop : IUnknown
		{
			public const new Guid IID = .(0x1edd9491, 0x9853, 0x4299, 0x89, 0x8f, 0x64, 0x32, 0x98, 0x3b, 0x6f, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFontFromLOGFONT(LOGFONTW* logFont, IDWriteFont** font) mut
			{
				return VT.CreateFontFromLOGFONT(&this, logFont, font);
			}
			public HRESULT ConvertFontToLOGFONT(IDWriteFont* font, LOGFONTW* logFont, BOOL* isSystemFont) mut
			{
				return VT.ConvertFontToLOGFONT(&this, font, logFont, isSystemFont);
			}
			public HRESULT ConvertFontFaceToLOGFONT(IDWriteFontFace* font, LOGFONTW* logFont) mut
			{
				return VT.ConvertFontFaceToLOGFONT(&this, font, logFont);
			}
			public HRESULT CreateFontFaceFromHdc(HDC hdc, IDWriteFontFace** fontFace) mut
			{
				return VT.CreateFontFaceFromHdc(&this, hdc, fontFace);
			}
			public HRESULT CreateBitmapRenderTarget(HDC hdc, uint32 width, uint32 height, IDWriteBitmapRenderTarget** renderTarget) mut
			{
				return VT.CreateBitmapRenderTarget(&this, hdc, width, height, renderTarget);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteGdiInterop *self, LOGFONTW* logFont, IDWriteFont** font) CreateFontFromLOGFONT;
				public new function HRESULT(IDWriteGdiInterop *self, IDWriteFont* font, LOGFONTW* logFont, BOOL* isSystemFont) ConvertFontToLOGFONT;
				public new function HRESULT(IDWriteGdiInterop *self, IDWriteFontFace* font, LOGFONTW* logFont) ConvertFontFaceToLOGFONT;
				public new function HRESULT(IDWriteGdiInterop *self, HDC hdc, IDWriteFontFace** fontFace) CreateFontFaceFromHdc;
				public new function HRESULT(IDWriteGdiInterop *self, HDC hdc, uint32 width, uint32 height, IDWriteBitmapRenderTarget** renderTarget) CreateBitmapRenderTarget;
			}
		}
		[CRepr]
		public struct IDWriteGlyphRunAnalysis : IUnknown
		{
			public const new Guid IID = .(0x7d97dbf7, 0xe085, 0x42d4, 0x81, 0xe3, 0x6a, 0x88, 0x3b, 0xde, 0xd1, 0x18);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAlphaTextureBounds(DWRITE_TEXTURE_TYPE textureType, RECT* textureBounds) mut
			{
				return VT.GetAlphaTextureBounds(&this, textureType, textureBounds);
			}
			public HRESULT CreateAlphaTexture(DWRITE_TEXTURE_TYPE textureType, RECT* textureBounds, uint8* alphaValues, uint32 bufferSize) mut
			{
				return VT.CreateAlphaTexture(&this, textureType, textureBounds, alphaValues, bufferSize);
			}
			public HRESULT GetAlphaBlendParams(IDWriteRenderingParams* renderingParams, float* blendGamma, float* blendEnhancedContrast, float* blendClearTypeLevel) mut
			{
				return VT.GetAlphaBlendParams(&this, renderingParams, blendGamma, blendEnhancedContrast, blendClearTypeLevel);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteGlyphRunAnalysis *self, DWRITE_TEXTURE_TYPE textureType, RECT* textureBounds) GetAlphaTextureBounds;
				public new function HRESULT(IDWriteGlyphRunAnalysis *self, DWRITE_TEXTURE_TYPE textureType, RECT* textureBounds, uint8* alphaValues, uint32 bufferSize) CreateAlphaTexture;
				public new function HRESULT(IDWriteGlyphRunAnalysis *self, IDWriteRenderingParams* renderingParams, float* blendGamma, float* blendEnhancedContrast, float* blendClearTypeLevel) GetAlphaBlendParams;
			}
		}
		[CRepr]
		public struct IDWriteFactory : IUnknown
		{
			public const new Guid IID = .(0xb859ee5a, 0xd838, 0x4b5b, 0xa2, 0xe8, 0x1a, 0xdc, 0x7d, 0x93, 0xdb, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSystemFontCollection(IDWriteFontCollection** fontCollection, BOOL checkForUpdates) mut
			{
				return VT.GetSystemFontCollection(&this, fontCollection, checkForUpdates);
			}
			public HRESULT CreateCustomFontCollection(IDWriteFontCollectionLoader* collectionLoader, void* collectionKey, uint32 collectionKeySize, IDWriteFontCollection** fontCollection) mut
			{
				return VT.CreateCustomFontCollection(&this, collectionLoader, collectionKey, collectionKeySize, fontCollection);
			}
			public HRESULT RegisterFontCollectionLoader(IDWriteFontCollectionLoader* fontCollectionLoader) mut
			{
				return VT.RegisterFontCollectionLoader(&this, fontCollectionLoader);
			}
			public HRESULT UnregisterFontCollectionLoader(IDWriteFontCollectionLoader* fontCollectionLoader) mut
			{
				return VT.UnregisterFontCollectionLoader(&this, fontCollectionLoader);
			}
			public HRESULT CreateFontFileReference(PWSTR filePath, FILETIME* lastWriteTime, IDWriteFontFile** fontFile) mut
			{
				return VT.CreateFontFileReference(&this, filePath, lastWriteTime, fontFile);
			}
			public HRESULT CreateCustomFontFileReference(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, IDWriteFontFileLoader* fontFileLoader, IDWriteFontFile** fontFile) mut
			{
				return VT.CreateCustomFontFileReference(&this, fontFileReferenceKey, fontFileReferenceKeySize, fontFileLoader, fontFile);
			}
			public HRESULT CreateFontFace(DWRITE_FONT_FACE_TYPE fontFaceType, uint32 numberOfFiles, IDWriteFontFile** fontFiles, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontFaceSimulationFlags, IDWriteFontFace** fontFace) mut
			{
				return VT.CreateFontFace(&this, fontFaceType, numberOfFiles, fontFiles, faceIndex, fontFaceSimulationFlags, fontFace);
			}
			public HRESULT CreateRenderingParams(IDWriteRenderingParams** renderingParams) mut
			{
				return VT.CreateRenderingParams(&this, renderingParams);
			}
			public HRESULT CreateMonitorRenderingParams(HMONITOR monitor, IDWriteRenderingParams** renderingParams) mut
			{
				return VT.CreateMonitorRenderingParams(&this, monitor, renderingParams);
			}
			public HRESULT CreateCustomRenderingParams(float gamma, float enhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, IDWriteRenderingParams** renderingParams) mut
			{
				return VT.CreateCustomRenderingParams(&this, gamma, enhancedContrast, clearTypeLevel, pixelGeometry, renderingMode, renderingParams);
			}
			public HRESULT RegisterFontFileLoader(IDWriteFontFileLoader* fontFileLoader) mut
			{
				return VT.RegisterFontFileLoader(&this, fontFileLoader);
			}
			public HRESULT UnregisterFontFileLoader(IDWriteFontFileLoader* fontFileLoader) mut
			{
				return VT.UnregisterFontFileLoader(&this, fontFileLoader);
			}
			public HRESULT CreateTextFormat(PWSTR fontFamilyName, IDWriteFontCollection* fontCollection, DWRITE_FONT_WEIGHT fontWeight, DWRITE_FONT_STYLE fontStyle, DWRITE_FONT_STRETCH fontStretch, float fontSize, PWSTR localeName, IDWriteTextFormat** textFormat) mut
			{
				return VT.CreateTextFormat(&this, fontFamilyName, fontCollection, fontWeight, fontStyle, fontStretch, fontSize, localeName, textFormat);
			}
			public HRESULT CreateTypography(IDWriteTypography** typography) mut
			{
				return VT.CreateTypography(&this, typography);
			}
			public HRESULT GetGdiInterop(IDWriteGdiInterop** gdiInterop) mut
			{
				return VT.GetGdiInterop(&this, gdiInterop);
			}
			public HRESULT CreateTextLayout(char16* string, uint32 stringLength, IDWriteTextFormat* textFormat, float maxWidth, float maxHeight, IDWriteTextLayout** textLayout) mut
			{
				return VT.CreateTextLayout(&this, string, stringLength, textFormat, maxWidth, maxHeight, textLayout);
			}
			public HRESULT CreateGdiCompatibleTextLayout(char16* string, uint32 stringLength, IDWriteTextFormat* textFormat, float layoutWidth, float layoutHeight, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, IDWriteTextLayout** textLayout) mut
			{
				return VT.CreateGdiCompatibleTextLayout(&this, string, stringLength, textFormat, layoutWidth, layoutHeight, pixelsPerDip, transform, useGdiNatural, textLayout);
			}
			public HRESULT CreateEllipsisTrimmingSign(IDWriteTextFormat* textFormat, IDWriteInlineObject** trimmingSign) mut
			{
				return VT.CreateEllipsisTrimmingSign(&this, textFormat, trimmingSign);
			}
			public HRESULT CreateTextAnalyzer(IDWriteTextAnalyzer** textAnalyzer) mut
			{
				return VT.CreateTextAnalyzer(&this, textAnalyzer);
			}
			public HRESULT CreateNumberSubstitution(DWRITE_NUMBER_SUBSTITUTION_METHOD substitutionMethod, PWSTR localeName, BOOL ignoreUserOverride, IDWriteNumberSubstitution** numberSubstitution) mut
			{
				return VT.CreateNumberSubstitution(&this, substitutionMethod, localeName, ignoreUserOverride, numberSubstitution);
			}
			public HRESULT CreateGlyphRunAnalysis(DWRITE_GLYPH_RUN* glyphRun, float pixelsPerDip, DWRITE_MATRIX* transform, DWRITE_RENDERING_MODE renderingMode, DWRITE_MEASURING_MODE measuringMode, float baselineOriginX, float baselineOriginY, IDWriteGlyphRunAnalysis** glyphRunAnalysis) mut
			{
				return VT.CreateGlyphRunAnalysis(&this, glyphRun, pixelsPerDip, transform, renderingMode, measuringMode, baselineOriginX, baselineOriginY, glyphRunAnalysis);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFactory *self, IDWriteFontCollection** fontCollection, BOOL checkForUpdates) GetSystemFontCollection;
				public new function HRESULT(IDWriteFactory *self, IDWriteFontCollectionLoader* collectionLoader, void* collectionKey, uint32 collectionKeySize, IDWriteFontCollection** fontCollection) CreateCustomFontCollection;
				public new function HRESULT(IDWriteFactory *self, IDWriteFontCollectionLoader* fontCollectionLoader) RegisterFontCollectionLoader;
				public new function HRESULT(IDWriteFactory *self, IDWriteFontCollectionLoader* fontCollectionLoader) UnregisterFontCollectionLoader;
				public new function HRESULT(IDWriteFactory *self, PWSTR filePath, FILETIME* lastWriteTime, IDWriteFontFile** fontFile) CreateFontFileReference;
				public new function HRESULT(IDWriteFactory *self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, IDWriteFontFileLoader* fontFileLoader, IDWriteFontFile** fontFile) CreateCustomFontFileReference;
				public new function HRESULT(IDWriteFactory *self, DWRITE_FONT_FACE_TYPE fontFaceType, uint32 numberOfFiles, IDWriteFontFile** fontFiles, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontFaceSimulationFlags, IDWriteFontFace** fontFace) CreateFontFace;
				public new function HRESULT(IDWriteFactory *self, IDWriteRenderingParams** renderingParams) CreateRenderingParams;
				public new function HRESULT(IDWriteFactory *self, HMONITOR monitor, IDWriteRenderingParams** renderingParams) CreateMonitorRenderingParams;
				public new function HRESULT(IDWriteFactory *self, float gamma, float enhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, IDWriteRenderingParams** renderingParams) CreateCustomRenderingParams;
				public new function HRESULT(IDWriteFactory *self, IDWriteFontFileLoader* fontFileLoader) RegisterFontFileLoader;
				public new function HRESULT(IDWriteFactory *self, IDWriteFontFileLoader* fontFileLoader) UnregisterFontFileLoader;
				public new function HRESULT(IDWriteFactory *self, PWSTR fontFamilyName, IDWriteFontCollection* fontCollection, DWRITE_FONT_WEIGHT fontWeight, DWRITE_FONT_STYLE fontStyle, DWRITE_FONT_STRETCH fontStretch, float fontSize, PWSTR localeName, IDWriteTextFormat** textFormat) CreateTextFormat;
				public new function HRESULT(IDWriteFactory *self, IDWriteTypography** typography) CreateTypography;
				public new function HRESULT(IDWriteFactory *self, IDWriteGdiInterop** gdiInterop) GetGdiInterop;
				public new function HRESULT(IDWriteFactory *self, char16* string, uint32 stringLength, IDWriteTextFormat* textFormat, float maxWidth, float maxHeight, IDWriteTextLayout** textLayout) CreateTextLayout;
				public new function HRESULT(IDWriteFactory *self, char16* string, uint32 stringLength, IDWriteTextFormat* textFormat, float layoutWidth, float layoutHeight, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, IDWriteTextLayout** textLayout) CreateGdiCompatibleTextLayout;
				public new function HRESULT(IDWriteFactory *self, IDWriteTextFormat* textFormat, IDWriteInlineObject** trimmingSign) CreateEllipsisTrimmingSign;
				public new function HRESULT(IDWriteFactory *self, IDWriteTextAnalyzer** textAnalyzer) CreateTextAnalyzer;
				public new function HRESULT(IDWriteFactory *self, DWRITE_NUMBER_SUBSTITUTION_METHOD substitutionMethod, PWSTR localeName, BOOL ignoreUserOverride, IDWriteNumberSubstitution** numberSubstitution) CreateNumberSubstitution;
				public new function HRESULT(IDWriteFactory *self, DWRITE_GLYPH_RUN* glyphRun, float pixelsPerDip, DWRITE_MATRIX* transform, DWRITE_RENDERING_MODE renderingMode, DWRITE_MEASURING_MODE measuringMode, float baselineOriginX, float baselineOriginY, IDWriteGlyphRunAnalysis** glyphRunAnalysis) CreateGlyphRunAnalysis;
			}
		}
		[CRepr]
		public struct IDWriteFactory1 : IDWriteFactory
		{
			public const new Guid IID = .(0x30572f99, 0xdac6, 0x41db, 0xa1, 0x6e, 0x04, 0x86, 0x30, 0x7e, 0x60, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEudcFontCollection(IDWriteFontCollection** fontCollection, BOOL checkForUpdates) mut
			{
				return VT.GetEudcFontCollection(&this, fontCollection, checkForUpdates);
			}
			public HRESULT CreateCustomRenderingParams(float gamma, float enhancedContrast, float enhancedContrastGrayscale, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, IDWriteRenderingParams1** renderingParams) mut
			{
				return VT.CreateCustomRenderingParams(&this, gamma, enhancedContrast, enhancedContrastGrayscale, clearTypeLevel, pixelGeometry, renderingMode, renderingParams);
			}
			[CRepr]
			public struct VTable : IDWriteFactory.VTable
			{
				public new function HRESULT(IDWriteFactory1 *self, IDWriteFontCollection** fontCollection, BOOL checkForUpdates) GetEudcFontCollection;
				public new function HRESULT(IDWriteFactory1 *self, float gamma, float enhancedContrast, float enhancedContrastGrayscale, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, IDWriteRenderingParams1** renderingParams) CreateCustomRenderingParams;
			}
		}
		[CRepr]
		public struct IDWriteFontFace1 : IDWriteFontFace
		{
			public const new Guid IID = .(0xa71efdb4, 0x9fdb, 0x4838, 0xad, 0x90, 0xcf, 0xc3, 0xbe, 0x8c, 0x3d, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetMetrics(DWRITE_FONT_METRICS1* fontMetrics) mut
			{
				VT.GetMetrics(&this, fontMetrics);
			}
			public HRESULT GetGdiCompatibleMetrics(float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, DWRITE_FONT_METRICS1* fontMetrics) mut
			{
				return VT.GetGdiCompatibleMetrics(&this, emSize, pixelsPerDip, transform, fontMetrics);
			}
			public void GetCaretMetrics(DWRITE_CARET_METRICS* caretMetrics) mut
			{
				VT.GetCaretMetrics(&this, caretMetrics);
			}
			public HRESULT GetUnicodeRanges(uint32 maxRangeCount, DWRITE_UNICODE_RANGE* unicodeRanges, uint32* actualRangeCount) mut
			{
				return VT.GetUnicodeRanges(&this, maxRangeCount, unicodeRanges, actualRangeCount);
			}
			public BOOL IsMonospacedFont() mut
			{
				return VT.IsMonospacedFont(&this);
			}
			public HRESULT GetDesignGlyphAdvances(uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvances, BOOL isSideways) mut
			{
				return VT.GetDesignGlyphAdvances(&this, glyphCount, glyphIndices, glyphAdvances, isSideways);
			}
			public HRESULT GetGdiCompatibleGlyphAdvances(float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, BOOL isSideways, uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvances) mut
			{
				return VT.GetGdiCompatibleGlyphAdvances(&this, emSize, pixelsPerDip, transform, useGdiNatural, isSideways, glyphCount, glyphIndices, glyphAdvances);
			}
			public HRESULT GetKerningPairAdjustments(uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvanceAdjustments) mut
			{
				return VT.GetKerningPairAdjustments(&this, glyphCount, glyphIndices, glyphAdvanceAdjustments);
			}
			public BOOL HasKerningPairs() mut
			{
				return VT.HasKerningPairs(&this);
			}
			public HRESULT GetRecommendedRenderingMode(float fontEmSize, float dpiX, float dpiY, DWRITE_MATRIX* transform, BOOL isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, DWRITE_RENDERING_MODE* renderingMode) mut
			{
				return VT.GetRecommendedRenderingMode(&this, fontEmSize, dpiX, dpiY, transform, isSideways, outlineThreshold, measuringMode, renderingMode);
			}
			public HRESULT GetVerticalGlyphVariants(uint32 glyphCount, uint16* nominalGlyphIndices, uint16* verticalGlyphIndices) mut
			{
				return VT.GetVerticalGlyphVariants(&this, glyphCount, nominalGlyphIndices, verticalGlyphIndices);
			}
			public BOOL HasVerticalGlyphVariants() mut
			{
				return VT.HasVerticalGlyphVariants(&this);
			}
			[CRepr]
			public struct VTable : IDWriteFontFace.VTable
			{
				public new function void(IDWriteFontFace1 *self, DWRITE_FONT_METRICS1* fontMetrics) GetMetrics;
				public new function HRESULT(IDWriteFontFace1 *self, float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, DWRITE_FONT_METRICS1* fontMetrics) GetGdiCompatibleMetrics;
				public new function void(IDWriteFontFace1 *self, DWRITE_CARET_METRICS* caretMetrics) GetCaretMetrics;
				public new function HRESULT(IDWriteFontFace1 *self, uint32 maxRangeCount, DWRITE_UNICODE_RANGE* unicodeRanges, uint32* actualRangeCount) GetUnicodeRanges;
				public new function BOOL(IDWriteFontFace1 *self) IsMonospacedFont;
				public new function HRESULT(IDWriteFontFace1 *self, uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvances, BOOL isSideways) GetDesignGlyphAdvances;
				public new function HRESULT(IDWriteFontFace1 *self, float emSize, float pixelsPerDip, DWRITE_MATRIX* transform, BOOL useGdiNatural, BOOL isSideways, uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvances) GetGdiCompatibleGlyphAdvances;
				public new function HRESULT(IDWriteFontFace1 *self, uint32 glyphCount, uint16* glyphIndices, int32* glyphAdvanceAdjustments) GetKerningPairAdjustments;
				public new function BOOL(IDWriteFontFace1 *self) HasKerningPairs;
				public new function HRESULT(IDWriteFontFace1 *self, float fontEmSize, float dpiX, float dpiY, DWRITE_MATRIX* transform, BOOL isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, DWRITE_RENDERING_MODE* renderingMode) GetRecommendedRenderingMode;
				public new function HRESULT(IDWriteFontFace1 *self, uint32 glyphCount, uint16* nominalGlyphIndices, uint16* verticalGlyphIndices) GetVerticalGlyphVariants;
				public new function BOOL(IDWriteFontFace1 *self) HasVerticalGlyphVariants;
			}
		}
		[CRepr]
		public struct IDWriteFont1 : IDWriteFont
		{
			public const new Guid IID = .(0xacd16696, 0x8c14, 0x4f5d, 0x87, 0x7e, 0xfe, 0x3f, 0xc1, 0xd3, 0x27, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public void GetMetrics(DWRITE_FONT_METRICS1* fontMetrics) mut
			{
				VT.GetMetrics(&this, fontMetrics);
			}
			public void GetPanose(DWRITE_PANOSE* panose) mut
			{
				VT.GetPanose(&this, panose);
			}
			public HRESULT GetUnicodeRanges(uint32 maxRangeCount, DWRITE_UNICODE_RANGE* unicodeRanges, uint32* actualRangeCount) mut
			{
				return VT.GetUnicodeRanges(&this, maxRangeCount, unicodeRanges, actualRangeCount);
			}
			public BOOL IsMonospacedFont() mut
			{
				return VT.IsMonospacedFont(&this);
			}
			[CRepr]
			public struct VTable : IDWriteFont.VTable
			{
				public new function void(IDWriteFont1 *self, DWRITE_FONT_METRICS1* fontMetrics) GetMetrics;
				public new function void(IDWriteFont1 *self, DWRITE_PANOSE* panose) GetPanose;
				public new function HRESULT(IDWriteFont1 *self, uint32 maxRangeCount, DWRITE_UNICODE_RANGE* unicodeRanges, uint32* actualRangeCount) GetUnicodeRanges;
				public new function BOOL(IDWriteFont1 *self) IsMonospacedFont;
			}
		}
		[CRepr]
		public struct IDWriteRenderingParams1 : IDWriteRenderingParams
		{
			public const new Guid IID = .(0x94413cf4, 0xa6fc, 0x4248, 0x8b, 0x50, 0x66, 0x74, 0x34, 0x8f, 0xca, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public float GetGrayscaleEnhancedContrast() mut
			{
				return VT.GetGrayscaleEnhancedContrast(&this);
			}
			[CRepr]
			public struct VTable : IDWriteRenderingParams.VTable
			{
				public new function float(IDWriteRenderingParams1 *self) GetGrayscaleEnhancedContrast;
			}
		}
		[CRepr]
		public struct IDWriteTextAnalyzer1 : IDWriteTextAnalyzer
		{
			public const new Guid IID = .(0x80dad800, 0xe21f, 0x4e83, 0x96, 0xce, 0xbf, 0xcc, 0xe5, 0x00, 0xdb, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ApplyCharacterSpacing(float leadingSpacing, float trailingSpacing, float minimumAdvanceWidth, uint32 textLength, uint32 glyphCount, uint16* clusterMap, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, float* modifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* modifiedGlyphOffsets) mut
			{
				return VT.ApplyCharacterSpacing(&this, leadingSpacing, trailingSpacing, minimumAdvanceWidth, textLength, glyphCount, clusterMap, glyphAdvances, glyphOffsets, glyphProperties, modifiedGlyphAdvances, modifiedGlyphOffsets);
			}
			public HRESULT GetBaseline(IDWriteFontFace* fontFace, DWRITE_BASELINE baseline, BOOL isVertical, BOOL isSimulationAllowed, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, int32* baselineCoordinate, BOOL* exists) mut
			{
				return VT.GetBaseline(&this, fontFace, baseline, isVertical, isSimulationAllowed, scriptAnalysis, localeName, baselineCoordinate, exists);
			}
			public HRESULT AnalyzeVerticalGlyphOrientation(IDWriteTextAnalysisSource1* analysisSource, uint32 textPosition, uint32 textLength, IDWriteTextAnalysisSink1* analysisSink) mut
			{
				return VT.AnalyzeVerticalGlyphOrientation(&this, analysisSource, textPosition, textLength, analysisSink);
			}
			public HRESULT GetGlyphOrientationTransform(DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, BOOL isSideways, DWRITE_MATRIX* transform) mut
			{
				return VT.GetGlyphOrientationTransform(&this, glyphOrientationAngle, isSideways, transform);
			}
			public HRESULT GetScriptProperties(DWRITE_SCRIPT_ANALYSIS scriptAnalysis, DWRITE_SCRIPT_PROPERTIES* scriptProperties) mut
			{
				return VT.GetScriptProperties(&this, scriptAnalysis, scriptProperties);
			}
			public HRESULT GetTextComplexity(char16* textString, uint32 textLength, IDWriteFontFace* fontFace, BOOL* isTextSimple, uint32* textLengthRead, uint16* glyphIndices) mut
			{
				return VT.GetTextComplexity(&this, textString, textLength, fontFace, isTextSimple, textLengthRead, glyphIndices);
			}
			public HRESULT GetJustificationOpportunities(IDWriteFontFace* fontFace, float fontEmSize, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, uint32 textLength, uint32 glyphCount, char16* textString, uint16* clusterMap, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, DWRITE_JUSTIFICATION_OPPORTUNITY* justificationOpportunities) mut
			{
				return VT.GetJustificationOpportunities(&this, fontFace, fontEmSize, scriptAnalysis, textLength, glyphCount, textString, clusterMap, glyphProperties, justificationOpportunities);
			}
			public HRESULT JustifyGlyphAdvances(float lineWidth, uint32 glyphCount, DWRITE_JUSTIFICATION_OPPORTUNITY* justificationOpportunities, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets, float* justifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* justifiedGlyphOffsets) mut
			{
				return VT.JustifyGlyphAdvances(&this, lineWidth, glyphCount, justificationOpportunities, glyphAdvances, glyphOffsets, justifiedGlyphAdvances, justifiedGlyphOffsets);
			}
			public HRESULT GetJustifiedGlyphs(IDWriteFontFace* fontFace, float fontEmSize, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, uint32 textLength, uint32 glyphCount, uint32 maxGlyphCount, uint16* clusterMap, uint16* glyphIndices, float* glyphAdvances, float* justifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* justifiedGlyphOffsets, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, uint32* actualGlyphCount, uint16* modifiedClusterMap, uint16* modifiedGlyphIndices, float* modifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* modifiedGlyphOffsets) mut
			{
				return VT.GetJustifiedGlyphs(&this, fontFace, fontEmSize, scriptAnalysis, textLength, glyphCount, maxGlyphCount, clusterMap, glyphIndices, glyphAdvances, justifiedGlyphAdvances, justifiedGlyphOffsets, glyphProperties, actualGlyphCount, modifiedClusterMap, modifiedGlyphIndices, modifiedGlyphAdvances, modifiedGlyphOffsets);
			}
			[CRepr]
			public struct VTable : IDWriteTextAnalyzer.VTable
			{
				public new function HRESULT(IDWriteTextAnalyzer1 *self, float leadingSpacing, float trailingSpacing, float minimumAdvanceWidth, uint32 textLength, uint32 glyphCount, uint16* clusterMap, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, float* modifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* modifiedGlyphOffsets) ApplyCharacterSpacing;
				public new function HRESULT(IDWriteTextAnalyzer1 *self, IDWriteFontFace* fontFace, DWRITE_BASELINE baseline, BOOL isVertical, BOOL isSimulationAllowed, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, int32* baselineCoordinate, BOOL* exists) GetBaseline;
				public new function HRESULT(IDWriteTextAnalyzer1 *self, IDWriteTextAnalysisSource1* analysisSource, uint32 textPosition, uint32 textLength, IDWriteTextAnalysisSink1* analysisSink) AnalyzeVerticalGlyphOrientation;
				public new function HRESULT(IDWriteTextAnalyzer1 *self, DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, BOOL isSideways, DWRITE_MATRIX* transform) GetGlyphOrientationTransform;
				public new function HRESULT(IDWriteTextAnalyzer1 *self, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, DWRITE_SCRIPT_PROPERTIES* scriptProperties) GetScriptProperties;
				public new function HRESULT(IDWriteTextAnalyzer1 *self, char16* textString, uint32 textLength, IDWriteFontFace* fontFace, BOOL* isTextSimple, uint32* textLengthRead, uint16* glyphIndices) GetTextComplexity;
				public new function HRESULT(IDWriteTextAnalyzer1 *self, IDWriteFontFace* fontFace, float fontEmSize, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, uint32 textLength, uint32 glyphCount, char16* textString, uint16* clusterMap, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, DWRITE_JUSTIFICATION_OPPORTUNITY* justificationOpportunities) GetJustificationOpportunities;
				public new function HRESULT(IDWriteTextAnalyzer1 *self, float lineWidth, uint32 glyphCount, DWRITE_JUSTIFICATION_OPPORTUNITY* justificationOpportunities, float* glyphAdvances, DWRITE_GLYPH_OFFSET* glyphOffsets, float* justifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* justifiedGlyphOffsets) JustifyGlyphAdvances;
				public new function HRESULT(IDWriteTextAnalyzer1 *self, IDWriteFontFace* fontFace, float fontEmSize, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, uint32 textLength, uint32 glyphCount, uint32 maxGlyphCount, uint16* clusterMap, uint16* glyphIndices, float* glyphAdvances, float* justifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* justifiedGlyphOffsets, DWRITE_SHAPING_GLYPH_PROPERTIES* glyphProperties, uint32* actualGlyphCount, uint16* modifiedClusterMap, uint16* modifiedGlyphIndices, float* modifiedGlyphAdvances, DWRITE_GLYPH_OFFSET* modifiedGlyphOffsets) GetJustifiedGlyphs;
			}
		}
		[CRepr]
		public struct IDWriteTextAnalysisSource1 : IDWriteTextAnalysisSource
		{
			public const new Guid IID = .(0x639cfad8, 0x0fb4, 0x4b21, 0xa5, 0x8a, 0x06, 0x79, 0x20, 0x12, 0x00, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVerticalGlyphOrientation(uint32 textPosition, uint32* textLength, DWRITE_VERTICAL_GLYPH_ORIENTATION* glyphOrientation, uint8* bidiLevel) mut
			{
				return VT.GetVerticalGlyphOrientation(&this, textPosition, textLength, glyphOrientation, bidiLevel);
			}
			[CRepr]
			public struct VTable : IDWriteTextAnalysisSource.VTable
			{
				public new function HRESULT(IDWriteTextAnalysisSource1 *self, uint32 textPosition, uint32* textLength, DWRITE_VERTICAL_GLYPH_ORIENTATION* glyphOrientation, uint8* bidiLevel) GetVerticalGlyphOrientation;
			}
		}
		[CRepr]
		public struct IDWriteTextAnalysisSink1 : IDWriteTextAnalysisSink
		{
			public const new Guid IID = .(0xb0d941a0, 0x85e7, 0x4d8b, 0x9f, 0xd3, 0x5c, 0xed, 0x99, 0x34, 0x48, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetGlyphOrientation(uint32 textPosition, uint32 textLength, DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, uint8 adjustedBidiLevel, BOOL isSideways, BOOL isRightToLeft) mut
			{
				return VT.SetGlyphOrientation(&this, textPosition, textLength, glyphOrientationAngle, adjustedBidiLevel, isSideways, isRightToLeft);
			}
			[CRepr]
			public struct VTable : IDWriteTextAnalysisSink.VTable
			{
				public new function HRESULT(IDWriteTextAnalysisSink1 *self, uint32 textPosition, uint32 textLength, DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, uint8 adjustedBidiLevel, BOOL isSideways, BOOL isRightToLeft) SetGlyphOrientation;
			}
		}
		[CRepr]
		public struct IDWriteTextLayout1 : IDWriteTextLayout
		{
			public const new Guid IID = .(0x9064d822, 0x80a7, 0x465c, 0xa9, 0x86, 0xdf, 0x65, 0xf7, 0x8b, 0x8f, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPairKerning(BOOL isPairKerningEnabled, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetPairKerning(&this, isPairKerningEnabled, textRange);
			}
			public HRESULT GetPairKerning(uint32 currentPosition, BOOL* isPairKerningEnabled, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetPairKerning(&this, currentPosition, isPairKerningEnabled, textRange);
			}
			public HRESULT SetCharacterSpacing(float leadingSpacing, float trailingSpacing, float minimumAdvanceWidth, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetCharacterSpacing(&this, leadingSpacing, trailingSpacing, minimumAdvanceWidth, textRange);
			}
			public HRESULT GetCharacterSpacing(uint32 currentPosition, float* leadingSpacing, float* trailingSpacing, float* minimumAdvanceWidth, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetCharacterSpacing(&this, currentPosition, leadingSpacing, trailingSpacing, minimumAdvanceWidth, textRange);
			}
			[CRepr]
			public struct VTable : IDWriteTextLayout.VTable
			{
				public new function HRESULT(IDWriteTextLayout1 *self, BOOL isPairKerningEnabled, DWRITE_TEXT_RANGE textRange) SetPairKerning;
				public new function HRESULT(IDWriteTextLayout1 *self, uint32 currentPosition, BOOL* isPairKerningEnabled, DWRITE_TEXT_RANGE* textRange) GetPairKerning;
				public new function HRESULT(IDWriteTextLayout1 *self, float leadingSpacing, float trailingSpacing, float minimumAdvanceWidth, DWRITE_TEXT_RANGE textRange) SetCharacterSpacing;
				public new function HRESULT(IDWriteTextLayout1 *self, uint32 currentPosition, float* leadingSpacing, float* trailingSpacing, float* minimumAdvanceWidth, DWRITE_TEXT_RANGE* textRange) GetCharacterSpacing;
			}
		}
		[CRepr]
		public struct IDWriteBitmapRenderTarget1 : IDWriteBitmapRenderTarget
		{
			public const new Guid IID = .(0x791e8298, 0x3ef3, 0x4230, 0x98, 0x80, 0xc9, 0xbd, 0xec, 0xc4, 0x20, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public DWRITE_TEXT_ANTIALIAS_MODE GetTextAntialiasMode() mut
			{
				return VT.GetTextAntialiasMode(&this);
			}
			public HRESULT SetTextAntialiasMode(DWRITE_TEXT_ANTIALIAS_MODE antialiasMode) mut
			{
				return VT.SetTextAntialiasMode(&this, antialiasMode);
			}
			[CRepr]
			public struct VTable : IDWriteBitmapRenderTarget.VTable
			{
				public new function DWRITE_TEXT_ANTIALIAS_MODE(IDWriteBitmapRenderTarget1 *self) GetTextAntialiasMode;
				public new function HRESULT(IDWriteBitmapRenderTarget1 *self, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode) SetTextAntialiasMode;
			}
		}
		[CRepr]
		public struct IDWriteTextRenderer1 : IDWriteTextRenderer
		{
			public const new Guid IID = .(0xd3e0e934, 0x22a0, 0x427e, 0xaa, 0xe4, 0x7d, 0x95, 0x74, 0xb5, 0x9d, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DrawGlyphRun(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, DWRITE_MEASURING_MODE measuringMode, DWRITE_GLYPH_RUN* glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, IUnknown* clientDrawingEffect) mut
			{
				return VT.DrawGlyphRun(&this, clientDrawingContext, baselineOriginX, baselineOriginY, orientationAngle, measuringMode, glyphRun, glyphRunDescription, clientDrawingEffect);
			}
			public HRESULT DrawUnderline(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, DWRITE_UNDERLINE* underline, IUnknown* clientDrawingEffect) mut
			{
				return VT.DrawUnderline(&this, clientDrawingContext, baselineOriginX, baselineOriginY, orientationAngle, underline, clientDrawingEffect);
			}
			public HRESULT DrawStrikethrough(void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, DWRITE_STRIKETHROUGH* strikethrough, IUnknown* clientDrawingEffect) mut
			{
				return VT.DrawStrikethrough(&this, clientDrawingContext, baselineOriginX, baselineOriginY, orientationAngle, strikethrough, clientDrawingEffect);
			}
			public HRESULT DrawInlineObject(void* clientDrawingContext, float originX, float originY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, IDWriteInlineObject* inlineObject, BOOL isSideways, BOOL isRightToLeft, IUnknown* clientDrawingEffect) mut
			{
				return VT.DrawInlineObject(&this, clientDrawingContext, originX, originY, orientationAngle, inlineObject, isSideways, isRightToLeft, clientDrawingEffect);
			}
			[CRepr]
			public struct VTable : IDWriteTextRenderer.VTable
			{
				public new function HRESULT(IDWriteTextRenderer1 *self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, DWRITE_MEASURING_MODE measuringMode, DWRITE_GLYPH_RUN* glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, IUnknown* clientDrawingEffect) DrawGlyphRun;
				public new function HRESULT(IDWriteTextRenderer1 *self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, DWRITE_UNDERLINE* underline, IUnknown* clientDrawingEffect) DrawUnderline;
				public new function HRESULT(IDWriteTextRenderer1 *self, void* clientDrawingContext, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, DWRITE_STRIKETHROUGH* strikethrough, IUnknown* clientDrawingEffect) DrawStrikethrough;
				public new function HRESULT(IDWriteTextRenderer1 *self, void* clientDrawingContext, float originX, float originY, DWRITE_GLYPH_ORIENTATION_ANGLE orientationAngle, IDWriteInlineObject* inlineObject, BOOL isSideways, BOOL isRightToLeft, IUnknown* clientDrawingEffect) DrawInlineObject;
			}
		}
		[CRepr]
		public struct IDWriteTextFormat1 : IDWriteTextFormat
		{
			public const new Guid IID = .(0x5f174b49, 0x0d8b, 0x4cfb, 0x8b, 0xca, 0xf1, 0xcc, 0xe9, 0xd0, 0x6c, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetVerticalGlyphOrientation(DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation) mut
			{
				return VT.SetVerticalGlyphOrientation(&this, glyphOrientation);
			}
			public DWRITE_VERTICAL_GLYPH_ORIENTATION GetVerticalGlyphOrientation() mut
			{
				return VT.GetVerticalGlyphOrientation(&this);
			}
			public HRESULT SetLastLineWrapping(BOOL isLastLineWrappingEnabled) mut
			{
				return VT.SetLastLineWrapping(&this, isLastLineWrappingEnabled);
			}
			public BOOL GetLastLineWrapping() mut
			{
				return VT.GetLastLineWrapping(&this);
			}
			public HRESULT SetOpticalAlignment(DWRITE_OPTICAL_ALIGNMENT opticalAlignment) mut
			{
				return VT.SetOpticalAlignment(&this, opticalAlignment);
			}
			public DWRITE_OPTICAL_ALIGNMENT GetOpticalAlignment() mut
			{
				return VT.GetOpticalAlignment(&this);
			}
			public HRESULT SetFontFallback(IDWriteFontFallback* fontFallback) mut
			{
				return VT.SetFontFallback(&this, fontFallback);
			}
			public HRESULT GetFontFallback(IDWriteFontFallback** fontFallback) mut
			{
				return VT.GetFontFallback(&this, fontFallback);
			}
			[CRepr]
			public struct VTable : IDWriteTextFormat.VTable
			{
				public new function HRESULT(IDWriteTextFormat1 *self, DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation) SetVerticalGlyphOrientation;
				public new function DWRITE_VERTICAL_GLYPH_ORIENTATION(IDWriteTextFormat1 *self) GetVerticalGlyphOrientation;
				public new function HRESULT(IDWriteTextFormat1 *self, BOOL isLastLineWrappingEnabled) SetLastLineWrapping;
				public new function BOOL(IDWriteTextFormat1 *self) GetLastLineWrapping;
				public new function HRESULT(IDWriteTextFormat1 *self, DWRITE_OPTICAL_ALIGNMENT opticalAlignment) SetOpticalAlignment;
				public new function DWRITE_OPTICAL_ALIGNMENT(IDWriteTextFormat1 *self) GetOpticalAlignment;
				public new function HRESULT(IDWriteTextFormat1 *self, IDWriteFontFallback* fontFallback) SetFontFallback;
				public new function HRESULT(IDWriteTextFormat1 *self, IDWriteFontFallback** fontFallback) GetFontFallback;
			}
		}
		[CRepr]
		public struct IDWriteTextLayout2 : IDWriteTextLayout1
		{
			public const new Guid IID = .(0x1093c18f, 0x8d5e, 0x43f0, 0xb0, 0x64, 0x09, 0x17, 0x31, 0x1b, 0x52, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMetrics(DWRITE_TEXT_METRICS1* textMetrics) mut
			{
				return VT.GetMetrics(&this, textMetrics);
			}
			public HRESULT SetVerticalGlyphOrientation(DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation) mut
			{
				return VT.SetVerticalGlyphOrientation(&this, glyphOrientation);
			}
			public DWRITE_VERTICAL_GLYPH_ORIENTATION GetVerticalGlyphOrientation() mut
			{
				return VT.GetVerticalGlyphOrientation(&this);
			}
			public HRESULT SetLastLineWrapping(BOOL isLastLineWrappingEnabled) mut
			{
				return VT.SetLastLineWrapping(&this, isLastLineWrappingEnabled);
			}
			public BOOL GetLastLineWrapping() mut
			{
				return VT.GetLastLineWrapping(&this);
			}
			public HRESULT SetOpticalAlignment(DWRITE_OPTICAL_ALIGNMENT opticalAlignment) mut
			{
				return VT.SetOpticalAlignment(&this, opticalAlignment);
			}
			public DWRITE_OPTICAL_ALIGNMENT GetOpticalAlignment() mut
			{
				return VT.GetOpticalAlignment(&this);
			}
			public HRESULT SetFontFallback(IDWriteFontFallback* fontFallback) mut
			{
				return VT.SetFontFallback(&this, fontFallback);
			}
			public HRESULT GetFontFallback(IDWriteFontFallback** fontFallback) mut
			{
				return VT.GetFontFallback(&this, fontFallback);
			}
			[CRepr]
			public struct VTable : IDWriteTextLayout1.VTable
			{
				public new function HRESULT(IDWriteTextLayout2 *self, DWRITE_TEXT_METRICS1* textMetrics) GetMetrics;
				public new function HRESULT(IDWriteTextLayout2 *self, DWRITE_VERTICAL_GLYPH_ORIENTATION glyphOrientation) SetVerticalGlyphOrientation;
				public new function DWRITE_VERTICAL_GLYPH_ORIENTATION(IDWriteTextLayout2 *self) GetVerticalGlyphOrientation;
				public new function HRESULT(IDWriteTextLayout2 *self, BOOL isLastLineWrappingEnabled) SetLastLineWrapping;
				public new function BOOL(IDWriteTextLayout2 *self) GetLastLineWrapping;
				public new function HRESULT(IDWriteTextLayout2 *self, DWRITE_OPTICAL_ALIGNMENT opticalAlignment) SetOpticalAlignment;
				public new function DWRITE_OPTICAL_ALIGNMENT(IDWriteTextLayout2 *self) GetOpticalAlignment;
				public new function HRESULT(IDWriteTextLayout2 *self, IDWriteFontFallback* fontFallback) SetFontFallback;
				public new function HRESULT(IDWriteTextLayout2 *self, IDWriteFontFallback** fontFallback) GetFontFallback;
			}
		}
		[CRepr]
		public struct IDWriteTextAnalyzer2 : IDWriteTextAnalyzer1
		{
			public const new Guid IID = .(0x553a9ff3, 0x5693, 0x4df7, 0xb5, 0x2b, 0x74, 0x80, 0x6f, 0x7f, 0x2e, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGlyphOrientationTransform(DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, BOOL isSideways, float originX, float originY, DWRITE_MATRIX* transform) mut
			{
				return VT.GetGlyphOrientationTransform(&this, glyphOrientationAngle, isSideways, originX, originY, transform);
			}
			public HRESULT GetTypographicFeatures(IDWriteFontFace* fontFace, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, uint32 maxTagCount, uint32* actualTagCount, DWRITE_FONT_FEATURE_TAG* tags) mut
			{
				return VT.GetTypographicFeatures(&this, fontFace, scriptAnalysis, localeName, maxTagCount, actualTagCount, tags);
			}
			public HRESULT CheckTypographicFeature(IDWriteFontFace* fontFace, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, DWRITE_FONT_FEATURE_TAG featureTag, uint32 glyphCount, uint16* glyphIndices, uint8* featureApplies) mut
			{
				return VT.CheckTypographicFeature(&this, fontFace, scriptAnalysis, localeName, featureTag, glyphCount, glyphIndices, featureApplies);
			}
			[CRepr]
			public struct VTable : IDWriteTextAnalyzer1.VTable
			{
				public new function HRESULT(IDWriteTextAnalyzer2 *self, DWRITE_GLYPH_ORIENTATION_ANGLE glyphOrientationAngle, BOOL isSideways, float originX, float originY, DWRITE_MATRIX* transform) GetGlyphOrientationTransform;
				public new function HRESULT(IDWriteTextAnalyzer2 *self, IDWriteFontFace* fontFace, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, uint32 maxTagCount, uint32* actualTagCount, DWRITE_FONT_FEATURE_TAG* tags) GetTypographicFeatures;
				public new function HRESULT(IDWriteTextAnalyzer2 *self, IDWriteFontFace* fontFace, DWRITE_SCRIPT_ANALYSIS scriptAnalysis, PWSTR localeName, DWRITE_FONT_FEATURE_TAG featureTag, uint32 glyphCount, uint16* glyphIndices, uint8* featureApplies) CheckTypographicFeature;
			}
		}
		[CRepr]
		public struct IDWriteFontFallback : IUnknown
		{
			public const new Guid IID = .(0xefa008f9, 0xf7a1, 0x48bf, 0xb0, 0x5c, 0xf2, 0x24, 0x71, 0x3c, 0xc0, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MapCharacters(IDWriteTextAnalysisSource* analysisSource, uint32 textPosition, uint32 textLength, IDWriteFontCollection* baseFontCollection, PWSTR baseFamilyName, DWRITE_FONT_WEIGHT baseWeight, DWRITE_FONT_STYLE baseStyle, DWRITE_FONT_STRETCH baseStretch, uint32* mappedLength, IDWriteFont** mappedFont, float* scale) mut
			{
				return VT.MapCharacters(&this, analysisSource, textPosition, textLength, baseFontCollection, baseFamilyName, baseWeight, baseStyle, baseStretch, mappedLength, mappedFont, scale);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFontFallback *self, IDWriteTextAnalysisSource* analysisSource, uint32 textPosition, uint32 textLength, IDWriteFontCollection* baseFontCollection, PWSTR baseFamilyName, DWRITE_FONT_WEIGHT baseWeight, DWRITE_FONT_STYLE baseStyle, DWRITE_FONT_STRETCH baseStretch, uint32* mappedLength, IDWriteFont** mappedFont, float* scale) MapCharacters;
			}
		}
		[CRepr]
		public struct IDWriteFontFallbackBuilder : IUnknown
		{
			public const new Guid IID = .(0xfd882d06, 0x8aba, 0x4fb8, 0xb8, 0x49, 0x8b, 0xe8, 0xb7, 0x3e, 0x14, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddMapping(DWRITE_UNICODE_RANGE* ranges, uint32 rangesCount, uint16** targetFamilyNames, uint32 targetFamilyNamesCount, IDWriteFontCollection* fontCollection, PWSTR localeName, PWSTR baseFamilyName, float scale) mut
			{
				return VT.AddMapping(&this, ranges, rangesCount, targetFamilyNames, targetFamilyNamesCount, fontCollection, localeName, baseFamilyName, scale);
			}
			public HRESULT AddMappings(IDWriteFontFallback* fontFallback) mut
			{
				return VT.AddMappings(&this, fontFallback);
			}
			public HRESULT CreateFontFallback(IDWriteFontFallback** fontFallback) mut
			{
				return VT.CreateFontFallback(&this, fontFallback);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFontFallbackBuilder *self, DWRITE_UNICODE_RANGE* ranges, uint32 rangesCount, uint16** targetFamilyNames, uint32 targetFamilyNamesCount, IDWriteFontCollection* fontCollection, PWSTR localeName, PWSTR baseFamilyName, float scale) AddMapping;
				public new function HRESULT(IDWriteFontFallbackBuilder *self, IDWriteFontFallback* fontFallback) AddMappings;
				public new function HRESULT(IDWriteFontFallbackBuilder *self, IDWriteFontFallback** fontFallback) CreateFontFallback;
			}
		}
		[CRepr]
		public struct IDWriteFont2 : IDWriteFont1
		{
			public const new Guid IID = .(0x29748ed6, 0x8c9c, 0x4a6a, 0xbe, 0x0b, 0xd9, 0x12, 0xe8, 0x53, 0x89, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public BOOL IsColorFont() mut
			{
				return VT.IsColorFont(&this);
			}
			[CRepr]
			public struct VTable : IDWriteFont1.VTable
			{
				public new function BOOL(IDWriteFont2 *self) IsColorFont;
			}
		}
		[CRepr]
		public struct IDWriteFontFace2 : IDWriteFontFace1
		{
			public const new Guid IID = .(0xd8b768ff, 0x64bc, 0x4e66, 0x98, 0x2b, 0xec, 0x8e, 0x87, 0xf6, 0x93, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public BOOL IsColorFont() mut
			{
				return VT.IsColorFont(&this);
			}
			public uint32 GetColorPaletteCount() mut
			{
				return VT.GetColorPaletteCount(&this);
			}
			public uint32 GetPaletteEntryCount() mut
			{
				return VT.GetPaletteEntryCount(&this);
			}
			public HRESULT GetPaletteEntries(uint32 colorPaletteIndex, uint32 firstEntryIndex, uint32 entryCount, DWRITE_COLOR_F* paletteEntries) mut
			{
				return VT.GetPaletteEntries(&this, colorPaletteIndex, firstEntryIndex, entryCount, paletteEntries);
			}
			public HRESULT GetRecommendedRenderingMode(float fontEmSize, float dpiX, float dpiY, DWRITE_MATRIX* transform, BOOL isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, DWRITE_RENDERING_MODE* renderingMode, DWRITE_GRID_FIT_MODE* gridFitMode) mut
			{
				return VT.GetRecommendedRenderingMode(&this, fontEmSize, dpiX, dpiY, transform, isSideways, outlineThreshold, measuringMode, renderingParams, renderingMode, gridFitMode);
			}
			[CRepr]
			public struct VTable : IDWriteFontFace1.VTable
			{
				public new function BOOL(IDWriteFontFace2 *self) IsColorFont;
				public new function uint32(IDWriteFontFace2 *self) GetColorPaletteCount;
				public new function uint32(IDWriteFontFace2 *self) GetPaletteEntryCount;
				public new function HRESULT(IDWriteFontFace2 *self, uint32 colorPaletteIndex, uint32 firstEntryIndex, uint32 entryCount, DWRITE_COLOR_F* paletteEntries) GetPaletteEntries;
				public new function HRESULT(IDWriteFontFace2 *self, float fontEmSize, float dpiX, float dpiY, DWRITE_MATRIX* transform, BOOL isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, DWRITE_RENDERING_MODE* renderingMode, DWRITE_GRID_FIT_MODE* gridFitMode) GetRecommendedRenderingMode;
			}
		}
		[CRepr]
		public struct IDWriteColorGlyphRunEnumerator : IUnknown
		{
			public const new Guid IID = .(0xd31fbe17, 0xf157, 0x41a2, 0x8d, 0x24, 0xcb, 0x77, 0x9e, 0x05, 0x60, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MoveNext(BOOL* hasRun) mut
			{
				return VT.MoveNext(&this, hasRun);
			}
			public HRESULT GetCurrentRun(DWRITE_COLOR_GLYPH_RUN** colorGlyphRun) mut
			{
				return VT.GetCurrentRun(&this, colorGlyphRun);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteColorGlyphRunEnumerator *self, BOOL* hasRun) MoveNext;
				public new function HRESULT(IDWriteColorGlyphRunEnumerator *self, DWRITE_COLOR_GLYPH_RUN** colorGlyphRun) GetCurrentRun;
			}
		}
		[CRepr]
		public struct IDWriteRenderingParams2 : IDWriteRenderingParams1
		{
			public const new Guid IID = .(0xf9d711c3, 0x9777, 0x40ae, 0x87, 0xe8, 0x3e, 0x5a, 0xf9, 0xbf, 0x09, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public DWRITE_GRID_FIT_MODE GetGridFitMode() mut
			{
				return VT.GetGridFitMode(&this);
			}
			[CRepr]
			public struct VTable : IDWriteRenderingParams1.VTable
			{
				public new function DWRITE_GRID_FIT_MODE(IDWriteRenderingParams2 *self) GetGridFitMode;
			}
		}
		[CRepr]
		public struct IDWriteFactory2 : IDWriteFactory1
		{
			public const new Guid IID = .(0x0439fc60, 0xca44, 0x4994, 0x8d, 0xee, 0x3a, 0x9a, 0xf7, 0xb7, 0x32, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSystemFontFallback(IDWriteFontFallback** fontFallback) mut
			{
				return VT.GetSystemFontFallback(&this, fontFallback);
			}
			public HRESULT CreateFontFallbackBuilder(IDWriteFontFallbackBuilder** fontFallbackBuilder) mut
			{
				return VT.CreateFontFallbackBuilder(&this, fontFallbackBuilder);
			}
			public HRESULT TranslateColorGlyphRun(float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_RUN* glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, DWRITE_MEASURING_MODE measuringMode, DWRITE_MATRIX* worldToDeviceTransform, uint32 colorPaletteIndex, IDWriteColorGlyphRunEnumerator** colorLayers) mut
			{
				return VT.TranslateColorGlyphRun(&this, baselineOriginX, baselineOriginY, glyphRun, glyphRunDescription, measuringMode, worldToDeviceTransform, colorPaletteIndex, colorLayers);
			}
			public HRESULT CreateCustomRenderingParams(float gamma, float enhancedContrast, float grayscaleEnhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, DWRITE_GRID_FIT_MODE gridFitMode, IDWriteRenderingParams2** renderingParams) mut
			{
				return VT.CreateCustomRenderingParams(&this, gamma, enhancedContrast, grayscaleEnhancedContrast, clearTypeLevel, pixelGeometry, renderingMode, gridFitMode, renderingParams);
			}
			public HRESULT CreateGlyphRunAnalysis(DWRITE_GLYPH_RUN* glyphRun, DWRITE_MATRIX* transform, DWRITE_RENDERING_MODE renderingMode, DWRITE_MEASURING_MODE measuringMode, DWRITE_GRID_FIT_MODE gridFitMode, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode, float baselineOriginX, float baselineOriginY, IDWriteGlyphRunAnalysis** glyphRunAnalysis) mut
			{
				return VT.CreateGlyphRunAnalysis(&this, glyphRun, transform, renderingMode, measuringMode, gridFitMode, antialiasMode, baselineOriginX, baselineOriginY, glyphRunAnalysis);
			}
			[CRepr]
			public struct VTable : IDWriteFactory1.VTable
			{
				public new function HRESULT(IDWriteFactory2 *self, IDWriteFontFallback** fontFallback) GetSystemFontFallback;
				public new function HRESULT(IDWriteFactory2 *self, IDWriteFontFallbackBuilder** fontFallbackBuilder) CreateFontFallbackBuilder;
				public new function HRESULT(IDWriteFactory2 *self, float baselineOriginX, float baselineOriginY, DWRITE_GLYPH_RUN* glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, DWRITE_MEASURING_MODE measuringMode, DWRITE_MATRIX* worldToDeviceTransform, uint32 colorPaletteIndex, IDWriteColorGlyphRunEnumerator** colorLayers) TranslateColorGlyphRun;
				public new function HRESULT(IDWriteFactory2 *self, float gamma, float enhancedContrast, float grayscaleEnhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE renderingMode, DWRITE_GRID_FIT_MODE gridFitMode, IDWriteRenderingParams2** renderingParams) CreateCustomRenderingParams;
				public new function HRESULT(IDWriteFactory2 *self, DWRITE_GLYPH_RUN* glyphRun, DWRITE_MATRIX* transform, DWRITE_RENDERING_MODE renderingMode, DWRITE_MEASURING_MODE measuringMode, DWRITE_GRID_FIT_MODE gridFitMode, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode, float baselineOriginX, float baselineOriginY, IDWriteGlyphRunAnalysis** glyphRunAnalysis) CreateGlyphRunAnalysis;
			}
		}
		[CRepr]
		public struct IDWriteRenderingParams3 : IDWriteRenderingParams2
		{
			public const new Guid IID = .(0xb7924baa, 0x391b, 0x412a, 0x8c, 0x5c, 0xe4, 0x4c, 0xc2, 0xd8, 0x67, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public DWRITE_RENDERING_MODE1 GetRenderingMode1() mut
			{
				return VT.GetRenderingMode1(&this);
			}
			[CRepr]
			public struct VTable : IDWriteRenderingParams2.VTable
			{
				public new function DWRITE_RENDERING_MODE1(IDWriteRenderingParams3 *self) GetRenderingMode1;
			}
		}
		[CRepr]
		public struct IDWriteFactory3 : IDWriteFactory2
		{
			public const new Guid IID = .(0x9a1b41c3, 0xd3bb, 0x466a, 0x87, 0xfc, 0xfe, 0x67, 0x55, 0x6a, 0x3b, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateGlyphRunAnalysis(DWRITE_GLYPH_RUN* glyphRun, DWRITE_MATRIX* transform, DWRITE_RENDERING_MODE1 renderingMode, DWRITE_MEASURING_MODE measuringMode, DWRITE_GRID_FIT_MODE gridFitMode, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode, float baselineOriginX, float baselineOriginY, IDWriteGlyphRunAnalysis** glyphRunAnalysis) mut
			{
				return VT.CreateGlyphRunAnalysis(&this, glyphRun, transform, renderingMode, measuringMode, gridFitMode, antialiasMode, baselineOriginX, baselineOriginY, glyphRunAnalysis);
			}
			public HRESULT CreateCustomRenderingParams(float gamma, float enhancedContrast, float grayscaleEnhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE1 renderingMode, DWRITE_GRID_FIT_MODE gridFitMode, IDWriteRenderingParams3** renderingParams) mut
			{
				return VT.CreateCustomRenderingParams(&this, gamma, enhancedContrast, grayscaleEnhancedContrast, clearTypeLevel, pixelGeometry, renderingMode, gridFitMode, renderingParams);
			}
			public HRESULT CreateFontFaceReference(IDWriteFontFile* fontFile, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, IDWriteFontFaceReference** fontFaceReference) mut
			{
				return VT.CreateFontFaceReference(&this, fontFile, faceIndex, fontSimulations, fontFaceReference);
			}
			public HRESULT CreateFontFaceReference(PWSTR filePath, FILETIME* lastWriteTime, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, IDWriteFontFaceReference** fontFaceReference) mut
			{
				return VT.CreateFontFaceReference2(&this, filePath, lastWriteTime, faceIndex, fontSimulations, fontFaceReference);
			}
			public HRESULT GetSystemFontSet(IDWriteFontSet** fontSet) mut
			{
				return VT.GetSystemFontSet(&this, fontSet);
			}
			public HRESULT CreateFontSetBuilder(IDWriteFontSetBuilder** fontSetBuilder) mut
			{
				return VT.CreateFontSetBuilder(&this, fontSetBuilder);
			}
			public HRESULT CreateFontCollectionFromFontSet(IDWriteFontSet* fontSet, IDWriteFontCollection1** fontCollection) mut
			{
				return VT.CreateFontCollectionFromFontSet(&this, fontSet, fontCollection);
			}
			public HRESULT GetSystemFontCollection(BOOL includeDownloadableFonts, IDWriteFontCollection1** fontCollection, BOOL checkForUpdates) mut
			{
				return VT.GetSystemFontCollection(&this, includeDownloadableFonts, fontCollection, checkForUpdates);
			}
			public HRESULT GetFontDownloadQueue(IDWriteFontDownloadQueue** fontDownloadQueue) mut
			{
				return VT.GetFontDownloadQueue(&this, fontDownloadQueue);
			}
			[CRepr]
			public struct VTable : IDWriteFactory2.VTable
			{
				public new function HRESULT(IDWriteFactory3 *self, DWRITE_GLYPH_RUN* glyphRun, DWRITE_MATRIX* transform, DWRITE_RENDERING_MODE1 renderingMode, DWRITE_MEASURING_MODE measuringMode, DWRITE_GRID_FIT_MODE gridFitMode, DWRITE_TEXT_ANTIALIAS_MODE antialiasMode, float baselineOriginX, float baselineOriginY, IDWriteGlyphRunAnalysis** glyphRunAnalysis) CreateGlyphRunAnalysis;
				public new function HRESULT(IDWriteFactory3 *self, float gamma, float enhancedContrast, float grayscaleEnhancedContrast, float clearTypeLevel, DWRITE_PIXEL_GEOMETRY pixelGeometry, DWRITE_RENDERING_MODE1 renderingMode, DWRITE_GRID_FIT_MODE gridFitMode, IDWriteRenderingParams3** renderingParams) CreateCustomRenderingParams;
				public new function HRESULT(IDWriteFactory3 *self, IDWriteFontFile* fontFile, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, IDWriteFontFaceReference** fontFaceReference) CreateFontFaceReference;
				public new function HRESULT(IDWriteFactory3 *self, PWSTR filePath, FILETIME* lastWriteTime, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, IDWriteFontFaceReference** fontFaceReference) CreateFontFaceReference2;
				public new function HRESULT(IDWriteFactory3 *self, IDWriteFontSet** fontSet) GetSystemFontSet;
				public new function HRESULT(IDWriteFactory3 *self, IDWriteFontSetBuilder** fontSetBuilder) CreateFontSetBuilder;
				public new function HRESULT(IDWriteFactory3 *self, IDWriteFontSet* fontSet, IDWriteFontCollection1** fontCollection) CreateFontCollectionFromFontSet;
				public new function HRESULT(IDWriteFactory3 *self, BOOL includeDownloadableFonts, IDWriteFontCollection1** fontCollection, BOOL checkForUpdates) GetSystemFontCollection;
				public new function HRESULT(IDWriteFactory3 *self, IDWriteFontDownloadQueue** fontDownloadQueue) GetFontDownloadQueue;
			}
		}
		[CRepr]
		public struct IDWriteFontSet : IUnknown
		{
			public const new Guid IID = .(0x53585141, 0xd9f8, 0x4095, 0x83, 0x21, 0xd7, 0x3c, 0xf6, 0xbd, 0x11, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetFontCount() mut
			{
				return VT.GetFontCount(&this);
			}
			public HRESULT GetFontFaceReference(uint32 listIndex, IDWriteFontFaceReference** fontFaceReference) mut
			{
				return VT.GetFontFaceReference(&this, listIndex, fontFaceReference);
			}
			public HRESULT FindFontFaceReference(IDWriteFontFaceReference* fontFaceReference, uint32* listIndex, BOOL* exists) mut
			{
				return VT.FindFontFaceReference(&this, fontFaceReference, listIndex, exists);
			}
			public HRESULT FindFontFace(IDWriteFontFace* fontFace, uint32* listIndex, BOOL* exists) mut
			{
				return VT.FindFontFace(&this, fontFace, listIndex, exists);
			}
			public HRESULT GetPropertyValues(DWRITE_FONT_PROPERTY_ID propertyID, IDWriteStringList** values) mut
			{
				return VT.GetPropertyValues(&this, propertyID, values);
			}
			public HRESULT GetPropertyValues(DWRITE_FONT_PROPERTY_ID propertyID, PWSTR preferredLocaleNames, IDWriteStringList** values) mut
			{
				return VT.GetPropertyValues2(&this, propertyID, preferredLocaleNames, values);
			}
			public HRESULT GetPropertyValues(uint32 listIndex, DWRITE_FONT_PROPERTY_ID propertyId, BOOL* exists, IDWriteLocalizedStrings** values) mut
			{
				return VT.GetPropertyValues3(&this, listIndex, propertyId, exists, values);
			}
			public HRESULT GetPropertyOccurrenceCount(DWRITE_FONT_PROPERTY* property, uint32* propertyOccurrenceCount) mut
			{
				return VT.GetPropertyOccurrenceCount(&this, property, propertyOccurrenceCount);
			}
			public HRESULT GetMatchingFonts(PWSTR familyName, DWRITE_FONT_WEIGHT fontWeight, DWRITE_FONT_STRETCH fontStretch, DWRITE_FONT_STYLE fontStyle, IDWriteFontSet** filteredSet) mut
			{
				return VT.GetMatchingFonts(&this, familyName, fontWeight, fontStretch, fontStyle, filteredSet);
			}
			public HRESULT GetMatchingFonts(DWRITE_FONT_PROPERTY* properties, uint32 propertyCount, IDWriteFontSet** filteredSet) mut
			{
				return VT.GetMatchingFonts2(&this, properties, propertyCount, filteredSet);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(IDWriteFontSet *self) GetFontCount;
				public new function HRESULT(IDWriteFontSet *self, uint32 listIndex, IDWriteFontFaceReference** fontFaceReference) GetFontFaceReference;
				public new function HRESULT(IDWriteFontSet *self, IDWriteFontFaceReference* fontFaceReference, uint32* listIndex, BOOL* exists) FindFontFaceReference;
				public new function HRESULT(IDWriteFontSet *self, IDWriteFontFace* fontFace, uint32* listIndex, BOOL* exists) FindFontFace;
				public new function HRESULT(IDWriteFontSet *self, DWRITE_FONT_PROPERTY_ID propertyID, IDWriteStringList** values) GetPropertyValues;
				public new function HRESULT(IDWriteFontSet *self, DWRITE_FONT_PROPERTY_ID propertyID, PWSTR preferredLocaleNames, IDWriteStringList** values) GetPropertyValues2;
				public new function HRESULT(IDWriteFontSet *self, uint32 listIndex, DWRITE_FONT_PROPERTY_ID propertyId, BOOL* exists, IDWriteLocalizedStrings** values) GetPropertyValues3;
				public new function HRESULT(IDWriteFontSet *self, DWRITE_FONT_PROPERTY* property, uint32* propertyOccurrenceCount) GetPropertyOccurrenceCount;
				public new function HRESULT(IDWriteFontSet *self, PWSTR familyName, DWRITE_FONT_WEIGHT fontWeight, DWRITE_FONT_STRETCH fontStretch, DWRITE_FONT_STYLE fontStyle, IDWriteFontSet** filteredSet) GetMatchingFonts;
				public new function HRESULT(IDWriteFontSet *self, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount, IDWriteFontSet** filteredSet) GetMatchingFonts2;
			}
		}
		[CRepr]
		public struct IDWriteFontSetBuilder : IUnknown
		{
			public const new Guid IID = .(0x2f642afe, 0x9c68, 0x4f40, 0xb8, 0xbe, 0x45, 0x74, 0x01, 0xaf, 0xcb, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddFontFaceReference(IDWriteFontFaceReference* fontFaceReference, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount) mut
			{
				return VT.AddFontFaceReference(&this, fontFaceReference, properties, propertyCount);
			}
			public HRESULT AddFontFaceReference(IDWriteFontFaceReference* fontFaceReference) mut
			{
				return VT.AddFontFaceReference2(&this, fontFaceReference);
			}
			public HRESULT AddFontSet(IDWriteFontSet* fontSet) mut
			{
				return VT.AddFontSet(&this, fontSet);
			}
			public HRESULT CreateFontSet(IDWriteFontSet** fontSet) mut
			{
				return VT.CreateFontSet(&this, fontSet);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFontSetBuilder *self, IDWriteFontFaceReference* fontFaceReference, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount) AddFontFaceReference;
				public new function HRESULT(IDWriteFontSetBuilder *self, IDWriteFontFaceReference* fontFaceReference) AddFontFaceReference2;
				public new function HRESULT(IDWriteFontSetBuilder *self, IDWriteFontSet* fontSet) AddFontSet;
				public new function HRESULT(IDWriteFontSetBuilder *self, IDWriteFontSet** fontSet) CreateFontSet;
			}
		}
		[CRepr]
		public struct IDWriteFontCollection1 : IDWriteFontCollection
		{
			public const new Guid IID = .(0x53585141, 0xd9f8, 0x4095, 0x83, 0x21, 0xd7, 0x3c, 0xf6, 0xbd, 0x11, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFontSet(IDWriteFontSet** fontSet) mut
			{
				return VT.GetFontSet(&this, fontSet);
			}
			public HRESULT GetFontFamily(uint32 index, IDWriteFontFamily1** fontFamily) mut
			{
				return VT.GetFontFamily(&this, index, fontFamily);
			}
			[CRepr]
			public struct VTable : IDWriteFontCollection.VTable
			{
				public new function HRESULT(IDWriteFontCollection1 *self, IDWriteFontSet** fontSet) GetFontSet;
				public new function HRESULT(IDWriteFontCollection1 *self, uint32 index, IDWriteFontFamily1** fontFamily) GetFontFamily;
			}
		}
		[CRepr]
		public struct IDWriteFontFamily1 : IDWriteFontFamily
		{
			public const new Guid IID = .(0xda20d8ef, 0x812a, 0x4c43, 0x98, 0x02, 0x62, 0xec, 0x4a, 0xbd, 0x7a, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public DWRITE_LOCALITY GetFontLocality(uint32 listIndex) mut
			{
				return VT.GetFontLocality(&this, listIndex);
			}
			public HRESULT GetFont(uint32 listIndex, IDWriteFont3** font) mut
			{
				return VT.GetFont(&this, listIndex, font);
			}
			public HRESULT GetFontFaceReference(uint32 listIndex, IDWriteFontFaceReference** fontFaceReference) mut
			{
				return VT.GetFontFaceReference(&this, listIndex, fontFaceReference);
			}
			[CRepr]
			public struct VTable : IDWriteFontFamily.VTable
			{
				public new function DWRITE_LOCALITY(IDWriteFontFamily1 *self, uint32 listIndex) GetFontLocality;
				public new function HRESULT(IDWriteFontFamily1 *self, uint32 listIndex, IDWriteFont3** font) GetFont;
				public new function HRESULT(IDWriteFontFamily1 *self, uint32 listIndex, IDWriteFontFaceReference** fontFaceReference) GetFontFaceReference;
			}
		}
		[CRepr]
		public struct IDWriteFontList1 : IDWriteFontList
		{
			public const new Guid IID = .(0xda20d8ef, 0x812a, 0x4c43, 0x98, 0x02, 0x62, 0xec, 0x4a, 0xbd, 0x7a, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public DWRITE_LOCALITY GetFontLocality(uint32 listIndex) mut
			{
				return VT.GetFontLocality(&this, listIndex);
			}
			public HRESULT GetFont(uint32 listIndex, IDWriteFont3** font) mut
			{
				return VT.GetFont(&this, listIndex, font);
			}
			public HRESULT GetFontFaceReference(uint32 listIndex, IDWriteFontFaceReference** fontFaceReference) mut
			{
				return VT.GetFontFaceReference(&this, listIndex, fontFaceReference);
			}
			[CRepr]
			public struct VTable : IDWriteFontList.VTable
			{
				public new function DWRITE_LOCALITY(IDWriteFontList1 *self, uint32 listIndex) GetFontLocality;
				public new function HRESULT(IDWriteFontList1 *self, uint32 listIndex, IDWriteFont3** font) GetFont;
				public new function HRESULT(IDWriteFontList1 *self, uint32 listIndex, IDWriteFontFaceReference** fontFaceReference) GetFontFaceReference;
			}
		}
		[CRepr]
		public struct IDWriteFontFaceReference : IUnknown
		{
			public const new Guid IID = .(0x5e7fa7ca, 0xdde3, 0x424c, 0x89, 0xf0, 0x9f, 0xcd, 0x6f, 0xed, 0x58, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFontFace(IDWriteFontFace3** fontFace) mut
			{
				return VT.CreateFontFace(&this, fontFace);
			}
			public HRESULT CreateFontFaceWithSimulations(DWRITE_FONT_SIMULATIONS fontFaceSimulationFlags, IDWriteFontFace3** fontFace) mut
			{
				return VT.CreateFontFaceWithSimulations(&this, fontFaceSimulationFlags, fontFace);
			}
			public BOOL ComEquals(IDWriteFontFaceReference* fontFaceReference) mut
			{
				return VT.ComEquals(&this, fontFaceReference);
			}
			public uint32 GetFontFaceIndex() mut
			{
				return VT.GetFontFaceIndex(&this);
			}
			public DWRITE_FONT_SIMULATIONS GetSimulations() mut
			{
				return VT.GetSimulations(&this);
			}
			public HRESULT GetFontFile(IDWriteFontFile** fontFile) mut
			{
				return VT.GetFontFile(&this, fontFile);
			}
			public uint64 GetLocalFileSize() mut
			{
				return VT.GetLocalFileSize(&this);
			}
			public uint64 GetFileSize() mut
			{
				return VT.GetFileSize(&this);
			}
			public HRESULT GetFileTime(FILETIME* lastWriteTime) mut
			{
				return VT.GetFileTime(&this, lastWriteTime);
			}
			public DWRITE_LOCALITY GetLocality() mut
			{
				return VT.GetLocality(&this);
			}
			public HRESULT EnqueueFontDownloadRequest() mut
			{
				return VT.EnqueueFontDownloadRequest(&this);
			}
			public HRESULT EnqueueCharacterDownloadRequest(char16* characters, uint32 characterCount) mut
			{
				return VT.EnqueueCharacterDownloadRequest(&this, characters, characterCount);
			}
			public HRESULT EnqueueGlyphDownloadRequest(uint16* glyphIndices, uint32 glyphCount) mut
			{
				return VT.EnqueueGlyphDownloadRequest(&this, glyphIndices, glyphCount);
			}
			public HRESULT EnqueueFileFragmentDownloadRequest(uint64 fileOffset, uint64 fragmentSize) mut
			{
				return VT.EnqueueFileFragmentDownloadRequest(&this, fileOffset, fragmentSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFontFaceReference *self, IDWriteFontFace3** fontFace) CreateFontFace;
				public new function HRESULT(IDWriteFontFaceReference *self, DWRITE_FONT_SIMULATIONS fontFaceSimulationFlags, IDWriteFontFace3** fontFace) CreateFontFaceWithSimulations;
				public new function BOOL(IDWriteFontFaceReference *self, IDWriteFontFaceReference* fontFaceReference) ComEquals;
				public new function uint32(IDWriteFontFaceReference *self) GetFontFaceIndex;
				public new function DWRITE_FONT_SIMULATIONS(IDWriteFontFaceReference *self) GetSimulations;
				public new function HRESULT(IDWriteFontFaceReference *self, IDWriteFontFile** fontFile) GetFontFile;
				public new function uint64(IDWriteFontFaceReference *self) GetLocalFileSize;
				public new function uint64(IDWriteFontFaceReference *self) GetFileSize;
				public new function HRESULT(IDWriteFontFaceReference *self, FILETIME* lastWriteTime) GetFileTime;
				public new function DWRITE_LOCALITY(IDWriteFontFaceReference *self) GetLocality;
				public new function HRESULT(IDWriteFontFaceReference *self) EnqueueFontDownloadRequest;
				public new function HRESULT(IDWriteFontFaceReference *self, char16* characters, uint32 characterCount) EnqueueCharacterDownloadRequest;
				public new function HRESULT(IDWriteFontFaceReference *self, uint16* glyphIndices, uint32 glyphCount) EnqueueGlyphDownloadRequest;
				public new function HRESULT(IDWriteFontFaceReference *self, uint64 fileOffset, uint64 fragmentSize) EnqueueFileFragmentDownloadRequest;
			}
		}
		[CRepr]
		public struct IDWriteFont3 : IDWriteFont2
		{
			public const new Guid IID = .(0x29748ed6, 0x8c9c, 0x4a6a, 0xbe, 0x0b, 0xd9, 0x12, 0xe8, 0x53, 0x89, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFontFace(IDWriteFontFace3** fontFace) mut
			{
				return VT.CreateFontFace(&this, fontFace);
			}
			public BOOL ComEquals(IDWriteFont* font) mut
			{
				return VT.ComEquals(&this, font);
			}
			public HRESULT GetFontFaceReference(IDWriteFontFaceReference** fontFaceReference) mut
			{
				return VT.GetFontFaceReference(&this, fontFaceReference);
			}
			public BOOL HasCharacter(uint32 unicodeValue) mut
			{
				return VT.HasCharacter(&this, unicodeValue);
			}
			public DWRITE_LOCALITY GetLocality() mut
			{
				return VT.GetLocality(&this);
			}
			[CRepr]
			public struct VTable : IDWriteFont2.VTable
			{
				public new function HRESULT(IDWriteFont3 *self, IDWriteFontFace3** fontFace) CreateFontFace;
				public new function BOOL(IDWriteFont3 *self, IDWriteFont* font) ComEquals;
				public new function HRESULT(IDWriteFont3 *self, IDWriteFontFaceReference** fontFaceReference) GetFontFaceReference;
				public new function BOOL(IDWriteFont3 *self, uint32 unicodeValue) HasCharacter;
				public new function DWRITE_LOCALITY(IDWriteFont3 *self) GetLocality;
			}
		}
		[CRepr]
		public struct IDWriteFontFace3 : IDWriteFontFace2
		{
			public const new Guid IID = .(0xd37d7598, 0x09be, 0x4222, 0xa2, 0x36, 0x20, 0x81, 0x34, 0x1c, 0xc1, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFontFaceReference(IDWriteFontFaceReference** fontFaceReference) mut
			{
				return VT.GetFontFaceReference(&this, fontFaceReference);
			}
			public void GetPanose(DWRITE_PANOSE* panose) mut
			{
				VT.GetPanose(&this, panose);
			}
			public DWRITE_FONT_WEIGHT GetWeight() mut
			{
				return VT.GetWeight(&this);
			}
			public DWRITE_FONT_STRETCH GetStretch() mut
			{
				return VT.GetStretch(&this);
			}
			public DWRITE_FONT_STYLE GetStyle() mut
			{
				return VT.GetStyle(&this);
			}
			public HRESULT GetFamilyNames(IDWriteLocalizedStrings** names) mut
			{
				return VT.GetFamilyNames(&this, names);
			}
			public HRESULT GetFaceNames(IDWriteLocalizedStrings** names) mut
			{
				return VT.GetFaceNames(&this, names);
			}
			public HRESULT GetInformationalStrings(DWRITE_INFORMATIONAL_STRING_ID informationalStringID, IDWriteLocalizedStrings** informationalStrings, BOOL* exists) mut
			{
				return VT.GetInformationalStrings(&this, informationalStringID, informationalStrings, exists);
			}
			public BOOL HasCharacter(uint32 unicodeValue) mut
			{
				return VT.HasCharacter(&this, unicodeValue);
			}
			public HRESULT GetRecommendedRenderingMode(float fontEmSize, float dpiX, float dpiY, DWRITE_MATRIX* transform, BOOL isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, DWRITE_RENDERING_MODE1* renderingMode, DWRITE_GRID_FIT_MODE* gridFitMode) mut
			{
				return VT.GetRecommendedRenderingMode(&this, fontEmSize, dpiX, dpiY, transform, isSideways, outlineThreshold, measuringMode, renderingParams, renderingMode, gridFitMode);
			}
			public BOOL IsCharacterLocal(uint32 unicodeValue) mut
			{
				return VT.IsCharacterLocal(&this, unicodeValue);
			}
			public BOOL IsGlyphLocal(uint16 glyphId) mut
			{
				return VT.IsGlyphLocal(&this, glyphId);
			}
			public HRESULT AreCharactersLocal(char16* characters, uint32 characterCount, BOOL enqueueIfNotLocal, BOOL* isLocal) mut
			{
				return VT.AreCharactersLocal(&this, characters, characterCount, enqueueIfNotLocal, isLocal);
			}
			public HRESULT AreGlyphsLocal(uint16* glyphIndices, uint32 glyphCount, BOOL enqueueIfNotLocal, BOOL* isLocal) mut
			{
				return VT.AreGlyphsLocal(&this, glyphIndices, glyphCount, enqueueIfNotLocal, isLocal);
			}
			[CRepr]
			public struct VTable : IDWriteFontFace2.VTable
			{
				public new function HRESULT(IDWriteFontFace3 *self, IDWriteFontFaceReference** fontFaceReference) GetFontFaceReference;
				public new function void(IDWriteFontFace3 *self, DWRITE_PANOSE* panose) GetPanose;
				public new function DWRITE_FONT_WEIGHT(IDWriteFontFace3 *self) GetWeight;
				public new function DWRITE_FONT_STRETCH(IDWriteFontFace3 *self) GetStretch;
				public new function DWRITE_FONT_STYLE(IDWriteFontFace3 *self) GetStyle;
				public new function HRESULT(IDWriteFontFace3 *self, IDWriteLocalizedStrings** names) GetFamilyNames;
				public new function HRESULT(IDWriteFontFace3 *self, IDWriteLocalizedStrings** names) GetFaceNames;
				public new function HRESULT(IDWriteFontFace3 *self, DWRITE_INFORMATIONAL_STRING_ID informationalStringID, IDWriteLocalizedStrings** informationalStrings, BOOL* exists) GetInformationalStrings;
				public new function BOOL(IDWriteFontFace3 *self, uint32 unicodeValue) HasCharacter;
				public new function HRESULT(IDWriteFontFace3 *self, float fontEmSize, float dpiX, float dpiY, DWRITE_MATRIX* transform, BOOL isSideways, DWRITE_OUTLINE_THRESHOLD outlineThreshold, DWRITE_MEASURING_MODE measuringMode, IDWriteRenderingParams* renderingParams, DWRITE_RENDERING_MODE1* renderingMode, DWRITE_GRID_FIT_MODE* gridFitMode) GetRecommendedRenderingMode;
				public new function BOOL(IDWriteFontFace3 *self, uint32 unicodeValue) IsCharacterLocal;
				public new function BOOL(IDWriteFontFace3 *self, uint16 glyphId) IsGlyphLocal;
				public new function HRESULT(IDWriteFontFace3 *self, char16* characters, uint32 characterCount, BOOL enqueueIfNotLocal, BOOL* isLocal) AreCharactersLocal;
				public new function HRESULT(IDWriteFontFace3 *self, uint16* glyphIndices, uint32 glyphCount, BOOL enqueueIfNotLocal, BOOL* isLocal) AreGlyphsLocal;
			}
		}
		[CRepr]
		public struct IDWriteStringList : IUnknown
		{
			public const new Guid IID = .(0xcfee3140, 0x1157, 0x47ca, 0x8b, 0x85, 0x31, 0xbf, 0xcf, 0x3f, 0x2d, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetCount() mut
			{
				return VT.GetCount(&this);
			}
			public HRESULT GetLocaleNameLength(uint32 listIndex, uint32* length) mut
			{
				return VT.GetLocaleNameLength(&this, listIndex, length);
			}
			public HRESULT GetLocaleName(uint32 listIndex, char16* localeName, uint32 size) mut
			{
				return VT.GetLocaleName(&this, listIndex, localeName, size);
			}
			public HRESULT GetStringLength(uint32 listIndex, uint32* length) mut
			{
				return VT.GetStringLength(&this, listIndex, length);
			}
			public HRESULT GetString(uint32 listIndex, char16* stringBuffer, uint32 stringBufferSize) mut
			{
				return VT.GetString(&this, listIndex, stringBuffer, stringBufferSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(IDWriteStringList *self) GetCount;
				public new function HRESULT(IDWriteStringList *self, uint32 listIndex, uint32* length) GetLocaleNameLength;
				public new function HRESULT(IDWriteStringList *self, uint32 listIndex, char16* localeName, uint32 size) GetLocaleName;
				public new function HRESULT(IDWriteStringList *self, uint32 listIndex, uint32* length) GetStringLength;
				public new function HRESULT(IDWriteStringList *self, uint32 listIndex, char16* stringBuffer, uint32 stringBufferSize) GetString;
			}
		}
		[CRepr]
		public struct IDWriteFontDownloadListener : IUnknown
		{
			public const new Guid IID = .(0xb06fe5b9, 0x43ec, 0x4393, 0x88, 0x1b, 0xdb, 0xe4, 0xdc, 0x72, 0xfd, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public void DownloadCompleted(IDWriteFontDownloadQueue* downloadQueue, IUnknown* context, HRESULT downloadResult) mut
			{
				VT.DownloadCompleted(&this, downloadQueue, context, downloadResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(IDWriteFontDownloadListener *self, IDWriteFontDownloadQueue* downloadQueue, IUnknown* context, HRESULT downloadResult) DownloadCompleted;
			}
		}
		[CRepr]
		public struct IDWriteFontDownloadQueue : IUnknown
		{
			public const new Guid IID = .(0xb71e6052, 0x5aea, 0x4fa3, 0x83, 0x2e, 0xf6, 0x0d, 0x43, 0x1f, 0x7e, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddListener(IDWriteFontDownloadListener* listener, uint32* token) mut
			{
				return VT.AddListener(&this, listener, token);
			}
			public HRESULT RemoveListener(uint32 token) mut
			{
				return VT.RemoveListener(&this, token);
			}
			public BOOL IsEmpty() mut
			{
				return VT.IsEmpty(&this);
			}
			public HRESULT BeginDownload(IUnknown* context) mut
			{
				return VT.BeginDownload(&this, context);
			}
			public HRESULT CancelDownload() mut
			{
				return VT.CancelDownload(&this);
			}
			public uint64 GetGenerationCount() mut
			{
				return VT.GetGenerationCount(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFontDownloadQueue *self, IDWriteFontDownloadListener* listener, uint32* token) AddListener;
				public new function HRESULT(IDWriteFontDownloadQueue *self, uint32 token) RemoveListener;
				public new function BOOL(IDWriteFontDownloadQueue *self) IsEmpty;
				public new function HRESULT(IDWriteFontDownloadQueue *self, IUnknown* context) BeginDownload;
				public new function HRESULT(IDWriteFontDownloadQueue *self) CancelDownload;
				public new function uint64(IDWriteFontDownloadQueue *self) GetGenerationCount;
			}
		}
		[CRepr]
		public struct IDWriteGdiInterop1 : IDWriteGdiInterop
		{
			public const new Guid IID = .(0x4556be70, 0x3abd, 0x4f70, 0x90, 0xbe, 0x42, 0x17, 0x80, 0xa6, 0xf5, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFontFromLOGFONT(LOGFONTW* logFont, IDWriteFontCollection* fontCollection, IDWriteFont** font) mut
			{
				return VT.CreateFontFromLOGFONT(&this, logFont, fontCollection, font);
			}
			public HRESULT GetFontSignature(IDWriteFontFace* fontFace, FONTSIGNATURE* fontSignature) mut
			{
				return VT.GetFontSignature(&this, fontFace, fontSignature);
			}
			public HRESULT GetFontSignature(IDWriteFont* font, FONTSIGNATURE* fontSignature) mut
			{
				return VT.GetFontSignature2(&this, font, fontSignature);
			}
			public HRESULT GetMatchingFontsByLOGFONT(LOGFONTA* logFont, IDWriteFontSet* fontSet, IDWriteFontSet** filteredSet) mut
			{
				return VT.GetMatchingFontsByLOGFONT(&this, logFont, fontSet, filteredSet);
			}
			[CRepr]
			public struct VTable : IDWriteGdiInterop.VTable
			{
				public new function HRESULT(IDWriteGdiInterop1 *self, LOGFONTW* logFont, IDWriteFontCollection* fontCollection, IDWriteFont** font) CreateFontFromLOGFONT;
				public new function HRESULT(IDWriteGdiInterop1 *self, IDWriteFontFace* fontFace, FONTSIGNATURE* fontSignature) GetFontSignature;
				public new function HRESULT(IDWriteGdiInterop1 *self, IDWriteFont* font, FONTSIGNATURE* fontSignature) GetFontSignature2;
				public new function HRESULT(IDWriteGdiInterop1 *self, LOGFONTA* logFont, IDWriteFontSet* fontSet, IDWriteFontSet** filteredSet) GetMatchingFontsByLOGFONT;
			}
		}
		[CRepr]
		public struct IDWriteTextFormat2 : IDWriteTextFormat1
		{
			public const new Guid IID = .(0xf67e0edd, 0x9e3d, 0x4ecc, 0x8c, 0x32, 0x41, 0x83, 0x25, 0x3d, 0xfe, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetLineSpacing(DWRITE_LINE_SPACING* lineSpacingOptions) mut
			{
				return VT.SetLineSpacing(&this, lineSpacingOptions);
			}
			public HRESULT GetLineSpacing(DWRITE_LINE_SPACING* lineSpacingOptions) mut
			{
				return VT.GetLineSpacing(&this, lineSpacingOptions);
			}
			[CRepr]
			public struct VTable : IDWriteTextFormat1.VTable
			{
				public new function HRESULT(IDWriteTextFormat2 *self, DWRITE_LINE_SPACING* lineSpacingOptions) SetLineSpacing;
				public new function HRESULT(IDWriteTextFormat2 *self, DWRITE_LINE_SPACING* lineSpacingOptions) GetLineSpacing;
			}
		}
		[CRepr]
		public struct IDWriteTextLayout3 : IDWriteTextLayout2
		{
			public const new Guid IID = .(0x07ddcd52, 0x020e, 0x4de8, 0xac, 0x33, 0x6c, 0x95, 0x3d, 0x83, 0xf9, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InvalidateLayout() mut
			{
				return VT.InvalidateLayout(&this);
			}
			public HRESULT SetLineSpacing(DWRITE_LINE_SPACING* lineSpacingOptions) mut
			{
				return VT.SetLineSpacing(&this, lineSpacingOptions);
			}
			public HRESULT GetLineSpacing(DWRITE_LINE_SPACING* lineSpacingOptions) mut
			{
				return VT.GetLineSpacing(&this, lineSpacingOptions);
			}
			public HRESULT GetLineMetrics(DWRITE_LINE_METRICS1* lineMetrics, uint32 maxLineCount, uint32* actualLineCount) mut
			{
				return VT.GetLineMetrics(&this, lineMetrics, maxLineCount, actualLineCount);
			}
			[CRepr]
			public struct VTable : IDWriteTextLayout2.VTable
			{
				public new function HRESULT(IDWriteTextLayout3 *self) InvalidateLayout;
				public new function HRESULT(IDWriteTextLayout3 *self, DWRITE_LINE_SPACING* lineSpacingOptions) SetLineSpacing;
				public new function HRESULT(IDWriteTextLayout3 *self, DWRITE_LINE_SPACING* lineSpacingOptions) GetLineSpacing;
				public new function HRESULT(IDWriteTextLayout3 *self, DWRITE_LINE_METRICS1* lineMetrics, uint32 maxLineCount, uint32* actualLineCount) GetLineMetrics;
			}
		}
		[CRepr]
		public struct IDWriteColorGlyphRunEnumerator1 : IDWriteColorGlyphRunEnumerator
		{
			public const new Guid IID = .(0x7c5f86da, 0xc7a1, 0x4f05, 0xb8, 0xe1, 0x55, 0xa1, 0x79, 0xfe, 0x5a, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrentRun(DWRITE_COLOR_GLYPH_RUN1** colorGlyphRun) mut
			{
				return VT.GetCurrentRun(&this, colorGlyphRun);
			}
			[CRepr]
			public struct VTable : IDWriteColorGlyphRunEnumerator.VTable
			{
				public new function HRESULT(IDWriteColorGlyphRunEnumerator1 *self, DWRITE_COLOR_GLYPH_RUN1** colorGlyphRun) GetCurrentRun;
			}
		}
		[CRepr]
		public struct IDWriteFontFace4 : IDWriteFontFace3
		{
			public const new Guid IID = .(0x27f2a904, 0x4eb8, 0x441d, 0x96, 0x78, 0x05, 0x63, 0xf5, 0x3e, 0x3e, 0x2f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGlyphImageFormats(uint16 glyphId, uint32 pixelsPerEmFirst, uint32 pixelsPerEmLast, DWRITE_GLYPH_IMAGE_FORMATS* glyphImageFormats) mut
			{
				return VT.GetGlyphImageFormats(&this, glyphId, pixelsPerEmFirst, pixelsPerEmLast, glyphImageFormats);
			}
			public DWRITE_GLYPH_IMAGE_FORMATS GetGlyphImageFormats() mut
			{
				return VT.GetGlyphImageFormats2(&this);
			}
			public HRESULT GetGlyphImageData(uint16 glyphId, uint32 pixelsPerEm, DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, DWRITE_GLYPH_IMAGE_DATA* glyphData, void** glyphDataContext) mut
			{
				return VT.GetGlyphImageData(&this, glyphId, pixelsPerEm, glyphImageFormat, glyphData, glyphDataContext);
			}
			public void ReleaseGlyphImageData(void* glyphDataContext) mut
			{
				VT.ReleaseGlyphImageData(&this, glyphDataContext);
			}
			[CRepr]
			public struct VTable : IDWriteFontFace3.VTable
			{
				public new function HRESULT(IDWriteFontFace4 *self, uint16 glyphId, uint32 pixelsPerEmFirst, uint32 pixelsPerEmLast, DWRITE_GLYPH_IMAGE_FORMATS* glyphImageFormats) GetGlyphImageFormats;
				public new function DWRITE_GLYPH_IMAGE_FORMATS(IDWriteFontFace4 *self) GetGlyphImageFormats2;
				public new function HRESULT(IDWriteFontFace4 *self, uint16 glyphId, uint32 pixelsPerEm, DWRITE_GLYPH_IMAGE_FORMATS glyphImageFormat, DWRITE_GLYPH_IMAGE_DATA* glyphData, void** glyphDataContext) GetGlyphImageData;
				public new function void(IDWriteFontFace4 *self, void* glyphDataContext) ReleaseGlyphImageData;
			}
		}
		[CRepr]
		public struct IDWriteFactory4 : IDWriteFactory3
		{
			public const new Guid IID = .(0x4b0b5bd3, 0x0797, 0x4549, 0x8a, 0xc5, 0xfe, 0x91, 0x5c, 0xc5, 0x38, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TranslateColorGlyphRun(D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, DWRITE_GLYPH_IMAGE_FORMATS desiredGlyphImageFormats, DWRITE_MEASURING_MODE measuringMode, DWRITE_MATRIX* worldAndDpiTransform, uint32 colorPaletteIndex, IDWriteColorGlyphRunEnumerator1** colorLayers) mut
			{
				return VT.TranslateColorGlyphRun(&this, baselineOrigin, glyphRun, glyphRunDescription, desiredGlyphImageFormats, measuringMode, worldAndDpiTransform, colorPaletteIndex, colorLayers);
			}
			public HRESULT ComputeGlyphOrigins(DWRITE_GLYPH_RUN* glyphRun, D2D_POINT_2F baselineOrigin, D2D_POINT_2F* glyphOrigins) mut
			{
				return VT.ComputeGlyphOrigins(&this, glyphRun, baselineOrigin, glyphOrigins);
			}
			public HRESULT ComputeGlyphOrigins(DWRITE_GLYPH_RUN* glyphRun, DWRITE_MEASURING_MODE measuringMode, D2D_POINT_2F baselineOrigin, DWRITE_MATRIX* worldAndDpiTransform, D2D_POINT_2F* glyphOrigins) mut
			{
				return VT.ComputeGlyphOrigins2(&this, glyphRun, measuringMode, baselineOrigin, worldAndDpiTransform, glyphOrigins);
			}
			[CRepr]
			public struct VTable : IDWriteFactory3.VTable
			{
				public new function HRESULT(IDWriteFactory4 *self, D2D_POINT_2F baselineOrigin, DWRITE_GLYPH_RUN* glyphRun, DWRITE_GLYPH_RUN_DESCRIPTION* glyphRunDescription, DWRITE_GLYPH_IMAGE_FORMATS desiredGlyphImageFormats, DWRITE_MEASURING_MODE measuringMode, DWRITE_MATRIX* worldAndDpiTransform, uint32 colorPaletteIndex, IDWriteColorGlyphRunEnumerator1** colorLayers) TranslateColorGlyphRun;
				public new function HRESULT(IDWriteFactory4 *self, DWRITE_GLYPH_RUN* glyphRun, D2D_POINT_2F baselineOrigin, D2D_POINT_2F* glyphOrigins) ComputeGlyphOrigins;
				public new function HRESULT(IDWriteFactory4 *self, DWRITE_GLYPH_RUN* glyphRun, DWRITE_MEASURING_MODE measuringMode, D2D_POINT_2F baselineOrigin, DWRITE_MATRIX* worldAndDpiTransform, D2D_POINT_2F* glyphOrigins) ComputeGlyphOrigins2;
			}
		}
		[CRepr]
		public struct IDWriteFontSetBuilder1 : IDWriteFontSetBuilder
		{
			public const new Guid IID = .(0x3ff7715f, 0x3cdc, 0x4dc6, 0x9b, 0x72, 0xec, 0x56, 0x21, 0xdc, 0xca, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddFontFile(IDWriteFontFile* fontFile) mut
			{
				return VT.AddFontFile(&this, fontFile);
			}
			[CRepr]
			public struct VTable : IDWriteFontSetBuilder.VTable
			{
				public new function HRESULT(IDWriteFontSetBuilder1 *self, IDWriteFontFile* fontFile) AddFontFile;
			}
		}
		[CRepr]
		public struct IDWriteAsyncResult : IUnknown
		{
			public const new Guid IID = .(0xce25f8fd, 0x863b, 0x4d13, 0x96, 0x51, 0xc1, 0xf8, 0x8d, 0xc7, 0x3f, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HANDLE GetWaitHandle() mut
			{
				return VT.GetWaitHandle(&this);
			}
			public HRESULT GetResult() mut
			{
				return VT.GetResult(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HANDLE(IDWriteAsyncResult *self) GetWaitHandle;
				public new function HRESULT(IDWriteAsyncResult *self) GetResult;
			}
		}
		[CRepr]
		public struct IDWriteRemoteFontFileStream : IDWriteFontFileStream
		{
			public const new Guid IID = .(0x4db3757a, 0x2c72, 0x4ed9, 0xb2, 0xb6, 0x1a, 0xba, 0xbe, 0x1a, 0xff, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLocalFileSize(uint64* localFileSize) mut
			{
				return VT.GetLocalFileSize(&this, localFileSize);
			}
			public HRESULT GetFileFragmentLocality(uint64 fileOffset, uint64 fragmentSize, BOOL* isLocal, uint64* partialSize) mut
			{
				return VT.GetFileFragmentLocality(&this, fileOffset, fragmentSize, isLocal, partialSize);
			}
			public DWRITE_LOCALITY GetLocality() mut
			{
				return VT.GetLocality(&this);
			}
			public HRESULT BeginDownload(Guid* downloadOperationID, DWRITE_FILE_FRAGMENT* fileFragments, uint32 fragmentCount, IDWriteAsyncResult** asyncResult) mut
			{
				return VT.BeginDownload(&this, downloadOperationID, fileFragments, fragmentCount, asyncResult);
			}
			[CRepr]
			public struct VTable : IDWriteFontFileStream.VTable
			{
				public new function HRESULT(IDWriteRemoteFontFileStream *self, uint64* localFileSize) GetLocalFileSize;
				public new function HRESULT(IDWriteRemoteFontFileStream *self, uint64 fileOffset, uint64 fragmentSize, BOOL* isLocal, uint64* partialSize) GetFileFragmentLocality;
				public new function DWRITE_LOCALITY(IDWriteRemoteFontFileStream *self) GetLocality;
				public new function HRESULT(IDWriteRemoteFontFileStream *self, Guid* downloadOperationID, DWRITE_FILE_FRAGMENT* fileFragments, uint32 fragmentCount, IDWriteAsyncResult** asyncResult) BeginDownload;
			}
		}
		[CRepr]
		public struct IDWriteRemoteFontFileLoader : IDWriteFontFileLoader
		{
			public const new Guid IID = .(0x68648c83, 0x6ede, 0x46c0, 0xab, 0x46, 0x20, 0x08, 0x3a, 0x88, 0x7f, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateRemoteStreamFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, IDWriteRemoteFontFileStream** fontFileStream) mut
			{
				return VT.CreateRemoteStreamFromKey(&this, fontFileReferenceKey, fontFileReferenceKeySize, fontFileStream);
			}
			public HRESULT GetLocalityFromKey(void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, DWRITE_LOCALITY* locality) mut
			{
				return VT.GetLocalityFromKey(&this, fontFileReferenceKey, fontFileReferenceKeySize, locality);
			}
			public HRESULT CreateFontFileReferenceFromUrl(IDWriteFactory* factory, PWSTR baseUrl, PWSTR fontFileUrl, IDWriteFontFile** fontFile) mut
			{
				return VT.CreateFontFileReferenceFromUrl(&this, factory, baseUrl, fontFileUrl, fontFile);
			}
			[CRepr]
			public struct VTable : IDWriteFontFileLoader.VTable
			{
				public new function HRESULT(IDWriteRemoteFontFileLoader *self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, IDWriteRemoteFontFileStream** fontFileStream) CreateRemoteStreamFromKey;
				public new function HRESULT(IDWriteRemoteFontFileLoader *self, void* fontFileReferenceKey, uint32 fontFileReferenceKeySize, DWRITE_LOCALITY* locality) GetLocalityFromKey;
				public new function HRESULT(IDWriteRemoteFontFileLoader *self, IDWriteFactory* factory, PWSTR baseUrl, PWSTR fontFileUrl, IDWriteFontFile** fontFile) CreateFontFileReferenceFromUrl;
			}
		}
		[CRepr]
		public struct IDWriteInMemoryFontFileLoader : IDWriteFontFileLoader
		{
			public const new Guid IID = .(0xdc102f47, 0xa12d, 0x4b1c, 0x82, 0x2d, 0x9e, 0x11, 0x7e, 0x33, 0x04, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInMemoryFontFileReference(IDWriteFactory* factory, void* fontData, uint32 fontDataSize, IUnknown* ownerObject, IDWriteFontFile** fontFile) mut
			{
				return VT.CreateInMemoryFontFileReference(&this, factory, fontData, fontDataSize, ownerObject, fontFile);
			}
			public uint32 GetFileCount() mut
			{
				return VT.GetFileCount(&this);
			}
			[CRepr]
			public struct VTable : IDWriteFontFileLoader.VTable
			{
				public new function HRESULT(IDWriteInMemoryFontFileLoader *self, IDWriteFactory* factory, void* fontData, uint32 fontDataSize, IUnknown* ownerObject, IDWriteFontFile** fontFile) CreateInMemoryFontFileReference;
				public new function uint32(IDWriteInMemoryFontFileLoader *self) GetFileCount;
			}
		}
		[CRepr]
		public struct IDWriteFactory5 : IDWriteFactory4
		{
			public const new Guid IID = .(0x958db99a, 0xbe2a, 0x4f09, 0xaf, 0x7d, 0x65, 0x18, 0x98, 0x03, 0xd1, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFontSetBuilder(IDWriteFontSetBuilder1** fontSetBuilder) mut
			{
				return VT.CreateFontSetBuilder(&this, fontSetBuilder);
			}
			public HRESULT CreateInMemoryFontFileLoader(IDWriteInMemoryFontFileLoader** newLoader) mut
			{
				return VT.CreateInMemoryFontFileLoader(&this, newLoader);
			}
			public HRESULT CreateHttpFontFileLoader(PWSTR referrerUrl, PWSTR extraHeaders, IDWriteRemoteFontFileLoader** newLoader) mut
			{
				return VT.CreateHttpFontFileLoader(&this, referrerUrl, extraHeaders, newLoader);
			}
			public DWRITE_CONTAINER_TYPE AnalyzeContainerType(void* fileData, uint32 fileDataSize) mut
			{
				return VT.AnalyzeContainerType(&this, fileData, fileDataSize);
			}
			public HRESULT UnpackFontFile(DWRITE_CONTAINER_TYPE containerType, void* fileData, uint32 fileDataSize, IDWriteFontFileStream** unpackedFontStream) mut
			{
				return VT.UnpackFontFile(&this, containerType, fileData, fileDataSize, unpackedFontStream);
			}
			[CRepr]
			public struct VTable : IDWriteFactory4.VTable
			{
				public new function HRESULT(IDWriteFactory5 *self, IDWriteFontSetBuilder1** fontSetBuilder) CreateFontSetBuilder;
				public new function HRESULT(IDWriteFactory5 *self, IDWriteInMemoryFontFileLoader** newLoader) CreateInMemoryFontFileLoader;
				public new function HRESULT(IDWriteFactory5 *self, PWSTR referrerUrl, PWSTR extraHeaders, IDWriteRemoteFontFileLoader** newLoader) CreateHttpFontFileLoader;
				public new function DWRITE_CONTAINER_TYPE(IDWriteFactory5 *self, void* fileData, uint32 fileDataSize) AnalyzeContainerType;
				public new function HRESULT(IDWriteFactory5 *self, DWRITE_CONTAINER_TYPE containerType, void* fileData, uint32 fileDataSize, IDWriteFontFileStream** unpackedFontStream) UnpackFontFile;
			}
		}
		[CRepr]
		public struct IDWriteFactory6 : IDWriteFactory5
		{
			public const new Guid IID = .(0xf3744d80, 0x21f7, 0x42eb, 0xb3, 0x5d, 0x99, 0x5b, 0xc7, 0x2f, 0xc2, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFontFaceReference(IDWriteFontFile* fontFile, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, IDWriteFontFaceReference1** fontFaceReference) mut
			{
				return VT.CreateFontFaceReference(&this, fontFile, faceIndex, fontSimulations, fontAxisValues, fontAxisValueCount, fontFaceReference);
			}
			public HRESULT CreateFontResource(IDWriteFontFile* fontFile, uint32 faceIndex, IDWriteFontResource** fontResource) mut
			{
				return VT.CreateFontResource(&this, fontFile, faceIndex, fontResource);
			}
			public HRESULT GetSystemFontSet(BOOL includeDownloadableFonts, IDWriteFontSet1** fontSet) mut
			{
				return VT.GetSystemFontSet(&this, includeDownloadableFonts, fontSet);
			}
			public HRESULT GetSystemFontCollection(BOOL includeDownloadableFonts, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, IDWriteFontCollection2** fontCollection) mut
			{
				return VT.GetSystemFontCollection(&this, includeDownloadableFonts, fontFamilyModel, fontCollection);
			}
			public HRESULT CreateFontCollectionFromFontSet(IDWriteFontSet* fontSet, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, IDWriteFontCollection2** fontCollection) mut
			{
				return VT.CreateFontCollectionFromFontSet(&this, fontSet, fontFamilyModel, fontCollection);
			}
			public HRESULT CreateFontSetBuilder(IDWriteFontSetBuilder2** fontSetBuilder) mut
			{
				return VT.CreateFontSetBuilder(&this, fontSetBuilder);
			}
			public HRESULT CreateTextFormat(PWSTR fontFamilyName, IDWriteFontCollection* fontCollection, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, float fontSize, PWSTR localeName, IDWriteTextFormat3** textFormat) mut
			{
				return VT.CreateTextFormat(&this, fontFamilyName, fontCollection, fontAxisValues, fontAxisValueCount, fontSize, localeName, textFormat);
			}
			[CRepr]
			public struct VTable : IDWriteFactory5.VTable
			{
				public new function HRESULT(IDWriteFactory6 *self, IDWriteFontFile* fontFile, uint32 faceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, IDWriteFontFaceReference1** fontFaceReference) CreateFontFaceReference;
				public new function HRESULT(IDWriteFactory6 *self, IDWriteFontFile* fontFile, uint32 faceIndex, IDWriteFontResource** fontResource) CreateFontResource;
				public new function HRESULT(IDWriteFactory6 *self, BOOL includeDownloadableFonts, IDWriteFontSet1** fontSet) GetSystemFontSet;
				public new function HRESULT(IDWriteFactory6 *self, BOOL includeDownloadableFonts, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, IDWriteFontCollection2** fontCollection) GetSystemFontCollection;
				public new function HRESULT(IDWriteFactory6 *self, IDWriteFontSet* fontSet, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, IDWriteFontCollection2** fontCollection) CreateFontCollectionFromFontSet;
				public new function HRESULT(IDWriteFactory6 *self, IDWriteFontSetBuilder2** fontSetBuilder) CreateFontSetBuilder;
				public new function HRESULT(IDWriteFactory6 *self, PWSTR fontFamilyName, IDWriteFontCollection* fontCollection, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, float fontSize, PWSTR localeName, IDWriteTextFormat3** textFormat) CreateTextFormat;
			}
		}
		[CRepr]
		public struct IDWriteFontFace5 : IDWriteFontFace4
		{
			public const new Guid IID = .(0x98eff3a5, 0xb667, 0x479a, 0xb1, 0x45, 0xe2, 0xfa, 0x5b, 0x9f, 0xdc, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetFontAxisValueCount() mut
			{
				return VT.GetFontAxisValueCount(&this);
			}
			public HRESULT GetFontAxisValues(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) mut
			{
				return VT.GetFontAxisValues(&this, fontAxisValues, fontAxisValueCount);
			}
			public BOOL HasVariations() mut
			{
				return VT.HasVariations(&this);
			}
			public HRESULT GetFontResource(IDWriteFontResource** fontResource) mut
			{
				return VT.GetFontResource(&this, fontResource);
			}
			public BOOL ComEquals(IDWriteFontFace* fontFace) mut
			{
				return VT.ComEquals(&this, fontFace);
			}
			[CRepr]
			public struct VTable : IDWriteFontFace4.VTable
			{
				public new function uint32(IDWriteFontFace5 *self) GetFontAxisValueCount;
				public new function HRESULT(IDWriteFontFace5 *self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) GetFontAxisValues;
				public new function BOOL(IDWriteFontFace5 *self) HasVariations;
				public new function HRESULT(IDWriteFontFace5 *self, IDWriteFontResource** fontResource) GetFontResource;
				public new function BOOL(IDWriteFontFace5 *self, IDWriteFontFace* fontFace) ComEquals;
			}
		}
		[CRepr]
		public struct IDWriteFontResource : IUnknown
		{
			public const new Guid IID = .(0x1f803a76, 0x6871, 0x48e8, 0x98, 0x7f, 0xb9, 0x75, 0x55, 0x1c, 0x50, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFontFile(IDWriteFontFile** fontFile) mut
			{
				return VT.GetFontFile(&this, fontFile);
			}
			public uint32 GetFontFaceIndex() mut
			{
				return VT.GetFontFaceIndex(&this);
			}
			public uint32 GetFontAxisCount() mut
			{
				return VT.GetFontAxisCount(&this);
			}
			public HRESULT GetDefaultFontAxisValues(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) mut
			{
				return VT.GetDefaultFontAxisValues(&this, fontAxisValues, fontAxisValueCount);
			}
			public HRESULT GetFontAxisRanges(DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount) mut
			{
				return VT.GetFontAxisRanges(&this, fontAxisRanges, fontAxisRangeCount);
			}
			public DWRITE_FONT_AXIS_ATTRIBUTES GetFontAxisAttributes(uint32 axisIndex) mut
			{
				return VT.GetFontAxisAttributes(&this, axisIndex);
			}
			public HRESULT GetAxisNames(uint32 axisIndex, IDWriteLocalizedStrings** names) mut
			{
				return VT.GetAxisNames(&this, axisIndex, names);
			}
			public uint32 GetAxisValueNameCount(uint32 axisIndex) mut
			{
				return VT.GetAxisValueNameCount(&this, axisIndex);
			}
			public HRESULT GetAxisValueNames(uint32 axisIndex, uint32 axisValueIndex, DWRITE_FONT_AXIS_RANGE* fontAxisRange, IDWriteLocalizedStrings** names) mut
			{
				return VT.GetAxisValueNames(&this, axisIndex, axisValueIndex, fontAxisRange, names);
			}
			public BOOL HasVariations() mut
			{
				return VT.HasVariations(&this);
			}
			public HRESULT CreateFontFace(DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, IDWriteFontFace5** fontFace) mut
			{
				return VT.CreateFontFace(&this, fontSimulations, fontAxisValues, fontAxisValueCount, fontFace);
			}
			public HRESULT CreateFontFaceReference(DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, IDWriteFontFaceReference1** fontFaceReference) mut
			{
				return VT.CreateFontFaceReference(&this, fontSimulations, fontAxisValues, fontAxisValueCount, fontFaceReference);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDWriteFontResource *self, IDWriteFontFile** fontFile) GetFontFile;
				public new function uint32(IDWriteFontResource *self) GetFontFaceIndex;
				public new function uint32(IDWriteFontResource *self) GetFontAxisCount;
				public new function HRESULT(IDWriteFontResource *self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) GetDefaultFontAxisValues;
				public new function HRESULT(IDWriteFontResource *self, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount) GetFontAxisRanges;
				public new function DWRITE_FONT_AXIS_ATTRIBUTES(IDWriteFontResource *self, uint32 axisIndex) GetFontAxisAttributes;
				public new function HRESULT(IDWriteFontResource *self, uint32 axisIndex, IDWriteLocalizedStrings** names) GetAxisNames;
				public new function uint32(IDWriteFontResource *self, uint32 axisIndex) GetAxisValueNameCount;
				public new function HRESULT(IDWriteFontResource *self, uint32 axisIndex, uint32 axisValueIndex, DWRITE_FONT_AXIS_RANGE* fontAxisRange, IDWriteLocalizedStrings** names) GetAxisValueNames;
				public new function BOOL(IDWriteFontResource *self) HasVariations;
				public new function HRESULT(IDWriteFontResource *self, DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, IDWriteFontFace5** fontFace) CreateFontFace;
				public new function HRESULT(IDWriteFontResource *self, DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, IDWriteFontFaceReference1** fontFaceReference) CreateFontFaceReference;
			}
		}
		[CRepr]
		public struct IDWriteFontFaceReference1 : IDWriteFontFaceReference
		{
			public const new Guid IID = .(0xc081fe77, 0x2fd1, 0x41ac, 0xa5, 0xa3, 0x34, 0x98, 0x3c, 0x4b, 0xa6, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFontFace(IDWriteFontFace5** fontFace) mut
			{
				return VT.CreateFontFace(&this, fontFace);
			}
			public uint32 GetFontAxisValueCount() mut
			{
				return VT.GetFontAxisValueCount(&this);
			}
			public HRESULT GetFontAxisValues(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) mut
			{
				return VT.GetFontAxisValues(&this, fontAxisValues, fontAxisValueCount);
			}
			[CRepr]
			public struct VTable : IDWriteFontFaceReference.VTable
			{
				public new function HRESULT(IDWriteFontFaceReference1 *self, IDWriteFontFace5** fontFace) CreateFontFace;
				public new function uint32(IDWriteFontFaceReference1 *self) GetFontAxisValueCount;
				public new function HRESULT(IDWriteFontFaceReference1 *self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) GetFontAxisValues;
			}
		}
		[CRepr]
		public struct IDWriteFontSetBuilder2 : IDWriteFontSetBuilder1
		{
			public const new Guid IID = .(0xee5ba612, 0xb131, 0x463c, 0x8f, 0x4f, 0x31, 0x89, 0xb9, 0x40, 0x1e, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddFont(IDWriteFontFile* fontFile, uint32 fontFaceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount) mut
			{
				return VT.AddFont(&this, fontFile, fontFaceIndex, fontSimulations, fontAxisValues, fontAxisValueCount, fontAxisRanges, fontAxisRangeCount, properties, propertyCount);
			}
			public HRESULT AddFontFile(PWSTR filePath) mut
			{
				return VT.AddFontFile(&this, filePath);
			}
			[CRepr]
			public struct VTable : IDWriteFontSetBuilder1.VTable
			{
				public new function HRESULT(IDWriteFontSetBuilder2 *self, IDWriteFontFile* fontFile, uint32 fontFaceIndex, DWRITE_FONT_SIMULATIONS fontSimulations, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount) AddFont;
				public new function HRESULT(IDWriteFontSetBuilder2 *self, PWSTR filePath) AddFontFile;
			}
		}
		[CRepr]
		public struct IDWriteFontSet1 : IDWriteFontSet
		{
			public const new Guid IID = .(0x7e9fda85, 0x6c92, 0x4053, 0xbc, 0x47, 0x7a, 0xe3, 0x53, 0x0d, 0xb4, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMatchingFonts(DWRITE_FONT_PROPERTY* fontProperty, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, IDWriteFontSet1** matchingFonts) mut
			{
				return VT.GetMatchingFonts(&this, fontProperty, fontAxisValues, fontAxisValueCount, matchingFonts);
			}
			public HRESULT GetFirstFontResources(IDWriteFontSet1** filteredFontSet) mut
			{
				return VT.GetFirstFontResources(&this, filteredFontSet);
			}
			public HRESULT GetFilteredFonts(uint32* indices, uint32 indexCount, IDWriteFontSet1** filteredFontSet) mut
			{
				return VT.GetFilteredFonts(&this, indices, indexCount, filteredFontSet);
			}
			public HRESULT GetFilteredFonts(DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount, BOOL selectAnyRange, IDWriteFontSet1** filteredFontSet) mut
			{
				return VT.GetFilteredFonts2(&this, fontAxisRanges, fontAxisRangeCount, selectAnyRange, filteredFontSet);
			}
			public HRESULT GetFilteredFonts(DWRITE_FONT_PROPERTY* properties, uint32 propertyCount, BOOL selectAnyProperty, IDWriteFontSet1** filteredFontSet) mut
			{
				return VT.GetFilteredFonts3(&this, properties, propertyCount, selectAnyProperty, filteredFontSet);
			}
			public HRESULT GetFilteredFontIndices(DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount, BOOL selectAnyRange, uint32* indices, uint32 maxIndexCount, uint32* actualIndexCount) mut
			{
				return VT.GetFilteredFontIndices(&this, fontAxisRanges, fontAxisRangeCount, selectAnyRange, indices, maxIndexCount, actualIndexCount);
			}
			public HRESULT GetFilteredFontIndices(DWRITE_FONT_PROPERTY* properties, uint32 propertyCount, BOOL selectAnyProperty, uint32* indices, uint32 maxIndexCount, uint32* actualIndexCount) mut
			{
				return VT.GetFilteredFontIndices2(&this, properties, propertyCount, selectAnyProperty, indices, maxIndexCount, actualIndexCount);
			}
			public HRESULT GetFontAxisRanges(uint32 listIndex, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 maxFontAxisRangeCount, uint32* actualFontAxisRangeCount) mut
			{
				return VT.GetFontAxisRanges(&this, listIndex, fontAxisRanges, maxFontAxisRangeCount, actualFontAxisRangeCount);
			}
			public HRESULT GetFontAxisRanges(DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 maxFontAxisRangeCount, uint32* actualFontAxisRangeCount) mut
			{
				return VT.GetFontAxisRanges2(&this, fontAxisRanges, maxFontAxisRangeCount, actualFontAxisRangeCount);
			}
			public HRESULT GetFontFaceReference(uint32 listIndex, IDWriteFontFaceReference1** fontFaceReference) mut
			{
				return VT.GetFontFaceReference(&this, listIndex, fontFaceReference);
			}
			public HRESULT CreateFontResource(uint32 listIndex, IDWriteFontResource** fontResource) mut
			{
				return VT.CreateFontResource(&this, listIndex, fontResource);
			}
			public HRESULT CreateFontFace(uint32 listIndex, IDWriteFontFace5** fontFace) mut
			{
				return VT.CreateFontFace(&this, listIndex, fontFace);
			}
			public DWRITE_LOCALITY GetFontLocality(uint32 listIndex) mut
			{
				return VT.GetFontLocality(&this, listIndex);
			}
			[CRepr]
			public struct VTable : IDWriteFontSet.VTable
			{
				public new function HRESULT(IDWriteFontSet1 *self, DWRITE_FONT_PROPERTY* fontProperty, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, IDWriteFontSet1** matchingFonts) GetMatchingFonts;
				public new function HRESULT(IDWriteFontSet1 *self, IDWriteFontSet1** filteredFontSet) GetFirstFontResources;
				public new function HRESULT(IDWriteFontSet1 *self, uint32* indices, uint32 indexCount, IDWriteFontSet1** filteredFontSet) GetFilteredFonts;
				public new function HRESULT(IDWriteFontSet1 *self, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount, BOOL selectAnyRange, IDWriteFontSet1** filteredFontSet) GetFilteredFonts2;
				public new function HRESULT(IDWriteFontSet1 *self, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount, BOOL selectAnyProperty, IDWriteFontSet1** filteredFontSet) GetFilteredFonts3;
				public new function HRESULT(IDWriteFontSet1 *self, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 fontAxisRangeCount, BOOL selectAnyRange, uint32* indices, uint32 maxIndexCount, uint32* actualIndexCount) GetFilteredFontIndices;
				public new function HRESULT(IDWriteFontSet1 *self, DWRITE_FONT_PROPERTY* properties, uint32 propertyCount, BOOL selectAnyProperty, uint32* indices, uint32 maxIndexCount, uint32* actualIndexCount) GetFilteredFontIndices2;
				public new function HRESULT(IDWriteFontSet1 *self, uint32 listIndex, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 maxFontAxisRangeCount, uint32* actualFontAxisRangeCount) GetFontAxisRanges;
				public new function HRESULT(IDWriteFontSet1 *self, DWRITE_FONT_AXIS_RANGE* fontAxisRanges, uint32 maxFontAxisRangeCount, uint32* actualFontAxisRangeCount) GetFontAxisRanges2;
				public new function HRESULT(IDWriteFontSet1 *self, uint32 listIndex, IDWriteFontFaceReference1** fontFaceReference) GetFontFaceReference;
				public new function HRESULT(IDWriteFontSet1 *self, uint32 listIndex, IDWriteFontResource** fontResource) CreateFontResource;
				public new function HRESULT(IDWriteFontSet1 *self, uint32 listIndex, IDWriteFontFace5** fontFace) CreateFontFace;
				public new function DWRITE_LOCALITY(IDWriteFontSet1 *self, uint32 listIndex) GetFontLocality;
			}
		}
		[CRepr]
		public struct IDWriteFontList2 : IDWriteFontList1
		{
			public const new Guid IID = .(0xc0763a34, 0x77af, 0x445a, 0xb7, 0x35, 0x08, 0xc3, 0x7b, 0x0a, 0x5b, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFontSet(IDWriteFontSet1** fontSet) mut
			{
				return VT.GetFontSet(&this, fontSet);
			}
			[CRepr]
			public struct VTable : IDWriteFontList1.VTable
			{
				public new function HRESULT(IDWriteFontList2 *self, IDWriteFontSet1** fontSet) GetFontSet;
			}
		}
		[CRepr]
		public struct IDWriteFontFamily2 : IDWriteFontFamily1
		{
			public const new Guid IID = .(0x3ed49e77, 0xa398, 0x4261, 0xb9, 0xcf, 0xc1, 0x26, 0xc2, 0x13, 0x1e, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMatchingFonts(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, IDWriteFontList2** matchingFonts) mut
			{
				return VT.GetMatchingFonts(&this, fontAxisValues, fontAxisValueCount, matchingFonts);
			}
			public HRESULT GetFontSet(IDWriteFontSet1** fontSet) mut
			{
				return VT.GetFontSet(&this, fontSet);
			}
			[CRepr]
			public struct VTable : IDWriteFontFamily1.VTable
			{
				public new function HRESULT(IDWriteFontFamily2 *self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, IDWriteFontList2** matchingFonts) GetMatchingFonts;
				public new function HRESULT(IDWriteFontFamily2 *self, IDWriteFontSet1** fontSet) GetFontSet;
			}
		}
		[CRepr]
		public struct IDWriteFontCollection2 : IDWriteFontCollection1
		{
			public const new Guid IID = .(0x514039c6, 0x4617, 0x4064, 0xbf, 0x8b, 0x92, 0xea, 0x83, 0xe5, 0x06, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFontFamily(uint32 index, IDWriteFontFamily2** fontFamily) mut
			{
				return VT.GetFontFamily(&this, index, fontFamily);
			}
			public HRESULT GetMatchingFonts(PWSTR familyName, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, IDWriteFontList2** fontList) mut
			{
				return VT.GetMatchingFonts(&this, familyName, fontAxisValues, fontAxisValueCount, fontList);
			}
			public DWRITE_FONT_FAMILY_MODEL GetFontFamilyModel() mut
			{
				return VT.GetFontFamilyModel(&this);
			}
			public HRESULT GetFontSet(IDWriteFontSet1** fontSet) mut
			{
				return VT.GetFontSet(&this, fontSet);
			}
			[CRepr]
			public struct VTable : IDWriteFontCollection1.VTable
			{
				public new function HRESULT(IDWriteFontCollection2 *self, uint32 index, IDWriteFontFamily2** fontFamily) GetFontFamily;
				public new function HRESULT(IDWriteFontCollection2 *self, PWSTR familyName, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, IDWriteFontList2** fontList) GetMatchingFonts;
				public new function DWRITE_FONT_FAMILY_MODEL(IDWriteFontCollection2 *self) GetFontFamilyModel;
				public new function HRESULT(IDWriteFontCollection2 *self, IDWriteFontSet1** fontSet) GetFontSet;
			}
		}
		[CRepr]
		public struct IDWriteTextLayout4 : IDWriteTextLayout3
		{
			public const new Guid IID = .(0x05a9bf42, 0x223f, 0x4441, 0xb5, 0xfb, 0x82, 0x63, 0x68, 0x5f, 0x55, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFontAxisValues(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, DWRITE_TEXT_RANGE textRange) mut
			{
				return VT.SetFontAxisValues(&this, fontAxisValues, fontAxisValueCount, textRange);
			}
			public uint32 GetFontAxisValueCount(uint32 currentPosition) mut
			{
				return VT.GetFontAxisValueCount(&this, currentPosition);
			}
			public HRESULT GetFontAxisValues(uint32 currentPosition, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, DWRITE_TEXT_RANGE* textRange) mut
			{
				return VT.GetFontAxisValues(&this, currentPosition, fontAxisValues, fontAxisValueCount, textRange);
			}
			public DWRITE_AUTOMATIC_FONT_AXES GetAutomaticFontAxes() mut
			{
				return VT.GetAutomaticFontAxes(&this);
			}
			public HRESULT SetAutomaticFontAxes(DWRITE_AUTOMATIC_FONT_AXES automaticFontAxes) mut
			{
				return VT.SetAutomaticFontAxes(&this, automaticFontAxes);
			}
			[CRepr]
			public struct VTable : IDWriteTextLayout3.VTable
			{
				public new function HRESULT(IDWriteTextLayout4 *self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, DWRITE_TEXT_RANGE textRange) SetFontAxisValues;
				public new function uint32(IDWriteTextLayout4 *self, uint32 currentPosition) GetFontAxisValueCount;
				public new function HRESULT(IDWriteTextLayout4 *self, uint32 currentPosition, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, DWRITE_TEXT_RANGE* textRange) GetFontAxisValues;
				public new function DWRITE_AUTOMATIC_FONT_AXES(IDWriteTextLayout4 *self) GetAutomaticFontAxes;
				public new function HRESULT(IDWriteTextLayout4 *self, DWRITE_AUTOMATIC_FONT_AXES automaticFontAxes) SetAutomaticFontAxes;
			}
		}
		[CRepr]
		public struct IDWriteTextFormat3 : IDWriteTextFormat2
		{
			public const new Guid IID = .(0x6d3b5641, 0xe550, 0x430d, 0xa8, 0x5b, 0xb7, 0xbf, 0x48, 0xa9, 0x34, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFontAxisValues(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) mut
			{
				return VT.SetFontAxisValues(&this, fontAxisValues, fontAxisValueCount);
			}
			public uint32 GetFontAxisValueCount() mut
			{
				return VT.GetFontAxisValueCount(&this);
			}
			public HRESULT GetFontAxisValues(DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) mut
			{
				return VT.GetFontAxisValues(&this, fontAxisValues, fontAxisValueCount);
			}
			public DWRITE_AUTOMATIC_FONT_AXES GetAutomaticFontAxes() mut
			{
				return VT.GetAutomaticFontAxes(&this);
			}
			public HRESULT SetAutomaticFontAxes(DWRITE_AUTOMATIC_FONT_AXES automaticFontAxes) mut
			{
				return VT.SetAutomaticFontAxes(&this, automaticFontAxes);
			}
			[CRepr]
			public struct VTable : IDWriteTextFormat2.VTable
			{
				public new function HRESULT(IDWriteTextFormat3 *self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) SetFontAxisValues;
				public new function uint32(IDWriteTextFormat3 *self) GetFontAxisValueCount;
				public new function HRESULT(IDWriteTextFormat3 *self, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount) GetFontAxisValues;
				public new function DWRITE_AUTOMATIC_FONT_AXES(IDWriteTextFormat3 *self) GetAutomaticFontAxes;
				public new function HRESULT(IDWriteTextFormat3 *self, DWRITE_AUTOMATIC_FONT_AXES automaticFontAxes) SetAutomaticFontAxes;
			}
		}
		[CRepr]
		public struct IDWriteFontFallback1 : IDWriteFontFallback
		{
			public const new Guid IID = .(0x2397599d, 0xdd0d, 0x4681, 0xbd, 0x6a, 0xf4, 0xf3, 0x1e, 0xaa, 0xde, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MapCharacters(IDWriteTextAnalysisSource* analysisSource, uint32 textPosition, uint32 textLength, IDWriteFontCollection* baseFontCollection, PWSTR baseFamilyName, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, uint32* mappedLength, float* scale, IDWriteFontFace5** mappedFontFace) mut
			{
				return VT.MapCharacters(&this, analysisSource, textPosition, textLength, baseFontCollection, baseFamilyName, fontAxisValues, fontAxisValueCount, mappedLength, scale, mappedFontFace);
			}
			[CRepr]
			public struct VTable : IDWriteFontFallback.VTable
			{
				public new function HRESULT(IDWriteFontFallback1 *self, IDWriteTextAnalysisSource* analysisSource, uint32 textPosition, uint32 textLength, IDWriteFontCollection* baseFontCollection, PWSTR baseFamilyName, DWRITE_FONT_AXIS_VALUE* fontAxisValues, uint32 fontAxisValueCount, uint32* mappedLength, float* scale, IDWriteFontFace5** mappedFontFace) MapCharacters;
			}
		}
		[CRepr]
		public struct IDWriteFontSet2 : IDWriteFontSet1
		{
			public const new Guid IID = .(0xdc7ead19, 0xe54c, 0x43af, 0xb2, 0xda, 0x4e, 0x2b, 0x79, 0xba, 0x3f, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HANDLE GetExpirationEvent() mut
			{
				return VT.GetExpirationEvent(&this);
			}
			[CRepr]
			public struct VTable : IDWriteFontSet1.VTable
			{
				public new function HANDLE(IDWriteFontSet2 *self) GetExpirationEvent;
			}
		}
		[CRepr]
		public struct IDWriteFontCollection3 : IDWriteFontCollection2
		{
			public const new Guid IID = .(0xa4d055a6, 0xf9e3, 0x4e25, 0x93, 0xb7, 0x9e, 0x30, 0x9f, 0x3a, 0xf8, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HANDLE GetExpirationEvent() mut
			{
				return VT.GetExpirationEvent(&this);
			}
			[CRepr]
			public struct VTable : IDWriteFontCollection2.VTable
			{
				public new function HANDLE(IDWriteFontCollection3 *self) GetExpirationEvent;
			}
		}
		[CRepr]
		public struct IDWriteFactory7 : IDWriteFactory6
		{
			public const new Guid IID = .(0x35d0e0b3, 0x9076, 0x4d2e, 0xa0, 0x16, 0xa9, 0x1b, 0x56, 0x8a, 0x06, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSystemFontSet(BOOL includeDownloadableFonts, IDWriteFontSet2** fontSet) mut
			{
				return VT.GetSystemFontSet(&this, includeDownloadableFonts, fontSet);
			}
			public HRESULT GetSystemFontCollection(BOOL includeDownloadableFonts, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, IDWriteFontCollection3** fontCollection) mut
			{
				return VT.GetSystemFontCollection(&this, includeDownloadableFonts, fontFamilyModel, fontCollection);
			}
			[CRepr]
			public struct VTable : IDWriteFactory6.VTable
			{
				public new function HRESULT(IDWriteFactory7 *self, BOOL includeDownloadableFonts, IDWriteFontSet2** fontSet) GetSystemFontSet;
				public new function HRESULT(IDWriteFactory7 *self, BOOL includeDownloadableFonts, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, IDWriteFontCollection3** fontCollection) GetSystemFontCollection;
			}
		}
		[CRepr]
		public struct IDWriteFontSet3 : IDWriteFontSet2
		{
			public const new Guid IID = .(0x7c073ef2, 0xa7f4, 0x4045, 0x8c, 0x32, 0x8a, 0xb8, 0xae, 0x64, 0x0f, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public DWRITE_FONT_SOURCE_TYPE GetFontSourceType(uint32 fontIndex) mut
			{
				return VT.GetFontSourceType(&this, fontIndex);
			}
			public uint32 GetFontSourceNameLength(uint32 listIndex) mut
			{
				return VT.GetFontSourceNameLength(&this, listIndex);
			}
			public HRESULT GetFontSourceName(uint32 listIndex, char16* stringBuffer, uint32 stringBufferSize) mut
			{
				return VT.GetFontSourceName(&this, listIndex, stringBuffer, stringBufferSize);
			}
			[CRepr]
			public struct VTable : IDWriteFontSet2.VTable
			{
				public new function DWRITE_FONT_SOURCE_TYPE(IDWriteFontSet3 *self, uint32 fontIndex) GetFontSourceType;
				public new function uint32(IDWriteFontSet3 *self, uint32 listIndex) GetFontSourceNameLength;
				public new function HRESULT(IDWriteFontSet3 *self, uint32 listIndex, char16* stringBuffer, uint32 stringBufferSize) GetFontSourceName;
			}
		}
		[CRepr]
		public struct IDWriteFontFace6 : IDWriteFontFace5
		{
			public const new Guid IID = .(0xc4b1fe1b, 0x6e84, 0x47d5, 0xb5, 0x4c, 0xa5, 0x97, 0x98, 0x1b, 0x06, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFamilyNames(DWRITE_FONT_FAMILY_MODEL fontFamilyModel, IDWriteLocalizedStrings** names) mut
			{
				return VT.GetFamilyNames(&this, fontFamilyModel, names);
			}
			public HRESULT GetFaceNames(DWRITE_FONT_FAMILY_MODEL fontFamilyModel, IDWriteLocalizedStrings** names) mut
			{
				return VT.GetFaceNames(&this, fontFamilyModel, names);
			}
			[CRepr]
			public struct VTable : IDWriteFontFace5.VTable
			{
				public new function HRESULT(IDWriteFontFace6 *self, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, IDWriteLocalizedStrings** names) GetFamilyNames;
				public new function HRESULT(IDWriteFontFace6 *self, DWRITE_FONT_FAMILY_MODEL fontFamilyModel, IDWriteLocalizedStrings** names) GetFaceNames;
			}
		}
		
		// --- Functions ---
		
		[Import("dwrite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DWriteCreateFactory(DWRITE_FACTORY_TYPE factoryType, Guid* iid, IUnknown** factory);
		
	}
}
