using System;

// namespace UI.Input.KeyboardAndMouse
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 EXTENDED_BIT = 16777216;
		public const uint32 DONTCARE_BIT = 33554432;
		public const uint32 FAKE_KEYSTROKE = 33554432;
		public const uint32 KBDBASE = 0;
		public const uint32 KBDSHIFT = 1;
		public const uint32 KBDCTRL = 2;
		public const uint32 KBDALT = 4;
		public const uint32 KBDKANA = 8;
		public const uint32 KBDROYA = 16;
		public const uint32 KBDLOYA = 32;
		public const uint32 KBDGRPSELTAP = 128;
		public const uint32 GRAVE = 768;
		public const uint32 ACUTE = 769;
		public const uint32 CIRCUMFLEX = 770;
		public const uint32 TILDE = 771;
		public const uint32 MACRON = 772;
		public const uint32 OVERSCORE = 773;
		public const uint32 BREVE = 774;
		public const uint32 DOT_ABOVE = 775;
		public const uint32 UMLAUT = 776;
		public const uint32 DIARESIS = 776;
		public const uint32 HOOK_ABOVE = 777;
		public const uint32 RING = 778;
		public const uint32 DOUBLE_ACUTE = 779;
		public const uint32 HACEK = 780;
		public const uint32 CEDILLA = 807;
		public const uint32 OGONEK = 808;
		public const uint32 TONOS = 900;
		public const uint32 DIARESIS_TONOS = 901;
		public const uint32 SHFT_INVALID = 15;
		public const uint32 WCH_NONE = 61440;
		public const uint32 WCH_DEAD = 61441;
		public const uint32 WCH_LGTR = 61442;
		public const uint32 CAPLOK = 1;
		public const uint32 SGCAPS = 2;
		public const uint32 CAPLOKALTGR = 4;
		public const uint32 KANALOK = 8;
		public const uint32 GRPSELTAP = 128;
		public const uint32 DKF_DEAD = 1;
		public const uint32 KBD_VERSION = 1;
		public const uint32 KLLF_ALTGR = 1;
		public const uint32 KLLF_SHIFTLOCK = 2;
		public const uint32 KLLF_LRM_RLM = 4;
		public const uint32 KLLF_GLOBAL_ATTRS = 2;
		public const uint32 KBDTABLE_MULTI_MAX = 8;
		public const uint32 KEYBOARD_TYPE_GENERIC_101 = 4;
		public const uint32 KEYBOARD_TYPE_JAPAN = 7;
		public const uint32 KEYBOARD_TYPE_KOREA = 8;
		public const uint32 KEYBOARD_TYPE_UNKNOWN = 81;
		public const uint32 NLSKBD_OEM_MICROSOFT = 0;
		public const uint32 NLSKBD_OEM_AX = 1;
		public const uint32 NLSKBD_OEM_EPSON = 4;
		public const uint32 NLSKBD_OEM_FUJITSU = 5;
		public const uint32 NLSKBD_OEM_IBM = 7;
		public const uint32 NLSKBD_OEM_MATSUSHITA = 10;
		public const uint32 NLSKBD_OEM_NEC = 13;
		public const uint32 NLSKBD_OEM_TOSHIBA = 18;
		public const uint32 NLSKBD_OEM_DEC = 24;
		public const uint32 MICROSOFT_KBD_101_TYPE = 0;
		public const uint32 MICROSOFT_KBD_AX_TYPE = 1;
		public const uint32 MICROSOFT_KBD_106_TYPE = 2;
		public const uint32 MICROSOFT_KBD_002_TYPE = 3;
		public const uint32 MICROSOFT_KBD_001_TYPE = 4;
		public const uint32 MICROSOFT_KBD_FUNC = 12;
		public const uint32 AX_KBD_DESKTOP_TYPE = 1;
		public const uint32 FMR_KBD_JIS_TYPE = 0;
		public const uint32 FMR_KBD_OASYS_TYPE = 1;
		public const uint32 FMV_KBD_OASYS_TYPE = 2;
		public const uint32 NEC_KBD_NORMAL_TYPE = 1;
		public const uint32 NEC_KBD_N_MODE_TYPE = 2;
		public const uint32 NEC_KBD_H_MODE_TYPE = 3;
		public const uint32 NEC_KBD_LAPTOP_TYPE = 4;
		public const uint32 NEC_KBD_106_TYPE = 5;
		public const uint32 TOSHIBA_KBD_DESKTOP_TYPE = 13;
		public const uint32 TOSHIBA_KBD_LAPTOP_TYPE = 15;
		public const uint32 DEC_KBD_ANSI_LAYOUT_TYPE = 1;
		public const uint32 DEC_KBD_JIS_LAYOUT_TYPE = 2;
		public const uint32 MICROSOFT_KBD_101A_TYPE = 0;
		public const uint32 MICROSOFT_KBD_101B_TYPE = 4;
		public const uint32 MICROSOFT_KBD_101C_TYPE = 5;
		public const uint32 MICROSOFT_KBD_103_TYPE = 6;
		public const uint32 NLSKBD_INFO_SEND_IME_NOTIFICATION = 1;
		public const uint32 NLSKBD_INFO_ACCESSIBILITY_KEYMAP = 2;
		public const uint32 NLSKBD_INFO_EMURATE_101_KEYBOARD = 16;
		public const uint32 NLSKBD_INFO_EMURATE_106_KEYBOARD = 32;
		public const uint32 KBDNLS_TYPE_NULL = 0;
		public const uint32 KBDNLS_TYPE_NORMAL = 1;
		public const uint32 KBDNLS_TYPE_TOGGLE = 2;
		public const uint32 KBDNLS_INDEX_NORMAL = 1;
		public const uint32 KBDNLS_INDEX_ALT = 2;
		public const uint32 KBDNLS_NULL = 0;
		public const uint32 KBDNLS_NOEVENT = 1;
		public const uint32 KBDNLS_SEND_BASE_VK = 2;
		public const uint32 KBDNLS_SEND_PARAM_VK = 3;
		public const uint32 KBDNLS_KANALOCK = 4;
		public const uint32 KBDNLS_ALPHANUM = 5;
		public const uint32 KBDNLS_HIRAGANA = 6;
		public const uint32 KBDNLS_KATAKANA = 7;
		public const uint32 KBDNLS_SBCSDBCS = 8;
		public const uint32 KBDNLS_ROMAN = 9;
		public const uint32 KBDNLS_CODEINPUT = 10;
		public const uint32 KBDNLS_HELP_OR_END = 11;
		public const uint32 KBDNLS_HOME_OR_CLEAR = 12;
		public const uint32 KBDNLS_NUMPAD = 13;
		public const uint32 KBDNLS_KANAEVENT = 14;
		public const uint32 KBDNLS_CONV_OR_NONCONV = 15;
		public const uint32 KBD_TYPE = 4;
		public const uint32 VK__none_ = 255;
		public const uint32 VK_ABNT_C1 = 193;
		public const uint32 VK_ABNT_C2 = 194;
		public const uint32 SCANCODE_LSHIFT = 42;
		public const uint32 SCANCODE_RSHIFT = 54;
		public const uint32 SCANCODE_CTRL = 29;
		public const uint32 SCANCODE_ALT = 56;
		public const uint32 SCANCODE_NUMPAD_FIRST = 71;
		public const uint32 SCANCODE_NUMPAD_LAST = 82;
		public const uint32 SCANCODE_LWIN = 91;
		public const uint32 SCANCODE_RWIN = 92;
		public const uint32 SCANCODE_THAI_LAYOUT_TOGGLE = 41;
		public const uint32 VK_DBE_ALPHANUMERIC = 240;
		public const uint32 VK_DBE_KATAKANA = 241;
		public const uint32 VK_DBE_HIRAGANA = 242;
		public const uint32 VK_DBE_SBCSCHAR = 243;
		public const uint32 VK_DBE_DBCSCHAR = 244;
		public const uint32 VK_DBE_ROMAN = 245;
		public const uint32 VK_DBE_NOROMAN = 246;
		public const uint32 VK_DBE_ENTERWORDREGISTERMODE = 247;
		public const uint32 VK_DBE_ENTERIMECONFIGMODE = 248;
		public const uint32 VK_DBE_FLUSHSTRING = 249;
		public const uint32 VK_DBE_CODEINPUT = 250;
		public const uint32 VK_DBE_NOCODEINPUT = 251;
		public const uint32 VK_DBE_DETERMINESTRING = 252;
		public const uint32 VK_DBE_ENTERDLGCONVERSIONMODE = 253;
		
		// --- Enums ---
		
		public enum HOT_KEY_MODIFIERS : uint32
		{
			ALT = 1,
			CONTROL = 2,
			NOREPEAT = 16384,
			SHIFT = 4,
			WIN = 8,
		}
		public enum ACTIVATE_KEYBOARD_LAYOUT_FLAGS : uint32
		{
			REORDER = 8,
			RESET = 1073741824,
			SETFORPROCESS = 256,
			SHIFTLOCK = 65536,
			ACTIVATE = 1,
			NOTELLSHELL = 128,
			REPLACELANG = 16,
			SUBSTITUTE_OK = 2,
		}
		public enum GET_MOUSE_MOVE_POINTS_EX_RESOLUTION : uint32
		{
			DISPLAY_POINTS = 1,
			HIGH_RESOLUTION_POINTS = 2,
		}
		public enum KEYBD_EVENT_FLAGS : uint32
		{
			EXTENDEDKEY = 1,
			KEYUP = 2,
			SCANCODE = 8,
			UNICODE = 4,
		}
		public enum MOUSE_EVENT_FLAGS : uint32
		{
			ABSOLUTE = 32768,
			LEFTDOWN = 2,
			LEFTUP = 4,
			MIDDLEDOWN = 32,
			MIDDLEUP = 64,
			MOVE = 1,
			RIGHTDOWN = 8,
			RIGHTUP = 16,
			WHEEL = 2048,
			XDOWN = 128,
			XUP = 256,
			HWHEEL = 4096,
			MOVE_NOCOALESCE = 8192,
			VIRTUALDESK = 16384,
		}
		public enum INPUT_TYPE : uint32
		{
			MOUSE = 0,
			KEYBOARD = 1,
			HARDWARE = 2,
		}
		public enum TRACKMOUSEEVENT_FLAGS : uint32
		{
			CANCEL = 2147483648,
			HOVER = 1,
			LEAVE = 2,
			NONCLIENT = 16,
			QUERY = 1073741824,
		}
		[AllowDuplicates]
		public enum VIRTUAL_KEY : uint16
		{
			_0 = 48,
			_1 = 49,
			_2 = 50,
			_3 = 51,
			_4 = 52,
			_5 = 53,
			_6 = 54,
			_7 = 55,
			_8 = 56,
			_9 = 57,
			A = 65,
			B = 66,
			C = 67,
			D = 68,
			E = 69,
			F = 70,
			G = 71,
			H = 72,
			I = 73,
			J = 74,
			K = 75,
			L = 76,
			M = 77,
			N = 78,
			O = 79,
			P = 80,
			Q = 81,
			R = 82,
			S = 83,
			T = 84,
			U = 85,
			V = 86,
			W = 87,
			X = 88,
			Y = 89,
			Z = 90,
			LBUTTON = 1,
			RBUTTON = 2,
			CANCEL = 3,
			MBUTTON = 4,
			XBUTTON1 = 5,
			XBUTTON2 = 6,
			BACK = 8,
			TAB = 9,
			CLEAR = 12,
			RETURN = 13,
			SHIFT = 16,
			CONTROL = 17,
			MENU = 18,
			PAUSE = 19,
			CAPITAL = 20,
			KANA = 21,
			HANGEUL = 21,
			HANGUL = 21,
			IME_ON = 22,
			JUNJA = 23,
			FINAL = 24,
			HANJA = 25,
			KANJI = 25,
			IME_OFF = 26,
			ESCAPE = 27,
			CONVERT = 28,
			NONCONVERT = 29,
			ACCEPT = 30,
			MODECHANGE = 31,
			SPACE = 32,
			PRIOR = 33,
			NEXT = 34,
			END = 35,
			HOME = 36,
			LEFT = 37,
			UP = 38,
			RIGHT = 39,
			DOWN = 40,
			SELECT = 41,
			PRINT = 42,
			EXECUTE = 43,
			SNAPSHOT = 44,
			INSERT = 45,
			DELETE = 46,
			HELP = 47,
			LWIN = 91,
			RWIN = 92,
			APPS = 93,
			SLEEP = 95,
			NUMPAD0 = 96,
			NUMPAD1 = 97,
			NUMPAD2 = 98,
			NUMPAD3 = 99,
			NUMPAD4 = 100,
			NUMPAD5 = 101,
			NUMPAD6 = 102,
			NUMPAD7 = 103,
			NUMPAD8 = 104,
			NUMPAD9 = 105,
			MULTIPLY = 106,
			ADD = 107,
			SEPARATOR = 108,
			SUBTRACT = 109,
			DECIMAL = 110,
			DIVIDE = 111,
			F1 = 112,
			F2 = 113,
			F3 = 114,
			F4 = 115,
			F5 = 116,
			F6 = 117,
			F7 = 118,
			F8 = 119,
			F9 = 120,
			F10 = 121,
			F11 = 122,
			F12 = 123,
			F13 = 124,
			F14 = 125,
			F15 = 126,
			F16 = 127,
			F17 = 128,
			F18 = 129,
			F19 = 130,
			F20 = 131,
			F21 = 132,
			F22 = 133,
			F23 = 134,
			F24 = 135,
			NAVIGATION_VIEW = 136,
			NAVIGATION_MENU = 137,
			NAVIGATION_UP = 138,
			NAVIGATION_DOWN = 139,
			NAVIGATION_LEFT = 140,
			NAVIGATION_RIGHT = 141,
			NAVIGATION_ACCEPT = 142,
			NAVIGATION_CANCEL = 143,
			NUMLOCK = 144,
			SCROLL = 145,
			OEM_NEC_EQUAL = 146,
			OEM_FJ_JISHO = 146,
			OEM_FJ_MASSHOU = 147,
			OEM_FJ_TOUROKU = 148,
			OEM_FJ_LOYA = 149,
			OEM_FJ_ROYA = 150,
			LSHIFT = 160,
			RSHIFT = 161,
			LCONTROL = 162,
			RCONTROL = 163,
			LMENU = 164,
			RMENU = 165,
			BROWSER_BACK = 166,
			BROWSER_FORWARD = 167,
			BROWSER_REFRESH = 168,
			BROWSER_STOP = 169,
			BROWSER_SEARCH = 170,
			BROWSER_FAVORITES = 171,
			BROWSER_HOME = 172,
			VOLUME_MUTE = 173,
			VOLUME_DOWN = 174,
			VOLUME_UP = 175,
			MEDIA_NEXT_TRACK = 176,
			MEDIA_PREV_TRACK = 177,
			MEDIA_STOP = 178,
			MEDIA_PLAY_PAUSE = 179,
			LAUNCH_MAIL = 180,
			LAUNCH_MEDIA_SELECT = 181,
			LAUNCH_APP1 = 182,
			LAUNCH_APP2 = 183,
			OEM_1 = 186,
			OEM_PLUS = 187,
			OEM_COMMA = 188,
			OEM_MINUS = 189,
			OEM_PERIOD = 190,
			OEM_2 = 191,
			OEM_3 = 192,
			GAMEPAD_A = 195,
			GAMEPAD_B = 196,
			GAMEPAD_X = 197,
			GAMEPAD_Y = 198,
			GAMEPAD_RIGHT_SHOULDER = 199,
			GAMEPAD_LEFT_SHOULDER = 200,
			GAMEPAD_LEFT_TRIGGER = 201,
			GAMEPAD_RIGHT_TRIGGER = 202,
			GAMEPAD_DPAD_UP = 203,
			GAMEPAD_DPAD_DOWN = 204,
			GAMEPAD_DPAD_LEFT = 205,
			GAMEPAD_DPAD_RIGHT = 206,
			GAMEPAD_MENU = 207,
			GAMEPAD_VIEW = 208,
			GAMEPAD_LEFT_THUMBSTICK_BUTTON = 209,
			GAMEPAD_RIGHT_THUMBSTICK_BUTTON = 210,
			GAMEPAD_LEFT_THUMBSTICK_UP = 211,
			GAMEPAD_LEFT_THUMBSTICK_DOWN = 212,
			GAMEPAD_LEFT_THUMBSTICK_RIGHT = 213,
			GAMEPAD_LEFT_THUMBSTICK_LEFT = 214,
			GAMEPAD_RIGHT_THUMBSTICK_UP = 215,
			GAMEPAD_RIGHT_THUMBSTICK_DOWN = 216,
			GAMEPAD_RIGHT_THUMBSTICK_RIGHT = 217,
			GAMEPAD_RIGHT_THUMBSTICK_LEFT = 218,
			OEM_4 = 219,
			OEM_5 = 220,
			OEM_6 = 221,
			OEM_7 = 222,
			OEM_8 = 223,
			OEM_AX = 225,
			OEM_102 = 226,
			ICO_HELP = 227,
			ICO_00 = 228,
			PROCESSKEY = 229,
			ICO_CLEAR = 230,
			PACKET = 231,
			OEM_RESET = 233,
			OEM_JUMP = 234,
			OEM_PA1 = 235,
			OEM_PA2 = 236,
			OEM_PA3 = 237,
			OEM_WSCTRL = 238,
			OEM_CUSEL = 239,
			OEM_ATTN = 240,
			OEM_FINISH = 241,
			OEM_COPY = 242,
			OEM_AUTO = 243,
			OEM_ENLW = 244,
			OEM_BACKTAB = 245,
			ATTN = 246,
			CRSEL = 247,
			EXSEL = 248,
			EREOF = 249,
			PLAY = 250,
			ZOOM = 251,
			NONAME = 252,
			PA1 = 253,
			OEM_CLEAR = 254,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct VK_TO_BIT
		{
			public uint8 Vk;
			public uint8 ModBits;
		}
		[CRepr]
		public struct MODIFIERS
		{
			public VK_TO_BIT* pVkToBit;
			public uint16 wMaxModBits;
			public uint8[0] ModNumber;
		}
		[CRepr]
		public struct VSC_VK
		{
			public uint8 Vsc;
			public uint16 Vk;
		}
		[CRepr]
		public struct VK_VSC
		{
			public uint8 Vk;
			public uint8 Vsc;
		}
		[CRepr]
		public struct VK_TO_WCHARS1
		{
			public uint8 VirtualKey;
			public uint8 Attributes;
			public char16[0] wch;
		}
		[CRepr]
		public struct VK_TO_WCHARS2
		{
			public uint8 VirtualKey;
			public uint8 Attributes;
			public char16[2] wch;
		}
		[CRepr]
		public struct VK_TO_WCHARS3
		{
			public uint8 VirtualKey;
			public uint8 Attributes;
			public char16[3] wch;
		}
		[CRepr]
		public struct VK_TO_WCHARS4
		{
			public uint8 VirtualKey;
			public uint8 Attributes;
			public char16[4] wch;
		}
		[CRepr]
		public struct VK_TO_WCHARS5
		{
			public uint8 VirtualKey;
			public uint8 Attributes;
			public char16[5] wch;
		}
		[CRepr]
		public struct VK_TO_WCHARS6
		{
			public uint8 VirtualKey;
			public uint8 Attributes;
			public char16[6] wch;
		}
		[CRepr]
		public struct VK_TO_WCHARS7
		{
			public uint8 VirtualKey;
			public uint8 Attributes;
			public char16[7] wch;
		}
		[CRepr]
		public struct VK_TO_WCHARS8
		{
			public uint8 VirtualKey;
			public uint8 Attributes;
			public char16[8] wch;
		}
		[CRepr]
		public struct VK_TO_WCHARS9
		{
			public uint8 VirtualKey;
			public uint8 Attributes;
			public char16[9] wch;
		}
		[CRepr]
		public struct VK_TO_WCHARS10
		{
			public uint8 VirtualKey;
			public uint8 Attributes;
			public char16[10] wch;
		}
		[CRepr]
		public struct VK_TO_WCHAR_TABLE
		{
			public VK_TO_WCHARS1* pVkToWchars;
			public uint8 nModifications;
			public uint8 cbSize;
		}
		[CRepr]
		public struct DEADKEY
		{
			public uint32 dwBoth;
			public char16 wchComposed;
			public uint16 uFlags;
		}
		[CRepr]
		public struct LIGATURE1
		{
			public uint8 VirtualKey;
			public uint16 ModificationNumber;
			public char16[0] wch;
		}
		[CRepr]
		public struct LIGATURE2
		{
			public uint8 VirtualKey;
			public uint16 ModificationNumber;
			public char16[2] wch;
		}
		[CRepr]
		public struct LIGATURE3
		{
			public uint8 VirtualKey;
			public uint16 ModificationNumber;
			public char16[3] wch;
		}
		[CRepr]
		public struct LIGATURE4
		{
			public uint8 VirtualKey;
			public uint16 ModificationNumber;
			public char16[4] wch;
		}
		[CRepr]
		public struct LIGATURE5
		{
			public uint8 VirtualKey;
			public uint16 ModificationNumber;
			public char16[5] wch;
		}
		[CRepr]
		public struct VSC_LPWSTR
		{
			public uint8 vsc;
			public PWSTR pwsz;
		}
		[CRepr]
		public struct tagKbdLayer
		{
			public MODIFIERS* pCharModifiers;
			public VK_TO_WCHAR_TABLE* pVkToWcharTable;
			public DEADKEY* pDeadKey;
			public VSC_LPWSTR* pKeyNames;
			public VSC_LPWSTR* pKeyNamesExt;
			public uint16** pKeyNamesDead;
			public uint16* pusVSCtoVK;
			public uint8 bMaxVSCtoVK;
			public VSC_VK* pVSCtoVK_E0;
			public VSC_VK* pVSCtoVK_E1;
			public uint32 fLocaleFlags;
			public uint8 nLgMax;
			public uint8 cbLgEntry;
			public LIGATURE1* pLigature;
			public uint32 dwType;
			public uint32 dwSubType;
		}
		[CRepr]
		public struct _VK_FUNCTION_PARAM
		{
			public uint8 NLSFEProcIndex;
			public uint32 NLSFEProcParam;
		}
		[CRepr]
		public struct _VK_TO_FUNCTION_TABLE
		{
			public uint8 Vk;
			public uint8 NLSFEProcType;
			public uint8 NLSFEProcCurrent;
			public uint8 NLSFEProcSwitch;
			public _VK_FUNCTION_PARAM[8] NLSFEProc;
			public _VK_FUNCTION_PARAM[8] NLSFEProcAlt;
		}
		[CRepr]
		public struct tagKbdNlsLayer
		{
			public uint16 OEMIdentifier;
			public uint16 LayoutInformation;
			public uint32 NumOfVkToF;
			public _VK_TO_FUNCTION_TABLE* pVkToF;
			public int32 NumOfMouseVKey;
			public uint16* pusMouseVKey;
		}
		[CRepr]
		public struct KBDTABLE_DESC
		{
			public char16[32] wszDllName;
			public uint32 dwType;
			public uint32 dwSubType;
		}
		[CRepr]
		public struct KBDTABLE_MULTI
		{
			public uint32 nTables;
			public KBDTABLE_DESC[8] aKbdTables;
		}
		[CRepr]
		public struct KBD_TYPE_INFO
		{
			public uint32 dwVersion;
			public uint32 dwType;
			public uint32 dwSubType;
		}
		[CRepr]
		public struct MOUSEMOVEPOINT
		{
			public int32 x;
			public int32 y;
			public uint32 time;
			public uint dwExtraInfo;
		}
		[CRepr]
		public struct TRACKMOUSEEVENT
		{
			public uint32 cbSize;
			public TRACKMOUSEEVENT_FLAGS dwFlags;
			public HWND hwndTrack;
			public uint32 dwHoverTime;
		}
		[CRepr]
		public struct MOUSEINPUT
		{
			public int32 dx;
			public int32 dy;
			public uint32 mouseData;
			public MOUSE_EVENT_FLAGS dwFlags;
			public uint32 time;
			public uint dwExtraInfo;
		}
		[CRepr]
		public struct KEYBDINPUT
		{
			public VIRTUAL_KEY wVk;
			public uint16 wScan;
			public KEYBD_EVENT_FLAGS dwFlags;
			public uint32 time;
			public uint dwExtraInfo;
		}
		[CRepr]
		public struct HARDWAREINPUT
		{
			public uint32 uMsg;
			public uint16 wParamL;
			public uint16 wParamH;
		}
		[CRepr]
		public struct INPUT
		{
			public INPUT_TYPE type;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public MOUSEINPUT mi;
				public KEYBDINPUT ki;
				public HARDWAREINPUT hi;
			}
		}
		[CRepr]
		public struct LASTINPUTINFO
		{
			public uint32 cbSize;
			public uint32 dwTime;
		}
		
		// --- Functions ---
		
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL _TrackMouseEvent(out TRACKMOUSEEVENT lpEventTrack);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HKL LoadKeyboardLayoutA(PSTR pwszKLID, ACTIVATE_KEYBOARD_LAYOUT_FLAGS Flags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HKL LoadKeyboardLayoutW(PWSTR pwszKLID, ACTIVATE_KEYBOARD_LAYOUT_FLAGS Flags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HKL ActivateKeyboardLayout(HKL hkl, ACTIVATE_KEYBOARD_LAYOUT_FLAGS Flags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ToUnicodeEx(uint32 wVirtKey, uint32 wScanCode, uint8* lpKeyState, char16* pwszBuff, int32 cchBuff, uint32 wFlags, HKL dwhkl);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnloadKeyboardLayout(HKL hkl);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetKeyboardLayoutNameA(uint8* pwszKLID);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetKeyboardLayoutNameW(char16* pwszKLID);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetKeyboardLayoutList(int32 nBuff, HKL* lpList);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HKL GetKeyboardLayout(uint32 idThread);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetMouseMovePointsEx(uint32 cbSize, ref MOUSEMOVEPOINT lppt, MOUSEMOVEPOINT* lpptBuf, int32 nBufPoints, GET_MOUSE_MOVE_POINTS_EX_RESOLUTION resolution);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TrackMouseEvent(out TRACKMOUSEEVENT lpEventTrack);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RegisterHotKey(HWND hWnd, int32 id, HOT_KEY_MODIFIERS fsModifiers, uint32 vk);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnregisterHotKey(HWND hWnd, int32 id);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SwapMouseButton(BOOL fSwap);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDoubleClickTime();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDoubleClickTime(uint32 param0);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND SetFocus(HWND hWnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND GetActiveWindow();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND GetFocus();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetKBCodePage();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int16 GetKeyState(int32 nVirtKey);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int16 GetAsyncKeyState(int32 vKey);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetKeyboardState(uint8* lpKeyState);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetKeyboardState(uint8* lpKeyState);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetKeyNameTextA(int32 lParam, uint8* lpString, int32 cchSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetKeyNameTextW(int32 lParam, char16* lpString, int32 cchSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetKeyboardType(int32 nTypeFlag);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ToAscii(uint32 uVirtKey, uint32 uScanCode, uint8* lpKeyState, out uint16 lpChar, uint32 uFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ToAsciiEx(uint32 uVirtKey, uint32 uScanCode, uint8* lpKeyState, out uint16 lpChar, uint32 uFlags, HKL dwhkl);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ToUnicode(uint32 wVirtKey, uint32 wScanCode, uint8* lpKeyState, char16* pwszBuff, int32 cchBuff, uint32 wFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OemKeyScan(uint16 wOemChar);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int16 VkKeyScanA(CHAR ch);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int16 VkKeyScanW(char16 ch);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int16 VkKeyScanExA(CHAR ch, HKL dwhkl);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int16 VkKeyScanExW(char16 ch, HKL dwhkl);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void keybd_event(uint8 bVk, uint8 bScan, KEYBD_EVENT_FLAGS dwFlags, uint dwExtraInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void mouse_event(MOUSE_EVENT_FLAGS dwFlags, int32 dx, int32 dy, uint32 dwData, uint dwExtraInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SendInput(uint32 cInputs, INPUT* pInputs, int32 cbSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetLastInputInfo(out LASTINPUTINFO plii);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MapVirtualKeyA(uint32 uCode, uint32 uMapType);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MapVirtualKeyW(uint32 uCode, uint32 uMapType);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MapVirtualKeyExA(uint32 uCode, uint32 uMapType, HKL dwhkl);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MapVirtualKeyExW(uint32 uCode, uint32 uMapType, HKL dwhkl);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND GetCapture();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND SetCapture(HWND hWnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReleaseCapture();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnableWindow(HWND hWnd, BOOL bEnable);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsWindowEnabled(HWND hWnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DragDetect(HWND hwnd, POINT pt);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND SetActiveWindow(HWND hWnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BlockInput(BOOL fBlockIt);
	}
}
