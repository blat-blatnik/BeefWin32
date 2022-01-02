using System;

// namespace UI.Input.XboxController
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 XINPUT_DEVTYPE_GAMEPAD = 1;
		public const uint32 XINPUT_DEVSUBTYPE_GAMEPAD = 1;
		public const uint32 XINPUT_DEVSUBTYPE_UNKNOWN = 0;
		public const uint32 XINPUT_DEVSUBTYPE_WHEEL = 2;
		public const uint32 XINPUT_DEVSUBTYPE_ARCADE_STICK = 3;
		public const uint32 XINPUT_DEVSUBTYPE_FLIGHT_STICK = 4;
		public const uint32 XINPUT_DEVSUBTYPE_DANCE_PAD = 5;
		public const uint32 XINPUT_DEVSUBTYPE_GUITAR = 6;
		public const uint32 XINPUT_DEVSUBTYPE_GUITAR_ALTERNATE = 7;
		public const uint32 XINPUT_DEVSUBTYPE_DRUM_KIT = 8;
		public const uint32 XINPUT_DEVSUBTYPE_GUITAR_BASS = 11;
		public const uint32 XINPUT_DEVSUBTYPE_ARCADE_PAD = 19;
		public const uint32 XINPUT_CAPS_VOICE_SUPPORTED = 4;
		public const uint32 XINPUT_CAPS_FFB_SUPPORTED = 1;
		public const uint32 XINPUT_CAPS_WIRELESS = 2;
		public const uint32 XINPUT_CAPS_PMD_SUPPORTED = 8;
		public const uint32 XINPUT_CAPS_NO_NAVIGATION = 16;
		public const uint32 XINPUT_GAMEPAD_DPAD_UP = 1;
		public const uint32 XINPUT_GAMEPAD_DPAD_DOWN = 2;
		public const uint32 XINPUT_GAMEPAD_DPAD_LEFT = 4;
		public const uint32 XINPUT_GAMEPAD_DPAD_RIGHT = 8;
		public const uint32 XINPUT_GAMEPAD_START = 16;
		public const uint32 XINPUT_GAMEPAD_BACK = 32;
		public const uint32 XINPUT_GAMEPAD_LEFT_THUMB = 64;
		public const uint32 XINPUT_GAMEPAD_RIGHT_THUMB = 128;
		public const uint32 XINPUT_GAMEPAD_LEFT_SHOULDER = 256;
		public const uint32 XINPUT_GAMEPAD_RIGHT_SHOULDER = 512;
		public const uint32 XINPUT_GAMEPAD_A = 4096;
		public const uint32 XINPUT_GAMEPAD_B = 8192;
		public const uint32 XINPUT_GAMEPAD_X = 16384;
		public const uint32 XINPUT_GAMEPAD_Y = 32768;
		public const uint32 XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE = 7849;
		public const uint32 XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE = 8689;
		public const uint32 XINPUT_GAMEPAD_TRIGGER_THRESHOLD = 30;
		public const uint32 XINPUT_FLAG_GAMEPAD = 1;
		public const uint32 BATTERY_DEVTYPE_GAMEPAD = 0;
		public const uint32 BATTERY_DEVTYPE_HEADSET = 1;
		public const uint32 BATTERY_TYPE_DISCONNECTED = 0;
		public const uint32 BATTERY_TYPE_WIRED = 1;
		public const uint32 BATTERY_TYPE_ALKALINE = 2;
		public const uint32 BATTERY_TYPE_NIMH = 3;
		public const uint32 BATTERY_TYPE_UNKNOWN = 255;
		public const uint32 BATTERY_LEVEL_EMPTY = 0;
		public const uint32 BATTERY_LEVEL_LOW = 1;
		public const uint32 BATTERY_LEVEL_MEDIUM = 2;
		public const uint32 BATTERY_LEVEL_FULL = 3;
		public const uint32 XUSER_MAX_COUNT = 4;
		public const uint32 XUSER_INDEX_ANY = 255;
		public const uint32 XINPUT_KEYSTROKE_KEYDOWN = 1;
		public const uint32 XINPUT_KEYSTROKE_KEYUP = 2;
		public const uint32 XINPUT_KEYSTROKE_REPEAT = 4;
		
		// --- Enums ---
		
		public enum XINPUT_VIRTUAL_KEY : uint16
		{
			A = 22528,
			B = 22529,
			X = 22530,
			Y = 22531,
			RSHOULDER = 22532,
			LSHOULDER = 22533,
			LTRIGGER = 22534,
			RTRIGGER = 22535,
			DPAD_UP = 22544,
			DPAD_DOWN = 22545,
			DPAD_LEFT = 22546,
			DPAD_RIGHT = 22547,
			START = 22548,
			BACK = 22549,
			LTHUMB_PRESS = 22550,
			RTHUMB_PRESS = 22551,
			LTHUMB_UP = 22560,
			LTHUMB_DOWN = 22561,
			LTHUMB_RIGHT = 22562,
			LTHUMB_LEFT = 22563,
			LTHUMB_UPLEFT = 22564,
			LTHUMB_UPRIGHT = 22565,
			LTHUMB_DOWNRIGHT = 22566,
			LTHUMB_DOWNLEFT = 22567,
			RTHUMB_UP = 22576,
			RTHUMB_DOWN = 22577,
			RTHUMB_RIGHT = 22578,
			RTHUMB_LEFT = 22579,
			RTHUMB_UPLEFT = 22580,
			RTHUMB_UPRIGHT = 22581,
			RTHUMB_DOWNRIGHT = 22582,
			RTHUMB_DOWNLEFT = 22583,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct XINPUT_GAMEPAD
		{
			public uint16 wButtons;
			public uint8 bLeftTrigger;
			public uint8 bRightTrigger;
			public int16 sThumbLX;
			public int16 sThumbLY;
			public int16 sThumbRX;
			public int16 sThumbRY;
		}
		[CRepr]
		public struct XINPUT_STATE
		{
			public uint32 dwPacketNumber;
			public XINPUT_GAMEPAD Gamepad;
		}
		[CRepr]
		public struct XINPUT_VIBRATION
		{
			public uint16 wLeftMotorSpeed;
			public uint16 wRightMotorSpeed;
		}
		[CRepr]
		public struct XINPUT_CAPABILITIES
		{
			public uint8 Type;
			public uint8 SubType;
			public uint16 Flags;
			public XINPUT_GAMEPAD Gamepad;
			public XINPUT_VIBRATION Vibration;
		}
		[CRepr]
		public struct XINPUT_BATTERY_INFORMATION
		{
			public uint8 BatteryType;
			public uint8 BatteryLevel;
		}
		[CRepr]
		public struct XINPUT_KEYSTROKE
		{
			public XINPUT_VIRTUAL_KEY VirtualKey;
			public char16 Unicode;
			public uint16 Flags;
			public uint8 UserIndex;
			public uint8 HidCode;
		}
		
		// --- Functions ---
		
		[Import("xinputuap.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 XInputGetState(uint32 dwUserIndex, out XINPUT_STATE pState);
		[Import("xinputuap.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 XInputSetState(uint32 dwUserIndex, ref XINPUT_VIBRATION pVibration);
		[Import("xinputuap.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 XInputGetCapabilities(uint32 dwUserIndex, uint32 dwFlags, out XINPUT_CAPABILITIES pCapabilities);
		[Import("xinputuap.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void XInputEnable(BOOL enable);
		[Import("xinputuap.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 XInputGetAudioDeviceIds(uint32 dwUserIndex, char16* pRenderDeviceId, uint32* pRenderCount, char16* pCaptureDeviceId, uint32* pCaptureCount);
		[Import("xinputuap.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 XInputGetBatteryInformation(uint32 dwUserIndex, uint8 devType, out XINPUT_BATTERY_INFORMATION pBatteryInformation);
		[Import("xinputuap.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 XInputGetKeystroke(uint32 dwUserIndex, uint32 dwReserved, out XINPUT_KEYSTROKE pKeystroke);
	}
}
