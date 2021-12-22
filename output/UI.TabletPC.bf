using System;

// namespace UI.TabletPC
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const String MICROSOFT_URL_EXPERIENCE_PROPERTY = "Microsoft TIP URL Experience";
		public const String MICROSOFT_TIP_NO_INSERT_BUTTON_PROPERTY = "Microsoft TIP No Insert Option";
		public const String MICROSOFT_TIP_COMBOBOXLIST_PROPERTY = "Microsoft TIP ComboBox List Window Identifier";
		public const String MICROSOFT_TIP_OPENING_MSG = "TabletInputPanelOpening";
		public const uint32 SAFE_PARTIAL = 1;
		public const uint32 BEST_COMPLETE = 2;
		public const uint32 MAX_VENDORNAME = 32;
		public const uint32 MAX_FRIENDLYNAME = 64;
		public const uint32 MAX_LANGUAGES = 64;
		public const uint32 CAC_FULL = 0;
		public const uint32 CAC_PREFIX = 1;
		public const uint32 CAC_RANDOM = 2;
		public const uint32 ASYNC_RECO_INTERRUPTED = 1;
		public const uint32 ASYNC_RECO_PROCESS_FAILED = 2;
		public const uint32 ASYNC_RECO_ADDSTROKE_FAILED = 4;
		public const uint32 ASYNC_RECO_SETCACMODE_FAILED = 8;
		public const uint32 ASYNC_RECO_RESETCONTEXT_FAILED = 16;
		public const uint32 ASYNC_RECO_SETGUIDE_FAILED = 32;
		public const uint32 ASYNC_RECO_SETFLAGS_FAILED = 64;
		public const uint32 ASYNC_RECO_SETFACTOID_FAILED = 128;
		public const uint32 ASYNC_RECO_SETTEXTCONTEXT_FAILED = 256;
		public const uint32 ASYNC_RECO_SETWORDLIST_FAILED = 512;
		public const int32 RF_DONTCARE = 1;
		public const int32 RF_OBJECT = 2;
		public const int32 RF_FREE_INPUT = 4;
		public const int32 RF_LINED_INPUT = 8;
		public const int32 RF_BOXED_INPUT = 16;
		public const int32 RF_CAC_INPUT = 32;
		public const int32 RF_RIGHT_AND_DOWN = 64;
		public const int32 RF_LEFT_AND_DOWN = 128;
		public const int32 RF_DOWN_AND_LEFT = 256;
		public const int32 RF_DOWN_AND_RIGHT = 512;
		public const int32 RF_ARBITRARY_ANGLE = 1024;
		public const int32 RF_LATTICE = 2048;
		public const int32 RF_ADVISEINKCHANGE = 4096;
		public const int32 RF_STROKEREORDER = 8192;
		public const int32 RF_PERSONALIZABLE = 16384;
		public const int32 RF_PERFORMSLINEBREAKING = 65536;
		public const int32 RF_REQUIRESSEGMENTATIONBREAKING = 131072;
		public const uint32 FLICK_WM_HANDLED_MASK = 1;
		public const uint32 NUM_FLICK_DIRECTIONS = 8;
		public const uint32 WM_TABLET_DEFBASE = 704;
		public const uint32 WM_TABLET_MAXOFFSET = 32;
		public const uint32 WM_TABLET_ADDED = 712;
		public const uint32 WM_TABLET_DELETED = 713;
		public const uint32 WM_TABLET_FLICK = 715;
		public const uint32 WM_TABLET_QUERYSYSTEMGESTURESTATUS = 716;
		public const uint32 TABLET_DISABLE_PRESSANDHOLD = 1;
		public const uint32 TABLET_DISABLE_PENTAPFEEDBACK = 8;
		public const uint32 TABLET_DISABLE_PENBARRELFEEDBACK = 16;
		public const uint32 TABLET_DISABLE_TOUCHUIFORCEON = 256;
		public const uint32 TABLET_DISABLE_TOUCHUIFORCEOFF = 512;
		public const uint32 TABLET_DISABLE_TOUCHSWITCH = 32768;
		public const uint32 TABLET_DISABLE_FLICKS = 65536;
		public const uint32 TABLET_ENABLE_FLICKSONCONTEXT = 131072;
		public const uint32 TABLET_ENABLE_FLICKLEARNINGMODE = 262144;
		public const uint32 TABLET_DISABLE_SMOOTHSCROLLING = 524288;
		public const uint32 TABLET_DISABLE_FLICKFALLBACKKEYS = 1048576;
		public const uint32 TABLET_ENABLE_MULTITOUCHDATA = 16777216;
		public const uint32 MAX_PACKET_PROPERTY_COUNT = 32;
		public const uint32 MAX_PACKET_BUTTON_COUNT = 32;
		public const uint32 IP_CURSOR_DOWN = 1;
		public const uint32 IP_INVERTED = 2;
		public const uint32 IP_MARGIN = 4;
		public const uint32 IEC__BASE = 1536;
		public const uint32 EM_GETINKMODE = 1537;
		public const uint32 EM_SETINKMODE = 1538;
		public const uint32 EM_GETINKINSERTMODE = 1539;
		public const uint32 EM_SETINKINSERTMODE = 1540;
		public const uint32 EM_GETDRAWATTR = 1541;
		public const uint32 EM_SETDRAWATTR = 1542;
		public const uint32 EM_GETRECOTIMEOUT = 1543;
		public const uint32 EM_SETRECOTIMEOUT = 1544;
		public const uint32 EM_GETGESTURESTATUS = 1545;
		public const uint32 EM_SETGESTURESTATUS = 1546;
		public const uint32 EM_GETRECOGNIZER = 1547;
		public const uint32 EM_SETRECOGNIZER = 1548;
		public const uint32 EM_GETFACTOID = 1549;
		public const uint32 EM_SETFACTOID = 1550;
		public const uint32 EM_GETSELINK = 1551;
		public const uint32 EM_SETSELINK = 1552;
		public const uint32 EM_GETMOUSEICON = 1553;
		public const uint32 EM_SETMOUSEICON = 1554;
		public const uint32 EM_GETMOUSEPOINTER = 1555;
		public const uint32 EM_SETMOUSEPOINTER = 1556;
		public const uint32 EM_GETSTATUS = 1557;
		public const uint32 EM_RECOGNIZE = 1558;
		public const uint32 EM_GETUSEMOUSEFORINPUT = 1559;
		public const uint32 EM_SETUSEMOUSEFORINPUT = 1560;
		public const uint32 EM_SETSELINKDISPLAYMODE = 1561;
		public const uint32 EM_GETSELINKDISPLAYMODE = 1562;
		public const uint32 IECN__BASE = 2048;
		public const uint32 IECN_STROKE = 2049;
		public const uint32 IECN_GESTURE = 2050;
		public const uint32 IECN_RECOGNITIONRESULT = 2051;
		public const uint32 RECOFLAG_WORDMODE = 1;
		public const uint32 RECOFLAG_COERCE = 2;
		public const uint32 RECOFLAG_SINGLESEG = 4;
		public const uint32 RECOFLAG_PREFIXOK = 8;
		public const uint32 RECOFLAG_LINEMODE = 16;
		public const uint32 RECOFLAG_DISABLEPERSONALIZATION = 32;
		public const uint32 RECOFLAG_AUTOSPACE = 64;
		public const int32 RECOCONF_LOWCONFIDENCE = -1;
		public const uint32 RECOCONF_MEDIUMCONFIDENCE = 0;
		public const uint32 RECOCONF_HIGHCONFIDENCE = 1;
		public const uint32 RECOCONF_NOTSET = 128;
		public const uint32 GESTURE_NULL = 61440;
		public const uint32 GESTURE_SCRATCHOUT = 61441;
		public const uint32 GESTURE_TRIANGLE = 61442;
		public const uint32 GESTURE_SQUARE = 61443;
		public const uint32 GESTURE_STAR = 61444;
		public const uint32 GESTURE_CHECK = 61445;
		public const uint32 GESTURE_INFINITY = 61446;
		public const uint32 GESTURE_CROSS = 61447;
		public const uint32 GESTURE_PARAGRAPH = 61448;
		public const uint32 GESTURE_SECTION = 61449;
		public const uint32 GESTURE_BULLET = 61450;
		public const uint32 GESTURE_BULLET_CROSS = 61451;
		public const uint32 GESTURE_SQUIGGLE = 61452;
		public const uint32 GESTURE_SWAP = 61453;
		public const uint32 GESTURE_OPENUP = 61454;
		public const uint32 GESTURE_CLOSEUP = 61455;
		public const uint32 GESTURE_CURLICUE = 61456;
		public const uint32 GESTURE_DOUBLE_CURLICUE = 61457;
		public const uint32 GESTURE_RECTANGLE = 61458;
		public const uint32 GESTURE_CIRCLE = 61472;
		public const uint32 GESTURE_DOUBLE_CIRCLE = 61473;
		public const uint32 GESTURE_CIRCLE_TAP = 61474;
		public const uint32 GESTURE_CIRCLE_CIRCLE = 61475;
		public const uint32 GESTURE_CIRCLE_CROSS = 61477;
		public const uint32 GESTURE_CIRCLE_LINE_VERT = 61478;
		public const uint32 GESTURE_CIRCLE_LINE_HORZ = 61479;
		public const uint32 GESTURE_SEMICIRCLE_LEFT = 61480;
		public const uint32 GESTURE_SEMICIRCLE_RIGHT = 61481;
		public const uint32 GESTURE_CHEVRON_UP = 61488;
		public const uint32 GESTURE_CHEVRON_DOWN = 61489;
		public const uint32 GESTURE_CHEVRON_LEFT = 61490;
		public const uint32 GESTURE_CHEVRON_RIGHT = 61491;
		public const uint32 GESTURE_ARROW_UP = 61496;
		public const uint32 GESTURE_ARROW_DOWN = 61497;
		public const uint32 GESTURE_ARROW_LEFT = 61498;
		public const uint32 GESTURE_ARROW_RIGHT = 61499;
		public const uint32 GESTURE_DOUBLE_ARROW_UP = 61500;
		public const uint32 GESTURE_DOUBLE_ARROW_DOWN = 61501;
		public const uint32 GESTURE_DOUBLE_ARROW_LEFT = 61502;
		public const uint32 GESTURE_DOUBLE_ARROW_RIGHT = 61503;
		public const uint32 GESTURE_UP_ARROW_LEFT = 61504;
		public const uint32 GESTURE_UP_ARROW_RIGHT = 61505;
		public const uint32 GESTURE_DOWN_ARROW_LEFT = 61506;
		public const uint32 GESTURE_DOWN_ARROW_RIGHT = 61507;
		public const uint32 GESTURE_LEFT_ARROW_UP = 61508;
		public const uint32 GESTURE_LEFT_ARROW_DOWN = 61509;
		public const uint32 GESTURE_RIGHT_ARROW_UP = 61510;
		public const uint32 GESTURE_RIGHT_ARROW_DOWN = 61511;
		public const uint32 GESTURE_UP = 61528;
		public const uint32 GESTURE_DOWN = 61529;
		public const uint32 GESTURE_LEFT = 61530;
		public const uint32 GESTURE_RIGHT = 61531;
		public const uint32 GESTURE_DIAGONAL_LEFTUP = 61532;
		public const uint32 GESTURE_DIAGONAL_RIGHTUP = 61533;
		public const uint32 GESTURE_DIAGONAL_LEFTDOWN = 61534;
		public const uint32 GESTURE_DIAGONAL_RIGHTDOWN = 61535;
		public const uint32 GESTURE_UP_DOWN = 61536;
		public const uint32 GESTURE_DOWN_UP = 61537;
		public const uint32 GESTURE_LEFT_RIGHT = 61538;
		public const uint32 GESTURE_RIGHT_LEFT = 61539;
		public const uint32 GESTURE_UP_LEFT_LONG = 61540;
		public const uint32 GESTURE_UP_RIGHT_LONG = 61541;
		public const uint32 GESTURE_DOWN_LEFT_LONG = 61542;
		public const uint32 GESTURE_DOWN_RIGHT_LONG = 61543;
		public const uint32 GESTURE_UP_LEFT = 61544;
		public const uint32 GESTURE_UP_RIGHT = 61545;
		public const uint32 GESTURE_DOWN_LEFT = 61546;
		public const uint32 GESTURE_DOWN_RIGHT = 61547;
		public const uint32 GESTURE_LEFT_UP = 61548;
		public const uint32 GESTURE_LEFT_DOWN = 61549;
		public const uint32 GESTURE_RIGHT_UP = 61550;
		public const uint32 GESTURE_RIGHT_DOWN = 61551;
		public const uint32 GESTURE_LETTER_A = 61568;
		public const uint32 GESTURE_LETTER_B = 61569;
		public const uint32 GESTURE_LETTER_C = 61570;
		public const uint32 GESTURE_LETTER_D = 61571;
		public const uint32 GESTURE_LETTER_E = 61572;
		public const uint32 GESTURE_LETTER_F = 61573;
		public const uint32 GESTURE_LETTER_G = 61574;
		public const uint32 GESTURE_LETTER_H = 61575;
		public const uint32 GESTURE_LETTER_I = 61576;
		public const uint32 GESTURE_LETTER_J = 61577;
		public const uint32 GESTURE_LETTER_K = 61578;
		public const uint32 GESTURE_LETTER_L = 61579;
		public const uint32 GESTURE_LETTER_M = 61580;
		public const uint32 GESTURE_LETTER_N = 61581;
		public const uint32 GESTURE_LETTER_O = 61582;
		public const uint32 GESTURE_LETTER_P = 61583;
		public const uint32 GESTURE_LETTER_Q = 61584;
		public const uint32 GESTURE_LETTER_R = 61585;
		public const uint32 GESTURE_LETTER_S = 61586;
		public const uint32 GESTURE_LETTER_T = 61587;
		public const uint32 GESTURE_LETTER_U = 61588;
		public const uint32 GESTURE_LETTER_V = 61589;
		public const uint32 GESTURE_LETTER_W = 61590;
		public const uint32 GESTURE_LETTER_X = 61591;
		public const uint32 GESTURE_LETTER_Y = 61592;
		public const uint32 GESTURE_LETTER_Z = 61593;
		public const uint32 GESTURE_DIGIT_0 = 61594;
		public const uint32 GESTURE_DIGIT_1 = 61595;
		public const uint32 GESTURE_DIGIT_2 = 61596;
		public const uint32 GESTURE_DIGIT_3 = 61597;
		public const uint32 GESTURE_DIGIT_4 = 61598;
		public const uint32 GESTURE_DIGIT_5 = 61599;
		public const uint32 GESTURE_DIGIT_6 = 61600;
		public const uint32 GESTURE_DIGIT_7 = 61601;
		public const uint32 GESTURE_DIGIT_8 = 61602;
		public const uint32 GESTURE_DIGIT_9 = 61603;
		public const uint32 GESTURE_EXCLAMATION = 61604;
		public const uint32 GESTURE_QUESTION = 61605;
		public const uint32 GESTURE_SHARP = 61606;
		public const uint32 GESTURE_DOLLAR = 61607;
		public const uint32 GESTURE_ASTERISK = 61608;
		public const uint32 GESTURE_PLUS = 61609;
		public const uint32 GESTURE_DOUBLE_UP = 61624;
		public const uint32 GESTURE_DOUBLE_DOWN = 61625;
		public const uint32 GESTURE_DOUBLE_LEFT = 61626;
		public const uint32 GESTURE_DOUBLE_RIGHT = 61627;
		public const uint32 GESTURE_TRIPLE_UP = 61628;
		public const uint32 GESTURE_TRIPLE_DOWN = 61629;
		public const uint32 GESTURE_TRIPLE_LEFT = 61630;
		public const uint32 GESTURE_TRIPLE_RIGHT = 61631;
		public const uint32 GESTURE_BRACKET_OVER = 61668;
		public const uint32 GESTURE_BRACKET_UNDER = 61669;
		public const uint32 GESTURE_BRACKET_LEFT = 61670;
		public const uint32 GESTURE_BRACKET_RIGHT = 61671;
		public const uint32 GESTURE_BRACE_OVER = 61672;
		public const uint32 GESTURE_BRACE_UNDER = 61673;
		public const uint32 GESTURE_BRACE_LEFT = 61674;
		public const uint32 GESTURE_BRACE_RIGHT = 61675;
		public const uint32 GESTURE_TAP = 61680;
		public const uint32 GESTURE_DOUBLE_TAP = 61681;
		public const uint32 GESTURE_TRIPLE_TAP = 61682;
		public const uint32 GESTURE_QUAD_TAP = 61683;
		public const uint32 FACILITY_INK = 40;
		public const Guid GUID_PACKETPROPERTY_GUID_X = .(0x598a6a8f, 0x52c0, 0x4ba0, 0x93, 0xaf, 0xaf, 0x35, 0x74, 0x11, 0xa5, 0x61);
		public const Guid GUID_PACKETPROPERTY_GUID_Y = .(0xb53f9f75, 0x04e0, 0x4498, 0xa7, 0xee, 0xc3, 0x0d, 0xbb, 0x5a, 0x90, 0x11);
		public const Guid GUID_PACKETPROPERTY_GUID_Z = .(0x735adb30, 0x0ebb, 0x4788, 0xa0, 0xe4, 0x0f, 0x31, 0x64, 0x90, 0x05, 0x5d);
		public const Guid GUID_PACKETPROPERTY_GUID_PACKET_STATUS = .(0x6e0e07bf, 0xafe7, 0x4cf7, 0x87, 0xd1, 0xaf, 0x64, 0x46, 0x20, 0x84, 0x18);
		public const Guid GUID_PACKETPROPERTY_GUID_TIMER_TICK = .(0x436510c5, 0xfed3, 0x45d1, 0x8b, 0x76, 0x71, 0xd3, 0xea, 0x7a, 0x82, 0x9d);
		public const Guid GUID_PACKETPROPERTY_GUID_SERIAL_NUMBER = .(0x78a81b56, 0x0935, 0x4493, 0xba, 0xae, 0x00, 0x54, 0x1a, 0x8a, 0x16, 0xc4);
		public const Guid GUID_PACKETPROPERTY_GUID_NORMAL_PRESSURE = .(0x7307502d, 0xf9f4, 0x4e18, 0xb3, 0xf2, 0x2c, 0xe1, 0xb1, 0xa3, 0x61, 0x0c);
		public const Guid GUID_PACKETPROPERTY_GUID_TANGENT_PRESSURE = .(0x6da4488b, 0x5244, 0x41ec, 0x90, 0x5b, 0x32, 0xd8, 0x9a, 0xb8, 0x08, 0x09);
		public const Guid GUID_PACKETPROPERTY_GUID_BUTTON_PRESSURE = .(0x8b7fefc4, 0x96aa, 0x4bfe, 0xac, 0x26, 0x8a, 0x5f, 0x0b, 0xe0, 0x7b, 0xf5);
		public const Guid GUID_PACKETPROPERTY_GUID_X_TILT_ORIENTATION = .(0xa8d07b3a, 0x8bf0, 0x40b0, 0x95, 0xa9, 0xb8, 0x0a, 0x6b, 0xb7, 0x87, 0xbf);
		public const Guid GUID_PACKETPROPERTY_GUID_Y_TILT_ORIENTATION = .(0x0e932389, 0x1d77, 0x43af, 0xac, 0x00, 0x5b, 0x95, 0x0d, 0x6d, 0x4b, 0x2d);
		public const Guid GUID_PACKETPROPERTY_GUID_AZIMUTH_ORIENTATION = .(0x029123b4, 0x8828, 0x410b, 0xb2, 0x50, 0xa0, 0x53, 0x65, 0x95, 0xe5, 0xdc);
		public const Guid GUID_PACKETPROPERTY_GUID_ALTITUDE_ORIENTATION = .(0x82dec5c7, 0xf6ba, 0x4906, 0x89, 0x4f, 0x66, 0xd6, 0x8d, 0xfc, 0x45, 0x6c);
		public const Guid GUID_PACKETPROPERTY_GUID_TWIST_ORIENTATION = .(0x0d324960, 0x13b2, 0x41e4, 0xac, 0xe6, 0x7a, 0xe9, 0xd4, 0x3d, 0x2d, 0x3b);
		public const Guid GUID_PACKETPROPERTY_GUID_PITCH_ROTATION = .(0x7f7e57b7, 0xbe37, 0x4be1, 0xa3, 0x56, 0x7a, 0x84, 0x16, 0x0e, 0x18, 0x93);
		public const Guid GUID_PACKETPROPERTY_GUID_ROLL_ROTATION = .(0x5d5d5e56, 0x6ba9, 0x4c5b, 0x9f, 0xb0, 0x85, 0x1c, 0x91, 0x71, 0x4e, 0x56);
		public const Guid GUID_PACKETPROPERTY_GUID_YAW_ROTATION = .(0x6a849980, 0x7c3a, 0x45b7, 0xaa, 0x82, 0x90, 0xa2, 0x62, 0x95, 0x0e, 0x89);
		public const Guid GUID_PACKETPROPERTY_GUID_WIDTH = .(0xbaabe94d, 0x2712, 0x48f5, 0xbe, 0x9d, 0x8f, 0x8b, 0x5e, 0xa0, 0x71, 0x1a);
		public const Guid GUID_PACKETPROPERTY_GUID_HEIGHT = .(0xe61858d2, 0xe447, 0x4218, 0x9d, 0x3f, 0x18, 0x86, 0x5c, 0x20, 0x3d, 0xf4);
		public const Guid GUID_PACKETPROPERTY_GUID_FINGERCONTACTCONFIDENCE = .(0xe706c804, 0x57f0, 0x4f00, 0x8a, 0x0c, 0x85, 0x3d, 0x57, 0x78, 0x9b, 0xe9);
		public const Guid GUID_PACKETPROPERTY_GUID_DEVICE_CONTACT_ID = .(0x02585b91, 0x049b, 0x4750, 0x96, 0x15, 0xdf, 0x89, 0x48, 0xab, 0x3c, 0x9c);
		public const int32 InkMinTransparencyValue = 0;
		public const int32 InkMaxTransparencyValue = 255;
		public const int32 InkCollectorClipInkToMargin = 0;
		public const int32 InkCollectorDefaultMargin = -2147483648;
		public const Guid GUID_GESTURE_DATA = .(0x41e4ec0f, 0x26aa, 0x455a, 0x9a, 0xa5, 0x2c, 0xd3, 0x6c, 0xf6, 0x3f, 0xb9);
		public const Guid GUID_DYNAMIC_RENDERER_CACHED_DATA = .(0xbf531b92, 0x25bf, 0x4a95, 0x89, 0xad, 0x0e, 0x47, 0x6b, 0x34, 0xb4, 0xf5);
		
		// --- Typedefs ---
		
		public typealias HRECOALT = int;
		public typealias HRECOCONTEXT = int;
		public typealias HRECOGNIZER = int;
		public typealias HRECOLATTICE = int;
		public typealias HRECOWORDLIST = int;
		
		// --- Enums ---
		
		public enum PROPERTY_UNITS : int32
		{
			DEFAULT = 0,
			INCHES = 1,
			CENTIMETERS = 2,
			DEGREES = 3,
			RADIANS = 4,
			SECONDS = 5,
			POUNDS = 6,
			GRAMS = 7,
			SILINEAR = 8,
			SIROTATION = 9,
			ENGLINEAR = 10,
			ENGROTATION = 11,
			SLUGS = 12,
			KELVIN = 13,
			FAHRENHEIT = 14,
			AMPERE = 15,
			CANDELA = 16,
		}
		public enum enumINKMETRIC_FLAGS : int32
		{
			FONT_SELECTED_IN_HDC = 1,
			ITALIC = 2,
			BOLD = 4,
		}
		public enum enumGetCandidateFlags : int32
		{
			ALLOW_RECOGNITION = 1,
			FORCE_RECOGNITION = 2,
		}
		public enum InkSelectionConstants : int32
		{
			FirstElement = 0,
			AllElements = -1,
		}
		public enum InkBoundingBoxMode : int32
		{
			Default = 0,
			NoCurveFit = 1,
			CurveFit = 2,
			PointsOnly = 3,
			Union = 4,
		}
		[AllowDuplicates]
		public enum InkExtractFlags : int32
		{
			CopyFromOriginal = 0,
			RemoveFromOriginal = 1,
			Default = 1,
		}
		public enum InkPersistenceFormat : int32
		{
			InkSerializedFormat = 0,
			Base64InkSerializedFormat = 1,
			GIF = 2,
			Base64GIF = 3,
		}
		public enum InkPersistenceCompressionMode : int32
		{
			Default = 0,
			MaximumCompression = 1,
			NoCompression = 2,
		}
		public enum InkPenTip : int32
		{
			Ball = 0,
			Rectangle = 1,
		}
		public enum InkRasterOperation : int32
		{
			Black = 1,
			NotMergePen = 2,
			MaskNotPen = 3,
			NotCopyPen = 4,
			MaskPenNot = 5,
			Not = 6,
			XOrPen = 7,
			NotMaskPen = 8,
			MaskPen = 9,
			NotXOrPen = 10,
			NoOperation = 11,
			MergeNotPen = 12,
			CopyPen = 13,
			MergePenNot = 14,
			MergePen = 15,
			White = 16,
		}
		public enum InkMousePointer : int32
		{
			Default = 0,
			Arrow = 1,
			Crosshair = 2,
			Ibeam = 3,
			SizeNESW = 4,
			SizeNS = 5,
			SizeNWSE = 6,
			SizeWE = 7,
			UpArrow = 8,
			Hourglass = 9,
			NoDrop = 10,
			ArrowHourglass = 11,
			ArrowQuestion = 12,
			SizeAll = 13,
			Hand = 14,
			Custom = 99,
		}
		[AllowDuplicates]
		public enum InkClipboardModes : int32
		{
			Copy = 0,
			Cut = 1,
			ExtractOnly = 48,
			DelayedCopy = 32,
			Default = 0,
		}
		[AllowDuplicates]
		public enum InkClipboardFormats : int32
		{
			None = 0,
			InkSerializedFormat = 1,
			SketchInk = 2,
			TextInk = 6,
			EnhancedMetafile = 8,
			Metafile = 32,
			Bitmap = 64,
			PasteMask = 7,
			CopyMask = 127,
			Default = 127,
		}
		public enum SelectionHitResult : int32
		{
			None = 0,
			NW = 1,
			SE = 2,
			NE = 3,
			SW = 4,
			E = 5,
			W = 6,
			N = 7,
			S = 8,
			Selection = 9,
		}
		public enum InkRecognitionStatus : int32
		{
			NoError = 0,
			Interrupted = 1,
			ProcessFailed = 2,
			InkAddedFailed = 4,
			SetAutoCompletionModeFailed = 8,
			SetStrokesFailed = 16,
			SetGuideFailed = 32,
			SetFlagsFailed = 64,
			SetFactoidFailed = 128,
			SetPrefixSuffixFailed = 256,
			SetWordListFailed = 512,
		}
		public enum DISPID_InkRectangle : int32
		{
			Top = 1,
			Left = 2,
			Bottom = 3,
			Right = 4,
			GetRectangle = 5,
			SetRectangle = 6,
			Data = 7,
		}
		public enum DISPID_InkExtendedProperty : int32
		{
			Guid = 1,
			Data = 2,
		}
		public enum DISPID_InkExtendedProperties : int32
		{
			_NewEnum = -4,
			Item = 0,
			Count = 1,
			Add = 2,
			Remove = 3,
			Clear = 4,
			DoesPropertyExist = 5,
		}
		public enum DISPID_InkDrawingAttributes : int32
		{
			Height = 1,
			Color = 2,
			Width = 3,
			FitToCurve = 4,
			IgnorePressure = 5,
			AntiAliased = 6,
			Transparency = 7,
			RasterOperation = 8,
			PenTip = 9,
			Clone = 10,
			ExtendedProperties = 11,
		}
		public enum DISPID_InkTransform : int32
		{
			Reset = 1,
			Translate = 2,
			Rotate = 3,
			Reflect = 4,
			Shear = 5,
			Scale = 6,
			eM11 = 7,
			eM12 = 8,
			eM21 = 9,
			eM22 = 10,
			eDx = 11,
			eDy = 12,
			GetTransform = 13,
			SetTransform = 14,
			Data = 15,
		}
		public enum InkApplicationGesture : int32
		{
			AllGestures = 0,
			NoGesture = 61440,
			Scratchout = 61441,
			Triangle = 61442,
			Square = 61443,
			Star = 61444,
			Check = 61445,
			Curlicue = 61456,
			DoubleCurlicue = 61457,
			Circle = 61472,
			DoubleCircle = 61473,
			SemiCircleLeft = 61480,
			SemiCircleRight = 61481,
			ChevronUp = 61488,
			ChevronDown = 61489,
			ChevronLeft = 61490,
			ChevronRight = 61491,
			ArrowUp = 61496,
			ArrowDown = 61497,
			ArrowLeft = 61498,
			ArrowRight = 61499,
			Up = 61528,
			Down = 61529,
			Left = 61530,
			Right = 61531,
			UpDown = 61536,
			DownUp = 61537,
			LeftRight = 61538,
			RightLeft = 61539,
			UpLeftLong = 61540,
			UpRightLong = 61541,
			DownLeftLong = 61542,
			DownRightLong = 61543,
			UpLeft = 61544,
			UpRight = 61545,
			DownLeft = 61546,
			DownRight = 61547,
			LeftUp = 61548,
			LeftDown = 61549,
			RightUp = 61550,
			RightDown = 61551,
			Exclamation = 61604,
			Tap = 61680,
			DoubleTap = 61681,
		}
		public enum InkSystemGesture : int32
		{
			Tap = 16,
			DoubleTap = 17,
			RightTap = 18,
			Drag = 19,
			RightDrag = 20,
			HoldEnter = 21,
			HoldLeave = 22,
			HoverEnter = 23,
			HoverLeave = 24,
			Flick = 31,
		}
		public enum InkRecognitionConfidence : int32
		{
			Strong = 0,
			Intermediate = 1,
			Poor = 2,
		}
		public enum DISPID_InkGesture : int32
		{
			Id = 0,
			GetHotPoint = 1,
			Confidence = 2,
		}
		public enum DISPID_InkCursor : int32
		{
			Name = 0,
			Id = 1,
			DrawingAttributes = 2,
			Buttons = 3,
			Inverted = 4,
			Tablet = 5,
		}
		public enum DISPID_InkCursors : int32
		{
			_NewEnum = -4,
			Item = 0,
			Count = 1,
		}
		public enum InkCursorButtonState : int32
		{
			Unavailable = 0,
			Up = 1,
			Down = 2,
		}
		public enum DISPID_InkCursorButton : int32
		{
			Name = 0,
			Id = 1,
			State = 2,
		}
		public enum DISPID_InkCursorButtons : int32
		{
			_NewEnum = -4,
			Item = 0,
			Count = 1,
		}
		public enum TabletHardwareCapabilities : int32
		{
			Integrated = 1,
			CursorMustTouch = 2,
			HardProximity = 4,
			CursorsHavePhysicalIds = 8,
		}
		public enum TabletPropertyMetricUnit : int32
		{
			Default = 0,
			Inches = 1,
			Centimeters = 2,
			Degrees = 3,
			Radians = 4,
			Seconds = 5,
			Pounds = 6,
			Grams = 7,
		}
		public enum DISPID_InkTablet : int32
		{
			Name = 0,
			PlugAndPlayId = 1,
			PropertyMetrics = 2,
			IsPacketPropertySupported = 3,
			MaximumInputRectangle = 4,
			HardwareCapabilities = 5,
		}
		public enum TabletDeviceKind : int32
		{
			Mouse = 0,
			Pen = 1,
			Touch = 2,
		}
		public enum DISPID_InkTablet2 : int32
		{
			DISPID_IT2DeviceKind = 0,
		}
		public enum DISPID_InkTablet3 : int32
		{
			IsMultiTouch = 0,
			MaximumCursors = 1,
		}
		public enum DISPID_InkTablets : int32
		{
			_NewEnum = -4,
			Item = 0,
			DefaultTablet = 1,
			Count = 2,
			IsPacketPropertySupported = 3,
		}
		public enum DISPID_InkStrokeDisp : int32
		{
			InkIndex = 1,
			ID = 2,
			GetBoundingBox = 3,
			DrawingAttributes = 4,
			FindIntersections = 5,
			GetRectangleIntersections = 6,
			Clip = 7,
			HitTestCircle = 8,
			NearestPoint = 9,
			Split = 10,
			ExtendedProperties = 11,
			Ink = 12,
			BezierPoints = 13,
			PolylineCusps = 14,
			BezierCusps = 15,
			SelfIntersections = 16,
			PacketCount = 17,
			PacketSize = 18,
			PacketDescription = 19,
			Deleted = 20,
			GetPacketDescriptionPropertyMetrics = 21,
			GetPoints = 22,
			SetPoints = 23,
			GetPacketData = 24,
			GetPacketValuesByProperty = 25,
			SetPacketValuesByProperty = 26,
			GetFlattenedBezierPoints = 27,
			ScaleToRectangle = 28,
			Transform = 29,
			Move = 30,
			Rotate = 31,
			Shear = 32,
			Scale = 33,
		}
		public enum DISPID_InkStrokes : int32
		{
			_NewEnum = -4,
			Item = 0,
			Count = 1,
			Valid = 2,
			Ink = 3,
			Add = 4,
			AddStrokes = 5,
			Remove = 6,
			RemoveStrokes = 7,
			ToString = 8,
			ModifyDrawingAttributes = 9,
			GetBoundingBox = 10,
			ScaleToRectangle = 11,
			Transform = 12,
			Move = 13,
			Rotate = 14,
			Shear = 15,
			Scale = 16,
			Clip = 17,
			RecognitionResult = 18,
			RemoveRecognitionResult = 19,
		}
		public enum DISPID_InkCustomStrokes : int32
		{
			_NewEnum = -4,
			Item = 0,
			Count = 1,
			Add = 2,
			Remove = 3,
			Clear = 4,
		}
		public enum DISPID_StrokeEvent : int32
		{
			Added = 1,
			Removed = 2,
		}
		public enum DISPID_Ink : int32
		{
			Strokes = 1,
			ExtendedProperties = 2,
			GetBoundingBox = 3,
			DeleteStrokes = 4,
			DeleteStroke = 5,
			ExtractStrokes = 6,
			ExtractWithRectangle = 7,
			Dirty = 8,
			CustomStrokes = 9,
			Clone = 10,
			HitTestCircle = 11,
			HitTestWithRectangle = 12,
			HitTestWithLasso = 13,
			NearestPoint = 14,
			CreateStrokes = 15,
			CreateStroke = 16,
			AddStrokesAtRectangle = 17,
			Clip = 18,
			Save = 19,
			Load = 20,
			CreateStrokeFromPoints = 21,
			ClipboardCopyWithRectangle = 22,
			ClipboardCopy = 23,
			CanPaste = 24,
			ClipboardPaste = 25,
		}
		public enum DISPID_InkEvent : int32
		{
			Added = 1,
			Deleted = 2,
		}
		public enum DISPID_InkRenderer : int32
		{
			GetViewTransform = 1,
			SetViewTransform = 2,
			GetObjectTransform = 3,
			SetObjectTransform = 4,
			Draw = 5,
			DrawStroke = 6,
			PixelToInkSpace = 7,
			InkSpaceToPixel = 8,
			PixelToInkSpaceFromPoints = 9,
			InkSpaceToPixelFromPoints = 10,
			Measure = 11,
			MeasureStroke = 12,
			Move = 13,
			Rotate = 14,
			Scale = 15,
		}
		public enum InkCollectorEventInterest : int32
		{
			DefaultEvents = -1,
			CursorDown = 0,
			Stroke = 1,
			NewPackets = 2,
			NewInAirPackets = 3,
			CursorButtonDown = 4,
			CursorButtonUp = 5,
			CursorInRange = 6,
			CursorOutOfRange = 7,
			SystemGesture = 8,
			TabletAdded = 9,
			TabletRemoved = 10,
			MouseDown = 11,
			MouseMove = 12,
			MouseUp = 13,
			MouseWheel = 14,
			DblClick = 15,
			AllEvents = 16,
		}
		public enum InkMouseButton : int32
		{
			Left = 1,
			Right = 2,
			Middle = 4,
		}
		public enum InkShiftKeyModifierFlags : int32
		{
			Shift = 1,
			Control = 2,
			Alt = 4,
		}
		public enum DISPID_InkCollectorEvent : int32
		{
			CEStroke = 1,
			CECursorDown = 2,
			CENewPackets = 3,
			CENewInAirPackets = 4,
			CECursorButtonDown = 5,
			CECursorButtonUp = 6,
			CECursorInRange = 7,
			CECursorOutOfRange = 8,
			CESystemGesture = 9,
			CEGesture = 10,
			CETabletAdded = 11,
			CETabletRemoved = 12,
			OEPainting = 13,
			OEPainted = 14,
			OESelectionChanging = 15,
			OESelectionChanged = 16,
			OESelectionMoving = 17,
			OESelectionMoved = 18,
			OESelectionResizing = 19,
			OESelectionResized = 20,
			OEStrokesDeleting = 21,
			OEStrokesDeleted = 22,
			PEChangeUICues = 23,
			PEClick = 24,
			PEDblClick = 25,
			PEInvalidated = 26,
			PEMouseDown = 27,
			PEMouseEnter = 28,
			PEMouseHover = 29,
			PEMouseLeave = 30,
			PEMouseMove = 31,
			PEMouseUp = 32,
			PEMouseWheel = 33,
			PESizeModeChanged = 34,
			PEStyleChanged = 35,
			PESystemColorsChanged = 36,
			PEKeyDown = 37,
			PEKeyPress = 38,
			PEKeyUp = 39,
			PEResize = 40,
			PESizeChanged = 41,
		}
		public enum InkOverlayEditingMode : int32
		{
			Ink = 0,
			Delete = 1,
			Select = 2,
		}
		public enum InkOverlayAttachMode : int32
		{
			Behind = 0,
			InFront = 1,
		}
		public enum InkPictureSizeMode : int32
		{
			AutoSize = 0,
			CenterImage = 1,
			Normal = 2,
			StretchImage = 3,
		}
		public enum InkOverlayEraserMode : int32
		{
			StrokeErase = 0,
			PointErase = 1,
		}
		public enum InkCollectionMode : int32
		{
			InkOnly = 0,
			GestureOnly = 1,
			InkAndGesture = 2,
		}
		public enum DISPID_InkCollector : int32
		{
			CEnabled = 1,
			CHwnd = 2,
			CPaint = 3,
			CText = 4,
			CDefaultDrawingAttributes = 5,
			CRenderer = 6,
			CInk = 7,
			CAutoRedraw = 8,
			CCollectingInk = 9,
			CSetEventInterest = 10,
			CGetEventInterest = 11,
			OEditingMode = 12,
			OSelection = 13,
			OAttachMode = 14,
			OHitTestSelection = 15,
			ODraw = 16,
			PPicture = 17,
			PSizeMode = 18,
			PBackColor = 19,
			CCursors = 20,
			CMarginX = 21,
			CMarginY = 22,
			CSetWindowInputRectangle = 23,
			CGetWindowInputRectangle = 24,
			CTablet = 25,
			CSetAllTabletsMode = 26,
			CSetSingleTabletIntegratedMode = 27,
			CCollectionMode = 28,
			CSetGestureStatus = 29,
			CGetGestureStatus = 30,
			CDynamicRendering = 31,
			CDesiredPacketDescription = 32,
			OEraserMode = 33,
			OEraserWidth = 34,
			CMouseIcon = 35,
			CMousePointer = 36,
			PInkEnabled = 37,
			CSupportHighContrastInk = 38,
			OSupportHighContrastSelectionUI = 39,
		}
		public enum DISPID_InkRecognizer : int32
		{
			Clsid = 1,
			Name = 2,
			Vendor = 3,
			Capabilities = 4,
			LanguageID = 5,
			PreferredPacketDescription = 6,
			CreateRecognizerContext = 7,
			SupportedProperties = 8,
		}
		public enum InkRecognizerCapabilities : int32
		{
			DontCare = 1,
			Object = 2,
			FreeInput = 4,
			LinedInput = 8,
			BoxedInput = 16,
			CharacterAutoCompletionInput = 32,
			RightAndDown = 64,
			LeftAndDown = 128,
			DownAndLeft = 256,
			DownAndRight = 512,
			ArbitraryAngle = 1024,
			Lattice = 2048,
			AdviseInkChange = 4096,
			StrokeReorder = 8192,
			Personalizable = 16384,
			PrefersArbitraryAngle = 32768,
			PrefersParagraphBreaking = 65536,
			PrefersSegmentation = 131072,
			Cursive = 262144,
			TextPrediction = 524288,
			Alpha = 1048576,
			Beta = 2097152,
		}
		public enum DISPID_InkRecognizer2 : int32
		{
			Id = 0,
			UnicodeRanges = 1,
		}
		public enum DISPID_InkRecognizers : int32
		{
			_NewEnum = -4,
			Item = 0,
			Count = 1,
			GetDefaultRecognizer = 2,
		}
		public enum InkRecognizerCharacterAutoCompletionMode : int32
		{
			Full = 0,
			Prefix = 1,
			Random = 2,
		}
		public enum InkRecognitionModes : int32
		{
			None = 0,
			WordModeOnly = 1,
			Coerce = 2,
			TopInkBreaksOnly = 4,
			PrefixOk = 8,
			LineMode = 16,
			DisablePersonalization = 32,
			AutoSpace = 64,
			Max = 128,
		}
		public enum DISPID_InkRecognitionEvent : int32
		{
			nWithAlternates = 1,
			n = 2,
		}
		public enum DISPID_InkRecoContext : int32
		{
			Strokes = 1,
			CharacterAutoCompletionMode = 2,
			Factoid = 3,
			WordList = 4,
			Recognizer = 5,
			Guide = 6,
			Flags = 7,
			PrefixText = 8,
			SuffixText = 9,
			StopRecognition = 10,
			Clone = 11,
			Recognize = 12,
			StopBackgroundRecognition = 13,
			EndInkInput = 14,
			BackgroundRecognize = 15,
			BackgroundRecognizeWithAlternates = 16,
			IsStringSupported = 17,
		}
		public enum DISPID_InkRecoContext2 : int32
		{
			DISPID_IRecoCtx2_EnabledUnicodeRanges = 0,
		}
		public enum InkRecognitionAlternatesSelection : int32
		{
			Start = 0,
			DefaultCount = 10,
			All = -1,
		}
		public enum DISPID_InkRecognitionResult : int32
		{
			TopString = 1,
			TopAlternate = 2,
			Strokes = 3,
			TopConfidence = 4,
			AlternatesFromSelection = 5,
			ModifyTopAlternate = 6,
			SetResultOnStrokes = 7,
		}
		public enum DISPID_InkRecoAlternate : int32
		{
			String = 1,
			LineNumber = 2,
			Baseline = 3,
			Midline = 4,
			Ascender = 5,
			Descender = 6,
			Confidence = 7,
			Strokes = 8,
			GetStrokesFromStrokeRanges = 9,
			GetStrokesFromTextRange = 10,
			GetTextRangeFromStrokes = 11,
			GetPropertyValue = 12,
			LineAlternates = 13,
			ConfidenceAlternates = 14,
			AlternatesWithConstantPropertyValues = 15,
		}
		public enum DISPID_InkRecognitionAlternates : int32
		{
			NewEnum = -4,
			Item = 0,
			Count = 1,
			Strokes = 2,
		}
		public enum DISPID_InkRecognizerGuide : int32
		{
			WritingBox = 1,
			DrawnBox = 2,
			Rows = 3,
			Columns = 4,
			Midline = 5,
			GuideData = 6,
		}
		public enum DISPID_InkWordList : int32
		{
			AddWord = 0,
			RemoveWord = 1,
			Merge = 2,
		}
		public enum DISPID_InkWordList2 : int32
		{
			DISPID_InkWordList2_AddWords = 3,
		}
		public enum InkDivisionType : int32
		{
			Segment = 0,
			Line = 1,
			Paragraph = 2,
			Drawing = 3,
		}
		public enum DISPID_InkDivider : int32
		{
			Strokes = 1,
			RecognizerContext = 2,
			LineHeight = 3,
			Divide = 4,
		}
		public enum DISPID_InkDivisionResult : int32
		{
			Strokes = 1,
			ResultByType = 2,
		}
		public enum DISPID_InkDivisionUnit : int32
		{
			Strokes = 1,
			DivisionType = 2,
			RecognizedString = 3,
			RotationTransform = 4,
		}
		public enum DISPID_InkDivisionUnits : int32
		{
			NewEnum = -4,
			Item = 0,
			Count = 1,
		}
		public enum DISPID_PenInputPanel : int32
		{
			AttachedEditWindow = 0,
			Factoid = 1,
			CurrentPanel = 2,
			DefaultPanel = 3,
			Visible = 4,
			Top = 5,
			Left = 6,
			Width = 7,
			Height = 8,
			MoveTo = 9,
			CommitPendingInput = 10,
			Refresh = 11,
			Busy = 12,
			VerticalOffset = 13,
			HorizontalOffset = 14,
			EnableTsf = 15,
			AutoShow = 16,
		}
		public enum DISPID_PenInputPanelEvents : int32
		{
			VisibleChanged = 0,
			PanelChanged = 1,
			InputFailed = 2,
			PanelMoving = 3,
		}
		public enum VisualState : int32
		{
			InPlace = 0,
			Floating = 1,
			DockedTop = 2,
			DockedBottom = 3,
			Closed = 4,
		}
		public enum InteractionMode : int32
		{
			InPlace = 0,
			Floating = 1,
			DockedTop = 2,
			DockedBottom = 3,
		}
		public enum InPlaceState : int32
		{
			Auto = 0,
			HoverTarget = 1,
			Expanded = 2,
		}
		public enum PanelInputArea : int32
		{
			Auto = 0,
			Keyboard = 1,
			WritingPad = 2,
			CharacterPad = 3,
		}
		public enum CorrectionMode : int32
		{
			NotVisible = 0,
			PreInsertion = 1,
			PostInsertionCollapsed = 2,
			PostInsertionExpanded = 3,
		}
		public enum CorrectionPosition : int32
		{
			Auto = 0,
			Bottom = 1,
			Top = 2,
		}
		public enum InPlaceDirection : int32
		{
			Auto = 0,
			Bottom = 1,
			Top = 2,
		}
		public enum EventMask : int32
		{
			InPlaceStateChanging = 1,
			InPlaceStateChanged = 2,
			InPlaceSizeChanging = 4,
			InPlaceSizeChanged = 8,
			InputAreaChanging = 16,
			InputAreaChanged = 32,
			CorrectionModeChanging = 64,
			CorrectionModeChanged = 128,
			InPlaceVisibilityChanging = 256,
			InPlaceVisibilityChanged = 512,
			TextInserting = 1024,
			TextInserted = 2048,
			All = 4095,
		}
		public enum PanelType : int32
		{
			Default = 0,
			Inactive = 1,
			Handwriting = 2,
			Keyboard = 3,
		}
		[AllowDuplicates]
		public enum FLICKDIRECTION : int32
		{
			MIN = 0,
			RIGHT = 0,
			UPRIGHT = 1,
			UP = 2,
			UPLEFT = 3,
			LEFT = 4,
			DOWNLEFT = 5,
			DOWN = 6,
			DOWNRIGHT = 7,
			INVALID = 8,
		}
		[AllowDuplicates]
		public enum FLICKMODE : int32
		{
			MIN = 0,
			OFF = 0,
			ON = 1,
			LEARNING = 2,
			MAX = 2,
			DEFAULT = 1,
		}
		public enum FLICKACTION_COMMANDCODE : int32
		{
			NULL = 0,
			SCROLL = 1,
			APPCOMMAND = 2,
			CUSTOMKEY = 3,
			KEYMODIFIER = 4,
		}
		public enum SCROLLDIRECTION : int32
		{
			UP = 0,
			DOWN = 1,
		}
		public enum KEYMODIFIER : int32
		{
			CONTROL = 1,
			MENU = 2,
			SHIFT = 4,
			WIN = 8,
			ALTGR = 16,
			EXT = 32,
		}
		public enum MouseButton : int32
		{
			NO_BUTTON = 0,
			LEFT_BUTTON = 1,
			RIGHT_BUTTON = 2,
			MIDDLE_BUTTON = 4,
		}
		public enum SelAlignmentConstants : int32
		{
			Left = 0,
			Right = 1,
			Center = 2,
		}
		public enum DISPID_InkEdit : int32
		{
			Text = 0,
			TextRTF = 1,
			Hwnd = 2,
			DisableNoScroll = 3,
			Locked = 4,
			Enabled = 5,
			MaxLength = 6,
			MultiLine = 7,
			ScrollBars = 8,
			RTSelStart = 9,
			RTSelLength = 10,
			RTSelText = 11,
			SelAlignment = 12,
			SelBold = 13,
			SelCharOffset = 14,
			SelColor = 15,
			SelFontName = 16,
			SelFontSize = 17,
			SelItalic = 18,
			SelRTF = 19,
			SelUnderline = 20,
			DragIcon = 21,
			Status = 22,
			UseMouseForInput = 23,
			InkMode = 24,
			InkInsertMode = 25,
			RecoTimeout = 26,
			DrawAttr = 27,
			Recognizer = 28,
			Factoid = 29,
			SelInk = 30,
			SelInksDisplayMode = 31,
			Recognize = 32,
			GetGestStatus = 33,
			SetGestStatus = 34,
			Refresh = 35,
		}
		public enum DISPID_InkEditEvents : int32
		{
			Change = 1,
			SelChange = 2,
			KeyDown = 3,
			KeyUp = 4,
			MouseUp = 5,
			MouseDown = 6,
			KeyPress = 7,
			DblClick = 8,
			Click = 9,
			MouseMove = 10,
			CursorDown = 21,
			Stroke = 22,
			Gesture = 23,
			RecognitionResult = 24,
		}
		public enum InkMode : int32
		{
			Disabled = 0,
			Ink = 1,
			InkAndGesture = 2,
		}
		public enum InkInsertMode : int32
		{
			Text = 0,
			Ink = 1,
		}
		public enum InkEditStatus : int32
		{
			Idle = 0,
			Collecting = 1,
			Recognizing = 2,
		}
		public enum InkDisplayMode : int32
		{
			Ink = 0,
			Text = 1,
		}
		public enum AppearanceConstants : int32
		{
			Flat = 0,
			ThreeD = 1,
		}
		public enum BorderStyleConstants : int32
		{
			NoBorder = 0,
			FixedSingle = 1,
		}
		public enum ScrollBarsConstants : int32
		{
			None = 0,
			Horizontal = 1,
			Vertical = 2,
			Both = 3,
		}
		public enum MICUIELEMENT : int32
		{
			BUTTON_WRITE = 1,
			BUTTON_ERASE = 2,
			BUTTON_CORRECT = 4,
			BUTTON_CLEAR = 8,
			BUTTON_UNDO = 16,
			BUTTON_REDO = 32,
			BUTTON_INSERT = 64,
			BUTTON_CANCEL = 128,
			INKPANEL_BACKGROUND = 256,
			RESULTPANEL_BACKGROUND = 512,
		}
		public enum MICUIELEMENTSTATE : int32
		{
			NORMAL = 1,
			HOT = 2,
			PRESSED = 3,
			DISABLED = 4,
		}
		public enum DISPID_MathInputControlEvents : int32
		{
			Insert = 0,
			Close = 1,
			Paint = 2,
			Clear = 3,
		}
		public enum RealTimeStylusDataInterest : int32
		{
			AllData = -1,
			None = 0,
			Error = 1,
			RealTimeStylusEnabled = 2,
			RealTimeStylusDisabled = 4,
			StylusNew = 8,
			StylusInRange = 16,
			InAirPackets = 32,
			StylusOutOfRange = 64,
			StylusDown = 128,
			Packets = 256,
			StylusUp = 512,
			StylusButtonUp = 1024,
			StylusButtonDown = 2048,
			SystemEvents = 4096,
			TabletAdded = 8192,
			TabletRemoved = 16384,
			CustomStylusDataAdded = 32768,
			UpdateMapping = 65536,
			DefaultEvents = 37766,
		}
		public enum StylusQueue : int32
		{
			SyncStylusQueue = 1,
			AsyncStylusQueueImmediate = 2,
			AsyncStylusQueue = 3,
		}
		public enum RealTimeStylusLockType : int32
		{
			ObjLock = 1,
			SyncEventLock = 2,
			AsyncEventLock = 4,
			ExcludeCallback = 8,
			SyncObjLock = 11,
			AsyncObjLock = 13,
		}
		public enum LINE_METRICS : int32
		{
			BASELINE = 0,
			MIDLINE = 1,
			ASCENDER = 2,
			DESCENDER = 3,
		}
		public enum CONFIDENCE_LEVEL : int32
		{
			STRONG = 0,
			INTERMEDIATE = 1,
			POOR = 2,
		}
		public enum ALT_BREAKS : int32
		{
			SAME = 0,
			UNIQUE = 1,
			FULL = 2,
		}
		public enum enumRECO_TYPE : int32
		{
			STRING = 0,
			CHAR = 1,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT PfnRecoCallback(uint32 param0, uint8* param1, HRECOCONTEXT param2);
		
		// --- Structs ---
		
		[CRepr]
		public struct SYSTEM_EVENT_DATA
		{
			public uint8 bModifier;
			public char16 wKey;
			public int32 xPos;
			public int32 yPos;
			public uint8 bCursorMode;
			public uint32 dwButtonState;
		}
		[CRepr]
		public struct STROKE_RANGE
		{
			public uint32 iStrokeBegin;
			public uint32 iStrokeEnd;
		}
		[CRepr]
		public struct PROPERTY_METRICS
		{
			public int32 nLogicalMin;
			public int32 nLogicalMax;
			public PROPERTY_UNITS Units;
			public float fResolution;
		}
		[CRepr]
		public struct PACKET_PROPERTY
		{
			public Guid guid;
			public PROPERTY_METRICS PropertyMetrics;
		}
		[CRepr]
		public struct PACKET_DESCRIPTION
		{
			public uint32 cbPacketSize;
			public uint32 cPacketProperties;
			public PACKET_PROPERTY* pPacketProperties;
			public uint32 cButtons;
			public Guid* pguidButtons;
		}
		[CRepr]
		public struct INKMETRIC
		{
			public int32 iHeight;
			public int32 iFontAscent;
			public int32 iFontDescent;
			public uint32 dwFlags;
			public uint32 color;
		}
		[CRepr]
		public struct InkRecoGuide
		{
			public RECT rectWritingBox;
			public RECT rectDrawnBox;
			public int32 cRows;
			public int32 cColumns;
			public int32 midline;
		}
		[CRepr]
		public struct FLICK_POINT
		{
			public int32 _bitfield;
		}
		[CRepr]
		public struct FLICK_DATA
		{
			public int32 _bitfield;
		}
		[CRepr]
		public struct IEC_STROKEINFO
		{
			public NMHDR nmhdr;
			public IInkCursor* Cursor;
			public IInkStrokeDisp* Stroke;
		}
		[CRepr]
		public struct IEC_GESTUREINFO
		{
			public NMHDR nmhdr;
			public IInkCursor* Cursor;
			public IInkStrokes* Strokes;
			public VARIANT Gestures;
		}
		[CRepr]
		public struct IEC_RECOGNITIONRESULTINFO
		{
			public NMHDR nmhdr;
			public IInkRecognitionResult* RecognitionResult;
		}
		[CRepr]
		public struct StylusInfo
		{
			public uint32 tcid;
			public uint32 cid;
			public BOOL bIsInvertedCursor;
		}
		[CRepr]
		public struct GESTURE_DATA
		{
			public int32 gestureId;
			public int32 recoConfidence;
			public int32 strokeCount;
		}
		[CRepr]
		public struct DYNAMIC_RENDERER_CACHED_DATA
		{
			public int32 strokeId;
			public IDynamicRenderer* dynamicRenderer;
		}
		[CRepr]
		public struct RECO_GUIDE
		{
			public int32 xOrigin;
			public int32 yOrigin;
			public int32 cxBox;
			public int32 cyBox;
			public int32 cxBase;
			public int32 cyBase;
			public int32 cHorzBox;
			public int32 cVertBox;
			public int32 cyMid;
		}
		[CRepr]
		public struct RECO_ATTRS
		{
			public uint32 dwRecoCapabilityFlags;
			public char16[32] awcVendorName;
			public char16[64] awcFriendlyName;
			public uint16[64] awLanguageId;
		}
		[CRepr]
		public struct RECO_RANGE
		{
			public uint32 iwcBegin;
			public uint32 cCount;
		}
		[CRepr]
		public struct LINE_SEGMENT
		{
			public POINT PtA;
			public POINT PtB;
		}
		[CRepr]
		public struct LATTICE_METRICS
		{
			public LINE_SEGMENT lsBaseline;
			public int16 iMidlineOffset;
		}
		[CRepr]
		public struct RECO_LATTICE_PROPERTY
		{
			public Guid guidProperty;
			public uint16 cbPropertyValue;
			public uint8* pPropertyValue;
		}
		[CRepr]
		public struct RECO_LATTICE_PROPERTIES
		{
			public uint32 cProperties;
			public RECO_LATTICE_PROPERTY** apProps;
		}
		[CRepr]
		public struct RECO_LATTICE_ELEMENT
		{
			public int32 score;
			public uint16 type;
			public uint8* pData;
			public uint32 ulNextColumn;
			public uint32 ulStrokeNumber;
			public RECO_LATTICE_PROPERTIES epProp;
		}
		[CRepr]
		public struct RECO_LATTICE_COLUMN
		{
			public uint32 key;
			public RECO_LATTICE_PROPERTIES cpProp;
			public uint32 cStrokes;
			public uint32* pStrokes;
			public uint32 cLatticeElements;
			public RECO_LATTICE_ELEMENT* pLatticeElements;
		}
		[CRepr]
		public struct RECO_LATTICE
		{
			public uint32 ulColumnCount;
			public RECO_LATTICE_COLUMN* pLatticeColumns;
			public uint32 ulPropertyCount;
			public Guid* pGuidProperties;
			public uint32 ulBestResultColumnCount;
			public uint32* pulBestResultColumns;
			public uint32* pulBestResultIndexes;
		}
		[CRepr]
		public struct CHARACTER_RANGE
		{
			public char16 wcLow;
			public uint16 cChars;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_InkDisp = .(0x937c1a34, 0x151d, 0x4610, 0x9c, 0xa6, 0xa8, 0xcc, 0x9b, 0xdb, 0x5d, 0x83);
		public const Guid CLSID_InkOverlay = .(0x65d00646, 0xcde3, 0x4a88, 0x91, 0x63, 0x67, 0x69, 0xf0, 0xf1, 0xa9, 0x7d);
		public const Guid CLSID_InkPicture = .(0x04a1e553, 0xfe36, 0x4fde, 0x86, 0x5e, 0x34, 0x41, 0x94, 0xe6, 0x94, 0x24);
		public const Guid CLSID_InkCollector = .(0x43fb1553, 0xad74, 0x4ee8, 0x88, 0xe4, 0x3e, 0x6d, 0xaa, 0xc9, 0x15, 0xdb);
		public const Guid CLSID_InkDrawingAttributes = .(0xd8bf32a2, 0x05a5, 0x44c3, 0xb3, 0xaa, 0x5e, 0x80, 0xac, 0x7d, 0x25, 0x76);
		public const Guid CLSID_InkRectangle = .(0x43b07326, 0xaae0, 0x4b62, 0xa8, 0x3d, 0x5f, 0xd7, 0x68, 0xb7, 0x35, 0x3c);
		public const Guid CLSID_InkRenderer = .(0x9c1cc6e4, 0xd7eb, 0x4eeb, 0x90, 0x91, 0x15, 0xa7, 0xc8, 0x79, 0x1e, 0xd9);
		public const Guid CLSID_InkTransform = .(0xe3d5d93c, 0x1663, 0x4a78, 0xa1, 0xa7, 0x22, 0x37, 0x5d, 0xfe, 0xba, 0xee);
		public const Guid CLSID_InkRecognizers = .(0x9fd4e808, 0xf6e6, 0x4e65, 0x98, 0xd3, 0xaa, 0x39, 0x05, 0x4c, 0x12, 0x55);
		public const Guid CLSID_InkRecognizerContext = .(0xaac46a37, 0x9229, 0x4fc0, 0x8c, 0xce, 0x44, 0x97, 0x56, 0x9b, 0xf4, 0xd1);
		public const Guid CLSID_InkRecognizerGuide = .(0x8770d941, 0xa63a, 0x4671, 0xa3, 0x75, 0x28, 0x55, 0xa1, 0x8e, 0xba, 0x73);
		public const Guid CLSID_InkTablets = .(0x6e4fcb12, 0x510a, 0x4d40, 0x93, 0x04, 0x1d, 0xa1, 0x0a, 0xe9, 0x14, 0x7c);
		public const Guid CLSID_InkWordList = .(0x9de85094, 0xf71f, 0x44f1, 0x84, 0x71, 0x15, 0xa2, 0xfa, 0x76, 0xfc, 0xf3);
		public const Guid CLSID_InkStrokes = .(0x48f491bc, 0x240e, 0x4860, 0xb0, 0x79, 0xa1, 0xe9, 0x4d, 0x3d, 0x2c, 0x86);
		public const Guid CLSID_Ink = .(0x13de4a42, 0x8d21, 0x4c8e, 0xbf, 0x9c, 0x8f, 0x69, 0xcb, 0x06, 0x8f, 0xca);
		public const Guid CLSID_SketchInk = .(0xf0291081, 0xe87c, 0x4e07, 0x97, 0xda, 0xa0, 0xa0, 0x37, 0x61, 0xe5, 0x86);
		public const Guid CLSID_InkDivider = .(0x8854f6a0, 0x4683, 0x4ae7, 0x91, 0x91, 0x75, 0x2f, 0xe6, 0x46, 0x12, 0xc3);
		public const Guid CLSID_HandwrittenTextInsertion = .(0x9f074ee2, 0xe6e9, 0x4d8a, 0xa0, 0x47, 0xeb, 0x5b, 0x5c, 0x3c, 0x55, 0xda);
		public const Guid CLSID_PenInputPanel = .(0xf744e496, 0x1b5a, 0x489e, 0x81, 0xdc, 0xfb, 0xd7, 0xac, 0x62, 0x98, 0xa8);
		public const Guid CLSID_TextInputPanel = .(0xf9b189d7, 0x228b, 0x4f2b, 0x86, 0x50, 0xb9, 0x7f, 0x59, 0xe0, 0x2c, 0x8c);
		public const Guid CLSID_PenInputPanel_Internal = .(0x802b1fb9, 0x056b, 0x4720, 0xb0, 0xcc, 0x80, 0xd2, 0x3b, 0x71, 0x17, 0x1e);
		public const Guid CLSID_InkEdit = .(0xe5ca59f5, 0x57c4, 0x4dd8, 0x9b, 0xd6, 0x1d, 0xee, 0xed, 0xd2, 0x7a, 0xf4);
		public const Guid CLSID_MathInputControl = .(0xc561816c, 0x14d8, 0x4090, 0x83, 0x0c, 0x98, 0xd9, 0x94, 0xb2, 0x1c, 0x7b);
		public const Guid CLSID_RealTimeStylus = .(0xe26b366d, 0xf998, 0x43ce, 0x83, 0x6f, 0xcb, 0x6d, 0x90, 0x44, 0x32, 0xb0);
		public const Guid CLSID_DynamicRenderer = .(0xecd32aea, 0x746f, 0x4dcb, 0xbf, 0x68, 0x08, 0x27, 0x57, 0xfa, 0xff, 0x18);
		public const Guid CLSID_GestureRecognizer = .(0xea30c654, 0xc62c, 0x441f, 0xac, 0x00, 0x95, 0xf9, 0xa1, 0x96, 0x78, 0x2c);
		public const Guid CLSID_StrokeBuilder = .(0xe810cee7, 0x6e51, 0x4cb0, 0xaa, 0x3a, 0x0b, 0x98, 0x5b, 0x70, 0xda, 0xf7);
		public const Guid CLSID_TipAutoCompleteClient = .(0x807c1e6c, 0x1d00, 0x453f, 0xb9, 0x20, 0xb6, 0x1b, 0xb7, 0xcd, 0xd9, 0x97);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IInkRectangle : IDispatch
		{
			public const new Guid IID = .(0x9794ff82, 0x6071, 0x4717, 0x8a, 0x8b, 0x6a, 0xc7, 0xc6, 0x4a, 0x68, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Top(int32* Units) mut
			{
				return VT.get_Top(&this, Units);
			}
			public HRESULT put_Top(int32 Units) mut
			{
				return VT.put_Top(&this, Units);
			}
			public HRESULT get_Left(int32* Units) mut
			{
				return VT.get_Left(&this, Units);
			}
			public HRESULT put_Left(int32 Units) mut
			{
				return VT.put_Left(&this, Units);
			}
			public HRESULT get_Bottom(int32* Units) mut
			{
				return VT.get_Bottom(&this, Units);
			}
			public HRESULT put_Bottom(int32 Units) mut
			{
				return VT.put_Bottom(&this, Units);
			}
			public HRESULT get_Right(int32* Units) mut
			{
				return VT.get_Right(&this, Units);
			}
			public HRESULT put_Right(int32 Units) mut
			{
				return VT.put_Right(&this, Units);
			}
			public HRESULT get_Data(RECT* Rect) mut
			{
				return VT.get_Data(&this, Rect);
			}
			public HRESULT put_Data(RECT Rect) mut
			{
				return VT.put_Data(&this, Rect);
			}
			public HRESULT GetRectangle(int32* Top, int32* Left, int32* Bottom, int32* Right) mut
			{
				return VT.GetRectangle(&this, Top, Left, Bottom, Right);
			}
			public HRESULT SetRectangle(int32 Top, int32 Left, int32 Bottom, int32 Right) mut
			{
				return VT.SetRectangle(&this, Top, Left, Bottom, Right);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkRectangle *self, int32* Units) get_Top;
				public new function HRESULT(IInkRectangle *self, int32 Units) put_Top;
				public new function HRESULT(IInkRectangle *self, int32* Units) get_Left;
				public new function HRESULT(IInkRectangle *self, int32 Units) put_Left;
				public new function HRESULT(IInkRectangle *self, int32* Units) get_Bottom;
				public new function HRESULT(IInkRectangle *self, int32 Units) put_Bottom;
				public new function HRESULT(IInkRectangle *self, int32* Units) get_Right;
				public new function HRESULT(IInkRectangle *self, int32 Units) put_Right;
				public new function HRESULT(IInkRectangle *self, RECT* Rect) get_Data;
				public new function HRESULT(IInkRectangle *self, RECT Rect) put_Data;
				public new function HRESULT(IInkRectangle *self, int32* Top, int32* Left, int32* Bottom, int32* Right) GetRectangle;
				public new function HRESULT(IInkRectangle *self, int32 Top, int32 Left, int32 Bottom, int32 Right) SetRectangle;
			}
		}
		[CRepr]
		public struct IInkExtendedProperty : IDispatch
		{
			public const new Guid IID = .(0xdb489209, 0xb7c3, 0x411d, 0x90, 0xf6, 0x15, 0x48, 0xcf, 0xff, 0x27, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Guid(BSTR* Guid) mut
			{
				return VT.get_Guid(&this, Guid);
			}
			public HRESULT get_Data(VARIANT* Data) mut
			{
				return VT.get_Data(&this, Data);
			}
			public HRESULT put_Data(VARIANT Data) mut
			{
				return VT.put_Data(&this, Data);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkExtendedProperty *self, BSTR* Guid) get_Guid;
				public new function HRESULT(IInkExtendedProperty *self, VARIANT* Data) get_Data;
				public new function HRESULT(IInkExtendedProperty *self, VARIANT Data) put_Data;
			}
		}
		[CRepr]
		public struct IInkExtendedProperties : IDispatch
		{
			public const new Guid IID = .(0x89f2a8be, 0x95a9, 0x4530, 0x8b, 0x8f, 0x88, 0xe9, 0x71, 0xe3, 0xe2, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get__NewEnum(IUnknown** _NewEnum) mut
			{
				return VT.get__NewEnum(&this, _NewEnum);
			}
			public HRESULT Item(VARIANT Identifier, IInkExtendedProperty** Item) mut
			{
				return VT.Item(&this, Identifier, Item);
			}
			public HRESULT Add(BSTR Guid, VARIANT Data, IInkExtendedProperty** InkExtendedProperty) mut
			{
				return VT.Add(&this, Guid, Data, InkExtendedProperty);
			}
			public HRESULT Remove(VARIANT Identifier) mut
			{
				return VT.Remove(&this, Identifier);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT DoesPropertyExist(BSTR Guid, int16* DoesPropertyExist) mut
			{
				return VT.DoesPropertyExist(&this, Guid, DoesPropertyExist);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkExtendedProperties *self, int32* Count) get_Count;
				public new function HRESULT(IInkExtendedProperties *self, IUnknown** _NewEnum) get__NewEnum;
				public new function HRESULT(IInkExtendedProperties *self, VARIANT Identifier, IInkExtendedProperty** Item) Item;
				public new function HRESULT(IInkExtendedProperties *self, BSTR Guid, VARIANT Data, IInkExtendedProperty** InkExtendedProperty) Add;
				public new function HRESULT(IInkExtendedProperties *self, VARIANT Identifier) Remove;
				public new function HRESULT(IInkExtendedProperties *self) Clear;
				public new function HRESULT(IInkExtendedProperties *self, BSTR Guid, int16* DoesPropertyExist) DoesPropertyExist;
			}
		}
		[CRepr]
		public struct IInkDrawingAttributes : IDispatch
		{
			public const new Guid IID = .(0xbf519b75, 0x0a15, 0x4623, 0xad, 0xc9, 0xc0, 0x0d, 0x43, 0x6a, 0x80, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Color(int32* CurrentColor) mut
			{
				return VT.get_Color(&this, CurrentColor);
			}
			public HRESULT put_Color(int32 NewColor) mut
			{
				return VT.put_Color(&this, NewColor);
			}
			public HRESULT get_Width(float* CurrentWidth) mut
			{
				return VT.get_Width(&this, CurrentWidth);
			}
			public HRESULT put_Width(float NewWidth) mut
			{
				return VT.put_Width(&this, NewWidth);
			}
			public HRESULT get_Height(float* CurrentHeight) mut
			{
				return VT.get_Height(&this, CurrentHeight);
			}
			public HRESULT put_Height(float NewHeight) mut
			{
				return VT.put_Height(&this, NewHeight);
			}
			public HRESULT get_FitToCurve(int16* Flag) mut
			{
				return VT.get_FitToCurve(&this, Flag);
			}
			public HRESULT put_FitToCurve(int16 Flag) mut
			{
				return VT.put_FitToCurve(&this, Flag);
			}
			public HRESULT get_IgnorePressure(int16* Flag) mut
			{
				return VT.get_IgnorePressure(&this, Flag);
			}
			public HRESULT put_IgnorePressure(int16 Flag) mut
			{
				return VT.put_IgnorePressure(&this, Flag);
			}
			public HRESULT get_AntiAliased(int16* Flag) mut
			{
				return VT.get_AntiAliased(&this, Flag);
			}
			public HRESULT put_AntiAliased(int16 Flag) mut
			{
				return VT.put_AntiAliased(&this, Flag);
			}
			public HRESULT get_Transparency(int32* CurrentTransparency) mut
			{
				return VT.get_Transparency(&this, CurrentTransparency);
			}
			public HRESULT put_Transparency(int32 NewTransparency) mut
			{
				return VT.put_Transparency(&this, NewTransparency);
			}
			public HRESULT get_RasterOperation(InkRasterOperation* CurrentRasterOperation) mut
			{
				return VT.get_RasterOperation(&this, CurrentRasterOperation);
			}
			public HRESULT put_RasterOperation(InkRasterOperation NewRasterOperation) mut
			{
				return VT.put_RasterOperation(&this, NewRasterOperation);
			}
			public HRESULT get_PenTip(InkPenTip* CurrentPenTip) mut
			{
				return VT.get_PenTip(&this, CurrentPenTip);
			}
			public HRESULT put_PenTip(InkPenTip NewPenTip) mut
			{
				return VT.put_PenTip(&this, NewPenTip);
			}
			public HRESULT get_ExtendedProperties(IInkExtendedProperties** Properties) mut
			{
				return VT.get_ExtendedProperties(&this, Properties);
			}
			public HRESULT Clone(IInkDrawingAttributes** DrawingAttributes) mut
			{
				return VT.Clone(&this, DrawingAttributes);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkDrawingAttributes *self, int32* CurrentColor) get_Color;
				public new function HRESULT(IInkDrawingAttributes *self, int32 NewColor) put_Color;
				public new function HRESULT(IInkDrawingAttributes *self, float* CurrentWidth) get_Width;
				public new function HRESULT(IInkDrawingAttributes *self, float NewWidth) put_Width;
				public new function HRESULT(IInkDrawingAttributes *self, float* CurrentHeight) get_Height;
				public new function HRESULT(IInkDrawingAttributes *self, float NewHeight) put_Height;
				public new function HRESULT(IInkDrawingAttributes *self, int16* Flag) get_FitToCurve;
				public new function HRESULT(IInkDrawingAttributes *self, int16 Flag) put_FitToCurve;
				public new function HRESULT(IInkDrawingAttributes *self, int16* Flag) get_IgnorePressure;
				public new function HRESULT(IInkDrawingAttributes *self, int16 Flag) put_IgnorePressure;
				public new function HRESULT(IInkDrawingAttributes *self, int16* Flag) get_AntiAliased;
				public new function HRESULT(IInkDrawingAttributes *self, int16 Flag) put_AntiAliased;
				public new function HRESULT(IInkDrawingAttributes *self, int32* CurrentTransparency) get_Transparency;
				public new function HRESULT(IInkDrawingAttributes *self, int32 NewTransparency) put_Transparency;
				public new function HRESULT(IInkDrawingAttributes *self, InkRasterOperation* CurrentRasterOperation) get_RasterOperation;
				public new function HRESULT(IInkDrawingAttributes *self, InkRasterOperation NewRasterOperation) put_RasterOperation;
				public new function HRESULT(IInkDrawingAttributes *self, InkPenTip* CurrentPenTip) get_PenTip;
				public new function HRESULT(IInkDrawingAttributes *self, InkPenTip NewPenTip) put_PenTip;
				public new function HRESULT(IInkDrawingAttributes *self, IInkExtendedProperties** Properties) get_ExtendedProperties;
				public new function HRESULT(IInkDrawingAttributes *self, IInkDrawingAttributes** DrawingAttributes) Clone;
			}
		}
		[CRepr]
		public struct IInkTransform : IDispatch
		{
			public const new Guid IID = .(0x615f1d43, 0x8703, 0x4565, 0x88, 0xe2, 0x82, 0x01, 0xd2, 0xec, 0xd7, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Translate(float HorizontalComponent, float VerticalComponent) mut
			{
				return VT.Translate(&this, HorizontalComponent, VerticalComponent);
			}
			public HRESULT Rotate(float Degrees, float x, float y) mut
			{
				return VT.Rotate(&this, Degrees, x, y);
			}
			public HRESULT Reflect(int16 Horizontally, int16 Vertically) mut
			{
				return VT.Reflect(&this, Horizontally, Vertically);
			}
			public HRESULT Shear(float HorizontalComponent, float VerticalComponent) mut
			{
				return VT.Shear(&this, HorizontalComponent, VerticalComponent);
			}
			public HRESULT ScaleTransform(float HorizontalMultiplier, float VerticalMultiplier) mut
			{
				return VT.ScaleTransform(&this, HorizontalMultiplier, VerticalMultiplier);
			}
			public HRESULT GetTransform(float* eM11, float* eM12, float* eM21, float* eM22, float* eDx, float* eDy) mut
			{
				return VT.GetTransform(&this, eM11, eM12, eM21, eM22, eDx, eDy);
			}
			public HRESULT SetTransform(float eM11, float eM12, float eM21, float eM22, float eDx, float eDy) mut
			{
				return VT.SetTransform(&this, eM11, eM12, eM21, eM22, eDx, eDy);
			}
			public HRESULT get_eM11(float* Value) mut
			{
				return VT.get_eM11(&this, Value);
			}
			public HRESULT put_eM11(float Value) mut
			{
				return VT.put_eM11(&this, Value);
			}
			public HRESULT get_eM12(float* Value) mut
			{
				return VT.get_eM12(&this, Value);
			}
			public HRESULT put_eM12(float Value) mut
			{
				return VT.put_eM12(&this, Value);
			}
			public HRESULT get_eM21(float* Value) mut
			{
				return VT.get_eM21(&this, Value);
			}
			public HRESULT put_eM21(float Value) mut
			{
				return VT.put_eM21(&this, Value);
			}
			public HRESULT get_eM22(float* Value) mut
			{
				return VT.get_eM22(&this, Value);
			}
			public HRESULT put_eM22(float Value) mut
			{
				return VT.put_eM22(&this, Value);
			}
			public HRESULT get_eDx(float* Value) mut
			{
				return VT.get_eDx(&this, Value);
			}
			public HRESULT put_eDx(float Value) mut
			{
				return VT.put_eDx(&this, Value);
			}
			public HRESULT get_eDy(float* Value) mut
			{
				return VT.get_eDy(&this, Value);
			}
			public HRESULT put_eDy(float Value) mut
			{
				return VT.put_eDy(&this, Value);
			}
			public HRESULT get_Data(XFORM* XForm) mut
			{
				return VT.get_Data(&this, XForm);
			}
			public HRESULT put_Data(XFORM XForm) mut
			{
				return VT.put_Data(&this, XForm);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkTransform *self) Reset;
				public new function HRESULT(IInkTransform *self, float HorizontalComponent, float VerticalComponent) Translate;
				public new function HRESULT(IInkTransform *self, float Degrees, float x, float y) Rotate;
				public new function HRESULT(IInkTransform *self, int16 Horizontally, int16 Vertically) Reflect;
				public new function HRESULT(IInkTransform *self, float HorizontalComponent, float VerticalComponent) Shear;
				public new function HRESULT(IInkTransform *self, float HorizontalMultiplier, float VerticalMultiplier) ScaleTransform;
				public new function HRESULT(IInkTransform *self, float* eM11, float* eM12, float* eM21, float* eM22, float* eDx, float* eDy) GetTransform;
				public new function HRESULT(IInkTransform *self, float eM11, float eM12, float eM21, float eM22, float eDx, float eDy) SetTransform;
				public new function HRESULT(IInkTransform *self, float* Value) get_eM11;
				public new function HRESULT(IInkTransform *self, float Value) put_eM11;
				public new function HRESULT(IInkTransform *self, float* Value) get_eM12;
				public new function HRESULT(IInkTransform *self, float Value) put_eM12;
				public new function HRESULT(IInkTransform *self, float* Value) get_eM21;
				public new function HRESULT(IInkTransform *self, float Value) put_eM21;
				public new function HRESULT(IInkTransform *self, float* Value) get_eM22;
				public new function HRESULT(IInkTransform *self, float Value) put_eM22;
				public new function HRESULT(IInkTransform *self, float* Value) get_eDx;
				public new function HRESULT(IInkTransform *self, float Value) put_eDx;
				public new function HRESULT(IInkTransform *self, float* Value) get_eDy;
				public new function HRESULT(IInkTransform *self, float Value) put_eDy;
				public new function HRESULT(IInkTransform *self, XFORM* XForm) get_Data;
				public new function HRESULT(IInkTransform *self, XFORM XForm) put_Data;
			}
		}
		[CRepr]
		public struct IInkGesture : IDispatch
		{
			public const new Guid IID = .(0x3bdc0a97, 0x04e5, 0x4e26, 0xb8, 0x13, 0x18, 0xf0, 0x52, 0xd4, 0x1d, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Confidence(InkRecognitionConfidence* Confidence) mut
			{
				return VT.get_Confidence(&this, Confidence);
			}
			public HRESULT get_Id(InkApplicationGesture* Id) mut
			{
				return VT.get_Id(&this, Id);
			}
			public HRESULT GetHotPoint(int32* X, int32* Y) mut
			{
				return VT.GetHotPoint(&this, X, Y);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkGesture *self, InkRecognitionConfidence* Confidence) get_Confidence;
				public new function HRESULT(IInkGesture *self, InkApplicationGesture* Id) get_Id;
				public new function HRESULT(IInkGesture *self, int32* X, int32* Y) GetHotPoint;
			}
		}
		[CRepr]
		public struct IInkCursor : IDispatch
		{
			public const new Guid IID = .(0xad30c630, 0x40c5, 0x4350, 0x84, 0x05, 0x9c, 0x71, 0x01, 0x2f, 0xc5, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* Name) mut
			{
				return VT.get_Name(&this, Name);
			}
			public HRESULT get_Id(int32* Id) mut
			{
				return VT.get_Id(&this, Id);
			}
			public HRESULT get_Inverted(int16* Status) mut
			{
				return VT.get_Inverted(&this, Status);
			}
			public HRESULT get_DrawingAttributes(IInkDrawingAttributes** Attributes) mut
			{
				return VT.get_DrawingAttributes(&this, Attributes);
			}
			public HRESULT putref_DrawingAttributes(IInkDrawingAttributes* Attributes) mut
			{
				return VT.putref_DrawingAttributes(&this, Attributes);
			}
			public HRESULT get_Tablet(IInkTablet** Tablet) mut
			{
				return VT.get_Tablet(&this, Tablet);
			}
			public HRESULT get_Buttons(IInkCursorButtons** Buttons) mut
			{
				return VT.get_Buttons(&this, Buttons);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkCursor *self, BSTR* Name) get_Name;
				public new function HRESULT(IInkCursor *self, int32* Id) get_Id;
				public new function HRESULT(IInkCursor *self, int16* Status) get_Inverted;
				public new function HRESULT(IInkCursor *self, IInkDrawingAttributes** Attributes) get_DrawingAttributes;
				public new function HRESULT(IInkCursor *self, IInkDrawingAttributes* Attributes) putref_DrawingAttributes;
				public new function HRESULT(IInkCursor *self, IInkTablet** Tablet) get_Tablet;
				public new function HRESULT(IInkCursor *self, IInkCursorButtons** Buttons) get_Buttons;
			}
		}
		[CRepr]
		public struct IInkCursors : IDispatch
		{
			public const new Guid IID = .(0xa248c1ac, 0xc698, 0x4e06, 0x9e, 0x5c, 0xd5, 0x7f, 0x77, 0xc7, 0xe6, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get__NewEnum(IUnknown** _NewEnum) mut
			{
				return VT.get__NewEnum(&this, _NewEnum);
			}
			public HRESULT Item(int32 Index, IInkCursor** Cursor) mut
			{
				return VT.Item(&this, Index, Cursor);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkCursors *self, int32* Count) get_Count;
				public new function HRESULT(IInkCursors *self, IUnknown** _NewEnum) get__NewEnum;
				public new function HRESULT(IInkCursors *self, int32 Index, IInkCursor** Cursor) Item;
			}
		}
		[CRepr]
		public struct IInkCursorButton : IDispatch
		{
			public const new Guid IID = .(0x85ef9417, 0x1d59, 0x49b2, 0xa1, 0x3c, 0x70, 0x2c, 0x85, 0x43, 0x08, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* Name) mut
			{
				return VT.get_Name(&this, Name);
			}
			public HRESULT get_Id(BSTR* Id) mut
			{
				return VT.get_Id(&this, Id);
			}
			public HRESULT get_State(InkCursorButtonState* CurrentState) mut
			{
				return VT.get_State(&this, CurrentState);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkCursorButton *self, BSTR* Name) get_Name;
				public new function HRESULT(IInkCursorButton *self, BSTR* Id) get_Id;
				public new function HRESULT(IInkCursorButton *self, InkCursorButtonState* CurrentState) get_State;
			}
		}
		[CRepr]
		public struct IInkCursorButtons : IDispatch
		{
			public const new Guid IID = .(0x3671cc40, 0xb624, 0x4671, 0x9f, 0xa0, 0xdb, 0x11, 0x9d, 0x95, 0x2d, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get__NewEnum(IUnknown** _NewEnum) mut
			{
				return VT.get__NewEnum(&this, _NewEnum);
			}
			public HRESULT Item(VARIANT Identifier, IInkCursorButton** Button) mut
			{
				return VT.Item(&this, Identifier, Button);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkCursorButtons *self, int32* Count) get_Count;
				public new function HRESULT(IInkCursorButtons *self, IUnknown** _NewEnum) get__NewEnum;
				public new function HRESULT(IInkCursorButtons *self, VARIANT Identifier, IInkCursorButton** Button) Item;
			}
		}
		[CRepr]
		public struct IInkTablet : IDispatch
		{
			public const new Guid IID = .(0x2de25eaa, 0x6ef8, 0x42d5, 0xae, 0xe9, 0x18, 0x5b, 0xc8, 0x1b, 0x91, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* Name) mut
			{
				return VT.get_Name(&this, Name);
			}
			public HRESULT get_PlugAndPlayId(BSTR* Id) mut
			{
				return VT.get_PlugAndPlayId(&this, Id);
			}
			public HRESULT get_MaximumInputRectangle(IInkRectangle** Rectangle) mut
			{
				return VT.get_MaximumInputRectangle(&this, Rectangle);
			}
			public HRESULT get_HardwareCapabilities(TabletHardwareCapabilities* Capabilities) mut
			{
				return VT.get_HardwareCapabilities(&this, Capabilities);
			}
			public HRESULT IsPacketPropertySupported(BSTR packetPropertyName, int16* Supported) mut
			{
				return VT.IsPacketPropertySupported(&this, packetPropertyName, Supported);
			}
			public HRESULT GetPropertyMetrics(BSTR propertyName, int32* Minimum, int32* Maximum, TabletPropertyMetricUnit* Units, float* Resolution) mut
			{
				return VT.GetPropertyMetrics(&this, propertyName, Minimum, Maximum, Units, Resolution);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkTablet *self, BSTR* Name) get_Name;
				public new function HRESULT(IInkTablet *self, BSTR* Id) get_PlugAndPlayId;
				public new function HRESULT(IInkTablet *self, IInkRectangle** Rectangle) get_MaximumInputRectangle;
				public new function HRESULT(IInkTablet *self, TabletHardwareCapabilities* Capabilities) get_HardwareCapabilities;
				public new function HRESULT(IInkTablet *self, BSTR packetPropertyName, int16* Supported) IsPacketPropertySupported;
				public new function HRESULT(IInkTablet *self, BSTR propertyName, int32* Minimum, int32* Maximum, TabletPropertyMetricUnit* Units, float* Resolution) GetPropertyMetrics;
			}
		}
		[CRepr]
		public struct IInkTablet2 : IDispatch
		{
			public const new Guid IID = .(0x90c91ad2, 0xfa36, 0x49d6, 0x95, 0x16, 0xce, 0x8d, 0x57, 0x0f, 0x6f, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DeviceKind(TabletDeviceKind* Kind) mut
			{
				return VT.get_DeviceKind(&this, Kind);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkTablet2 *self, TabletDeviceKind* Kind) get_DeviceKind;
			}
		}
		[CRepr]
		public struct IInkTablet3 : IDispatch
		{
			public const new Guid IID = .(0x7e313997, 0x1327, 0x41dd, 0x8c, 0xa9, 0x79, 0xf2, 0x4b, 0xe1, 0x72, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IsMultiTouch(int16* pIsMultiTouch) mut
			{
				return VT.get_IsMultiTouch(&this, pIsMultiTouch);
			}
			public HRESULT get_MaximumCursors(uint32* pMaximumCursors) mut
			{
				return VT.get_MaximumCursors(&this, pMaximumCursors);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkTablet3 *self, int16* pIsMultiTouch) get_IsMultiTouch;
				public new function HRESULT(IInkTablet3 *self, uint32* pMaximumCursors) get_MaximumCursors;
			}
		}
		[CRepr]
		public struct IInkTablets : IDispatch
		{
			public const new Guid IID = .(0x112086d9, 0x7779, 0x4535, 0xa6, 0x99, 0x86, 0x2b, 0x43, 0xac, 0x18, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get__NewEnum(IUnknown** _NewEnum) mut
			{
				return VT.get__NewEnum(&this, _NewEnum);
			}
			public HRESULT get_DefaultTablet(IInkTablet** DefaultTablet) mut
			{
				return VT.get_DefaultTablet(&this, DefaultTablet);
			}
			public HRESULT Item(int32 Index, IInkTablet** Tablet) mut
			{
				return VT.Item(&this, Index, Tablet);
			}
			public HRESULT IsPacketPropertySupported(BSTR packetPropertyName, int16* Supported) mut
			{
				return VT.IsPacketPropertySupported(&this, packetPropertyName, Supported);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkTablets *self, int32* Count) get_Count;
				public new function HRESULT(IInkTablets *self, IUnknown** _NewEnum) get__NewEnum;
				public new function HRESULT(IInkTablets *self, IInkTablet** DefaultTablet) get_DefaultTablet;
				public new function HRESULT(IInkTablets *self, int32 Index, IInkTablet** Tablet) Item;
				public new function HRESULT(IInkTablets *self, BSTR packetPropertyName, int16* Supported) IsPacketPropertySupported;
			}
		}
		[CRepr]
		public struct IInkStrokeDisp : IDispatch
		{
			public const new Guid IID = .(0x43242fea, 0x91d1, 0x4a72, 0x96, 0x3e, 0xfb, 0xb9, 0x18, 0x29, 0xcf, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ID(int32* ID) mut
			{
				return VT.get_ID(&this, ID);
			}
			public HRESULT get_BezierPoints(VARIANT* Points) mut
			{
				return VT.get_BezierPoints(&this, Points);
			}
			public HRESULT get_DrawingAttributes(IInkDrawingAttributes** DrawAttrs) mut
			{
				return VT.get_DrawingAttributes(&this, DrawAttrs);
			}
			public HRESULT putref_DrawingAttributes(IInkDrawingAttributes* DrawAttrs) mut
			{
				return VT.putref_DrawingAttributes(&this, DrawAttrs);
			}
			public HRESULT get_Ink(IInkDisp** Ink) mut
			{
				return VT.get_Ink(&this, Ink);
			}
			public HRESULT get_ExtendedProperties(IInkExtendedProperties** Properties) mut
			{
				return VT.get_ExtendedProperties(&this, Properties);
			}
			public HRESULT get_PolylineCusps(VARIANT* Cusps) mut
			{
				return VT.get_PolylineCusps(&this, Cusps);
			}
			public HRESULT get_BezierCusps(VARIANT* Cusps) mut
			{
				return VT.get_BezierCusps(&this, Cusps);
			}
			public HRESULT get_SelfIntersections(VARIANT* Intersections) mut
			{
				return VT.get_SelfIntersections(&this, Intersections);
			}
			public HRESULT get_PacketCount(int32* plCount) mut
			{
				return VT.get_PacketCount(&this, plCount);
			}
			public HRESULT get_PacketSize(int32* plSize) mut
			{
				return VT.get_PacketSize(&this, plSize);
			}
			public HRESULT get_PacketDescription(VARIANT* PacketDescription) mut
			{
				return VT.get_PacketDescription(&this, PacketDescription);
			}
			public HRESULT get_Deleted(int16* Deleted) mut
			{
				return VT.get_Deleted(&this, Deleted);
			}
			public HRESULT GetBoundingBox(InkBoundingBoxMode BoundingBoxMode, IInkRectangle** Rectangle) mut
			{
				return VT.GetBoundingBox(&this, BoundingBoxMode, Rectangle);
			}
			public HRESULT FindIntersections(IInkStrokes* Strokes, VARIANT* Intersections) mut
			{
				return VT.FindIntersections(&this, Strokes, Intersections);
			}
			public HRESULT GetRectangleIntersections(IInkRectangle* Rectangle, VARIANT* Intersections) mut
			{
				return VT.GetRectangleIntersections(&this, Rectangle, Intersections);
			}
			public HRESULT Clip(IInkRectangle* Rectangle) mut
			{
				return VT.Clip(&this, Rectangle);
			}
			public HRESULT HitTestCircle(int32 X, int32 Y, float Radius, int16* Intersects) mut
			{
				return VT.HitTestCircle(&this, X, Y, Radius, Intersects);
			}
			public HRESULT NearestPoint(int32 X, int32 Y, float* Distance, float* Point) mut
			{
				return VT.NearestPoint(&this, X, Y, Distance, Point);
			}
			public HRESULT Split(float SplitAt, IInkStrokeDisp** NewStroke) mut
			{
				return VT.Split(&this, SplitAt, NewStroke);
			}
			public HRESULT GetPacketDescriptionPropertyMetrics(BSTR PropertyName, int32* Minimum, int32* Maximum, TabletPropertyMetricUnit* Units, float* Resolution) mut
			{
				return VT.GetPacketDescriptionPropertyMetrics(&this, PropertyName, Minimum, Maximum, Units, Resolution);
			}
			public HRESULT GetPoints(int32 Index, int32 Count, VARIANT* Points) mut
			{
				return VT.GetPoints(&this, Index, Count, Points);
			}
			public HRESULT SetPoints(VARIANT Points, int32 Index, int32 Count, int32* NumberOfPointsSet) mut
			{
				return VT.SetPoints(&this, Points, Index, Count, NumberOfPointsSet);
			}
			public HRESULT GetPacketData(int32 Index, int32 Count, VARIANT* PacketData) mut
			{
				return VT.GetPacketData(&this, Index, Count, PacketData);
			}
			public HRESULT GetPacketValuesByProperty(BSTR PropertyName, int32 Index, int32 Count, VARIANT* PacketValues) mut
			{
				return VT.GetPacketValuesByProperty(&this, PropertyName, Index, Count, PacketValues);
			}
			public HRESULT SetPacketValuesByProperty(BSTR bstrPropertyName, VARIANT PacketValues, int32 Index, int32 Count, int32* NumberOfPacketsSet) mut
			{
				return VT.SetPacketValuesByProperty(&this, bstrPropertyName, PacketValues, Index, Count, NumberOfPacketsSet);
			}
			public HRESULT GetFlattenedBezierPoints(int32 FittingError, VARIANT* FlattenedBezierPoints) mut
			{
				return VT.GetFlattenedBezierPoints(&this, FittingError, FlattenedBezierPoints);
			}
			public HRESULT Transform(IInkTransform* Transform, int16 ApplyOnPenWidth) mut
			{
				return VT.Transform(&this, Transform, ApplyOnPenWidth);
			}
			public HRESULT ScaleToRectangle(IInkRectangle* Rectangle) mut
			{
				return VT.ScaleToRectangle(&this, Rectangle);
			}
			public HRESULT Move(float HorizontalComponent, float VerticalComponent) mut
			{
				return VT.Move(&this, HorizontalComponent, VerticalComponent);
			}
			public HRESULT Rotate(float Degrees, float x, float y) mut
			{
				return VT.Rotate(&this, Degrees, x, y);
			}
			public HRESULT Shear(float HorizontalMultiplier, float VerticalMultiplier) mut
			{
				return VT.Shear(&this, HorizontalMultiplier, VerticalMultiplier);
			}
			public HRESULT ScaleTransform(float HorizontalMultiplier, float VerticalMultiplier) mut
			{
				return VT.ScaleTransform(&this, HorizontalMultiplier, VerticalMultiplier);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkStrokeDisp *self, int32* ID) get_ID;
				public new function HRESULT(IInkStrokeDisp *self, VARIANT* Points) get_BezierPoints;
				public new function HRESULT(IInkStrokeDisp *self, IInkDrawingAttributes** DrawAttrs) get_DrawingAttributes;
				public new function HRESULT(IInkStrokeDisp *self, IInkDrawingAttributes* DrawAttrs) putref_DrawingAttributes;
				public new function HRESULT(IInkStrokeDisp *self, IInkDisp** Ink) get_Ink;
				public new function HRESULT(IInkStrokeDisp *self, IInkExtendedProperties** Properties) get_ExtendedProperties;
				public new function HRESULT(IInkStrokeDisp *self, VARIANT* Cusps) get_PolylineCusps;
				public new function HRESULT(IInkStrokeDisp *self, VARIANT* Cusps) get_BezierCusps;
				public new function HRESULT(IInkStrokeDisp *self, VARIANT* Intersections) get_SelfIntersections;
				public new function HRESULT(IInkStrokeDisp *self, int32* plCount) get_PacketCount;
				public new function HRESULT(IInkStrokeDisp *self, int32* plSize) get_PacketSize;
				public new function HRESULT(IInkStrokeDisp *self, VARIANT* PacketDescription) get_PacketDescription;
				public new function HRESULT(IInkStrokeDisp *self, int16* Deleted) get_Deleted;
				public new function HRESULT(IInkStrokeDisp *self, InkBoundingBoxMode BoundingBoxMode, IInkRectangle** Rectangle) GetBoundingBox;
				public new function HRESULT(IInkStrokeDisp *self, IInkStrokes* Strokes, VARIANT* Intersections) FindIntersections;
				public new function HRESULT(IInkStrokeDisp *self, IInkRectangle* Rectangle, VARIANT* Intersections) GetRectangleIntersections;
				public new function HRESULT(IInkStrokeDisp *self, IInkRectangle* Rectangle) Clip;
				public new function HRESULT(IInkStrokeDisp *self, int32 X, int32 Y, float Radius, int16* Intersects) HitTestCircle;
				public new function HRESULT(IInkStrokeDisp *self, int32 X, int32 Y, float* Distance, float* Point) NearestPoint;
				public new function HRESULT(IInkStrokeDisp *self, float SplitAt, IInkStrokeDisp** NewStroke) Split;
				public new function HRESULT(IInkStrokeDisp *self, BSTR PropertyName, int32* Minimum, int32* Maximum, TabletPropertyMetricUnit* Units, float* Resolution) GetPacketDescriptionPropertyMetrics;
				public new function HRESULT(IInkStrokeDisp *self, int32 Index, int32 Count, VARIANT* Points) GetPoints;
				public new function HRESULT(IInkStrokeDisp *self, VARIANT Points, int32 Index, int32 Count, int32* NumberOfPointsSet) SetPoints;
				public new function HRESULT(IInkStrokeDisp *self, int32 Index, int32 Count, VARIANT* PacketData) GetPacketData;
				public new function HRESULT(IInkStrokeDisp *self, BSTR PropertyName, int32 Index, int32 Count, VARIANT* PacketValues) GetPacketValuesByProperty;
				public new function HRESULT(IInkStrokeDisp *self, BSTR bstrPropertyName, VARIANT PacketValues, int32 Index, int32 Count, int32* NumberOfPacketsSet) SetPacketValuesByProperty;
				public new function HRESULT(IInkStrokeDisp *self, int32 FittingError, VARIANT* FlattenedBezierPoints) GetFlattenedBezierPoints;
				public new function HRESULT(IInkStrokeDisp *self, IInkTransform* Transform, int16 ApplyOnPenWidth) Transform;
				public new function HRESULT(IInkStrokeDisp *self, IInkRectangle* Rectangle) ScaleToRectangle;
				public new function HRESULT(IInkStrokeDisp *self, float HorizontalComponent, float VerticalComponent) Move;
				public new function HRESULT(IInkStrokeDisp *self, float Degrees, float x, float y) Rotate;
				public new function HRESULT(IInkStrokeDisp *self, float HorizontalMultiplier, float VerticalMultiplier) Shear;
				public new function HRESULT(IInkStrokeDisp *self, float HorizontalMultiplier, float VerticalMultiplier) ScaleTransform;
			}
		}
		[CRepr]
		public struct IInkStrokes : IDispatch
		{
			public const new Guid IID = .(0xf1f4c9d8, 0x590a, 0x4963, 0xb3, 0xae, 0x19, 0x35, 0x67, 0x1b, 0xb6, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get__NewEnum(IUnknown** _NewEnum) mut
			{
				return VT.get__NewEnum(&this, _NewEnum);
			}
			public HRESULT get_Ink(IInkDisp** Ink) mut
			{
				return VT.get_Ink(&this, Ink);
			}
			public HRESULT get_RecognitionResult(IInkRecognitionResult** RecognitionResult) mut
			{
				return VT.get_RecognitionResult(&this, RecognitionResult);
			}
			public HRESULT ComToString(BSTR* ToString) mut
			{
				return VT.ComToString(&this, ToString);
			}
			public HRESULT Item(int32 Index, IInkStrokeDisp** Stroke) mut
			{
				return VT.Item(&this, Index, Stroke);
			}
			public HRESULT Add(IInkStrokeDisp* InkStroke) mut
			{
				return VT.Add(&this, InkStroke);
			}
			public HRESULT AddStrokes(IInkStrokes* InkStrokes) mut
			{
				return VT.AddStrokes(&this, InkStrokes);
			}
			public HRESULT Remove(IInkStrokeDisp* InkStroke) mut
			{
				return VT.Remove(&this, InkStroke);
			}
			public HRESULT RemoveStrokes(IInkStrokes* InkStrokes) mut
			{
				return VT.RemoveStrokes(&this, InkStrokes);
			}
			public HRESULT ModifyDrawingAttributes(IInkDrawingAttributes* DrawAttrs) mut
			{
				return VT.ModifyDrawingAttributes(&this, DrawAttrs);
			}
			public HRESULT GetBoundingBox(InkBoundingBoxMode BoundingBoxMode, IInkRectangle** BoundingBox) mut
			{
				return VT.GetBoundingBox(&this, BoundingBoxMode, BoundingBox);
			}
			public HRESULT Transform(IInkTransform* Transform, int16 ApplyOnPenWidth) mut
			{
				return VT.Transform(&this, Transform, ApplyOnPenWidth);
			}
			public HRESULT ScaleToRectangle(IInkRectangle* Rectangle) mut
			{
				return VT.ScaleToRectangle(&this, Rectangle);
			}
			public HRESULT Move(float HorizontalComponent, float VerticalComponent) mut
			{
				return VT.Move(&this, HorizontalComponent, VerticalComponent);
			}
			public HRESULT Rotate(float Degrees, float x, float y) mut
			{
				return VT.Rotate(&this, Degrees, x, y);
			}
			public HRESULT Shear(float HorizontalMultiplier, float VerticalMultiplier) mut
			{
				return VT.Shear(&this, HorizontalMultiplier, VerticalMultiplier);
			}
			public HRESULT ScaleTransform(float HorizontalMultiplier, float VerticalMultiplier) mut
			{
				return VT.ScaleTransform(&this, HorizontalMultiplier, VerticalMultiplier);
			}
			public HRESULT Clip(IInkRectangle* Rectangle) mut
			{
				return VT.Clip(&this, Rectangle);
			}
			public HRESULT RemoveRecognitionResult() mut
			{
				return VT.RemoveRecognitionResult(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkStrokes *self, int32* Count) get_Count;
				public new function HRESULT(IInkStrokes *self, IUnknown** _NewEnum) get__NewEnum;
				public new function HRESULT(IInkStrokes *self, IInkDisp** Ink) get_Ink;
				public new function HRESULT(IInkStrokes *self, IInkRecognitionResult** RecognitionResult) get_RecognitionResult;
				public new function HRESULT(IInkStrokes *self, BSTR* ToString) ComToString;
				public new function HRESULT(IInkStrokes *self, int32 Index, IInkStrokeDisp** Stroke) Item;
				public new function HRESULT(IInkStrokes *self, IInkStrokeDisp* InkStroke) Add;
				public new function HRESULT(IInkStrokes *self, IInkStrokes* InkStrokes) AddStrokes;
				public new function HRESULT(IInkStrokes *self, IInkStrokeDisp* InkStroke) Remove;
				public new function HRESULT(IInkStrokes *self, IInkStrokes* InkStrokes) RemoveStrokes;
				public new function HRESULT(IInkStrokes *self, IInkDrawingAttributes* DrawAttrs) ModifyDrawingAttributes;
				public new function HRESULT(IInkStrokes *self, InkBoundingBoxMode BoundingBoxMode, IInkRectangle** BoundingBox) GetBoundingBox;
				public new function HRESULT(IInkStrokes *self, IInkTransform* Transform, int16 ApplyOnPenWidth) Transform;
				public new function HRESULT(IInkStrokes *self, IInkRectangle* Rectangle) ScaleToRectangle;
				public new function HRESULT(IInkStrokes *self, float HorizontalComponent, float VerticalComponent) Move;
				public new function HRESULT(IInkStrokes *self, float Degrees, float x, float y) Rotate;
				public new function HRESULT(IInkStrokes *self, float HorizontalMultiplier, float VerticalMultiplier) Shear;
				public new function HRESULT(IInkStrokes *self, float HorizontalMultiplier, float VerticalMultiplier) ScaleTransform;
				public new function HRESULT(IInkStrokes *self, IInkRectangle* Rectangle) Clip;
				public new function HRESULT(IInkStrokes *self) RemoveRecognitionResult;
			}
		}
		[CRepr]
		public struct IInkCustomStrokes : IDispatch
		{
			public const new Guid IID = .(0x7e23a88f, 0xc30e, 0x420f, 0x9b, 0xdb, 0x28, 0x90, 0x25, 0x43, 0xf0, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get__NewEnum(IUnknown** _NewEnum) mut
			{
				return VT.get__NewEnum(&this, _NewEnum);
			}
			public HRESULT Item(VARIANT Identifier, IInkStrokes** Strokes) mut
			{
				return VT.Item(&this, Identifier, Strokes);
			}
			public HRESULT Add(BSTR Name, IInkStrokes* Strokes) mut
			{
				return VT.Add(&this, Name, Strokes);
			}
			public HRESULT Remove(VARIANT Identifier) mut
			{
				return VT.Remove(&this, Identifier);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkCustomStrokes *self, int32* Count) get_Count;
				public new function HRESULT(IInkCustomStrokes *self, IUnknown** _NewEnum) get__NewEnum;
				public new function HRESULT(IInkCustomStrokes *self, VARIANT Identifier, IInkStrokes** Strokes) Item;
				public new function HRESULT(IInkCustomStrokes *self, BSTR Name, IInkStrokes* Strokes) Add;
				public new function HRESULT(IInkCustomStrokes *self, VARIANT Identifier) Remove;
				public new function HRESULT(IInkCustomStrokes *self) Clear;
			}
		}
		[CRepr]
		public struct _IInkStrokesEvents : IDispatch
		{
			public const new Guid IID = .(0xf33053ec, 0x5d25, 0x430a, 0x92, 0x8f, 0x76, 0xa6, 0x49, 0x1d, 0xde, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IInkDisp : IDispatch
		{
			public const new Guid IID = .(0x9d398fa0, 0xc4e2, 0x4fcd, 0x99, 0x73, 0x97, 0x5c, 0xaa, 0xf4, 0x7e, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Strokes(IInkStrokes** Strokes) mut
			{
				return VT.get_Strokes(&this, Strokes);
			}
			public HRESULT get_ExtendedProperties(IInkExtendedProperties** Properties) mut
			{
				return VT.get_ExtendedProperties(&this, Properties);
			}
			public HRESULT get_Dirty(int16* Dirty) mut
			{
				return VT.get_Dirty(&this, Dirty);
			}
			public HRESULT put_Dirty(int16 Dirty) mut
			{
				return VT.put_Dirty(&this, Dirty);
			}
			public HRESULT get_CustomStrokes(IInkCustomStrokes** ppunkInkCustomStrokes) mut
			{
				return VT.get_CustomStrokes(&this, ppunkInkCustomStrokes);
			}
			public HRESULT GetBoundingBox(InkBoundingBoxMode BoundingBoxMode, IInkRectangle** Rectangle) mut
			{
				return VT.GetBoundingBox(&this, BoundingBoxMode, Rectangle);
			}
			public HRESULT DeleteStrokes(IInkStrokes* Strokes) mut
			{
				return VT.DeleteStrokes(&this, Strokes);
			}
			public HRESULT DeleteStroke(IInkStrokeDisp* Stroke) mut
			{
				return VT.DeleteStroke(&this, Stroke);
			}
			public HRESULT ExtractStrokes(IInkStrokes* Strokes, InkExtractFlags ExtractFlags, IInkDisp** ExtractedInk) mut
			{
				return VT.ExtractStrokes(&this, Strokes, ExtractFlags, ExtractedInk);
			}
			public HRESULT ExtractWithRectangle(IInkRectangle* Rectangle, InkExtractFlags extractFlags, IInkDisp** ExtractedInk) mut
			{
				return VT.ExtractWithRectangle(&this, Rectangle, extractFlags, ExtractedInk);
			}
			public HRESULT Clip(IInkRectangle* Rectangle) mut
			{
				return VT.Clip(&this, Rectangle);
			}
			public HRESULT Clone(IInkDisp** NewInk) mut
			{
				return VT.Clone(&this, NewInk);
			}
			public HRESULT HitTestCircle(int32 X, int32 Y, float radius, IInkStrokes** Strokes) mut
			{
				return VT.HitTestCircle(&this, X, Y, radius, Strokes);
			}
			public HRESULT HitTestWithRectangle(IInkRectangle* SelectionRectangle, float IntersectPercent, IInkStrokes** Strokes) mut
			{
				return VT.HitTestWithRectangle(&this, SelectionRectangle, IntersectPercent, Strokes);
			}
			public HRESULT HitTestWithLasso(VARIANT Points, float IntersectPercent, VARIANT* LassoPoints, IInkStrokes** Strokes) mut
			{
				return VT.HitTestWithLasso(&this, Points, IntersectPercent, LassoPoints, Strokes);
			}
			public HRESULT NearestPoint(int32 X, int32 Y, float* PointOnStroke, float* DistanceFromPacket, IInkStrokeDisp** Stroke) mut
			{
				return VT.NearestPoint(&this, X, Y, PointOnStroke, DistanceFromPacket, Stroke);
			}
			public HRESULT CreateStrokes(VARIANT StrokeIds, IInkStrokes** Strokes) mut
			{
				return VT.CreateStrokes(&this, StrokeIds, Strokes);
			}
			public HRESULT AddStrokesAtRectangle(IInkStrokes* SourceStrokes, IInkRectangle* TargetRectangle) mut
			{
				return VT.AddStrokesAtRectangle(&this, SourceStrokes, TargetRectangle);
			}
			public HRESULT Save(InkPersistenceFormat PersistenceFormat, InkPersistenceCompressionMode CompressionMode, VARIANT* Data) mut
			{
				return VT.Save(&this, PersistenceFormat, CompressionMode, Data);
			}
			public HRESULT Load(VARIANT Data) mut
			{
				return VT.Load(&this, Data);
			}
			public HRESULT CreateStroke(VARIANT PacketData, VARIANT PacketDescription, IInkStrokeDisp** Stroke) mut
			{
				return VT.CreateStroke(&this, PacketData, PacketDescription, Stroke);
			}
			public HRESULT ClipboardCopyWithRectangle(IInkRectangle* Rectangle, InkClipboardFormats ClipboardFormats, InkClipboardModes ClipboardModes, IDataObject** DataObject) mut
			{
				return VT.ClipboardCopyWithRectangle(&this, Rectangle, ClipboardFormats, ClipboardModes, DataObject);
			}
			public HRESULT ClipboardCopy(IInkStrokes* strokes, InkClipboardFormats ClipboardFormats, InkClipboardModes ClipboardModes, IDataObject** DataObject) mut
			{
				return VT.ClipboardCopy(&this, strokes, ClipboardFormats, ClipboardModes, DataObject);
			}
			public HRESULT CanPaste(IDataObject* DataObject, int16* CanPaste) mut
			{
				return VT.CanPaste(&this, DataObject, CanPaste);
			}
			public HRESULT ClipboardPaste(int32 x, int32 y, IDataObject* DataObject, IInkStrokes** Strokes) mut
			{
				return VT.ClipboardPaste(&this, x, y, DataObject, Strokes);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkDisp *self, IInkStrokes** Strokes) get_Strokes;
				public new function HRESULT(IInkDisp *self, IInkExtendedProperties** Properties) get_ExtendedProperties;
				public new function HRESULT(IInkDisp *self, int16* Dirty) get_Dirty;
				public new function HRESULT(IInkDisp *self, int16 Dirty) put_Dirty;
				public new function HRESULT(IInkDisp *self, IInkCustomStrokes** ppunkInkCustomStrokes) get_CustomStrokes;
				public new function HRESULT(IInkDisp *self, InkBoundingBoxMode BoundingBoxMode, IInkRectangle** Rectangle) GetBoundingBox;
				public new function HRESULT(IInkDisp *self, IInkStrokes* Strokes) DeleteStrokes;
				public new function HRESULT(IInkDisp *self, IInkStrokeDisp* Stroke) DeleteStroke;
				public new function HRESULT(IInkDisp *self, IInkStrokes* Strokes, InkExtractFlags ExtractFlags, IInkDisp** ExtractedInk) ExtractStrokes;
				public new function HRESULT(IInkDisp *self, IInkRectangle* Rectangle, InkExtractFlags extractFlags, IInkDisp** ExtractedInk) ExtractWithRectangle;
				public new function HRESULT(IInkDisp *self, IInkRectangle* Rectangle) Clip;
				public new function HRESULT(IInkDisp *self, IInkDisp** NewInk) Clone;
				public new function HRESULT(IInkDisp *self, int32 X, int32 Y, float radius, IInkStrokes** Strokes) HitTestCircle;
				public new function HRESULT(IInkDisp *self, IInkRectangle* SelectionRectangle, float IntersectPercent, IInkStrokes** Strokes) HitTestWithRectangle;
				public new function HRESULT(IInkDisp *self, VARIANT Points, float IntersectPercent, VARIANT* LassoPoints, IInkStrokes** Strokes) HitTestWithLasso;
				public new function HRESULT(IInkDisp *self, int32 X, int32 Y, float* PointOnStroke, float* DistanceFromPacket, IInkStrokeDisp** Stroke) NearestPoint;
				public new function HRESULT(IInkDisp *self, VARIANT StrokeIds, IInkStrokes** Strokes) CreateStrokes;
				public new function HRESULT(IInkDisp *self, IInkStrokes* SourceStrokes, IInkRectangle* TargetRectangle) AddStrokesAtRectangle;
				public new function HRESULT(IInkDisp *self, InkPersistenceFormat PersistenceFormat, InkPersistenceCompressionMode CompressionMode, VARIANT* Data) Save;
				public new function HRESULT(IInkDisp *self, VARIANT Data) Load;
				public new function HRESULT(IInkDisp *self, VARIANT PacketData, VARIANT PacketDescription, IInkStrokeDisp** Stroke) CreateStroke;
				public new function HRESULT(IInkDisp *self, IInkRectangle* Rectangle, InkClipboardFormats ClipboardFormats, InkClipboardModes ClipboardModes, IDataObject** DataObject) ClipboardCopyWithRectangle;
				public new function HRESULT(IInkDisp *self, IInkStrokes* strokes, InkClipboardFormats ClipboardFormats, InkClipboardModes ClipboardModes, IDataObject** DataObject) ClipboardCopy;
				public new function HRESULT(IInkDisp *self, IDataObject* DataObject, int16* CanPaste) CanPaste;
				public new function HRESULT(IInkDisp *self, int32 x, int32 y, IDataObject* DataObject, IInkStrokes** Strokes) ClipboardPaste;
			}
		}
		[CRepr]
		public struct _IInkEvents : IDispatch
		{
			public const new Guid IID = .(0x427b1865, 0xca3f, 0x479a, 0x83, 0xa9, 0x0f, 0x42, 0x0f, 0x2a, 0x00, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IInkRenderer : IDispatch
		{
			public const new Guid IID = .(0xe6257a9c, 0xb511, 0x4f4c, 0xa8, 0xb0, 0xa7, 0xdb, 0xc9, 0x50, 0x6b, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetViewTransform(IInkTransform* ViewTransform) mut
			{
				return VT.GetViewTransform(&this, ViewTransform);
			}
			public HRESULT SetViewTransform(IInkTransform* ViewTransform) mut
			{
				return VT.SetViewTransform(&this, ViewTransform);
			}
			public HRESULT GetObjectTransform(IInkTransform* ObjectTransform) mut
			{
				return VT.GetObjectTransform(&this, ObjectTransform);
			}
			public HRESULT SetObjectTransform(IInkTransform* ObjectTransform) mut
			{
				return VT.SetObjectTransform(&this, ObjectTransform);
			}
			public HRESULT Draw(int hDC, IInkStrokes* Strokes) mut
			{
				return VT.Draw(&this, hDC, Strokes);
			}
			public HRESULT DrawStroke(int hDC, IInkStrokeDisp* Stroke, IInkDrawingAttributes* DrawingAttributes) mut
			{
				return VT.DrawStroke(&this, hDC, Stroke, DrawingAttributes);
			}
			public HRESULT PixelToInkSpace(int hDC, int32* x, int32* y) mut
			{
				return VT.PixelToInkSpace(&this, hDC, x, y);
			}
			public HRESULT InkSpaceToPixel(int hdcDisplay, int32* x, int32* y) mut
			{
				return VT.InkSpaceToPixel(&this, hdcDisplay, x, y);
			}
			public HRESULT PixelToInkSpaceFromPoints(int hDC, VARIANT* Points) mut
			{
				return VT.PixelToInkSpaceFromPoints(&this, hDC, Points);
			}
			public HRESULT InkSpaceToPixelFromPoints(int hDC, VARIANT* Points) mut
			{
				return VT.InkSpaceToPixelFromPoints(&this, hDC, Points);
			}
			public HRESULT Measure(IInkStrokes* Strokes, IInkRectangle** Rectangle) mut
			{
				return VT.Measure(&this, Strokes, Rectangle);
			}
			public HRESULT MeasureStroke(IInkStrokeDisp* Stroke, IInkDrawingAttributes* DrawingAttributes, IInkRectangle** Rectangle) mut
			{
				return VT.MeasureStroke(&this, Stroke, DrawingAttributes, Rectangle);
			}
			public HRESULT Move(float HorizontalComponent, float VerticalComponent) mut
			{
				return VT.Move(&this, HorizontalComponent, VerticalComponent);
			}
			public HRESULT Rotate(float Degrees, float x, float y) mut
			{
				return VT.Rotate(&this, Degrees, x, y);
			}
			public HRESULT ScaleTransform(float HorizontalMultiplier, float VerticalMultiplier, int16 ApplyOnPenWidth) mut
			{
				return VT.ScaleTransform(&this, HorizontalMultiplier, VerticalMultiplier, ApplyOnPenWidth);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkRenderer *self, IInkTransform* ViewTransform) GetViewTransform;
				public new function HRESULT(IInkRenderer *self, IInkTransform* ViewTransform) SetViewTransform;
				public new function HRESULT(IInkRenderer *self, IInkTransform* ObjectTransform) GetObjectTransform;
				public new function HRESULT(IInkRenderer *self, IInkTransform* ObjectTransform) SetObjectTransform;
				public new function HRESULT(IInkRenderer *self, int hDC, IInkStrokes* Strokes) Draw;
				public new function HRESULT(IInkRenderer *self, int hDC, IInkStrokeDisp* Stroke, IInkDrawingAttributes* DrawingAttributes) DrawStroke;
				public new function HRESULT(IInkRenderer *self, int hDC, int32* x, int32* y) PixelToInkSpace;
				public new function HRESULT(IInkRenderer *self, int hdcDisplay, int32* x, int32* y) InkSpaceToPixel;
				public new function HRESULT(IInkRenderer *self, int hDC, VARIANT* Points) PixelToInkSpaceFromPoints;
				public new function HRESULT(IInkRenderer *self, int hDC, VARIANT* Points) InkSpaceToPixelFromPoints;
				public new function HRESULT(IInkRenderer *self, IInkStrokes* Strokes, IInkRectangle** Rectangle) Measure;
				public new function HRESULT(IInkRenderer *self, IInkStrokeDisp* Stroke, IInkDrawingAttributes* DrawingAttributes, IInkRectangle** Rectangle) MeasureStroke;
				public new function HRESULT(IInkRenderer *self, float HorizontalComponent, float VerticalComponent) Move;
				public new function HRESULT(IInkRenderer *self, float Degrees, float x, float y) Rotate;
				public new function HRESULT(IInkRenderer *self, float HorizontalMultiplier, float VerticalMultiplier, int16 ApplyOnPenWidth) ScaleTransform;
			}
		}
		[CRepr]
		public struct IInkCollector : IDispatch
		{
			public const new Guid IID = .(0xf0f060b5, 0x8b1f, 0x4a7c, 0x89, 0xec, 0x88, 0x06, 0x92, 0x58, 0x8a, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_hWnd(int* CurrentWindow) mut
			{
				return VT.get_hWnd(&this, CurrentWindow);
			}
			public HRESULT put_hWnd(int NewWindow) mut
			{
				return VT.put_hWnd(&this, NewWindow);
			}
			public HRESULT get_Enabled(int16* Collecting) mut
			{
				return VT.get_Enabled(&this, Collecting);
			}
			public HRESULT put_Enabled(int16 Collecting) mut
			{
				return VT.put_Enabled(&this, Collecting);
			}
			public HRESULT get_DefaultDrawingAttributes(IInkDrawingAttributes** CurrentAttributes) mut
			{
				return VT.get_DefaultDrawingAttributes(&this, CurrentAttributes);
			}
			public HRESULT putref_DefaultDrawingAttributes(IInkDrawingAttributes* NewAttributes) mut
			{
				return VT.putref_DefaultDrawingAttributes(&this, NewAttributes);
			}
			public HRESULT get_Renderer(IInkRenderer** CurrentInkRenderer) mut
			{
				return VT.get_Renderer(&this, CurrentInkRenderer);
			}
			public HRESULT putref_Renderer(IInkRenderer* NewInkRenderer) mut
			{
				return VT.putref_Renderer(&this, NewInkRenderer);
			}
			public HRESULT get_Ink(IInkDisp** Ink) mut
			{
				return VT.get_Ink(&this, Ink);
			}
			public HRESULT putref_Ink(IInkDisp* NewInk) mut
			{
				return VT.putref_Ink(&this, NewInk);
			}
			public HRESULT get_AutoRedraw(int16* AutoRedraw) mut
			{
				return VT.get_AutoRedraw(&this, AutoRedraw);
			}
			public HRESULT put_AutoRedraw(int16 AutoRedraw) mut
			{
				return VT.put_AutoRedraw(&this, AutoRedraw);
			}
			public HRESULT get_CollectingInk(int16* Collecting) mut
			{
				return VT.get_CollectingInk(&this, Collecting);
			}
			public HRESULT get_CollectionMode(InkCollectionMode* Mode) mut
			{
				return VT.get_CollectionMode(&this, Mode);
			}
			public HRESULT put_CollectionMode(InkCollectionMode Mode) mut
			{
				return VT.put_CollectionMode(&this, Mode);
			}
			public HRESULT get_DynamicRendering(int16* Enabled) mut
			{
				return VT.get_DynamicRendering(&this, Enabled);
			}
			public HRESULT put_DynamicRendering(int16 Enabled) mut
			{
				return VT.put_DynamicRendering(&this, Enabled);
			}
			public HRESULT get_DesiredPacketDescription(VARIANT* PacketGuids) mut
			{
				return VT.get_DesiredPacketDescription(&this, PacketGuids);
			}
			public HRESULT put_DesiredPacketDescription(VARIANT PacketGuids) mut
			{
				return VT.put_DesiredPacketDescription(&this, PacketGuids);
			}
			public HRESULT get_MouseIcon(IPictureDisp** MouseIcon) mut
			{
				return VT.get_MouseIcon(&this, MouseIcon);
			}
			public HRESULT put_MouseIcon(IPictureDisp* MouseIcon) mut
			{
				return VT.put_MouseIcon(&this, MouseIcon);
			}
			public HRESULT putref_MouseIcon(IPictureDisp* MouseIcon) mut
			{
				return VT.putref_MouseIcon(&this, MouseIcon);
			}
			public HRESULT get_MousePointer(InkMousePointer* MousePointer) mut
			{
				return VT.get_MousePointer(&this, MousePointer);
			}
			public HRESULT put_MousePointer(InkMousePointer MousePointer) mut
			{
				return VT.put_MousePointer(&this, MousePointer);
			}
			public HRESULT get_Cursors(IInkCursors** Cursors) mut
			{
				return VT.get_Cursors(&this, Cursors);
			}
			public HRESULT get_MarginX(int32* MarginX) mut
			{
				return VT.get_MarginX(&this, MarginX);
			}
			public HRESULT put_MarginX(int32 MarginX) mut
			{
				return VT.put_MarginX(&this, MarginX);
			}
			public HRESULT get_MarginY(int32* MarginY) mut
			{
				return VT.get_MarginY(&this, MarginY);
			}
			public HRESULT put_MarginY(int32 MarginY) mut
			{
				return VT.put_MarginY(&this, MarginY);
			}
			public HRESULT get_Tablet(IInkTablet** SingleTablet) mut
			{
				return VT.get_Tablet(&this, SingleTablet);
			}
			public HRESULT get_SupportHighContrastInk(int16* Support) mut
			{
				return VT.get_SupportHighContrastInk(&this, Support);
			}
			public HRESULT put_SupportHighContrastInk(int16 Support) mut
			{
				return VT.put_SupportHighContrastInk(&this, Support);
			}
			public HRESULT SetGestureStatus(InkApplicationGesture Gesture, int16 Listen) mut
			{
				return VT.SetGestureStatus(&this, Gesture, Listen);
			}
			public HRESULT GetGestureStatus(InkApplicationGesture Gesture, int16* Listening) mut
			{
				return VT.GetGestureStatus(&this, Gesture, Listening);
			}
			public HRESULT GetWindowInputRectangle(IInkRectangle** WindowInputRectangle) mut
			{
				return VT.GetWindowInputRectangle(&this, WindowInputRectangle);
			}
			public HRESULT SetWindowInputRectangle(IInkRectangle* WindowInputRectangle) mut
			{
				return VT.SetWindowInputRectangle(&this, WindowInputRectangle);
			}
			public HRESULT SetAllTabletsMode(int16 UseMouseForInput) mut
			{
				return VT.SetAllTabletsMode(&this, UseMouseForInput);
			}
			public HRESULT SetSingleTabletIntegratedMode(IInkTablet* Tablet) mut
			{
				return VT.SetSingleTabletIntegratedMode(&this, Tablet);
			}
			public HRESULT GetEventInterest(InkCollectorEventInterest EventId, int16* Listen) mut
			{
				return VT.GetEventInterest(&this, EventId, Listen);
			}
			public HRESULT SetEventInterest(InkCollectorEventInterest EventId, int16 Listen) mut
			{
				return VT.SetEventInterest(&this, EventId, Listen);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkCollector *self, int* CurrentWindow) get_hWnd;
				public new function HRESULT(IInkCollector *self, int NewWindow) put_hWnd;
				public new function HRESULT(IInkCollector *self, int16* Collecting) get_Enabled;
				public new function HRESULT(IInkCollector *self, int16 Collecting) put_Enabled;
				public new function HRESULT(IInkCollector *self, IInkDrawingAttributes** CurrentAttributes) get_DefaultDrawingAttributes;
				public new function HRESULT(IInkCollector *self, IInkDrawingAttributes* NewAttributes) putref_DefaultDrawingAttributes;
				public new function HRESULT(IInkCollector *self, IInkRenderer** CurrentInkRenderer) get_Renderer;
				public new function HRESULT(IInkCollector *self, IInkRenderer* NewInkRenderer) putref_Renderer;
				public new function HRESULT(IInkCollector *self, IInkDisp** Ink) get_Ink;
				public new function HRESULT(IInkCollector *self, IInkDisp* NewInk) putref_Ink;
				public new function HRESULT(IInkCollector *self, int16* AutoRedraw) get_AutoRedraw;
				public new function HRESULT(IInkCollector *self, int16 AutoRedraw) put_AutoRedraw;
				public new function HRESULT(IInkCollector *self, int16* Collecting) get_CollectingInk;
				public new function HRESULT(IInkCollector *self, InkCollectionMode* Mode) get_CollectionMode;
				public new function HRESULT(IInkCollector *self, InkCollectionMode Mode) put_CollectionMode;
				public new function HRESULT(IInkCollector *self, int16* Enabled) get_DynamicRendering;
				public new function HRESULT(IInkCollector *self, int16 Enabled) put_DynamicRendering;
				public new function HRESULT(IInkCollector *self, VARIANT* PacketGuids) get_DesiredPacketDescription;
				public new function HRESULT(IInkCollector *self, VARIANT PacketGuids) put_DesiredPacketDescription;
				public new function HRESULT(IInkCollector *self, IPictureDisp** MouseIcon) get_MouseIcon;
				public new function HRESULT(IInkCollector *self, IPictureDisp* MouseIcon) put_MouseIcon;
				public new function HRESULT(IInkCollector *self, IPictureDisp* MouseIcon) putref_MouseIcon;
				public new function HRESULT(IInkCollector *self, InkMousePointer* MousePointer) get_MousePointer;
				public new function HRESULT(IInkCollector *self, InkMousePointer MousePointer) put_MousePointer;
				public new function HRESULT(IInkCollector *self, IInkCursors** Cursors) get_Cursors;
				public new function HRESULT(IInkCollector *self, int32* MarginX) get_MarginX;
				public new function HRESULT(IInkCollector *self, int32 MarginX) put_MarginX;
				public new function HRESULT(IInkCollector *self, int32* MarginY) get_MarginY;
				public new function HRESULT(IInkCollector *self, int32 MarginY) put_MarginY;
				public new function HRESULT(IInkCollector *self, IInkTablet** SingleTablet) get_Tablet;
				public new function HRESULT(IInkCollector *self, int16* Support) get_SupportHighContrastInk;
				public new function HRESULT(IInkCollector *self, int16 Support) put_SupportHighContrastInk;
				public new function HRESULT(IInkCollector *self, InkApplicationGesture Gesture, int16 Listen) SetGestureStatus;
				public new function HRESULT(IInkCollector *self, InkApplicationGesture Gesture, int16* Listening) GetGestureStatus;
				public new function HRESULT(IInkCollector *self, IInkRectangle** WindowInputRectangle) GetWindowInputRectangle;
				public new function HRESULT(IInkCollector *self, IInkRectangle* WindowInputRectangle) SetWindowInputRectangle;
				public new function HRESULT(IInkCollector *self, int16 UseMouseForInput) SetAllTabletsMode;
				public new function HRESULT(IInkCollector *self, IInkTablet* Tablet) SetSingleTabletIntegratedMode;
				public new function HRESULT(IInkCollector *self, InkCollectorEventInterest EventId, int16* Listen) GetEventInterest;
				public new function HRESULT(IInkCollector *self, InkCollectorEventInterest EventId, int16 Listen) SetEventInterest;
			}
		}
		[CRepr]
		public struct _IInkCollectorEvents : IDispatch
		{
			public const new Guid IID = .(0x11a583f2, 0x712d, 0x4fea, 0xab, 0xcf, 0xab, 0x4a, 0xf3, 0x8e, 0xa0, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IInkOverlay : IDispatch
		{
			public const new Guid IID = .(0xb82a463b, 0xc1c5, 0x45a3, 0x99, 0x7c, 0xde, 0xab, 0x56, 0x51, 0xb6, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_hWnd(int* CurrentWindow) mut
			{
				return VT.get_hWnd(&this, CurrentWindow);
			}
			public HRESULT put_hWnd(int NewWindow) mut
			{
				return VT.put_hWnd(&this, NewWindow);
			}
			public HRESULT get_Enabled(int16* Collecting) mut
			{
				return VT.get_Enabled(&this, Collecting);
			}
			public HRESULT put_Enabled(int16 Collecting) mut
			{
				return VT.put_Enabled(&this, Collecting);
			}
			public HRESULT get_DefaultDrawingAttributes(IInkDrawingAttributes** CurrentAttributes) mut
			{
				return VT.get_DefaultDrawingAttributes(&this, CurrentAttributes);
			}
			public HRESULT putref_DefaultDrawingAttributes(IInkDrawingAttributes* NewAttributes) mut
			{
				return VT.putref_DefaultDrawingAttributes(&this, NewAttributes);
			}
			public HRESULT get_Renderer(IInkRenderer** CurrentInkRenderer) mut
			{
				return VT.get_Renderer(&this, CurrentInkRenderer);
			}
			public HRESULT putref_Renderer(IInkRenderer* NewInkRenderer) mut
			{
				return VT.putref_Renderer(&this, NewInkRenderer);
			}
			public HRESULT get_Ink(IInkDisp** Ink) mut
			{
				return VT.get_Ink(&this, Ink);
			}
			public HRESULT putref_Ink(IInkDisp* NewInk) mut
			{
				return VT.putref_Ink(&this, NewInk);
			}
			public HRESULT get_AutoRedraw(int16* AutoRedraw) mut
			{
				return VT.get_AutoRedraw(&this, AutoRedraw);
			}
			public HRESULT put_AutoRedraw(int16 AutoRedraw) mut
			{
				return VT.put_AutoRedraw(&this, AutoRedraw);
			}
			public HRESULT get_CollectingInk(int16* Collecting) mut
			{
				return VT.get_CollectingInk(&this, Collecting);
			}
			public HRESULT get_CollectionMode(InkCollectionMode* Mode) mut
			{
				return VT.get_CollectionMode(&this, Mode);
			}
			public HRESULT put_CollectionMode(InkCollectionMode Mode) mut
			{
				return VT.put_CollectionMode(&this, Mode);
			}
			public HRESULT get_DynamicRendering(int16* Enabled) mut
			{
				return VT.get_DynamicRendering(&this, Enabled);
			}
			public HRESULT put_DynamicRendering(int16 Enabled) mut
			{
				return VT.put_DynamicRendering(&this, Enabled);
			}
			public HRESULT get_DesiredPacketDescription(VARIANT* PacketGuids) mut
			{
				return VT.get_DesiredPacketDescription(&this, PacketGuids);
			}
			public HRESULT put_DesiredPacketDescription(VARIANT PacketGuids) mut
			{
				return VT.put_DesiredPacketDescription(&this, PacketGuids);
			}
			public HRESULT get_MouseIcon(IPictureDisp** MouseIcon) mut
			{
				return VT.get_MouseIcon(&this, MouseIcon);
			}
			public HRESULT put_MouseIcon(IPictureDisp* MouseIcon) mut
			{
				return VT.put_MouseIcon(&this, MouseIcon);
			}
			public HRESULT putref_MouseIcon(IPictureDisp* MouseIcon) mut
			{
				return VT.putref_MouseIcon(&this, MouseIcon);
			}
			public HRESULT get_MousePointer(InkMousePointer* MousePointer) mut
			{
				return VT.get_MousePointer(&this, MousePointer);
			}
			public HRESULT put_MousePointer(InkMousePointer MousePointer) mut
			{
				return VT.put_MousePointer(&this, MousePointer);
			}
			public HRESULT get_EditingMode(InkOverlayEditingMode* EditingMode) mut
			{
				return VT.get_EditingMode(&this, EditingMode);
			}
			public HRESULT put_EditingMode(InkOverlayEditingMode EditingMode) mut
			{
				return VT.put_EditingMode(&this, EditingMode);
			}
			public HRESULT get_Selection(IInkStrokes** Selection) mut
			{
				return VT.get_Selection(&this, Selection);
			}
			public HRESULT put_Selection(IInkStrokes* Selection) mut
			{
				return VT.put_Selection(&this, Selection);
			}
			public HRESULT get_EraserMode(InkOverlayEraserMode* EraserMode) mut
			{
				return VT.get_EraserMode(&this, EraserMode);
			}
			public HRESULT put_EraserMode(InkOverlayEraserMode EraserMode) mut
			{
				return VT.put_EraserMode(&this, EraserMode);
			}
			public HRESULT get_EraserWidth(int32* EraserWidth) mut
			{
				return VT.get_EraserWidth(&this, EraserWidth);
			}
			public HRESULT put_EraserWidth(int32 newEraserWidth) mut
			{
				return VT.put_EraserWidth(&this, newEraserWidth);
			}
			public HRESULT get_AttachMode(InkOverlayAttachMode* AttachMode) mut
			{
				return VT.get_AttachMode(&this, AttachMode);
			}
			public HRESULT put_AttachMode(InkOverlayAttachMode AttachMode) mut
			{
				return VT.put_AttachMode(&this, AttachMode);
			}
			public HRESULT get_Cursors(IInkCursors** Cursors) mut
			{
				return VT.get_Cursors(&this, Cursors);
			}
			public HRESULT get_MarginX(int32* MarginX) mut
			{
				return VT.get_MarginX(&this, MarginX);
			}
			public HRESULT put_MarginX(int32 MarginX) mut
			{
				return VT.put_MarginX(&this, MarginX);
			}
			public HRESULT get_MarginY(int32* MarginY) mut
			{
				return VT.get_MarginY(&this, MarginY);
			}
			public HRESULT put_MarginY(int32 MarginY) mut
			{
				return VT.put_MarginY(&this, MarginY);
			}
			public HRESULT get_Tablet(IInkTablet** SingleTablet) mut
			{
				return VT.get_Tablet(&this, SingleTablet);
			}
			public HRESULT get_SupportHighContrastInk(int16* Support) mut
			{
				return VT.get_SupportHighContrastInk(&this, Support);
			}
			public HRESULT put_SupportHighContrastInk(int16 Support) mut
			{
				return VT.put_SupportHighContrastInk(&this, Support);
			}
			public HRESULT get_SupportHighContrastSelectionUI(int16* Support) mut
			{
				return VT.get_SupportHighContrastSelectionUI(&this, Support);
			}
			public HRESULT put_SupportHighContrastSelectionUI(int16 Support) mut
			{
				return VT.put_SupportHighContrastSelectionUI(&this, Support);
			}
			public HRESULT HitTestSelection(int32 x, int32 y, SelectionHitResult* SelArea) mut
			{
				return VT.HitTestSelection(&this, x, y, SelArea);
			}
			public HRESULT Draw(IInkRectangle* Rect) mut
			{
				return VT.Draw(&this, Rect);
			}
			public HRESULT SetGestureStatus(InkApplicationGesture Gesture, int16 Listen) mut
			{
				return VT.SetGestureStatus(&this, Gesture, Listen);
			}
			public HRESULT GetGestureStatus(InkApplicationGesture Gesture, int16* Listening) mut
			{
				return VT.GetGestureStatus(&this, Gesture, Listening);
			}
			public HRESULT GetWindowInputRectangle(IInkRectangle** WindowInputRectangle) mut
			{
				return VT.GetWindowInputRectangle(&this, WindowInputRectangle);
			}
			public HRESULT SetWindowInputRectangle(IInkRectangle* WindowInputRectangle) mut
			{
				return VT.SetWindowInputRectangle(&this, WindowInputRectangle);
			}
			public HRESULT SetAllTabletsMode(int16 UseMouseForInput) mut
			{
				return VT.SetAllTabletsMode(&this, UseMouseForInput);
			}
			public HRESULT SetSingleTabletIntegratedMode(IInkTablet* Tablet) mut
			{
				return VT.SetSingleTabletIntegratedMode(&this, Tablet);
			}
			public HRESULT GetEventInterest(InkCollectorEventInterest EventId, int16* Listen) mut
			{
				return VT.GetEventInterest(&this, EventId, Listen);
			}
			public HRESULT SetEventInterest(InkCollectorEventInterest EventId, int16 Listen) mut
			{
				return VT.SetEventInterest(&this, EventId, Listen);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkOverlay *self, int* CurrentWindow) get_hWnd;
				public new function HRESULT(IInkOverlay *self, int NewWindow) put_hWnd;
				public new function HRESULT(IInkOverlay *self, int16* Collecting) get_Enabled;
				public new function HRESULT(IInkOverlay *self, int16 Collecting) put_Enabled;
				public new function HRESULT(IInkOverlay *self, IInkDrawingAttributes** CurrentAttributes) get_DefaultDrawingAttributes;
				public new function HRESULT(IInkOverlay *self, IInkDrawingAttributes* NewAttributes) putref_DefaultDrawingAttributes;
				public new function HRESULT(IInkOverlay *self, IInkRenderer** CurrentInkRenderer) get_Renderer;
				public new function HRESULT(IInkOverlay *self, IInkRenderer* NewInkRenderer) putref_Renderer;
				public new function HRESULT(IInkOverlay *self, IInkDisp** Ink) get_Ink;
				public new function HRESULT(IInkOverlay *self, IInkDisp* NewInk) putref_Ink;
				public new function HRESULT(IInkOverlay *self, int16* AutoRedraw) get_AutoRedraw;
				public new function HRESULT(IInkOverlay *self, int16 AutoRedraw) put_AutoRedraw;
				public new function HRESULT(IInkOverlay *self, int16* Collecting) get_CollectingInk;
				public new function HRESULT(IInkOverlay *self, InkCollectionMode* Mode) get_CollectionMode;
				public new function HRESULT(IInkOverlay *self, InkCollectionMode Mode) put_CollectionMode;
				public new function HRESULT(IInkOverlay *self, int16* Enabled) get_DynamicRendering;
				public new function HRESULT(IInkOverlay *self, int16 Enabled) put_DynamicRendering;
				public new function HRESULT(IInkOverlay *self, VARIANT* PacketGuids) get_DesiredPacketDescription;
				public new function HRESULT(IInkOverlay *self, VARIANT PacketGuids) put_DesiredPacketDescription;
				public new function HRESULT(IInkOverlay *self, IPictureDisp** MouseIcon) get_MouseIcon;
				public new function HRESULT(IInkOverlay *self, IPictureDisp* MouseIcon) put_MouseIcon;
				public new function HRESULT(IInkOverlay *self, IPictureDisp* MouseIcon) putref_MouseIcon;
				public new function HRESULT(IInkOverlay *self, InkMousePointer* MousePointer) get_MousePointer;
				public new function HRESULT(IInkOverlay *self, InkMousePointer MousePointer) put_MousePointer;
				public new function HRESULT(IInkOverlay *self, InkOverlayEditingMode* EditingMode) get_EditingMode;
				public new function HRESULT(IInkOverlay *self, InkOverlayEditingMode EditingMode) put_EditingMode;
				public new function HRESULT(IInkOverlay *self, IInkStrokes** Selection) get_Selection;
				public new function HRESULT(IInkOverlay *self, IInkStrokes* Selection) put_Selection;
				public new function HRESULT(IInkOverlay *self, InkOverlayEraserMode* EraserMode) get_EraserMode;
				public new function HRESULT(IInkOverlay *self, InkOverlayEraserMode EraserMode) put_EraserMode;
				public new function HRESULT(IInkOverlay *self, int32* EraserWidth) get_EraserWidth;
				public new function HRESULT(IInkOverlay *self, int32 newEraserWidth) put_EraserWidth;
				public new function HRESULT(IInkOverlay *self, InkOverlayAttachMode* AttachMode) get_AttachMode;
				public new function HRESULT(IInkOverlay *self, InkOverlayAttachMode AttachMode) put_AttachMode;
				public new function HRESULT(IInkOverlay *self, IInkCursors** Cursors) get_Cursors;
				public new function HRESULT(IInkOverlay *self, int32* MarginX) get_MarginX;
				public new function HRESULT(IInkOverlay *self, int32 MarginX) put_MarginX;
				public new function HRESULT(IInkOverlay *self, int32* MarginY) get_MarginY;
				public new function HRESULT(IInkOverlay *self, int32 MarginY) put_MarginY;
				public new function HRESULT(IInkOverlay *self, IInkTablet** SingleTablet) get_Tablet;
				public new function HRESULT(IInkOverlay *self, int16* Support) get_SupportHighContrastInk;
				public new function HRESULT(IInkOverlay *self, int16 Support) put_SupportHighContrastInk;
				public new function HRESULT(IInkOverlay *self, int16* Support) get_SupportHighContrastSelectionUI;
				public new function HRESULT(IInkOverlay *self, int16 Support) put_SupportHighContrastSelectionUI;
				public new function HRESULT(IInkOverlay *self, int32 x, int32 y, SelectionHitResult* SelArea) HitTestSelection;
				public new function HRESULT(IInkOverlay *self, IInkRectangle* Rect) Draw;
				public new function HRESULT(IInkOverlay *self, InkApplicationGesture Gesture, int16 Listen) SetGestureStatus;
				public new function HRESULT(IInkOverlay *self, InkApplicationGesture Gesture, int16* Listening) GetGestureStatus;
				public new function HRESULT(IInkOverlay *self, IInkRectangle** WindowInputRectangle) GetWindowInputRectangle;
				public new function HRESULT(IInkOverlay *self, IInkRectangle* WindowInputRectangle) SetWindowInputRectangle;
				public new function HRESULT(IInkOverlay *self, int16 UseMouseForInput) SetAllTabletsMode;
				public new function HRESULT(IInkOverlay *self, IInkTablet* Tablet) SetSingleTabletIntegratedMode;
				public new function HRESULT(IInkOverlay *self, InkCollectorEventInterest EventId, int16* Listen) GetEventInterest;
				public new function HRESULT(IInkOverlay *self, InkCollectorEventInterest EventId, int16 Listen) SetEventInterest;
			}
		}
		[CRepr]
		public struct _IInkOverlayEvents : IDispatch
		{
			public const new Guid IID = .(0x31179b69, 0xe563, 0x489e, 0xb1, 0x6f, 0x71, 0x2f, 0x1e, 0x8a, 0x06, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IInkPicture : IDispatch
		{
			public const new Guid IID = .(0xe85662e0, 0x379a, 0x40d7, 0x9b, 0x5c, 0x75, 0x7d, 0x23, 0x3f, 0x99, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_hWnd(int* CurrentWindow) mut
			{
				return VT.get_hWnd(&this, CurrentWindow);
			}
			public HRESULT get_DefaultDrawingAttributes(IInkDrawingAttributes** CurrentAttributes) mut
			{
				return VT.get_DefaultDrawingAttributes(&this, CurrentAttributes);
			}
			public HRESULT putref_DefaultDrawingAttributes(IInkDrawingAttributes* NewAttributes) mut
			{
				return VT.putref_DefaultDrawingAttributes(&this, NewAttributes);
			}
			public HRESULT get_Renderer(IInkRenderer** CurrentInkRenderer) mut
			{
				return VT.get_Renderer(&this, CurrentInkRenderer);
			}
			public HRESULT putref_Renderer(IInkRenderer* NewInkRenderer) mut
			{
				return VT.putref_Renderer(&this, NewInkRenderer);
			}
			public HRESULT get_Ink(IInkDisp** Ink) mut
			{
				return VT.get_Ink(&this, Ink);
			}
			public HRESULT putref_Ink(IInkDisp* NewInk) mut
			{
				return VT.putref_Ink(&this, NewInk);
			}
			public HRESULT get_AutoRedraw(int16* AutoRedraw) mut
			{
				return VT.get_AutoRedraw(&this, AutoRedraw);
			}
			public HRESULT put_AutoRedraw(int16 AutoRedraw) mut
			{
				return VT.put_AutoRedraw(&this, AutoRedraw);
			}
			public HRESULT get_CollectingInk(int16* Collecting) mut
			{
				return VT.get_CollectingInk(&this, Collecting);
			}
			public HRESULT get_CollectionMode(InkCollectionMode* Mode) mut
			{
				return VT.get_CollectionMode(&this, Mode);
			}
			public HRESULT put_CollectionMode(InkCollectionMode Mode) mut
			{
				return VT.put_CollectionMode(&this, Mode);
			}
			public HRESULT get_DynamicRendering(int16* Enabled) mut
			{
				return VT.get_DynamicRendering(&this, Enabled);
			}
			public HRESULT put_DynamicRendering(int16 Enabled) mut
			{
				return VT.put_DynamicRendering(&this, Enabled);
			}
			public HRESULT get_DesiredPacketDescription(VARIANT* PacketGuids) mut
			{
				return VT.get_DesiredPacketDescription(&this, PacketGuids);
			}
			public HRESULT put_DesiredPacketDescription(VARIANT PacketGuids) mut
			{
				return VT.put_DesiredPacketDescription(&this, PacketGuids);
			}
			public HRESULT get_MouseIcon(IPictureDisp** MouseIcon) mut
			{
				return VT.get_MouseIcon(&this, MouseIcon);
			}
			public HRESULT put_MouseIcon(IPictureDisp* MouseIcon) mut
			{
				return VT.put_MouseIcon(&this, MouseIcon);
			}
			public HRESULT putref_MouseIcon(IPictureDisp* MouseIcon) mut
			{
				return VT.putref_MouseIcon(&this, MouseIcon);
			}
			public HRESULT get_MousePointer(InkMousePointer* MousePointer) mut
			{
				return VT.get_MousePointer(&this, MousePointer);
			}
			public HRESULT put_MousePointer(InkMousePointer MousePointer) mut
			{
				return VT.put_MousePointer(&this, MousePointer);
			}
			public HRESULT get_EditingMode(InkOverlayEditingMode* EditingMode) mut
			{
				return VT.get_EditingMode(&this, EditingMode);
			}
			public HRESULT put_EditingMode(InkOverlayEditingMode EditingMode) mut
			{
				return VT.put_EditingMode(&this, EditingMode);
			}
			public HRESULT get_Selection(IInkStrokes** Selection) mut
			{
				return VT.get_Selection(&this, Selection);
			}
			public HRESULT put_Selection(IInkStrokes* Selection) mut
			{
				return VT.put_Selection(&this, Selection);
			}
			public HRESULT get_EraserMode(InkOverlayEraserMode* EraserMode) mut
			{
				return VT.get_EraserMode(&this, EraserMode);
			}
			public HRESULT put_EraserMode(InkOverlayEraserMode EraserMode) mut
			{
				return VT.put_EraserMode(&this, EraserMode);
			}
			public HRESULT get_EraserWidth(int32* EraserWidth) mut
			{
				return VT.get_EraserWidth(&this, EraserWidth);
			}
			public HRESULT put_EraserWidth(int32 newEraserWidth) mut
			{
				return VT.put_EraserWidth(&this, newEraserWidth);
			}
			public HRESULT putref_Picture(IPictureDisp* pPicture) mut
			{
				return VT.putref_Picture(&this, pPicture);
			}
			public HRESULT put_Picture(IPictureDisp* pPicture) mut
			{
				return VT.put_Picture(&this, pPicture);
			}
			public HRESULT get_Picture(IPictureDisp** ppPicture) mut
			{
				return VT.get_Picture(&this, ppPicture);
			}
			public HRESULT put_SizeMode(InkPictureSizeMode smNewSizeMode) mut
			{
				return VT.put_SizeMode(&this, smNewSizeMode);
			}
			public HRESULT get_SizeMode(InkPictureSizeMode* smSizeMode) mut
			{
				return VT.get_SizeMode(&this, smSizeMode);
			}
			public HRESULT put_BackColor(uint32 newColor) mut
			{
				return VT.put_BackColor(&this, newColor);
			}
			public HRESULT get_BackColor(uint32* pColor) mut
			{
				return VT.get_BackColor(&this, pColor);
			}
			public HRESULT get_Cursors(IInkCursors** Cursors) mut
			{
				return VT.get_Cursors(&this, Cursors);
			}
			public HRESULT get_MarginX(int32* MarginX) mut
			{
				return VT.get_MarginX(&this, MarginX);
			}
			public HRESULT put_MarginX(int32 MarginX) mut
			{
				return VT.put_MarginX(&this, MarginX);
			}
			public HRESULT get_MarginY(int32* MarginY) mut
			{
				return VT.get_MarginY(&this, MarginY);
			}
			public HRESULT put_MarginY(int32 MarginY) mut
			{
				return VT.put_MarginY(&this, MarginY);
			}
			public HRESULT get_Tablet(IInkTablet** SingleTablet) mut
			{
				return VT.get_Tablet(&this, SingleTablet);
			}
			public HRESULT get_SupportHighContrastInk(int16* Support) mut
			{
				return VT.get_SupportHighContrastInk(&this, Support);
			}
			public HRESULT put_SupportHighContrastInk(int16 Support) mut
			{
				return VT.put_SupportHighContrastInk(&this, Support);
			}
			public HRESULT get_SupportHighContrastSelectionUI(int16* Support) mut
			{
				return VT.get_SupportHighContrastSelectionUI(&this, Support);
			}
			public HRESULT put_SupportHighContrastSelectionUI(int16 Support) mut
			{
				return VT.put_SupportHighContrastSelectionUI(&this, Support);
			}
			public HRESULT HitTestSelection(int32 x, int32 y, SelectionHitResult* SelArea) mut
			{
				return VT.HitTestSelection(&this, x, y, SelArea);
			}
			public HRESULT SetGestureStatus(InkApplicationGesture Gesture, int16 Listen) mut
			{
				return VT.SetGestureStatus(&this, Gesture, Listen);
			}
			public HRESULT GetGestureStatus(InkApplicationGesture Gesture, int16* Listening) mut
			{
				return VT.GetGestureStatus(&this, Gesture, Listening);
			}
			public HRESULT GetWindowInputRectangle(IInkRectangle** WindowInputRectangle) mut
			{
				return VT.GetWindowInputRectangle(&this, WindowInputRectangle);
			}
			public HRESULT SetWindowInputRectangle(IInkRectangle* WindowInputRectangle) mut
			{
				return VT.SetWindowInputRectangle(&this, WindowInputRectangle);
			}
			public HRESULT SetAllTabletsMode(int16 UseMouseForInput) mut
			{
				return VT.SetAllTabletsMode(&this, UseMouseForInput);
			}
			public HRESULT SetSingleTabletIntegratedMode(IInkTablet* Tablet) mut
			{
				return VT.SetSingleTabletIntegratedMode(&this, Tablet);
			}
			public HRESULT GetEventInterest(InkCollectorEventInterest EventId, int16* Listen) mut
			{
				return VT.GetEventInterest(&this, EventId, Listen);
			}
			public HRESULT SetEventInterest(InkCollectorEventInterest EventId, int16 Listen) mut
			{
				return VT.SetEventInterest(&this, EventId, Listen);
			}
			public HRESULT get_InkEnabled(int16* Collecting) mut
			{
				return VT.get_InkEnabled(&this, Collecting);
			}
			public HRESULT put_InkEnabled(int16 Collecting) mut
			{
				return VT.put_InkEnabled(&this, Collecting);
			}
			public HRESULT get_Enabled(int16* pbool) mut
			{
				return VT.get_Enabled(&this, pbool);
			}
			public HRESULT put_Enabled(int16 vbool) mut
			{
				return VT.put_Enabled(&this, vbool);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkPicture *self, int* CurrentWindow) get_hWnd;
				public new function HRESULT(IInkPicture *self, IInkDrawingAttributes** CurrentAttributes) get_DefaultDrawingAttributes;
				public new function HRESULT(IInkPicture *self, IInkDrawingAttributes* NewAttributes) putref_DefaultDrawingAttributes;
				public new function HRESULT(IInkPicture *self, IInkRenderer** CurrentInkRenderer) get_Renderer;
				public new function HRESULT(IInkPicture *self, IInkRenderer* NewInkRenderer) putref_Renderer;
				public new function HRESULT(IInkPicture *self, IInkDisp** Ink) get_Ink;
				public new function HRESULT(IInkPicture *self, IInkDisp* NewInk) putref_Ink;
				public new function HRESULT(IInkPicture *self, int16* AutoRedraw) get_AutoRedraw;
				public new function HRESULT(IInkPicture *self, int16 AutoRedraw) put_AutoRedraw;
				public new function HRESULT(IInkPicture *self, int16* Collecting) get_CollectingInk;
				public new function HRESULT(IInkPicture *self, InkCollectionMode* Mode) get_CollectionMode;
				public new function HRESULT(IInkPicture *self, InkCollectionMode Mode) put_CollectionMode;
				public new function HRESULT(IInkPicture *self, int16* Enabled) get_DynamicRendering;
				public new function HRESULT(IInkPicture *self, int16 Enabled) put_DynamicRendering;
				public new function HRESULT(IInkPicture *self, VARIANT* PacketGuids) get_DesiredPacketDescription;
				public new function HRESULT(IInkPicture *self, VARIANT PacketGuids) put_DesiredPacketDescription;
				public new function HRESULT(IInkPicture *self, IPictureDisp** MouseIcon) get_MouseIcon;
				public new function HRESULT(IInkPicture *self, IPictureDisp* MouseIcon) put_MouseIcon;
				public new function HRESULT(IInkPicture *self, IPictureDisp* MouseIcon) putref_MouseIcon;
				public new function HRESULT(IInkPicture *self, InkMousePointer* MousePointer) get_MousePointer;
				public new function HRESULT(IInkPicture *self, InkMousePointer MousePointer) put_MousePointer;
				public new function HRESULT(IInkPicture *self, InkOverlayEditingMode* EditingMode) get_EditingMode;
				public new function HRESULT(IInkPicture *self, InkOverlayEditingMode EditingMode) put_EditingMode;
				public new function HRESULT(IInkPicture *self, IInkStrokes** Selection) get_Selection;
				public new function HRESULT(IInkPicture *self, IInkStrokes* Selection) put_Selection;
				public new function HRESULT(IInkPicture *self, InkOverlayEraserMode* EraserMode) get_EraserMode;
				public new function HRESULT(IInkPicture *self, InkOverlayEraserMode EraserMode) put_EraserMode;
				public new function HRESULT(IInkPicture *self, int32* EraserWidth) get_EraserWidth;
				public new function HRESULT(IInkPicture *self, int32 newEraserWidth) put_EraserWidth;
				public new function HRESULT(IInkPicture *self, IPictureDisp* pPicture) putref_Picture;
				public new function HRESULT(IInkPicture *self, IPictureDisp* pPicture) put_Picture;
				public new function HRESULT(IInkPicture *self, IPictureDisp** ppPicture) get_Picture;
				public new function HRESULT(IInkPicture *self, InkPictureSizeMode smNewSizeMode) put_SizeMode;
				public new function HRESULT(IInkPicture *self, InkPictureSizeMode* smSizeMode) get_SizeMode;
				public new function HRESULT(IInkPicture *self, uint32 newColor) put_BackColor;
				public new function HRESULT(IInkPicture *self, uint32* pColor) get_BackColor;
				public new function HRESULT(IInkPicture *self, IInkCursors** Cursors) get_Cursors;
				public new function HRESULT(IInkPicture *self, int32* MarginX) get_MarginX;
				public new function HRESULT(IInkPicture *self, int32 MarginX) put_MarginX;
				public new function HRESULT(IInkPicture *self, int32* MarginY) get_MarginY;
				public new function HRESULT(IInkPicture *self, int32 MarginY) put_MarginY;
				public new function HRESULT(IInkPicture *self, IInkTablet** SingleTablet) get_Tablet;
				public new function HRESULT(IInkPicture *self, int16* Support) get_SupportHighContrastInk;
				public new function HRESULT(IInkPicture *self, int16 Support) put_SupportHighContrastInk;
				public new function HRESULT(IInkPicture *self, int16* Support) get_SupportHighContrastSelectionUI;
				public new function HRESULT(IInkPicture *self, int16 Support) put_SupportHighContrastSelectionUI;
				public new function HRESULT(IInkPicture *self, int32 x, int32 y, SelectionHitResult* SelArea) HitTestSelection;
				public new function HRESULT(IInkPicture *self, InkApplicationGesture Gesture, int16 Listen) SetGestureStatus;
				public new function HRESULT(IInkPicture *self, InkApplicationGesture Gesture, int16* Listening) GetGestureStatus;
				public new function HRESULT(IInkPicture *self, IInkRectangle** WindowInputRectangle) GetWindowInputRectangle;
				public new function HRESULT(IInkPicture *self, IInkRectangle* WindowInputRectangle) SetWindowInputRectangle;
				public new function HRESULT(IInkPicture *self, int16 UseMouseForInput) SetAllTabletsMode;
				public new function HRESULT(IInkPicture *self, IInkTablet* Tablet) SetSingleTabletIntegratedMode;
				public new function HRESULT(IInkPicture *self, InkCollectorEventInterest EventId, int16* Listen) GetEventInterest;
				public new function HRESULT(IInkPicture *self, InkCollectorEventInterest EventId, int16 Listen) SetEventInterest;
				public new function HRESULT(IInkPicture *self, int16* Collecting) get_InkEnabled;
				public new function HRESULT(IInkPicture *self, int16 Collecting) put_InkEnabled;
				public new function HRESULT(IInkPicture *self, int16* pbool) get_Enabled;
				public new function HRESULT(IInkPicture *self, int16 vbool) put_Enabled;
			}
		}
		[CRepr]
		public struct _IInkPictureEvents : IDispatch
		{
			public const new Guid IID = .(0x60ff4fee, 0x22ff, 0x4484, 0xac, 0xc1, 0xd3, 0x08, 0xd9, 0xcd, 0x7e, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IInkRecognizer : IDispatch
		{
			public const new Guid IID = .(0x782bf7cf, 0x034b, 0x4396, 0x8a, 0x32, 0x3a, 0x18, 0x33, 0xcf, 0x6b, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* Name) mut
			{
				return VT.get_Name(&this, Name);
			}
			public HRESULT get_Vendor(BSTR* Vendor) mut
			{
				return VT.get_Vendor(&this, Vendor);
			}
			public HRESULT get_Capabilities(InkRecognizerCapabilities* CapabilitiesFlags) mut
			{
				return VT.get_Capabilities(&this, CapabilitiesFlags);
			}
			public HRESULT get_Languages(VARIANT* Languages) mut
			{
				return VT.get_Languages(&this, Languages);
			}
			public HRESULT get_SupportedProperties(VARIANT* SupportedProperties) mut
			{
				return VT.get_SupportedProperties(&this, SupportedProperties);
			}
			public HRESULT get_PreferredPacketDescription(VARIANT* PreferredPacketDescription) mut
			{
				return VT.get_PreferredPacketDescription(&this, PreferredPacketDescription);
			}
			public HRESULT CreateRecognizerContext(IInkRecognizerContext** Context) mut
			{
				return VT.CreateRecognizerContext(&this, Context);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkRecognizer *self, BSTR* Name) get_Name;
				public new function HRESULT(IInkRecognizer *self, BSTR* Vendor) get_Vendor;
				public new function HRESULT(IInkRecognizer *self, InkRecognizerCapabilities* CapabilitiesFlags) get_Capabilities;
				public new function HRESULT(IInkRecognizer *self, VARIANT* Languages) get_Languages;
				public new function HRESULT(IInkRecognizer *self, VARIANT* SupportedProperties) get_SupportedProperties;
				public new function HRESULT(IInkRecognizer *self, VARIANT* PreferredPacketDescription) get_PreferredPacketDescription;
				public new function HRESULT(IInkRecognizer *self, IInkRecognizerContext** Context) CreateRecognizerContext;
			}
		}
		[CRepr]
		public struct IInkRecognizer2 : IDispatch
		{
			public const new Guid IID = .(0x6110118a, 0x3a75, 0x4ad6, 0xb2, 0xaa, 0x04, 0xb2, 0xb7, 0x2b, 0xbe, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(BSTR* pbstrId) mut
			{
				return VT.get_Id(&this, pbstrId);
			}
			public HRESULT get_UnicodeRanges(VARIANT* UnicodeRanges) mut
			{
				return VT.get_UnicodeRanges(&this, UnicodeRanges);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkRecognizer2 *self, BSTR* pbstrId) get_Id;
				public new function HRESULT(IInkRecognizer2 *self, VARIANT* UnicodeRanges) get_UnicodeRanges;
			}
		}
		[CRepr]
		public struct IInkRecognizers : IDispatch
		{
			public const new Guid IID = .(0x9ccc4f12, 0xb0b7, 0x4a8b, 0xbf, 0x58, 0x4a, 0xec, 0xa4, 0xe8, 0xce, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get__NewEnum(IUnknown** _NewEnum) mut
			{
				return VT.get__NewEnum(&this, _NewEnum);
			}
			public HRESULT GetDefaultRecognizer(int32 lcid, IInkRecognizer** DefaultRecognizer) mut
			{
				return VT.GetDefaultRecognizer(&this, lcid, DefaultRecognizer);
			}
			public HRESULT Item(int32 Index, IInkRecognizer** InkRecognizer) mut
			{
				return VT.Item(&this, Index, InkRecognizer);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkRecognizers *self, int32* Count) get_Count;
				public new function HRESULT(IInkRecognizers *self, IUnknown** _NewEnum) get__NewEnum;
				public new function HRESULT(IInkRecognizers *self, int32 lcid, IInkRecognizer** DefaultRecognizer) GetDefaultRecognizer;
				public new function HRESULT(IInkRecognizers *self, int32 Index, IInkRecognizer** InkRecognizer) Item;
			}
		}
		[CRepr]
		public struct _IInkRecognitionEvents : IDispatch
		{
			public const new Guid IID = .(0x17bce92f, 0x2e21, 0x47fd, 0x9d, 0x33, 0x3c, 0x6a, 0xfb, 0xfd, 0x8c, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IInkRecognizerContext : IDispatch
		{
			public const new Guid IID = .(0xc68f52f9, 0x32a3, 0x4625, 0x90, 0x6c, 0x44, 0xfc, 0x23, 0xb4, 0x09, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Strokes(IInkStrokes** Strokes) mut
			{
				return VT.get_Strokes(&this, Strokes);
			}
			public HRESULT putref_Strokes(IInkStrokes* Strokes) mut
			{
				return VT.putref_Strokes(&this, Strokes);
			}
			public HRESULT get_CharacterAutoCompletionMode(InkRecognizerCharacterAutoCompletionMode* Mode) mut
			{
				return VT.get_CharacterAutoCompletionMode(&this, Mode);
			}
			public HRESULT put_CharacterAutoCompletionMode(InkRecognizerCharacterAutoCompletionMode Mode) mut
			{
				return VT.put_CharacterAutoCompletionMode(&this, Mode);
			}
			public HRESULT get_Factoid(BSTR* Factoid) mut
			{
				return VT.get_Factoid(&this, Factoid);
			}
			public HRESULT put_Factoid(BSTR factoid) mut
			{
				return VT.put_Factoid(&this, factoid);
			}
			public HRESULT get_Guide(IInkRecognizerGuide** RecognizerGuide) mut
			{
				return VT.get_Guide(&this, RecognizerGuide);
			}
			public HRESULT putref_Guide(IInkRecognizerGuide* RecognizerGuide) mut
			{
				return VT.putref_Guide(&this, RecognizerGuide);
			}
			public HRESULT get_PrefixText(BSTR* Prefix) mut
			{
				return VT.get_PrefixText(&this, Prefix);
			}
			public HRESULT put_PrefixText(BSTR Prefix) mut
			{
				return VT.put_PrefixText(&this, Prefix);
			}
			public HRESULT get_SuffixText(BSTR* Suffix) mut
			{
				return VT.get_SuffixText(&this, Suffix);
			}
			public HRESULT put_SuffixText(BSTR Suffix) mut
			{
				return VT.put_SuffixText(&this, Suffix);
			}
			public HRESULT get_RecognitionFlags(InkRecognitionModes* Modes) mut
			{
				return VT.get_RecognitionFlags(&this, Modes);
			}
			public HRESULT put_RecognitionFlags(InkRecognitionModes Modes) mut
			{
				return VT.put_RecognitionFlags(&this, Modes);
			}
			public HRESULT get_WordList(IInkWordList** WordList) mut
			{
				return VT.get_WordList(&this, WordList);
			}
			public HRESULT putref_WordList(IInkWordList* WordList) mut
			{
				return VT.putref_WordList(&this, WordList);
			}
			public HRESULT get_Recognizer(IInkRecognizer** Recognizer) mut
			{
				return VT.get_Recognizer(&this, Recognizer);
			}
			public HRESULT Recognize(InkRecognitionStatus* RecognitionStatus, IInkRecognitionResult** RecognitionResult) mut
			{
				return VT.Recognize(&this, RecognitionStatus, RecognitionResult);
			}
			public HRESULT StopBackgroundRecognition() mut
			{
				return VT.StopBackgroundRecognition(&this);
			}
			public HRESULT EndInkInput() mut
			{
				return VT.EndInkInput(&this);
			}
			public HRESULT BackgroundRecognize(VARIANT CustomData) mut
			{
				return VT.BackgroundRecognize(&this, CustomData);
			}
			public HRESULT BackgroundRecognizeWithAlternates(VARIANT CustomData) mut
			{
				return VT.BackgroundRecognizeWithAlternates(&this, CustomData);
			}
			public HRESULT Clone(IInkRecognizerContext** RecoContext) mut
			{
				return VT.Clone(&this, RecoContext);
			}
			public HRESULT IsStringSupported(BSTR String, int16* Supported) mut
			{
				return VT.IsStringSupported(&this, String, Supported);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkRecognizerContext *self, IInkStrokes** Strokes) get_Strokes;
				public new function HRESULT(IInkRecognizerContext *self, IInkStrokes* Strokes) putref_Strokes;
				public new function HRESULT(IInkRecognizerContext *self, InkRecognizerCharacterAutoCompletionMode* Mode) get_CharacterAutoCompletionMode;
				public new function HRESULT(IInkRecognizerContext *self, InkRecognizerCharacterAutoCompletionMode Mode) put_CharacterAutoCompletionMode;
				public new function HRESULT(IInkRecognizerContext *self, BSTR* Factoid) get_Factoid;
				public new function HRESULT(IInkRecognizerContext *self, BSTR factoid) put_Factoid;
				public new function HRESULT(IInkRecognizerContext *self, IInkRecognizerGuide** RecognizerGuide) get_Guide;
				public new function HRESULT(IInkRecognizerContext *self, IInkRecognizerGuide* RecognizerGuide) putref_Guide;
				public new function HRESULT(IInkRecognizerContext *self, BSTR* Prefix) get_PrefixText;
				public new function HRESULT(IInkRecognizerContext *self, BSTR Prefix) put_PrefixText;
				public new function HRESULT(IInkRecognizerContext *self, BSTR* Suffix) get_SuffixText;
				public new function HRESULT(IInkRecognizerContext *self, BSTR Suffix) put_SuffixText;
				public new function HRESULT(IInkRecognizerContext *self, InkRecognitionModes* Modes) get_RecognitionFlags;
				public new function HRESULT(IInkRecognizerContext *self, InkRecognitionModes Modes) put_RecognitionFlags;
				public new function HRESULT(IInkRecognizerContext *self, IInkWordList** WordList) get_WordList;
				public new function HRESULT(IInkRecognizerContext *self, IInkWordList* WordList) putref_WordList;
				public new function HRESULT(IInkRecognizerContext *self, IInkRecognizer** Recognizer) get_Recognizer;
				public new function HRESULT(IInkRecognizerContext *self, InkRecognitionStatus* RecognitionStatus, IInkRecognitionResult** RecognitionResult) Recognize;
				public new function HRESULT(IInkRecognizerContext *self) StopBackgroundRecognition;
				public new function HRESULT(IInkRecognizerContext *self) EndInkInput;
				public new function HRESULT(IInkRecognizerContext *self, VARIANT CustomData) BackgroundRecognize;
				public new function HRESULT(IInkRecognizerContext *self, VARIANT CustomData) BackgroundRecognizeWithAlternates;
				public new function HRESULT(IInkRecognizerContext *self, IInkRecognizerContext** RecoContext) Clone;
				public new function HRESULT(IInkRecognizerContext *self, BSTR String, int16* Supported) IsStringSupported;
			}
		}
		[CRepr]
		public struct IInkRecognizerContext2 : IDispatch
		{
			public const new Guid IID = .(0xd6f0e32f, 0x73d8, 0x408e, 0x8e, 0x9f, 0x5f, 0xea, 0x59, 0x2c, 0x36, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EnabledUnicodeRanges(VARIANT* UnicodeRanges) mut
			{
				return VT.get_EnabledUnicodeRanges(&this, UnicodeRanges);
			}
			public HRESULT put_EnabledUnicodeRanges(VARIANT UnicodeRanges) mut
			{
				return VT.put_EnabledUnicodeRanges(&this, UnicodeRanges);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkRecognizerContext2 *self, VARIANT* UnicodeRanges) get_EnabledUnicodeRanges;
				public new function HRESULT(IInkRecognizerContext2 *self, VARIANT UnicodeRanges) put_EnabledUnicodeRanges;
			}
		}
		[CRepr]
		public struct IInkRecognitionResult : IDispatch
		{
			public const new Guid IID = .(0x3bc129a8, 0x86cd, 0x45ad, 0xbd, 0xe8, 0xe0, 0xd3, 0x2d, 0x61, 0xc1, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TopString(BSTR* TopString) mut
			{
				return VT.get_TopString(&this, TopString);
			}
			public HRESULT get_TopAlternate(IInkRecognitionAlternate** TopAlternate) mut
			{
				return VT.get_TopAlternate(&this, TopAlternate);
			}
			public HRESULT get_TopConfidence(InkRecognitionConfidence* TopConfidence) mut
			{
				return VT.get_TopConfidence(&this, TopConfidence);
			}
			public HRESULT get_Strokes(IInkStrokes** Strokes) mut
			{
				return VT.get_Strokes(&this, Strokes);
			}
			public HRESULT AlternatesFromSelection(int32 selectionStart, int32 selectionLength, int32 maximumAlternates, IInkRecognitionAlternates** AlternatesFromSelection) mut
			{
				return VT.AlternatesFromSelection(&this, selectionStart, selectionLength, maximumAlternates, AlternatesFromSelection);
			}
			public HRESULT ModifyTopAlternate(IInkRecognitionAlternate* Alternate) mut
			{
				return VT.ModifyTopAlternate(&this, Alternate);
			}
			public HRESULT SetResultOnStrokes() mut
			{
				return VT.SetResultOnStrokes(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkRecognitionResult *self, BSTR* TopString) get_TopString;
				public new function HRESULT(IInkRecognitionResult *self, IInkRecognitionAlternate** TopAlternate) get_TopAlternate;
				public new function HRESULT(IInkRecognitionResult *self, InkRecognitionConfidence* TopConfidence) get_TopConfidence;
				public new function HRESULT(IInkRecognitionResult *self, IInkStrokes** Strokes) get_Strokes;
				public new function HRESULT(IInkRecognitionResult *self, int32 selectionStart, int32 selectionLength, int32 maximumAlternates, IInkRecognitionAlternates** AlternatesFromSelection) AlternatesFromSelection;
				public new function HRESULT(IInkRecognitionResult *self, IInkRecognitionAlternate* Alternate) ModifyTopAlternate;
				public new function HRESULT(IInkRecognitionResult *self) SetResultOnStrokes;
			}
		}
		[CRepr]
		public struct IInkRecognitionAlternate : IDispatch
		{
			public const new Guid IID = .(0xb7e660ad, 0x77e4, 0x429b, 0xad, 0xda, 0x87, 0x37, 0x80, 0xd1, 0xfc, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_String(BSTR* RecoString) mut
			{
				return VT.get_String(&this, RecoString);
			}
			public HRESULT get_Confidence(InkRecognitionConfidence* Confidence) mut
			{
				return VT.get_Confidence(&this, Confidence);
			}
			public HRESULT get_Baseline(VARIANT* Baseline) mut
			{
				return VT.get_Baseline(&this, Baseline);
			}
			public HRESULT get_Midline(VARIANT* Midline) mut
			{
				return VT.get_Midline(&this, Midline);
			}
			public HRESULT get_Ascender(VARIANT* Ascender) mut
			{
				return VT.get_Ascender(&this, Ascender);
			}
			public HRESULT get_Descender(VARIANT* Descender) mut
			{
				return VT.get_Descender(&this, Descender);
			}
			public HRESULT get_LineNumber(int32* LineNumber) mut
			{
				return VT.get_LineNumber(&this, LineNumber);
			}
			public HRESULT get_Strokes(IInkStrokes** Strokes) mut
			{
				return VT.get_Strokes(&this, Strokes);
			}
			public HRESULT get_LineAlternates(IInkRecognitionAlternates** LineAlternates) mut
			{
				return VT.get_LineAlternates(&this, LineAlternates);
			}
			public HRESULT get_ConfidenceAlternates(IInkRecognitionAlternates** ConfidenceAlternates) mut
			{
				return VT.get_ConfidenceAlternates(&this, ConfidenceAlternates);
			}
			public HRESULT GetStrokesFromStrokeRanges(IInkStrokes* Strokes, IInkStrokes** GetStrokesFromStrokeRanges) mut
			{
				return VT.GetStrokesFromStrokeRanges(&this, Strokes, GetStrokesFromStrokeRanges);
			}
			public HRESULT GetStrokesFromTextRange(int32* selectionStart, int32* selectionLength, IInkStrokes** GetStrokesFromTextRange) mut
			{
				return VT.GetStrokesFromTextRange(&this, selectionStart, selectionLength, GetStrokesFromTextRange);
			}
			public HRESULT GetTextRangeFromStrokes(IInkStrokes* Strokes, int32* selectionStart, int32* selectionLength) mut
			{
				return VT.GetTextRangeFromStrokes(&this, Strokes, selectionStart, selectionLength);
			}
			public HRESULT AlternatesWithConstantPropertyValues(BSTR PropertyType, IInkRecognitionAlternates** AlternatesWithConstantPropertyValues) mut
			{
				return VT.AlternatesWithConstantPropertyValues(&this, PropertyType, AlternatesWithConstantPropertyValues);
			}
			public HRESULT GetPropertyValue(BSTR PropertyType, VARIANT* PropertyValue) mut
			{
				return VT.GetPropertyValue(&this, PropertyType, PropertyValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkRecognitionAlternate *self, BSTR* RecoString) get_String;
				public new function HRESULT(IInkRecognitionAlternate *self, InkRecognitionConfidence* Confidence) get_Confidence;
				public new function HRESULT(IInkRecognitionAlternate *self, VARIANT* Baseline) get_Baseline;
				public new function HRESULT(IInkRecognitionAlternate *self, VARIANT* Midline) get_Midline;
				public new function HRESULT(IInkRecognitionAlternate *self, VARIANT* Ascender) get_Ascender;
				public new function HRESULT(IInkRecognitionAlternate *self, VARIANT* Descender) get_Descender;
				public new function HRESULT(IInkRecognitionAlternate *self, int32* LineNumber) get_LineNumber;
				public new function HRESULT(IInkRecognitionAlternate *self, IInkStrokes** Strokes) get_Strokes;
				public new function HRESULT(IInkRecognitionAlternate *self, IInkRecognitionAlternates** LineAlternates) get_LineAlternates;
				public new function HRESULT(IInkRecognitionAlternate *self, IInkRecognitionAlternates** ConfidenceAlternates) get_ConfidenceAlternates;
				public new function HRESULT(IInkRecognitionAlternate *self, IInkStrokes* Strokes, IInkStrokes** GetStrokesFromStrokeRanges) GetStrokesFromStrokeRanges;
				public new function HRESULT(IInkRecognitionAlternate *self, int32* selectionStart, int32* selectionLength, IInkStrokes** GetStrokesFromTextRange) GetStrokesFromTextRange;
				public new function HRESULT(IInkRecognitionAlternate *self, IInkStrokes* Strokes, int32* selectionStart, int32* selectionLength) GetTextRangeFromStrokes;
				public new function HRESULT(IInkRecognitionAlternate *self, BSTR PropertyType, IInkRecognitionAlternates** AlternatesWithConstantPropertyValues) AlternatesWithConstantPropertyValues;
				public new function HRESULT(IInkRecognitionAlternate *self, BSTR PropertyType, VARIANT* PropertyValue) GetPropertyValue;
			}
		}
		[CRepr]
		public struct IInkRecognitionAlternates : IDispatch
		{
			public const new Guid IID = .(0x286a167f, 0x9f19, 0x4c61, 0x9d, 0x53, 0x4f, 0x07, 0xbe, 0x62, 0x2b, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get__NewEnum(IUnknown** _NewEnum) mut
			{
				return VT.get__NewEnum(&this, _NewEnum);
			}
			public HRESULT get_Strokes(IInkStrokes** Strokes) mut
			{
				return VT.get_Strokes(&this, Strokes);
			}
			public HRESULT Item(int32 Index, IInkRecognitionAlternate** InkRecoAlternate) mut
			{
				return VT.Item(&this, Index, InkRecoAlternate);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkRecognitionAlternates *self, int32* Count) get_Count;
				public new function HRESULT(IInkRecognitionAlternates *self, IUnknown** _NewEnum) get__NewEnum;
				public new function HRESULT(IInkRecognitionAlternates *self, IInkStrokes** Strokes) get_Strokes;
				public new function HRESULT(IInkRecognitionAlternates *self, int32 Index, IInkRecognitionAlternate** InkRecoAlternate) Item;
			}
		}
		[CRepr]
		public struct IInkRecognizerGuide : IDispatch
		{
			public const new Guid IID = .(0xd934be07, 0x7b84, 0x4208, 0x91, 0x36, 0x83, 0xc2, 0x09, 0x94, 0xe9, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_WritingBox(IInkRectangle** Rectangle) mut
			{
				return VT.get_WritingBox(&this, Rectangle);
			}
			public HRESULT put_WritingBox(IInkRectangle* Rectangle) mut
			{
				return VT.put_WritingBox(&this, Rectangle);
			}
			public HRESULT get_DrawnBox(IInkRectangle** Rectangle) mut
			{
				return VT.get_DrawnBox(&this, Rectangle);
			}
			public HRESULT put_DrawnBox(IInkRectangle* Rectangle) mut
			{
				return VT.put_DrawnBox(&this, Rectangle);
			}
			public HRESULT get_Rows(int32* Units) mut
			{
				return VT.get_Rows(&this, Units);
			}
			public HRESULT put_Rows(int32 Units) mut
			{
				return VT.put_Rows(&this, Units);
			}
			public HRESULT get_Columns(int32* Units) mut
			{
				return VT.get_Columns(&this, Units);
			}
			public HRESULT put_Columns(int32 Units) mut
			{
				return VT.put_Columns(&this, Units);
			}
			public HRESULT get_Midline(int32* Units) mut
			{
				return VT.get_Midline(&this, Units);
			}
			public HRESULT put_Midline(int32 Units) mut
			{
				return VT.put_Midline(&this, Units);
			}
			public HRESULT get_GuideData(InkRecoGuide* pRecoGuide) mut
			{
				return VT.get_GuideData(&this, pRecoGuide);
			}
			public HRESULT put_GuideData(InkRecoGuide recoGuide) mut
			{
				return VT.put_GuideData(&this, recoGuide);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkRecognizerGuide *self, IInkRectangle** Rectangle) get_WritingBox;
				public new function HRESULT(IInkRecognizerGuide *self, IInkRectangle* Rectangle) put_WritingBox;
				public new function HRESULT(IInkRecognizerGuide *self, IInkRectangle** Rectangle) get_DrawnBox;
				public new function HRESULT(IInkRecognizerGuide *self, IInkRectangle* Rectangle) put_DrawnBox;
				public new function HRESULT(IInkRecognizerGuide *self, int32* Units) get_Rows;
				public new function HRESULT(IInkRecognizerGuide *self, int32 Units) put_Rows;
				public new function HRESULT(IInkRecognizerGuide *self, int32* Units) get_Columns;
				public new function HRESULT(IInkRecognizerGuide *self, int32 Units) put_Columns;
				public new function HRESULT(IInkRecognizerGuide *self, int32* Units) get_Midline;
				public new function HRESULT(IInkRecognizerGuide *self, int32 Units) put_Midline;
				public new function HRESULT(IInkRecognizerGuide *self, InkRecoGuide* pRecoGuide) get_GuideData;
				public new function HRESULT(IInkRecognizerGuide *self, InkRecoGuide recoGuide) put_GuideData;
			}
		}
		[CRepr]
		public struct IInkWordList : IDispatch
		{
			public const new Guid IID = .(0x76ba3491, 0xcb2f, 0x406b, 0x99, 0x61, 0x0e, 0x0c, 0x4c, 0xda, 0xae, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddWord(BSTR NewWord) mut
			{
				return VT.AddWord(&this, NewWord);
			}
			public HRESULT RemoveWord(BSTR RemoveWord) mut
			{
				return VT.RemoveWord(&this, RemoveWord);
			}
			public HRESULT Merge(IInkWordList* MergeWordList) mut
			{
				return VT.Merge(&this, MergeWordList);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkWordList *self, BSTR NewWord) AddWord;
				public new function HRESULT(IInkWordList *self, BSTR RemoveWord) RemoveWord;
				public new function HRESULT(IInkWordList *self, IInkWordList* MergeWordList) Merge;
			}
		}
		[CRepr]
		public struct IInkWordList2 : IDispatch
		{
			public const new Guid IID = .(0x14542586, 0x11bf, 0x4f5f, 0xb6, 0xe7, 0x49, 0xd0, 0x74, 0x4a, 0xab, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddWords(BSTR NewWords) mut
			{
				return VT.AddWords(&this, NewWords);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkWordList2 *self, BSTR NewWords) AddWords;
			}
		}
		[CRepr]
		public struct IInk : IDispatch
		{
			public const new Guid IID = .(0x03f8e511, 0x43a1, 0x11d3, 0x8b, 0xb6, 0x00, 0x80, 0xc7, 0xd6, 0xba, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IInkLineInfo : IUnknown
		{
			public const new Guid IID = .(0x9c1c5ad6, 0xf22f, 0x4de4, 0xb4, 0x53, 0xa2, 0xcc, 0x48, 0x2e, 0x7c, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFormat(INKMETRIC* pim) mut
			{
				return VT.SetFormat(&this, pim);
			}
			public HRESULT GetFormat(INKMETRIC* pim) mut
			{
				return VT.GetFormat(&this, pim);
			}
			public HRESULT GetInkExtent(INKMETRIC* pim, uint32* pnWidth) mut
			{
				return VT.GetInkExtent(&this, pim, pnWidth);
			}
			public HRESULT GetCandidate(uint32 nCandidateNum, PWSTR pwcRecogWord, uint32* pcwcRecogWord, uint32 dwFlags) mut
			{
				return VT.GetCandidate(&this, nCandidateNum, pwcRecogWord, pcwcRecogWord, dwFlags);
			}
			public HRESULT SetCandidate(uint32 nCandidateNum, PWSTR strRecogWord) mut
			{
				return VT.SetCandidate(&this, nCandidateNum, strRecogWord);
			}
			public HRESULT Recognize() mut
			{
				return VT.Recognize(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInkLineInfo *self, INKMETRIC* pim) SetFormat;
				public new function HRESULT(IInkLineInfo *self, INKMETRIC* pim) GetFormat;
				public new function HRESULT(IInkLineInfo *self, INKMETRIC* pim, uint32* pnWidth) GetInkExtent;
				public new function HRESULT(IInkLineInfo *self, uint32 nCandidateNum, PWSTR pwcRecogWord, uint32* pcwcRecogWord, uint32 dwFlags) GetCandidate;
				public new function HRESULT(IInkLineInfo *self, uint32 nCandidateNum, PWSTR strRecogWord) SetCandidate;
				public new function HRESULT(IInkLineInfo *self) Recognize;
			}
		}
		[CRepr]
		public struct ISketchInk : IDispatch
		{
			public const new Guid IID = .(0xb4563688, 0x98eb, 0x4646, 0xb2, 0x79, 0x44, 0xda, 0x14, 0xd4, 0x57, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IInkDivider : IDispatch
		{
			public const new Guid IID = .(0x5de00405, 0xf9a4, 0x4651, 0xb0, 0xc5, 0xc3, 0x17, 0xde, 0xfd, 0x58, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Strokes(IInkStrokes** Strokes) mut
			{
				return VT.get_Strokes(&this, Strokes);
			}
			public HRESULT putref_Strokes(IInkStrokes* Strokes) mut
			{
				return VT.putref_Strokes(&this, Strokes);
			}
			public HRESULT get_RecognizerContext(IInkRecognizerContext** RecognizerContext) mut
			{
				return VT.get_RecognizerContext(&this, RecognizerContext);
			}
			public HRESULT putref_RecognizerContext(IInkRecognizerContext* RecognizerContext) mut
			{
				return VT.putref_RecognizerContext(&this, RecognizerContext);
			}
			public HRESULT get_LineHeight(int32* LineHeight) mut
			{
				return VT.get_LineHeight(&this, LineHeight);
			}
			public HRESULT put_LineHeight(int32 LineHeight) mut
			{
				return VT.put_LineHeight(&this, LineHeight);
			}
			public HRESULT Divide(IInkDivisionResult** InkDivisionResult) mut
			{
				return VT.Divide(&this, InkDivisionResult);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkDivider *self, IInkStrokes** Strokes) get_Strokes;
				public new function HRESULT(IInkDivider *self, IInkStrokes* Strokes) putref_Strokes;
				public new function HRESULT(IInkDivider *self, IInkRecognizerContext** RecognizerContext) get_RecognizerContext;
				public new function HRESULT(IInkDivider *self, IInkRecognizerContext* RecognizerContext) putref_RecognizerContext;
				public new function HRESULT(IInkDivider *self, int32* LineHeight) get_LineHeight;
				public new function HRESULT(IInkDivider *self, int32 LineHeight) put_LineHeight;
				public new function HRESULT(IInkDivider *self, IInkDivisionResult** InkDivisionResult) Divide;
			}
		}
		[CRepr]
		public struct IInkDivisionResult : IDispatch
		{
			public const new Guid IID = .(0x2dbec0a7, 0x74c7, 0x4b38, 0x81, 0xeb, 0xaa, 0x8e, 0xf0, 0xc2, 0x49, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Strokes(IInkStrokes** Strokes) mut
			{
				return VT.get_Strokes(&this, Strokes);
			}
			public HRESULT ResultByType(InkDivisionType divisionType, IInkDivisionUnits** InkDivisionUnits) mut
			{
				return VT.ResultByType(&this, divisionType, InkDivisionUnits);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkDivisionResult *self, IInkStrokes** Strokes) get_Strokes;
				public new function HRESULT(IInkDivisionResult *self, InkDivisionType divisionType, IInkDivisionUnits** InkDivisionUnits) ResultByType;
			}
		}
		[CRepr]
		public struct IInkDivisionUnit : IDispatch
		{
			public const new Guid IID = .(0x85aee342, 0x48b0, 0x4244, 0x9d, 0xd5, 0x1e, 0xd4, 0x35, 0x41, 0x0f, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Strokes(IInkStrokes** Strokes) mut
			{
				return VT.get_Strokes(&this, Strokes);
			}
			public HRESULT get_DivisionType(InkDivisionType* divisionType) mut
			{
				return VT.get_DivisionType(&this, divisionType);
			}
			public HRESULT get_RecognizedString(BSTR* RecoString) mut
			{
				return VT.get_RecognizedString(&this, RecoString);
			}
			public HRESULT get_RotationTransform(IInkTransform** RotationTransform) mut
			{
				return VT.get_RotationTransform(&this, RotationTransform);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkDivisionUnit *self, IInkStrokes** Strokes) get_Strokes;
				public new function HRESULT(IInkDivisionUnit *self, InkDivisionType* divisionType) get_DivisionType;
				public new function HRESULT(IInkDivisionUnit *self, BSTR* RecoString) get_RecognizedString;
				public new function HRESULT(IInkDivisionUnit *self, IInkTransform** RotationTransform) get_RotationTransform;
			}
		}
		[CRepr]
		public struct IInkDivisionUnits : IDispatch
		{
			public const new Guid IID = .(0x1bb5ddc2, 0x31cc, 0x4135, 0xab, 0x82, 0x2c, 0x66, 0xc9, 0xf0, 0x0c, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get__NewEnum(IUnknown** _NewEnum) mut
			{
				return VT.get__NewEnum(&this, _NewEnum);
			}
			public HRESULT Item(int32 Index, IInkDivisionUnit** InkDivisionUnit) mut
			{
				return VT.Item(&this, Index, InkDivisionUnit);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkDivisionUnits *self, int32* Count) get_Count;
				public new function HRESULT(IInkDivisionUnits *self, IUnknown** _NewEnum) get__NewEnum;
				public new function HRESULT(IInkDivisionUnits *self, int32 Index, IInkDivisionUnit** InkDivisionUnit) Item;
			}
		}
		[CRepr]
		public struct IPenInputPanel : IDispatch
		{
			public const new Guid IID = .(0xfa7a4083, 0x5747, 0x4040, 0xa1, 0x82, 0x0b, 0x0e, 0x9f, 0xd4, 0xfa, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Busy(int16* Busy) mut
			{
				return VT.get_Busy(&this, Busy);
			}
			public HRESULT get_Factoid(BSTR* Factoid) mut
			{
				return VT.get_Factoid(&this, Factoid);
			}
			public HRESULT put_Factoid(BSTR Factoid) mut
			{
				return VT.put_Factoid(&this, Factoid);
			}
			public HRESULT get_AttachedEditWindow(int32* AttachedEditWindow) mut
			{
				return VT.get_AttachedEditWindow(&this, AttachedEditWindow);
			}
			public HRESULT put_AttachedEditWindow(int32 AttachedEditWindow) mut
			{
				return VT.put_AttachedEditWindow(&this, AttachedEditWindow);
			}
			public HRESULT get_CurrentPanel(PanelType* CurrentPanel) mut
			{
				return VT.get_CurrentPanel(&this, CurrentPanel);
			}
			public HRESULT put_CurrentPanel(PanelType CurrentPanel) mut
			{
				return VT.put_CurrentPanel(&this, CurrentPanel);
			}
			public HRESULT get_DefaultPanel(PanelType* pDefaultPanel) mut
			{
				return VT.get_DefaultPanel(&this, pDefaultPanel);
			}
			public HRESULT put_DefaultPanel(PanelType DefaultPanel) mut
			{
				return VT.put_DefaultPanel(&this, DefaultPanel);
			}
			public HRESULT get_Visible(int16* Visible) mut
			{
				return VT.get_Visible(&this, Visible);
			}
			public HRESULT put_Visible(int16 Visible) mut
			{
				return VT.put_Visible(&this, Visible);
			}
			public HRESULT get_Top(int32* Top) mut
			{
				return VT.get_Top(&this, Top);
			}
			public HRESULT get_Left(int32* Left) mut
			{
				return VT.get_Left(&this, Left);
			}
			public HRESULT get_Width(int32* Width) mut
			{
				return VT.get_Width(&this, Width);
			}
			public HRESULT get_Height(int32* Height) mut
			{
				return VT.get_Height(&this, Height);
			}
			public HRESULT get_VerticalOffset(int32* VerticalOffset) mut
			{
				return VT.get_VerticalOffset(&this, VerticalOffset);
			}
			public HRESULT put_VerticalOffset(int32 VerticalOffset) mut
			{
				return VT.put_VerticalOffset(&this, VerticalOffset);
			}
			public HRESULT get_HorizontalOffset(int32* HorizontalOffset) mut
			{
				return VT.get_HorizontalOffset(&this, HorizontalOffset);
			}
			public HRESULT put_HorizontalOffset(int32 HorizontalOffset) mut
			{
				return VT.put_HorizontalOffset(&this, HorizontalOffset);
			}
			public HRESULT get_AutoShow(int16* pAutoShow) mut
			{
				return VT.get_AutoShow(&this, pAutoShow);
			}
			public HRESULT put_AutoShow(int16 AutoShow) mut
			{
				return VT.put_AutoShow(&this, AutoShow);
			}
			public HRESULT MoveTo(int32 Left, int32 Top) mut
			{
				return VT.MoveTo(&this, Left, Top);
			}
			public HRESULT CommitPendingInput() mut
			{
				return VT.CommitPendingInput(&this);
			}
			public HRESULT Refresh() mut
			{
				return VT.Refresh(&this);
			}
			public HRESULT EnableTsf(int16 Enable) mut
			{
				return VT.EnableTsf(&this, Enable);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IPenInputPanel *self, int16* Busy) get_Busy;
				public new function HRESULT(IPenInputPanel *self, BSTR* Factoid) get_Factoid;
				public new function HRESULT(IPenInputPanel *self, BSTR Factoid) put_Factoid;
				public new function HRESULT(IPenInputPanel *self, int32* AttachedEditWindow) get_AttachedEditWindow;
				public new function HRESULT(IPenInputPanel *self, int32 AttachedEditWindow) put_AttachedEditWindow;
				public new function HRESULT(IPenInputPanel *self, PanelType* CurrentPanel) get_CurrentPanel;
				public new function HRESULT(IPenInputPanel *self, PanelType CurrentPanel) put_CurrentPanel;
				public new function HRESULT(IPenInputPanel *self, PanelType* pDefaultPanel) get_DefaultPanel;
				public new function HRESULT(IPenInputPanel *self, PanelType DefaultPanel) put_DefaultPanel;
				public new function HRESULT(IPenInputPanel *self, int16* Visible) get_Visible;
				public new function HRESULT(IPenInputPanel *self, int16 Visible) put_Visible;
				public new function HRESULT(IPenInputPanel *self, int32* Top) get_Top;
				public new function HRESULT(IPenInputPanel *self, int32* Left) get_Left;
				public new function HRESULT(IPenInputPanel *self, int32* Width) get_Width;
				public new function HRESULT(IPenInputPanel *self, int32* Height) get_Height;
				public new function HRESULT(IPenInputPanel *self, int32* VerticalOffset) get_VerticalOffset;
				public new function HRESULT(IPenInputPanel *self, int32 VerticalOffset) put_VerticalOffset;
				public new function HRESULT(IPenInputPanel *self, int32* HorizontalOffset) get_HorizontalOffset;
				public new function HRESULT(IPenInputPanel *self, int32 HorizontalOffset) put_HorizontalOffset;
				public new function HRESULT(IPenInputPanel *self, int16* pAutoShow) get_AutoShow;
				public new function HRESULT(IPenInputPanel *self, int16 AutoShow) put_AutoShow;
				public new function HRESULT(IPenInputPanel *self, int32 Left, int32 Top) MoveTo;
				public new function HRESULT(IPenInputPanel *self) CommitPendingInput;
				public new function HRESULT(IPenInputPanel *self) Refresh;
				public new function HRESULT(IPenInputPanel *self, int16 Enable) EnableTsf;
			}
		}
		[CRepr]
		public struct _IPenInputPanelEvents : IDispatch
		{
			public const new Guid IID = .(0xb7e489da, 0x3719, 0x439f, 0x84, 0x8f, 0xe7, 0xac, 0xbd, 0x82, 0x0f, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IHandwrittenTextInsertion : IUnknown
		{
			public const new Guid IID = .(0x56fdea97, 0xecd6, 0x43e7, 0xaa, 0x3a, 0x81, 0x6b, 0xe7, 0x78, 0x58, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InsertRecognitionResultsArray(SAFEARRAY* psaAlternates, uint32 locale, BOOL fAlternateContainsAutoSpacingInformation) mut
			{
				return VT.InsertRecognitionResultsArray(&this, psaAlternates, locale, fAlternateContainsAutoSpacingInformation);
			}
			public HRESULT InsertInkRecognitionResult(IInkRecognitionResult* pIInkRecoResult, uint32 locale, BOOL fAlternateContainsAutoSpacingInformation) mut
			{
				return VT.InsertInkRecognitionResult(&this, pIInkRecoResult, locale, fAlternateContainsAutoSpacingInformation);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IHandwrittenTextInsertion *self, SAFEARRAY* psaAlternates, uint32 locale, BOOL fAlternateContainsAutoSpacingInformation) InsertRecognitionResultsArray;
				public new function HRESULT(IHandwrittenTextInsertion *self, IInkRecognitionResult* pIInkRecoResult, uint32 locale, BOOL fAlternateContainsAutoSpacingInformation) InsertInkRecognitionResult;
			}
		}
		[CRepr]
		public struct ITextInputPanelEventSink : IUnknown
		{
			public const new Guid IID = .(0x27560408, 0x8e64, 0x4fe1, 0x80, 0x4e, 0x42, 0x12, 0x01, 0x58, 0x4b, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InPlaceStateChanging(InPlaceState oldInPlaceState, InPlaceState newInPlaceState) mut
			{
				return VT.InPlaceStateChanging(&this, oldInPlaceState, newInPlaceState);
			}
			public HRESULT InPlaceStateChanged(InPlaceState oldInPlaceState, InPlaceState newInPlaceState) mut
			{
				return VT.InPlaceStateChanged(&this, oldInPlaceState, newInPlaceState);
			}
			public HRESULT InPlaceSizeChanging(RECT oldBoundingRectangle, RECT newBoundingRectangle) mut
			{
				return VT.InPlaceSizeChanging(&this, oldBoundingRectangle, newBoundingRectangle);
			}
			public HRESULT InPlaceSizeChanged(RECT oldBoundingRectangle, RECT newBoundingRectangle) mut
			{
				return VT.InPlaceSizeChanged(&this, oldBoundingRectangle, newBoundingRectangle);
			}
			public HRESULT InputAreaChanging(PanelInputArea oldInputArea, PanelInputArea newInputArea) mut
			{
				return VT.InputAreaChanging(&this, oldInputArea, newInputArea);
			}
			public HRESULT InputAreaChanged(PanelInputArea oldInputArea, PanelInputArea newInputArea) mut
			{
				return VT.InputAreaChanged(&this, oldInputArea, newInputArea);
			}
			public HRESULT CorrectionModeChanging(CorrectionMode oldCorrectionMode, CorrectionMode newCorrectionMode) mut
			{
				return VT.CorrectionModeChanging(&this, oldCorrectionMode, newCorrectionMode);
			}
			public HRESULT CorrectionModeChanged(CorrectionMode oldCorrectionMode, CorrectionMode newCorrectionMode) mut
			{
				return VT.CorrectionModeChanged(&this, oldCorrectionMode, newCorrectionMode);
			}
			public HRESULT InPlaceVisibilityChanging(BOOL oldVisible, BOOL newVisible) mut
			{
				return VT.InPlaceVisibilityChanging(&this, oldVisible, newVisible);
			}
			public HRESULT InPlaceVisibilityChanged(BOOL oldVisible, BOOL newVisible) mut
			{
				return VT.InPlaceVisibilityChanged(&this, oldVisible, newVisible);
			}
			public HRESULT TextInserting(SAFEARRAY* Ink) mut
			{
				return VT.TextInserting(&this, Ink);
			}
			public HRESULT TextInserted(SAFEARRAY* Ink) mut
			{
				return VT.TextInserted(&this, Ink);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITextInputPanelEventSink *self, InPlaceState oldInPlaceState, InPlaceState newInPlaceState) InPlaceStateChanging;
				public new function HRESULT(ITextInputPanelEventSink *self, InPlaceState oldInPlaceState, InPlaceState newInPlaceState) InPlaceStateChanged;
				public new function HRESULT(ITextInputPanelEventSink *self, RECT oldBoundingRectangle, RECT newBoundingRectangle) InPlaceSizeChanging;
				public new function HRESULT(ITextInputPanelEventSink *self, RECT oldBoundingRectangle, RECT newBoundingRectangle) InPlaceSizeChanged;
				public new function HRESULT(ITextInputPanelEventSink *self, PanelInputArea oldInputArea, PanelInputArea newInputArea) InputAreaChanging;
				public new function HRESULT(ITextInputPanelEventSink *self, PanelInputArea oldInputArea, PanelInputArea newInputArea) InputAreaChanged;
				public new function HRESULT(ITextInputPanelEventSink *self, CorrectionMode oldCorrectionMode, CorrectionMode newCorrectionMode) CorrectionModeChanging;
				public new function HRESULT(ITextInputPanelEventSink *self, CorrectionMode oldCorrectionMode, CorrectionMode newCorrectionMode) CorrectionModeChanged;
				public new function HRESULT(ITextInputPanelEventSink *self, BOOL oldVisible, BOOL newVisible) InPlaceVisibilityChanging;
				public new function HRESULT(ITextInputPanelEventSink *self, BOOL oldVisible, BOOL newVisible) InPlaceVisibilityChanged;
				public new function HRESULT(ITextInputPanelEventSink *self, SAFEARRAY* Ink) TextInserting;
				public new function HRESULT(ITextInputPanelEventSink *self, SAFEARRAY* Ink) TextInserted;
			}
		}
		[CRepr]
		public struct ITextInputPanel : IUnknown
		{
			public const new Guid IID = .(0x6b6a65a5, 0x6af3, 0x46c2, 0xb6, 0xea, 0x56, 0xcd, 0x1f, 0x80, 0xdf, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AttachedEditWindow(HWND* AttachedEditWindow) mut
			{
				return VT.get_AttachedEditWindow(&this, AttachedEditWindow);
			}
			public HRESULT put_AttachedEditWindow(HWND AttachedEditWindow) mut
			{
				return VT.put_AttachedEditWindow(&this, AttachedEditWindow);
			}
			public HRESULT get_CurrentInteractionMode(InteractionMode* CurrentInteractionMode) mut
			{
				return VT.get_CurrentInteractionMode(&this, CurrentInteractionMode);
			}
			public HRESULT get_DefaultInPlaceState(InPlaceState* State) mut
			{
				return VT.get_DefaultInPlaceState(&this, State);
			}
			public HRESULT put_DefaultInPlaceState(InPlaceState State) mut
			{
				return VT.put_DefaultInPlaceState(&this, State);
			}
			public HRESULT get_CurrentInPlaceState(InPlaceState* State) mut
			{
				return VT.get_CurrentInPlaceState(&this, State);
			}
			public HRESULT get_DefaultInputArea(PanelInputArea* Area) mut
			{
				return VT.get_DefaultInputArea(&this, Area);
			}
			public HRESULT put_DefaultInputArea(PanelInputArea Area) mut
			{
				return VT.put_DefaultInputArea(&this, Area);
			}
			public HRESULT get_CurrentInputArea(PanelInputArea* Area) mut
			{
				return VT.get_CurrentInputArea(&this, Area);
			}
			public HRESULT get_CurrentCorrectionMode(CorrectionMode* Mode) mut
			{
				return VT.get_CurrentCorrectionMode(&this, Mode);
			}
			public HRESULT get_PreferredInPlaceDirection(InPlaceDirection* Direction) mut
			{
				return VT.get_PreferredInPlaceDirection(&this, Direction);
			}
			public HRESULT put_PreferredInPlaceDirection(InPlaceDirection Direction) mut
			{
				return VT.put_PreferredInPlaceDirection(&this, Direction);
			}
			public HRESULT get_ExpandPostInsertionCorrection(BOOL* Expand) mut
			{
				return VT.get_ExpandPostInsertionCorrection(&this, Expand);
			}
			public HRESULT put_ExpandPostInsertionCorrection(BOOL Expand) mut
			{
				return VT.put_ExpandPostInsertionCorrection(&this, Expand);
			}
			public HRESULT get_InPlaceVisibleOnFocus(BOOL* Visible) mut
			{
				return VT.get_InPlaceVisibleOnFocus(&this, Visible);
			}
			public HRESULT put_InPlaceVisibleOnFocus(BOOL Visible) mut
			{
				return VT.put_InPlaceVisibleOnFocus(&this, Visible);
			}
			public HRESULT get_InPlaceBoundingRectangle(RECT* BoundingRectangle) mut
			{
				return VT.get_InPlaceBoundingRectangle(&this, BoundingRectangle);
			}
			public HRESULT get_PopUpCorrectionHeight(int32* Height) mut
			{
				return VT.get_PopUpCorrectionHeight(&this, Height);
			}
			public HRESULT get_PopDownCorrectionHeight(int32* Height) mut
			{
				return VT.get_PopDownCorrectionHeight(&this, Height);
			}
			public HRESULT CommitPendingInput() mut
			{
				return VT.CommitPendingInput(&this);
			}
			public HRESULT SetInPlaceVisibility(BOOL Visible) mut
			{
				return VT.SetInPlaceVisibility(&this, Visible);
			}
			public HRESULT SetInPlacePosition(int32 xPosition, int32 yPosition, CorrectionPosition position) mut
			{
				return VT.SetInPlacePosition(&this, xPosition, yPosition, position);
			}
			public HRESULT SetInPlaceHoverTargetPosition(int32 xPosition, int32 yPosition) mut
			{
				return VT.SetInPlaceHoverTargetPosition(&this, xPosition, yPosition);
			}
			public HRESULT Advise(ITextInputPanelEventSink* EventSink, uint32 EventMask) mut
			{
				return VT.Advise(&this, EventSink, EventMask);
			}
			public HRESULT Unadvise(ITextInputPanelEventSink* EventSink) mut
			{
				return VT.Unadvise(&this, EventSink);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITextInputPanel *self, HWND* AttachedEditWindow) get_AttachedEditWindow;
				public new function HRESULT(ITextInputPanel *self, HWND AttachedEditWindow) put_AttachedEditWindow;
				public new function HRESULT(ITextInputPanel *self, InteractionMode* CurrentInteractionMode) get_CurrentInteractionMode;
				public new function HRESULT(ITextInputPanel *self, InPlaceState* State) get_DefaultInPlaceState;
				public new function HRESULT(ITextInputPanel *self, InPlaceState State) put_DefaultInPlaceState;
				public new function HRESULT(ITextInputPanel *self, InPlaceState* State) get_CurrentInPlaceState;
				public new function HRESULT(ITextInputPanel *self, PanelInputArea* Area) get_DefaultInputArea;
				public new function HRESULT(ITextInputPanel *self, PanelInputArea Area) put_DefaultInputArea;
				public new function HRESULT(ITextInputPanel *self, PanelInputArea* Area) get_CurrentInputArea;
				public new function HRESULT(ITextInputPanel *self, CorrectionMode* Mode) get_CurrentCorrectionMode;
				public new function HRESULT(ITextInputPanel *self, InPlaceDirection* Direction) get_PreferredInPlaceDirection;
				public new function HRESULT(ITextInputPanel *self, InPlaceDirection Direction) put_PreferredInPlaceDirection;
				public new function HRESULT(ITextInputPanel *self, BOOL* Expand) get_ExpandPostInsertionCorrection;
				public new function HRESULT(ITextInputPanel *self, BOOL Expand) put_ExpandPostInsertionCorrection;
				public new function HRESULT(ITextInputPanel *self, BOOL* Visible) get_InPlaceVisibleOnFocus;
				public new function HRESULT(ITextInputPanel *self, BOOL Visible) put_InPlaceVisibleOnFocus;
				public new function HRESULT(ITextInputPanel *self, RECT* BoundingRectangle) get_InPlaceBoundingRectangle;
				public new function HRESULT(ITextInputPanel *self, int32* Height) get_PopUpCorrectionHeight;
				public new function HRESULT(ITextInputPanel *self, int32* Height) get_PopDownCorrectionHeight;
				public new function HRESULT(ITextInputPanel *self) CommitPendingInput;
				public new function HRESULT(ITextInputPanel *self, BOOL Visible) SetInPlaceVisibility;
				public new function HRESULT(ITextInputPanel *self, int32 xPosition, int32 yPosition, CorrectionPosition position) SetInPlacePosition;
				public new function HRESULT(ITextInputPanel *self, int32 xPosition, int32 yPosition) SetInPlaceHoverTargetPosition;
				public new function HRESULT(ITextInputPanel *self, ITextInputPanelEventSink* EventSink, uint32 EventMask) Advise;
				public new function HRESULT(ITextInputPanel *self, ITextInputPanelEventSink* EventSink) Unadvise;
			}
		}
		[CRepr]
		public struct IInputPanelWindowHandle : IUnknown
		{
			public const new Guid IID = .(0x4af81847, 0xfdc4, 0x4fc3, 0xad, 0x0b, 0x42, 0x24, 0x79, 0xc1, 0xb9, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AttachedEditWindow32(int32* AttachedEditWindow) mut
			{
				return VT.get_AttachedEditWindow32(&this, AttachedEditWindow);
			}
			public HRESULT put_AttachedEditWindow32(int32 AttachedEditWindow) mut
			{
				return VT.put_AttachedEditWindow32(&this, AttachedEditWindow);
			}
			public HRESULT get_AttachedEditWindow64(int64* AttachedEditWindow) mut
			{
				return VT.get_AttachedEditWindow64(&this, AttachedEditWindow);
			}
			public HRESULT put_AttachedEditWindow64(int64 AttachedEditWindow) mut
			{
				return VT.put_AttachedEditWindow64(&this, AttachedEditWindow);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInputPanelWindowHandle *self, int32* AttachedEditWindow) get_AttachedEditWindow32;
				public new function HRESULT(IInputPanelWindowHandle *self, int32 AttachedEditWindow) put_AttachedEditWindow32;
				public new function HRESULT(IInputPanelWindowHandle *self, int64* AttachedEditWindow) get_AttachedEditWindow64;
				public new function HRESULT(IInputPanelWindowHandle *self, int64 AttachedEditWindow) put_AttachedEditWindow64;
			}
		}
		[CRepr]
		public struct ITextInputPanelRunInfo : IUnknown
		{
			public const new Guid IID = .(0x9f424568, 0x1920, 0x48cc, 0x98, 0x11, 0xa9, 0x93, 0xcb, 0xf5, 0xad, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsTipRunning(BOOL* pfRunning) mut
			{
				return VT.IsTipRunning(&this, pfRunning);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITextInputPanelRunInfo *self, BOOL* pfRunning) IsTipRunning;
			}
		}
		[CRepr]
		public struct IInkEdit : IDispatch
		{
			public const new Guid IID = .(0xf2127a19, 0xfbfb, 0x4aed, 0x84, 0x64, 0x3f, 0x36, 0xd7, 0x8c, 0xfe, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(InkEditStatus* pStatus) mut
			{
				return VT.get_Status(&this, pStatus);
			}
			public HRESULT get_UseMouseForInput(int16* pVal) mut
			{
				return VT.get_UseMouseForInput(&this, pVal);
			}
			public HRESULT put_UseMouseForInput(int16 newVal) mut
			{
				return VT.put_UseMouseForInput(&this, newVal);
			}
			public HRESULT get_InkMode(InkMode* pVal) mut
			{
				return VT.get_InkMode(&this, pVal);
			}
			public HRESULT put_InkMode(InkMode newVal) mut
			{
				return VT.put_InkMode(&this, newVal);
			}
			public HRESULT get_InkInsertMode(InkInsertMode* pVal) mut
			{
				return VT.get_InkInsertMode(&this, pVal);
			}
			public HRESULT put_InkInsertMode(InkInsertMode newVal) mut
			{
				return VT.put_InkInsertMode(&this, newVal);
			}
			public HRESULT get_DrawingAttributes(IInkDrawingAttributes** pVal) mut
			{
				return VT.get_DrawingAttributes(&this, pVal);
			}
			public HRESULT putref_DrawingAttributes(IInkDrawingAttributes* newVal) mut
			{
				return VT.putref_DrawingAttributes(&this, newVal);
			}
			public HRESULT get_RecognitionTimeout(int32* pVal) mut
			{
				return VT.get_RecognitionTimeout(&this, pVal);
			}
			public HRESULT put_RecognitionTimeout(int32 newVal) mut
			{
				return VT.put_RecognitionTimeout(&this, newVal);
			}
			public HRESULT get_Recognizer(IInkRecognizer** pVal) mut
			{
				return VT.get_Recognizer(&this, pVal);
			}
			public HRESULT putref_Recognizer(IInkRecognizer* newVal) mut
			{
				return VT.putref_Recognizer(&this, newVal);
			}
			public HRESULT get_Factoid(BSTR* pVal) mut
			{
				return VT.get_Factoid(&this, pVal);
			}
			public HRESULT put_Factoid(BSTR newVal) mut
			{
				return VT.put_Factoid(&this, newVal);
			}
			public HRESULT get_SelInks(VARIANT* pSelInk) mut
			{
				return VT.get_SelInks(&this, pSelInk);
			}
			public HRESULT put_SelInks(VARIANT SelInk) mut
			{
				return VT.put_SelInks(&this, SelInk);
			}
			public HRESULT get_SelInksDisplayMode(InkDisplayMode* pInkDisplayMode) mut
			{
				return VT.get_SelInksDisplayMode(&this, pInkDisplayMode);
			}
			public HRESULT put_SelInksDisplayMode(InkDisplayMode InkDisplayMode) mut
			{
				return VT.put_SelInksDisplayMode(&this, InkDisplayMode);
			}
			public HRESULT Recognize() mut
			{
				return VT.Recognize(&this);
			}
			public HRESULT GetGestureStatus(InkApplicationGesture Gesture, int16* pListen) mut
			{
				return VT.GetGestureStatus(&this, Gesture, pListen);
			}
			public HRESULT SetGestureStatus(InkApplicationGesture Gesture, int16 Listen) mut
			{
				return VT.SetGestureStatus(&this, Gesture, Listen);
			}
			public HRESULT put_BackColor(uint32 clr) mut
			{
				return VT.put_BackColor(&this, clr);
			}
			public HRESULT get_BackColor(uint32* pclr) mut
			{
				return VT.get_BackColor(&this, pclr);
			}
			public HRESULT get_Appearance(AppearanceConstants* pAppearance) mut
			{
				return VT.get_Appearance(&this, pAppearance);
			}
			public HRESULT put_Appearance(AppearanceConstants pAppearance) mut
			{
				return VT.put_Appearance(&this, pAppearance);
			}
			public HRESULT get_BorderStyle(BorderStyleConstants* pBorderStyle) mut
			{
				return VT.get_BorderStyle(&this, pBorderStyle);
			}
			public HRESULT put_BorderStyle(BorderStyleConstants pBorderStyle) mut
			{
				return VT.put_BorderStyle(&this, pBorderStyle);
			}
			public HRESULT get_Hwnd(uint32* pohHwnd) mut
			{
				return VT.get_Hwnd(&this, pohHwnd);
			}
			public HRESULT get_Font(IFontDisp** ppFont) mut
			{
				return VT.get_Font(&this, ppFont);
			}
			public HRESULT putref_Font(IFontDisp* ppFont) mut
			{
				return VT.putref_Font(&this, ppFont);
			}
			public HRESULT get_Text(BSTR* pbstrText) mut
			{
				return VT.get_Text(&this, pbstrText);
			}
			public HRESULT put_Text(BSTR pbstrText) mut
			{
				return VT.put_Text(&this, pbstrText);
			}
			public HRESULT get_MouseIcon(IPictureDisp** MouseIcon) mut
			{
				return VT.get_MouseIcon(&this, MouseIcon);
			}
			public HRESULT put_MouseIcon(IPictureDisp* MouseIcon) mut
			{
				return VT.put_MouseIcon(&this, MouseIcon);
			}
			public HRESULT putref_MouseIcon(IPictureDisp* MouseIcon) mut
			{
				return VT.putref_MouseIcon(&this, MouseIcon);
			}
			public HRESULT get_MousePointer(InkMousePointer* MousePointer) mut
			{
				return VT.get_MousePointer(&this, MousePointer);
			}
			public HRESULT put_MousePointer(InkMousePointer MousePointer) mut
			{
				return VT.put_MousePointer(&this, MousePointer);
			}
			public HRESULT get_Locked(int16* pVal) mut
			{
				return VT.get_Locked(&this, pVal);
			}
			public HRESULT put_Locked(int16 newVal) mut
			{
				return VT.put_Locked(&this, newVal);
			}
			public HRESULT get_Enabled(int16* pVal) mut
			{
				return VT.get_Enabled(&this, pVal);
			}
			public HRESULT put_Enabled(int16 newVal) mut
			{
				return VT.put_Enabled(&this, newVal);
			}
			public HRESULT get_MaxLength(int32* plMaxLength) mut
			{
				return VT.get_MaxLength(&this, plMaxLength);
			}
			public HRESULT put_MaxLength(int32 lMaxLength) mut
			{
				return VT.put_MaxLength(&this, lMaxLength);
			}
			public HRESULT get_MultiLine(int16* pVal) mut
			{
				return VT.get_MultiLine(&this, pVal);
			}
			public HRESULT put_MultiLine(int16 newVal) mut
			{
				return VT.put_MultiLine(&this, newVal);
			}
			public HRESULT get_ScrollBars(ScrollBarsConstants* pVal) mut
			{
				return VT.get_ScrollBars(&this, pVal);
			}
			public HRESULT put_ScrollBars(ScrollBarsConstants newVal) mut
			{
				return VT.put_ScrollBars(&this, newVal);
			}
			public HRESULT get_DisableNoScroll(int16* pVal) mut
			{
				return VT.get_DisableNoScroll(&this, pVal);
			}
			public HRESULT put_DisableNoScroll(int16 newVal) mut
			{
				return VT.put_DisableNoScroll(&this, newVal);
			}
			public HRESULT get_SelAlignment(VARIANT* pvarSelAlignment) mut
			{
				return VT.get_SelAlignment(&this, pvarSelAlignment);
			}
			public HRESULT put_SelAlignment(VARIANT pvarSelAlignment) mut
			{
				return VT.put_SelAlignment(&this, pvarSelAlignment);
			}
			public HRESULT get_SelBold(VARIANT* pvarSelBold) mut
			{
				return VT.get_SelBold(&this, pvarSelBold);
			}
			public HRESULT put_SelBold(VARIANT pvarSelBold) mut
			{
				return VT.put_SelBold(&this, pvarSelBold);
			}
			public HRESULT get_SelItalic(VARIANT* pvarSelItalic) mut
			{
				return VT.get_SelItalic(&this, pvarSelItalic);
			}
			public HRESULT put_SelItalic(VARIANT pvarSelItalic) mut
			{
				return VT.put_SelItalic(&this, pvarSelItalic);
			}
			public HRESULT get_SelUnderline(VARIANT* pvarSelUnderline) mut
			{
				return VT.get_SelUnderline(&this, pvarSelUnderline);
			}
			public HRESULT put_SelUnderline(VARIANT pvarSelUnderline) mut
			{
				return VT.put_SelUnderline(&this, pvarSelUnderline);
			}
			public HRESULT get_SelColor(VARIANT* pvarSelColor) mut
			{
				return VT.get_SelColor(&this, pvarSelColor);
			}
			public HRESULT put_SelColor(VARIANT pvarSelColor) mut
			{
				return VT.put_SelColor(&this, pvarSelColor);
			}
			public HRESULT get_SelFontName(VARIANT* pvarSelFontName) mut
			{
				return VT.get_SelFontName(&this, pvarSelFontName);
			}
			public HRESULT put_SelFontName(VARIANT pvarSelFontName) mut
			{
				return VT.put_SelFontName(&this, pvarSelFontName);
			}
			public HRESULT get_SelFontSize(VARIANT* pvarSelFontSize) mut
			{
				return VT.get_SelFontSize(&this, pvarSelFontSize);
			}
			public HRESULT put_SelFontSize(VARIANT pvarSelFontSize) mut
			{
				return VT.put_SelFontSize(&this, pvarSelFontSize);
			}
			public HRESULT get_SelCharOffset(VARIANT* pvarSelCharOffset) mut
			{
				return VT.get_SelCharOffset(&this, pvarSelCharOffset);
			}
			public HRESULT put_SelCharOffset(VARIANT pvarSelCharOffset) mut
			{
				return VT.put_SelCharOffset(&this, pvarSelCharOffset);
			}
			public HRESULT get_TextRTF(BSTR* pbstrTextRTF) mut
			{
				return VT.get_TextRTF(&this, pbstrTextRTF);
			}
			public HRESULT put_TextRTF(BSTR pbstrTextRTF) mut
			{
				return VT.put_TextRTF(&this, pbstrTextRTF);
			}
			public HRESULT get_SelStart(int32* plSelStart) mut
			{
				return VT.get_SelStart(&this, plSelStart);
			}
			public HRESULT put_SelStart(int32 plSelStart) mut
			{
				return VT.put_SelStart(&this, plSelStart);
			}
			public HRESULT get_SelLength(int32* plSelLength) mut
			{
				return VT.get_SelLength(&this, plSelLength);
			}
			public HRESULT put_SelLength(int32 plSelLength) mut
			{
				return VT.put_SelLength(&this, plSelLength);
			}
			public HRESULT get_SelText(BSTR* pbstrSelText) mut
			{
				return VT.get_SelText(&this, pbstrSelText);
			}
			public HRESULT put_SelText(BSTR pbstrSelText) mut
			{
				return VT.put_SelText(&this, pbstrSelText);
			}
			public HRESULT get_SelRTF(BSTR* pbstrSelRTF) mut
			{
				return VT.get_SelRTF(&this, pbstrSelRTF);
			}
			public HRESULT put_SelRTF(BSTR pbstrSelRTF) mut
			{
				return VT.put_SelRTF(&this, pbstrSelRTF);
			}
			public HRESULT Refresh() mut
			{
				return VT.Refresh(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IInkEdit *self, InkEditStatus* pStatus) get_Status;
				public new function HRESULT(IInkEdit *self, int16* pVal) get_UseMouseForInput;
				public new function HRESULT(IInkEdit *self, int16 newVal) put_UseMouseForInput;
				public new function HRESULT(IInkEdit *self, InkMode* pVal) get_InkMode;
				public new function HRESULT(IInkEdit *self, InkMode newVal) put_InkMode;
				public new function HRESULT(IInkEdit *self, InkInsertMode* pVal) get_InkInsertMode;
				public new function HRESULT(IInkEdit *self, InkInsertMode newVal) put_InkInsertMode;
				public new function HRESULT(IInkEdit *self, IInkDrawingAttributes** pVal) get_DrawingAttributes;
				public new function HRESULT(IInkEdit *self, IInkDrawingAttributes* newVal) putref_DrawingAttributes;
				public new function HRESULT(IInkEdit *self, int32* pVal) get_RecognitionTimeout;
				public new function HRESULT(IInkEdit *self, int32 newVal) put_RecognitionTimeout;
				public new function HRESULT(IInkEdit *self, IInkRecognizer** pVal) get_Recognizer;
				public new function HRESULT(IInkEdit *self, IInkRecognizer* newVal) putref_Recognizer;
				public new function HRESULT(IInkEdit *self, BSTR* pVal) get_Factoid;
				public new function HRESULT(IInkEdit *self, BSTR newVal) put_Factoid;
				public new function HRESULT(IInkEdit *self, VARIANT* pSelInk) get_SelInks;
				public new function HRESULT(IInkEdit *self, VARIANT SelInk) put_SelInks;
				public new function HRESULT(IInkEdit *self, InkDisplayMode* pInkDisplayMode) get_SelInksDisplayMode;
				public new function HRESULT(IInkEdit *self, InkDisplayMode InkDisplayMode) put_SelInksDisplayMode;
				public new function HRESULT(IInkEdit *self) Recognize;
				public new function HRESULT(IInkEdit *self, InkApplicationGesture Gesture, int16* pListen) GetGestureStatus;
				public new function HRESULT(IInkEdit *self, InkApplicationGesture Gesture, int16 Listen) SetGestureStatus;
				public new function HRESULT(IInkEdit *self, uint32 clr) put_BackColor;
				public new function HRESULT(IInkEdit *self, uint32* pclr) get_BackColor;
				public new function HRESULT(IInkEdit *self, AppearanceConstants* pAppearance) get_Appearance;
				public new function HRESULT(IInkEdit *self, AppearanceConstants pAppearance) put_Appearance;
				public new function HRESULT(IInkEdit *self, BorderStyleConstants* pBorderStyle) get_BorderStyle;
				public new function HRESULT(IInkEdit *self, BorderStyleConstants pBorderStyle) put_BorderStyle;
				public new function HRESULT(IInkEdit *self, uint32* pohHwnd) get_Hwnd;
				public new function HRESULT(IInkEdit *self, IFontDisp** ppFont) get_Font;
				public new function HRESULT(IInkEdit *self, IFontDisp* ppFont) putref_Font;
				public new function HRESULT(IInkEdit *self, BSTR* pbstrText) get_Text;
				public new function HRESULT(IInkEdit *self, BSTR pbstrText) put_Text;
				public new function HRESULT(IInkEdit *self, IPictureDisp** MouseIcon) get_MouseIcon;
				public new function HRESULT(IInkEdit *self, IPictureDisp* MouseIcon) put_MouseIcon;
				public new function HRESULT(IInkEdit *self, IPictureDisp* MouseIcon) putref_MouseIcon;
				public new function HRESULT(IInkEdit *self, InkMousePointer* MousePointer) get_MousePointer;
				public new function HRESULT(IInkEdit *self, InkMousePointer MousePointer) put_MousePointer;
				public new function HRESULT(IInkEdit *self, int16* pVal) get_Locked;
				public new function HRESULT(IInkEdit *self, int16 newVal) put_Locked;
				public new function HRESULT(IInkEdit *self, int16* pVal) get_Enabled;
				public new function HRESULT(IInkEdit *self, int16 newVal) put_Enabled;
				public new function HRESULT(IInkEdit *self, int32* plMaxLength) get_MaxLength;
				public new function HRESULT(IInkEdit *self, int32 lMaxLength) put_MaxLength;
				public new function HRESULT(IInkEdit *self, int16* pVal) get_MultiLine;
				public new function HRESULT(IInkEdit *self, int16 newVal) put_MultiLine;
				public new function HRESULT(IInkEdit *self, ScrollBarsConstants* pVal) get_ScrollBars;
				public new function HRESULT(IInkEdit *self, ScrollBarsConstants newVal) put_ScrollBars;
				public new function HRESULT(IInkEdit *self, int16* pVal) get_DisableNoScroll;
				public new function HRESULT(IInkEdit *self, int16 newVal) put_DisableNoScroll;
				public new function HRESULT(IInkEdit *self, VARIANT* pvarSelAlignment) get_SelAlignment;
				public new function HRESULT(IInkEdit *self, VARIANT pvarSelAlignment) put_SelAlignment;
				public new function HRESULT(IInkEdit *self, VARIANT* pvarSelBold) get_SelBold;
				public new function HRESULT(IInkEdit *self, VARIANT pvarSelBold) put_SelBold;
				public new function HRESULT(IInkEdit *self, VARIANT* pvarSelItalic) get_SelItalic;
				public new function HRESULT(IInkEdit *self, VARIANT pvarSelItalic) put_SelItalic;
				public new function HRESULT(IInkEdit *self, VARIANT* pvarSelUnderline) get_SelUnderline;
				public new function HRESULT(IInkEdit *self, VARIANT pvarSelUnderline) put_SelUnderline;
				public new function HRESULT(IInkEdit *self, VARIANT* pvarSelColor) get_SelColor;
				public new function HRESULT(IInkEdit *self, VARIANT pvarSelColor) put_SelColor;
				public new function HRESULT(IInkEdit *self, VARIANT* pvarSelFontName) get_SelFontName;
				public new function HRESULT(IInkEdit *self, VARIANT pvarSelFontName) put_SelFontName;
				public new function HRESULT(IInkEdit *self, VARIANT* pvarSelFontSize) get_SelFontSize;
				public new function HRESULT(IInkEdit *self, VARIANT pvarSelFontSize) put_SelFontSize;
				public new function HRESULT(IInkEdit *self, VARIANT* pvarSelCharOffset) get_SelCharOffset;
				public new function HRESULT(IInkEdit *self, VARIANT pvarSelCharOffset) put_SelCharOffset;
				public new function HRESULT(IInkEdit *self, BSTR* pbstrTextRTF) get_TextRTF;
				public new function HRESULT(IInkEdit *self, BSTR pbstrTextRTF) put_TextRTF;
				public new function HRESULT(IInkEdit *self, int32* plSelStart) get_SelStart;
				public new function HRESULT(IInkEdit *self, int32 plSelStart) put_SelStart;
				public new function HRESULT(IInkEdit *self, int32* plSelLength) get_SelLength;
				public new function HRESULT(IInkEdit *self, int32 plSelLength) put_SelLength;
				public new function HRESULT(IInkEdit *self, BSTR* pbstrSelText) get_SelText;
				public new function HRESULT(IInkEdit *self, BSTR pbstrSelText) put_SelText;
				public new function HRESULT(IInkEdit *self, BSTR* pbstrSelRTF) get_SelRTF;
				public new function HRESULT(IInkEdit *self, BSTR pbstrSelRTF) put_SelRTF;
				public new function HRESULT(IInkEdit *self) Refresh;
			}
		}
		[CRepr]
		public struct _IInkEditEvents : IDispatch
		{
			public const new Guid IID = .(0xe3b0b797, 0xa72e, 0x46db, 0xa0, 0xd7, 0x6c, 0x9e, 0xba, 0x8e, 0x9b, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IMathInputControl : IDispatch
		{
			public const new Guid IID = .(0xeba615aa, 0xfac6, 0x4738, 0xba, 0x5f, 0xff, 0x09, 0xe9, 0xfe, 0x47, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Show() mut
			{
				return VT.Show(&this);
			}
			public HRESULT Hide() mut
			{
				return VT.Hide(&this);
			}
			public HRESULT IsVisible(int16* pvbShown) mut
			{
				return VT.IsVisible(&this, pvbShown);
			}
			public HRESULT GetPosition(int32* Left, int32* Top, int32* Right, int32* Bottom) mut
			{
				return VT.GetPosition(&this, Left, Top, Right, Bottom);
			}
			public HRESULT SetPosition(int32 Left, int32 Top, int32 Right, int32 Bottom) mut
			{
				return VT.SetPosition(&this, Left, Top, Right, Bottom);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT SetCustomPaint(int32 Element, int16 Paint) mut
			{
				return VT.SetCustomPaint(&this, Element, Paint);
			}
			public HRESULT SetCaptionText(BSTR CaptionText) mut
			{
				return VT.SetCaptionText(&this, CaptionText);
			}
			public HRESULT LoadInk(IInkDisp* Ink) mut
			{
				return VT.LoadInk(&this, Ink);
			}
			public HRESULT SetOwnerWindow(int OwnerWindow) mut
			{
				return VT.SetOwnerWindow(&this, OwnerWindow);
			}
			public HRESULT EnableExtendedButtons(int16 Extended) mut
			{
				return VT.EnableExtendedButtons(&this, Extended);
			}
			public HRESULT GetPreviewHeight(int32* Height) mut
			{
				return VT.GetPreviewHeight(&this, Height);
			}
			public HRESULT SetPreviewHeight(int32 Height) mut
			{
				return VT.SetPreviewHeight(&this, Height);
			}
			public HRESULT EnableAutoGrow(int16 AutoGrow) mut
			{
				return VT.EnableAutoGrow(&this, AutoGrow);
			}
			public HRESULT AddFunctionName(BSTR FunctionName) mut
			{
				return VT.AddFunctionName(&this, FunctionName);
			}
			public HRESULT RemoveFunctionName(BSTR FunctionName) mut
			{
				return VT.RemoveFunctionName(&this, FunctionName);
			}
			public HRESULT GetHoverIcon(IPictureDisp** HoverImage) mut
			{
				return VT.GetHoverIcon(&this, HoverImage);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IMathInputControl *self) Show;
				public new function HRESULT(IMathInputControl *self) Hide;
				public new function HRESULT(IMathInputControl *self, int16* pvbShown) IsVisible;
				public new function HRESULT(IMathInputControl *self, int32* Left, int32* Top, int32* Right, int32* Bottom) GetPosition;
				public new function HRESULT(IMathInputControl *self, int32 Left, int32 Top, int32 Right, int32 Bottom) SetPosition;
				public new function HRESULT(IMathInputControl *self) Clear;
				public new function HRESULT(IMathInputControl *self, int32 Element, int16 Paint) SetCustomPaint;
				public new function HRESULT(IMathInputControl *self, BSTR CaptionText) SetCaptionText;
				public new function HRESULT(IMathInputControl *self, IInkDisp* Ink) LoadInk;
				public new function HRESULT(IMathInputControl *self, int OwnerWindow) SetOwnerWindow;
				public new function HRESULT(IMathInputControl *self, int16 Extended) EnableExtendedButtons;
				public new function HRESULT(IMathInputControl *self, int32* Height) GetPreviewHeight;
				public new function HRESULT(IMathInputControl *self, int32 Height) SetPreviewHeight;
				public new function HRESULT(IMathInputControl *self, int16 AutoGrow) EnableAutoGrow;
				public new function HRESULT(IMathInputControl *self, BSTR FunctionName) AddFunctionName;
				public new function HRESULT(IMathInputControl *self, BSTR FunctionName) RemoveFunctionName;
				public new function HRESULT(IMathInputControl *self, IPictureDisp** HoverImage) GetHoverIcon;
			}
		}
		[CRepr]
		public struct _IMathInputControlEvents : IDispatch
		{
			public const new Guid IID = .(0x683336b5, 0xa47d, 0x4358, 0x96, 0xf9, 0x87, 0x5a, 0x47, 0x2a, 0xe7, 0x0a);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IRealTimeStylus : IUnknown
		{
			public const new Guid IID = .(0xa8bb5d22, 0x3144, 0x4a7b, 0x93, 0xcd, 0xf3, 0x4a, 0x16, 0xbe, 0x51, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Enabled(BOOL* pfEnable) mut
			{
				return VT.get_Enabled(&this, pfEnable);
			}
			public HRESULT put_Enabled(BOOL fEnable) mut
			{
				return VT.put_Enabled(&this, fEnable);
			}
			public HRESULT get_HWND(HANDLE_PTR* phwnd) mut
			{
				return VT.get_HWND(&this, phwnd);
			}
			public HRESULT put_HWND(HANDLE_PTR hwnd) mut
			{
				return VT.put_HWND(&this, hwnd);
			}
			public HRESULT get_WindowInputRectangle(RECT* prcWndInputRect) mut
			{
				return VT.get_WindowInputRectangle(&this, prcWndInputRect);
			}
			public HRESULT put_WindowInputRectangle(RECT* prcWndInputRect) mut
			{
				return VT.put_WindowInputRectangle(&this, prcWndInputRect);
			}
			public HRESULT AddStylusSyncPlugin(uint32 iIndex, IStylusSyncPlugin* piPlugin) mut
			{
				return VT.AddStylusSyncPlugin(&this, iIndex, piPlugin);
			}
			public HRESULT RemoveStylusSyncPlugin(uint32 iIndex, IStylusSyncPlugin** ppiPlugin) mut
			{
				return VT.RemoveStylusSyncPlugin(&this, iIndex, ppiPlugin);
			}
			public HRESULT RemoveAllStylusSyncPlugins() mut
			{
				return VT.RemoveAllStylusSyncPlugins(&this);
			}
			public HRESULT GetStylusSyncPlugin(uint32 iIndex, IStylusSyncPlugin** ppiPlugin) mut
			{
				return VT.GetStylusSyncPlugin(&this, iIndex, ppiPlugin);
			}
			public HRESULT GetStylusSyncPluginCount(uint32* pcPlugins) mut
			{
				return VT.GetStylusSyncPluginCount(&this, pcPlugins);
			}
			public HRESULT AddStylusAsyncPlugin(uint32 iIndex, IStylusAsyncPlugin* piPlugin) mut
			{
				return VT.AddStylusAsyncPlugin(&this, iIndex, piPlugin);
			}
			public HRESULT RemoveStylusAsyncPlugin(uint32 iIndex, IStylusAsyncPlugin** ppiPlugin) mut
			{
				return VT.RemoveStylusAsyncPlugin(&this, iIndex, ppiPlugin);
			}
			public HRESULT RemoveAllStylusAsyncPlugins() mut
			{
				return VT.RemoveAllStylusAsyncPlugins(&this);
			}
			public HRESULT GetStylusAsyncPlugin(uint32 iIndex, IStylusAsyncPlugin** ppiPlugin) mut
			{
				return VT.GetStylusAsyncPlugin(&this, iIndex, ppiPlugin);
			}
			public HRESULT GetStylusAsyncPluginCount(uint32* pcPlugins) mut
			{
				return VT.GetStylusAsyncPluginCount(&this, pcPlugins);
			}
			public HRESULT get_ChildRealTimeStylusPlugin(IRealTimeStylus** ppiRTS) mut
			{
				return VT.get_ChildRealTimeStylusPlugin(&this, ppiRTS);
			}
			public HRESULT putref_ChildRealTimeStylusPlugin(IRealTimeStylus* piRTS) mut
			{
				return VT.putref_ChildRealTimeStylusPlugin(&this, piRTS);
			}
			public HRESULT AddCustomStylusDataToQueue(StylusQueue sq, Guid* pGuidId, uint32 cbData, uint8* pbData) mut
			{
				return VT.AddCustomStylusDataToQueue(&this, sq, pGuidId, cbData, pbData);
			}
			public HRESULT ClearStylusQueues() mut
			{
				return VT.ClearStylusQueues(&this);
			}
			public HRESULT SetAllTabletsMode(BOOL fUseMouseForInput) mut
			{
				return VT.SetAllTabletsMode(&this, fUseMouseForInput);
			}
			public HRESULT SetSingleTabletMode(IInkTablet* piTablet) mut
			{
				return VT.SetSingleTabletMode(&this, piTablet);
			}
			public HRESULT GetTablet(IInkTablet** ppiSingleTablet) mut
			{
				return VT.GetTablet(&this, ppiSingleTablet);
			}
			public HRESULT GetTabletContextIdFromTablet(IInkTablet* piTablet, uint32* ptcid) mut
			{
				return VT.GetTabletContextIdFromTablet(&this, piTablet, ptcid);
			}
			public HRESULT GetTabletFromTabletContextId(uint32 tcid, IInkTablet** ppiTablet) mut
			{
				return VT.GetTabletFromTabletContextId(&this, tcid, ppiTablet);
			}
			public HRESULT GetAllTabletContextIds(uint32* pcTcidCount, uint32** ppTcids) mut
			{
				return VT.GetAllTabletContextIds(&this, pcTcidCount, ppTcids);
			}
			public HRESULT GetStyluses(IInkCursors** ppiInkCursors) mut
			{
				return VT.GetStyluses(&this, ppiInkCursors);
			}
			public HRESULT GetStylusForId(uint32 sid, IInkCursor** ppiInkCursor) mut
			{
				return VT.GetStylusForId(&this, sid, ppiInkCursor);
			}
			public HRESULT SetDesiredPacketDescription(uint32 cProperties, Guid* pPropertyGuids) mut
			{
				return VT.SetDesiredPacketDescription(&this, cProperties, pPropertyGuids);
			}
			public HRESULT GetDesiredPacketDescription(uint32* pcProperties, Guid** ppPropertyGuids) mut
			{
				return VT.GetDesiredPacketDescription(&this, pcProperties, ppPropertyGuids);
			}
			public HRESULT GetPacketDescriptionData(uint32 tcid, float* pfInkToDeviceScaleX, float* pfInkToDeviceScaleY, uint32* pcPacketProperties, PACKET_PROPERTY** ppPacketProperties) mut
			{
				return VT.GetPacketDescriptionData(&this, tcid, pfInkToDeviceScaleX, pfInkToDeviceScaleY, pcPacketProperties, ppPacketProperties);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRealTimeStylus *self, BOOL* pfEnable) get_Enabled;
				public new function HRESULT(IRealTimeStylus *self, BOOL fEnable) put_Enabled;
				public new function HRESULT(IRealTimeStylus *self, HANDLE_PTR* phwnd) get_HWND;
				public new function HRESULT(IRealTimeStylus *self, HANDLE_PTR hwnd) put_HWND;
				public new function HRESULT(IRealTimeStylus *self, RECT* prcWndInputRect) get_WindowInputRectangle;
				public new function HRESULT(IRealTimeStylus *self, RECT* prcWndInputRect) put_WindowInputRectangle;
				public new function HRESULT(IRealTimeStylus *self, uint32 iIndex, IStylusSyncPlugin* piPlugin) AddStylusSyncPlugin;
				public new function HRESULT(IRealTimeStylus *self, uint32 iIndex, IStylusSyncPlugin** ppiPlugin) RemoveStylusSyncPlugin;
				public new function HRESULT(IRealTimeStylus *self) RemoveAllStylusSyncPlugins;
				public new function HRESULT(IRealTimeStylus *self, uint32 iIndex, IStylusSyncPlugin** ppiPlugin) GetStylusSyncPlugin;
				public new function HRESULT(IRealTimeStylus *self, uint32* pcPlugins) GetStylusSyncPluginCount;
				public new function HRESULT(IRealTimeStylus *self, uint32 iIndex, IStylusAsyncPlugin* piPlugin) AddStylusAsyncPlugin;
				public new function HRESULT(IRealTimeStylus *self, uint32 iIndex, IStylusAsyncPlugin** ppiPlugin) RemoveStylusAsyncPlugin;
				public new function HRESULT(IRealTimeStylus *self) RemoveAllStylusAsyncPlugins;
				public new function HRESULT(IRealTimeStylus *self, uint32 iIndex, IStylusAsyncPlugin** ppiPlugin) GetStylusAsyncPlugin;
				public new function HRESULT(IRealTimeStylus *self, uint32* pcPlugins) GetStylusAsyncPluginCount;
				public new function HRESULT(IRealTimeStylus *self, IRealTimeStylus** ppiRTS) get_ChildRealTimeStylusPlugin;
				public new function HRESULT(IRealTimeStylus *self, IRealTimeStylus* piRTS) putref_ChildRealTimeStylusPlugin;
				public new function HRESULT(IRealTimeStylus *self, StylusQueue sq, Guid* pGuidId, uint32 cbData, uint8* pbData) AddCustomStylusDataToQueue;
				public new function HRESULT(IRealTimeStylus *self) ClearStylusQueues;
				public new function HRESULT(IRealTimeStylus *self, BOOL fUseMouseForInput) SetAllTabletsMode;
				public new function HRESULT(IRealTimeStylus *self, IInkTablet* piTablet) SetSingleTabletMode;
				public new function HRESULT(IRealTimeStylus *self, IInkTablet** ppiSingleTablet) GetTablet;
				public new function HRESULT(IRealTimeStylus *self, IInkTablet* piTablet, uint32* ptcid) GetTabletContextIdFromTablet;
				public new function HRESULT(IRealTimeStylus *self, uint32 tcid, IInkTablet** ppiTablet) GetTabletFromTabletContextId;
				public new function HRESULT(IRealTimeStylus *self, uint32* pcTcidCount, uint32** ppTcids) GetAllTabletContextIds;
				public new function HRESULT(IRealTimeStylus *self, IInkCursors** ppiInkCursors) GetStyluses;
				public new function HRESULT(IRealTimeStylus *self, uint32 sid, IInkCursor** ppiInkCursor) GetStylusForId;
				public new function HRESULT(IRealTimeStylus *self, uint32 cProperties, Guid* pPropertyGuids) SetDesiredPacketDescription;
				public new function HRESULT(IRealTimeStylus *self, uint32* pcProperties, Guid** ppPropertyGuids) GetDesiredPacketDescription;
				public new function HRESULT(IRealTimeStylus *self, uint32 tcid, float* pfInkToDeviceScaleX, float* pfInkToDeviceScaleY, uint32* pcPacketProperties, PACKET_PROPERTY** ppPacketProperties) GetPacketDescriptionData;
			}
		}
		[CRepr]
		public struct IRealTimeStylus2 : IUnknown
		{
			public const new Guid IID = .(0xb5f2a6cd, 0x3179, 0x4a3e, 0xb9, 0xc4, 0xbb, 0x58, 0x65, 0x96, 0x2b, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_FlicksEnabled(BOOL* pfEnable) mut
			{
				return VT.get_FlicksEnabled(&this, pfEnable);
			}
			public HRESULT put_FlicksEnabled(BOOL fEnable) mut
			{
				return VT.put_FlicksEnabled(&this, fEnable);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRealTimeStylus2 *self, BOOL* pfEnable) get_FlicksEnabled;
				public new function HRESULT(IRealTimeStylus2 *self, BOOL fEnable) put_FlicksEnabled;
			}
		}
		[CRepr]
		public struct IRealTimeStylus3 : IUnknown
		{
			public const new Guid IID = .(0xd70230a3, 0x6986, 0x4051, 0xb5, 0x7a, 0x1c, 0xf6, 0x9f, 0x4d, 0x9d, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_MultiTouchEnabled(BOOL* pfEnable) mut
			{
				return VT.get_MultiTouchEnabled(&this, pfEnable);
			}
			public HRESULT put_MultiTouchEnabled(BOOL fEnable) mut
			{
				return VT.put_MultiTouchEnabled(&this, fEnable);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRealTimeStylus3 *self, BOOL* pfEnable) get_MultiTouchEnabled;
				public new function HRESULT(IRealTimeStylus3 *self, BOOL fEnable) put_MultiTouchEnabled;
			}
		}
		[CRepr]
		public struct IRealTimeStylusSynchronization : IUnknown
		{
			public const new Guid IID = .(0xaa87eab8, 0xab4a, 0x4cea, 0xb5, 0xcb, 0x46, 0xd8, 0x4c, 0x6a, 0x25, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AcquireLock(RealTimeStylusLockType lock) mut
			{
				return VT.AcquireLock(&this, lock);
			}
			public HRESULT ReleaseLock(RealTimeStylusLockType lock) mut
			{
				return VT.ReleaseLock(&this, lock);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRealTimeStylusSynchronization *self, RealTimeStylusLockType lock) AcquireLock;
				public new function HRESULT(IRealTimeStylusSynchronization *self, RealTimeStylusLockType lock) ReleaseLock;
			}
		}
		[CRepr]
		public struct IStrokeBuilder : IUnknown
		{
			public const new Guid IID = .(0xa5fd4e2d, 0xc44b, 0x4092, 0x91, 0x77, 0x26, 0x09, 0x05, 0xeb, 0x67, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateStroke(uint32 cPktBuffLength, int32* pPackets, uint32 cPacketProperties, PACKET_PROPERTY* pPacketProperties, float fInkToDeviceScaleX, float fInkToDeviceScaleY, IInkStrokeDisp** ppIInkStroke) mut
			{
				return VT.CreateStroke(&this, cPktBuffLength, pPackets, cPacketProperties, pPacketProperties, fInkToDeviceScaleX, fInkToDeviceScaleY, ppIInkStroke);
			}
			public HRESULT BeginStroke(uint32 tcid, uint32 sid, int32* pPacket, uint32 cPacketProperties, PACKET_PROPERTY* pPacketProperties, float fInkToDeviceScaleX, float fInkToDeviceScaleY, IInkStrokeDisp** ppIInkStroke) mut
			{
				return VT.BeginStroke(&this, tcid, sid, pPacket, cPacketProperties, pPacketProperties, fInkToDeviceScaleX, fInkToDeviceScaleY, ppIInkStroke);
			}
			public HRESULT AppendPackets(uint32 tcid, uint32 sid, uint32 cPktBuffLength, int32* pPackets) mut
			{
				return VT.AppendPackets(&this, tcid, sid, cPktBuffLength, pPackets);
			}
			public HRESULT EndStroke(uint32 tcid, uint32 sid, IInkStrokeDisp** ppIInkStroke, RECT* pDirtyRect) mut
			{
				return VT.EndStroke(&this, tcid, sid, ppIInkStroke, pDirtyRect);
			}
			public HRESULT get_Ink(IInkDisp** ppiInkObj) mut
			{
				return VT.get_Ink(&this, ppiInkObj);
			}
			public HRESULT putref_Ink(IInkDisp* piInkObj) mut
			{
				return VT.putref_Ink(&this, piInkObj);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IStrokeBuilder *self, uint32 cPktBuffLength, int32* pPackets, uint32 cPacketProperties, PACKET_PROPERTY* pPacketProperties, float fInkToDeviceScaleX, float fInkToDeviceScaleY, IInkStrokeDisp** ppIInkStroke) CreateStroke;
				public new function HRESULT(IStrokeBuilder *self, uint32 tcid, uint32 sid, int32* pPacket, uint32 cPacketProperties, PACKET_PROPERTY* pPacketProperties, float fInkToDeviceScaleX, float fInkToDeviceScaleY, IInkStrokeDisp** ppIInkStroke) BeginStroke;
				public new function HRESULT(IStrokeBuilder *self, uint32 tcid, uint32 sid, uint32 cPktBuffLength, int32* pPackets) AppendPackets;
				public new function HRESULT(IStrokeBuilder *self, uint32 tcid, uint32 sid, IInkStrokeDisp** ppIInkStroke, RECT* pDirtyRect) EndStroke;
				public new function HRESULT(IStrokeBuilder *self, IInkDisp** ppiInkObj) get_Ink;
				public new function HRESULT(IStrokeBuilder *self, IInkDisp* piInkObj) putref_Ink;
			}
		}
		[CRepr]
		public struct IStylusPlugin : IUnknown
		{
			public const new Guid IID = .(0xa81436d8, 0x4757, 0x4fd1, 0xa1, 0x85, 0x13, 0x3f, 0x97, 0xc6, 0xc5, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RealTimeStylusEnabled(IRealTimeStylus* piRtsSrc, uint32 cTcidCount, uint32* pTcids) mut
			{
				return VT.RealTimeStylusEnabled(&this, piRtsSrc, cTcidCount, pTcids);
			}
			public HRESULT RealTimeStylusDisabled(IRealTimeStylus* piRtsSrc, uint32 cTcidCount, uint32* pTcids) mut
			{
				return VT.RealTimeStylusDisabled(&this, piRtsSrc, cTcidCount, pTcids);
			}
			public HRESULT StylusInRange(IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid) mut
			{
				return VT.StylusInRange(&this, piRtsSrc, tcid, sid);
			}
			public HRESULT StylusOutOfRange(IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid) mut
			{
				return VT.StylusOutOfRange(&this, piRtsSrc, tcid, sid);
			}
			public HRESULT StylusDown(IRealTimeStylus* piRtsSrc, StylusInfo* pStylusInfo, uint32 cPropCountPerPkt, int32* pPacket, int32** ppInOutPkt) mut
			{
				return VT.StylusDown(&this, piRtsSrc, pStylusInfo, cPropCountPerPkt, pPacket, ppInOutPkt);
			}
			public HRESULT StylusUp(IRealTimeStylus* piRtsSrc, StylusInfo* pStylusInfo, uint32 cPropCountPerPkt, int32* pPacket, int32** ppInOutPkt) mut
			{
				return VT.StylusUp(&this, piRtsSrc, pStylusInfo, cPropCountPerPkt, pPacket, ppInOutPkt);
			}
			public HRESULT StylusButtonDown(IRealTimeStylus* piRtsSrc, uint32 sid, Guid* pGuidStylusButton, POINT* pStylusPos) mut
			{
				return VT.StylusButtonDown(&this, piRtsSrc, sid, pGuidStylusButton, pStylusPos);
			}
			public HRESULT StylusButtonUp(IRealTimeStylus* piRtsSrc, uint32 sid, Guid* pGuidStylusButton, POINT* pStylusPos) mut
			{
				return VT.StylusButtonUp(&this, piRtsSrc, sid, pGuidStylusButton, pStylusPos);
			}
			public HRESULT InAirPackets(IRealTimeStylus* piRtsSrc, StylusInfo* pStylusInfo, uint32 cPktCount, uint32 cPktBuffLength, int32* pPackets, uint32* pcInOutPkts, int32** ppInOutPkts) mut
			{
				return VT.InAirPackets(&this, piRtsSrc, pStylusInfo, cPktCount, cPktBuffLength, pPackets, pcInOutPkts, ppInOutPkts);
			}
			public HRESULT Packets(IRealTimeStylus* piRtsSrc, StylusInfo* pStylusInfo, uint32 cPktCount, uint32 cPktBuffLength, int32* pPackets, uint32* pcInOutPkts, int32** ppInOutPkts) mut
			{
				return VT.Packets(&this, piRtsSrc, pStylusInfo, cPktCount, cPktBuffLength, pPackets, pcInOutPkts, ppInOutPkts);
			}
			public HRESULT CustomStylusDataAdded(IRealTimeStylus* piRtsSrc, Guid* pGuidId, uint32 cbData, uint8* pbData) mut
			{
				return VT.CustomStylusDataAdded(&this, piRtsSrc, pGuidId, cbData, pbData);
			}
			public HRESULT SystemEvent(IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid, uint16 event, SYSTEM_EVENT_DATA eventdata) mut
			{
				return VT.SystemEvent(&this, piRtsSrc, tcid, sid, event, eventdata);
			}
			public HRESULT TabletAdded(IRealTimeStylus* piRtsSrc, IInkTablet* piTablet) mut
			{
				return VT.TabletAdded(&this, piRtsSrc, piTablet);
			}
			public HRESULT TabletRemoved(IRealTimeStylus* piRtsSrc, int32 iTabletIndex) mut
			{
				return VT.TabletRemoved(&this, piRtsSrc, iTabletIndex);
			}
			public HRESULT Error(IRealTimeStylus* piRtsSrc, IStylusPlugin* piPlugin, RealTimeStylusDataInterest dataInterest, HRESULT hrErrorCode, int* lptrKey) mut
			{
				return VT.Error(&this, piRtsSrc, piPlugin, dataInterest, hrErrorCode, lptrKey);
			}
			public HRESULT UpdateMapping(IRealTimeStylus* piRtsSrc) mut
			{
				return VT.UpdateMapping(&this, piRtsSrc);
			}
			public HRESULT DataInterest(RealTimeStylusDataInterest* pDataInterest) mut
			{
				return VT.DataInterest(&this, pDataInterest);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 cTcidCount, uint32* pTcids) RealTimeStylusEnabled;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 cTcidCount, uint32* pTcids) RealTimeStylusDisabled;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid) StylusInRange;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid) StylusOutOfRange;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, StylusInfo* pStylusInfo, uint32 cPropCountPerPkt, int32* pPacket, int32** ppInOutPkt) StylusDown;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, StylusInfo* pStylusInfo, uint32 cPropCountPerPkt, int32* pPacket, int32** ppInOutPkt) StylusUp;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 sid, Guid* pGuidStylusButton, POINT* pStylusPos) StylusButtonDown;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 sid, Guid* pGuidStylusButton, POINT* pStylusPos) StylusButtonUp;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, StylusInfo* pStylusInfo, uint32 cPktCount, uint32 cPktBuffLength, int32* pPackets, uint32* pcInOutPkts, int32** ppInOutPkts) InAirPackets;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, StylusInfo* pStylusInfo, uint32 cPktCount, uint32 cPktBuffLength, int32* pPackets, uint32* pcInOutPkts, int32** ppInOutPkts) Packets;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, Guid* pGuidId, uint32 cbData, uint8* pbData) CustomStylusDataAdded;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid, uint16 event, SYSTEM_EVENT_DATA eventdata) SystemEvent;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, IInkTablet* piTablet) TabletAdded;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, int32 iTabletIndex) TabletRemoved;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, IStylusPlugin* piPlugin, RealTimeStylusDataInterest dataInterest, HRESULT hrErrorCode, int* lptrKey) Error;
				public new function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc) UpdateMapping;
				public new function HRESULT(IStylusPlugin *self, RealTimeStylusDataInterest* pDataInterest) DataInterest;
			}
		}
		[CRepr]
		public struct IStylusSyncPlugin : IStylusPlugin
		{
			public const new Guid IID = .(0xa157b174, 0x482f, 0x4d71, 0xa3, 0xf6, 0x3a, 0x41, 0xdd, 0xd1, 0x1b, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IStylusPlugin.VTable
			{
			}
		}
		[CRepr]
		public struct IStylusAsyncPlugin : IStylusPlugin
		{
			public const new Guid IID = .(0xa7cca85a, 0x31bc, 0x4cd2, 0xaa, 0xdc, 0x32, 0x89, 0xa3, 0xaf, 0x11, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IStylusPlugin.VTable
			{
			}
		}
		[CRepr]
		public struct IDynamicRenderer : IUnknown
		{
			public const new Guid IID = .(0xa079468e, 0x7165, 0x46f9, 0xb7, 0xaf, 0x98, 0xad, 0x01, 0xa9, 0x30, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Enabled(BOOL* bEnabled) mut
			{
				return VT.get_Enabled(&this, bEnabled);
			}
			public HRESULT put_Enabled(BOOL bEnabled) mut
			{
				return VT.put_Enabled(&this, bEnabled);
			}
			public HRESULT get_HWND(HANDLE_PTR* hwnd) mut
			{
				return VT.get_HWND(&this, hwnd);
			}
			public HRESULT put_HWND(HANDLE_PTR hwnd) mut
			{
				return VT.put_HWND(&this, hwnd);
			}
			public HRESULT get_ClipRectangle(RECT* prcClipRect) mut
			{
				return VT.get_ClipRectangle(&this, prcClipRect);
			}
			public HRESULT put_ClipRectangle(RECT* prcClipRect) mut
			{
				return VT.put_ClipRectangle(&this, prcClipRect);
			}
			public HRESULT get_ClipRegion(HANDLE_PTR* phClipRgn) mut
			{
				return VT.get_ClipRegion(&this, phClipRgn);
			}
			public HRESULT put_ClipRegion(HANDLE_PTR hClipRgn) mut
			{
				return VT.put_ClipRegion(&this, hClipRgn);
			}
			public HRESULT get_DrawingAttributes(IInkDrawingAttributes** ppiDA) mut
			{
				return VT.get_DrawingAttributes(&this, ppiDA);
			}
			public HRESULT putref_DrawingAttributes(IInkDrawingAttributes* piDA) mut
			{
				return VT.putref_DrawingAttributes(&this, piDA);
			}
			public HRESULT get_DataCacheEnabled(BOOL* pfCacheData) mut
			{
				return VT.get_DataCacheEnabled(&this, pfCacheData);
			}
			public HRESULT put_DataCacheEnabled(BOOL fCacheData) mut
			{
				return VT.put_DataCacheEnabled(&this, fCacheData);
			}
			public HRESULT ReleaseCachedData(uint32 strokeId) mut
			{
				return VT.ReleaseCachedData(&this, strokeId);
			}
			public HRESULT Refresh() mut
			{
				return VT.Refresh(&this);
			}
			public HRESULT Draw(HANDLE_PTR hDC) mut
			{
				return VT.Draw(&this, hDC);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDynamicRenderer *self, BOOL* bEnabled) get_Enabled;
				public new function HRESULT(IDynamicRenderer *self, BOOL bEnabled) put_Enabled;
				public new function HRESULT(IDynamicRenderer *self, HANDLE_PTR* hwnd) get_HWND;
				public new function HRESULT(IDynamicRenderer *self, HANDLE_PTR hwnd) put_HWND;
				public new function HRESULT(IDynamicRenderer *self, RECT* prcClipRect) get_ClipRectangle;
				public new function HRESULT(IDynamicRenderer *self, RECT* prcClipRect) put_ClipRectangle;
				public new function HRESULT(IDynamicRenderer *self, HANDLE_PTR* phClipRgn) get_ClipRegion;
				public new function HRESULT(IDynamicRenderer *self, HANDLE_PTR hClipRgn) put_ClipRegion;
				public new function HRESULT(IDynamicRenderer *self, IInkDrawingAttributes** ppiDA) get_DrawingAttributes;
				public new function HRESULT(IDynamicRenderer *self, IInkDrawingAttributes* piDA) putref_DrawingAttributes;
				public new function HRESULT(IDynamicRenderer *self, BOOL* pfCacheData) get_DataCacheEnabled;
				public new function HRESULT(IDynamicRenderer *self, BOOL fCacheData) put_DataCacheEnabled;
				public new function HRESULT(IDynamicRenderer *self, uint32 strokeId) ReleaseCachedData;
				public new function HRESULT(IDynamicRenderer *self) Refresh;
				public new function HRESULT(IDynamicRenderer *self, HANDLE_PTR hDC) Draw;
			}
		}
		[CRepr]
		public struct IGestureRecognizer : IUnknown
		{
			public const new Guid IID = .(0xae9ef86b, 0x7054, 0x45e3, 0xae, 0x22, 0x31, 0x74, 0xdc, 0x88, 0x11, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Enabled(BOOL* pfEnabled) mut
			{
				return VT.get_Enabled(&this, pfEnabled);
			}
			public HRESULT put_Enabled(BOOL fEnabled) mut
			{
				return VT.put_Enabled(&this, fEnabled);
			}
			public HRESULT get_MaxStrokeCount(int32* pcStrokes) mut
			{
				return VT.get_MaxStrokeCount(&this, pcStrokes);
			}
			public HRESULT put_MaxStrokeCount(int32 cStrokes) mut
			{
				return VT.put_MaxStrokeCount(&this, cStrokes);
			}
			public HRESULT EnableGestures(uint32 cGestures, int32* pGestures) mut
			{
				return VT.EnableGestures(&this, cGestures, pGestures);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IGestureRecognizer *self, BOOL* pfEnabled) get_Enabled;
				public new function HRESULT(IGestureRecognizer *self, BOOL fEnabled) put_Enabled;
				public new function HRESULT(IGestureRecognizer *self, int32* pcStrokes) get_MaxStrokeCount;
				public new function HRESULT(IGestureRecognizer *self, int32 cStrokes) put_MaxStrokeCount;
				public new function HRESULT(IGestureRecognizer *self, uint32 cGestures, int32* pGestures) EnableGestures;
				public new function HRESULT(IGestureRecognizer *self) Reset;
			}
		}
		[CRepr]
		public struct ITipAutoCompleteProvider : IUnknown
		{
			public const new Guid IID = .(0x7c6cf46d, 0x8404, 0x46b9, 0xad, 0x33, 0xf5, 0xb6, 0x03, 0x6d, 0x40, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdatePendingText(BSTR bstrPendingText) mut
			{
				return VT.UpdatePendingText(&this, bstrPendingText);
			}
			public HRESULT Show(BOOL fShow) mut
			{
				return VT.Show(&this, fShow);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITipAutoCompleteProvider *self, BSTR bstrPendingText) UpdatePendingText;
				public new function HRESULT(ITipAutoCompleteProvider *self, BOOL fShow) Show;
			}
		}
		[CRepr]
		public struct ITipAutoCompleteClient : IUnknown
		{
			public const new Guid IID = .(0x5e078e03, 0x8265, 0x4bbe, 0x94, 0x87, 0xd2, 0x42, 0xed, 0xbe, 0xf9, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseProvider(HWND hWndField, ITipAutoCompleteProvider* pIProvider) mut
			{
				return VT.AdviseProvider(&this, hWndField, pIProvider);
			}
			public HRESULT UnadviseProvider(HWND hWndField, ITipAutoCompleteProvider* pIProvider) mut
			{
				return VT.UnadviseProvider(&this, hWndField, pIProvider);
			}
			public HRESULT UserSelection() mut
			{
				return VT.UserSelection(&this);
			}
			public HRESULT PreferredRects(RECT* prcACList, RECT* prcField, RECT* prcModifiedACList, BOOL* pfShownAboveTip) mut
			{
				return VT.PreferredRects(&this, prcACList, prcField, prcModifiedACList, pfShownAboveTip);
			}
			public HRESULT RequestShowUI(HWND hWndList, BOOL* pfAllowShowing) mut
			{
				return VT.RequestShowUI(&this, hWndList, pfAllowShowing);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITipAutoCompleteClient *self, HWND hWndField, ITipAutoCompleteProvider* pIProvider) AdviseProvider;
				public new function HRESULT(ITipAutoCompleteClient *self, HWND hWndField, ITipAutoCompleteProvider* pIProvider) UnadviseProvider;
				public new function HRESULT(ITipAutoCompleteClient *self) UserSelection;
				public new function HRESULT(ITipAutoCompleteClient *self, RECT* prcACList, RECT* prcField, RECT* prcModifiedACList, BOOL* pfShownAboveTip) PreferredRects;
				public new function HRESULT(ITipAutoCompleteClient *self, HWND hWndList, BOOL* pfAllowShowing) RequestShowUI;
			}
		}
		
		// --- Functions ---
		
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateRecognizer(Guid* pCLSID, HRECOGNIZER* phrec);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DestroyRecognizer(HRECOGNIZER hrec);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetRecoAttributes(HRECOGNIZER hrec, RECO_ATTRS* pRecoAttrs);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateContext(HRECOGNIZER hrec, HRECOCONTEXT* phrc);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DestroyContext(HRECOCONTEXT hrc);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetResultPropertyList(HRECOGNIZER hrec, uint32* pPropertyCount, Guid* pPropertyGuid);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetUnicodeRanges(HRECOGNIZER hrec, uint32* pcRanges, CHARACTER_RANGE* pcr);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AddStroke(HRECOCONTEXT hrc, PACKET_DESCRIPTION* pPacketDesc, uint32 cbPacket, uint8* pPacket, XFORM* pXForm);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetBestResultString(HRECOCONTEXT hrc, uint32* pcSize, char16* pwcBestResult);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetGuide(HRECOCONTEXT hrc, RECO_GUIDE* pGuide, uint32 iIndex);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AdviseInkChange(HRECOCONTEXT hrc, BOOL bNewStroke);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT EndInkInput(HRECOCONTEXT hrc);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT Process(HRECOCONTEXT hrc, BOOL* pbPartialProcessing);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetFactoid(HRECOCONTEXT hrc, uint32 cwcFactoid, PWSTR pwcFactoid);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetFlags(HRECOCONTEXT hrc, uint32 dwFlags);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetLatticePtr(HRECOCONTEXT hrc, RECO_LATTICE** ppLattice);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetTextContext(HRECOCONTEXT hrc, uint32 cwcBefore, char16* pwcBefore, uint32 cwcAfter, char16* pwcAfter);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetEnabledUnicodeRanges(HRECOCONTEXT hrc, uint32 cRanges, CHARACTER_RANGE* pcr);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IsStringSupported(HRECOCONTEXT hrc, uint32 wcString, PWSTR pwcString);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetWordList(HRECOCONTEXT hrc, HRECOWORDLIST hwl);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetRightSeparator(HRECOCONTEXT hrc, uint32* pcSize, char16* pwcRightSeparator);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetLeftSeparator(HRECOCONTEXT hrc, uint32* pcSize, char16* pwcLeftSeparator);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DestroyWordList(HRECOWORDLIST hwl);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AddWordsToWordList(HRECOWORDLIST hwl, PWSTR pwcWords);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MakeWordList(HRECOGNIZER hrec, PWSTR pBuffer, HRECOWORDLIST* phwl);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetAllRecognizers(Guid** recognizerClsids, uint32* count);
		[Import("inkobjcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LoadCachedAttributes(Guid clsid, RECO_ATTRS* pRecoAttributes);
		
	}
}
