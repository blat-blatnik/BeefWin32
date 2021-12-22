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
		
		[AllowDuplicates]
		public enum PROPERTY_UNITS : int32
		{
			PROPERTY_UNITS_DEFAULT = 0,
			PROPERTY_UNITS_INCHES = 1,
			PROPERTY_UNITS_CENTIMETERS = 2,
			PROPERTY_UNITS_DEGREES = 3,
			PROPERTY_UNITS_RADIANS = 4,
			PROPERTY_UNITS_SECONDS = 5,
			PROPERTY_UNITS_POUNDS = 6,
			PROPERTY_UNITS_GRAMS = 7,
			PROPERTY_UNITS_SILINEAR = 8,
			PROPERTY_UNITS_SIROTATION = 9,
			PROPERTY_UNITS_ENGLINEAR = 10,
			PROPERTY_UNITS_ENGROTATION = 11,
			PROPERTY_UNITS_SLUGS = 12,
			PROPERTY_UNITS_KELVIN = 13,
			PROPERTY_UNITS_FAHRENHEIT = 14,
			PROPERTY_UNITS_AMPERE = 15,
			PROPERTY_UNITS_CANDELA = 16,
		}
		[AllowDuplicates]
		public enum enumINKMETRIC_FLAGS : int32
		{
			IMF_FONT_SELECTED_IN_HDC = 1,
			IMF_ITALIC = 2,
			IMF_BOLD = 4,
		}
		[AllowDuplicates]
		public enum enumGetCandidateFlags : int32
		{
			TCF_ALLOW_RECOGNITION = 1,
			TCF_FORCE_RECOGNITION = 2,
		}
		[AllowDuplicates]
		public enum InkSelectionConstants : int32
		{
			ISC_FirstElement = 0,
			ISC_AllElements = -1,
		}
		[AllowDuplicates]
		public enum InkBoundingBoxMode : int32
		{
			IBBM_Default = 0,
			IBBM_NoCurveFit = 1,
			IBBM_CurveFit = 2,
			IBBM_PointsOnly = 3,
			IBBM_Union = 4,
		}
		[AllowDuplicates]
		public enum InkExtractFlags : int32
		{
			IEF_CopyFromOriginal = 0,
			IEF_RemoveFromOriginal = 1,
			IEF_Default = 1,
		}
		[AllowDuplicates]
		public enum InkPersistenceFormat : int32
		{
			IPF_InkSerializedFormat = 0,
			IPF_Base64InkSerializedFormat = 1,
			IPF_GIF = 2,
			IPF_Base64GIF = 3,
		}
		[AllowDuplicates]
		public enum InkPersistenceCompressionMode : int32
		{
			IPCM_Default = 0,
			IPCM_MaximumCompression = 1,
			IPCM_NoCompression = 2,
		}
		[AllowDuplicates]
		public enum InkPenTip : int32
		{
			IPT_Ball = 0,
			IPT_Rectangle = 1,
		}
		[AllowDuplicates]
		public enum InkRasterOperation : int32
		{
			IRO_Black = 1,
			IRO_NotMergePen = 2,
			IRO_MaskNotPen = 3,
			IRO_NotCopyPen = 4,
			IRO_MaskPenNot = 5,
			IRO_Not = 6,
			IRO_XOrPen = 7,
			IRO_NotMaskPen = 8,
			IRO_MaskPen = 9,
			IRO_NotXOrPen = 10,
			IRO_NoOperation = 11,
			IRO_MergeNotPen = 12,
			IRO_CopyPen = 13,
			IRO_MergePenNot = 14,
			IRO_MergePen = 15,
			IRO_White = 16,
		}
		[AllowDuplicates]
		public enum InkMousePointer : int32
		{
			IMP_Default = 0,
			IMP_Arrow = 1,
			IMP_Crosshair = 2,
			IMP_Ibeam = 3,
			IMP_SizeNESW = 4,
			IMP_SizeNS = 5,
			IMP_SizeNWSE = 6,
			IMP_SizeWE = 7,
			IMP_UpArrow = 8,
			IMP_Hourglass = 9,
			IMP_NoDrop = 10,
			IMP_ArrowHourglass = 11,
			IMP_ArrowQuestion = 12,
			IMP_SizeAll = 13,
			IMP_Hand = 14,
			IMP_Custom = 99,
		}
		[AllowDuplicates]
		public enum InkClipboardModes : int32
		{
			ICB_Copy = 0,
			ICB_Cut = 1,
			ICB_ExtractOnly = 48,
			ICB_DelayedCopy = 32,
			ICB_Default = 0,
		}
		[AllowDuplicates]
		public enum InkClipboardFormats : int32
		{
			ICF_None = 0,
			ICF_InkSerializedFormat = 1,
			ICF_SketchInk = 2,
			ICF_TextInk = 6,
			ICF_EnhancedMetafile = 8,
			ICF_Metafile = 32,
			ICF_Bitmap = 64,
			ICF_PasteMask = 7,
			ICF_CopyMask = 127,
			ICF_Default = 127,
		}
		[AllowDuplicates]
		public enum SelectionHitResult : int32
		{
			SHR_None = 0,
			SHR_NW = 1,
			SHR_SE = 2,
			SHR_NE = 3,
			SHR_SW = 4,
			SHR_E = 5,
			SHR_W = 6,
			SHR_N = 7,
			SHR_S = 8,
			SHR_Selection = 9,
		}
		[AllowDuplicates]
		public enum InkRecognitionStatus : int32
		{
			IRS_NoError = 0,
			IRS_Interrupted = 1,
			IRS_ProcessFailed = 2,
			IRS_InkAddedFailed = 4,
			IRS_SetAutoCompletionModeFailed = 8,
			IRS_SetStrokesFailed = 16,
			IRS_SetGuideFailed = 32,
			IRS_SetFlagsFailed = 64,
			IRS_SetFactoidFailed = 128,
			IRS_SetPrefixSuffixFailed = 256,
			IRS_SetWordListFailed = 512,
		}
		[AllowDuplicates]
		public enum DISPID_InkRectangle : int32
		{
			DISPID_IRTop = 1,
			DISPID_IRLeft = 2,
			DISPID_IRBottom = 3,
			DISPID_IRRight = 4,
			DISPID_IRGetRectangle = 5,
			DISPID_IRSetRectangle = 6,
			DISPID_IRData = 7,
		}
		[AllowDuplicates]
		public enum DISPID_InkExtendedProperty : int32
		{
			DISPID_IEPGuid = 1,
			DISPID_IEPData = 2,
		}
		[AllowDuplicates]
		public enum DISPID_InkExtendedProperties : int32
		{
			DISPID_IEPs_NewEnum = -4,
			DISPID_IEPsItem = 0,
			DISPID_IEPsCount = 1,
			DISPID_IEPsAdd = 2,
			DISPID_IEPsRemove = 3,
			DISPID_IEPsClear = 4,
			DISPID_IEPsDoesPropertyExist = 5,
		}
		[AllowDuplicates]
		public enum DISPID_InkDrawingAttributes : int32
		{
			DISPID_DAHeight = 1,
			DISPID_DAColor = 2,
			DISPID_DAWidth = 3,
			DISPID_DAFitToCurve = 4,
			DISPID_DAIgnorePressure = 5,
			DISPID_DAAntiAliased = 6,
			DISPID_DATransparency = 7,
			DISPID_DARasterOperation = 8,
			DISPID_DAPenTip = 9,
			DISPID_DAClone = 10,
			DISPID_DAExtendedProperties = 11,
		}
		[AllowDuplicates]
		public enum DISPID_InkTransform : int32
		{
			DISPID_ITReset = 1,
			DISPID_ITTranslate = 2,
			DISPID_ITRotate = 3,
			DISPID_ITReflect = 4,
			DISPID_ITShear = 5,
			DISPID_ITScale = 6,
			DISPID_ITeM11 = 7,
			DISPID_ITeM12 = 8,
			DISPID_ITeM21 = 9,
			DISPID_ITeM22 = 10,
			DISPID_ITeDx = 11,
			DISPID_ITeDy = 12,
			DISPID_ITGetTransform = 13,
			DISPID_ITSetTransform = 14,
			DISPID_ITData = 15,
		}
		[AllowDuplicates]
		public enum InkApplicationGesture : int32
		{
			IAG_AllGestures = 0,
			IAG_NoGesture = 61440,
			IAG_Scratchout = 61441,
			IAG_Triangle = 61442,
			IAG_Square = 61443,
			IAG_Star = 61444,
			IAG_Check = 61445,
			IAG_Curlicue = 61456,
			IAG_DoubleCurlicue = 61457,
			IAG_Circle = 61472,
			IAG_DoubleCircle = 61473,
			IAG_SemiCircleLeft = 61480,
			IAG_SemiCircleRight = 61481,
			IAG_ChevronUp = 61488,
			IAG_ChevronDown = 61489,
			IAG_ChevronLeft = 61490,
			IAG_ChevronRight = 61491,
			IAG_ArrowUp = 61496,
			IAG_ArrowDown = 61497,
			IAG_ArrowLeft = 61498,
			IAG_ArrowRight = 61499,
			IAG_Up = 61528,
			IAG_Down = 61529,
			IAG_Left = 61530,
			IAG_Right = 61531,
			IAG_UpDown = 61536,
			IAG_DownUp = 61537,
			IAG_LeftRight = 61538,
			IAG_RightLeft = 61539,
			IAG_UpLeftLong = 61540,
			IAG_UpRightLong = 61541,
			IAG_DownLeftLong = 61542,
			IAG_DownRightLong = 61543,
			IAG_UpLeft = 61544,
			IAG_UpRight = 61545,
			IAG_DownLeft = 61546,
			IAG_DownRight = 61547,
			IAG_LeftUp = 61548,
			IAG_LeftDown = 61549,
			IAG_RightUp = 61550,
			IAG_RightDown = 61551,
			IAG_Exclamation = 61604,
			IAG_Tap = 61680,
			IAG_DoubleTap = 61681,
		}
		[AllowDuplicates]
		public enum InkSystemGesture : int32
		{
			ISG_Tap = 16,
			ISG_DoubleTap = 17,
			ISG_RightTap = 18,
			ISG_Drag = 19,
			ISG_RightDrag = 20,
			ISG_HoldEnter = 21,
			ISG_HoldLeave = 22,
			ISG_HoverEnter = 23,
			ISG_HoverLeave = 24,
			ISG_Flick = 31,
		}
		[AllowDuplicates]
		public enum InkRecognitionConfidence : int32
		{
			IRC_Strong = 0,
			IRC_Intermediate = 1,
			IRC_Poor = 2,
		}
		[AllowDuplicates]
		public enum DISPID_InkGesture : int32
		{
			DISPID_IGId = 0,
			DISPID_IGGetHotPoint = 1,
			DISPID_IGConfidence = 2,
		}
		[AllowDuplicates]
		public enum DISPID_InkCursor : int32
		{
			DISPID_ICsrName = 0,
			DISPID_ICsrId = 1,
			DISPID_ICsrDrawingAttributes = 2,
			DISPID_ICsrButtons = 3,
			DISPID_ICsrInverted = 4,
			DISPID_ICsrTablet = 5,
		}
		[AllowDuplicates]
		public enum DISPID_InkCursors : int32
		{
			DISPID_ICs_NewEnum = -4,
			DISPID_ICsItem = 0,
			DISPID_ICsCount = 1,
		}
		[AllowDuplicates]
		public enum InkCursorButtonState : int32
		{
			ICBS_Unavailable = 0,
			ICBS_Up = 1,
			ICBS_Down = 2,
		}
		[AllowDuplicates]
		public enum DISPID_InkCursorButton : int32
		{
			DISPID_ICBName = 0,
			DISPID_ICBId = 1,
			DISPID_ICBState = 2,
		}
		[AllowDuplicates]
		public enum DISPID_InkCursorButtons : int32
		{
			DISPID_ICBs_NewEnum = -4,
			DISPID_ICBsItem = 0,
			DISPID_ICBsCount = 1,
		}
		[AllowDuplicates]
		public enum TabletHardwareCapabilities : int32
		{
			THWC_Integrated = 1,
			THWC_CursorMustTouch = 2,
			THWC_HardProximity = 4,
			THWC_CursorsHavePhysicalIds = 8,
		}
		[AllowDuplicates]
		public enum TabletPropertyMetricUnit : int32
		{
			TPMU_Default = 0,
			TPMU_Inches = 1,
			TPMU_Centimeters = 2,
			TPMU_Degrees = 3,
			TPMU_Radians = 4,
			TPMU_Seconds = 5,
			TPMU_Pounds = 6,
			TPMU_Grams = 7,
		}
		[AllowDuplicates]
		public enum DISPID_InkTablet : int32
		{
			DISPID_ITName = 0,
			DISPID_ITPlugAndPlayId = 1,
			DISPID_ITPropertyMetrics = 2,
			DISPID_ITIsPacketPropertySupported = 3,
			DISPID_ITMaximumInputRectangle = 4,
			DISPID_ITHardwareCapabilities = 5,
		}
		[AllowDuplicates]
		public enum TabletDeviceKind : int32
		{
			TDK_Mouse = 0,
			TDK_Pen = 1,
			TDK_Touch = 2,
		}
		[AllowDuplicates]
		public enum DISPID_InkTablet2 : int32
		{
			DISPID_IT2DeviceKind = 0,
		}
		[AllowDuplicates]
		public enum DISPID_InkTablet3 : int32
		{
			DISPID_IT3IsMultiTouch = 0,
			DISPID_IT3MaximumCursors = 1,
		}
		[AllowDuplicates]
		public enum DISPID_InkTablets : int32
		{
			DISPID_ITs_NewEnum = -4,
			DISPID_ITsItem = 0,
			DISPID_ITsDefaultTablet = 1,
			DISPID_ITsCount = 2,
			DISPID_ITsIsPacketPropertySupported = 3,
		}
		[AllowDuplicates]
		public enum DISPID_InkStrokeDisp : int32
		{
			DISPID_ISDInkIndex = 1,
			DISPID_ISDID = 2,
			DISPID_ISDGetBoundingBox = 3,
			DISPID_ISDDrawingAttributes = 4,
			DISPID_ISDFindIntersections = 5,
			DISPID_ISDGetRectangleIntersections = 6,
			DISPID_ISDClip = 7,
			DISPID_ISDHitTestCircle = 8,
			DISPID_ISDNearestPoint = 9,
			DISPID_ISDSplit = 10,
			DISPID_ISDExtendedProperties = 11,
			DISPID_ISDInk = 12,
			DISPID_ISDBezierPoints = 13,
			DISPID_ISDPolylineCusps = 14,
			DISPID_ISDBezierCusps = 15,
			DISPID_ISDSelfIntersections = 16,
			DISPID_ISDPacketCount = 17,
			DISPID_ISDPacketSize = 18,
			DISPID_ISDPacketDescription = 19,
			DISPID_ISDDeleted = 20,
			DISPID_ISDGetPacketDescriptionPropertyMetrics = 21,
			DISPID_ISDGetPoints = 22,
			DISPID_ISDSetPoints = 23,
			DISPID_ISDGetPacketData = 24,
			DISPID_ISDGetPacketValuesByProperty = 25,
			DISPID_ISDSetPacketValuesByProperty = 26,
			DISPID_ISDGetFlattenedBezierPoints = 27,
			DISPID_ISDScaleToRectangle = 28,
			DISPID_ISDTransform = 29,
			DISPID_ISDMove = 30,
			DISPID_ISDRotate = 31,
			DISPID_ISDShear = 32,
			DISPID_ISDScale = 33,
		}
		[AllowDuplicates]
		public enum DISPID_InkStrokes : int32
		{
			DISPID_ISs_NewEnum = -4,
			DISPID_ISsItem = 0,
			DISPID_ISsCount = 1,
			DISPID_ISsValid = 2,
			DISPID_ISsInk = 3,
			DISPID_ISsAdd = 4,
			DISPID_ISsAddStrokes = 5,
			DISPID_ISsRemove = 6,
			DISPID_ISsRemoveStrokes = 7,
			DISPID_ISsToString = 8,
			DISPID_ISsModifyDrawingAttributes = 9,
			DISPID_ISsGetBoundingBox = 10,
			DISPID_ISsScaleToRectangle = 11,
			DISPID_ISsTransform = 12,
			DISPID_ISsMove = 13,
			DISPID_ISsRotate = 14,
			DISPID_ISsShear = 15,
			DISPID_ISsScale = 16,
			DISPID_ISsClip = 17,
			DISPID_ISsRecognitionResult = 18,
			DISPID_ISsRemoveRecognitionResult = 19,
		}
		[AllowDuplicates]
		public enum DISPID_InkCustomStrokes : int32
		{
			DISPID_ICSs_NewEnum = -4,
			DISPID_ICSsItem = 0,
			DISPID_ICSsCount = 1,
			DISPID_ICSsAdd = 2,
			DISPID_ICSsRemove = 3,
			DISPID_ICSsClear = 4,
		}
		[AllowDuplicates]
		public enum DISPID_StrokeEvent : int32
		{
			DISPID_SEStrokesAdded = 1,
			DISPID_SEStrokesRemoved = 2,
		}
		[AllowDuplicates]
		public enum DISPID_Ink : int32
		{
			DISPID_IStrokes = 1,
			DISPID_IExtendedProperties = 2,
			DISPID_IGetBoundingBox = 3,
			DISPID_IDeleteStrokes = 4,
			DISPID_IDeleteStroke = 5,
			DISPID_IExtractStrokes = 6,
			DISPID_IExtractWithRectangle = 7,
			DISPID_IDirty = 8,
			DISPID_ICustomStrokes = 9,
			DISPID_IClone = 10,
			DISPID_IHitTestCircle = 11,
			DISPID_IHitTestWithRectangle = 12,
			DISPID_IHitTestWithLasso = 13,
			DISPID_INearestPoint = 14,
			DISPID_ICreateStrokes = 15,
			DISPID_ICreateStroke = 16,
			DISPID_IAddStrokesAtRectangle = 17,
			DISPID_IClip = 18,
			DISPID_ISave = 19,
			DISPID_ILoad = 20,
			DISPID_ICreateStrokeFromPoints = 21,
			DISPID_IClipboardCopyWithRectangle = 22,
			DISPID_IClipboardCopy = 23,
			DISPID_ICanPaste = 24,
			DISPID_IClipboardPaste = 25,
		}
		[AllowDuplicates]
		public enum DISPID_InkEvent : int32
		{
			DISPID_IEInkAdded = 1,
			DISPID_IEInkDeleted = 2,
		}
		[AllowDuplicates]
		public enum DISPID_InkRenderer : int32
		{
			DISPID_IRGetViewTransform = 1,
			DISPID_IRSetViewTransform = 2,
			DISPID_IRGetObjectTransform = 3,
			DISPID_IRSetObjectTransform = 4,
			DISPID_IRDraw = 5,
			DISPID_IRDrawStroke = 6,
			DISPID_IRPixelToInkSpace = 7,
			DISPID_IRInkSpaceToPixel = 8,
			DISPID_IRPixelToInkSpaceFromPoints = 9,
			DISPID_IRInkSpaceToPixelFromPoints = 10,
			DISPID_IRMeasure = 11,
			DISPID_IRMeasureStroke = 12,
			DISPID_IRMove = 13,
			DISPID_IRRotate = 14,
			DISPID_IRScale = 15,
		}
		[AllowDuplicates]
		public enum InkCollectorEventInterest : int32
		{
			ICEI_DefaultEvents = -1,
			ICEI_CursorDown = 0,
			ICEI_Stroke = 1,
			ICEI_NewPackets = 2,
			ICEI_NewInAirPackets = 3,
			ICEI_CursorButtonDown = 4,
			ICEI_CursorButtonUp = 5,
			ICEI_CursorInRange = 6,
			ICEI_CursorOutOfRange = 7,
			ICEI_SystemGesture = 8,
			ICEI_TabletAdded = 9,
			ICEI_TabletRemoved = 10,
			ICEI_MouseDown = 11,
			ICEI_MouseMove = 12,
			ICEI_MouseUp = 13,
			ICEI_MouseWheel = 14,
			ICEI_DblClick = 15,
			ICEI_AllEvents = 16,
		}
		[AllowDuplicates]
		public enum InkMouseButton : int32
		{
			IMF_Left = 1,
			IMF_Right = 2,
			IMF_Middle = 4,
		}
		[AllowDuplicates]
		public enum InkShiftKeyModifierFlags : int32
		{
			IKM_Shift = 1,
			IKM_Control = 2,
			IKM_Alt = 4,
		}
		[AllowDuplicates]
		public enum DISPID_InkCollectorEvent : int32
		{
			DISPID_ICEStroke = 1,
			DISPID_ICECursorDown = 2,
			DISPID_ICENewPackets = 3,
			DISPID_ICENewInAirPackets = 4,
			DISPID_ICECursorButtonDown = 5,
			DISPID_ICECursorButtonUp = 6,
			DISPID_ICECursorInRange = 7,
			DISPID_ICECursorOutOfRange = 8,
			DISPID_ICESystemGesture = 9,
			DISPID_ICEGesture = 10,
			DISPID_ICETabletAdded = 11,
			DISPID_ICETabletRemoved = 12,
			DISPID_IOEPainting = 13,
			DISPID_IOEPainted = 14,
			DISPID_IOESelectionChanging = 15,
			DISPID_IOESelectionChanged = 16,
			DISPID_IOESelectionMoving = 17,
			DISPID_IOESelectionMoved = 18,
			DISPID_IOESelectionResizing = 19,
			DISPID_IOESelectionResized = 20,
			DISPID_IOEStrokesDeleting = 21,
			DISPID_IOEStrokesDeleted = 22,
			DISPID_IPEChangeUICues = 23,
			DISPID_IPEClick = 24,
			DISPID_IPEDblClick = 25,
			DISPID_IPEInvalidated = 26,
			DISPID_IPEMouseDown = 27,
			DISPID_IPEMouseEnter = 28,
			DISPID_IPEMouseHover = 29,
			DISPID_IPEMouseLeave = 30,
			DISPID_IPEMouseMove = 31,
			DISPID_IPEMouseUp = 32,
			DISPID_IPEMouseWheel = 33,
			DISPID_IPESizeModeChanged = 34,
			DISPID_IPEStyleChanged = 35,
			DISPID_IPESystemColorsChanged = 36,
			DISPID_IPEKeyDown = 37,
			DISPID_IPEKeyPress = 38,
			DISPID_IPEKeyUp = 39,
			DISPID_IPEResize = 40,
			DISPID_IPESizeChanged = 41,
		}
		[AllowDuplicates]
		public enum InkOverlayEditingMode : int32
		{
			IOEM_Ink = 0,
			IOEM_Delete = 1,
			IOEM_Select = 2,
		}
		[AllowDuplicates]
		public enum InkOverlayAttachMode : int32
		{
			IOAM_Behind = 0,
			IOAM_InFront = 1,
		}
		[AllowDuplicates]
		public enum InkPictureSizeMode : int32
		{
			IPSM_AutoSize = 0,
			IPSM_CenterImage = 1,
			IPSM_Normal = 2,
			IPSM_StretchImage = 3,
		}
		[AllowDuplicates]
		public enum InkOverlayEraserMode : int32
		{
			IOERM_StrokeErase = 0,
			IOERM_PointErase = 1,
		}
		[AllowDuplicates]
		public enum InkCollectionMode : int32
		{
			ICM_InkOnly = 0,
			ICM_GestureOnly = 1,
			ICM_InkAndGesture = 2,
		}
		[AllowDuplicates]
		public enum DISPID_InkCollector : int32
		{
			DISPID_ICEnabled = 1,
			DISPID_ICHwnd = 2,
			DISPID_ICPaint = 3,
			DISPID_ICText = 4,
			DISPID_ICDefaultDrawingAttributes = 5,
			DISPID_ICRenderer = 6,
			DISPID_ICInk = 7,
			DISPID_ICAutoRedraw = 8,
			DISPID_ICCollectingInk = 9,
			DISPID_ICSetEventInterest = 10,
			DISPID_ICGetEventInterest = 11,
			DISPID_IOEditingMode = 12,
			DISPID_IOSelection = 13,
			DISPID_IOAttachMode = 14,
			DISPID_IOHitTestSelection = 15,
			DISPID_IODraw = 16,
			DISPID_IPPicture = 17,
			DISPID_IPSizeMode = 18,
			DISPID_IPBackColor = 19,
			DISPID_ICCursors = 20,
			DISPID_ICMarginX = 21,
			DISPID_ICMarginY = 22,
			DISPID_ICSetWindowInputRectangle = 23,
			DISPID_ICGetWindowInputRectangle = 24,
			DISPID_ICTablet = 25,
			DISPID_ICSetAllTabletsMode = 26,
			DISPID_ICSetSingleTabletIntegratedMode = 27,
			DISPID_ICCollectionMode = 28,
			DISPID_ICSetGestureStatus = 29,
			DISPID_ICGetGestureStatus = 30,
			DISPID_ICDynamicRendering = 31,
			DISPID_ICDesiredPacketDescription = 32,
			DISPID_IOEraserMode = 33,
			DISPID_IOEraserWidth = 34,
			DISPID_ICMouseIcon = 35,
			DISPID_ICMousePointer = 36,
			DISPID_IPInkEnabled = 37,
			DISPID_ICSupportHighContrastInk = 38,
			DISPID_IOSupportHighContrastSelectionUI = 39,
		}
		[AllowDuplicates]
		public enum DISPID_InkRecognizer : int32
		{
			DISPID_RecoClsid = 1,
			DISPID_RecoName = 2,
			DISPID_RecoVendor = 3,
			DISPID_RecoCapabilities = 4,
			DISPID_RecoLanguageID = 5,
			DISPID_RecoPreferredPacketDescription = 6,
			DISPID_RecoCreateRecognizerContext = 7,
			DISPID_RecoSupportedProperties = 8,
		}
		[AllowDuplicates]
		public enum InkRecognizerCapabilities : int32
		{
			IRC_DontCare = 1,
			IRC_Object = 2,
			IRC_FreeInput = 4,
			IRC_LinedInput = 8,
			IRC_BoxedInput = 16,
			IRC_CharacterAutoCompletionInput = 32,
			IRC_RightAndDown = 64,
			IRC_LeftAndDown = 128,
			IRC_DownAndLeft = 256,
			IRC_DownAndRight = 512,
			IRC_ArbitraryAngle = 1024,
			IRC_Lattice = 2048,
			IRC_AdviseInkChange = 4096,
			IRC_StrokeReorder = 8192,
			IRC_Personalizable = 16384,
			IRC_PrefersArbitraryAngle = 32768,
			IRC_PrefersParagraphBreaking = 65536,
			IRC_PrefersSegmentation = 131072,
			IRC_Cursive = 262144,
			IRC_TextPrediction = 524288,
			IRC_Alpha = 1048576,
			IRC_Beta = 2097152,
		}
		[AllowDuplicates]
		public enum DISPID_InkRecognizer2 : int32
		{
			DISPID_RecoId = 0,
			DISPID_RecoUnicodeRanges = 1,
		}
		[AllowDuplicates]
		public enum DISPID_InkRecognizers : int32
		{
			DISPID_IRecos_NewEnum = -4,
			DISPID_IRecosItem = 0,
			DISPID_IRecosCount = 1,
			DISPID_IRecosGetDefaultRecognizer = 2,
		}
		[AllowDuplicates]
		public enum InkRecognizerCharacterAutoCompletionMode : int32
		{
			IRCACM_Full = 0,
			IRCACM_Prefix = 1,
			IRCACM_Random = 2,
		}
		[AllowDuplicates]
		public enum InkRecognitionModes : int32
		{
			IRM_None = 0,
			IRM_WordModeOnly = 1,
			IRM_Coerce = 2,
			IRM_TopInkBreaksOnly = 4,
			IRM_PrefixOk = 8,
			IRM_LineMode = 16,
			IRM_DisablePersonalization = 32,
			IRM_AutoSpace = 64,
			IRM_Max = 128,
		}
		[AllowDuplicates]
		public enum DISPID_InkRecognitionEvent : int32
		{
			DISPID_IRERecognitionWithAlternates = 1,
			DISPID_IRERecognition = 2,
		}
		[AllowDuplicates]
		public enum DISPID_InkRecoContext : int32
		{
			DISPID_IRecoCtx_Strokes = 1,
			DISPID_IRecoCtx_CharacterAutoCompletionMode = 2,
			DISPID_IRecoCtx_Factoid = 3,
			DISPID_IRecoCtx_WordList = 4,
			DISPID_IRecoCtx_Recognizer = 5,
			DISPID_IRecoCtx_Guide = 6,
			DISPID_IRecoCtx_Flags = 7,
			DISPID_IRecoCtx_PrefixText = 8,
			DISPID_IRecoCtx_SuffixText = 9,
			DISPID_IRecoCtx_StopRecognition = 10,
			DISPID_IRecoCtx_Clone = 11,
			DISPID_IRecoCtx_Recognize = 12,
			DISPID_IRecoCtx_StopBackgroundRecognition = 13,
			DISPID_IRecoCtx_EndInkInput = 14,
			DISPID_IRecoCtx_BackgroundRecognize = 15,
			DISPID_IRecoCtx_BackgroundRecognizeWithAlternates = 16,
			DISPID_IRecoCtx_IsStringSupported = 17,
		}
		[AllowDuplicates]
		public enum DISPID_InkRecoContext2 : int32
		{
			DISPID_IRecoCtx2_EnabledUnicodeRanges = 0,
		}
		[AllowDuplicates]
		public enum InkRecognitionAlternatesSelection : int32
		{
			IRAS_Start = 0,
			IRAS_DefaultCount = 10,
			IRAS_All = -1,
		}
		[AllowDuplicates]
		public enum DISPID_InkRecognitionResult : int32
		{
			DISPID_InkRecognitionResult_TopString = 1,
			DISPID_InkRecognitionResult_TopAlternate = 2,
			DISPID_InkRecognitionResult_Strokes = 3,
			DISPID_InkRecognitionResult_TopConfidence = 4,
			DISPID_InkRecognitionResult_AlternatesFromSelection = 5,
			DISPID_InkRecognitionResult_ModifyTopAlternate = 6,
			DISPID_InkRecognitionResult_SetResultOnStrokes = 7,
		}
		[AllowDuplicates]
		public enum DISPID_InkRecoAlternate : int32
		{
			DISPID_InkRecoAlternate_String = 1,
			DISPID_InkRecoAlternate_LineNumber = 2,
			DISPID_InkRecoAlternate_Baseline = 3,
			DISPID_InkRecoAlternate_Midline = 4,
			DISPID_InkRecoAlternate_Ascender = 5,
			DISPID_InkRecoAlternate_Descender = 6,
			DISPID_InkRecoAlternate_Confidence = 7,
			DISPID_InkRecoAlternate_Strokes = 8,
			DISPID_InkRecoAlternate_GetStrokesFromStrokeRanges = 9,
			DISPID_InkRecoAlternate_GetStrokesFromTextRange = 10,
			DISPID_InkRecoAlternate_GetTextRangeFromStrokes = 11,
			DISPID_InkRecoAlternate_GetPropertyValue = 12,
			DISPID_InkRecoAlternate_LineAlternates = 13,
			DISPID_InkRecoAlternate_ConfidenceAlternates = 14,
			DISPID_InkRecoAlternate_AlternatesWithConstantPropertyValues = 15,
		}
		[AllowDuplicates]
		public enum DISPID_InkRecognitionAlternates : int32
		{
			DISPID_InkRecognitionAlternates_NewEnum = -4,
			DISPID_InkRecognitionAlternates_Item = 0,
			DISPID_InkRecognitionAlternates_Count = 1,
			DISPID_InkRecognitionAlternates_Strokes = 2,
		}
		[AllowDuplicates]
		public enum DISPID_InkRecognizerGuide : int32
		{
			DISPID_IRGWritingBox = 1,
			DISPID_IRGDrawnBox = 2,
			DISPID_IRGRows = 3,
			DISPID_IRGColumns = 4,
			DISPID_IRGMidline = 5,
			DISPID_IRGGuideData = 6,
		}
		[AllowDuplicates]
		public enum DISPID_InkWordList : int32
		{
			DISPID_InkWordList_AddWord = 0,
			DISPID_InkWordList_RemoveWord = 1,
			DISPID_InkWordList_Merge = 2,
		}
		[AllowDuplicates]
		public enum DISPID_InkWordList2 : int32
		{
			DISPID_InkWordList2_AddWords = 3,
		}
		[AllowDuplicates]
		public enum InkDivisionType : int32
		{
			IDT_Segment = 0,
			IDT_Line = 1,
			IDT_Paragraph = 2,
			IDT_Drawing = 3,
		}
		[AllowDuplicates]
		public enum DISPID_InkDivider : int32
		{
			DISPID_IInkDivider_Strokes = 1,
			DISPID_IInkDivider_RecognizerContext = 2,
			DISPID_IInkDivider_LineHeight = 3,
			DISPID_IInkDivider_Divide = 4,
		}
		[AllowDuplicates]
		public enum DISPID_InkDivisionResult : int32
		{
			DISPID_IInkDivisionResult_Strokes = 1,
			DISPID_IInkDivisionResult_ResultByType = 2,
		}
		[AllowDuplicates]
		public enum DISPID_InkDivisionUnit : int32
		{
			DISPID_IInkDivisionUnit_Strokes = 1,
			DISPID_IInkDivisionUnit_DivisionType = 2,
			DISPID_IInkDivisionUnit_RecognizedString = 3,
			DISPID_IInkDivisionUnit_RotationTransform = 4,
		}
		[AllowDuplicates]
		public enum DISPID_InkDivisionUnits : int32
		{
			DISPID_IInkDivisionUnits_NewEnum = -4,
			DISPID_IInkDivisionUnits_Item = 0,
			DISPID_IInkDivisionUnits_Count = 1,
		}
		[AllowDuplicates]
		public enum DISPID_PenInputPanel : int32
		{
			DISPID_PIPAttachedEditWindow = 0,
			DISPID_PIPFactoid = 1,
			DISPID_PIPCurrentPanel = 2,
			DISPID_PIPDefaultPanel = 3,
			DISPID_PIPVisible = 4,
			DISPID_PIPTop = 5,
			DISPID_PIPLeft = 6,
			DISPID_PIPWidth = 7,
			DISPID_PIPHeight = 8,
			DISPID_PIPMoveTo = 9,
			DISPID_PIPCommitPendingInput = 10,
			DISPID_PIPRefresh = 11,
			DISPID_PIPBusy = 12,
			DISPID_PIPVerticalOffset = 13,
			DISPID_PIPHorizontalOffset = 14,
			DISPID_PIPEnableTsf = 15,
			DISPID_PIPAutoShow = 16,
		}
		[AllowDuplicates]
		public enum DISPID_PenInputPanelEvents : int32
		{
			DISPID_PIPEVisibleChanged = 0,
			DISPID_PIPEPanelChanged = 1,
			DISPID_PIPEInputFailed = 2,
			DISPID_PIPEPanelMoving = 3,
		}
		[AllowDuplicates]
		public enum VisualState : int32
		{
			InPlace = 0,
			Floating = 1,
			DockedTop = 2,
			DockedBottom = 3,
			Closed = 4,
		}
		[AllowDuplicates]
		public enum InteractionMode : int32
		{
			InteractionMode_InPlace = 0,
			InteractionMode_Floating = 1,
			InteractionMode_DockedTop = 2,
			InteractionMode_DockedBottom = 3,
		}
		[AllowDuplicates]
		public enum InPlaceState : int32
		{
			InPlaceState_Auto = 0,
			InPlaceState_HoverTarget = 1,
			InPlaceState_Expanded = 2,
		}
		[AllowDuplicates]
		public enum PanelInputArea : int32
		{
			PanelInputArea_Auto = 0,
			PanelInputArea_Keyboard = 1,
			PanelInputArea_WritingPad = 2,
			PanelInputArea_CharacterPad = 3,
		}
		[AllowDuplicates]
		public enum CorrectionMode : int32
		{
			CorrectionMode_NotVisible = 0,
			CorrectionMode_PreInsertion = 1,
			CorrectionMode_PostInsertionCollapsed = 2,
			CorrectionMode_PostInsertionExpanded = 3,
		}
		[AllowDuplicates]
		public enum CorrectionPosition : int32
		{
			CorrectionPosition_Auto = 0,
			CorrectionPosition_Bottom = 1,
			CorrectionPosition_Top = 2,
		}
		[AllowDuplicates]
		public enum InPlaceDirection : int32
		{
			InPlaceDirection_Auto = 0,
			InPlaceDirection_Bottom = 1,
			InPlaceDirection_Top = 2,
		}
		[AllowDuplicates]
		public enum EventMask : int32
		{
			EventMask_InPlaceStateChanging = 1,
			EventMask_InPlaceStateChanged = 2,
			EventMask_InPlaceSizeChanging = 4,
			EventMask_InPlaceSizeChanged = 8,
			EventMask_InputAreaChanging = 16,
			EventMask_InputAreaChanged = 32,
			EventMask_CorrectionModeChanging = 64,
			EventMask_CorrectionModeChanged = 128,
			EventMask_InPlaceVisibilityChanging = 256,
			EventMask_InPlaceVisibilityChanged = 512,
			EventMask_TextInserting = 1024,
			EventMask_TextInserted = 2048,
			EventMask_All = 4095,
		}
		[AllowDuplicates]
		public enum PanelType : int32
		{
			PT_Default = 0,
			PT_Inactive = 1,
			PT_Handwriting = 2,
			PT_Keyboard = 3,
		}
		[AllowDuplicates]
		public enum FLICKDIRECTION : int32
		{
			FLICKDIRECTION_MIN = 0,
			FLICKDIRECTION_RIGHT = 0,
			FLICKDIRECTION_UPRIGHT = 1,
			FLICKDIRECTION_UP = 2,
			FLICKDIRECTION_UPLEFT = 3,
			FLICKDIRECTION_LEFT = 4,
			FLICKDIRECTION_DOWNLEFT = 5,
			FLICKDIRECTION_DOWN = 6,
			FLICKDIRECTION_DOWNRIGHT = 7,
			FLICKDIRECTION_INVALID = 8,
		}
		[AllowDuplicates]
		public enum FLICKMODE : int32
		{
			FLICKMODE_MIN = 0,
			FLICKMODE_OFF = 0,
			FLICKMODE_ON = 1,
			FLICKMODE_LEARNING = 2,
			FLICKMODE_MAX = 2,
			FLICKMODE_DEFAULT = 1,
		}
		[AllowDuplicates]
		public enum FLICKACTION_COMMANDCODE : int32
		{
			FLICKACTION_COMMANDCODE_NULL = 0,
			FLICKACTION_COMMANDCODE_SCROLL = 1,
			FLICKACTION_COMMANDCODE_APPCOMMAND = 2,
			FLICKACTION_COMMANDCODE_CUSTOMKEY = 3,
			FLICKACTION_COMMANDCODE_KEYMODIFIER = 4,
		}
		[AllowDuplicates]
		public enum SCROLLDIRECTION : int32
		{
			SCROLLDIRECTION_UP = 0,
			SCROLLDIRECTION_DOWN = 1,
		}
		[AllowDuplicates]
		public enum KEYMODIFIER : int32
		{
			KEYMODIFIER_CONTROL = 1,
			KEYMODIFIER_MENU = 2,
			KEYMODIFIER_SHIFT = 4,
			KEYMODIFIER_WIN = 8,
			KEYMODIFIER_ALTGR = 16,
			KEYMODIFIER_EXT = 32,
		}
		[AllowDuplicates]
		public enum MouseButton : int32
		{
			NO_BUTTON = 0,
			LEFT_BUTTON = 1,
			RIGHT_BUTTON = 2,
			MIDDLE_BUTTON = 4,
		}
		[AllowDuplicates]
		public enum SelAlignmentConstants : int32
		{
			rtfLeft = 0,
			rtfRight = 1,
			rtfCenter = 2,
		}
		[AllowDuplicates]
		public enum DISPID_InkEdit : int32
		{
			DISPID_Text = 0,
			DISPID_TextRTF = 1,
			DISPID_Hwnd = 2,
			DISPID_DisableNoScroll = 3,
			DISPID_Locked = 4,
			DISPID_Enabled = 5,
			DISPID_MaxLength = 6,
			DISPID_MultiLine = 7,
			DISPID_ScrollBars = 8,
			DISPID_RTSelStart = 9,
			DISPID_RTSelLength = 10,
			DISPID_RTSelText = 11,
			DISPID_SelAlignment = 12,
			DISPID_SelBold = 13,
			DISPID_SelCharOffset = 14,
			DISPID_SelColor = 15,
			DISPID_SelFontName = 16,
			DISPID_SelFontSize = 17,
			DISPID_SelItalic = 18,
			DISPID_SelRTF = 19,
			DISPID_SelUnderline = 20,
			DISPID_DragIcon = 21,
			DISPID_Status = 22,
			DISPID_UseMouseForInput = 23,
			DISPID_InkMode = 24,
			DISPID_InkInsertMode = 25,
			DISPID_RecoTimeout = 26,
			DISPID_DrawAttr = 27,
			DISPID_Recognizer = 28,
			DISPID_Factoid = 29,
			DISPID_SelInk = 30,
			DISPID_SelInksDisplayMode = 31,
			DISPID_Recognize = 32,
			DISPID_GetGestStatus = 33,
			DISPID_SetGestStatus = 34,
			DISPID_Refresh = 35,
		}
		[AllowDuplicates]
		public enum DISPID_InkEditEvents : int32
		{
			DISPID_IeeChange = 1,
			DISPID_IeeSelChange = 2,
			DISPID_IeeKeyDown = 3,
			DISPID_IeeKeyUp = 4,
			DISPID_IeeMouseUp = 5,
			DISPID_IeeMouseDown = 6,
			DISPID_IeeKeyPress = 7,
			DISPID_IeeDblClick = 8,
			DISPID_IeeClick = 9,
			DISPID_IeeMouseMove = 10,
			DISPID_IeeCursorDown = 21,
			DISPID_IeeStroke = 22,
			DISPID_IeeGesture = 23,
			DISPID_IeeRecognitionResult = 24,
		}
		[AllowDuplicates]
		public enum InkMode : int32
		{
			IEM_Disabled = 0,
			IEM_Ink = 1,
			IEM_InkAndGesture = 2,
		}
		[AllowDuplicates]
		public enum InkInsertMode : int32
		{
			IEM_InsertText = 0,
			IEM_InsertInk = 1,
		}
		[AllowDuplicates]
		public enum InkEditStatus : int32
		{
			IES_Idle = 0,
			IES_Collecting = 1,
			IES_Recognizing = 2,
		}
		[AllowDuplicates]
		public enum InkDisplayMode : int32
		{
			IDM_Ink = 0,
			IDM_Text = 1,
		}
		[AllowDuplicates]
		public enum AppearanceConstants : int32
		{
			rtfFlat = 0,
			rtfThreeD = 1,
		}
		[AllowDuplicates]
		public enum BorderStyleConstants : int32
		{
			rtfNoBorder = 0,
			rtfFixedSingle = 1,
		}
		[AllowDuplicates]
		public enum ScrollBarsConstants : int32
		{
			rtfNone = 0,
			rtfHorizontal = 1,
			rtfVertical = 2,
			rtfBoth = 3,
		}
		[AllowDuplicates]
		public enum MICUIELEMENT : int32
		{
			MICUIELEMENT_BUTTON_WRITE = 1,
			MICUIELEMENT_BUTTON_ERASE = 2,
			MICUIELEMENT_BUTTON_CORRECT = 4,
			MICUIELEMENT_BUTTON_CLEAR = 8,
			MICUIELEMENT_BUTTON_UNDO = 16,
			MICUIELEMENT_BUTTON_REDO = 32,
			MICUIELEMENT_BUTTON_INSERT = 64,
			MICUIELEMENT_BUTTON_CANCEL = 128,
			MICUIELEMENT_INKPANEL_BACKGROUND = 256,
			MICUIELEMENT_RESULTPANEL_BACKGROUND = 512,
		}
		[AllowDuplicates]
		public enum MICUIELEMENTSTATE : int32
		{
			MICUIELEMENTSTATE_NORMAL = 1,
			MICUIELEMENTSTATE_HOT = 2,
			MICUIELEMENTSTATE_PRESSED = 3,
			MICUIELEMENTSTATE_DISABLED = 4,
		}
		[AllowDuplicates]
		public enum DISPID_MathInputControlEvents : int32
		{
			DISPID_MICInsert = 0,
			DISPID_MICClose = 1,
			DISPID_MICPaint = 2,
			DISPID_MICClear = 3,
		}
		[AllowDuplicates]
		public enum RealTimeStylusDataInterest : int32
		{
			RTSDI_AllData = -1,
			RTSDI_None = 0,
			RTSDI_Error = 1,
			RTSDI_RealTimeStylusEnabled = 2,
			RTSDI_RealTimeStylusDisabled = 4,
			RTSDI_StylusNew = 8,
			RTSDI_StylusInRange = 16,
			RTSDI_InAirPackets = 32,
			RTSDI_StylusOutOfRange = 64,
			RTSDI_StylusDown = 128,
			RTSDI_Packets = 256,
			RTSDI_StylusUp = 512,
			RTSDI_StylusButtonUp = 1024,
			RTSDI_StylusButtonDown = 2048,
			RTSDI_SystemEvents = 4096,
			RTSDI_TabletAdded = 8192,
			RTSDI_TabletRemoved = 16384,
			RTSDI_CustomStylusDataAdded = 32768,
			RTSDI_UpdateMapping = 65536,
			RTSDI_DefaultEvents = 37766,
		}
		[AllowDuplicates]
		public enum StylusQueue : int32
		{
			SyncStylusQueue = 1,
			AsyncStylusQueueImmediate = 2,
			AsyncStylusQueue = 3,
		}
		[AllowDuplicates]
		public enum RealTimeStylusLockType : int32
		{
			RTSLT_ObjLock = 1,
			RTSLT_SyncEventLock = 2,
			RTSLT_AsyncEventLock = 4,
			RTSLT_ExcludeCallback = 8,
			RTSLT_SyncObjLock = 11,
			RTSLT_AsyncObjLock = 13,
		}
		[AllowDuplicates]
		public enum LINE_METRICS : int32
		{
			LM_BASELINE = 0,
			LM_MIDLINE = 1,
			LM_ASCENDER = 2,
			LM_DESCENDER = 3,
		}
		[AllowDuplicates]
		public enum CONFIDENCE_LEVEL : int32
		{
			CFL_STRONG = 0,
			CFL_INTERMEDIATE = 1,
			CFL_POOR = 2,
		}
		[AllowDuplicates]
		public enum ALT_BREAKS : int32
		{
			ALT_BREAKS_SAME = 0,
			ALT_BREAKS_UNIQUE = 1,
			ALT_BREAKS_FULL = 2,
		}
		[AllowDuplicates]
		public enum enumRECO_TYPE : int32
		{
			RECO_TYPE_WSTRING = 0,
			RECO_TYPE_WCHAR = 1,
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
			
			public function HRESULT(IInkRectangle *self, int32* Units) get_Top;
			public function HRESULT(IInkRectangle *self, int32 Units) put_Top;
			public function HRESULT(IInkRectangle *self, int32* Units) get_Left;
			public function HRESULT(IInkRectangle *self, int32 Units) put_Left;
			public function HRESULT(IInkRectangle *self, int32* Units) get_Bottom;
			public function HRESULT(IInkRectangle *self, int32 Units) put_Bottom;
			public function HRESULT(IInkRectangle *self, int32* Units) get_Right;
			public function HRESULT(IInkRectangle *self, int32 Units) put_Right;
			public function HRESULT(IInkRectangle *self, RECT* Rect) get_Data;
			public function HRESULT(IInkRectangle *self, RECT Rect) put_Data;
			public function HRESULT(IInkRectangle *self, int32* Top, int32* Left, int32* Bottom, int32* Right) GetRectangle;
			public function HRESULT(IInkRectangle *self, int32 Top, int32 Left, int32 Bottom, int32 Right) SetRectangle;
		}
		[CRepr]
		public struct IInkExtendedProperty : IDispatch
		{
			public const new Guid IID = .(0xdb489209, 0xb7c3, 0x411d, 0x90, 0xf6, 0x15, 0x48, 0xcf, 0xff, 0x27, 0x1e);
			
			public function HRESULT(IInkExtendedProperty *self, BSTR* Guid) get_Guid;
			public function HRESULT(IInkExtendedProperty *self, VARIANT* Data) get_Data;
			public function HRESULT(IInkExtendedProperty *self, VARIANT Data) put_Data;
		}
		[CRepr]
		public struct IInkExtendedProperties : IDispatch
		{
			public const new Guid IID = .(0x89f2a8be, 0x95a9, 0x4530, 0x8b, 0x8f, 0x88, 0xe9, 0x71, 0xe3, 0xe2, 0x5f);
			
			public function HRESULT(IInkExtendedProperties *self, int32* Count) get_Count;
			public function HRESULT(IInkExtendedProperties *self, IUnknown** _NewEnum) get__NewEnum;
			public function HRESULT(IInkExtendedProperties *self, VARIANT Identifier, IInkExtendedProperty** Item) Item;
			public function HRESULT(IInkExtendedProperties *self, BSTR Guid, VARIANT Data, IInkExtendedProperty** InkExtendedProperty) Add;
			public function HRESULT(IInkExtendedProperties *self, VARIANT Identifier) Remove;
			public function HRESULT(IInkExtendedProperties *self) Clear;
			public function HRESULT(IInkExtendedProperties *self, BSTR Guid, int16* DoesPropertyExist) DoesPropertyExist;
		}
		[CRepr]
		public struct IInkDrawingAttributes : IDispatch
		{
			public const new Guid IID = .(0xbf519b75, 0x0a15, 0x4623, 0xad, 0xc9, 0xc0, 0x0d, 0x43, 0x6a, 0x80, 0x92);
			
			public function HRESULT(IInkDrawingAttributes *self, int32* CurrentColor) get_Color;
			public function HRESULT(IInkDrawingAttributes *self, int32 NewColor) put_Color;
			public function HRESULT(IInkDrawingAttributes *self, float* CurrentWidth) get_Width;
			public function HRESULT(IInkDrawingAttributes *self, float NewWidth) put_Width;
			public function HRESULT(IInkDrawingAttributes *self, float* CurrentHeight) get_Height;
			public function HRESULT(IInkDrawingAttributes *self, float NewHeight) put_Height;
			public function HRESULT(IInkDrawingAttributes *self, int16* Flag) get_FitToCurve;
			public function HRESULT(IInkDrawingAttributes *self, int16 Flag) put_FitToCurve;
			public function HRESULT(IInkDrawingAttributes *self, int16* Flag) get_IgnorePressure;
			public function HRESULT(IInkDrawingAttributes *self, int16 Flag) put_IgnorePressure;
			public function HRESULT(IInkDrawingAttributes *self, int16* Flag) get_AntiAliased;
			public function HRESULT(IInkDrawingAttributes *self, int16 Flag) put_AntiAliased;
			public function HRESULT(IInkDrawingAttributes *self, int32* CurrentTransparency) get_Transparency;
			public function HRESULT(IInkDrawingAttributes *self, int32 NewTransparency) put_Transparency;
			public function HRESULT(IInkDrawingAttributes *self, InkRasterOperation* CurrentRasterOperation) get_RasterOperation;
			public function HRESULT(IInkDrawingAttributes *self, InkRasterOperation NewRasterOperation) put_RasterOperation;
			public function HRESULT(IInkDrawingAttributes *self, InkPenTip* CurrentPenTip) get_PenTip;
			public function HRESULT(IInkDrawingAttributes *self, InkPenTip NewPenTip) put_PenTip;
			public function HRESULT(IInkDrawingAttributes *self, IInkExtendedProperties** Properties) get_ExtendedProperties;
			public function HRESULT(IInkDrawingAttributes *self, IInkDrawingAttributes** DrawingAttributes) Clone;
		}
		[CRepr]
		public struct IInkTransform : IDispatch
		{
			public const new Guid IID = .(0x615f1d43, 0x8703, 0x4565, 0x88, 0xe2, 0x82, 0x01, 0xd2, 0xec, 0xd7, 0xb7);
			
			public function HRESULT(IInkTransform *self) Reset;
			public function HRESULT(IInkTransform *self, float HorizontalComponent, float VerticalComponent) Translate;
			public function HRESULT(IInkTransform *self, float Degrees, float x, float y) Rotate;
			public function HRESULT(IInkTransform *self, int16 Horizontally, int16 Vertically) Reflect;
			public function HRESULT(IInkTransform *self, float HorizontalComponent, float VerticalComponent) Shear;
			public function HRESULT(IInkTransform *self, float HorizontalMultiplier, float VerticalMultiplier) ScaleTransform;
			public function HRESULT(IInkTransform *self, float* eM11, float* eM12, float* eM21, float* eM22, float* eDx, float* eDy) GetTransform;
			public function HRESULT(IInkTransform *self, float eM11, float eM12, float eM21, float eM22, float eDx, float eDy) SetTransform;
			public function HRESULT(IInkTransform *self, float* Value) get_eM11;
			public function HRESULT(IInkTransform *self, float Value) put_eM11;
			public function HRESULT(IInkTransform *self, float* Value) get_eM12;
			public function HRESULT(IInkTransform *self, float Value) put_eM12;
			public function HRESULT(IInkTransform *self, float* Value) get_eM21;
			public function HRESULT(IInkTransform *self, float Value) put_eM21;
			public function HRESULT(IInkTransform *self, float* Value) get_eM22;
			public function HRESULT(IInkTransform *self, float Value) put_eM22;
			public function HRESULT(IInkTransform *self, float* Value) get_eDx;
			public function HRESULT(IInkTransform *self, float Value) put_eDx;
			public function HRESULT(IInkTransform *self, float* Value) get_eDy;
			public function HRESULT(IInkTransform *self, float Value) put_eDy;
			public function HRESULT(IInkTransform *self, XFORM* XForm) get_Data;
			public function HRESULT(IInkTransform *self, XFORM XForm) put_Data;
		}
		[CRepr]
		public struct IInkGesture : IDispatch
		{
			public const new Guid IID = .(0x3bdc0a97, 0x04e5, 0x4e26, 0xb8, 0x13, 0x18, 0xf0, 0x52, 0xd4, 0x1d, 0xef);
			
			public function HRESULT(IInkGesture *self, InkRecognitionConfidence* Confidence) get_Confidence;
			public function HRESULT(IInkGesture *self, InkApplicationGesture* Id) get_Id;
			public function HRESULT(IInkGesture *self, int32* X, int32* Y) GetHotPoint;
		}
		[CRepr]
		public struct IInkCursor : IDispatch
		{
			public const new Guid IID = .(0xad30c630, 0x40c5, 0x4350, 0x84, 0x05, 0x9c, 0x71, 0x01, 0x2f, 0xc5, 0x58);
			
			public function HRESULT(IInkCursor *self, BSTR* Name) get_Name;
			public function HRESULT(IInkCursor *self, int32* Id) get_Id;
			public function HRESULT(IInkCursor *self, int16* Status) get_Inverted;
			public function HRESULT(IInkCursor *self, IInkDrawingAttributes** Attributes) get_DrawingAttributes;
			public function HRESULT(IInkCursor *self, IInkDrawingAttributes* Attributes) putref_DrawingAttributes;
			public function HRESULT(IInkCursor *self, IInkTablet** Tablet) get_Tablet;
			public function HRESULT(IInkCursor *self, IInkCursorButtons** Buttons) get_Buttons;
		}
		[CRepr]
		public struct IInkCursors : IDispatch
		{
			public const new Guid IID = .(0xa248c1ac, 0xc698, 0x4e06, 0x9e, 0x5c, 0xd5, 0x7f, 0x77, 0xc7, 0xe6, 0x47);
			
			public function HRESULT(IInkCursors *self, int32* Count) get_Count;
			public function HRESULT(IInkCursors *self, IUnknown** _NewEnum) get__NewEnum;
			public function HRESULT(IInkCursors *self, int32 Index, IInkCursor** Cursor) Item;
		}
		[CRepr]
		public struct IInkCursorButton : IDispatch
		{
			public const new Guid IID = .(0x85ef9417, 0x1d59, 0x49b2, 0xa1, 0x3c, 0x70, 0x2c, 0x85, 0x43, 0x08, 0x94);
			
			public function HRESULT(IInkCursorButton *self, BSTR* Name) get_Name;
			public function HRESULT(IInkCursorButton *self, BSTR* Id) get_Id;
			public function HRESULT(IInkCursorButton *self, InkCursorButtonState* CurrentState) get_State;
		}
		[CRepr]
		public struct IInkCursorButtons : IDispatch
		{
			public const new Guid IID = .(0x3671cc40, 0xb624, 0x4671, 0x9f, 0xa0, 0xdb, 0x11, 0x9d, 0x95, 0x2d, 0x54);
			
			public function HRESULT(IInkCursorButtons *self, int32* Count) get_Count;
			public function HRESULT(IInkCursorButtons *self, IUnknown** _NewEnum) get__NewEnum;
			public function HRESULT(IInkCursorButtons *self, VARIANT Identifier, IInkCursorButton** Button) Item;
		}
		[CRepr]
		public struct IInkTablet : IDispatch
		{
			public const new Guid IID = .(0x2de25eaa, 0x6ef8, 0x42d5, 0xae, 0xe9, 0x18, 0x5b, 0xc8, 0x1b, 0x91, 0x2d);
			
			public function HRESULT(IInkTablet *self, BSTR* Name) get_Name;
			public function HRESULT(IInkTablet *self, BSTR* Id) get_PlugAndPlayId;
			public function HRESULT(IInkTablet *self, IInkRectangle** Rectangle) get_MaximumInputRectangle;
			public function HRESULT(IInkTablet *self, TabletHardwareCapabilities* Capabilities) get_HardwareCapabilities;
			public function HRESULT(IInkTablet *self, BSTR packetPropertyName, int16* Supported) IsPacketPropertySupported;
			public function HRESULT(IInkTablet *self, BSTR propertyName, int32* Minimum, int32* Maximum, TabletPropertyMetricUnit* Units, float* Resolution) GetPropertyMetrics;
		}
		[CRepr]
		public struct IInkTablet2 : IDispatch
		{
			public const new Guid IID = .(0x90c91ad2, 0xfa36, 0x49d6, 0x95, 0x16, 0xce, 0x8d, 0x57, 0x0f, 0x6f, 0x85);
			
			public function HRESULT(IInkTablet2 *self, TabletDeviceKind* Kind) get_DeviceKind;
		}
		[CRepr]
		public struct IInkTablet3 : IDispatch
		{
			public const new Guid IID = .(0x7e313997, 0x1327, 0x41dd, 0x8c, 0xa9, 0x79, 0xf2, 0x4b, 0xe1, 0x72, 0x50);
			
			public function HRESULT(IInkTablet3 *self, int16* pIsMultiTouch) get_IsMultiTouch;
			public function HRESULT(IInkTablet3 *self, uint32* pMaximumCursors) get_MaximumCursors;
		}
		[CRepr]
		public struct IInkTablets : IDispatch
		{
			public const new Guid IID = .(0x112086d9, 0x7779, 0x4535, 0xa6, 0x99, 0x86, 0x2b, 0x43, 0xac, 0x18, 0x63);
			
			public function HRESULT(IInkTablets *self, int32* Count) get_Count;
			public function HRESULT(IInkTablets *self, IUnknown** _NewEnum) get__NewEnum;
			public function HRESULT(IInkTablets *self, IInkTablet** DefaultTablet) get_DefaultTablet;
			public function HRESULT(IInkTablets *self, int32 Index, IInkTablet** Tablet) Item;
			public function HRESULT(IInkTablets *self, BSTR packetPropertyName, int16* Supported) IsPacketPropertySupported;
		}
		[CRepr]
		public struct IInkStrokeDisp : IDispatch
		{
			public const new Guid IID = .(0x43242fea, 0x91d1, 0x4a72, 0x96, 0x3e, 0xfb, 0xb9, 0x18, 0x29, 0xcf, 0xa2);
			
			public function HRESULT(IInkStrokeDisp *self, int32* ID) get_ID;
			public function HRESULT(IInkStrokeDisp *self, VARIANT* Points) get_BezierPoints;
			public function HRESULT(IInkStrokeDisp *self, IInkDrawingAttributes** DrawAttrs) get_DrawingAttributes;
			public function HRESULT(IInkStrokeDisp *self, IInkDrawingAttributes* DrawAttrs) putref_DrawingAttributes;
			public function HRESULT(IInkStrokeDisp *self, IInkDisp** Ink) get_Ink;
			public function HRESULT(IInkStrokeDisp *self, IInkExtendedProperties** Properties) get_ExtendedProperties;
			public function HRESULT(IInkStrokeDisp *self, VARIANT* Cusps) get_PolylineCusps;
			public function HRESULT(IInkStrokeDisp *self, VARIANT* Cusps) get_BezierCusps;
			public function HRESULT(IInkStrokeDisp *self, VARIANT* Intersections) get_SelfIntersections;
			public function HRESULT(IInkStrokeDisp *self, int32* plCount) get_PacketCount;
			public function HRESULT(IInkStrokeDisp *self, int32* plSize) get_PacketSize;
			public function HRESULT(IInkStrokeDisp *self, VARIANT* PacketDescription) get_PacketDescription;
			public function HRESULT(IInkStrokeDisp *self, int16* Deleted) get_Deleted;
			public function HRESULT(IInkStrokeDisp *self, InkBoundingBoxMode BoundingBoxMode, IInkRectangle** Rectangle) GetBoundingBox;
			public function HRESULT(IInkStrokeDisp *self, IInkStrokes* Strokes, VARIANT* Intersections) FindIntersections;
			public function HRESULT(IInkStrokeDisp *self, IInkRectangle* Rectangle, VARIANT* Intersections) GetRectangleIntersections;
			public function HRESULT(IInkStrokeDisp *self, IInkRectangle* Rectangle) Clip;
			public function HRESULT(IInkStrokeDisp *self, int32 X, int32 Y, float Radius, int16* Intersects) HitTestCircle;
			public function HRESULT(IInkStrokeDisp *self, int32 X, int32 Y, float* Distance, float* Point) NearestPoint;
			public function HRESULT(IInkStrokeDisp *self, float SplitAt, IInkStrokeDisp** NewStroke) Split;
			public function HRESULT(IInkStrokeDisp *self, BSTR PropertyName, int32* Minimum, int32* Maximum, TabletPropertyMetricUnit* Units, float* Resolution) GetPacketDescriptionPropertyMetrics;
			public function HRESULT(IInkStrokeDisp *self, int32 Index, int32 Count, VARIANT* Points) GetPoints;
			public function HRESULT(IInkStrokeDisp *self, VARIANT Points, int32 Index, int32 Count, int32* NumberOfPointsSet) SetPoints;
			public function HRESULT(IInkStrokeDisp *self, int32 Index, int32 Count, VARIANT* PacketData) GetPacketData;
			public function HRESULT(IInkStrokeDisp *self, BSTR PropertyName, int32 Index, int32 Count, VARIANT* PacketValues) GetPacketValuesByProperty;
			public function HRESULT(IInkStrokeDisp *self, BSTR bstrPropertyName, VARIANT PacketValues, int32 Index, int32 Count, int32* NumberOfPacketsSet) SetPacketValuesByProperty;
			public function HRESULT(IInkStrokeDisp *self, int32 FittingError, VARIANT* FlattenedBezierPoints) GetFlattenedBezierPoints;
			public function HRESULT(IInkStrokeDisp *self, IInkTransform* Transform, int16 ApplyOnPenWidth) Transform;
			public function HRESULT(IInkStrokeDisp *self, IInkRectangle* Rectangle) ScaleToRectangle;
			public function HRESULT(IInkStrokeDisp *self, float HorizontalComponent, float VerticalComponent) Move;
			public function HRESULT(IInkStrokeDisp *self, float Degrees, float x, float y) Rotate;
			public function HRESULT(IInkStrokeDisp *self, float HorizontalMultiplier, float VerticalMultiplier) Shear;
			public function HRESULT(IInkStrokeDisp *self, float HorizontalMultiplier, float VerticalMultiplier) ScaleTransform;
		}
		[CRepr]
		public struct IInkStrokes : IDispatch
		{
			public const new Guid IID = .(0xf1f4c9d8, 0x590a, 0x4963, 0xb3, 0xae, 0x19, 0x35, 0x67, 0x1b, 0xb6, 0xf3);
			
			public function HRESULT(IInkStrokes *self, int32* Count) get_Count;
			public function HRESULT(IInkStrokes *self, IUnknown** _NewEnum) get__NewEnum;
			public function HRESULT(IInkStrokes *self, IInkDisp** Ink) get_Ink;
			public function HRESULT(IInkStrokes *self, IInkRecognitionResult** RecognitionResult) get_RecognitionResult;
			public function HRESULT(IInkStrokes *self, BSTR* ToString) ToString;
			public function HRESULT(IInkStrokes *self, int32 Index, IInkStrokeDisp** Stroke) Item;
			public function HRESULT(IInkStrokes *self, IInkStrokeDisp* InkStroke) Add;
			public function HRESULT(IInkStrokes *self, IInkStrokes* InkStrokes) AddStrokes;
			public function HRESULT(IInkStrokes *self, IInkStrokeDisp* InkStroke) Remove;
			public function HRESULT(IInkStrokes *self, IInkStrokes* InkStrokes) RemoveStrokes;
			public function HRESULT(IInkStrokes *self, IInkDrawingAttributes* DrawAttrs) ModifyDrawingAttributes;
			public function HRESULT(IInkStrokes *self, InkBoundingBoxMode BoundingBoxMode, IInkRectangle** BoundingBox) GetBoundingBox;
			public function HRESULT(IInkStrokes *self, IInkTransform* Transform, int16 ApplyOnPenWidth) Transform;
			public function HRESULT(IInkStrokes *self, IInkRectangle* Rectangle) ScaleToRectangle;
			public function HRESULT(IInkStrokes *self, float HorizontalComponent, float VerticalComponent) Move;
			public function HRESULT(IInkStrokes *self, float Degrees, float x, float y) Rotate;
			public function HRESULT(IInkStrokes *self, float HorizontalMultiplier, float VerticalMultiplier) Shear;
			public function HRESULT(IInkStrokes *self, float HorizontalMultiplier, float VerticalMultiplier) ScaleTransform;
			public function HRESULT(IInkStrokes *self, IInkRectangle* Rectangle) Clip;
			public function HRESULT(IInkStrokes *self) RemoveRecognitionResult;
		}
		[CRepr]
		public struct IInkCustomStrokes : IDispatch
		{
			public const new Guid IID = .(0x7e23a88f, 0xc30e, 0x420f, 0x9b, 0xdb, 0x28, 0x90, 0x25, 0x43, 0xf0, 0xc1);
			
			public function HRESULT(IInkCustomStrokes *self, int32* Count) get_Count;
			public function HRESULT(IInkCustomStrokes *self, IUnknown** _NewEnum) get__NewEnum;
			public function HRESULT(IInkCustomStrokes *self, VARIANT Identifier, IInkStrokes** Strokes) Item;
			public function HRESULT(IInkCustomStrokes *self, BSTR Name, IInkStrokes* Strokes) Add;
			public function HRESULT(IInkCustomStrokes *self, VARIANT Identifier) Remove;
			public function HRESULT(IInkCustomStrokes *self) Clear;
		}
		[CRepr]
		public struct _IInkStrokesEvents : IDispatch
		{
			public const new Guid IID = .(0xf33053ec, 0x5d25, 0x430a, 0x92, 0x8f, 0x76, 0xa6, 0x49, 0x1d, 0xde, 0x15);
			
		}
		[CRepr]
		public struct IInkDisp : IDispatch
		{
			public const new Guid IID = .(0x9d398fa0, 0xc4e2, 0x4fcd, 0x99, 0x73, 0x97, 0x5c, 0xaa, 0xf4, 0x7e, 0xa6);
			
			public function HRESULT(IInkDisp *self, IInkStrokes** Strokes) get_Strokes;
			public function HRESULT(IInkDisp *self, IInkExtendedProperties** Properties) get_ExtendedProperties;
			public function HRESULT(IInkDisp *self, int16* Dirty) get_Dirty;
			public function HRESULT(IInkDisp *self, int16 Dirty) put_Dirty;
			public function HRESULT(IInkDisp *self, IInkCustomStrokes** ppunkInkCustomStrokes) get_CustomStrokes;
			public function HRESULT(IInkDisp *self, InkBoundingBoxMode BoundingBoxMode, IInkRectangle** Rectangle) GetBoundingBox;
			public function HRESULT(IInkDisp *self, IInkStrokes* Strokes) DeleteStrokes;
			public function HRESULT(IInkDisp *self, IInkStrokeDisp* Stroke) DeleteStroke;
			public function HRESULT(IInkDisp *self, IInkStrokes* Strokes, InkExtractFlags ExtractFlags, IInkDisp** ExtractedInk) ExtractStrokes;
			public function HRESULT(IInkDisp *self, IInkRectangle* Rectangle, InkExtractFlags extractFlags, IInkDisp** ExtractedInk) ExtractWithRectangle;
			public function HRESULT(IInkDisp *self, IInkRectangle* Rectangle) Clip;
			public function HRESULT(IInkDisp *self, IInkDisp** NewInk) Clone;
			public function HRESULT(IInkDisp *self, int32 X, int32 Y, float radius, IInkStrokes** Strokes) HitTestCircle;
			public function HRESULT(IInkDisp *self, IInkRectangle* SelectionRectangle, float IntersectPercent, IInkStrokes** Strokes) HitTestWithRectangle;
			public function HRESULT(IInkDisp *self, VARIANT Points, float IntersectPercent, VARIANT* LassoPoints, IInkStrokes** Strokes) HitTestWithLasso;
			public function HRESULT(IInkDisp *self, int32 X, int32 Y, float* PointOnStroke, float* DistanceFromPacket, IInkStrokeDisp** Stroke) NearestPoint;
			public function HRESULT(IInkDisp *self, VARIANT StrokeIds, IInkStrokes** Strokes) CreateStrokes;
			public function HRESULT(IInkDisp *self, IInkStrokes* SourceStrokes, IInkRectangle* TargetRectangle) AddStrokesAtRectangle;
			public function HRESULT(IInkDisp *self, InkPersistenceFormat PersistenceFormat, InkPersistenceCompressionMode CompressionMode, VARIANT* Data) Save;
			public function HRESULT(IInkDisp *self, VARIANT Data) Load;
			public function HRESULT(IInkDisp *self, VARIANT PacketData, VARIANT PacketDescription, IInkStrokeDisp** Stroke) CreateStroke;
			public function HRESULT(IInkDisp *self, IInkRectangle* Rectangle, InkClipboardFormats ClipboardFormats, InkClipboardModes ClipboardModes, IDataObject** DataObject) ClipboardCopyWithRectangle;
			public function HRESULT(IInkDisp *self, IInkStrokes* strokes, InkClipboardFormats ClipboardFormats, InkClipboardModes ClipboardModes, IDataObject** DataObject) ClipboardCopy;
			public function HRESULT(IInkDisp *self, IDataObject* DataObject, int16* CanPaste) CanPaste;
			public function HRESULT(IInkDisp *self, int32 x, int32 y, IDataObject* DataObject, IInkStrokes** Strokes) ClipboardPaste;
		}
		[CRepr]
		public struct _IInkEvents : IDispatch
		{
			public const new Guid IID = .(0x427b1865, 0xca3f, 0x479a, 0x83, 0xa9, 0x0f, 0x42, 0x0f, 0x2a, 0x00, 0x73);
			
		}
		[CRepr]
		public struct IInkRenderer : IDispatch
		{
			public const new Guid IID = .(0xe6257a9c, 0xb511, 0x4f4c, 0xa8, 0xb0, 0xa7, 0xdb, 0xc9, 0x50, 0x6b, 0x83);
			
			public function HRESULT(IInkRenderer *self, IInkTransform* ViewTransform) GetViewTransform;
			public function HRESULT(IInkRenderer *self, IInkTransform* ViewTransform) SetViewTransform;
			public function HRESULT(IInkRenderer *self, IInkTransform* ObjectTransform) GetObjectTransform;
			public function HRESULT(IInkRenderer *self, IInkTransform* ObjectTransform) SetObjectTransform;
			public function HRESULT(IInkRenderer *self, int hDC, IInkStrokes* Strokes) Draw;
			public function HRESULT(IInkRenderer *self, int hDC, IInkStrokeDisp* Stroke, IInkDrawingAttributes* DrawingAttributes) DrawStroke;
			public function HRESULT(IInkRenderer *self, int hDC, int32* x, int32* y) PixelToInkSpace;
			public function HRESULT(IInkRenderer *self, int hdcDisplay, int32* x, int32* y) InkSpaceToPixel;
			public function HRESULT(IInkRenderer *self, int hDC, VARIANT* Points) PixelToInkSpaceFromPoints;
			public function HRESULT(IInkRenderer *self, int hDC, VARIANT* Points) InkSpaceToPixelFromPoints;
			public function HRESULT(IInkRenderer *self, IInkStrokes* Strokes, IInkRectangle** Rectangle) Measure;
			public function HRESULT(IInkRenderer *self, IInkStrokeDisp* Stroke, IInkDrawingAttributes* DrawingAttributes, IInkRectangle** Rectangle) MeasureStroke;
			public function HRESULT(IInkRenderer *self, float HorizontalComponent, float VerticalComponent) Move;
			public function HRESULT(IInkRenderer *self, float Degrees, float x, float y) Rotate;
			public function HRESULT(IInkRenderer *self, float HorizontalMultiplier, float VerticalMultiplier, int16 ApplyOnPenWidth) ScaleTransform;
		}
		[CRepr]
		public struct IInkCollector : IDispatch
		{
			public const new Guid IID = .(0xf0f060b5, 0x8b1f, 0x4a7c, 0x89, 0xec, 0x88, 0x06, 0x92, 0x58, 0x8a, 0x4f);
			
			public function HRESULT(IInkCollector *self, int* CurrentWindow) get_hWnd;
			public function HRESULT(IInkCollector *self, int NewWindow) put_hWnd;
			public function HRESULT(IInkCollector *self, int16* Collecting) get_Enabled;
			public function HRESULT(IInkCollector *self, int16 Collecting) put_Enabled;
			public function HRESULT(IInkCollector *self, IInkDrawingAttributes** CurrentAttributes) get_DefaultDrawingAttributes;
			public function HRESULT(IInkCollector *self, IInkDrawingAttributes* NewAttributes) putref_DefaultDrawingAttributes;
			public function HRESULT(IInkCollector *self, IInkRenderer** CurrentInkRenderer) get_Renderer;
			public function HRESULT(IInkCollector *self, IInkRenderer* NewInkRenderer) putref_Renderer;
			public function HRESULT(IInkCollector *self, IInkDisp** Ink) get_Ink;
			public function HRESULT(IInkCollector *self, IInkDisp* NewInk) putref_Ink;
			public function HRESULT(IInkCollector *self, int16* AutoRedraw) get_AutoRedraw;
			public function HRESULT(IInkCollector *self, int16 AutoRedraw) put_AutoRedraw;
			public function HRESULT(IInkCollector *self, int16* Collecting) get_CollectingInk;
			public function HRESULT(IInkCollector *self, InkCollectionMode* Mode) get_CollectionMode;
			public function HRESULT(IInkCollector *self, InkCollectionMode Mode) put_CollectionMode;
			public function HRESULT(IInkCollector *self, int16* Enabled) get_DynamicRendering;
			public function HRESULT(IInkCollector *self, int16 Enabled) put_DynamicRendering;
			public function HRESULT(IInkCollector *self, VARIANT* PacketGuids) get_DesiredPacketDescription;
			public function HRESULT(IInkCollector *self, VARIANT PacketGuids) put_DesiredPacketDescription;
			public function HRESULT(IInkCollector *self, IPictureDisp** MouseIcon) get_MouseIcon;
			public function HRESULT(IInkCollector *self, IPictureDisp* MouseIcon) put_MouseIcon;
			public function HRESULT(IInkCollector *self, IPictureDisp* MouseIcon) putref_MouseIcon;
			public function HRESULT(IInkCollector *self, InkMousePointer* MousePointer) get_MousePointer;
			public function HRESULT(IInkCollector *self, InkMousePointer MousePointer) put_MousePointer;
			public function HRESULT(IInkCollector *self, IInkCursors** Cursors) get_Cursors;
			public function HRESULT(IInkCollector *self, int32* MarginX) get_MarginX;
			public function HRESULT(IInkCollector *self, int32 MarginX) put_MarginX;
			public function HRESULT(IInkCollector *self, int32* MarginY) get_MarginY;
			public function HRESULT(IInkCollector *self, int32 MarginY) put_MarginY;
			public function HRESULT(IInkCollector *self, IInkTablet** SingleTablet) get_Tablet;
			public function HRESULT(IInkCollector *self, int16* Support) get_SupportHighContrastInk;
			public function HRESULT(IInkCollector *self, int16 Support) put_SupportHighContrastInk;
			public function HRESULT(IInkCollector *self, InkApplicationGesture Gesture, int16 Listen) SetGestureStatus;
			public function HRESULT(IInkCollector *self, InkApplicationGesture Gesture, int16* Listening) GetGestureStatus;
			public function HRESULT(IInkCollector *self, IInkRectangle** WindowInputRectangle) GetWindowInputRectangle;
			public function HRESULT(IInkCollector *self, IInkRectangle* WindowInputRectangle) SetWindowInputRectangle;
			public function HRESULT(IInkCollector *self, int16 UseMouseForInput) SetAllTabletsMode;
			public function HRESULT(IInkCollector *self, IInkTablet* Tablet) SetSingleTabletIntegratedMode;
			public function HRESULT(IInkCollector *self, InkCollectorEventInterest EventId, int16* Listen) GetEventInterest;
			public function HRESULT(IInkCollector *self, InkCollectorEventInterest EventId, int16 Listen) SetEventInterest;
		}
		[CRepr]
		public struct _IInkCollectorEvents : IDispatch
		{
			public const new Guid IID = .(0x11a583f2, 0x712d, 0x4fea, 0xab, 0xcf, 0xab, 0x4a, 0xf3, 0x8e, 0xa0, 0x6b);
			
		}
		[CRepr]
		public struct IInkOverlay : IDispatch
		{
			public const new Guid IID = .(0xb82a463b, 0xc1c5, 0x45a3, 0x99, 0x7c, 0xde, 0xab, 0x56, 0x51, 0xb6, 0x7a);
			
			public function HRESULT(IInkOverlay *self, int* CurrentWindow) get_hWnd;
			public function HRESULT(IInkOverlay *self, int NewWindow) put_hWnd;
			public function HRESULT(IInkOverlay *self, int16* Collecting) get_Enabled;
			public function HRESULT(IInkOverlay *self, int16 Collecting) put_Enabled;
			public function HRESULT(IInkOverlay *self, IInkDrawingAttributes** CurrentAttributes) get_DefaultDrawingAttributes;
			public function HRESULT(IInkOverlay *self, IInkDrawingAttributes* NewAttributes) putref_DefaultDrawingAttributes;
			public function HRESULT(IInkOverlay *self, IInkRenderer** CurrentInkRenderer) get_Renderer;
			public function HRESULT(IInkOverlay *self, IInkRenderer* NewInkRenderer) putref_Renderer;
			public function HRESULT(IInkOverlay *self, IInkDisp** Ink) get_Ink;
			public function HRESULT(IInkOverlay *self, IInkDisp* NewInk) putref_Ink;
			public function HRESULT(IInkOverlay *self, int16* AutoRedraw) get_AutoRedraw;
			public function HRESULT(IInkOverlay *self, int16 AutoRedraw) put_AutoRedraw;
			public function HRESULT(IInkOverlay *self, int16* Collecting) get_CollectingInk;
			public function HRESULT(IInkOverlay *self, InkCollectionMode* Mode) get_CollectionMode;
			public function HRESULT(IInkOverlay *self, InkCollectionMode Mode) put_CollectionMode;
			public function HRESULT(IInkOverlay *self, int16* Enabled) get_DynamicRendering;
			public function HRESULT(IInkOverlay *self, int16 Enabled) put_DynamicRendering;
			public function HRESULT(IInkOverlay *self, VARIANT* PacketGuids) get_DesiredPacketDescription;
			public function HRESULT(IInkOverlay *self, VARIANT PacketGuids) put_DesiredPacketDescription;
			public function HRESULT(IInkOverlay *self, IPictureDisp** MouseIcon) get_MouseIcon;
			public function HRESULT(IInkOverlay *self, IPictureDisp* MouseIcon) put_MouseIcon;
			public function HRESULT(IInkOverlay *self, IPictureDisp* MouseIcon) putref_MouseIcon;
			public function HRESULT(IInkOverlay *self, InkMousePointer* MousePointer) get_MousePointer;
			public function HRESULT(IInkOverlay *self, InkMousePointer MousePointer) put_MousePointer;
			public function HRESULT(IInkOverlay *self, InkOverlayEditingMode* EditingMode) get_EditingMode;
			public function HRESULT(IInkOverlay *self, InkOverlayEditingMode EditingMode) put_EditingMode;
			public function HRESULT(IInkOverlay *self, IInkStrokes** Selection) get_Selection;
			public function HRESULT(IInkOverlay *self, IInkStrokes* Selection) put_Selection;
			public function HRESULT(IInkOverlay *self, InkOverlayEraserMode* EraserMode) get_EraserMode;
			public function HRESULT(IInkOverlay *self, InkOverlayEraserMode EraserMode) put_EraserMode;
			public function HRESULT(IInkOverlay *self, int32* EraserWidth) get_EraserWidth;
			public function HRESULT(IInkOverlay *self, int32 newEraserWidth) put_EraserWidth;
			public function HRESULT(IInkOverlay *self, InkOverlayAttachMode* AttachMode) get_AttachMode;
			public function HRESULT(IInkOverlay *self, InkOverlayAttachMode AttachMode) put_AttachMode;
			public function HRESULT(IInkOverlay *self, IInkCursors** Cursors) get_Cursors;
			public function HRESULT(IInkOverlay *self, int32* MarginX) get_MarginX;
			public function HRESULT(IInkOverlay *self, int32 MarginX) put_MarginX;
			public function HRESULT(IInkOverlay *self, int32* MarginY) get_MarginY;
			public function HRESULT(IInkOverlay *self, int32 MarginY) put_MarginY;
			public function HRESULT(IInkOverlay *self, IInkTablet** SingleTablet) get_Tablet;
			public function HRESULT(IInkOverlay *self, int16* Support) get_SupportHighContrastInk;
			public function HRESULT(IInkOverlay *self, int16 Support) put_SupportHighContrastInk;
			public function HRESULT(IInkOverlay *self, int16* Support) get_SupportHighContrastSelectionUI;
			public function HRESULT(IInkOverlay *self, int16 Support) put_SupportHighContrastSelectionUI;
			public function HRESULT(IInkOverlay *self, int32 x, int32 y, SelectionHitResult* SelArea) HitTestSelection;
			public function HRESULT(IInkOverlay *self, IInkRectangle* Rect) Draw;
			public function HRESULT(IInkOverlay *self, InkApplicationGesture Gesture, int16 Listen) SetGestureStatus;
			public function HRESULT(IInkOverlay *self, InkApplicationGesture Gesture, int16* Listening) GetGestureStatus;
			public function HRESULT(IInkOverlay *self, IInkRectangle** WindowInputRectangle) GetWindowInputRectangle;
			public function HRESULT(IInkOverlay *self, IInkRectangle* WindowInputRectangle) SetWindowInputRectangle;
			public function HRESULT(IInkOverlay *self, int16 UseMouseForInput) SetAllTabletsMode;
			public function HRESULT(IInkOverlay *self, IInkTablet* Tablet) SetSingleTabletIntegratedMode;
			public function HRESULT(IInkOverlay *self, InkCollectorEventInterest EventId, int16* Listen) GetEventInterest;
			public function HRESULT(IInkOverlay *self, InkCollectorEventInterest EventId, int16 Listen) SetEventInterest;
		}
		[CRepr]
		public struct _IInkOverlayEvents : IDispatch
		{
			public const new Guid IID = .(0x31179b69, 0xe563, 0x489e, 0xb1, 0x6f, 0x71, 0x2f, 0x1e, 0x8a, 0x06, 0x51);
			
		}
		[CRepr]
		public struct IInkPicture : IDispatch
		{
			public const new Guid IID = .(0xe85662e0, 0x379a, 0x40d7, 0x9b, 0x5c, 0x75, 0x7d, 0x23, 0x3f, 0x99, 0x23);
			
			public function HRESULT(IInkPicture *self, int* CurrentWindow) get_hWnd;
			public function HRESULT(IInkPicture *self, IInkDrawingAttributes** CurrentAttributes) get_DefaultDrawingAttributes;
			public function HRESULT(IInkPicture *self, IInkDrawingAttributes* NewAttributes) putref_DefaultDrawingAttributes;
			public function HRESULT(IInkPicture *self, IInkRenderer** CurrentInkRenderer) get_Renderer;
			public function HRESULT(IInkPicture *self, IInkRenderer* NewInkRenderer) putref_Renderer;
			public function HRESULT(IInkPicture *self, IInkDisp** Ink) get_Ink;
			public function HRESULT(IInkPicture *self, IInkDisp* NewInk) putref_Ink;
			public function HRESULT(IInkPicture *self, int16* AutoRedraw) get_AutoRedraw;
			public function HRESULT(IInkPicture *self, int16 AutoRedraw) put_AutoRedraw;
			public function HRESULT(IInkPicture *self, int16* Collecting) get_CollectingInk;
			public function HRESULT(IInkPicture *self, InkCollectionMode* Mode) get_CollectionMode;
			public function HRESULT(IInkPicture *self, InkCollectionMode Mode) put_CollectionMode;
			public function HRESULT(IInkPicture *self, int16* Enabled) get_DynamicRendering;
			public function HRESULT(IInkPicture *self, int16 Enabled) put_DynamicRendering;
			public function HRESULT(IInkPicture *self, VARIANT* PacketGuids) get_DesiredPacketDescription;
			public function HRESULT(IInkPicture *self, VARIANT PacketGuids) put_DesiredPacketDescription;
			public function HRESULT(IInkPicture *self, IPictureDisp** MouseIcon) get_MouseIcon;
			public function HRESULT(IInkPicture *self, IPictureDisp* MouseIcon) put_MouseIcon;
			public function HRESULT(IInkPicture *self, IPictureDisp* MouseIcon) putref_MouseIcon;
			public function HRESULT(IInkPicture *self, InkMousePointer* MousePointer) get_MousePointer;
			public function HRESULT(IInkPicture *self, InkMousePointer MousePointer) put_MousePointer;
			public function HRESULT(IInkPicture *self, InkOverlayEditingMode* EditingMode) get_EditingMode;
			public function HRESULT(IInkPicture *self, InkOverlayEditingMode EditingMode) put_EditingMode;
			public function HRESULT(IInkPicture *self, IInkStrokes** Selection) get_Selection;
			public function HRESULT(IInkPicture *self, IInkStrokes* Selection) put_Selection;
			public function HRESULT(IInkPicture *self, InkOverlayEraserMode* EraserMode) get_EraserMode;
			public function HRESULT(IInkPicture *self, InkOverlayEraserMode EraserMode) put_EraserMode;
			public function HRESULT(IInkPicture *self, int32* EraserWidth) get_EraserWidth;
			public function HRESULT(IInkPicture *self, int32 newEraserWidth) put_EraserWidth;
			public function HRESULT(IInkPicture *self, IPictureDisp* pPicture) putref_Picture;
			public function HRESULT(IInkPicture *self, IPictureDisp* pPicture) put_Picture;
			public function HRESULT(IInkPicture *self, IPictureDisp** ppPicture) get_Picture;
			public function HRESULT(IInkPicture *self, InkPictureSizeMode smNewSizeMode) put_SizeMode;
			public function HRESULT(IInkPicture *self, InkPictureSizeMode* smSizeMode) get_SizeMode;
			public function HRESULT(IInkPicture *self, uint32 newColor) put_BackColor;
			public function HRESULT(IInkPicture *self, uint32* pColor) get_BackColor;
			public function HRESULT(IInkPicture *self, IInkCursors** Cursors) get_Cursors;
			public function HRESULT(IInkPicture *self, int32* MarginX) get_MarginX;
			public function HRESULT(IInkPicture *self, int32 MarginX) put_MarginX;
			public function HRESULT(IInkPicture *self, int32* MarginY) get_MarginY;
			public function HRESULT(IInkPicture *self, int32 MarginY) put_MarginY;
			public function HRESULT(IInkPicture *self, IInkTablet** SingleTablet) get_Tablet;
			public function HRESULT(IInkPicture *self, int16* Support) get_SupportHighContrastInk;
			public function HRESULT(IInkPicture *self, int16 Support) put_SupportHighContrastInk;
			public function HRESULT(IInkPicture *self, int16* Support) get_SupportHighContrastSelectionUI;
			public function HRESULT(IInkPicture *self, int16 Support) put_SupportHighContrastSelectionUI;
			public function HRESULT(IInkPicture *self, int32 x, int32 y, SelectionHitResult* SelArea) HitTestSelection;
			public function HRESULT(IInkPicture *self, InkApplicationGesture Gesture, int16 Listen) SetGestureStatus;
			public function HRESULT(IInkPicture *self, InkApplicationGesture Gesture, int16* Listening) GetGestureStatus;
			public function HRESULT(IInkPicture *self, IInkRectangle** WindowInputRectangle) GetWindowInputRectangle;
			public function HRESULT(IInkPicture *self, IInkRectangle* WindowInputRectangle) SetWindowInputRectangle;
			public function HRESULT(IInkPicture *self, int16 UseMouseForInput) SetAllTabletsMode;
			public function HRESULT(IInkPicture *self, IInkTablet* Tablet) SetSingleTabletIntegratedMode;
			public function HRESULT(IInkPicture *self, InkCollectorEventInterest EventId, int16* Listen) GetEventInterest;
			public function HRESULT(IInkPicture *self, InkCollectorEventInterest EventId, int16 Listen) SetEventInterest;
			public function HRESULT(IInkPicture *self, int16* Collecting) get_InkEnabled;
			public function HRESULT(IInkPicture *self, int16 Collecting) put_InkEnabled;
			public function HRESULT(IInkPicture *self, int16* pbool) get_Enabled;
			public function HRESULT(IInkPicture *self, int16 vbool) put_Enabled;
		}
		[CRepr]
		public struct _IInkPictureEvents : IDispatch
		{
			public const new Guid IID = .(0x60ff4fee, 0x22ff, 0x4484, 0xac, 0xc1, 0xd3, 0x08, 0xd9, 0xcd, 0x7e, 0xa3);
			
		}
		[CRepr]
		public struct IInkRecognizer : IDispatch
		{
			public const new Guid IID = .(0x782bf7cf, 0x034b, 0x4396, 0x8a, 0x32, 0x3a, 0x18, 0x33, 0xcf, 0x6b, 0x56);
			
			public function HRESULT(IInkRecognizer *self, BSTR* Name) get_Name;
			public function HRESULT(IInkRecognizer *self, BSTR* Vendor) get_Vendor;
			public function HRESULT(IInkRecognizer *self, InkRecognizerCapabilities* CapabilitiesFlags) get_Capabilities;
			public function HRESULT(IInkRecognizer *self, VARIANT* Languages) get_Languages;
			public function HRESULT(IInkRecognizer *self, VARIANT* SupportedProperties) get_SupportedProperties;
			public function HRESULT(IInkRecognizer *self, VARIANT* PreferredPacketDescription) get_PreferredPacketDescription;
			public function HRESULT(IInkRecognizer *self, IInkRecognizerContext** Context) CreateRecognizerContext;
		}
		[CRepr]
		public struct IInkRecognizer2 : IDispatch
		{
			public const new Guid IID = .(0x6110118a, 0x3a75, 0x4ad6, 0xb2, 0xaa, 0x04, 0xb2, 0xb7, 0x2b, 0xbe, 0x65);
			
			public function HRESULT(IInkRecognizer2 *self, BSTR* pbstrId) get_Id;
			public function HRESULT(IInkRecognizer2 *self, VARIANT* UnicodeRanges) get_UnicodeRanges;
		}
		[CRepr]
		public struct IInkRecognizers : IDispatch
		{
			public const new Guid IID = .(0x9ccc4f12, 0xb0b7, 0x4a8b, 0xbf, 0x58, 0x4a, 0xec, 0xa4, 0xe8, 0xce, 0xfd);
			
			public function HRESULT(IInkRecognizers *self, int32* Count) get_Count;
			public function HRESULT(IInkRecognizers *self, IUnknown** _NewEnum) get__NewEnum;
			public function HRESULT(IInkRecognizers *self, int32 lcid, IInkRecognizer** DefaultRecognizer) GetDefaultRecognizer;
			public function HRESULT(IInkRecognizers *self, int32 Index, IInkRecognizer** InkRecognizer) Item;
		}
		[CRepr]
		public struct _IInkRecognitionEvents : IDispatch
		{
			public const new Guid IID = .(0x17bce92f, 0x2e21, 0x47fd, 0x9d, 0x33, 0x3c, 0x6a, 0xfb, 0xfd, 0x8c, 0x59);
			
		}
		[CRepr]
		public struct IInkRecognizerContext : IDispatch
		{
			public const new Guid IID = .(0xc68f52f9, 0x32a3, 0x4625, 0x90, 0x6c, 0x44, 0xfc, 0x23, 0xb4, 0x09, 0x58);
			
			public function HRESULT(IInkRecognizerContext *self, IInkStrokes** Strokes) get_Strokes;
			public function HRESULT(IInkRecognizerContext *self, IInkStrokes* Strokes) putref_Strokes;
			public function HRESULT(IInkRecognizerContext *self, InkRecognizerCharacterAutoCompletionMode* Mode) get_CharacterAutoCompletionMode;
			public function HRESULT(IInkRecognizerContext *self, InkRecognizerCharacterAutoCompletionMode Mode) put_CharacterAutoCompletionMode;
			public function HRESULT(IInkRecognizerContext *self, BSTR* Factoid) get_Factoid;
			public function HRESULT(IInkRecognizerContext *self, BSTR factoid) put_Factoid;
			public function HRESULT(IInkRecognizerContext *self, IInkRecognizerGuide** RecognizerGuide) get_Guide;
			public function HRESULT(IInkRecognizerContext *self, IInkRecognizerGuide* RecognizerGuide) putref_Guide;
			public function HRESULT(IInkRecognizerContext *self, BSTR* Prefix) get_PrefixText;
			public function HRESULT(IInkRecognizerContext *self, BSTR Prefix) put_PrefixText;
			public function HRESULT(IInkRecognizerContext *self, BSTR* Suffix) get_SuffixText;
			public function HRESULT(IInkRecognizerContext *self, BSTR Suffix) put_SuffixText;
			public function HRESULT(IInkRecognizerContext *self, InkRecognitionModes* Modes) get_RecognitionFlags;
			public function HRESULT(IInkRecognizerContext *self, InkRecognitionModes Modes) put_RecognitionFlags;
			public function HRESULT(IInkRecognizerContext *self, IInkWordList** WordList) get_WordList;
			public function HRESULT(IInkRecognizerContext *self, IInkWordList* WordList) putref_WordList;
			public function HRESULT(IInkRecognizerContext *self, IInkRecognizer** Recognizer) get_Recognizer;
			public function HRESULT(IInkRecognizerContext *self, InkRecognitionStatus* RecognitionStatus, IInkRecognitionResult** RecognitionResult) Recognize;
			public function HRESULT(IInkRecognizerContext *self) StopBackgroundRecognition;
			public function HRESULT(IInkRecognizerContext *self) EndInkInput;
			public function HRESULT(IInkRecognizerContext *self, VARIANT CustomData) BackgroundRecognize;
			public function HRESULT(IInkRecognizerContext *self, VARIANT CustomData) BackgroundRecognizeWithAlternates;
			public function HRESULT(IInkRecognizerContext *self, IInkRecognizerContext** RecoContext) Clone;
			public function HRESULT(IInkRecognizerContext *self, BSTR String, int16* Supported) IsStringSupported;
		}
		[CRepr]
		public struct IInkRecognizerContext2 : IDispatch
		{
			public const new Guid IID = .(0xd6f0e32f, 0x73d8, 0x408e, 0x8e, 0x9f, 0x5f, 0xea, 0x59, 0x2c, 0x36, 0x3f);
			
			public function HRESULT(IInkRecognizerContext2 *self, VARIANT* UnicodeRanges) get_EnabledUnicodeRanges;
			public function HRESULT(IInkRecognizerContext2 *self, VARIANT UnicodeRanges) put_EnabledUnicodeRanges;
		}
		[CRepr]
		public struct IInkRecognitionResult : IDispatch
		{
			public const new Guid IID = .(0x3bc129a8, 0x86cd, 0x45ad, 0xbd, 0xe8, 0xe0, 0xd3, 0x2d, 0x61, 0xc1, 0x6d);
			
			public function HRESULT(IInkRecognitionResult *self, BSTR* TopString) get_TopString;
			public function HRESULT(IInkRecognitionResult *self, IInkRecognitionAlternate** TopAlternate) get_TopAlternate;
			public function HRESULT(IInkRecognitionResult *self, InkRecognitionConfidence* TopConfidence) get_TopConfidence;
			public function HRESULT(IInkRecognitionResult *self, IInkStrokes** Strokes) get_Strokes;
			public function HRESULT(IInkRecognitionResult *self, int32 selectionStart, int32 selectionLength, int32 maximumAlternates, IInkRecognitionAlternates** AlternatesFromSelection) AlternatesFromSelection;
			public function HRESULT(IInkRecognitionResult *self, IInkRecognitionAlternate* Alternate) ModifyTopAlternate;
			public function HRESULT(IInkRecognitionResult *self) SetResultOnStrokes;
		}
		[CRepr]
		public struct IInkRecognitionAlternate : IDispatch
		{
			public const new Guid IID = .(0xb7e660ad, 0x77e4, 0x429b, 0xad, 0xda, 0x87, 0x37, 0x80, 0xd1, 0xfc, 0x4a);
			
			public function HRESULT(IInkRecognitionAlternate *self, BSTR* RecoString) get_String;
			public function HRESULT(IInkRecognitionAlternate *self, InkRecognitionConfidence* Confidence) get_Confidence;
			public function HRESULT(IInkRecognitionAlternate *self, VARIANT* Baseline) get_Baseline;
			public function HRESULT(IInkRecognitionAlternate *self, VARIANT* Midline) get_Midline;
			public function HRESULT(IInkRecognitionAlternate *self, VARIANT* Ascender) get_Ascender;
			public function HRESULT(IInkRecognitionAlternate *self, VARIANT* Descender) get_Descender;
			public function HRESULT(IInkRecognitionAlternate *self, int32* LineNumber) get_LineNumber;
			public function HRESULT(IInkRecognitionAlternate *self, IInkStrokes** Strokes) get_Strokes;
			public function HRESULT(IInkRecognitionAlternate *self, IInkRecognitionAlternates** LineAlternates) get_LineAlternates;
			public function HRESULT(IInkRecognitionAlternate *self, IInkRecognitionAlternates** ConfidenceAlternates) get_ConfidenceAlternates;
			public function HRESULT(IInkRecognitionAlternate *self, IInkStrokes* Strokes, IInkStrokes** GetStrokesFromStrokeRanges) GetStrokesFromStrokeRanges;
			public function HRESULT(IInkRecognitionAlternate *self, int32* selectionStart, int32* selectionLength, IInkStrokes** GetStrokesFromTextRange) GetStrokesFromTextRange;
			public function HRESULT(IInkRecognitionAlternate *self, IInkStrokes* Strokes, int32* selectionStart, int32* selectionLength) GetTextRangeFromStrokes;
			public function HRESULT(IInkRecognitionAlternate *self, BSTR PropertyType, IInkRecognitionAlternates** AlternatesWithConstantPropertyValues) AlternatesWithConstantPropertyValues;
			public function HRESULT(IInkRecognitionAlternate *self, BSTR PropertyType, VARIANT* PropertyValue) GetPropertyValue;
		}
		[CRepr]
		public struct IInkRecognitionAlternates : IDispatch
		{
			public const new Guid IID = .(0x286a167f, 0x9f19, 0x4c61, 0x9d, 0x53, 0x4f, 0x07, 0xbe, 0x62, 0x2b, 0x84);
			
			public function HRESULT(IInkRecognitionAlternates *self, int32* Count) get_Count;
			public function HRESULT(IInkRecognitionAlternates *self, IUnknown** _NewEnum) get__NewEnum;
			public function HRESULT(IInkRecognitionAlternates *self, IInkStrokes** Strokes) get_Strokes;
			public function HRESULT(IInkRecognitionAlternates *self, int32 Index, IInkRecognitionAlternate** InkRecoAlternate) Item;
		}
		[CRepr]
		public struct IInkRecognizerGuide : IDispatch
		{
			public const new Guid IID = .(0xd934be07, 0x7b84, 0x4208, 0x91, 0x36, 0x83, 0xc2, 0x09, 0x94, 0xe9, 0x05);
			
			public function HRESULT(IInkRecognizerGuide *self, IInkRectangle** Rectangle) get_WritingBox;
			public function HRESULT(IInkRecognizerGuide *self, IInkRectangle* Rectangle) put_WritingBox;
			public function HRESULT(IInkRecognizerGuide *self, IInkRectangle** Rectangle) get_DrawnBox;
			public function HRESULT(IInkRecognizerGuide *self, IInkRectangle* Rectangle) put_DrawnBox;
			public function HRESULT(IInkRecognizerGuide *self, int32* Units) get_Rows;
			public function HRESULT(IInkRecognizerGuide *self, int32 Units) put_Rows;
			public function HRESULT(IInkRecognizerGuide *self, int32* Units) get_Columns;
			public function HRESULT(IInkRecognizerGuide *self, int32 Units) put_Columns;
			public function HRESULT(IInkRecognizerGuide *self, int32* Units) get_Midline;
			public function HRESULT(IInkRecognizerGuide *self, int32 Units) put_Midline;
			public function HRESULT(IInkRecognizerGuide *self, InkRecoGuide* pRecoGuide) get_GuideData;
			public function HRESULT(IInkRecognizerGuide *self, InkRecoGuide recoGuide) put_GuideData;
		}
		[CRepr]
		public struct IInkWordList : IDispatch
		{
			public const new Guid IID = .(0x76ba3491, 0xcb2f, 0x406b, 0x99, 0x61, 0x0e, 0x0c, 0x4c, 0xda, 0xae, 0xf2);
			
			public function HRESULT(IInkWordList *self, BSTR NewWord) AddWord;
			public function HRESULT(IInkWordList *self, BSTR RemoveWord) RemoveWord;
			public function HRESULT(IInkWordList *self, IInkWordList* MergeWordList) Merge;
		}
		[CRepr]
		public struct IInkWordList2 : IDispatch
		{
			public const new Guid IID = .(0x14542586, 0x11bf, 0x4f5f, 0xb6, 0xe7, 0x49, 0xd0, 0x74, 0x4a, 0xab, 0x6e);
			
			public function HRESULT(IInkWordList2 *self, BSTR NewWords) AddWords;
		}
		[CRepr]
		public struct IInk : IDispatch
		{
			public const new Guid IID = .(0x03f8e511, 0x43a1, 0x11d3, 0x8b, 0xb6, 0x00, 0x80, 0xc7, 0xd6, 0xba, 0xd5);
			
		}
		[CRepr]
		public struct IInkLineInfo : IUnknown
		{
			public const new Guid IID = .(0x9c1c5ad6, 0xf22f, 0x4de4, 0xb4, 0x53, 0xa2, 0xcc, 0x48, 0x2e, 0x7c, 0x33);
			
			public function HRESULT(IInkLineInfo *self, INKMETRIC* pim) SetFormat;
			public function HRESULT(IInkLineInfo *self, INKMETRIC* pim) GetFormat;
			public function HRESULT(IInkLineInfo *self, INKMETRIC* pim, uint32* pnWidth) GetInkExtent;
			public function HRESULT(IInkLineInfo *self, uint32 nCandidateNum, PWSTR pwcRecogWord, uint32* pcwcRecogWord, uint32 dwFlags) GetCandidate;
			public function HRESULT(IInkLineInfo *self, uint32 nCandidateNum, PWSTR strRecogWord) SetCandidate;
			public function HRESULT(IInkLineInfo *self) Recognize;
		}
		[CRepr]
		public struct ISketchInk : IDispatch
		{
			public const new Guid IID = .(0xb4563688, 0x98eb, 0x4646, 0xb2, 0x79, 0x44, 0xda, 0x14, 0xd4, 0x57, 0x48);
			
		}
		[CRepr]
		public struct IInkDivider : IDispatch
		{
			public const new Guid IID = .(0x5de00405, 0xf9a4, 0x4651, 0xb0, 0xc5, 0xc3, 0x17, 0xde, 0xfd, 0x58, 0xb9);
			
			public function HRESULT(IInkDivider *self, IInkStrokes** Strokes) get_Strokes;
			public function HRESULT(IInkDivider *self, IInkStrokes* Strokes) putref_Strokes;
			public function HRESULT(IInkDivider *self, IInkRecognizerContext** RecognizerContext) get_RecognizerContext;
			public function HRESULT(IInkDivider *self, IInkRecognizerContext* RecognizerContext) putref_RecognizerContext;
			public function HRESULT(IInkDivider *self, int32* LineHeight) get_LineHeight;
			public function HRESULT(IInkDivider *self, int32 LineHeight) put_LineHeight;
			public function HRESULT(IInkDivider *self, IInkDivisionResult** InkDivisionResult) Divide;
		}
		[CRepr]
		public struct IInkDivisionResult : IDispatch
		{
			public const new Guid IID = .(0x2dbec0a7, 0x74c7, 0x4b38, 0x81, 0xeb, 0xaa, 0x8e, 0xf0, 0xc2, 0x49, 0x00);
			
			public function HRESULT(IInkDivisionResult *self, IInkStrokes** Strokes) get_Strokes;
			public function HRESULT(IInkDivisionResult *self, InkDivisionType divisionType, IInkDivisionUnits** InkDivisionUnits) ResultByType;
		}
		[CRepr]
		public struct IInkDivisionUnit : IDispatch
		{
			public const new Guid IID = .(0x85aee342, 0x48b0, 0x4244, 0x9d, 0xd5, 0x1e, 0xd4, 0x35, 0x41, 0x0f, 0xab);
			
			public function HRESULT(IInkDivisionUnit *self, IInkStrokes** Strokes) get_Strokes;
			public function HRESULT(IInkDivisionUnit *self, InkDivisionType* divisionType) get_DivisionType;
			public function HRESULT(IInkDivisionUnit *self, BSTR* RecoString) get_RecognizedString;
			public function HRESULT(IInkDivisionUnit *self, IInkTransform** RotationTransform) get_RotationTransform;
		}
		[CRepr]
		public struct IInkDivisionUnits : IDispatch
		{
			public const new Guid IID = .(0x1bb5ddc2, 0x31cc, 0x4135, 0xab, 0x82, 0x2c, 0x66, 0xc9, 0xf0, 0x0c, 0x41);
			
			public function HRESULT(IInkDivisionUnits *self, int32* Count) get_Count;
			public function HRESULT(IInkDivisionUnits *self, IUnknown** _NewEnum) get__NewEnum;
			public function HRESULT(IInkDivisionUnits *self, int32 Index, IInkDivisionUnit** InkDivisionUnit) Item;
		}
		[CRepr]
		public struct IPenInputPanel : IDispatch
		{
			public const new Guid IID = .(0xfa7a4083, 0x5747, 0x4040, 0xa1, 0x82, 0x0b, 0x0e, 0x9f, 0xd4, 0xfa, 0xc7);
			
			public function HRESULT(IPenInputPanel *self, int16* Busy) get_Busy;
			public function HRESULT(IPenInputPanel *self, BSTR* Factoid) get_Factoid;
			public function HRESULT(IPenInputPanel *self, BSTR Factoid) put_Factoid;
			public function HRESULT(IPenInputPanel *self, int32* AttachedEditWindow) get_AttachedEditWindow;
			public function HRESULT(IPenInputPanel *self, int32 AttachedEditWindow) put_AttachedEditWindow;
			public function HRESULT(IPenInputPanel *self, PanelType* CurrentPanel) get_CurrentPanel;
			public function HRESULT(IPenInputPanel *self, PanelType CurrentPanel) put_CurrentPanel;
			public function HRESULT(IPenInputPanel *self, PanelType* pDefaultPanel) get_DefaultPanel;
			public function HRESULT(IPenInputPanel *self, PanelType DefaultPanel) put_DefaultPanel;
			public function HRESULT(IPenInputPanel *self, int16* Visible) get_Visible;
			public function HRESULT(IPenInputPanel *self, int16 Visible) put_Visible;
			public function HRESULT(IPenInputPanel *self, int32* Top) get_Top;
			public function HRESULT(IPenInputPanel *self, int32* Left) get_Left;
			public function HRESULT(IPenInputPanel *self, int32* Width) get_Width;
			public function HRESULT(IPenInputPanel *self, int32* Height) get_Height;
			public function HRESULT(IPenInputPanel *self, int32* VerticalOffset) get_VerticalOffset;
			public function HRESULT(IPenInputPanel *self, int32 VerticalOffset) put_VerticalOffset;
			public function HRESULT(IPenInputPanel *self, int32* HorizontalOffset) get_HorizontalOffset;
			public function HRESULT(IPenInputPanel *self, int32 HorizontalOffset) put_HorizontalOffset;
			public function HRESULT(IPenInputPanel *self, int16* pAutoShow) get_AutoShow;
			public function HRESULT(IPenInputPanel *self, int16 AutoShow) put_AutoShow;
			public function HRESULT(IPenInputPanel *self, int32 Left, int32 Top) MoveTo;
			public function HRESULT(IPenInputPanel *self) CommitPendingInput;
			public function HRESULT(IPenInputPanel *self) Refresh;
			public function HRESULT(IPenInputPanel *self, int16 Enable) EnableTsf;
		}
		[CRepr]
		public struct _IPenInputPanelEvents : IDispatch
		{
			public const new Guid IID = .(0xb7e489da, 0x3719, 0x439f, 0x84, 0x8f, 0xe7, 0xac, 0xbd, 0x82, 0x0f, 0x17);
			
		}
		[CRepr]
		public struct IHandwrittenTextInsertion : IUnknown
		{
			public const new Guid IID = .(0x56fdea97, 0xecd6, 0x43e7, 0xaa, 0x3a, 0x81, 0x6b, 0xe7, 0x78, 0x58, 0x60);
			
			public function HRESULT(IHandwrittenTextInsertion *self, SAFEARRAY* psaAlternates, uint32 locale, BOOL fAlternateContainsAutoSpacingInformation) InsertRecognitionResultsArray;
			public function HRESULT(IHandwrittenTextInsertion *self, IInkRecognitionResult* pIInkRecoResult, uint32 locale, BOOL fAlternateContainsAutoSpacingInformation) InsertInkRecognitionResult;
		}
		[CRepr]
		public struct ITextInputPanelEventSink : IUnknown
		{
			public const new Guid IID = .(0x27560408, 0x8e64, 0x4fe1, 0x80, 0x4e, 0x42, 0x12, 0x01, 0x58, 0x4b, 0x31);
			
			public function HRESULT(ITextInputPanelEventSink *self, InPlaceState oldInPlaceState, InPlaceState newInPlaceState) InPlaceStateChanging;
			public function HRESULT(ITextInputPanelEventSink *self, InPlaceState oldInPlaceState, InPlaceState newInPlaceState) InPlaceStateChanged;
			public function HRESULT(ITextInputPanelEventSink *self, RECT oldBoundingRectangle, RECT newBoundingRectangle) InPlaceSizeChanging;
			public function HRESULT(ITextInputPanelEventSink *self, RECT oldBoundingRectangle, RECT newBoundingRectangle) InPlaceSizeChanged;
			public function HRESULT(ITextInputPanelEventSink *self, PanelInputArea oldInputArea, PanelInputArea newInputArea) InputAreaChanging;
			public function HRESULT(ITextInputPanelEventSink *self, PanelInputArea oldInputArea, PanelInputArea newInputArea) InputAreaChanged;
			public function HRESULT(ITextInputPanelEventSink *self, CorrectionMode oldCorrectionMode, CorrectionMode newCorrectionMode) CorrectionModeChanging;
			public function HRESULT(ITextInputPanelEventSink *self, CorrectionMode oldCorrectionMode, CorrectionMode newCorrectionMode) CorrectionModeChanged;
			public function HRESULT(ITextInputPanelEventSink *self, BOOL oldVisible, BOOL newVisible) InPlaceVisibilityChanging;
			public function HRESULT(ITextInputPanelEventSink *self, BOOL oldVisible, BOOL newVisible) InPlaceVisibilityChanged;
			public function HRESULT(ITextInputPanelEventSink *self, SAFEARRAY* Ink) TextInserting;
			public function HRESULT(ITextInputPanelEventSink *self, SAFEARRAY* Ink) TextInserted;
		}
		[CRepr]
		public struct ITextInputPanel : IUnknown
		{
			public const new Guid IID = .(0x6b6a65a5, 0x6af3, 0x46c2, 0xb6, 0xea, 0x56, 0xcd, 0x1f, 0x80, 0xdf, 0x71);
			
			public function HRESULT(ITextInputPanel *self, HWND* AttachedEditWindow) get_AttachedEditWindow;
			public function HRESULT(ITextInputPanel *self, HWND AttachedEditWindow) put_AttachedEditWindow;
			public function HRESULT(ITextInputPanel *self, InteractionMode* CurrentInteractionMode) get_CurrentInteractionMode;
			public function HRESULT(ITextInputPanel *self, InPlaceState* State) get_DefaultInPlaceState;
			public function HRESULT(ITextInputPanel *self, InPlaceState State) put_DefaultInPlaceState;
			public function HRESULT(ITextInputPanel *self, InPlaceState* State) get_CurrentInPlaceState;
			public function HRESULT(ITextInputPanel *self, PanelInputArea* Area) get_DefaultInputArea;
			public function HRESULT(ITextInputPanel *self, PanelInputArea Area) put_DefaultInputArea;
			public function HRESULT(ITextInputPanel *self, PanelInputArea* Area) get_CurrentInputArea;
			public function HRESULT(ITextInputPanel *self, CorrectionMode* Mode) get_CurrentCorrectionMode;
			public function HRESULT(ITextInputPanel *self, InPlaceDirection* Direction) get_PreferredInPlaceDirection;
			public function HRESULT(ITextInputPanel *self, InPlaceDirection Direction) put_PreferredInPlaceDirection;
			public function HRESULT(ITextInputPanel *self, BOOL* Expand) get_ExpandPostInsertionCorrection;
			public function HRESULT(ITextInputPanel *self, BOOL Expand) put_ExpandPostInsertionCorrection;
			public function HRESULT(ITextInputPanel *self, BOOL* Visible) get_InPlaceVisibleOnFocus;
			public function HRESULT(ITextInputPanel *self, BOOL Visible) put_InPlaceVisibleOnFocus;
			public function HRESULT(ITextInputPanel *self, RECT* BoundingRectangle) get_InPlaceBoundingRectangle;
			public function HRESULT(ITextInputPanel *self, int32* Height) get_PopUpCorrectionHeight;
			public function HRESULT(ITextInputPanel *self, int32* Height) get_PopDownCorrectionHeight;
			public function HRESULT(ITextInputPanel *self) CommitPendingInput;
			public function HRESULT(ITextInputPanel *self, BOOL Visible) SetInPlaceVisibility;
			public function HRESULT(ITextInputPanel *self, int32 xPosition, int32 yPosition, CorrectionPosition position) SetInPlacePosition;
			public function HRESULT(ITextInputPanel *self, int32 xPosition, int32 yPosition) SetInPlaceHoverTargetPosition;
			public function HRESULT(ITextInputPanel *self, ITextInputPanelEventSink* EventSink, uint32 EventMask) Advise;
			public function HRESULT(ITextInputPanel *self, ITextInputPanelEventSink* EventSink) Unadvise;
		}
		[CRepr]
		public struct IInputPanelWindowHandle : IUnknown
		{
			public const new Guid IID = .(0x4af81847, 0xfdc4, 0x4fc3, 0xad, 0x0b, 0x42, 0x24, 0x79, 0xc1, 0xb9, 0x35);
			
			public function HRESULT(IInputPanelWindowHandle *self, int32* AttachedEditWindow) get_AttachedEditWindow32;
			public function HRESULT(IInputPanelWindowHandle *self, int32 AttachedEditWindow) put_AttachedEditWindow32;
			public function HRESULT(IInputPanelWindowHandle *self, int64* AttachedEditWindow) get_AttachedEditWindow64;
			public function HRESULT(IInputPanelWindowHandle *self, int64 AttachedEditWindow) put_AttachedEditWindow64;
		}
		[CRepr]
		public struct ITextInputPanelRunInfo : IUnknown
		{
			public const new Guid IID = .(0x9f424568, 0x1920, 0x48cc, 0x98, 0x11, 0xa9, 0x93, 0xcb, 0xf5, 0xad, 0xba);
			
			public function HRESULT(ITextInputPanelRunInfo *self, BOOL* pfRunning) IsTipRunning;
		}
		[CRepr]
		public struct IInkEdit : IDispatch
		{
			public const new Guid IID = .(0xf2127a19, 0xfbfb, 0x4aed, 0x84, 0x64, 0x3f, 0x36, 0xd7, 0x8c, 0xfe, 0xfb);
			
			public function HRESULT(IInkEdit *self, InkEditStatus* pStatus) get_Status;
			public function HRESULT(IInkEdit *self, int16* pVal) get_UseMouseForInput;
			public function HRESULT(IInkEdit *self, int16 newVal) put_UseMouseForInput;
			public function HRESULT(IInkEdit *self, InkMode* pVal) get_InkMode;
			public function HRESULT(IInkEdit *self, InkMode newVal) put_InkMode;
			public function HRESULT(IInkEdit *self, InkInsertMode* pVal) get_InkInsertMode;
			public function HRESULT(IInkEdit *self, InkInsertMode newVal) put_InkInsertMode;
			public function HRESULT(IInkEdit *self, IInkDrawingAttributes** pVal) get_DrawingAttributes;
			public function HRESULT(IInkEdit *self, IInkDrawingAttributes* newVal) putref_DrawingAttributes;
			public function HRESULT(IInkEdit *self, int32* pVal) get_RecognitionTimeout;
			public function HRESULT(IInkEdit *self, int32 newVal) put_RecognitionTimeout;
			public function HRESULT(IInkEdit *self, IInkRecognizer** pVal) get_Recognizer;
			public function HRESULT(IInkEdit *self, IInkRecognizer* newVal) putref_Recognizer;
			public function HRESULT(IInkEdit *self, BSTR* pVal) get_Factoid;
			public function HRESULT(IInkEdit *self, BSTR newVal) put_Factoid;
			public function HRESULT(IInkEdit *self, VARIANT* pSelInk) get_SelInks;
			public function HRESULT(IInkEdit *self, VARIANT SelInk) put_SelInks;
			public function HRESULT(IInkEdit *self, InkDisplayMode* pInkDisplayMode) get_SelInksDisplayMode;
			public function HRESULT(IInkEdit *self, InkDisplayMode InkDisplayMode) put_SelInksDisplayMode;
			public function HRESULT(IInkEdit *self) Recognize;
			public function HRESULT(IInkEdit *self, InkApplicationGesture Gesture, int16* pListen) GetGestureStatus;
			public function HRESULT(IInkEdit *self, InkApplicationGesture Gesture, int16 Listen) SetGestureStatus;
			public function HRESULT(IInkEdit *self, uint32 clr) put_BackColor;
			public function HRESULT(IInkEdit *self, uint32* pclr) get_BackColor;
			public function HRESULT(IInkEdit *self, AppearanceConstants* pAppearance) get_Appearance;
			public function HRESULT(IInkEdit *self, AppearanceConstants pAppearance) put_Appearance;
			public function HRESULT(IInkEdit *self, BorderStyleConstants* pBorderStyle) get_BorderStyle;
			public function HRESULT(IInkEdit *self, BorderStyleConstants pBorderStyle) put_BorderStyle;
			public function HRESULT(IInkEdit *self, uint32* pohHwnd) get_Hwnd;
			public function HRESULT(IInkEdit *self, IFontDisp** ppFont) get_Font;
			public function HRESULT(IInkEdit *self, IFontDisp* ppFont) putref_Font;
			public function HRESULT(IInkEdit *self, BSTR* pbstrText) get_Text;
			public function HRESULT(IInkEdit *self, BSTR pbstrText) put_Text;
			public function HRESULT(IInkEdit *self, IPictureDisp** MouseIcon) get_MouseIcon;
			public function HRESULT(IInkEdit *self, IPictureDisp* MouseIcon) put_MouseIcon;
			public function HRESULT(IInkEdit *self, IPictureDisp* MouseIcon) putref_MouseIcon;
			public function HRESULT(IInkEdit *self, InkMousePointer* MousePointer) get_MousePointer;
			public function HRESULT(IInkEdit *self, InkMousePointer MousePointer) put_MousePointer;
			public function HRESULT(IInkEdit *self, int16* pVal) get_Locked;
			public function HRESULT(IInkEdit *self, int16 newVal) put_Locked;
			public function HRESULT(IInkEdit *self, int16* pVal) get_Enabled;
			public function HRESULT(IInkEdit *self, int16 newVal) put_Enabled;
			public function HRESULT(IInkEdit *self, int32* plMaxLength) get_MaxLength;
			public function HRESULT(IInkEdit *self, int32 lMaxLength) put_MaxLength;
			public function HRESULT(IInkEdit *self, int16* pVal) get_MultiLine;
			public function HRESULT(IInkEdit *self, int16 newVal) put_MultiLine;
			public function HRESULT(IInkEdit *self, ScrollBarsConstants* pVal) get_ScrollBars;
			public function HRESULT(IInkEdit *self, ScrollBarsConstants newVal) put_ScrollBars;
			public function HRESULT(IInkEdit *self, int16* pVal) get_DisableNoScroll;
			public function HRESULT(IInkEdit *self, int16 newVal) put_DisableNoScroll;
			public function HRESULT(IInkEdit *self, VARIANT* pvarSelAlignment) get_SelAlignment;
			public function HRESULT(IInkEdit *self, VARIANT pvarSelAlignment) put_SelAlignment;
			public function HRESULT(IInkEdit *self, VARIANT* pvarSelBold) get_SelBold;
			public function HRESULT(IInkEdit *self, VARIANT pvarSelBold) put_SelBold;
			public function HRESULT(IInkEdit *self, VARIANT* pvarSelItalic) get_SelItalic;
			public function HRESULT(IInkEdit *self, VARIANT pvarSelItalic) put_SelItalic;
			public function HRESULT(IInkEdit *self, VARIANT* pvarSelUnderline) get_SelUnderline;
			public function HRESULT(IInkEdit *self, VARIANT pvarSelUnderline) put_SelUnderline;
			public function HRESULT(IInkEdit *self, VARIANT* pvarSelColor) get_SelColor;
			public function HRESULT(IInkEdit *self, VARIANT pvarSelColor) put_SelColor;
			public function HRESULT(IInkEdit *self, VARIANT* pvarSelFontName) get_SelFontName;
			public function HRESULT(IInkEdit *self, VARIANT pvarSelFontName) put_SelFontName;
			public function HRESULT(IInkEdit *self, VARIANT* pvarSelFontSize) get_SelFontSize;
			public function HRESULT(IInkEdit *self, VARIANT pvarSelFontSize) put_SelFontSize;
			public function HRESULT(IInkEdit *self, VARIANT* pvarSelCharOffset) get_SelCharOffset;
			public function HRESULT(IInkEdit *self, VARIANT pvarSelCharOffset) put_SelCharOffset;
			public function HRESULT(IInkEdit *self, BSTR* pbstrTextRTF) get_TextRTF;
			public function HRESULT(IInkEdit *self, BSTR pbstrTextRTF) put_TextRTF;
			public function HRESULT(IInkEdit *self, int32* plSelStart) get_SelStart;
			public function HRESULT(IInkEdit *self, int32 plSelStart) put_SelStart;
			public function HRESULT(IInkEdit *self, int32* plSelLength) get_SelLength;
			public function HRESULT(IInkEdit *self, int32 plSelLength) put_SelLength;
			public function HRESULT(IInkEdit *self, BSTR* pbstrSelText) get_SelText;
			public function HRESULT(IInkEdit *self, BSTR pbstrSelText) put_SelText;
			public function HRESULT(IInkEdit *self, BSTR* pbstrSelRTF) get_SelRTF;
			public function HRESULT(IInkEdit *self, BSTR pbstrSelRTF) put_SelRTF;
			public function HRESULT(IInkEdit *self) Refresh;
		}
		[CRepr]
		public struct _IInkEditEvents : IDispatch
		{
			public const new Guid IID = .(0xe3b0b797, 0xa72e, 0x46db, 0xa0, 0xd7, 0x6c, 0x9e, 0xba, 0x8e, 0x9b, 0xbc);
			
		}
		[CRepr]
		public struct IMathInputControl : IDispatch
		{
			public const new Guid IID = .(0xeba615aa, 0xfac6, 0x4738, 0xba, 0x5f, 0xff, 0x09, 0xe9, 0xfe, 0x47, 0x3e);
			
			public function HRESULT(IMathInputControl *self) Show;
			public function HRESULT(IMathInputControl *self) Hide;
			public function HRESULT(IMathInputControl *self, int16* pvbShown) IsVisible;
			public function HRESULT(IMathInputControl *self, int32* Left, int32* Top, int32* Right, int32* Bottom) GetPosition;
			public function HRESULT(IMathInputControl *self, int32 Left, int32 Top, int32 Right, int32 Bottom) SetPosition;
			public function HRESULT(IMathInputControl *self) Clear;
			public function HRESULT(IMathInputControl *self, int32 Element, int16 Paint) SetCustomPaint;
			public function HRESULT(IMathInputControl *self, BSTR CaptionText) SetCaptionText;
			public function HRESULT(IMathInputControl *self, IInkDisp* Ink) LoadInk;
			public function HRESULT(IMathInputControl *self, int OwnerWindow) SetOwnerWindow;
			public function HRESULT(IMathInputControl *self, int16 Extended) EnableExtendedButtons;
			public function HRESULT(IMathInputControl *self, int32* Height) GetPreviewHeight;
			public function HRESULT(IMathInputControl *self, int32 Height) SetPreviewHeight;
			public function HRESULT(IMathInputControl *self, int16 AutoGrow) EnableAutoGrow;
			public function HRESULT(IMathInputControl *self, BSTR FunctionName) AddFunctionName;
			public function HRESULT(IMathInputControl *self, BSTR FunctionName) RemoveFunctionName;
			public function HRESULT(IMathInputControl *self, IPictureDisp** HoverImage) GetHoverIcon;
		}
		[CRepr]
		public struct _IMathInputControlEvents : IDispatch
		{
			public const new Guid IID = .(0x683336b5, 0xa47d, 0x4358, 0x96, 0xf9, 0x87, 0x5a, 0x47, 0x2a, 0xe7, 0x0a);
			
		}
		[CRepr]
		public struct IRealTimeStylus : IUnknown
		{
			public const new Guid IID = .(0xa8bb5d22, 0x3144, 0x4a7b, 0x93, 0xcd, 0xf3, 0x4a, 0x16, 0xbe, 0x51, 0x3a);
			
			public function HRESULT(IRealTimeStylus *self, BOOL* pfEnable) get_Enabled;
			public function HRESULT(IRealTimeStylus *self, BOOL fEnable) put_Enabled;
			public function HRESULT(IRealTimeStylus *self, HANDLE_PTR* phwnd) get_HWND;
			public function HRESULT(IRealTimeStylus *self, HANDLE_PTR hwnd) put_HWND;
			public function HRESULT(IRealTimeStylus *self, RECT* prcWndInputRect) get_WindowInputRectangle;
			public function HRESULT(IRealTimeStylus *self, RECT* prcWndInputRect) put_WindowInputRectangle;
			public function HRESULT(IRealTimeStylus *self, uint32 iIndex, IStylusSyncPlugin* piPlugin) AddStylusSyncPlugin;
			public function HRESULT(IRealTimeStylus *self, uint32 iIndex, IStylusSyncPlugin** ppiPlugin) RemoveStylusSyncPlugin;
			public function HRESULT(IRealTimeStylus *self) RemoveAllStylusSyncPlugins;
			public function HRESULT(IRealTimeStylus *self, uint32 iIndex, IStylusSyncPlugin** ppiPlugin) GetStylusSyncPlugin;
			public function HRESULT(IRealTimeStylus *self, uint32* pcPlugins) GetStylusSyncPluginCount;
			public function HRESULT(IRealTimeStylus *self, uint32 iIndex, IStylusAsyncPlugin* piPlugin) AddStylusAsyncPlugin;
			public function HRESULT(IRealTimeStylus *self, uint32 iIndex, IStylusAsyncPlugin** ppiPlugin) RemoveStylusAsyncPlugin;
			public function HRESULT(IRealTimeStylus *self) RemoveAllStylusAsyncPlugins;
			public function HRESULT(IRealTimeStylus *self, uint32 iIndex, IStylusAsyncPlugin** ppiPlugin) GetStylusAsyncPlugin;
			public function HRESULT(IRealTimeStylus *self, uint32* pcPlugins) GetStylusAsyncPluginCount;
			public function HRESULT(IRealTimeStylus *self, IRealTimeStylus** ppiRTS) get_ChildRealTimeStylusPlugin;
			public function HRESULT(IRealTimeStylus *self, IRealTimeStylus* piRTS) putref_ChildRealTimeStylusPlugin;
			public function HRESULT(IRealTimeStylus *self, StylusQueue sq, Guid* pGuidId, uint32 cbData, uint8* pbData) AddCustomStylusDataToQueue;
			public function HRESULT(IRealTimeStylus *self) ClearStylusQueues;
			public function HRESULT(IRealTimeStylus *self, BOOL fUseMouseForInput) SetAllTabletsMode;
			public function HRESULT(IRealTimeStylus *self, IInkTablet* piTablet) SetSingleTabletMode;
			public function HRESULT(IRealTimeStylus *self, IInkTablet** ppiSingleTablet) GetTablet;
			public function HRESULT(IRealTimeStylus *self, IInkTablet* piTablet, uint32* ptcid) GetTabletContextIdFromTablet;
			public function HRESULT(IRealTimeStylus *self, uint32 tcid, IInkTablet** ppiTablet) GetTabletFromTabletContextId;
			public function HRESULT(IRealTimeStylus *self, uint32* pcTcidCount, uint32** ppTcids) GetAllTabletContextIds;
			public function HRESULT(IRealTimeStylus *self, IInkCursors** ppiInkCursors) GetStyluses;
			public function HRESULT(IRealTimeStylus *self, uint32 sid, IInkCursor** ppiInkCursor) GetStylusForId;
			public function HRESULT(IRealTimeStylus *self, uint32 cProperties, Guid* pPropertyGuids) SetDesiredPacketDescription;
			public function HRESULT(IRealTimeStylus *self, uint32* pcProperties, Guid** ppPropertyGuids) GetDesiredPacketDescription;
			public function HRESULT(IRealTimeStylus *self, uint32 tcid, float* pfInkToDeviceScaleX, float* pfInkToDeviceScaleY, uint32* pcPacketProperties, PACKET_PROPERTY** ppPacketProperties) GetPacketDescriptionData;
		}
		[CRepr]
		public struct IRealTimeStylus2 : IUnknown
		{
			public const new Guid IID = .(0xb5f2a6cd, 0x3179, 0x4a3e, 0xb9, 0xc4, 0xbb, 0x58, 0x65, 0x96, 0x2b, 0xe2);
			
			public function HRESULT(IRealTimeStylus2 *self, BOOL* pfEnable) get_FlicksEnabled;
			public function HRESULT(IRealTimeStylus2 *self, BOOL fEnable) put_FlicksEnabled;
		}
		[CRepr]
		public struct IRealTimeStylus3 : IUnknown
		{
			public const new Guid IID = .(0xd70230a3, 0x6986, 0x4051, 0xb5, 0x7a, 0x1c, 0xf6, 0x9f, 0x4d, 0x9d, 0xb5);
			
			public function HRESULT(IRealTimeStylus3 *self, BOOL* pfEnable) get_MultiTouchEnabled;
			public function HRESULT(IRealTimeStylus3 *self, BOOL fEnable) put_MultiTouchEnabled;
		}
		[CRepr]
		public struct IRealTimeStylusSynchronization : IUnknown
		{
			public const new Guid IID = .(0xaa87eab8, 0xab4a, 0x4cea, 0xb5, 0xcb, 0x46, 0xd8, 0x4c, 0x6a, 0x25, 0x09);
			
			public function HRESULT(IRealTimeStylusSynchronization *self, RealTimeStylusLockType lock) AcquireLock;
			public function HRESULT(IRealTimeStylusSynchronization *self, RealTimeStylusLockType lock) ReleaseLock;
		}
		[CRepr]
		public struct IStrokeBuilder : IUnknown
		{
			public const new Guid IID = .(0xa5fd4e2d, 0xc44b, 0x4092, 0x91, 0x77, 0x26, 0x09, 0x05, 0xeb, 0x67, 0x2b);
			
			public function HRESULT(IStrokeBuilder *self, uint32 cPktBuffLength, int32* pPackets, uint32 cPacketProperties, PACKET_PROPERTY* pPacketProperties, float fInkToDeviceScaleX, float fInkToDeviceScaleY, IInkStrokeDisp** ppIInkStroke) CreateStroke;
			public function HRESULT(IStrokeBuilder *self, uint32 tcid, uint32 sid, int32* pPacket, uint32 cPacketProperties, PACKET_PROPERTY* pPacketProperties, float fInkToDeviceScaleX, float fInkToDeviceScaleY, IInkStrokeDisp** ppIInkStroke) BeginStroke;
			public function HRESULT(IStrokeBuilder *self, uint32 tcid, uint32 sid, uint32 cPktBuffLength, int32* pPackets) AppendPackets;
			public function HRESULT(IStrokeBuilder *self, uint32 tcid, uint32 sid, IInkStrokeDisp** ppIInkStroke, RECT* pDirtyRect) EndStroke;
			public function HRESULT(IStrokeBuilder *self, IInkDisp** ppiInkObj) get_Ink;
			public function HRESULT(IStrokeBuilder *self, IInkDisp* piInkObj) putref_Ink;
		}
		[CRepr]
		public struct IStylusPlugin : IUnknown
		{
			public const new Guid IID = .(0xa81436d8, 0x4757, 0x4fd1, 0xa1, 0x85, 0x13, 0x3f, 0x97, 0xc6, 0xc5, 0x45);
			
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 cTcidCount, uint32* pTcids) RealTimeStylusEnabled;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 cTcidCount, uint32* pTcids) RealTimeStylusDisabled;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid) StylusInRange;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid) StylusOutOfRange;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, StylusInfo* pStylusInfo, uint32 cPropCountPerPkt, int32* pPacket, int32** ppInOutPkt) StylusDown;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, StylusInfo* pStylusInfo, uint32 cPropCountPerPkt, int32* pPacket, int32** ppInOutPkt) StylusUp;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 sid, Guid* pGuidStylusButton, POINT* pStylusPos) StylusButtonDown;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 sid, Guid* pGuidStylusButton, POINT* pStylusPos) StylusButtonUp;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, StylusInfo* pStylusInfo, uint32 cPktCount, uint32 cPktBuffLength, int32* pPackets, uint32* pcInOutPkts, int32** ppInOutPkts) InAirPackets;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, StylusInfo* pStylusInfo, uint32 cPktCount, uint32 cPktBuffLength, int32* pPackets, uint32* pcInOutPkts, int32** ppInOutPkts) Packets;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, Guid* pGuidId, uint32 cbData, uint8* pbData) CustomStylusDataAdded;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, uint32 tcid, uint32 sid, uint16 event, SYSTEM_EVENT_DATA eventdata) SystemEvent;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, IInkTablet* piTablet) TabletAdded;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, int32 iTabletIndex) TabletRemoved;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc, IStylusPlugin* piPlugin, RealTimeStylusDataInterest dataInterest, HRESULT hrErrorCode, int* lptrKey) Error;
			public function HRESULT(IStylusPlugin *self, IRealTimeStylus* piRtsSrc) UpdateMapping;
			public function HRESULT(IStylusPlugin *self, RealTimeStylusDataInterest* pDataInterest) DataInterest;
		}
		[CRepr]
		public struct IStylusSyncPlugin : IStylusPlugin
		{
			public const new Guid IID = .(0xa157b174, 0x482f, 0x4d71, 0xa3, 0xf6, 0x3a, 0x41, 0xdd, 0xd1, 0x1b, 0xe9);
			
		}
		[CRepr]
		public struct IStylusAsyncPlugin : IStylusPlugin
		{
			public const new Guid IID = .(0xa7cca85a, 0x31bc, 0x4cd2, 0xaa, 0xdc, 0x32, 0x89, 0xa3, 0xaf, 0x11, 0xc8);
			
		}
		[CRepr]
		public struct IDynamicRenderer : IUnknown
		{
			public const new Guid IID = .(0xa079468e, 0x7165, 0x46f9, 0xb7, 0xaf, 0x98, 0xad, 0x01, 0xa9, 0x30, 0x09);
			
			public function HRESULT(IDynamicRenderer *self, BOOL* bEnabled) get_Enabled;
			public function HRESULT(IDynamicRenderer *self, BOOL bEnabled) put_Enabled;
			public function HRESULT(IDynamicRenderer *self, HANDLE_PTR* hwnd) get_HWND;
			public function HRESULT(IDynamicRenderer *self, HANDLE_PTR hwnd) put_HWND;
			public function HRESULT(IDynamicRenderer *self, RECT* prcClipRect) get_ClipRectangle;
			public function HRESULT(IDynamicRenderer *self, RECT* prcClipRect) put_ClipRectangle;
			public function HRESULT(IDynamicRenderer *self, HANDLE_PTR* phClipRgn) get_ClipRegion;
			public function HRESULT(IDynamicRenderer *self, HANDLE_PTR hClipRgn) put_ClipRegion;
			public function HRESULT(IDynamicRenderer *self, IInkDrawingAttributes** ppiDA) get_DrawingAttributes;
			public function HRESULT(IDynamicRenderer *self, IInkDrawingAttributes* piDA) putref_DrawingAttributes;
			public function HRESULT(IDynamicRenderer *self, BOOL* pfCacheData) get_DataCacheEnabled;
			public function HRESULT(IDynamicRenderer *self, BOOL fCacheData) put_DataCacheEnabled;
			public function HRESULT(IDynamicRenderer *self, uint32 strokeId) ReleaseCachedData;
			public function HRESULT(IDynamicRenderer *self) Refresh;
			public function HRESULT(IDynamicRenderer *self, HANDLE_PTR hDC) Draw;
		}
		[CRepr]
		public struct IGestureRecognizer : IUnknown
		{
			public const new Guid IID = .(0xae9ef86b, 0x7054, 0x45e3, 0xae, 0x22, 0x31, 0x74, 0xdc, 0x88, 0x11, 0xb7);
			
			public function HRESULT(IGestureRecognizer *self, BOOL* pfEnabled) get_Enabled;
			public function HRESULT(IGestureRecognizer *self, BOOL fEnabled) put_Enabled;
			public function HRESULT(IGestureRecognizer *self, int32* pcStrokes) get_MaxStrokeCount;
			public function HRESULT(IGestureRecognizer *self, int32 cStrokes) put_MaxStrokeCount;
			public function HRESULT(IGestureRecognizer *self, uint32 cGestures, int32* pGestures) EnableGestures;
			public function HRESULT(IGestureRecognizer *self) Reset;
		}
		[CRepr]
		public struct ITipAutoCompleteProvider : IUnknown
		{
			public const new Guid IID = .(0x7c6cf46d, 0x8404, 0x46b9, 0xad, 0x33, 0xf5, 0xb6, 0x03, 0x6d, 0x40, 0x07);
			
			public function HRESULT(ITipAutoCompleteProvider *self, BSTR bstrPendingText) UpdatePendingText;
			public function HRESULT(ITipAutoCompleteProvider *self, BOOL fShow) Show;
		}
		[CRepr]
		public struct ITipAutoCompleteClient : IUnknown
		{
			public const new Guid IID = .(0x5e078e03, 0x8265, 0x4bbe, 0x94, 0x87, 0xd2, 0x42, 0xed, 0xbe, 0xf9, 0x10);
			
			public function HRESULT(ITipAutoCompleteClient *self, HWND hWndField, ITipAutoCompleteProvider* pIProvider) AdviseProvider;
			public function HRESULT(ITipAutoCompleteClient *self, HWND hWndField, ITipAutoCompleteProvider* pIProvider) UnadviseProvider;
			public function HRESULT(ITipAutoCompleteClient *self) UserSelection;
			public function HRESULT(ITipAutoCompleteClient *self, RECT* prcACList, RECT* prcField, RECT* prcModifiedACList, BOOL* pfShownAboveTip) PreferredRects;
			public function HRESULT(ITipAutoCompleteClient *self, HWND hWndList, BOOL* pfAllowShowing) RequestShowUI;
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
