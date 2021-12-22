using System;

// namespace System.WinRT.Xaml
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 E_SURFACE_CONTENTS_LOST = 2150301728;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum XAML_REFERENCETRACKER_DISCONNECT : int32
		{
			XAML_REFERENCETRACKER_DISCONNECT_DEFAULT = 0,
			XAML_REFERENCETRACKER_DISCONNECT_SUSPEND = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct TrackerHandle__
		{
			public int32 unused;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ISurfaceImageSourceNative : IUnknown
		{
			public const new Guid IID = .(0xf2e9edc1, 0xd307, 0x4525, 0x98, 0x86, 0x0f, 0xaf, 0xaa, 0x44, 0x16, 0x3c);
			
			public function HRESULT(ISurfaceImageSourceNative *self, IDXGIDevice* device) SetDevice;
			public function HRESULT(ISurfaceImageSourceNative *self, RECT updateRect, IDXGISurface** surface, POINT* offset) BeginDraw;
			public function HRESULT(ISurfaceImageSourceNative *self) EndDraw;
		}
		[CRepr]
		public struct IVirtualSurfaceUpdatesCallbackNative : IUnknown
		{
			public const new Guid IID = .(0xdbf2e947, 0x8e6c, 0x4254, 0x9e, 0xee, 0x77, 0x38, 0xf7, 0x13, 0x86, 0xc9);
			
			public function HRESULT(IVirtualSurfaceUpdatesCallbackNative *self) UpdatesNeeded;
		}
		[CRepr]
		public struct IVirtualSurfaceImageSourceNative : ISurfaceImageSourceNative
		{
			public const new Guid IID = .(0xe9550983, 0x360b, 0x4f53, 0xb3, 0x91, 0xaf, 0xd6, 0x95, 0x07, 0x86, 0x91);
			
			public function HRESULT(IVirtualSurfaceImageSourceNative *self, RECT updateRect) Invalidate;
			public function HRESULT(IVirtualSurfaceImageSourceNative *self, uint32* count) GetUpdateRectCount;
			public function HRESULT(IVirtualSurfaceImageSourceNative *self, RECT* updates, uint32 count) GetUpdateRects;
			public function HRESULT(IVirtualSurfaceImageSourceNative *self, RECT* bounds) GetVisibleBounds;
			public function HRESULT(IVirtualSurfaceImageSourceNative *self, IVirtualSurfaceUpdatesCallbackNative* callback) RegisterForUpdatesNeeded;
			public function HRESULT(IVirtualSurfaceImageSourceNative *self, int32 newWidth, int32 newHeight) Resize;
		}
		[CRepr]
		public struct ISwapChainBackgroundPanelNative : IUnknown
		{
			public const new Guid IID = .(0x43bebd4e, 0xadd5, 0x4035, 0x8f, 0x85, 0x56, 0x08, 0xd0, 0x8e, 0x9d, 0xc9);
			
			public function HRESULT(ISwapChainBackgroundPanelNative *self, IDXGISwapChain* swapChain) SetSwapChain;
		}
		[CRepr]
		public struct ISurfaceImageSourceManagerNative : IUnknown
		{
			public const new Guid IID = .(0x4c8798b7, 0x1d88, 0x4a0f, 0xb5, 0x9b, 0xb9, 0x3f, 0x60, 0x0d, 0xe8, 0xc8);
			
			public function HRESULT(ISurfaceImageSourceManagerNative *self, IUnknown* device) FlushAllSurfacesWithDevice;
		}
		[CRepr]
		public struct ISurfaceImageSourceNativeWithD2D : IUnknown
		{
			public const new Guid IID = .(0x54298223, 0x41e1, 0x4a41, 0x9c, 0x08, 0x02, 0xe8, 0x25, 0x68, 0x64, 0xa1);
			
			public function HRESULT(ISurfaceImageSourceNativeWithD2D *self, IUnknown* device) SetDevice;
			public function HRESULT(ISurfaceImageSourceNativeWithD2D *self, RECT* updateRect, Guid* iid, void** updateObject, POINT* offset) BeginDraw;
			public function HRESULT(ISurfaceImageSourceNativeWithD2D *self) EndDraw;
			public function HRESULT(ISurfaceImageSourceNativeWithD2D *self) SuspendDraw;
			public function HRESULT(ISurfaceImageSourceNativeWithD2D *self) ResumeDraw;
		}
		[CRepr]
		public struct ISwapChainPanelNative : IUnknown
		{
			public const new Guid IID = .(0xf92f19d2, 0x3ade, 0x45a6, 0xa2, 0x0c, 0xf6, 0xf1, 0xea, 0x90, 0x55, 0x4b);
			
			public function HRESULT(ISwapChainPanelNative *self, IDXGISwapChain* swapChain) SetSwapChain;
		}
		[CRepr]
		public struct ISwapChainPanelNative2 : ISwapChainPanelNative
		{
			public const new Guid IID = .(0xd5a2f60c, 0x37b2, 0x44a2, 0x93, 0x7b, 0x8d, 0x8e, 0xb9, 0x72, 0x68, 0x21);
			
			public function HRESULT(ISwapChainPanelNative2 *self, HANDLE swapChainHandle) SetSwapChainHandle;
		}
		[CRepr]
		public struct IDesktopWindowXamlSourceNative : IUnknown
		{
			public const new Guid IID = .(0x3cbcf1bf, 0x2f76, 0x4e9c, 0x96, 0xab, 0xe8, 0x4b, 0x37, 0x97, 0x25, 0x54);
			
			public function HRESULT(IDesktopWindowXamlSourceNative *self, HWND parentWnd) AttachToWindow;
			public function HRESULT(IDesktopWindowXamlSourceNative *self, HWND* hWnd) get_WindowHandle;
		}
		[CRepr]
		public struct IDesktopWindowXamlSourceNative2 : IDesktopWindowXamlSourceNative
		{
			public const new Guid IID = .(0xe3dcd8c7, 0x3057, 0x4692, 0x99, 0xc3, 0x7b, 0x77, 0x20, 0xaf, 0xda, 0x31);
			
			public function HRESULT(IDesktopWindowXamlSourceNative2 *self, MSG* message, BOOL* result) PreTranslateMessage;
		}
		[CRepr]
		public struct IReferenceTrackerTarget : IUnknown
		{
			public const new Guid IID = .(0x64bd43f8, 0xbfee, 0x4ec4, 0xb7, 0xeb, 0x29, 0x35, 0x15, 0x8d, 0xae, 0x21);
			
			public function uint32(IReferenceTrackerTarget *self) AddRefFromReferenceTracker;
			public function uint32(IReferenceTrackerTarget *self) ReleaseFromReferenceTracker;
			public function HRESULT(IReferenceTrackerTarget *self) Peg;
			public function HRESULT(IReferenceTrackerTarget *self) Unpeg;
		}
		[CRepr]
		public struct IReferenceTracker : IUnknown
		{
			public const new Guid IID = .(0x11d3b13a, 0x180e, 0x4789, 0xa8, 0xbe, 0x77, 0x12, 0x88, 0x28, 0x93, 0xe6);
			
			public function HRESULT(IReferenceTracker *self) ConnectFromTrackerSource;
			public function HRESULT(IReferenceTracker *self) DisconnectFromTrackerSource;
			public function HRESULT(IReferenceTracker *self, IFindReferenceTargetsCallback* callback) FindTrackerTargets;
			public function HRESULT(IReferenceTracker *self, IReferenceTrackerManager** value) GetReferenceTrackerManager;
			public function HRESULT(IReferenceTracker *self) AddRefFromTrackerSource;
			public function HRESULT(IReferenceTracker *self) ReleaseFromTrackerSource;
			public function HRESULT(IReferenceTracker *self) PegFromTrackerSource;
		}
		[CRepr]
		public struct IReferenceTrackerManager : IUnknown
		{
			public const new Guid IID = .(0x3cf184b4, 0x7ccb, 0x4dda, 0x84, 0x55, 0x7e, 0x6c, 0xe9, 0x9a, 0x32, 0x98);
			
			public function HRESULT(IReferenceTrackerManager *self) ReferenceTrackingStarted;
			public function HRESULT(IReferenceTrackerManager *self, uint8 findFailed) FindTrackerTargetsCompleted;
			public function HRESULT(IReferenceTrackerManager *self) ReferenceTrackingCompleted;
			public function HRESULT(IReferenceTrackerManager *self, IReferenceTrackerHost* value) SetReferenceTrackerHost;
		}
		[CRepr]
		public struct IFindReferenceTargetsCallback : IUnknown
		{
			public const new Guid IID = .(0x04b3486c, 0x4687, 0x4229, 0x8d, 0x14, 0x50, 0x5a, 0xb5, 0x84, 0xdd, 0x88);
			
			public function HRESULT(IFindReferenceTargetsCallback *self, IReferenceTrackerTarget* target) FoundTrackerTarget;
		}
		[CRepr]
		public struct IReferenceTrackerHost : IUnknown
		{
			public const new Guid IID = .(0x29a71c6a, 0x3c42, 0x4416, 0xa3, 0x9d, 0xe2, 0x82, 0x5a, 0x07, 0xa7, 0x73);
			
			public function HRESULT(IReferenceTrackerHost *self, XAML_REFERENCETRACKER_DISCONNECT options) DisconnectUnusedReferenceSources;
			public function HRESULT(IReferenceTrackerHost *self) ReleaseDisconnectedReferenceSources;
			public function HRESULT(IReferenceTrackerHost *self) NotifyEndOfReferenceTrackingOnThread;
			public function HRESULT(IReferenceTrackerHost *self, IUnknown* unknown, IReferenceTrackerTarget** newReference) GetTrackerTarget;
			public function HRESULT(IReferenceTrackerHost *self, uint64 bytesAllocated) AddMemoryPressure;
			public function HRESULT(IReferenceTrackerHost *self, uint64 bytesAllocated) RemoveMemoryPressure;
		}
		[CRepr]
		public struct IReferenceTrackerExtension : IUnknown
		{
			public const new Guid IID = .(0x4e897caa, 0x59d5, 0x4613, 0x8f, 0x8c, 0xf7, 0xeb, 0xd1, 0xf3, 0x99, 0xb0);
			
		}
		[CRepr]
		public struct ITrackerOwner : IUnknown
		{
			public const new Guid IID = .(0xeb24c20b, 0x9816, 0x4ac7, 0x8c, 0xff, 0x36, 0xf6, 0x7a, 0x11, 0x8f, 0x4e);
			
			public function HRESULT(ITrackerOwner *self, TrackerHandle__** returnValue) CreateTrackerHandle;
			public function HRESULT(ITrackerOwner *self, TrackerHandle__* handle) DeleteTrackerHandle;
			public function HRESULT(ITrackerOwner *self, TrackerHandle__* handle, IUnknown* value) SetTrackerValue;
			public function uint8(ITrackerOwner *self, TrackerHandle__* handle, IUnknown** returnValue) TryGetSafeTrackerValue;
		}
		
	}
}
