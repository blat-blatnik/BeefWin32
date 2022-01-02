using System;

// namespace UI.Input
namespace Win32
{
	extension Win32
	{
		// --- Typedefs ---
		
		public typealias HRAWINPUT = int;
		
		// --- Enums ---
		
		public enum RAW_INPUT_DATA_COMMAND_FLAGS : uint32
		{
			HEADER = 268435461,
			INPUT = 268435459,
		}
		public enum RAW_INPUT_DEVICE_INFO_COMMAND : uint32
		{
			PREPARSEDDATA = 536870917,
			DEVICENAME = 536870919,
			DEVICEINFO = 536870923,
		}
		public enum RID_DEVICE_INFO_TYPE : uint32
		{
			TYPEMOUSE = 0,
			TYPEKEYBOARD = 1,
			TYPEHID = 2,
		}
		[AllowDuplicates]
		public enum RAWINPUTDEVICE_FLAGS : uint32
		{
			REMOVE = 1,
			EXCLUDE = 16,
			PAGEONLY = 32,
			NOLEGACY = 48,
			INPUTSINK = 256,
			CAPTUREMOUSE = 512,
			NOHOTKEYS = 512,
			APPKEYS = 1024,
			EXINPUTSINK = 4096,
			DEVNOTIFY = 8192,
		}
		public enum INPUT_MESSAGE_DEVICE_TYPE : int32
		{
			UNAVAILABLE = 0,
			KEYBOARD = 1,
			MOUSE = 2,
			TOUCH = 4,
			PEN = 8,
			TOUCHPAD = 16,
		}
		public enum INPUT_MESSAGE_ORIGIN_ID : int32
		{
			UNAVAILABLE = 0,
			HARDWARE = 1,
			INJECTED = 2,
			SYSTEM = 4,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct RAWINPUTHEADER
		{
			public uint32 dwType;
			public uint32 dwSize;
			public HANDLE hDevice;
			public WPARAM wParam;
		}
		[CRepr]
		public struct RAWMOUSE
		{
			public uint16 usFlags;
			public _Anonymous_e__Union Anonymous;
			public uint32 ulRawButtons;
			public int32 lLastX;
			public int32 lLastY;
			public uint32 ulExtraInformation;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 ulButtons;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint16 usButtonFlags;
					public uint16 usButtonData;
				}
			}
		}
		[CRepr]
		public struct RAWKEYBOARD
		{
			public uint16 MakeCode;
			public uint16 Flags;
			public uint16 Reserved;
			public uint16 VKey;
			public uint32 Message;
			public uint32 ExtraInformation;
		}
		[CRepr]
		public struct RAWHID
		{
			public uint32 dwSizeHid;
			public uint32 dwCount;
			public uint8[0] bRawData;
		}
		[CRepr]
		public struct RAWINPUT
		{
			public RAWINPUTHEADER header;
			public _data_e__Union data;
			
			[CRepr, Union]
			public struct _data_e__Union
			{
				public RAWMOUSE mouse;
				public RAWKEYBOARD keyboard;
				public RAWHID hid;
			}
		}
		[CRepr]
		public struct RID_DEVICE_INFO_MOUSE
		{
			public uint32 dwId;
			public uint32 dwNumberOfButtons;
			public uint32 dwSampleRate;
			public BOOL fHasHorizontalWheel;
		}
		[CRepr]
		public struct RID_DEVICE_INFO_KEYBOARD
		{
			public uint32 dwType;
			public uint32 dwSubType;
			public uint32 dwKeyboardMode;
			public uint32 dwNumberOfFunctionKeys;
			public uint32 dwNumberOfIndicators;
			public uint32 dwNumberOfKeysTotal;
		}
		[CRepr]
		public struct RID_DEVICE_INFO_HID
		{
			public uint32 dwVendorId;
			public uint32 dwProductId;
			public uint32 dwVersionNumber;
			public uint16 usUsagePage;
			public uint16 usUsage;
		}
		[CRepr]
		public struct RID_DEVICE_INFO
		{
			public uint32 cbSize;
			public RID_DEVICE_INFO_TYPE dwType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public RID_DEVICE_INFO_MOUSE mouse;
				public RID_DEVICE_INFO_KEYBOARD keyboard;
				public RID_DEVICE_INFO_HID hid;
			}
		}
		[CRepr]
		public struct RAWINPUTDEVICE
		{
			public uint16 usUsagePage;
			public uint16 usUsage;
			public RAWINPUTDEVICE_FLAGS dwFlags;
			public HWND hwndTarget;
		}
		[CRepr]
		public struct RAWINPUTDEVICELIST
		{
			public HANDLE hDevice;
			public RID_DEVICE_INFO_TYPE dwType;
		}
		[CRepr]
		public struct INPUT_MESSAGE_SOURCE
		{
			public INPUT_MESSAGE_DEVICE_TYPE deviceType;
			public INPUT_MESSAGE_ORIGIN_ID originId;
		}
		
		// --- Functions ---
		
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetRawInputData(HRAWINPUT hRawInput, RAW_INPUT_DATA_COMMAND_FLAGS uiCommand, void* pData, out uint32 pcbSize, uint32 cbSizeHeader);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetRawInputDeviceInfoA(HANDLE hDevice, RAW_INPUT_DEVICE_INFO_COMMAND uiCommand, void* pData, out uint32 pcbSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetRawInputDeviceInfoW(HANDLE hDevice, RAW_INPUT_DEVICE_INFO_COMMAND uiCommand, void* pData, out uint32 pcbSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetRawInputBuffer(RAWINPUT* pData, out uint32 pcbSize, uint32 cbSizeHeader);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RegisterRawInputDevices(RAWINPUTDEVICE* pRawInputDevices, uint32 uiNumDevices, uint32 cbSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetRegisteredRawInputDevices(RAWINPUTDEVICE* pRawInputDevices, out uint32 puiNumDevices, uint32 cbSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetRawInputDeviceList(RAWINPUTDEVICELIST* pRawInputDeviceList, out uint32 puiNumDevices, uint32 cbSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT DefRawInputProc(RAWINPUT** paRawInput, int32 nInput, uint32 cbSizeHeader);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCurrentInputMessageSource(out INPUT_MESSAGE_SOURCE inputMessageSource);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCIMSSM(out INPUT_MESSAGE_SOURCE inputMessageSource);
	}
}
