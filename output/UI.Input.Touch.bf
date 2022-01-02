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
			
			public HRESULT ManipulationStarted(float x, float y) mut => VT.ManipulationStarted(ref this, x, y);
			public HRESULT ManipulationDelta(float x, float y, float translationDeltaX, float translationDeltaY, float scaleDelta, float expansionDelta, float rotationDelta, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) mut => VT.ManipulationDelta(ref this, x, y, translationDeltaX, translationDeltaY, scaleDelta, expansionDelta, rotationDelta, cumulativeTranslationX, cumulativeTranslationY, cumulativeScale, cumulativeExpansion, cumulativeRotation);
			public HRESULT ManipulationCompleted(float x, float y, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) mut => VT.ManipulationCompleted(ref this, x, y, cumulativeTranslationX, cumulativeTranslationY, cumulativeScale, cumulativeExpansion, cumulativeRotation);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IManipulationEvents self, float x, float y) ManipulationStarted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IManipulationEvents self, float x, float y, float translationDeltaX, float translationDeltaY, float scaleDelta, float expansionDelta, float rotationDelta, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) ManipulationDelta;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref _IManipulationEvents self, float x, float y, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) ManipulationCompleted;
			}
		}
		[CRepr]
		public struct IInertiaProcessor : IUnknown
		{
			public const new Guid IID = .(0x18b00c6d, 0xc5ee, 0x41b1, 0x90, 0xa9, 0x9d, 0x4a, 0x92, 0x90, 0x95, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_InitialOriginX(out float x) mut => VT.get_InitialOriginX(ref this, out x);
			public HRESULT put_InitialOriginX(float x) mut => VT.put_InitialOriginX(ref this, x);
			public HRESULT get_InitialOriginY(out float y) mut => VT.get_InitialOriginY(ref this, out y);
			public HRESULT put_InitialOriginY(float y) mut => VT.put_InitialOriginY(ref this, y);
			public HRESULT get_InitialVelocityX(out float x) mut => VT.get_InitialVelocityX(ref this, out x);
			public HRESULT put_InitialVelocityX(float x) mut => VT.put_InitialVelocityX(ref this, x);
			public HRESULT get_InitialVelocityY(out float y) mut => VT.get_InitialVelocityY(ref this, out y);
			public HRESULT put_InitialVelocityY(float y) mut => VT.put_InitialVelocityY(ref this, y);
			public HRESULT get_InitialAngularVelocity(out float velocity) mut => VT.get_InitialAngularVelocity(ref this, out velocity);
			public HRESULT put_InitialAngularVelocity(float velocity) mut => VT.put_InitialAngularVelocity(ref this, velocity);
			public HRESULT get_InitialExpansionVelocity(out float velocity) mut => VT.get_InitialExpansionVelocity(ref this, out velocity);
			public HRESULT put_InitialExpansionVelocity(float velocity) mut => VT.put_InitialExpansionVelocity(ref this, velocity);
			public HRESULT get_InitialRadius(out float radius) mut => VT.get_InitialRadius(ref this, out radius);
			public HRESULT put_InitialRadius(float radius) mut => VT.put_InitialRadius(ref this, radius);
			public HRESULT get_BoundaryLeft(out float left) mut => VT.get_BoundaryLeft(ref this, out left);
			public HRESULT put_BoundaryLeft(float left) mut => VT.put_BoundaryLeft(ref this, left);
			public HRESULT get_BoundaryTop(out float top) mut => VT.get_BoundaryTop(ref this, out top);
			public HRESULT put_BoundaryTop(float top) mut => VT.put_BoundaryTop(ref this, top);
			public HRESULT get_BoundaryRight(out float right) mut => VT.get_BoundaryRight(ref this, out right);
			public HRESULT put_BoundaryRight(float right) mut => VT.put_BoundaryRight(ref this, right);
			public HRESULT get_BoundaryBottom(out float bottom) mut => VT.get_BoundaryBottom(ref this, out bottom);
			public HRESULT put_BoundaryBottom(float bottom) mut => VT.put_BoundaryBottom(ref this, bottom);
			public HRESULT get_ElasticMarginLeft(out float left) mut => VT.get_ElasticMarginLeft(ref this, out left);
			public HRESULT put_ElasticMarginLeft(float left) mut => VT.put_ElasticMarginLeft(ref this, left);
			public HRESULT get_ElasticMarginTop(out float top) mut => VT.get_ElasticMarginTop(ref this, out top);
			public HRESULT put_ElasticMarginTop(float top) mut => VT.put_ElasticMarginTop(ref this, top);
			public HRESULT get_ElasticMarginRight(out float right) mut => VT.get_ElasticMarginRight(ref this, out right);
			public HRESULT put_ElasticMarginRight(float right) mut => VT.put_ElasticMarginRight(ref this, right);
			public HRESULT get_ElasticMarginBottom(out float bottom) mut => VT.get_ElasticMarginBottom(ref this, out bottom);
			public HRESULT put_ElasticMarginBottom(float bottom) mut => VT.put_ElasticMarginBottom(ref this, bottom);
			public HRESULT get_DesiredDisplacement(out float displacement) mut => VT.get_DesiredDisplacement(ref this, out displacement);
			public HRESULT put_DesiredDisplacement(float displacement) mut => VT.put_DesiredDisplacement(ref this, displacement);
			public HRESULT get_DesiredRotation(out float rotation) mut => VT.get_DesiredRotation(ref this, out rotation);
			public HRESULT put_DesiredRotation(float rotation) mut => VT.put_DesiredRotation(ref this, rotation);
			public HRESULT get_DesiredExpansion(out float expansion) mut => VT.get_DesiredExpansion(ref this, out expansion);
			public HRESULT put_DesiredExpansion(float expansion) mut => VT.put_DesiredExpansion(ref this, expansion);
			public HRESULT get_DesiredDeceleration(out float deceleration) mut => VT.get_DesiredDeceleration(ref this, out deceleration);
			public HRESULT put_DesiredDeceleration(float deceleration) mut => VT.put_DesiredDeceleration(ref this, deceleration);
			public HRESULT get_DesiredAngularDeceleration(out float deceleration) mut => VT.get_DesiredAngularDeceleration(ref this, out deceleration);
			public HRESULT put_DesiredAngularDeceleration(float deceleration) mut => VT.put_DesiredAngularDeceleration(ref this, deceleration);
			public HRESULT get_DesiredExpansionDeceleration(out float deceleration) mut => VT.get_DesiredExpansionDeceleration(ref this, out deceleration);
			public HRESULT put_DesiredExpansionDeceleration(float deceleration) mut => VT.put_DesiredExpansionDeceleration(ref this, deceleration);
			public HRESULT get_InitialTimestamp(out uint32 timestamp) mut => VT.get_InitialTimestamp(ref this, out timestamp);
			public HRESULT put_InitialTimestamp(uint32 timestamp) mut => VT.put_InitialTimestamp(ref this, timestamp);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Process(out BOOL completed) mut => VT.Process(ref this, out completed);
			public HRESULT ProcessTime(uint32 timestamp, out BOOL completed) mut => VT.ProcessTime(ref this, timestamp, out completed);
			public HRESULT Complete() mut => VT.Complete(ref this);
			public HRESULT CompleteTime(uint32 timestamp) mut => VT.CompleteTime(ref this, timestamp);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float x) get_InitialOriginX;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float x) put_InitialOriginX;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float y) get_InitialOriginY;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float y) put_InitialOriginY;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float x) get_InitialVelocityX;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float x) put_InitialVelocityX;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float y) get_InitialVelocityY;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float y) put_InitialVelocityY;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float velocity) get_InitialAngularVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float velocity) put_InitialAngularVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float velocity) get_InitialExpansionVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float velocity) put_InitialExpansionVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float radius) get_InitialRadius;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float radius) put_InitialRadius;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float left) get_BoundaryLeft;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float left) put_BoundaryLeft;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float top) get_BoundaryTop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float top) put_BoundaryTop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float right) get_BoundaryRight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float right) put_BoundaryRight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float bottom) get_BoundaryBottom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float bottom) put_BoundaryBottom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float left) get_ElasticMarginLeft;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float left) put_ElasticMarginLeft;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float top) get_ElasticMarginTop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float top) put_ElasticMarginTop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float right) get_ElasticMarginRight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float right) put_ElasticMarginRight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float bottom) get_ElasticMarginBottom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float bottom) put_ElasticMarginBottom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float displacement) get_DesiredDisplacement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float displacement) put_DesiredDisplacement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float rotation) get_DesiredRotation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float rotation) put_DesiredRotation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float expansion) get_DesiredExpansion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float expansion) put_DesiredExpansion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float deceleration) get_DesiredDeceleration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float deceleration) put_DesiredDeceleration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float deceleration) get_DesiredAngularDeceleration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float deceleration) put_DesiredAngularDeceleration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out float deceleration) get_DesiredExpansionDeceleration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, float deceleration) put_DesiredExpansionDeceleration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out uint32 timestamp) get_InitialTimestamp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, uint32 timestamp) put_InitialTimestamp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, out BOOL completed) Process;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, uint32 timestamp, out BOOL completed) ProcessTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self) Complete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInertiaProcessor self, uint32 timestamp) CompleteTime;
			}
		}
		[CRepr]
		public struct IManipulationProcessor : IUnknown
		{
			public const new Guid IID = .(0xa22ac519, 0x8300, 0x48a0, 0xbe, 0xf4, 0xf1, 0xbe, 0x87, 0x37, 0xdb, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SupportedManipulations(out MANIPULATION_PROCESSOR_MANIPULATIONS manipulations) mut => VT.get_SupportedManipulations(ref this, out manipulations);
			public HRESULT put_SupportedManipulations(MANIPULATION_PROCESSOR_MANIPULATIONS manipulations) mut => VT.put_SupportedManipulations(ref this, manipulations);
			public HRESULT get_PivotPointX(out float pivotPointX) mut => VT.get_PivotPointX(ref this, out pivotPointX);
			public HRESULT put_PivotPointX(float pivotPointX) mut => VT.put_PivotPointX(ref this, pivotPointX);
			public HRESULT get_PivotPointY(out float pivotPointY) mut => VT.get_PivotPointY(ref this, out pivotPointY);
			public HRESULT put_PivotPointY(float pivotPointY) mut => VT.put_PivotPointY(ref this, pivotPointY);
			public HRESULT get_PivotRadius(out float pivotRadius) mut => VT.get_PivotRadius(ref this, out pivotRadius);
			public HRESULT put_PivotRadius(float pivotRadius) mut => VT.put_PivotRadius(ref this, pivotRadius);
			public HRESULT CompleteManipulation() mut => VT.CompleteManipulation(ref this);
			public HRESULT ProcessDown(uint32 manipulatorId, float x, float y) mut => VT.ProcessDown(ref this, manipulatorId, x, y);
			public HRESULT ProcessMove(uint32 manipulatorId, float x, float y) mut => VT.ProcessMove(ref this, manipulatorId, x, y);
			public HRESULT ProcessUp(uint32 manipulatorId, float x, float y) mut => VT.ProcessUp(ref this, manipulatorId, x, y);
			public HRESULT ProcessDownWithTime(uint32 manipulatorId, float x, float y, uint32 timestamp) mut => VT.ProcessDownWithTime(ref this, manipulatorId, x, y, timestamp);
			public HRESULT ProcessMoveWithTime(uint32 manipulatorId, float x, float y, uint32 timestamp) mut => VT.ProcessMoveWithTime(ref this, manipulatorId, x, y, timestamp);
			public HRESULT ProcessUpWithTime(uint32 manipulatorId, float x, float y, uint32 timestamp) mut => VT.ProcessUpWithTime(ref this, manipulatorId, x, y, timestamp);
			public HRESULT GetVelocityX(out float velocityX) mut => VT.GetVelocityX(ref this, out velocityX);
			public HRESULT GetVelocityY(out float velocityY) mut => VT.GetVelocityY(ref this, out velocityY);
			public HRESULT GetExpansionVelocity(out float expansionVelocity) mut => VT.GetExpansionVelocity(ref this, out expansionVelocity);
			public HRESULT GetAngularVelocity(out float angularVelocity) mut => VT.GetAngularVelocity(ref this, out angularVelocity);
			public HRESULT get_MinimumScaleRotateRadius(out float minRadius) mut => VT.get_MinimumScaleRotateRadius(ref this, out minRadius);
			public HRESULT put_MinimumScaleRotateRadius(float minRadius) mut => VT.put_MinimumScaleRotateRadius(ref this, minRadius);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, out MANIPULATION_PROCESSOR_MANIPULATIONS manipulations) get_SupportedManipulations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, MANIPULATION_PROCESSOR_MANIPULATIONS manipulations) put_SupportedManipulations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, out float pivotPointX) get_PivotPointX;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, float pivotPointX) put_PivotPointX;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, out float pivotPointY) get_PivotPointY;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, float pivotPointY) put_PivotPointY;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, out float pivotRadius) get_PivotRadius;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, float pivotRadius) put_PivotRadius;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self) CompleteManipulation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, uint32 manipulatorId, float x, float y) ProcessDown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, uint32 manipulatorId, float x, float y) ProcessMove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, uint32 manipulatorId, float x, float y) ProcessUp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, uint32 manipulatorId, float x, float y, uint32 timestamp) ProcessDownWithTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, uint32 manipulatorId, float x, float y, uint32 timestamp) ProcessMoveWithTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, uint32 manipulatorId, float x, float y, uint32 timestamp) ProcessUpWithTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, out float velocityX) GetVelocityX;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, out float velocityY) GetVelocityY;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, out float expansionVelocity) GetExpansionVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, out float angularVelocity) GetAngularVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, out float minRadius) get_MinimumScaleRotateRadius;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IManipulationProcessor self, float minRadius) put_MinimumScaleRotateRadius;
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
		public static extern BOOL GetGestureInfo(HGESTUREINFO hGestureInfo, out GESTUREINFO pGestureInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetGestureExtraArgs(HGESTUREINFO hGestureInfo, uint32 cbExtraArgs, out uint8 pExtraArgs);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CloseGestureInfoHandle(HGESTUREINFO hGestureInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetGestureConfig(HWND hwnd, uint32 dwReserved, uint32 cIDs, GESTURECONFIG* pGestureConfig, uint32 cbSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetGestureConfig(HWND hwnd, uint32 dwReserved, uint32 dwFlags, ref uint32 pcIDs, GESTURECONFIG* pGestureConfig, uint32 cbSize);
	}
}
