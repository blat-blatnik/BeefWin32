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
			public IInkCursor Cursor;
			public IInkStrokeDisp Stroke;
		}
		[CRepr]
		public struct IEC_GESTUREINFO
		{
			public NMHDR nmhdr;
			public IInkCursor Cursor;
			public IInkStrokes Strokes;
			public VARIANT Gestures;
		}
		[CRepr]
		public struct IEC_RECOGNITIONRESULTINFO
		{
			public NMHDR nmhdr;
			public IInkRecognitionResult RecognitionResult;
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
			public IDynamicRenderer dynamicRenderer;
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
		
		public struct IInkRectangle {}
		public struct IInkExtendedProperty {}
		public struct IInkExtendedProperties {}
		public struct IInkDrawingAttributes {}
		public struct IInkTransform {}
		public struct IInkGesture {}
		public struct IInkCursor {}
		public struct IInkCursors {}
		public struct IInkCursorButton {}
		public struct IInkCursorButtons {}
		public struct IInkTablet {}
		public struct IInkTablet2 {}
		public struct IInkTablet3 {}
		public struct IInkTablets {}
		public struct IInkStrokeDisp {}
		public struct IInkStrokes {}
		public struct IInkCustomStrokes {}
		public struct _IInkStrokesEvents {}
		public struct IInkDisp {}
		public struct _IInkEvents {}
		public struct IInkRenderer {}
		public struct IInkCollector {}
		public struct _IInkCollectorEvents {}
		public struct IInkOverlay {}
		public struct _IInkOverlayEvents {}
		public struct IInkPicture {}
		public struct _IInkPictureEvents {}
		public struct IInkRecognizer {}
		public struct IInkRecognizer2 {}
		public struct IInkRecognizers {}
		public struct _IInkRecognitionEvents {}
		public struct IInkRecognizerContext {}
		public struct IInkRecognizerContext2 {}
		public struct IInkRecognitionResult {}
		public struct IInkRecognitionAlternate {}
		public struct IInkRecognitionAlternates {}
		public struct IInkRecognizerGuide {}
		public struct IInkWordList {}
		public struct IInkWordList2 {}
		public struct IInk {}
		public struct IInkLineInfo {}
		public struct ISketchInk {}
		public struct IInkDivider {}
		public struct IInkDivisionResult {}
		public struct IInkDivisionUnit {}
		public struct IInkDivisionUnits {}
		public struct IPenInputPanel {}
		public struct _IPenInputPanelEvents {}
		public struct IHandwrittenTextInsertion {}
		public struct ITextInputPanelEventSink {}
		public struct ITextInputPanel {}
		public struct IInputPanelWindowHandle {}
		public struct ITextInputPanelRunInfo {}
		public struct IInkEdit {}
		public struct _IInkEditEvents {}
		public struct IMathInputControl {}
		public struct _IMathInputControlEvents {}
		public struct IRealTimeStylus {}
		public struct IRealTimeStylus2 {}
		public struct IRealTimeStylus3 {}
		public struct IRealTimeStylusSynchronization {}
		public struct IStrokeBuilder {}
		public struct IStylusPlugin {}
		public struct IStylusSyncPlugin {}
		public struct IStylusAsyncPlugin {}
		public struct IDynamicRenderer {}
		public struct IGestureRecognizer {}
		public struct ITipAutoCompleteProvider {}
		public struct ITipAutoCompleteClient {}
		
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
