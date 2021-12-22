using System;

// namespace Graphics.DirectManipulation
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DIRECTMANIPULATION_KEYBOARDFOCUS = 4294967294;
		public const uint32 DIRECTMANIPULATION_MOUSEFOCUS = 4294967293;
		public const Guid CLSID_VerticalIndicatorContent = .(0xa10b5f17, 0xafe0, 0x4aa2, 0x91, 0xe9, 0x3e, 0x70, 0x01, 0xd2, 0xe6, 0xb4);
		public const Guid CLSID_HorizontalIndicatorContent = .(0xe7d18cf5, 0x3ec7, 0x44d5, 0xa7, 0x6b, 0x37, 0x70, 0xf3, 0xcf, 0x90, 0x3d);
		public const Guid CLSID_VirtualViewportContent = .(0x3206a19a, 0x86f0, 0x4cb4, 0xa7, 0xf3, 0x16, 0xe3, 0xb7, 0xe2, 0xd8, 0x52);
		public const Guid CLSID_DragDropConfigurationBehavior = .(0x09b01b3e, 0xba6c, 0x454d, 0x82, 0xe8, 0x95, 0xe3, 0x52, 0x32, 0x9f, 0x23);
		public const Guid CLSID_AutoScrollBehavior = .(0x26126a51, 0x3c70, 0x4c9a, 0xae, 0xc2, 0x94, 0x88, 0x49, 0xee, 0xb0, 0x93);
		public const Guid CLSID_DeferContactService = .(0xd7b67cf4, 0x84bb, 0x434e, 0x86, 0xae, 0x65, 0x92, 0xbb, 0xc9, 0xab, 0xd9);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_STATUS : int32
		{
			DIRECTMANIPULATION_BUILDING = 0,
			DIRECTMANIPULATION_ENABLED = 1,
			DIRECTMANIPULATION_DISABLED = 2,
			DIRECTMANIPULATION_RUNNING = 3,
			DIRECTMANIPULATION_INERTIA = 4,
			DIRECTMANIPULATION_READY = 5,
			DIRECTMANIPULATION_SUSPENDED = 6,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_HITTEST_TYPE : int32
		{
			DIRECTMANIPULATION_HITTEST_TYPE_ASYNCHRONOUS = 0,
			DIRECTMANIPULATION_HITTEST_TYPE_SYNCHRONOUS = 1,
			DIRECTMANIPULATION_HITTEST_TYPE_AUTO_SYNCHRONOUS = 2,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_CONFIGURATION : int32
		{
			DIRECTMANIPULATION_CONFIGURATION_NONE = 0,
			DIRECTMANIPULATION_CONFIGURATION_INTERACTION = 1,
			DIRECTMANIPULATION_CONFIGURATION_TRANSLATION_X = 2,
			DIRECTMANIPULATION_CONFIGURATION_TRANSLATION_Y = 4,
			DIRECTMANIPULATION_CONFIGURATION_SCALING = 16,
			DIRECTMANIPULATION_CONFIGURATION_TRANSLATION_INERTIA = 32,
			DIRECTMANIPULATION_CONFIGURATION_SCALING_INERTIA = 128,
			DIRECTMANIPULATION_CONFIGURATION_RAILS_X = 256,
			DIRECTMANIPULATION_CONFIGURATION_RAILS_Y = 512,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_GESTURE_CONFIGURATION : int32
		{
			DIRECTMANIPULATION_GESTURE_NONE = 0,
			DIRECTMANIPULATION_GESTURE_DEFAULT = 0,
			DIRECTMANIPULATION_GESTURE_CROSS_SLIDE_VERTICAL = 8,
			DIRECTMANIPULATION_GESTURE_CROSS_SLIDE_HORIZONTAL = 16,
			DIRECTMANIPULATION_GESTURE_PINCH_ZOOM = 32,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_MOTION_TYPES : int32
		{
			DIRECTMANIPULATION_MOTION_NONE = 0,
			DIRECTMANIPULATION_MOTION_TRANSLATEX = 1,
			DIRECTMANIPULATION_MOTION_TRANSLATEY = 2,
			DIRECTMANIPULATION_MOTION_ZOOM = 4,
			DIRECTMANIPULATION_MOTION_CENTERX = 16,
			DIRECTMANIPULATION_MOTION_CENTERY = 32,
			DIRECTMANIPULATION_MOTION_ALL = 55,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_VIEWPORT_OPTIONS : int32
		{
			DIRECTMANIPULATION_VIEWPORT_OPTIONS_DEFAULT = 0,
			DIRECTMANIPULATION_VIEWPORT_OPTIONS_AUTODISABLE = 1,
			DIRECTMANIPULATION_VIEWPORT_OPTIONS_MANUALUPDATE = 2,
			DIRECTMANIPULATION_VIEWPORT_OPTIONS_INPUT = 4,
			DIRECTMANIPULATION_VIEWPORT_OPTIONS_EXPLICITHITTEST = 8,
			DIRECTMANIPULATION_VIEWPORT_OPTIONS_DISABLEPIXELSNAPPING = 16,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_SNAPPOINT_TYPE : int32
		{
			DIRECTMANIPULATION_SNAPPOINT_MANDATORY = 0,
			DIRECTMANIPULATION_SNAPPOINT_OPTIONAL = 1,
			DIRECTMANIPULATION_SNAPPOINT_MANDATORY_SINGLE = 2,
			DIRECTMANIPULATION_SNAPPOINT_OPTIONAL_SINGLE = 3,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_SNAPPOINT_COORDINATE : int32
		{
			DIRECTMANIPULATION_COORDINATE_BOUNDARY = 0,
			DIRECTMANIPULATION_COORDINATE_ORIGIN = 1,
			DIRECTMANIPULATION_COORDINATE_MIRRORED = 16,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_HORIZONTALALIGNMENT : int32
		{
			DIRECTMANIPULATION_HORIZONTALALIGNMENT_NONE = 0,
			DIRECTMANIPULATION_HORIZONTALALIGNMENT_LEFT = 1,
			DIRECTMANIPULATION_HORIZONTALALIGNMENT_CENTER = 2,
			DIRECTMANIPULATION_HORIZONTALALIGNMENT_RIGHT = 4,
			DIRECTMANIPULATION_HORIZONTALALIGNMENT_UNLOCKCENTER = 8,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_VERTICALALIGNMENT : int32
		{
			DIRECTMANIPULATION_VERTICALALIGNMENT_NONE = 0,
			DIRECTMANIPULATION_VERTICALALIGNMENT_TOP = 1,
			DIRECTMANIPULATION_VERTICALALIGNMENT_CENTER = 2,
			DIRECTMANIPULATION_VERTICALALIGNMENT_BOTTOM = 4,
			DIRECTMANIPULATION_VERTICALALIGNMENT_UNLOCKCENTER = 8,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_INPUT_MODE : int32
		{
			DIRECTMANIPULATION_INPUT_MODE_AUTOMATIC = 0,
			DIRECTMANIPULATION_INPUT_MODE_MANUAL = 1,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_DRAG_DROP_STATUS : int32
		{
			DIRECTMANIPULATION_DRAG_DROP_READY = 0,
			DIRECTMANIPULATION_DRAG_DROP_PRESELECT = 1,
			DIRECTMANIPULATION_DRAG_DROP_SELECTING = 2,
			DIRECTMANIPULATION_DRAG_DROP_DRAGGING = 3,
			DIRECTMANIPULATION_DRAG_DROP_CANCELLED = 4,
			DIRECTMANIPULATION_DRAG_DROP_COMMITTED = 5,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_DRAG_DROP_CONFIGURATION : int32
		{
			DIRECTMANIPULATION_DRAG_DROP_CONFIGURATION_VERTICAL = 1,
			DIRECTMANIPULATION_DRAG_DROP_CONFIGURATION_HORIZONTAL = 2,
			DIRECTMANIPULATION_DRAG_DROP_CONFIGURATION_SELECT_ONLY = 16,
			DIRECTMANIPULATION_DRAG_DROP_CONFIGURATION_SELECT_DRAG = 32,
			DIRECTMANIPULATION_DRAG_DROP_CONFIGURATION_HOLD_DRAG = 64,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_INTERACTION_TYPE : int32
		{
			DIRECTMANIPULATION_INTERACTION_BEGIN = 0,
			DIRECTMANIPULATION_INTERACTION_TYPE_MANIPULATION = 1,
			DIRECTMANIPULATION_INTERACTION_TYPE_GESTURE_TAP = 2,
			DIRECTMANIPULATION_INTERACTION_TYPE_GESTURE_HOLD = 3,
			DIRECTMANIPULATION_INTERACTION_TYPE_GESTURE_CROSS_SLIDE = 4,
			DIRECTMANIPULATION_INTERACTION_TYPE_GESTURE_PINCH_ZOOM = 5,
			DIRECTMANIPULATION_INTERACTION_END = 100,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_AUTOSCROLL_CONFIGURATION : int32
		{
			DIRECTMANIPULATION_AUTOSCROLL_CONFIGURATION_STOP = 0,
			DIRECTMANIPULATION_AUTOSCROLL_CONFIGURATION_FORWARD = 1,
			DIRECTMANIPULATION_AUTOSCROLL_CONFIGURATION_REVERSE = 2,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_DirectManipulationViewport = .(0x34e211b6, 0x3650, 0x4f75, 0x83, 0x34, 0xfa, 0x35, 0x95, 0x98, 0xe1, 0xc5);
		public const Guid CLSID_DirectManipulationUpdateManager = .(0x9fc1bfd5, 0x1835, 0x441a, 0xb3, 0xb1, 0xb6, 0xcc, 0x74, 0xb7, 0x27, 0xd0);
		public const Guid CLSID_DirectManipulationPrimaryContent = .(0xcaa02661, 0xd59e, 0x41c7, 0x83, 0x93, 0x3b, 0xa3, 0xba, 0xcb, 0x6b, 0x57);
		public const Guid CLSID_DirectManipulationManager = .(0x54e211b6, 0x3650, 0x4f75, 0x83, 0x34, 0xfa, 0x35, 0x95, 0x98, 0xe1, 0xc5);
		public const Guid CLSID_DirectManipulationSharedManager = .(0x99793286, 0x77cc, 0x4b57, 0x96, 0xdb, 0x3b, 0x35, 0x4f, 0x6f, 0x9f, 0xb5);
		public const Guid CLSID_DCompManipulationCompositor = .(0x79dea627, 0xa08a, 0x43ac, 0x8e, 0xf5, 0x69, 0x00, 0xb9, 0x29, 0x91, 0x26);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDirectManipulationManager : IUnknown
		{
			public const new Guid IID = .(0xfbf5d3b4, 0x70c7, 0x4163, 0x93, 0x22, 0x5a, 0x6f, 0x66, 0x0d, 0x6f, 0xbc);
			
			public function HRESULT(IDirectManipulationManager *self, HWND window) Activate;
			public function HRESULT(IDirectManipulationManager *self, HWND window) Deactivate;
			public function HRESULT(IDirectManipulationManager *self, HWND window, HWND hitTestWindow, DIRECTMANIPULATION_HITTEST_TYPE type) RegisterHitTestTarget;
			public function HRESULT(IDirectManipulationManager *self, MSG* message, BOOL* handled) ProcessInput;
			public function HRESULT(IDirectManipulationManager *self, Guid* riid, void** object) GetUpdateManager;
			public function HRESULT(IDirectManipulationManager *self, IDirectManipulationFrameInfoProvider* frameInfo, HWND window, Guid* riid, void** object) CreateViewport;
			public function HRESULT(IDirectManipulationManager *self, IDirectManipulationFrameInfoProvider* frameInfo, Guid* clsid, Guid* riid, void** object) CreateContent;
		}
		[CRepr]
		public struct IDirectManipulationManager2 : IDirectManipulationManager
		{
			public const new Guid IID = .(0xfa1005e9, 0x3d16, 0x484c, 0xbf, 0xc9, 0x62, 0xb6, 0x1e, 0x56, 0xec, 0x4e);
			
			public function HRESULT(IDirectManipulationManager2 *self, Guid* clsid, Guid* riid, void** object) CreateBehavior;
		}
		[CRepr]
		public struct IDirectManipulationManager3 : IDirectManipulationManager2
		{
			public const new Guid IID = .(0x2cb6b33d, 0xffe8, 0x488c, 0xb7, 0x50, 0xfb, 0xdf, 0xe8, 0x8d, 0xca, 0x8c);
			
			public function HRESULT(IDirectManipulationManager3 *self, Guid* clsid, Guid* riid, void** object) GetService;
		}
		[CRepr]
		public struct IDirectManipulationViewport : IUnknown
		{
			public const new Guid IID = .(0x28b85a3d, 0x60a0, 0x48bd, 0x9b, 0xa1, 0x5c, 0xe8, 0xd9, 0xea, 0x3a, 0x6d);
			
			public function HRESULT(IDirectManipulationViewport *self) Enable;
			public function HRESULT(IDirectManipulationViewport *self) Disable;
			public function HRESULT(IDirectManipulationViewport *self, uint32 pointerId) SetContact;
			public function HRESULT(IDirectManipulationViewport *self, uint32 pointerId) ReleaseContact;
			public function HRESULT(IDirectManipulationViewport *self) ReleaseAllContacts;
			public function HRESULT(IDirectManipulationViewport *self, DIRECTMANIPULATION_STATUS* status) GetStatus;
			public function HRESULT(IDirectManipulationViewport *self, Guid* riid, void** object, uint32* id) GetTag;
			public function HRESULT(IDirectManipulationViewport *self, IUnknown* object, uint32 id) SetTag;
			public function HRESULT(IDirectManipulationViewport *self, RECT* viewport) GetViewportRect;
			public function HRESULT(IDirectManipulationViewport *self, RECT* viewport) SetViewportRect;
			public function HRESULT(IDirectManipulationViewport *self, float left, float top, float right, float bottom, BOOL animate) ZoomToRect;
			public function HRESULT(IDirectManipulationViewport *self, float* matrix, uint32 pointCount) SetViewportTransform;
			public function HRESULT(IDirectManipulationViewport *self, float* matrix, uint32 pointCount) SyncDisplayTransform;
			public function HRESULT(IDirectManipulationViewport *self, Guid* riid, void** object) GetPrimaryContent;
			public function HRESULT(IDirectManipulationViewport *self, IDirectManipulationContent* content) AddContent;
			public function HRESULT(IDirectManipulationViewport *self, IDirectManipulationContent* content) RemoveContent;
			public function HRESULT(IDirectManipulationViewport *self, DIRECTMANIPULATION_VIEWPORT_OPTIONS options) SetViewportOptions;
			public function HRESULT(IDirectManipulationViewport *self, DIRECTMANIPULATION_CONFIGURATION configuration) AddConfiguration;
			public function HRESULT(IDirectManipulationViewport *self, DIRECTMANIPULATION_CONFIGURATION configuration) RemoveConfiguration;
			public function HRESULT(IDirectManipulationViewport *self, DIRECTMANIPULATION_CONFIGURATION configuration) ActivateConfiguration;
			public function HRESULT(IDirectManipulationViewport *self, DIRECTMANIPULATION_GESTURE_CONFIGURATION configuration) SetManualGesture;
			public function HRESULT(IDirectManipulationViewport *self, DIRECTMANIPULATION_MOTION_TYPES enabledTypes) SetChaining;
			public function HRESULT(IDirectManipulationViewport *self, HWND window, IDirectManipulationViewportEventHandler* eventHandler, uint32* cookie) AddEventHandler;
			public function HRESULT(IDirectManipulationViewport *self, uint32 cookie) RemoveEventHandler;
			public function HRESULT(IDirectManipulationViewport *self, DIRECTMANIPULATION_INPUT_MODE mode) SetInputMode;
			public function HRESULT(IDirectManipulationViewport *self, DIRECTMANIPULATION_INPUT_MODE mode) SetUpdateMode;
			public function HRESULT(IDirectManipulationViewport *self) Stop;
			public function HRESULT(IDirectManipulationViewport *self) Abandon;
		}
		[CRepr]
		public struct IDirectManipulationViewport2 : IDirectManipulationViewport
		{
			public const new Guid IID = .(0x923ccaac, 0x61e1, 0x4385, 0xb7, 0x26, 0x01, 0x7a, 0xf1, 0x89, 0x88, 0x2a);
			
			public function HRESULT(IDirectManipulationViewport2 *self, IUnknown* behavior, uint32* cookie) AddBehavior;
			public function HRESULT(IDirectManipulationViewport2 *self, uint32 cookie) RemoveBehavior;
			public function HRESULT(IDirectManipulationViewport2 *self) RemoveAllBehaviors;
		}
		[CRepr]
		public struct IDirectManipulationViewportEventHandler : IUnknown
		{
			public const new Guid IID = .(0x952121da, 0xd69f, 0x45f9, 0xb0, 0xf9, 0xf2, 0x39, 0x44, 0x32, 0x1a, 0x6d);
			
			public function HRESULT(IDirectManipulationViewportEventHandler *self, IDirectManipulationViewport* viewport, DIRECTMANIPULATION_STATUS current, DIRECTMANIPULATION_STATUS previous) OnViewportStatusChanged;
			public function HRESULT(IDirectManipulationViewportEventHandler *self, IDirectManipulationViewport* viewport) OnViewportUpdated;
			public function HRESULT(IDirectManipulationViewportEventHandler *self, IDirectManipulationViewport* viewport, IDirectManipulationContent* content) OnContentUpdated;
		}
		[CRepr]
		public struct IDirectManipulationContent : IUnknown
		{
			public const new Guid IID = .(0xb89962cb, 0x3d89, 0x442b, 0xbb, 0x58, 0x50, 0x98, 0xfa, 0x0f, 0x9f, 0x16);
			
			public function HRESULT(IDirectManipulationContent *self, RECT* contentSize) GetContentRect;
			public function HRESULT(IDirectManipulationContent *self, RECT* contentSize) SetContentRect;
			public function HRESULT(IDirectManipulationContent *self, Guid* riid, void** object) GetViewport;
			public function HRESULT(IDirectManipulationContent *self, Guid* riid, void** object, uint32* id) GetTag;
			public function HRESULT(IDirectManipulationContent *self, IUnknown* object, uint32 id) SetTag;
			public function HRESULT(IDirectManipulationContent *self, float* matrix, uint32 pointCount) GetOutputTransform;
			public function HRESULT(IDirectManipulationContent *self, float* matrix, uint32 pointCount) GetContentTransform;
			public function HRESULT(IDirectManipulationContent *self, float* matrix, uint32 pointCount) SyncContentTransform;
		}
		[CRepr]
		public struct IDirectManipulationPrimaryContent : IUnknown
		{
			public const new Guid IID = .(0xc12851e4, 0x1698, 0x4625, 0xb9, 0xb1, 0x7c, 0xa3, 0xec, 0x18, 0x63, 0x0b);
			
			public function HRESULT(IDirectManipulationPrimaryContent *self, DIRECTMANIPULATION_MOTION_TYPES motion, float interval, float offset) SetSnapInterval;
			public function HRESULT(IDirectManipulationPrimaryContent *self, DIRECTMANIPULATION_MOTION_TYPES motion, float* points, uint32 pointCount) SetSnapPoints;
			public function HRESULT(IDirectManipulationPrimaryContent *self, DIRECTMANIPULATION_MOTION_TYPES motion, DIRECTMANIPULATION_SNAPPOINT_TYPE type) SetSnapType;
			public function HRESULT(IDirectManipulationPrimaryContent *self, DIRECTMANIPULATION_MOTION_TYPES motion, DIRECTMANIPULATION_SNAPPOINT_COORDINATE coordinate, float origin) SetSnapCoordinate;
			public function HRESULT(IDirectManipulationPrimaryContent *self, float zoomMinimum, float zoomMaximum) SetZoomBoundaries;
			public function HRESULT(IDirectManipulationPrimaryContent *self, DIRECTMANIPULATION_HORIZONTALALIGNMENT alignment) SetHorizontalAlignment;
			public function HRESULT(IDirectManipulationPrimaryContent *self, DIRECTMANIPULATION_VERTICALALIGNMENT alignment) SetVerticalAlignment;
			public function HRESULT(IDirectManipulationPrimaryContent *self, float* matrix, uint32 pointCount) GetInertiaEndTransform;
			public function HRESULT(IDirectManipulationPrimaryContent *self, float* centerX, float* centerY) GetCenterPoint;
		}
		[CRepr]
		public struct IDirectManipulationDragDropEventHandler : IUnknown
		{
			public const new Guid IID = .(0x1fa11b10, 0x701b, 0x41ae, 0xb5, 0xf2, 0x49, 0xe3, 0x6b, 0xd5, 0x95, 0xaa);
			
			public function HRESULT(IDirectManipulationDragDropEventHandler *self, IDirectManipulationViewport2* viewport, DIRECTMANIPULATION_DRAG_DROP_STATUS current, DIRECTMANIPULATION_DRAG_DROP_STATUS previous) OnDragDropStatusChange;
		}
		[CRepr]
		public struct IDirectManipulationDragDropBehavior : IUnknown
		{
			public const new Guid IID = .(0x814b5af5, 0xc2c8, 0x4270, 0xa9, 0xb7, 0xa1, 0x98, 0xce, 0x8d, 0x02, 0xfa);
			
			public function HRESULT(IDirectManipulationDragDropBehavior *self, DIRECTMANIPULATION_DRAG_DROP_CONFIGURATION configuration) SetConfiguration;
			public function HRESULT(IDirectManipulationDragDropBehavior *self, DIRECTMANIPULATION_DRAG_DROP_STATUS* status) GetStatus;
		}
		[CRepr]
		public struct IDirectManipulationInteractionEventHandler : IUnknown
		{
			public const new Guid IID = .(0xe43f45b8, 0x42b4, 0x403e, 0xb1, 0xf2, 0x27, 0x3b, 0x8f, 0x51, 0x08, 0x30);
			
			public function HRESULT(IDirectManipulationInteractionEventHandler *self, IDirectManipulationViewport2* viewport, DIRECTMANIPULATION_INTERACTION_TYPE interaction) OnInteraction;
		}
		[CRepr]
		public struct IDirectManipulationFrameInfoProvider : IUnknown
		{
			public const new Guid IID = .(0xfb759dba, 0x6f4c, 0x4c01, 0x87, 0x4e, 0x19, 0xc8, 0xa0, 0x59, 0x07, 0xf9);
			
			public function HRESULT(IDirectManipulationFrameInfoProvider *self, uint64* time, uint64* processTime, uint64* compositionTime) GetNextFrameInfo;
		}
		[CRepr]
		public struct IDirectManipulationCompositor : IUnknown
		{
			public const new Guid IID = .(0x537a0825, 0x0387, 0x4efa, 0xb6, 0x2f, 0x71, 0xeb, 0x1f, 0x08, 0x5a, 0x7e);
			
			public function HRESULT(IDirectManipulationCompositor *self, IDirectManipulationContent* content, IUnknown* device, IUnknown* parentVisual, IUnknown* childVisual) AddContent;
			public function HRESULT(IDirectManipulationCompositor *self, IDirectManipulationContent* content) RemoveContent;
			public function HRESULT(IDirectManipulationCompositor *self, IDirectManipulationUpdateManager* updateManager) SetUpdateManager;
			public function HRESULT(IDirectManipulationCompositor *self) Flush;
		}
		[CRepr]
		public struct IDirectManipulationCompositor2 : IDirectManipulationCompositor
		{
			public const new Guid IID = .(0xd38c7822, 0xf1cb, 0x43cb, 0xb4, 0xb9, 0xac, 0x0c, 0x76, 0x7a, 0x41, 0x2e);
			
			public function HRESULT(IDirectManipulationCompositor2 *self, IDirectManipulationPrimaryContent* content, IUnknown* device, IUnknown* parentVisual, IUnknown* childVisual) AddContentWithCrossProcessChaining;
		}
		[CRepr]
		public struct IDirectManipulationUpdateHandler : IUnknown
		{
			public const new Guid IID = .(0x790b6337, 0x64f8, 0x4ff5, 0xa2, 0x69, 0xb3, 0x2b, 0xc2, 0xaf, 0x27, 0xa7);
			
			public function HRESULT(IDirectManipulationUpdateHandler *self) Update;
		}
		[CRepr]
		public struct IDirectManipulationUpdateManager : IUnknown
		{
			public const new Guid IID = .(0xb0ae62fd, 0xbe34, 0x46e7, 0x9c, 0xaa, 0xd3, 0x61, 0xfa, 0xcb, 0xb9, 0xcc);
			
			public function HRESULT(IDirectManipulationUpdateManager *self, HANDLE handle, IDirectManipulationUpdateHandler* eventHandler, uint32* cookie) RegisterWaitHandleCallback;
			public function HRESULT(IDirectManipulationUpdateManager *self, uint32 cookie) UnregisterWaitHandleCallback;
			public function HRESULT(IDirectManipulationUpdateManager *self, IDirectManipulationFrameInfoProvider* frameInfo) Update;
		}
		[CRepr]
		public struct IDirectManipulationAutoScrollBehavior : IUnknown
		{
			public const new Guid IID = .(0x6d5954d4, 0x2003, 0x4356, 0x9b, 0x31, 0xd0, 0x51, 0xc9, 0xff, 0x0a, 0xf7);
			
			public function HRESULT(IDirectManipulationAutoScrollBehavior *self, DIRECTMANIPULATION_MOTION_TYPES motionTypes, DIRECTMANIPULATION_AUTOSCROLL_CONFIGURATION scrollMotion) SetConfiguration;
		}
		[CRepr]
		public struct IDirectManipulationDeferContactService : IUnknown
		{
			public const new Guid IID = .(0x652d5c71, 0xfe60, 0x4a98, 0xbe, 0x70, 0xe5, 0xf2, 0x12, 0x91, 0xe7, 0xf1);
			
			public function HRESULT(IDirectManipulationDeferContactService *self, uint32 pointerId, uint32 timeout) DeferContact;
			public function HRESULT(IDirectManipulationDeferContactService *self, uint32 pointerId) CancelContact;
			public function HRESULT(IDirectManipulationDeferContactService *self, uint32 pointerId) CancelDeferral;
		}
		
	}
}
