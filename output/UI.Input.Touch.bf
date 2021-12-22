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
		
		[CRepr]
		public struct _IManipulationEvents : IUnknown
		{
			public const new Guid IID = .(0x4f62c8da, 0x9c53, 0x4b22, 0x93, 0xdf, 0x92, 0x7a, 0x86, 0x2b, 0xbb, 0x03);
			
			public function HRESULT(_IManipulationEvents *self, float x, float y) ManipulationStarted;
			public function HRESULT(_IManipulationEvents *self, float x, float y, float translationDeltaX, float translationDeltaY, float scaleDelta, float expansionDelta, float rotationDelta, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) ManipulationDelta;
			public function HRESULT(_IManipulationEvents *self, float x, float y, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) ManipulationCompleted;
		}
		[CRepr]
		public struct IInertiaProcessor : IUnknown
		{
			public const new Guid IID = .(0x18b00c6d, 0xc5ee, 0x41b1, 0x90, 0xa9, 0x9d, 0x4a, 0x92, 0x90, 0x95, 0xad);
			
			public function HRESULT(IInertiaProcessor *self, float* x) get_InitialOriginX;
			public function HRESULT(IInertiaProcessor *self, float x) put_InitialOriginX;
			public function HRESULT(IInertiaProcessor *self, float* y) get_InitialOriginY;
			public function HRESULT(IInertiaProcessor *self, float y) put_InitialOriginY;
			public function HRESULT(IInertiaProcessor *self, float* x) get_InitialVelocityX;
			public function HRESULT(IInertiaProcessor *self, float x) put_InitialVelocityX;
			public function HRESULT(IInertiaProcessor *self, float* y) get_InitialVelocityY;
			public function HRESULT(IInertiaProcessor *self, float y) put_InitialVelocityY;
			public function HRESULT(IInertiaProcessor *self, float* velocity) get_InitialAngularVelocity;
			public function HRESULT(IInertiaProcessor *self, float velocity) put_InitialAngularVelocity;
			public function HRESULT(IInertiaProcessor *self, float* velocity) get_InitialExpansionVelocity;
			public function HRESULT(IInertiaProcessor *self, float velocity) put_InitialExpansionVelocity;
			public function HRESULT(IInertiaProcessor *self, float* radius) get_InitialRadius;
			public function HRESULT(IInertiaProcessor *self, float radius) put_InitialRadius;
			public function HRESULT(IInertiaProcessor *self, float* left) get_BoundaryLeft;
			public function HRESULT(IInertiaProcessor *self, float left) put_BoundaryLeft;
			public function HRESULT(IInertiaProcessor *self, float* top) get_BoundaryTop;
			public function HRESULT(IInertiaProcessor *self, float top) put_BoundaryTop;
			public function HRESULT(IInertiaProcessor *self, float* right) get_BoundaryRight;
			public function HRESULT(IInertiaProcessor *self, float right) put_BoundaryRight;
			public function HRESULT(IInertiaProcessor *self, float* bottom) get_BoundaryBottom;
			public function HRESULT(IInertiaProcessor *self, float bottom) put_BoundaryBottom;
			public function HRESULT(IInertiaProcessor *self, float* left) get_ElasticMarginLeft;
			public function HRESULT(IInertiaProcessor *self, float left) put_ElasticMarginLeft;
			public function HRESULT(IInertiaProcessor *self, float* top) get_ElasticMarginTop;
			public function HRESULT(IInertiaProcessor *self, float top) put_ElasticMarginTop;
			public function HRESULT(IInertiaProcessor *self, float* right) get_ElasticMarginRight;
			public function HRESULT(IInertiaProcessor *self, float right) put_ElasticMarginRight;
			public function HRESULT(IInertiaProcessor *self, float* bottom) get_ElasticMarginBottom;
			public function HRESULT(IInertiaProcessor *self, float bottom) put_ElasticMarginBottom;
			public function HRESULT(IInertiaProcessor *self, float* displacement) get_DesiredDisplacement;
			public function HRESULT(IInertiaProcessor *self, float displacement) put_DesiredDisplacement;
			public function HRESULT(IInertiaProcessor *self, float* rotation) get_DesiredRotation;
			public function HRESULT(IInertiaProcessor *self, float rotation) put_DesiredRotation;
			public function HRESULT(IInertiaProcessor *self, float* expansion) get_DesiredExpansion;
			public function HRESULT(IInertiaProcessor *self, float expansion) put_DesiredExpansion;
			public function HRESULT(IInertiaProcessor *self, float* deceleration) get_DesiredDeceleration;
			public function HRESULT(IInertiaProcessor *self, float deceleration) put_DesiredDeceleration;
			public function HRESULT(IInertiaProcessor *self, float* deceleration) get_DesiredAngularDeceleration;
			public function HRESULT(IInertiaProcessor *self, float deceleration) put_DesiredAngularDeceleration;
			public function HRESULT(IInertiaProcessor *self, float* deceleration) get_DesiredExpansionDeceleration;
			public function HRESULT(IInertiaProcessor *self, float deceleration) put_DesiredExpansionDeceleration;
			public function HRESULT(IInertiaProcessor *self, uint32* timestamp) get_InitialTimestamp;
			public function HRESULT(IInertiaProcessor *self, uint32 timestamp) put_InitialTimestamp;
			public function HRESULT(IInertiaProcessor *self) Reset;
			public function HRESULT(IInertiaProcessor *self, BOOL* completed) Process;
			public function HRESULT(IInertiaProcessor *self, uint32 timestamp, BOOL* completed) ProcessTime;
			public function HRESULT(IInertiaProcessor *self) Complete;
			public function HRESULT(IInertiaProcessor *self, uint32 timestamp) CompleteTime;
		}
		[CRepr]
		public struct IManipulationProcessor : IUnknown
		{
			public const new Guid IID = .(0xa22ac519, 0x8300, 0x48a0, 0xbe, 0xf4, 0xf1, 0xbe, 0x87, 0x37, 0xdb, 0xa4);
			
			public function HRESULT(IManipulationProcessor *self, MANIPULATION_PROCESSOR_MANIPULATIONS* manipulations) get_SupportedManipulations;
			public function HRESULT(IManipulationProcessor *self, MANIPULATION_PROCESSOR_MANIPULATIONS manipulations) put_SupportedManipulations;
			public function HRESULT(IManipulationProcessor *self, float* pivotPointX) get_PivotPointX;
			public function HRESULT(IManipulationProcessor *self, float pivotPointX) put_PivotPointX;
			public function HRESULT(IManipulationProcessor *self, float* pivotPointY) get_PivotPointY;
			public function HRESULT(IManipulationProcessor *self, float pivotPointY) put_PivotPointY;
			public function HRESULT(IManipulationProcessor *self, float* pivotRadius) get_PivotRadius;
			public function HRESULT(IManipulationProcessor *self, float pivotRadius) put_PivotRadius;
			public function HRESULT(IManipulationProcessor *self) CompleteManipulation;
			public function HRESULT(IManipulationProcessor *self, uint32 manipulatorId, float x, float y) ProcessDown;
			public function HRESULT(IManipulationProcessor *self, uint32 manipulatorId, float x, float y) ProcessMove;
			public function HRESULT(IManipulationProcessor *self, uint32 manipulatorId, float x, float y) ProcessUp;
			public function HRESULT(IManipulationProcessor *self, uint32 manipulatorId, float x, float y, uint32 timestamp) ProcessDownWithTime;
			public function HRESULT(IManipulationProcessor *self, uint32 manipulatorId, float x, float y, uint32 timestamp) ProcessMoveWithTime;
			public function HRESULT(IManipulationProcessor *self, uint32 manipulatorId, float x, float y, uint32 timestamp) ProcessUpWithTime;
			public function HRESULT(IManipulationProcessor *self, float* velocityX) GetVelocityX;
			public function HRESULT(IManipulationProcessor *self, float* velocityY) GetVelocityY;
			public function HRESULT(IManipulationProcessor *self, float* expansionVelocity) GetExpansionVelocity;
			public function HRESULT(IManipulationProcessor *self, float* angularVelocity) GetAngularVelocity;
			public function HRESULT(IManipulationProcessor *self, float* minRadius) get_MinimumScaleRotateRadius;
			public function HRESULT(IManipulationProcessor *self, float minRadius) put_MinimumScaleRotateRadius;
		}
		
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
