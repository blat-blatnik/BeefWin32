using System;

// namespace UI.Input.Pointer
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum POINTER_FLAGS : uint32
		{
			NONE = 0,
			NEW = 1,
			INRANGE = 2,
			INCONTACT = 4,
			FIRSTBUTTON = 16,
			SECONDBUTTON = 32,
			THIRDBUTTON = 64,
			FOURTHBUTTON = 128,
			FIFTHBUTTON = 256,
			PRIMARY = 8192,
			CONFIDENCE = 16384,
			CANCELED = 32768,
			DOWN = 65536,
			UPDATE = 131072,
			UP = 262144,
			WHEEL = 524288,
			HWHEEL = 1048576,
			CAPTURECHANGED = 2097152,
			HASTRANSFORM = 4194304,
		}
		public enum TOUCH_FEEDBACK_MODE : uint32
		{
			DEFAULT = 1,
			INDIRECT = 2,
			NONE = 3,
		}
		public enum POINTER_BUTTON_CHANGE_TYPE : int32
		{
			NONE = 0,
			FIRSTBUTTON_DOWN = 1,
			FIRSTBUTTON_UP = 2,
			SECONDBUTTON_DOWN = 3,
			SECONDBUTTON_UP = 4,
			THIRDBUTTON_DOWN = 5,
			THIRDBUTTON_UP = 6,
			FOURTHBUTTON_DOWN = 7,
			FOURTHBUTTON_UP = 8,
			FIFTHBUTTON_DOWN = 9,
			FIFTHBUTTON_UP = 10,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct POINTER_INFO
		{
			public POINTER_INPUT_TYPE pointerType;
			public uint32 pointerId;
			public uint32 frameId;
			public POINTER_FLAGS pointerFlags;
			public HANDLE sourceDevice;
			public HWND hwndTarget;
			public POINT ptPixelLocation;
			public POINT ptHimetricLocation;
			public POINT ptPixelLocationRaw;
			public POINT ptHimetricLocationRaw;
			public uint32 dwTime;
			public uint32 historyCount;
			public int32 InputData;
			public uint32 dwKeyStates;
			public uint64 PerformanceCount;
			public POINTER_BUTTON_CHANGE_TYPE ButtonChangeType;
		}
		[CRepr]
		public struct POINTER_TOUCH_INFO
		{
			public POINTER_INFO pointerInfo;
			public uint32 touchFlags;
			public uint32 touchMask;
			public RECT rcContact;
			public RECT rcContactRaw;
			public uint32 orientation;
			public uint32 pressure;
		}
		[CRepr]
		public struct POINTER_PEN_INFO
		{
			public POINTER_INFO pointerInfo;
			public uint32 penFlags;
			public uint32 penMask;
			public uint32 pressure;
			public uint32 rotation;
			public int32 tiltX;
			public int32 tiltY;
		}
		[CRepr]
		public struct INPUT_INJECTION_VALUE
		{
			public uint16 page;
			public uint16 usage;
			public int32 value;
			public uint16 index;
		}
		[CRepr]
		public struct INPUT_TRANSFORM
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public float[16] m;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public float _11;
					public float _12;
					public float _13;
					public float _14;
					public float _21;
					public float _22;
					public float _23;
					public float _24;
					public float _31;
					public float _32;
					public float _33;
					public float _34;
					public float _41;
					public float _42;
					public float _43;
					public float _44;
				}
			}
		}
		
		// --- Functions ---
		
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetUnpredictedMessagePos();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InitializeTouchInjection(uint32 maxCount, TOUCH_FEEDBACK_MODE dwMode);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InjectTouchInput(uint32 count, POINTER_TOUCH_INFO* contacts);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerType(uint32 pointerId, out POINTER_INPUT_TYPE pointerType);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerCursorId(uint32 pointerId, out uint32 cursorId);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerInfo(uint32 pointerId, out POINTER_INFO pointerInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerInfoHistory(uint32 pointerId, out uint32 entriesCount, POINTER_INFO* pointerInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerFrameInfo(uint32 pointerId, out uint32 pointerCount, POINTER_INFO* pointerInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerFrameInfoHistory(uint32 pointerId, out uint32 entriesCount, out uint32 pointerCount, POINTER_INFO* pointerInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerTouchInfo(uint32 pointerId, out POINTER_TOUCH_INFO touchInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerTouchInfoHistory(uint32 pointerId, out uint32 entriesCount, POINTER_TOUCH_INFO* touchInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerFrameTouchInfo(uint32 pointerId, out uint32 pointerCount, POINTER_TOUCH_INFO* touchInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerFrameTouchInfoHistory(uint32 pointerId, out uint32 entriesCount, out uint32 pointerCount, POINTER_TOUCH_INFO* touchInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerPenInfo(uint32 pointerId, out POINTER_PEN_INFO penInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerPenInfoHistory(uint32 pointerId, out uint32 entriesCount, POINTER_PEN_INFO* penInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerFramePenInfo(uint32 pointerId, out uint32 pointerCount, POINTER_PEN_INFO* penInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerFramePenInfoHistory(uint32 pointerId, out uint32 entriesCount, out uint32 pointerCount, POINTER_PEN_INFO* penInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SkipPointerFrameMessages(uint32 pointerId);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InjectSyntheticPointerInput(HSYNTHETICPOINTERDEVICE device, POINTER_TYPE_INFO* pointerInfo, uint32 count);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnableMouseInPointer(BOOL fEnable);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsMouseInPointerEnabled();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerInputTransform(uint32 pointerId, uint32 historyCount, INPUT_TRANSFORM* inputTransform);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerDevices(out uint32 deviceCount, POINTER_DEVICE_INFO* pointerDevices);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerDevice(HANDLE device, out POINTER_DEVICE_INFO pointerDevice);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerDeviceProperties(HANDLE device, out uint32 propertyCount, POINTER_DEVICE_PROPERTY* pointerProperties);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerDeviceRects(HANDLE device, out RECT pointerDeviceRect, out RECT displayRect);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPointerDeviceCursors(HANDLE device, out uint32 cursorCount, POINTER_DEVICE_CURSOR_INFO* deviceCursors);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetRawPointerDeviceData(uint32 pointerId, uint32 historyCount, uint32 propertiesCount, POINTER_DEVICE_PROPERTY* pProperties, out int32 pValues);
	}
}
