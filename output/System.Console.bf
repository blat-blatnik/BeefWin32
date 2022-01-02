using System;

// namespace System.Console
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 CONSOLE_TEXTMODE_BUFFER = 1;
		public const uint32 ATTACH_PARENT_PROCESS = 4294967295;
		public const uint32 CTRL_C_EVENT = 0;
		public const uint32 CTRL_BREAK_EVENT = 1;
		public const uint32 CTRL_CLOSE_EVENT = 2;
		public const uint32 CTRL_LOGOFF_EVENT = 5;
		public const uint32 CTRL_SHUTDOWN_EVENT = 6;
		public const uint32 PSEUDOCONSOLE_INHERIT_CURSOR = 1;
		public const uint32 FOREGROUND_BLUE = 1;
		public const uint32 FOREGROUND_GREEN = 2;
		public const uint32 FOREGROUND_RED = 4;
		public const uint32 FOREGROUND_INTENSITY = 8;
		public const uint32 BACKGROUND_BLUE = 16;
		public const uint32 BACKGROUND_GREEN = 32;
		public const uint32 BACKGROUND_RED = 64;
		public const uint32 BACKGROUND_INTENSITY = 128;
		public const uint32 COMMON_LVB_LEADING_BYTE = 256;
		public const uint32 COMMON_LVB_TRAILING_BYTE = 512;
		public const uint32 COMMON_LVB_GRID_HORIZONTAL = 1024;
		public const uint32 COMMON_LVB_GRID_LVERTICAL = 2048;
		public const uint32 COMMON_LVB_GRID_RVERTICAL = 4096;
		public const uint32 COMMON_LVB_REVERSE_VIDEO = 16384;
		public const uint32 COMMON_LVB_UNDERSCORE = 32768;
		public const uint32 COMMON_LVB_SBCSDBCS = 768;
		public const uint32 CONSOLE_NO_SELECTION = 0;
		public const uint32 CONSOLE_SELECTION_IN_PROGRESS = 1;
		public const uint32 CONSOLE_SELECTION_NOT_EMPTY = 2;
		public const uint32 CONSOLE_MOUSE_SELECTION = 4;
		public const uint32 CONSOLE_MOUSE_DOWN = 8;
		public const uint32 HISTORY_NO_DUP_FLAG = 1;
		public const uint32 CONSOLE_FULLSCREEN = 1;
		public const uint32 CONSOLE_FULLSCREEN_HARDWARE = 2;
		public const uint32 CONSOLE_FULLSCREEN_MODE = 1;
		public const uint32 CONSOLE_WINDOWED_MODE = 2;
		public const uint32 RIGHT_ALT_PRESSED = 1;
		public const uint32 LEFT_ALT_PRESSED = 2;
		public const uint32 RIGHT_CTRL_PRESSED = 4;
		public const uint32 LEFT_CTRL_PRESSED = 8;
		public const uint32 SHIFT_PRESSED = 16;
		public const uint32 NUMLOCK_ON = 32;
		public const uint32 SCROLLLOCK_ON = 64;
		public const uint32 CAPSLOCK_ON = 128;
		public const uint32 ENHANCED_KEY = 256;
		public const uint32 NLS_DBCSCHAR = 65536;
		public const uint32 NLS_ALPHANUMERIC = 0;
		public const uint32 NLS_KATAKANA = 131072;
		public const uint32 NLS_HIRAGANA = 262144;
		public const uint32 NLS_ROMAN = 4194304;
		public const uint32 NLS_IME_CONVERSION = 8388608;
		public const uint32 ALTNUMPAD_BIT = 67108864;
		public const uint32 NLS_IME_DISABLE = 536870912;
		public const uint32 FROM_LEFT_1ST_BUTTON_PRESSED = 1;
		public const uint32 RIGHTMOST_BUTTON_PRESSED = 2;
		public const uint32 FROM_LEFT_2ND_BUTTON_PRESSED = 4;
		public const uint32 FROM_LEFT_3RD_BUTTON_PRESSED = 8;
		public const uint32 FROM_LEFT_4TH_BUTTON_PRESSED = 16;
		public const uint32 MOUSE_MOVED = 1;
		public const uint32 DOUBLE_CLICK = 2;
		public const uint32 MOUSE_WHEELED = 4;
		public const uint32 MOUSE_HWHEELED = 8;
		public const uint32 KEY_EVENT = 1;
		public const uint32 MOUSE_EVENT = 2;
		public const uint32 WINDOW_BUFFER_SIZE_EVENT = 4;
		public const uint32 MENU_EVENT = 8;
		public const uint32 FOCUS_EVENT = 16;
		
		// --- Typedefs ---
		
		public typealias HPCON = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum CONSOLE_MODE : uint32
		{
			ENABLE_PROCESSED_INPUT = 1,
			ENABLE_LINE_INPUT = 2,
			ENABLE_ECHO_INPUT = 4,
			ENABLE_WINDOW_INPUT = 8,
			ENABLE_MOUSE_INPUT = 16,
			ENABLE_INSERT_MODE = 32,
			ENABLE_QUICK_EDIT_MODE = 64,
			ENABLE_EXTENDED_FLAGS = 128,
			ENABLE_AUTO_POSITION = 256,
			ENABLE_VIRTUAL_TERMINAL_INPUT = 512,
			ENABLE_PROCESSED_OUTPUT = 1,
			ENABLE_WRAP_AT_EOL_OUTPUT = 2,
			ENABLE_VIRTUAL_TERMINAL_PROCESSING = 4,
			DISABLE_NEWLINE_AUTO_RETURN = 8,
			ENABLE_LVB_GRID_WORLDWIDE = 16,
		}
		public enum STD_HANDLE : uint32
		{
			INPUT_HANDLE = 4294967286,
			OUTPUT_HANDLE = 4294967285,
			ERROR_HANDLE = 4294967284,
		}
		
		// --- Function Pointers ---
		
		public function BOOL PHANDLER_ROUTINE(uint32 CtrlType);
		
		// --- Structs ---
		
		[CRepr]
		public struct COORD
		{
			public int16 X;
			public int16 Y;
		}
		[CRepr]
		public struct SMALL_RECT
		{
			public int16 Left;
			public int16 Top;
			public int16 Right;
			public int16 Bottom;
		}
		[CRepr]
		public struct KEY_EVENT_RECORD
		{
			public BOOL bKeyDown;
			public uint16 wRepeatCount;
			public uint16 wVirtualKeyCode;
			public uint16 wVirtualScanCode;
			public _uChar_e__Union uChar;
			public uint32 dwControlKeyState;
			
			[CRepr, Union]
			public struct _uChar_e__Union
			{
				public char16 UnicodeChar;
				public CHAR AsciiChar;
			}
		}
		[CRepr]
		public struct MOUSE_EVENT_RECORD
		{
			public COORD dwMousePosition;
			public uint32 dwButtonState;
			public uint32 dwControlKeyState;
			public uint32 dwEventFlags;
		}
		[CRepr]
		public struct WINDOW_BUFFER_SIZE_RECORD
		{
			public COORD dwSize;
		}
		[CRepr]
		public struct MENU_EVENT_RECORD
		{
			public uint32 dwCommandId;
		}
		[CRepr]
		public struct FOCUS_EVENT_RECORD
		{
			public BOOL bSetFocus;
		}
		[CRepr]
		public struct INPUT_RECORD
		{
			public uint16 EventType;
			public _Event_e__Union Event;
			
			[CRepr, Union]
			public struct _Event_e__Union
			{
				public KEY_EVENT_RECORD KeyEvent;
				public MOUSE_EVENT_RECORD MouseEvent;
				public WINDOW_BUFFER_SIZE_RECORD WindowBufferSizeEvent;
				public MENU_EVENT_RECORD MenuEvent;
				public FOCUS_EVENT_RECORD FocusEvent;
			}
		}
		[CRepr]
		public struct CHAR_INFO
		{
			public _Char_e__Union Char;
			public uint16 Attributes;
			
			[CRepr, Union]
			public struct _Char_e__Union
			{
				public char16 UnicodeChar;
				public CHAR AsciiChar;
			}
		}
		[CRepr]
		public struct CONSOLE_FONT_INFO
		{
			public uint32 nFont;
			public COORD dwFontSize;
		}
		[CRepr]
		public struct CONSOLE_READCONSOLE_CONTROL
		{
			public uint32 nLength;
			public uint32 nInitialChars;
			public uint32 dwCtrlWakeupMask;
			public uint32 dwControlKeyState;
		}
		[CRepr]
		public struct CONSOLE_CURSOR_INFO
		{
			public uint32 dwSize;
			public BOOL bVisible;
		}
		[CRepr]
		public struct CONSOLE_SCREEN_BUFFER_INFO
		{
			public COORD dwSize;
			public COORD dwCursorPosition;
			public uint16 wAttributes;
			public SMALL_RECT srWindow;
			public COORD dwMaximumWindowSize;
		}
		[CRepr]
		public struct CONSOLE_SCREEN_BUFFER_INFOEX
		{
			public uint32 cbSize;
			public COORD dwSize;
			public COORD dwCursorPosition;
			public uint16 wAttributes;
			public SMALL_RECT srWindow;
			public COORD dwMaximumWindowSize;
			public uint16 wPopupAttributes;
			public BOOL bFullscreenSupported;
			public uint32[16] ColorTable;
		}
		[CRepr]
		public struct CONSOLE_FONT_INFOEX
		{
			public uint32 cbSize;
			public uint32 nFont;
			public COORD dwFontSize;
			public uint32 FontFamily;
			public uint32 FontWeight;
			public char16[32] FaceName;
		}
		[CRepr]
		public struct CONSOLE_SELECTION_INFO
		{
			public uint32 dwFlags;
			public COORD dwSelectionAnchor;
			public SMALL_RECT srSelection;
		}
		[CRepr]
		public struct CONSOLE_HISTORY_INFO
		{
			public uint32 cbSize;
			public uint32 HistoryBufferSize;
			public uint32 NumberOfHistoryBuffers;
			public uint32 dwFlags;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AllocConsole();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FreeConsole();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AttachConsole(uint32 dwProcessId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleCP();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleOutputCP();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetConsoleMode(HANDLE hConsoleHandle, out CONSOLE_MODE lpMode);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleMode(HANDLE hConsoleHandle, CONSOLE_MODE dwMode);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetNumberOfConsoleInputEvents(HANDLE hConsoleInput, out uint32 lpNumberOfEvents);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadConsoleInputA(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, uint32 nLength, out uint32 lpNumberOfEventsRead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadConsoleInputW(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, uint32 nLength, out uint32 lpNumberOfEventsRead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PeekConsoleInputA(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, uint32 nLength, out uint32 lpNumberOfEventsRead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PeekConsoleInputW(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, uint32 nLength, out uint32 lpNumberOfEventsRead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadConsoleA(HANDLE hConsoleInput, void* lpBuffer, uint32 nNumberOfCharsToRead, out uint32 lpNumberOfCharsRead, CONSOLE_READCONSOLE_CONTROL* pInputControl);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadConsoleW(HANDLE hConsoleInput, void* lpBuffer, uint32 nNumberOfCharsToRead, out uint32 lpNumberOfCharsRead, CONSOLE_READCONSOLE_CONTROL* pInputControl);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteConsoleA(HANDLE hConsoleOutput, void* lpBuffer, uint32 nNumberOfCharsToWrite, uint32* lpNumberOfCharsWritten, void* lpReserved);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteConsoleW(HANDLE hConsoleOutput, void* lpBuffer, uint32 nNumberOfCharsToWrite, uint32* lpNumberOfCharsWritten, void* lpReserved);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleCtrlHandler(PHANDLER_ROUTINE HandlerRoutine, BOOL Add);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreatePseudoConsole(COORD size, HANDLE hInput, HANDLE hOutput, uint32 dwFlags, out HPCON phPC);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ResizePseudoConsole(HPCON hPC, COORD size);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ClosePseudoConsole(HPCON hPC);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FillConsoleOutputCharacterA(HANDLE hConsoleOutput, CHAR cCharacter, uint32 nLength, COORD dwWriteCoord, out uint32 lpNumberOfCharsWritten);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FillConsoleOutputCharacterW(HANDLE hConsoleOutput, char16 cCharacter, uint32 nLength, COORD dwWriteCoord, out uint32 lpNumberOfCharsWritten);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FillConsoleOutputAttribute(HANDLE hConsoleOutput, uint16 wAttribute, uint32 nLength, COORD dwWriteCoord, out uint32 lpNumberOfAttrsWritten);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GenerateConsoleCtrlEvent(uint32 dwCtrlEvent, uint32 dwProcessGroupId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateConsoleScreenBuffer(uint32 dwDesiredAccess, uint32 dwShareMode, SECURITY_ATTRIBUTES* lpSecurityAttributes, uint32 dwFlags, void* lpScreenBufferData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleActiveScreenBuffer(HANDLE hConsoleOutput);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FlushConsoleInputBuffer(HANDLE hConsoleInput);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleCP(uint32 wCodePageID);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleOutputCP(uint32 wCodePageID);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetConsoleCursorInfo(HANDLE hConsoleOutput, out CONSOLE_CURSOR_INFO lpConsoleCursorInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleCursorInfo(HANDLE hConsoleOutput, in CONSOLE_CURSOR_INFO lpConsoleCursorInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetConsoleScreenBufferInfo(HANDLE hConsoleOutput, out CONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetConsoleScreenBufferInfoEx(HANDLE hConsoleOutput, out CONSOLE_SCREEN_BUFFER_INFOEX lpConsoleScreenBufferInfoEx);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleScreenBufferInfoEx(HANDLE hConsoleOutput, ref CONSOLE_SCREEN_BUFFER_INFOEX lpConsoleScreenBufferInfoEx);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleScreenBufferSize(HANDLE hConsoleOutput, COORD dwSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleCursorPosition(HANDLE hConsoleOutput, COORD dwCursorPosition);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern COORD GetLargestConsoleWindowSize(HANDLE hConsoleOutput);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleTextAttribute(HANDLE hConsoleOutput, uint16 wAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleWindowInfo(HANDLE hConsoleOutput, BOOL bAbsolute, in SMALL_RECT lpConsoleWindow);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteConsoleOutputCharacterA(HANDLE hConsoleOutput, uint8* lpCharacter, uint32 nLength, COORD dwWriteCoord, out uint32 lpNumberOfCharsWritten);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteConsoleOutputCharacterW(HANDLE hConsoleOutput, char16* lpCharacter, uint32 nLength, COORD dwWriteCoord, out uint32 lpNumberOfCharsWritten);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteConsoleOutputAttribute(HANDLE hConsoleOutput, uint16* lpAttribute, uint32 nLength, COORD dwWriteCoord, out uint32 lpNumberOfAttrsWritten);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadConsoleOutputCharacterA(HANDLE hConsoleOutput, uint8* lpCharacter, uint32 nLength, COORD dwReadCoord, out uint32 lpNumberOfCharsRead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadConsoleOutputCharacterW(HANDLE hConsoleOutput, char16* lpCharacter, uint32 nLength, COORD dwReadCoord, out uint32 lpNumberOfCharsRead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadConsoleOutputAttribute(HANDLE hConsoleOutput, uint16* lpAttribute, uint32 nLength, COORD dwReadCoord, out uint32 lpNumberOfAttrsRead);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteConsoleInputA(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, uint32 nLength, out uint32 lpNumberOfEventsWritten);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteConsoleInputW(HANDLE hConsoleInput, INPUT_RECORD* lpBuffer, uint32 nLength, out uint32 lpNumberOfEventsWritten);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ScrollConsoleScreenBufferA(HANDLE hConsoleOutput, in SMALL_RECT lpScrollRectangle, SMALL_RECT* lpClipRectangle, COORD dwDestinationOrigin, in CHAR_INFO lpFill);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ScrollConsoleScreenBufferW(HANDLE hConsoleOutput, in SMALL_RECT lpScrollRectangle, SMALL_RECT* lpClipRectangle, COORD dwDestinationOrigin, in CHAR_INFO lpFill);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteConsoleOutputA(HANDLE hConsoleOutput, in CHAR_INFO lpBuffer, COORD dwBufferSize, COORD dwBufferCoord, out SMALL_RECT lpWriteRegion);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteConsoleOutputW(HANDLE hConsoleOutput, in CHAR_INFO lpBuffer, COORD dwBufferSize, COORD dwBufferCoord, out SMALL_RECT lpWriteRegion);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadConsoleOutputA(HANDLE hConsoleOutput, out CHAR_INFO lpBuffer, COORD dwBufferSize, COORD dwBufferCoord, out SMALL_RECT lpReadRegion);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadConsoleOutputW(HANDLE hConsoleOutput, out CHAR_INFO lpBuffer, COORD dwBufferSize, COORD dwBufferCoord, out SMALL_RECT lpReadRegion);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleTitleA(uint8* lpConsoleTitle, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleTitleW(char16* lpConsoleTitle, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleOriginalTitleA(uint8* lpConsoleTitle, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleOriginalTitleW(char16* lpConsoleTitle, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleTitleA(PSTR lpConsoleTitle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleTitleW(PWSTR lpConsoleTitle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetNumberOfConsoleMouseButtons(out uint32 lpNumberOfMouseButtons);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern COORD GetConsoleFontSize(HANDLE hConsoleOutput, uint32 nFont);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCurrentConsoleFont(HANDLE hConsoleOutput, BOOL bMaximumWindow, out CONSOLE_FONT_INFO lpConsoleCurrentFont);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCurrentConsoleFontEx(HANDLE hConsoleOutput, BOOL bMaximumWindow, out CONSOLE_FONT_INFOEX lpConsoleCurrentFontEx);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetCurrentConsoleFontEx(HANDLE hConsoleOutput, BOOL bMaximumWindow, ref CONSOLE_FONT_INFOEX lpConsoleCurrentFontEx);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetConsoleSelectionInfo(out CONSOLE_SELECTION_INFO lpConsoleSelectionInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetConsoleHistoryInfo(out CONSOLE_HISTORY_INFO lpConsoleHistoryInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleHistoryInfo(ref CONSOLE_HISTORY_INFO lpConsoleHistoryInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetConsoleDisplayMode(out uint32 lpModeFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleDisplayMode(HANDLE hConsoleOutput, uint32 dwFlags, COORD* lpNewScreenBufferDimensions);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND GetConsoleWindow();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddConsoleAliasA(PSTR Source, PSTR Target, PSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddConsoleAliasW(PWSTR Source, PWSTR Target, PWSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleAliasA(PSTR Source, uint8* TargetBuffer, uint32 TargetBufferLength, PSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleAliasW(PWSTR Source, char16* TargetBuffer, uint32 TargetBufferLength, PWSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleAliasesLengthA(PSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleAliasesLengthW(PWSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleAliasExesLengthA();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleAliasExesLengthW();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleAliasesA(uint8* AliasBuffer, uint32 AliasBufferLength, PSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleAliasesW(char16* AliasBuffer, uint32 AliasBufferLength, PWSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleAliasExesA(uint8* ExeNameBuffer, uint32 ExeNameBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleAliasExesW(char16* ExeNameBuffer, uint32 ExeNameBufferLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ExpungeConsoleCommandHistoryA(PSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ExpungeConsoleCommandHistoryW(PWSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleNumberOfCommandsA(uint32 Number, PSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetConsoleNumberOfCommandsW(uint32 Number, PWSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleCommandHistoryLengthA(PSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleCommandHistoryLengthW(PWSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleCommandHistoryA(PSTR Commands, uint32 CommandBufferLength, PSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleCommandHistoryW(PWSTR Commands, uint32 CommandBufferLength, PWSTR ExeName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetConsoleProcessList(uint32* lpdwProcessList, uint32 dwProcessCount);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE GetStdHandle(STD_HANDLE nStdHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetStdHandle(STD_HANDLE nStdHandle, HANDLE hHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetStdHandleEx(STD_HANDLE nStdHandle, HANDLE hHandle, HANDLE* phPrevValue);
	}
}
