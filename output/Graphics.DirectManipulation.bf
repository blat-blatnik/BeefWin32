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
		
		public enum DIRECTMANIPULATION_STATUS : int32
		{
			BUILDING = 0,
			ENABLED = 1,
			DISABLED = 2,
			RUNNING = 3,
			INERTIA = 4,
			READY = 5,
			SUSPENDED = 6,
		}
		public enum DIRECTMANIPULATION_HITTEST_TYPE : int32
		{
			ASYNCHRONOUS = 0,
			SYNCHRONOUS = 1,
			AUTO_SYNCHRONOUS = 2,
		}
		public enum DIRECTMANIPULATION_CONFIGURATION : int32
		{
			NONE = 0,
			INTERACTION = 1,
			TRANSLATION_X = 2,
			TRANSLATION_Y = 4,
			SCALING = 16,
			TRANSLATION_INERTIA = 32,
			SCALING_INERTIA = 128,
			RAILS_X = 256,
			RAILS_Y = 512,
		}
		[AllowDuplicates]
		public enum DIRECTMANIPULATION_GESTURE_CONFIGURATION : int32
		{
			NONE = 0,
			DEFAULT = 0,
			CROSS_SLIDE_VERTICAL = 8,
			CROSS_SLIDE_HORIZONTAL = 16,
			PINCH_ZOOM = 32,
		}
		public enum DIRECTMANIPULATION_MOTION_TYPES : int32
		{
			NONE = 0,
			TRANSLATEX = 1,
			TRANSLATEY = 2,
			ZOOM = 4,
			CENTERX = 16,
			CENTERY = 32,
			ALL = 55,
		}
		public enum DIRECTMANIPULATION_VIEWPORT_OPTIONS : int32
		{
			DEFAULT = 0,
			AUTODISABLE = 1,
			MANUALUPDATE = 2,
			INPUT = 4,
			EXPLICITHITTEST = 8,
			DISABLEPIXELSNAPPING = 16,
		}
		public enum DIRECTMANIPULATION_SNAPPOINT_TYPE : int32
		{
			MANDATORY = 0,
			OPTIONAL = 1,
			MANDATORY_SINGLE = 2,
			OPTIONAL_SINGLE = 3,
		}
		public enum DIRECTMANIPULATION_SNAPPOINT_COORDINATE : int32
		{
			BOUNDARY = 0,
			ORIGIN = 1,
			MIRRORED = 16,
		}
		public enum DIRECTMANIPULATION_HORIZONTALALIGNMENT : int32
		{
			NONE = 0,
			LEFT = 1,
			CENTER = 2,
			RIGHT = 4,
			UNLOCKCENTER = 8,
		}
		public enum DIRECTMANIPULATION_VERTICALALIGNMENT : int32
		{
			NONE = 0,
			TOP = 1,
			CENTER = 2,
			BOTTOM = 4,
			UNLOCKCENTER = 8,
		}
		public enum DIRECTMANIPULATION_INPUT_MODE : int32
		{
			AUTOMATIC = 0,
			MANUAL = 1,
		}
		public enum DIRECTMANIPULATION_DRAG_DROP_STATUS : int32
		{
			READY = 0,
			PRESELECT = 1,
			SELECTING = 2,
			DRAGGING = 3,
			CANCELLED = 4,
			COMMITTED = 5,
		}
		public enum DIRECTMANIPULATION_DRAG_DROP_CONFIGURATION : int32
		{
			VERTICAL = 1,
			HORIZONTAL = 2,
			SELECT_ONLY = 16,
			SELECT_DRAG = 32,
			HOLD_DRAG = 64,
		}
		public enum DIRECTMANIPULATION_INTERACTION_TYPE : int32
		{
			BEGIN = 0,
			TYPE_MANIPULATION = 1,
			TYPE_GESTURE_TAP = 2,
			TYPE_GESTURE_HOLD = 3,
			TYPE_GESTURE_CROSS_SLIDE = 4,
			TYPE_GESTURE_PINCH_ZOOM = 5,
			END = 100,
		}
		public enum DIRECTMANIPULATION_AUTOSCROLL_CONFIGURATION : int32
		{
			STOP = 0,
			FORWARD = 1,
			REVERSE = 2,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Activate(HWND window) mut => VT.Activate(ref this, window);
			public HRESULT Deactivate(HWND window) mut => VT.Deactivate(ref this, window);
			public HRESULT RegisterHitTestTarget(HWND window, HWND hitTestWindow, DIRECTMANIPULATION_HITTEST_TYPE type) mut => VT.RegisterHitTestTarget(ref this, window, hitTestWindow, type);
			public HRESULT ProcessInput(in MSG message, out BOOL handled) mut => VT.ProcessInput(ref this, message, out handled);
			public HRESULT GetUpdateManager(in Guid riid, void** object) mut => VT.GetUpdateManager(ref this, riid, object);
			public HRESULT CreateViewport(IDirectManipulationFrameInfoProvider* frameInfo, HWND window, in Guid riid, void** object) mut => VT.CreateViewport(ref this, frameInfo, window, riid, object);
			public HRESULT CreateContent(IDirectManipulationFrameInfoProvider* frameInfo, in Guid clsid, in Guid riid, void** object) mut => VT.CreateContent(ref this, frameInfo, clsid, riid, object);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationManager self, HWND window) Activate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationManager self, HWND window) Deactivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationManager self, HWND window, HWND hitTestWindow, DIRECTMANIPULATION_HITTEST_TYPE type) RegisterHitTestTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationManager self, in MSG message, out BOOL handled) ProcessInput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationManager self, in Guid riid, void** object) GetUpdateManager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationManager self, IDirectManipulationFrameInfoProvider* frameInfo, HWND window, in Guid riid, void** object) CreateViewport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationManager self, IDirectManipulationFrameInfoProvider* frameInfo, in Guid clsid, in Guid riid, void** object) CreateContent;
			}
		}
		[CRepr]
		public struct IDirectManipulationManager2 : IDirectManipulationManager
		{
			public const new Guid IID = .(0xfa1005e9, 0x3d16, 0x484c, 0xbf, 0xc9, 0x62, 0xb6, 0x1e, 0x56, 0xec, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateBehavior(in Guid clsid, in Guid riid, void** object) mut => VT.CreateBehavior(ref this, clsid, riid, object);

			[CRepr]
			public struct VTable : IDirectManipulationManager.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationManager2 self, in Guid clsid, in Guid riid, void** object) CreateBehavior;
			}
		}
		[CRepr]
		public struct IDirectManipulationManager3 : IDirectManipulationManager2
		{
			public const new Guid IID = .(0x2cb6b33d, 0xffe8, 0x488c, 0xb7, 0x50, 0xfb, 0xdf, 0xe8, 0x8d, 0xca, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetService(in Guid clsid, in Guid riid, void** object) mut => VT.GetService(ref this, clsid, riid, object);

			[CRepr]
			public struct VTable : IDirectManipulationManager2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationManager3 self, in Guid clsid, in Guid riid, void** object) GetService;
			}
		}
		[CRepr]
		public struct IDirectManipulationViewport : IUnknown
		{
			public const new Guid IID = .(0x28b85a3d, 0x60a0, 0x48bd, 0x9b, 0xa1, 0x5c, 0xe8, 0xd9, 0xea, 0x3a, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Enable() mut => VT.Enable(ref this);
			public HRESULT Disable() mut => VT.Disable(ref this);
			public HRESULT SetContact(uint32 pointerId) mut => VT.SetContact(ref this, pointerId);
			public HRESULT ReleaseContact(uint32 pointerId) mut => VT.ReleaseContact(ref this, pointerId);
			public HRESULT ReleaseAllContacts() mut => VT.ReleaseAllContacts(ref this);
			public HRESULT GetStatus(out DIRECTMANIPULATION_STATUS status) mut => VT.GetStatus(ref this, out status);
			public HRESULT GetTag(in Guid riid, void** object, uint32* id) mut => VT.GetTag(ref this, riid, object, id);
			public HRESULT SetTag(IUnknown* object, uint32 id) mut => VT.SetTag(ref this, object, id);
			public HRESULT GetViewportRect(out RECT viewport) mut => VT.GetViewportRect(ref this, out viewport);
			public HRESULT SetViewportRect(in RECT viewport) mut => VT.SetViewportRect(ref this, viewport);
			public HRESULT ZoomToRect(float left, float top, float right, float bottom, BOOL animate) mut => VT.ZoomToRect(ref this, left, top, right, bottom, animate);
			public HRESULT SetViewportTransform(float* matrix, uint32 pointCount) mut => VT.SetViewportTransform(ref this, matrix, pointCount);
			public HRESULT SyncDisplayTransform(float* matrix, uint32 pointCount) mut => VT.SyncDisplayTransform(ref this, matrix, pointCount);
			public HRESULT GetPrimaryContent(in Guid riid, void** object) mut => VT.GetPrimaryContent(ref this, riid, object);
			public HRESULT AddContent(ref IDirectManipulationContent content) mut => VT.AddContent(ref this, ref content);
			public HRESULT RemoveContent(ref IDirectManipulationContent content) mut => VT.RemoveContent(ref this, ref content);
			public HRESULT SetViewportOptions(DIRECTMANIPULATION_VIEWPORT_OPTIONS options) mut => VT.SetViewportOptions(ref this, options);
			public HRESULT AddConfiguration(DIRECTMANIPULATION_CONFIGURATION configuration) mut => VT.AddConfiguration(ref this, configuration);
			public HRESULT RemoveConfiguration(DIRECTMANIPULATION_CONFIGURATION configuration) mut => VT.RemoveConfiguration(ref this, configuration);
			public HRESULT ActivateConfiguration(DIRECTMANIPULATION_CONFIGURATION configuration) mut => VT.ActivateConfiguration(ref this, configuration);
			public HRESULT SetManualGesture(DIRECTMANIPULATION_GESTURE_CONFIGURATION configuration) mut => VT.SetManualGesture(ref this, configuration);
			public HRESULT SetChaining(DIRECTMANIPULATION_MOTION_TYPES enabledTypes) mut => VT.SetChaining(ref this, enabledTypes);
			public HRESULT AddEventHandler(HWND window, ref IDirectManipulationViewportEventHandler eventHandler, out uint32 cookie) mut => VT.AddEventHandler(ref this, window, ref eventHandler, out cookie);
			public HRESULT RemoveEventHandler(uint32 cookie) mut => VT.RemoveEventHandler(ref this, cookie);
			public HRESULT SetInputMode(DIRECTMANIPULATION_INPUT_MODE mode) mut => VT.SetInputMode(ref this, mode);
			public HRESULT SetUpdateMode(DIRECTMANIPULATION_INPUT_MODE mode) mut => VT.SetUpdateMode(ref this, mode);
			public HRESULT Stop() mut => VT.Stop(ref this);
			public HRESULT Abandon() mut => VT.Abandon(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self) Enable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self) Disable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, uint32 pointerId) SetContact;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, uint32 pointerId) ReleaseContact;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self) ReleaseAllContacts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, out DIRECTMANIPULATION_STATUS status) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, in Guid riid, void** object, uint32* id) GetTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, IUnknown* object, uint32 id) SetTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, out RECT viewport) GetViewportRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, in RECT viewport) SetViewportRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, float left, float top, float right, float bottom, BOOL animate) ZoomToRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, float* matrix, uint32 pointCount) SetViewportTransform;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, float* matrix, uint32 pointCount) SyncDisplayTransform;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, in Guid riid, void** object) GetPrimaryContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, ref IDirectManipulationContent content) AddContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, ref IDirectManipulationContent content) RemoveContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, DIRECTMANIPULATION_VIEWPORT_OPTIONS options) SetViewportOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, DIRECTMANIPULATION_CONFIGURATION configuration) AddConfiguration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, DIRECTMANIPULATION_CONFIGURATION configuration) RemoveConfiguration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, DIRECTMANIPULATION_CONFIGURATION configuration) ActivateConfiguration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, DIRECTMANIPULATION_GESTURE_CONFIGURATION configuration) SetManualGesture;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, DIRECTMANIPULATION_MOTION_TYPES enabledTypes) SetChaining;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, HWND window, ref IDirectManipulationViewportEventHandler eventHandler, out uint32 cookie) AddEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, uint32 cookie) RemoveEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, DIRECTMANIPULATION_INPUT_MODE mode) SetInputMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self, DIRECTMANIPULATION_INPUT_MODE mode) SetUpdateMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport self) Abandon;
			}
		}
		[CRepr]
		public struct IDirectManipulationViewport2 : IDirectManipulationViewport
		{
			public const new Guid IID = .(0x923ccaac, 0x61e1, 0x4385, 0xb7, 0x26, 0x01, 0x7a, 0xf1, 0x89, 0x88, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddBehavior(ref IUnknown behavior, out uint32 cookie) mut => VT.AddBehavior(ref this, ref behavior, out cookie);
			public HRESULT RemoveBehavior(uint32 cookie) mut => VT.RemoveBehavior(ref this, cookie);
			public HRESULT RemoveAllBehaviors() mut => VT.RemoveAllBehaviors(ref this);

			[CRepr]
			public struct VTable : IDirectManipulationViewport.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport2 self, ref IUnknown behavior, out uint32 cookie) AddBehavior;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport2 self, uint32 cookie) RemoveBehavior;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewport2 self) RemoveAllBehaviors;
			}
		}
		[CRepr]
		public struct IDirectManipulationViewportEventHandler : IUnknown
		{
			public const new Guid IID = .(0x952121da, 0xd69f, 0x45f9, 0xb0, 0xf9, 0xf2, 0x39, 0x44, 0x32, 0x1a, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnViewportStatusChanged(ref IDirectManipulationViewport viewport, DIRECTMANIPULATION_STATUS current, DIRECTMANIPULATION_STATUS previous) mut => VT.OnViewportStatusChanged(ref this, ref viewport, current, previous);
			public HRESULT OnViewportUpdated(ref IDirectManipulationViewport viewport) mut => VT.OnViewportUpdated(ref this, ref viewport);
			public HRESULT OnContentUpdated(ref IDirectManipulationViewport viewport, ref IDirectManipulationContent content) mut => VT.OnContentUpdated(ref this, ref viewport, ref content);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewportEventHandler self, ref IDirectManipulationViewport viewport, DIRECTMANIPULATION_STATUS current, DIRECTMANIPULATION_STATUS previous) OnViewportStatusChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewportEventHandler self, ref IDirectManipulationViewport viewport) OnViewportUpdated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationViewportEventHandler self, ref IDirectManipulationViewport viewport, ref IDirectManipulationContent content) OnContentUpdated;
			}
		}
		[CRepr]
		public struct IDirectManipulationContent : IUnknown
		{
			public const new Guid IID = .(0xb89962cb, 0x3d89, 0x442b, 0xbb, 0x58, 0x50, 0x98, 0xfa, 0x0f, 0x9f, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetContentRect(out RECT contentSize) mut => VT.GetContentRect(ref this, out contentSize);
			public HRESULT SetContentRect(in RECT contentSize) mut => VT.SetContentRect(ref this, contentSize);
			public HRESULT GetViewport(in Guid riid, void** object) mut => VT.GetViewport(ref this, riid, object);
			public HRESULT GetTag(in Guid riid, void** object, uint32* id) mut => VT.GetTag(ref this, riid, object, id);
			public HRESULT SetTag(IUnknown* object, uint32 id) mut => VT.SetTag(ref this, object, id);
			public HRESULT GetOutputTransform(float* matrix, uint32 pointCount) mut => VT.GetOutputTransform(ref this, matrix, pointCount);
			public HRESULT GetContentTransform(float* matrix, uint32 pointCount) mut => VT.GetContentTransform(ref this, matrix, pointCount);
			public HRESULT SyncContentTransform(float* matrix, uint32 pointCount) mut => VT.SyncContentTransform(ref this, matrix, pointCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationContent self, out RECT contentSize) GetContentRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationContent self, in RECT contentSize) SetContentRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationContent self, in Guid riid, void** object) GetViewport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationContent self, in Guid riid, void** object, uint32* id) GetTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationContent self, IUnknown* object, uint32 id) SetTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationContent self, float* matrix, uint32 pointCount) GetOutputTransform;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationContent self, float* matrix, uint32 pointCount) GetContentTransform;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationContent self, float* matrix, uint32 pointCount) SyncContentTransform;
			}
		}
		[CRepr]
		public struct IDirectManipulationPrimaryContent : IUnknown
		{
			public const new Guid IID = .(0xc12851e4, 0x1698, 0x4625, 0xb9, 0xb1, 0x7c, 0xa3, 0xec, 0x18, 0x63, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSnapInterval(DIRECTMANIPULATION_MOTION_TYPES motion, float interval, float offset) mut => VT.SetSnapInterval(ref this, motion, interval, offset);
			public HRESULT SetSnapPoints(DIRECTMANIPULATION_MOTION_TYPES motion, float* points, uint32 pointCount) mut => VT.SetSnapPoints(ref this, motion, points, pointCount);
			public HRESULT SetSnapType(DIRECTMANIPULATION_MOTION_TYPES motion, DIRECTMANIPULATION_SNAPPOINT_TYPE type) mut => VT.SetSnapType(ref this, motion, type);
			public HRESULT SetSnapCoordinate(DIRECTMANIPULATION_MOTION_TYPES motion, DIRECTMANIPULATION_SNAPPOINT_COORDINATE coordinate, float origin) mut => VT.SetSnapCoordinate(ref this, motion, coordinate, origin);
			public HRESULT SetZoomBoundaries(float zoomMinimum, float zoomMaximum) mut => VT.SetZoomBoundaries(ref this, zoomMinimum, zoomMaximum);
			public HRESULT SetHorizontalAlignment(DIRECTMANIPULATION_HORIZONTALALIGNMENT alignment) mut => VT.SetHorizontalAlignment(ref this, alignment);
			public HRESULT SetVerticalAlignment(DIRECTMANIPULATION_VERTICALALIGNMENT alignment) mut => VT.SetVerticalAlignment(ref this, alignment);
			public HRESULT GetInertiaEndTransform(float* matrix, uint32 pointCount) mut => VT.GetInertiaEndTransform(ref this, matrix, pointCount);
			public HRESULT GetCenterPoint(out float centerX, out float centerY) mut => VT.GetCenterPoint(ref this, out centerX, out centerY);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationPrimaryContent self, DIRECTMANIPULATION_MOTION_TYPES motion, float interval, float offset) SetSnapInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationPrimaryContent self, DIRECTMANIPULATION_MOTION_TYPES motion, float* points, uint32 pointCount) SetSnapPoints;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationPrimaryContent self, DIRECTMANIPULATION_MOTION_TYPES motion, DIRECTMANIPULATION_SNAPPOINT_TYPE type) SetSnapType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationPrimaryContent self, DIRECTMANIPULATION_MOTION_TYPES motion, DIRECTMANIPULATION_SNAPPOINT_COORDINATE coordinate, float origin) SetSnapCoordinate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationPrimaryContent self, float zoomMinimum, float zoomMaximum) SetZoomBoundaries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationPrimaryContent self, DIRECTMANIPULATION_HORIZONTALALIGNMENT alignment) SetHorizontalAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationPrimaryContent self, DIRECTMANIPULATION_VERTICALALIGNMENT alignment) SetVerticalAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationPrimaryContent self, float* matrix, uint32 pointCount) GetInertiaEndTransform;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationPrimaryContent self, out float centerX, out float centerY) GetCenterPoint;
			}
		}
		[CRepr]
		public struct IDirectManipulationDragDropEventHandler : IUnknown
		{
			public const new Guid IID = .(0x1fa11b10, 0x701b, 0x41ae, 0xb5, 0xf2, 0x49, 0xe3, 0x6b, 0xd5, 0x95, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDragDropStatusChange(ref IDirectManipulationViewport2 viewport, DIRECTMANIPULATION_DRAG_DROP_STATUS current, DIRECTMANIPULATION_DRAG_DROP_STATUS previous) mut => VT.OnDragDropStatusChange(ref this, ref viewport, current, previous);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationDragDropEventHandler self, ref IDirectManipulationViewport2 viewport, DIRECTMANIPULATION_DRAG_DROP_STATUS current, DIRECTMANIPULATION_DRAG_DROP_STATUS previous) OnDragDropStatusChange;
			}
		}
		[CRepr]
		public struct IDirectManipulationDragDropBehavior : IUnknown
		{
			public const new Guid IID = .(0x814b5af5, 0xc2c8, 0x4270, 0xa9, 0xb7, 0xa1, 0x98, 0xce, 0x8d, 0x02, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetConfiguration(DIRECTMANIPULATION_DRAG_DROP_CONFIGURATION configuration) mut => VT.SetConfiguration(ref this, configuration);
			public HRESULT GetStatus(out DIRECTMANIPULATION_DRAG_DROP_STATUS status) mut => VT.GetStatus(ref this, out status);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationDragDropBehavior self, DIRECTMANIPULATION_DRAG_DROP_CONFIGURATION configuration) SetConfiguration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationDragDropBehavior self, out DIRECTMANIPULATION_DRAG_DROP_STATUS status) GetStatus;
			}
		}
		[CRepr]
		public struct IDirectManipulationInteractionEventHandler : IUnknown
		{
			public const new Guid IID = .(0xe43f45b8, 0x42b4, 0x403e, 0xb1, 0xf2, 0x27, 0x3b, 0x8f, 0x51, 0x08, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnInteraction(ref IDirectManipulationViewport2 viewport, DIRECTMANIPULATION_INTERACTION_TYPE interaction) mut => VT.OnInteraction(ref this, ref viewport, interaction);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationInteractionEventHandler self, ref IDirectManipulationViewport2 viewport, DIRECTMANIPULATION_INTERACTION_TYPE interaction) OnInteraction;
			}
		}
		[CRepr]
		public struct IDirectManipulationFrameInfoProvider : IUnknown
		{
			public const new Guid IID = .(0xfb759dba, 0x6f4c, 0x4c01, 0x87, 0x4e, 0x19, 0xc8, 0xa0, 0x59, 0x07, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNextFrameInfo(out uint64 time, out uint64 processTime, out uint64 compositionTime) mut => VT.GetNextFrameInfo(ref this, out time, out processTime, out compositionTime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationFrameInfoProvider self, out uint64 time, out uint64 processTime, out uint64 compositionTime) GetNextFrameInfo;
			}
		}
		[CRepr]
		public struct IDirectManipulationCompositor : IUnknown
		{
			public const new Guid IID = .(0x537a0825, 0x0387, 0x4efa, 0xb6, 0x2f, 0x71, 0xeb, 0x1f, 0x08, 0x5a, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddContent(ref IDirectManipulationContent content, IUnknown* device, IUnknown* parentVisual, IUnknown* childVisual) mut => VT.AddContent(ref this, ref content, device, parentVisual, childVisual);
			public HRESULT RemoveContent(ref IDirectManipulationContent content) mut => VT.RemoveContent(ref this, ref content);
			public HRESULT SetUpdateManager(ref IDirectManipulationUpdateManager updateManager) mut => VT.SetUpdateManager(ref this, ref updateManager);
			public HRESULT Flush() mut => VT.Flush(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationCompositor self, ref IDirectManipulationContent content, IUnknown* device, IUnknown* parentVisual, IUnknown* childVisual) AddContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationCompositor self, ref IDirectManipulationContent content) RemoveContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationCompositor self, ref IDirectManipulationUpdateManager updateManager) SetUpdateManager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationCompositor self) Flush;
			}
		}
		[CRepr]
		public struct IDirectManipulationCompositor2 : IDirectManipulationCompositor
		{
			public const new Guid IID = .(0xd38c7822, 0xf1cb, 0x43cb, 0xb4, 0xb9, 0xac, 0x0c, 0x76, 0x7a, 0x41, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddContentWithCrossProcessChaining(ref IDirectManipulationPrimaryContent content, IUnknown* device, IUnknown* parentVisual, IUnknown* childVisual) mut => VT.AddContentWithCrossProcessChaining(ref this, ref content, device, parentVisual, childVisual);

			[CRepr]
			public struct VTable : IDirectManipulationCompositor.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationCompositor2 self, ref IDirectManipulationPrimaryContent content, IUnknown* device, IUnknown* parentVisual, IUnknown* childVisual) AddContentWithCrossProcessChaining;
			}
		}
		[CRepr]
		public struct IDirectManipulationUpdateHandler : IUnknown
		{
			public const new Guid IID = .(0x790b6337, 0x64f8, 0x4ff5, 0xa2, 0x69, 0xb3, 0x2b, 0xc2, 0xaf, 0x27, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Update() mut => VT.Update(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationUpdateHandler self) Update;
			}
		}
		[CRepr]
		public struct IDirectManipulationUpdateManager : IUnknown
		{
			public const new Guid IID = .(0xb0ae62fd, 0xbe34, 0x46e7, 0x9c, 0xaa, 0xd3, 0x61, 0xfa, 0xcb, 0xb9, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterWaitHandleCallback(HANDLE handle, ref IDirectManipulationUpdateHandler eventHandler, out uint32 cookie) mut => VT.RegisterWaitHandleCallback(ref this, handle, ref eventHandler, out cookie);
			public HRESULT UnregisterWaitHandleCallback(uint32 cookie) mut => VT.UnregisterWaitHandleCallback(ref this, cookie);
			public HRESULT Update(IDirectManipulationFrameInfoProvider* frameInfo) mut => VT.Update(ref this, frameInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationUpdateManager self, HANDLE handle, ref IDirectManipulationUpdateHandler eventHandler, out uint32 cookie) RegisterWaitHandleCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationUpdateManager self, uint32 cookie) UnregisterWaitHandleCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationUpdateManager self, IDirectManipulationFrameInfoProvider* frameInfo) Update;
			}
		}
		[CRepr]
		public struct IDirectManipulationAutoScrollBehavior : IUnknown
		{
			public const new Guid IID = .(0x6d5954d4, 0x2003, 0x4356, 0x9b, 0x31, 0xd0, 0x51, 0xc9, 0xff, 0x0a, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetConfiguration(DIRECTMANIPULATION_MOTION_TYPES motionTypes, DIRECTMANIPULATION_AUTOSCROLL_CONFIGURATION scrollMotion) mut => VT.SetConfiguration(ref this, motionTypes, scrollMotion);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationAutoScrollBehavior self, DIRECTMANIPULATION_MOTION_TYPES motionTypes, DIRECTMANIPULATION_AUTOSCROLL_CONFIGURATION scrollMotion) SetConfiguration;
			}
		}
		[CRepr]
		public struct IDirectManipulationDeferContactService : IUnknown
		{
			public const new Guid IID = .(0x652d5c71, 0xfe60, 0x4a98, 0xbe, 0x70, 0xe5, 0xf2, 0x12, 0x91, 0xe7, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DeferContact(uint32 pointerId, uint32 timeout) mut => VT.DeferContact(ref this, pointerId, timeout);
			public HRESULT CancelContact(uint32 pointerId) mut => VT.CancelContact(ref this, pointerId);
			public HRESULT CancelDeferral(uint32 pointerId) mut => VT.CancelDeferral(ref this, pointerId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationDeferContactService self, uint32 pointerId, uint32 timeout) DeferContact;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationDeferContactService self, uint32 pointerId) CancelContact;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectManipulationDeferContactService self, uint32 pointerId) CancelDeferral;
			}
		}
		
	}
}
