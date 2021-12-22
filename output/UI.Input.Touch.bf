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
			BEGIN = 1,
			END = 2,
			ZOOM = 3,
			PAN = 4,
			ROTATE = 5,
			TWOFINGERTAP = 6,
			PRESSANDTAP = 7,
			ROLLOVER = 7,
		}
		public enum TOUCHEVENTF_FLAGS : uint32
		{
			MOVE = 1,
			DOWN = 2,
			UP = 4,
			INRANGE = 8,
			PRIMARY = 16,
			NOCOALESCE = 32,
			PEN = 64,
			PALM = 128,
		}
		public enum TOUCHINPUTMASKF_MASK : uint32
		{
			TIMEFROMSYSTEM = 1,
			EXTRAINFO = 2,
			CONTACTAREA = 4,
		}
		public enum REGISTER_TOUCH_WINDOW_FLAGS : uint32
		{
			FINETOUCH = 1,
			WANTPALM = 2,
		}
		public enum MANIPULATION_PROCESSOR_MANIPULATIONS : int32
		{
			NONE = 0,
			TRANSLATE_X = 1,
			TRANSLATE_Y = 2,
			SCALE = 4,
			ROTATE = 8,
			ALL = 15,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ManipulationStarted(float x, float y) mut
			{
				return VT.ManipulationStarted(&this, x, y);
			}
			public HRESULT ManipulationDelta(float x, float y, float translationDeltaX, float translationDeltaY, float scaleDelta, float expansionDelta, float rotationDelta, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) mut
			{
				return VT.ManipulationDelta(&this, x, y, translationDeltaX, translationDeltaY, scaleDelta, expansionDelta, rotationDelta, cumulativeTranslationX, cumulativeTranslationY, cumulativeScale, cumulativeExpansion, cumulativeRotation);
			}
			public HRESULT ManipulationCompleted(float x, float y, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) mut
			{
				return VT.ManipulationCompleted(&this, x, y, cumulativeTranslationX, cumulativeTranslationY, cumulativeScale, cumulativeExpansion, cumulativeRotation);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(_IManipulationEvents *self, float x, float y) ManipulationStarted;
				public new function HRESULT(_IManipulationEvents *self, float x, float y, float translationDeltaX, float translationDeltaY, float scaleDelta, float expansionDelta, float rotationDelta, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) ManipulationDelta;
				public new function HRESULT(_IManipulationEvents *self, float x, float y, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) ManipulationCompleted;
			}
		}
		[CRepr]
		public struct IInertiaProcessor : IUnknown
		{
			public const new Guid IID = .(0x18b00c6d, 0xc5ee, 0x41b1, 0x90, 0xa9, 0x9d, 0x4a, 0x92, 0x90, 0x95, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_InitialOriginX(float* x) mut
			{
				return VT.get_InitialOriginX(&this, x);
			}
			public HRESULT put_InitialOriginX(float x) mut
			{
				return VT.put_InitialOriginX(&this, x);
			}
			public HRESULT get_InitialOriginY(float* y) mut
			{
				return VT.get_InitialOriginY(&this, y);
			}
			public HRESULT put_InitialOriginY(float y) mut
			{
				return VT.put_InitialOriginY(&this, y);
			}
			public HRESULT get_InitialVelocityX(float* x) mut
			{
				return VT.get_InitialVelocityX(&this, x);
			}
			public HRESULT put_InitialVelocityX(float x) mut
			{
				return VT.put_InitialVelocityX(&this, x);
			}
			public HRESULT get_InitialVelocityY(float* y) mut
			{
				return VT.get_InitialVelocityY(&this, y);
			}
			public HRESULT put_InitialVelocityY(float y) mut
			{
				return VT.put_InitialVelocityY(&this, y);
			}
			public HRESULT get_InitialAngularVelocity(float* velocity) mut
			{
				return VT.get_InitialAngularVelocity(&this, velocity);
			}
			public HRESULT put_InitialAngularVelocity(float velocity) mut
			{
				return VT.put_InitialAngularVelocity(&this, velocity);
			}
			public HRESULT get_InitialExpansionVelocity(float* velocity) mut
			{
				return VT.get_InitialExpansionVelocity(&this, velocity);
			}
			public HRESULT put_InitialExpansionVelocity(float velocity) mut
			{
				return VT.put_InitialExpansionVelocity(&this, velocity);
			}
			public HRESULT get_InitialRadius(float* radius) mut
			{
				return VT.get_InitialRadius(&this, radius);
			}
			public HRESULT put_InitialRadius(float radius) mut
			{
				return VT.put_InitialRadius(&this, radius);
			}
			public HRESULT get_BoundaryLeft(float* left) mut
			{
				return VT.get_BoundaryLeft(&this, left);
			}
			public HRESULT put_BoundaryLeft(float left) mut
			{
				return VT.put_BoundaryLeft(&this, left);
			}
			public HRESULT get_BoundaryTop(float* top) mut
			{
				return VT.get_BoundaryTop(&this, top);
			}
			public HRESULT put_BoundaryTop(float top) mut
			{
				return VT.put_BoundaryTop(&this, top);
			}
			public HRESULT get_BoundaryRight(float* right) mut
			{
				return VT.get_BoundaryRight(&this, right);
			}
			public HRESULT put_BoundaryRight(float right) mut
			{
				return VT.put_BoundaryRight(&this, right);
			}
			public HRESULT get_BoundaryBottom(float* bottom) mut
			{
				return VT.get_BoundaryBottom(&this, bottom);
			}
			public HRESULT put_BoundaryBottom(float bottom) mut
			{
				return VT.put_BoundaryBottom(&this, bottom);
			}
			public HRESULT get_ElasticMarginLeft(float* left) mut
			{
				return VT.get_ElasticMarginLeft(&this, left);
			}
			public HRESULT put_ElasticMarginLeft(float left) mut
			{
				return VT.put_ElasticMarginLeft(&this, left);
			}
			public HRESULT get_ElasticMarginTop(float* top) mut
			{
				return VT.get_ElasticMarginTop(&this, top);
			}
			public HRESULT put_ElasticMarginTop(float top) mut
			{
				return VT.put_ElasticMarginTop(&this, top);
			}
			public HRESULT get_ElasticMarginRight(float* right) mut
			{
				return VT.get_ElasticMarginRight(&this, right);
			}
			public HRESULT put_ElasticMarginRight(float right) mut
			{
				return VT.put_ElasticMarginRight(&this, right);
			}
			public HRESULT get_ElasticMarginBottom(float* bottom) mut
			{
				return VT.get_ElasticMarginBottom(&this, bottom);
			}
			public HRESULT put_ElasticMarginBottom(float bottom) mut
			{
				return VT.put_ElasticMarginBottom(&this, bottom);
			}
			public HRESULT get_DesiredDisplacement(float* displacement) mut
			{
				return VT.get_DesiredDisplacement(&this, displacement);
			}
			public HRESULT put_DesiredDisplacement(float displacement) mut
			{
				return VT.put_DesiredDisplacement(&this, displacement);
			}
			public HRESULT get_DesiredRotation(float* rotation) mut
			{
				return VT.get_DesiredRotation(&this, rotation);
			}
			public HRESULT put_DesiredRotation(float rotation) mut
			{
				return VT.put_DesiredRotation(&this, rotation);
			}
			public HRESULT get_DesiredExpansion(float* expansion) mut
			{
				return VT.get_DesiredExpansion(&this, expansion);
			}
			public HRESULT put_DesiredExpansion(float expansion) mut
			{
				return VT.put_DesiredExpansion(&this, expansion);
			}
			public HRESULT get_DesiredDeceleration(float* deceleration) mut
			{
				return VT.get_DesiredDeceleration(&this, deceleration);
			}
			public HRESULT put_DesiredDeceleration(float deceleration) mut
			{
				return VT.put_DesiredDeceleration(&this, deceleration);
			}
			public HRESULT get_DesiredAngularDeceleration(float* deceleration) mut
			{
				return VT.get_DesiredAngularDeceleration(&this, deceleration);
			}
			public HRESULT put_DesiredAngularDeceleration(float deceleration) mut
			{
				return VT.put_DesiredAngularDeceleration(&this, deceleration);
			}
			public HRESULT get_DesiredExpansionDeceleration(float* deceleration) mut
			{
				return VT.get_DesiredExpansionDeceleration(&this, deceleration);
			}
			public HRESULT put_DesiredExpansionDeceleration(float deceleration) mut
			{
				return VT.put_DesiredExpansionDeceleration(&this, deceleration);
			}
			public HRESULT get_InitialTimestamp(uint32* timestamp) mut
			{
				return VT.get_InitialTimestamp(&this, timestamp);
			}
			public HRESULT put_InitialTimestamp(uint32 timestamp) mut
			{
				return VT.put_InitialTimestamp(&this, timestamp);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Process(BOOL* completed) mut
			{
				return VT.Process(&this, completed);
			}
			public HRESULT ProcessTime(uint32 timestamp, BOOL* completed) mut
			{
				return VT.ProcessTime(&this, timestamp, completed);
			}
			public HRESULT Complete() mut
			{
				return VT.Complete(&this);
			}
			public HRESULT CompleteTime(uint32 timestamp) mut
			{
				return VT.CompleteTime(&this, timestamp);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInertiaProcessor *self, float* x) get_InitialOriginX;
				public new function HRESULT(IInertiaProcessor *self, float x) put_InitialOriginX;
				public new function HRESULT(IInertiaProcessor *self, float* y) get_InitialOriginY;
				public new function HRESULT(IInertiaProcessor *self, float y) put_InitialOriginY;
				public new function HRESULT(IInertiaProcessor *self, float* x) get_InitialVelocityX;
				public new function HRESULT(IInertiaProcessor *self, float x) put_InitialVelocityX;
				public new function HRESULT(IInertiaProcessor *self, float* y) get_InitialVelocityY;
				public new function HRESULT(IInertiaProcessor *self, float y) put_InitialVelocityY;
				public new function HRESULT(IInertiaProcessor *self, float* velocity) get_InitialAngularVelocity;
				public new function HRESULT(IInertiaProcessor *self, float velocity) put_InitialAngularVelocity;
				public new function HRESULT(IInertiaProcessor *self, float* velocity) get_InitialExpansionVelocity;
				public new function HRESULT(IInertiaProcessor *self, float velocity) put_InitialExpansionVelocity;
				public new function HRESULT(IInertiaProcessor *self, float* radius) get_InitialRadius;
				public new function HRESULT(IInertiaProcessor *self, float radius) put_InitialRadius;
				public new function HRESULT(IInertiaProcessor *self, float* left) get_BoundaryLeft;
				public new function HRESULT(IInertiaProcessor *self, float left) put_BoundaryLeft;
				public new function HRESULT(IInertiaProcessor *self, float* top) get_BoundaryTop;
				public new function HRESULT(IInertiaProcessor *self, float top) put_BoundaryTop;
				public new function HRESULT(IInertiaProcessor *self, float* right) get_BoundaryRight;
				public new function HRESULT(IInertiaProcessor *self, float right) put_BoundaryRight;
				public new function HRESULT(IInertiaProcessor *self, float* bottom) get_BoundaryBottom;
				public new function HRESULT(IInertiaProcessor *self, float bottom) put_BoundaryBottom;
				public new function HRESULT(IInertiaProcessor *self, float* left) get_ElasticMarginLeft;
				public new function HRESULT(IInertiaProcessor *self, float left) put_ElasticMarginLeft;
				public new function HRESULT(IInertiaProcessor *self, float* top) get_ElasticMarginTop;
				public new function HRESULT(IInertiaProcessor *self, float top) put_ElasticMarginTop;
				public new function HRESULT(IInertiaProcessor *self, float* right) get_ElasticMarginRight;
				public new function HRESULT(IInertiaProcessor *self, float right) put_ElasticMarginRight;
				public new function HRESULT(IInertiaProcessor *self, float* bottom) get_ElasticMarginBottom;
				public new function HRESULT(IInertiaProcessor *self, float bottom) put_ElasticMarginBottom;
				public new function HRESULT(IInertiaProcessor *self, float* displacement) get_DesiredDisplacement;
				public new function HRESULT(IInertiaProcessor *self, float displacement) put_DesiredDisplacement;
				public new function HRESULT(IInertiaProcessor *self, float* rotation) get_DesiredRotation;
				public new function HRESULT(IInertiaProcessor *self, float rotation) put_DesiredRotation;
				public new function HRESULT(IInertiaProcessor *self, float* expansion) get_DesiredExpansion;
				public new function HRESULT(IInertiaProcessor *self, float expansion) put_DesiredExpansion;
				public new function HRESULT(IInertiaProcessor *self, float* deceleration) get_DesiredDeceleration;
				public new function HRESULT(IInertiaProcessor *self, float deceleration) put_DesiredDeceleration;
				public new function HRESULT(IInertiaProcessor *self, float* deceleration) get_DesiredAngularDeceleration;
				public new function HRESULT(IInertiaProcessor *self, float deceleration) put_DesiredAngularDeceleration;
				public new function HRESULT(IInertiaProcessor *self, float* deceleration) get_DesiredExpansionDeceleration;
				public new function HRESULT(IInertiaProcessor *self, float deceleration) put_DesiredExpansionDeceleration;
				public new function HRESULT(IInertiaProcessor *self, uint32* timestamp) get_InitialTimestamp;
				public new function HRESULT(IInertiaProcessor *self, uint32 timestamp) put_InitialTimestamp;
				public new function HRESULT(IInertiaProcessor *self) Reset;
				public new function HRESULT(IInertiaProcessor *self, BOOL* completed) Process;
				public new function HRESULT(IInertiaProcessor *self, uint32 timestamp, BOOL* completed) ProcessTime;
				public new function HRESULT(IInertiaProcessor *self) Complete;
				public new function HRESULT(IInertiaProcessor *self, uint32 timestamp) CompleteTime;
			}
		}
		[CRepr]
		public struct IManipulationProcessor : IUnknown
		{
			public const new Guid IID = .(0xa22ac519, 0x8300, 0x48a0, 0xbe, 0xf4, 0xf1, 0xbe, 0x87, 0x37, 0xdb, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SupportedManipulations(MANIPULATION_PROCESSOR_MANIPULATIONS* manipulations) mut
			{
				return VT.get_SupportedManipulations(&this, manipulations);
			}
			public HRESULT put_SupportedManipulations(MANIPULATION_PROCESSOR_MANIPULATIONS manipulations) mut
			{
				return VT.put_SupportedManipulations(&this, manipulations);
			}
			public HRESULT get_PivotPointX(float* pivotPointX) mut
			{
				return VT.get_PivotPointX(&this, pivotPointX);
			}
			public HRESULT put_PivotPointX(float pivotPointX) mut
			{
				return VT.put_PivotPointX(&this, pivotPointX);
			}
			public HRESULT get_PivotPointY(float* pivotPointY) mut
			{
				return VT.get_PivotPointY(&this, pivotPointY);
			}
			public HRESULT put_PivotPointY(float pivotPointY) mut
			{
				return VT.put_PivotPointY(&this, pivotPointY);
			}
			public HRESULT get_PivotRadius(float* pivotRadius) mut
			{
				return VT.get_PivotRadius(&this, pivotRadius);
			}
			public HRESULT put_PivotRadius(float pivotRadius) mut
			{
				return VT.put_PivotRadius(&this, pivotRadius);
			}
			public HRESULT CompleteManipulation() mut
			{
				return VT.CompleteManipulation(&this);
			}
			public HRESULT ProcessDown(uint32 manipulatorId, float x, float y) mut
			{
				return VT.ProcessDown(&this, manipulatorId, x, y);
			}
			public HRESULT ProcessMove(uint32 manipulatorId, float x, float y) mut
			{
				return VT.ProcessMove(&this, manipulatorId, x, y);
			}
			public HRESULT ProcessUp(uint32 manipulatorId, float x, float y) mut
			{
				return VT.ProcessUp(&this, manipulatorId, x, y);
			}
			public HRESULT ProcessDownWithTime(uint32 manipulatorId, float x, float y, uint32 timestamp) mut
			{
				return VT.ProcessDownWithTime(&this, manipulatorId, x, y, timestamp);
			}
			public HRESULT ProcessMoveWithTime(uint32 manipulatorId, float x, float y, uint32 timestamp) mut
			{
				return VT.ProcessMoveWithTime(&this, manipulatorId, x, y, timestamp);
			}
			public HRESULT ProcessUpWithTime(uint32 manipulatorId, float x, float y, uint32 timestamp) mut
			{
				return VT.ProcessUpWithTime(&this, manipulatorId, x, y, timestamp);
			}
			public HRESULT GetVelocityX(float* velocityX) mut
			{
				return VT.GetVelocityX(&this, velocityX);
			}
			public HRESULT GetVelocityY(float* velocityY) mut
			{
				return VT.GetVelocityY(&this, velocityY);
			}
			public HRESULT GetExpansionVelocity(float* expansionVelocity) mut
			{
				return VT.GetExpansionVelocity(&this, expansionVelocity);
			}
			public HRESULT GetAngularVelocity(float* angularVelocity) mut
			{
				return VT.GetAngularVelocity(&this, angularVelocity);
			}
			public HRESULT get_MinimumScaleRotateRadius(float* minRadius) mut
			{
				return VT.get_MinimumScaleRotateRadius(&this, minRadius);
			}
			public HRESULT put_MinimumScaleRotateRadius(float minRadius) mut
			{
				return VT.put_MinimumScaleRotateRadius(&this, minRadius);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IManipulationProcessor *self, MANIPULATION_PROCESSOR_MANIPULATIONS* manipulations) get_SupportedManipulations;
				public new function HRESULT(IManipulationProcessor *self, MANIPULATION_PROCESSOR_MANIPULATIONS manipulations) put_SupportedManipulations;
				public new function HRESULT(IManipulationProcessor *self, float* pivotPointX) get_PivotPointX;
				public new function HRESULT(IManipulationProcessor *self, float pivotPointX) put_PivotPointX;
				public new function HRESULT(IManipulationProcessor *self, float* pivotPointY) get_PivotPointY;
				public new function HRESULT(IManipulationProcessor *self, float pivotPointY) put_PivotPointY;
				public new function HRESULT(IManipulationProcessor *self, float* pivotRadius) get_PivotRadius;
				public new function HRESULT(IManipulationProcessor *self, float pivotRadius) put_PivotRadius;
				public new function HRESULT(IManipulationProcessor *self) CompleteManipulation;
				public new function HRESULT(IManipulationProcessor *self, uint32 manipulatorId, float x, float y) ProcessDown;
				public new function HRESULT(IManipulationProcessor *self, uint32 manipulatorId, float x, float y) ProcessMove;
				public new function HRESULT(IManipulationProcessor *self, uint32 manipulatorId, float x, float y) ProcessUp;
				public new function HRESULT(IManipulationProcessor *self, uint32 manipulatorId, float x, float y, uint32 timestamp) ProcessDownWithTime;
				public new function HRESULT(IManipulationProcessor *self, uint32 manipulatorId, float x, float y, uint32 timestamp) ProcessMoveWithTime;
				public new function HRESULT(IManipulationProcessor *self, uint32 manipulatorId, float x, float y, uint32 timestamp) ProcessUpWithTime;
				public new function HRESULT(IManipulationProcessor *self, float* velocityX) GetVelocityX;
				public new function HRESULT(IManipulationProcessor *self, float* velocityY) GetVelocityY;
				public new function HRESULT(IManipulationProcessor *self, float* expansionVelocity) GetExpansionVelocity;
				public new function HRESULT(IManipulationProcessor *self, float* angularVelocity) GetAngularVelocity;
				public new function HRESULT(IManipulationProcessor *self, float* minRadius) get_MinimumScaleRotateRadius;
				public new function HRESULT(IManipulationProcessor *self, float minRadius) put_MinimumScaleRotateRadius;
			}
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
