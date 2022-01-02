using System;

// namespace System.WinRT.Xaml
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 E_SURFACE_CONTENTS_LOST = 2150301728;
		
		// --- Enums ---
		
		public enum XAML_REFERENCETRACKER_DISCONNECT : int32
		{
			DEFAULT = 0,
			SUSPEND = 1,
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
			
			public HRESULT SetDevice(ref IDXGIDevice device) mut => VT.SetDevice(ref this, ref device);
			public HRESULT BeginDraw(RECT updateRect, out IDXGISurface* surface, out POINT offset) mut => VT.BeginDraw(ref this, updateRect, out surface, out offset);
			public HRESULT EndDraw() mut => VT.EndDraw(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurfaceImageSourceNative self, ref IDXGIDevice device) SetDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurfaceImageSourceNative self, RECT updateRect, out IDXGISurface* surface, out POINT offset) BeginDraw;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurfaceImageSourceNative self) EndDraw;
			}
		}
		[CRepr]
		public struct IVirtualSurfaceUpdatesCallbackNative : IUnknown
		{
			public const new Guid IID = .(0xdbf2e947, 0x8e6c, 0x4254, 0x9e, 0xee, 0x77, 0x38, 0xf7, 0x13, 0x86, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdatesNeeded() mut => VT.UpdatesNeeded(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVirtualSurfaceUpdatesCallbackNative self) UpdatesNeeded;
			}
		}
		[CRepr]
		public struct IVirtualSurfaceImageSourceNative : ISurfaceImageSourceNative
		{
			public const new Guid IID = .(0xe9550983, 0x360b, 0x4f53, 0xb3, 0x91, 0xaf, 0xd6, 0x95, 0x07, 0x86, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Invalidate(RECT updateRect) mut => VT.Invalidate(ref this, updateRect);
			public HRESULT GetUpdateRectCount(out uint32 count) mut => VT.GetUpdateRectCount(ref this, out count);
			public HRESULT GetUpdateRects(RECT* updates, uint32 count) mut => VT.GetUpdateRects(ref this, updates, count);
			public HRESULT GetVisibleBounds(out RECT bounds) mut => VT.GetVisibleBounds(ref this, out bounds);
			public HRESULT RegisterForUpdatesNeeded(IVirtualSurfaceUpdatesCallbackNative* callback) mut => VT.RegisterForUpdatesNeeded(ref this, callback);
			public HRESULT Resize(int32 newWidth, int32 newHeight) mut => VT.Resize(ref this, newWidth, newHeight);

			[CRepr]
			public struct VTable : ISurfaceImageSourceNative.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVirtualSurfaceImageSourceNative self, RECT updateRect) Invalidate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVirtualSurfaceImageSourceNative self, out uint32 count) GetUpdateRectCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVirtualSurfaceImageSourceNative self, RECT* updates, uint32 count) GetUpdateRects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVirtualSurfaceImageSourceNative self, out RECT bounds) GetVisibleBounds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVirtualSurfaceImageSourceNative self, IVirtualSurfaceUpdatesCallbackNative* callback) RegisterForUpdatesNeeded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVirtualSurfaceImageSourceNative self, int32 newWidth, int32 newHeight) Resize;
			}
		}
		[CRepr]
		public struct ISwapChainBackgroundPanelNative : IUnknown
		{
			public const new Guid IID = .(0x43bebd4e, 0xadd5, 0x4035, 0x8f, 0x85, 0x56, 0x08, 0xd0, 0x8e, 0x9d, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSwapChain(ref IDXGISwapChain swapChain) mut => VT.SetSwapChain(ref this, ref swapChain);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISwapChainBackgroundPanelNative self, ref IDXGISwapChain swapChain) SetSwapChain;
			}
		}
		[CRepr]
		public struct ISurfaceImageSourceManagerNative : IUnknown
		{
			public const new Guid IID = .(0x4c8798b7, 0x1d88, 0x4a0f, 0xb5, 0x9b, 0xb9, 0x3f, 0x60, 0x0d, 0xe8, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FlushAllSurfacesWithDevice(ref IUnknown device) mut => VT.FlushAllSurfacesWithDevice(ref this, ref device);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurfaceImageSourceManagerNative self, ref IUnknown device) FlushAllSurfacesWithDevice;
			}
		}
		[CRepr]
		public struct ISurfaceImageSourceNativeWithD2D : IUnknown
		{
			public const new Guid IID = .(0x54298223, 0x41e1, 0x4a41, 0x9c, 0x08, 0x02, 0xe8, 0x25, 0x68, 0x64, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDevice(ref IUnknown device) mut => VT.SetDevice(ref this, ref device);
			public HRESULT BeginDraw(in RECT updateRect, in Guid iid, void** updateObject, out POINT offset) mut => VT.BeginDraw(ref this, updateRect, iid, updateObject, out offset);
			public HRESULT EndDraw() mut => VT.EndDraw(ref this);
			public HRESULT SuspendDraw() mut => VT.SuspendDraw(ref this);
			public HRESULT ResumeDraw() mut => VT.ResumeDraw(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurfaceImageSourceNativeWithD2D self, ref IUnknown device) SetDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurfaceImageSourceNativeWithD2D self, in RECT updateRect, in Guid iid, void** updateObject, out POINT offset) BeginDraw;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurfaceImageSourceNativeWithD2D self) EndDraw;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurfaceImageSourceNativeWithD2D self) SuspendDraw;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurfaceImageSourceNativeWithD2D self) ResumeDraw;
			}
		}
		[CRepr]
		public struct ISwapChainPanelNative : IUnknown
		{
			public const new Guid IID = .(0xf92f19d2, 0x3ade, 0x45a6, 0xa2, 0x0c, 0xf6, 0xf1, 0xea, 0x90, 0x55, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSwapChain(ref IDXGISwapChain swapChain) mut => VT.SetSwapChain(ref this, ref swapChain);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISwapChainPanelNative self, ref IDXGISwapChain swapChain) SetSwapChain;
			}
		}
		[CRepr]
		public struct ISwapChainPanelNative2 : ISwapChainPanelNative
		{
			public const new Guid IID = .(0xd5a2f60c, 0x37b2, 0x44a2, 0x93, 0x7b, 0x8d, 0x8e, 0xb9, 0x72, 0x68, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSwapChainHandle(HANDLE swapChainHandle) mut => VT.SetSwapChainHandle(ref this, swapChainHandle);

			[CRepr]
			public struct VTable : ISwapChainPanelNative.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISwapChainPanelNative2 self, HANDLE swapChainHandle) SetSwapChainHandle;
			}
		}
		[CRepr]
		public struct IDesktopWindowXamlSourceNative : IUnknown
		{
			public const new Guid IID = .(0x3cbcf1bf, 0x2f76, 0x4e9c, 0x96, 0xab, 0xe8, 0x4b, 0x37, 0x97, 0x25, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AttachToWindow(HWND parentWnd) mut => VT.AttachToWindow(ref this, parentWnd);
			public HRESULT get_WindowHandle(out HWND hWnd) mut => VT.get_WindowHandle(ref this, out hWnd);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWindowXamlSourceNative self, HWND parentWnd) AttachToWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWindowXamlSourceNative self, out HWND hWnd) get_WindowHandle;
			}
		}
		[CRepr]
		public struct IDesktopWindowXamlSourceNative2 : IDesktopWindowXamlSourceNative
		{
			public const new Guid IID = .(0xe3dcd8c7, 0x3057, 0x4692, 0x99, 0xc3, 0x7b, 0x77, 0x20, 0xaf, 0xda, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PreTranslateMessage(in MSG message, out BOOL result) mut => VT.PreTranslateMessage(ref this, message, out result);

			[CRepr]
			public struct VTable : IDesktopWindowXamlSourceNative.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWindowXamlSourceNative2 self, in MSG message, out BOOL result) PreTranslateMessage;
			}
		}
		[CRepr]
		public struct IReferenceTrackerTarget : IUnknown
		{
			public const new Guid IID = .(0x64bd43f8, 0xbfee, 0x4ec4, 0xb7, 0xeb, 0x29, 0x35, 0x15, 0x8d, 0xae, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 AddRefFromReferenceTracker() mut => VT.AddRefFromReferenceTracker(ref this);
			public uint32 ReleaseFromReferenceTracker() mut => VT.ReleaseFromReferenceTracker(ref this);
			public HRESULT Peg() mut => VT.Peg(ref this);
			public HRESULT Unpeg() mut => VT.Unpeg(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IReferenceTrackerTarget self) AddRefFromReferenceTracker;
				public new function [CallingConvention(.Stdcall)] uint32(ref IReferenceTrackerTarget self) ReleaseFromReferenceTracker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTrackerTarget self) Peg;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTrackerTarget self) Unpeg;
			}
		}
		[CRepr]
		public struct IReferenceTracker : IUnknown
		{
			public const new Guid IID = .(0x11d3b13a, 0x180e, 0x4789, 0xa8, 0xbe, 0x77, 0x12, 0x88, 0x28, 0x93, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectFromTrackerSource() mut => VT.ConnectFromTrackerSource(ref this);
			public HRESULT DisconnectFromTrackerSource() mut => VT.DisconnectFromTrackerSource(ref this);
			public HRESULT FindTrackerTargets(ref IFindReferenceTargetsCallback callback) mut => VT.FindTrackerTargets(ref this, ref callback);
			public HRESULT GetReferenceTrackerManager(out IReferenceTrackerManager* value) mut => VT.GetReferenceTrackerManager(ref this, out value);
			public HRESULT AddRefFromTrackerSource() mut => VT.AddRefFromTrackerSource(ref this);
			public HRESULT ReleaseFromTrackerSource() mut => VT.ReleaseFromTrackerSource(ref this);
			public HRESULT PegFromTrackerSource() mut => VT.PegFromTrackerSource(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTracker self) ConnectFromTrackerSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTracker self) DisconnectFromTrackerSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTracker self, ref IFindReferenceTargetsCallback callback) FindTrackerTargets;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTracker self, out IReferenceTrackerManager* value) GetReferenceTrackerManager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTracker self) AddRefFromTrackerSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTracker self) ReleaseFromTrackerSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTracker self) PegFromTrackerSource;
			}
		}
		[CRepr]
		public struct IReferenceTrackerManager : IUnknown
		{
			public const new Guid IID = .(0x3cf184b4, 0x7ccb, 0x4dda, 0x84, 0x55, 0x7e, 0x6c, 0xe9, 0x9a, 0x32, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReferenceTrackingStarted() mut => VT.ReferenceTrackingStarted(ref this);
			public HRESULT FindTrackerTargetsCompleted(uint8 findFailed) mut => VT.FindTrackerTargetsCompleted(ref this, findFailed);
			public HRESULT ReferenceTrackingCompleted() mut => VT.ReferenceTrackingCompleted(ref this);
			public HRESULT SetReferenceTrackerHost(ref IReferenceTrackerHost value) mut => VT.SetReferenceTrackerHost(ref this, ref value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTrackerManager self) ReferenceTrackingStarted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTrackerManager self, uint8 findFailed) FindTrackerTargetsCompleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTrackerManager self) ReferenceTrackingCompleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTrackerManager self, ref IReferenceTrackerHost value) SetReferenceTrackerHost;
			}
		}
		[CRepr]
		public struct IFindReferenceTargetsCallback : IUnknown
		{
			public const new Guid IID = .(0x04b3486c, 0x4687, 0x4229, 0x8d, 0x14, 0x50, 0x5a, 0xb5, 0x84, 0xdd, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FoundTrackerTarget(ref IReferenceTrackerTarget target) mut => VT.FoundTrackerTarget(ref this, ref target);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFindReferenceTargetsCallback self, ref IReferenceTrackerTarget target) FoundTrackerTarget;
			}
		}
		[CRepr]
		public struct IReferenceTrackerHost : IUnknown
		{
			public const new Guid IID = .(0x29a71c6a, 0x3c42, 0x4416, 0xa3, 0x9d, 0xe2, 0x82, 0x5a, 0x07, 0xa7, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DisconnectUnusedReferenceSources(XAML_REFERENCETRACKER_DISCONNECT options) mut => VT.DisconnectUnusedReferenceSources(ref this, options);
			public HRESULT ReleaseDisconnectedReferenceSources() mut => VT.ReleaseDisconnectedReferenceSources(ref this);
			public HRESULT NotifyEndOfReferenceTrackingOnThread() mut => VT.NotifyEndOfReferenceTrackingOnThread(ref this);
			public HRESULT GetTrackerTarget(ref IUnknown unknown, out IReferenceTrackerTarget* newReference) mut => VT.GetTrackerTarget(ref this, ref unknown, out newReference);
			public HRESULT AddMemoryPressure(uint64 bytesAllocated) mut => VT.AddMemoryPressure(ref this, bytesAllocated);
			public HRESULT RemoveMemoryPressure(uint64 bytesAllocated) mut => VT.RemoveMemoryPressure(ref this, bytesAllocated);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTrackerHost self, XAML_REFERENCETRACKER_DISCONNECT options) DisconnectUnusedReferenceSources;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTrackerHost self) ReleaseDisconnectedReferenceSources;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTrackerHost self) NotifyEndOfReferenceTrackingOnThread;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTrackerHost self, ref IUnknown unknown, out IReferenceTrackerTarget* newReference) GetTrackerTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTrackerHost self, uint64 bytesAllocated) AddMemoryPressure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReferenceTrackerHost self, uint64 bytesAllocated) RemoveMemoryPressure;
			}
		}
		[CRepr]
		public struct IReferenceTrackerExtension : IUnknown
		{
			public const new Guid IID = .(0x4e897caa, 0x59d5, 0x4613, 0x8f, 0x8c, 0xf7, 0xeb, 0xd1, 0xf3, 0x99, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable {}
		}
		[CRepr]
		public struct ITrackerOwner : IUnknown
		{
			public const new Guid IID = .(0xeb24c20b, 0x9816, 0x4ac7, 0x8c, 0xff, 0x36, 0xf6, 0x7a, 0x11, 0x8f, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTrackerHandle(out TrackerHandle__* returnValue) mut => VT.CreateTrackerHandle(ref this, out returnValue);
			public HRESULT DeleteTrackerHandle(ref TrackerHandle__ handle) mut => VT.DeleteTrackerHandle(ref this, ref handle);
			public HRESULT SetTrackerValue(ref TrackerHandle__ handle, ref IUnknown value) mut => VT.SetTrackerValue(ref this, ref handle, ref value);
			public uint8 TryGetSafeTrackerValue(ref TrackerHandle__ handle, out IUnknown* returnValue) mut => VT.TryGetSafeTrackerValue(ref this, ref handle, out returnValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrackerOwner self, out TrackerHandle__* returnValue) CreateTrackerHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrackerOwner self, ref TrackerHandle__ handle) DeleteTrackerHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrackerOwner self, ref TrackerHandle__ handle, ref IUnknown value) SetTrackerValue;
				public new function [CallingConvention(.Stdcall)] uint8(ref ITrackerOwner self, ref TrackerHandle__ handle, out IUnknown* returnValue) TryGetSafeTrackerValue;
			}
		}
		
	}
}
