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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDevice(IDXGIDevice* device) mut
			{
				return VT.SetDevice(&this, device);
			}
			public HRESULT BeginDraw(RECT updateRect, IDXGISurface** surface, POINT* offset) mut
			{
				return VT.BeginDraw(&this, updateRect, surface, offset);
			}
			public HRESULT EndDraw() mut
			{
				return VT.EndDraw(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISurfaceImageSourceNative *self, IDXGIDevice* device) SetDevice;
				public new function HRESULT(ISurfaceImageSourceNative *self, RECT updateRect, IDXGISurface** surface, POINT* offset) BeginDraw;
				public new function HRESULT(ISurfaceImageSourceNative *self) EndDraw;
			}
		}
		[CRepr]
		public struct IVirtualSurfaceUpdatesCallbackNative : IUnknown
		{
			public const new Guid IID = .(0xdbf2e947, 0x8e6c, 0x4254, 0x9e, 0xee, 0x77, 0x38, 0xf7, 0x13, 0x86, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdatesNeeded() mut
			{
				return VT.UpdatesNeeded(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVirtualSurfaceUpdatesCallbackNative *self) UpdatesNeeded;
			}
		}
		[CRepr]
		public struct IVirtualSurfaceImageSourceNative : ISurfaceImageSourceNative
		{
			public const new Guid IID = .(0xe9550983, 0x360b, 0x4f53, 0xb3, 0x91, 0xaf, 0xd6, 0x95, 0x07, 0x86, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Invalidate(RECT updateRect) mut
			{
				return VT.Invalidate(&this, updateRect);
			}
			public HRESULT GetUpdateRectCount(uint32* count) mut
			{
				return VT.GetUpdateRectCount(&this, count);
			}
			public HRESULT GetUpdateRects(RECT* updates, uint32 count) mut
			{
				return VT.GetUpdateRects(&this, updates, count);
			}
			public HRESULT GetVisibleBounds(RECT* bounds) mut
			{
				return VT.GetVisibleBounds(&this, bounds);
			}
			public HRESULT RegisterForUpdatesNeeded(IVirtualSurfaceUpdatesCallbackNative* callback) mut
			{
				return VT.RegisterForUpdatesNeeded(&this, callback);
			}
			public HRESULT Resize(int32 newWidth, int32 newHeight) mut
			{
				return VT.Resize(&this, newWidth, newHeight);
			}
			[CRepr]
			public struct VTable : ISurfaceImageSourceNative.VTable
			{
				public new function HRESULT(IVirtualSurfaceImageSourceNative *self, RECT updateRect) Invalidate;
				public new function HRESULT(IVirtualSurfaceImageSourceNative *self, uint32* count) GetUpdateRectCount;
				public new function HRESULT(IVirtualSurfaceImageSourceNative *self, RECT* updates, uint32 count) GetUpdateRects;
				public new function HRESULT(IVirtualSurfaceImageSourceNative *self, RECT* bounds) GetVisibleBounds;
				public new function HRESULT(IVirtualSurfaceImageSourceNative *self, IVirtualSurfaceUpdatesCallbackNative* callback) RegisterForUpdatesNeeded;
				public new function HRESULT(IVirtualSurfaceImageSourceNative *self, int32 newWidth, int32 newHeight) Resize;
			}
		}
		[CRepr]
		public struct ISwapChainBackgroundPanelNative : IUnknown
		{
			public const new Guid IID = .(0x43bebd4e, 0xadd5, 0x4035, 0x8f, 0x85, 0x56, 0x08, 0xd0, 0x8e, 0x9d, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSwapChain(IDXGISwapChain* swapChain) mut
			{
				return VT.SetSwapChain(&this, swapChain);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISwapChainBackgroundPanelNative *self, IDXGISwapChain* swapChain) SetSwapChain;
			}
		}
		[CRepr]
		public struct ISurfaceImageSourceManagerNative : IUnknown
		{
			public const new Guid IID = .(0x4c8798b7, 0x1d88, 0x4a0f, 0xb5, 0x9b, 0xb9, 0x3f, 0x60, 0x0d, 0xe8, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FlushAllSurfacesWithDevice(IUnknown* device) mut
			{
				return VT.FlushAllSurfacesWithDevice(&this, device);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISurfaceImageSourceManagerNative *self, IUnknown* device) FlushAllSurfacesWithDevice;
			}
		}
		[CRepr]
		public struct ISurfaceImageSourceNativeWithD2D : IUnknown
		{
			public const new Guid IID = .(0x54298223, 0x41e1, 0x4a41, 0x9c, 0x08, 0x02, 0xe8, 0x25, 0x68, 0x64, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDevice(IUnknown* device) mut
			{
				return VT.SetDevice(&this, device);
			}
			public HRESULT BeginDraw(RECT* updateRect, Guid* iid, void** updateObject, POINT* offset) mut
			{
				return VT.BeginDraw(&this, updateRect, iid, updateObject, offset);
			}
			public HRESULT EndDraw() mut
			{
				return VT.EndDraw(&this);
			}
			public HRESULT SuspendDraw() mut
			{
				return VT.SuspendDraw(&this);
			}
			public HRESULT ResumeDraw() mut
			{
				return VT.ResumeDraw(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISurfaceImageSourceNativeWithD2D *self, IUnknown* device) SetDevice;
				public new function HRESULT(ISurfaceImageSourceNativeWithD2D *self, RECT* updateRect, Guid* iid, void** updateObject, POINT* offset) BeginDraw;
				public new function HRESULT(ISurfaceImageSourceNativeWithD2D *self) EndDraw;
				public new function HRESULT(ISurfaceImageSourceNativeWithD2D *self) SuspendDraw;
				public new function HRESULT(ISurfaceImageSourceNativeWithD2D *self) ResumeDraw;
			}
		}
		[CRepr]
		public struct ISwapChainPanelNative : IUnknown
		{
			public const new Guid IID = .(0xf92f19d2, 0x3ade, 0x45a6, 0xa2, 0x0c, 0xf6, 0xf1, 0xea, 0x90, 0x55, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSwapChain(IDXGISwapChain* swapChain) mut
			{
				return VT.SetSwapChain(&this, swapChain);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISwapChainPanelNative *self, IDXGISwapChain* swapChain) SetSwapChain;
			}
		}
		[CRepr]
		public struct ISwapChainPanelNative2 : ISwapChainPanelNative
		{
			public const new Guid IID = .(0xd5a2f60c, 0x37b2, 0x44a2, 0x93, 0x7b, 0x8d, 0x8e, 0xb9, 0x72, 0x68, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSwapChainHandle(HANDLE swapChainHandle) mut
			{
				return VT.SetSwapChainHandle(&this, swapChainHandle);
			}
			[CRepr]
			public struct VTable : ISwapChainPanelNative.VTable
			{
				public new function HRESULT(ISwapChainPanelNative2 *self, HANDLE swapChainHandle) SetSwapChainHandle;
			}
		}
		[CRepr]
		public struct IDesktopWindowXamlSourceNative : IUnknown
		{
			public const new Guid IID = .(0x3cbcf1bf, 0x2f76, 0x4e9c, 0x96, 0xab, 0xe8, 0x4b, 0x37, 0x97, 0x25, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AttachToWindow(HWND parentWnd) mut
			{
				return VT.AttachToWindow(&this, parentWnd);
			}
			public HRESULT get_WindowHandle(HWND* hWnd) mut
			{
				return VT.get_WindowHandle(&this, hWnd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDesktopWindowXamlSourceNative *self, HWND parentWnd) AttachToWindow;
				public new function HRESULT(IDesktopWindowXamlSourceNative *self, HWND* hWnd) get_WindowHandle;
			}
		}
		[CRepr]
		public struct IDesktopWindowXamlSourceNative2 : IDesktopWindowXamlSourceNative
		{
			public const new Guid IID = .(0xe3dcd8c7, 0x3057, 0x4692, 0x99, 0xc3, 0x7b, 0x77, 0x20, 0xaf, 0xda, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PreTranslateMessage(MSG* message, BOOL* result) mut
			{
				return VT.PreTranslateMessage(&this, message, result);
			}
			[CRepr]
			public struct VTable : IDesktopWindowXamlSourceNative.VTable
			{
				public new function HRESULT(IDesktopWindowXamlSourceNative2 *self, MSG* message, BOOL* result) PreTranslateMessage;
			}
		}
		[CRepr]
		public struct IReferenceTrackerTarget : IUnknown
		{
			public const new Guid IID = .(0x64bd43f8, 0xbfee, 0x4ec4, 0xb7, 0xeb, 0x29, 0x35, 0x15, 0x8d, 0xae, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 AddRefFromReferenceTracker() mut
			{
				return VT.AddRefFromReferenceTracker(&this);
			}
			public uint32 ReleaseFromReferenceTracker() mut
			{
				return VT.ReleaseFromReferenceTracker(&this);
			}
			public HRESULT Peg() mut
			{
				return VT.Peg(&this);
			}
			public HRESULT Unpeg() mut
			{
				return VT.Unpeg(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(IReferenceTrackerTarget *self) AddRefFromReferenceTracker;
				public new function uint32(IReferenceTrackerTarget *self) ReleaseFromReferenceTracker;
				public new function HRESULT(IReferenceTrackerTarget *self) Peg;
				public new function HRESULT(IReferenceTrackerTarget *self) Unpeg;
			}
		}
		[CRepr]
		public struct IReferenceTracker : IUnknown
		{
			public const new Guid IID = .(0x11d3b13a, 0x180e, 0x4789, 0xa8, 0xbe, 0x77, 0x12, 0x88, 0x28, 0x93, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectFromTrackerSource() mut
			{
				return VT.ConnectFromTrackerSource(&this);
			}
			public HRESULT DisconnectFromTrackerSource() mut
			{
				return VT.DisconnectFromTrackerSource(&this);
			}
			public HRESULT FindTrackerTargets(IFindReferenceTargetsCallback* callback) mut
			{
				return VT.FindTrackerTargets(&this, callback);
			}
			public HRESULT GetReferenceTrackerManager(IReferenceTrackerManager** value) mut
			{
				return VT.GetReferenceTrackerManager(&this, value);
			}
			public HRESULT AddRefFromTrackerSource() mut
			{
				return VT.AddRefFromTrackerSource(&this);
			}
			public HRESULT ReleaseFromTrackerSource() mut
			{
				return VT.ReleaseFromTrackerSource(&this);
			}
			public HRESULT PegFromTrackerSource() mut
			{
				return VT.PegFromTrackerSource(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IReferenceTracker *self) ConnectFromTrackerSource;
				public new function HRESULT(IReferenceTracker *self) DisconnectFromTrackerSource;
				public new function HRESULT(IReferenceTracker *self, IFindReferenceTargetsCallback* callback) FindTrackerTargets;
				public new function HRESULT(IReferenceTracker *self, IReferenceTrackerManager** value) GetReferenceTrackerManager;
				public new function HRESULT(IReferenceTracker *self) AddRefFromTrackerSource;
				public new function HRESULT(IReferenceTracker *self) ReleaseFromTrackerSource;
				public new function HRESULT(IReferenceTracker *self) PegFromTrackerSource;
			}
		}
		[CRepr]
		public struct IReferenceTrackerManager : IUnknown
		{
			public const new Guid IID = .(0x3cf184b4, 0x7ccb, 0x4dda, 0x84, 0x55, 0x7e, 0x6c, 0xe9, 0x9a, 0x32, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReferenceTrackingStarted() mut
			{
				return VT.ReferenceTrackingStarted(&this);
			}
			public HRESULT FindTrackerTargetsCompleted(uint8 findFailed) mut
			{
				return VT.FindTrackerTargetsCompleted(&this, findFailed);
			}
			public HRESULT ReferenceTrackingCompleted() mut
			{
				return VT.ReferenceTrackingCompleted(&this);
			}
			public HRESULT SetReferenceTrackerHost(IReferenceTrackerHost* value) mut
			{
				return VT.SetReferenceTrackerHost(&this, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IReferenceTrackerManager *self) ReferenceTrackingStarted;
				public new function HRESULT(IReferenceTrackerManager *self, uint8 findFailed) FindTrackerTargetsCompleted;
				public new function HRESULT(IReferenceTrackerManager *self) ReferenceTrackingCompleted;
				public new function HRESULT(IReferenceTrackerManager *self, IReferenceTrackerHost* value) SetReferenceTrackerHost;
			}
		}
		[CRepr]
		public struct IFindReferenceTargetsCallback : IUnknown
		{
			public const new Guid IID = .(0x04b3486c, 0x4687, 0x4229, 0x8d, 0x14, 0x50, 0x5a, 0xb5, 0x84, 0xdd, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FoundTrackerTarget(IReferenceTrackerTarget* target) mut
			{
				return VT.FoundTrackerTarget(&this, target);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFindReferenceTargetsCallback *self, IReferenceTrackerTarget* target) FoundTrackerTarget;
			}
		}
		[CRepr]
		public struct IReferenceTrackerHost : IUnknown
		{
			public const new Guid IID = .(0x29a71c6a, 0x3c42, 0x4416, 0xa3, 0x9d, 0xe2, 0x82, 0x5a, 0x07, 0xa7, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DisconnectUnusedReferenceSources(XAML_REFERENCETRACKER_DISCONNECT options) mut
			{
				return VT.DisconnectUnusedReferenceSources(&this, options);
			}
			public HRESULT ReleaseDisconnectedReferenceSources() mut
			{
				return VT.ReleaseDisconnectedReferenceSources(&this);
			}
			public HRESULT NotifyEndOfReferenceTrackingOnThread() mut
			{
				return VT.NotifyEndOfReferenceTrackingOnThread(&this);
			}
			public HRESULT GetTrackerTarget(IUnknown* unknown, IReferenceTrackerTarget** newReference) mut
			{
				return VT.GetTrackerTarget(&this, unknown, newReference);
			}
			public HRESULT AddMemoryPressure(uint64 bytesAllocated) mut
			{
				return VT.AddMemoryPressure(&this, bytesAllocated);
			}
			public HRESULT RemoveMemoryPressure(uint64 bytesAllocated) mut
			{
				return VT.RemoveMemoryPressure(&this, bytesAllocated);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IReferenceTrackerHost *self, XAML_REFERENCETRACKER_DISCONNECT options) DisconnectUnusedReferenceSources;
				public new function HRESULT(IReferenceTrackerHost *self) ReleaseDisconnectedReferenceSources;
				public new function HRESULT(IReferenceTrackerHost *self) NotifyEndOfReferenceTrackingOnThread;
				public new function HRESULT(IReferenceTrackerHost *self, IUnknown* unknown, IReferenceTrackerTarget** newReference) GetTrackerTarget;
				public new function HRESULT(IReferenceTrackerHost *self, uint64 bytesAllocated) AddMemoryPressure;
				public new function HRESULT(IReferenceTrackerHost *self, uint64 bytesAllocated) RemoveMemoryPressure;
			}
		}
		[CRepr]
		public struct IReferenceTrackerExtension : IUnknown
		{
			public const new Guid IID = .(0x4e897caa, 0x59d5, 0x4613, 0x8f, 0x8c, 0xf7, 0xeb, 0xd1, 0xf3, 0x99, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct ITrackerOwner : IUnknown
		{
			public const new Guid IID = .(0xeb24c20b, 0x9816, 0x4ac7, 0x8c, 0xff, 0x36, 0xf6, 0x7a, 0x11, 0x8f, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTrackerHandle(TrackerHandle__** returnValue) mut
			{
				return VT.CreateTrackerHandle(&this, returnValue);
			}
			public HRESULT DeleteTrackerHandle(TrackerHandle__* handle) mut
			{
				return VT.DeleteTrackerHandle(&this, handle);
			}
			public HRESULT SetTrackerValue(TrackerHandle__* handle, IUnknown* value) mut
			{
				return VT.SetTrackerValue(&this, handle, value);
			}
			public uint8 TryGetSafeTrackerValue(TrackerHandle__* handle, IUnknown** returnValue) mut
			{
				return VT.TryGetSafeTrackerValue(&this, handle, returnValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITrackerOwner *self, TrackerHandle__** returnValue) CreateTrackerHandle;
				public new function HRESULT(ITrackerOwner *self, TrackerHandle__* handle) DeleteTrackerHandle;
				public new function HRESULT(ITrackerOwner *self, TrackerHandle__* handle, IUnknown* value) SetTrackerValue;
				public new function uint8(ITrackerOwner *self, TrackerHandle__* handle, IUnknown** returnValue) TryGetSafeTrackerValue;
			}
		}
		
	}
}
