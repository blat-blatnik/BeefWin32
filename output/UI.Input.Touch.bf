using System;

// namespace UI.Input.Touch
namespace Win32
{
	extension Win32
	{
		// --- Typedefs ---
		
		public typealias HGESTUREINFO = int;
		public typealias HTOUCHINPUT = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum GESTURECONFIG_ID : uint32
		{
			GID_BEGIN = 1,
			GID_END = 2,
			GID_ZOOM = 3,
			GID_PAN = 4,
			GID_ROTATE = 5,
			GID_TWOFINGERTAP = 6,
			GID_PRESSANDTAP = 7,
			GID_ROLLOVER = 7,
		}
		[AllowDuplicates]
		public enum TOUCHEVENTF_FLAGS : uint32
		{
			TOUCHEVENTF_MOVE = 1,
			TOUCHEVENTF_DOWN = 2,
			TOUCHEVENTF_UP = 4,
			TOUCHEVENTF_INRANGE = 8,
			TOUCHEVENTF_PRIMARY = 16,
			TOUCHEVENTF_NOCOALESCE = 32,
			TOUCHEVENTF_PEN = 64,
			TOUCHEVENTF_PALM = 128,
		}
		[AllowDuplicates]
		public enum TOUCHINPUTMASKF_MASK : uint32
		{
			TOUCHINPUTMASKF_TIMEFROMSYSTEM = 1,
			TOUCHINPUTMASKF_EXTRAINFO = 2,
			TOUCHINPUTMASKF_CONTACTAREA = 4,
		}
		[AllowDuplicates]
		public enum REGISTER_TOUCH_WINDOW_FLAGS : uint32
		{
			TWF_FINETOUCH = 1,
			TWF_WANTPALM = 2,
		}
		[AllowDuplicates]
		public enum MANIPULATION_PROCESSOR_MANIPULATIONS : int32
		{
			MANIPULATION_NONE = 0,
			MANIPULATION_TRANSLATE_X = 1,
			MANIPULATION_TRANSLATE_Y = 2,
			MANIPULATION_SCALE = 4,
			MANIPULATION_ROTATE = 8,
			MANIPULATION_ALL = 15,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct TOUCHINPUT
		{
			public int32 x;
			public int32 y;
			public HANDLE hSource;
			public uint32 dwID;
			public TOUCHEVENTF_FLAGS dwFlags;
			public TOUCHINPUTMASKF_MASK dwMask;
			public uint32 dwTime;
			public uint dwExtraInfo;
			public uint32 cxContact;
			public uint32 cyContact;
		}
		[CRepr]
		public struct GESTUREINFO
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public uint32 dwID;
			public HWND hwndTarget;
			public POINTS ptsLocation;
			public uint32 dwInstanceID;
			public uint32 dwSequenceID;
			public uint64 ullArguments;
			public uint32 cbExtraArgs;
		}
		[CRepr]
		public struct GESTURENOTIFYSTRUCT
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public HWND hwndTarget;
			public POINTS ptsLocation;
			public uint32 dwInstanceID;
		}
		[CRepr]
		public struct GESTURECONFIG
		{
			public GESTURECONFIG_ID dwID;
			public uint32 dwWant;
			public uint32 dwBlock;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_InertiaProcessor = .(0xabb27087, 0x4ce0, 0x4e58, 0xa0, 0xcb, 0xe2, 0x4d, 0xf9, 0x68, 0x14, 0xbe);
		public const Guid CLSID_ManipulationProcessor = .(0x597d4fb0, 0x47fd, 0x4aff, 0x89, 0xb9, 0xc6, 0xcf, 0xae, 0x8c, 0xf0, 0x8e);
		
		// --- COM Interfaces ---
		
		public struct _IManipulationEvents {}
		public struct IInertiaProcessor {}
		public struct IManipulationProcessor {}
		
		// --- Functions ---
		
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetTouchInputInfo(HTOUCHINPUT hTouchInput, uint32 cInputs, TOUCHINPUT* pInputs, int32 cbSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CloseTouchInputHandle(HTOUCHINPUT hTouchInput);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RegisterTouchWindow(HWND hwnd, REGISTER_TOUCH_WINDOW_FLAGS ulFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnregisterTouchWindow(HWND hwnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsTouchWindow(HWND hwnd, uint32* pulFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetGestureInfo(HGESTUREINFO hGestureInfo, GESTUREINFO* pGestureInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetGestureExtraArgs(HGESTUREINFO hGestureInfo, uint32 cbExtraArgs, uint8* pExtraArgs);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CloseGestureInfoHandle(HGESTUREINFO hGestureInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetGestureConfig(HWND hwnd, uint32 dwReserved, uint32 cIDs, GESTURECONFIG* pGestureConfig, uint32 cbSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetGestureConfig(HWND hwnd, uint32 dwReserved, uint32 dwFlags, uint32* pcIDs, GESTURECONFIG* pGestureConfig, uint32 cbSize);
		
	}
}
