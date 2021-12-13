using System;

// namespace Graphics.DirectComposition
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 COMPOSITIONOBJECT_READ = 1;
		public const int32 COMPOSITIONOBJECT_WRITE = 2;
		public const uint32 DCOMPOSITION_MAX_WAITFORCOMPOSITORCLOCK_OBJECTS = 32;
		public const uint32 COMPOSITION_STATS_MAX_TARGETS = 256;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum DCOMPOSITION_BITMAP_INTERPOLATION_MODE : int32
		{
			DCOMPOSITION_BITMAP_INTERPOLATION_MODE_NEAREST_NEIGHBOR = 0,
			DCOMPOSITION_BITMAP_INTERPOLATION_MODE_LINEAR = 1,
			DCOMPOSITION_BITMAP_INTERPOLATION_MODE_INHERIT = -1,
		}
		[AllowDuplicates]
		public enum DCOMPOSITION_BORDER_MODE : int32
		{
			DCOMPOSITION_BORDER_MODE_SOFT = 0,
			DCOMPOSITION_BORDER_MODE_HARD = 1,
			DCOMPOSITION_BORDER_MODE_INHERIT = -1,
		}
		[AllowDuplicates]
		public enum DCOMPOSITION_COMPOSITE_MODE : int32
		{
			DCOMPOSITION_COMPOSITE_MODE_SOURCE_OVER = 0,
			DCOMPOSITION_COMPOSITE_MODE_DESTINATION_INVERT = 1,
			DCOMPOSITION_COMPOSITE_MODE_MIN_BLEND = 2,
			DCOMPOSITION_COMPOSITE_MODE_INHERIT = -1,
		}
		[AllowDuplicates]
		public enum DCOMPOSITION_BACKFACE_VISIBILITY : int32
		{
			DCOMPOSITION_BACKFACE_VISIBILITY_VISIBLE = 0,
			DCOMPOSITION_BACKFACE_VISIBILITY_HIDDEN = 1,
			DCOMPOSITION_BACKFACE_VISIBILITY_INHERIT = -1,
		}
		[AllowDuplicates]
		public enum DCOMPOSITION_OPACITY_MODE : int32
		{
			DCOMPOSITION_OPACITY_MODE_LAYER = 0,
			DCOMPOSITION_OPACITY_MODE_MULTIPLY = 1,
			DCOMPOSITION_OPACITY_MODE_INHERIT = -1,
		}
		[AllowDuplicates]
		public enum DCOMPOSITION_DEPTH_MODE : int32
		{
			DCOMPOSITION_DEPTH_MODE_TREE = 0,
			DCOMPOSITION_DEPTH_MODE_SPATIAL = 1,
			DCOMPOSITION_DEPTH_MODE_SORTED = 3,
			DCOMPOSITION_DEPTH_MODE_INHERIT = -1,
		}
		[AllowDuplicates]
		public enum COMPOSITION_FRAME_ID_TYPE : int32
		{
			COMPOSITION_FRAME_ID_CREATED = 0,
			COMPOSITION_FRAME_ID_CONFIRMED = 1,
			COMPOSITION_FRAME_ID_COMPLETED = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct DCOMPOSITION_FRAME_STATISTICS
		{
			public LARGE_INTEGER lastFrameTime;
			public DXGI_RATIONAL currentCompositionRate;
			public LARGE_INTEGER currentTime;
			public LARGE_INTEGER timeFrequency;
			public LARGE_INTEGER nextEstimatedFrameTime;
		}
		[CRepr]
		public struct COMPOSITION_FRAME_STATS
		{
			public uint64 startTime;
			public uint64 targetTime;
			public uint64 framePeriod;
		}
		[CRepr]
		public struct COMPOSITION_TARGET_ID
		{
			public LUID displayAdapterLuid;
			public LUID renderAdapterLuid;
			public uint32 vidPnSourceId;
			public uint32 vidPnTargetId;
			public uint32 uniqueId;
		}
		[CRepr]
		public struct COMPOSITION_STATS
		{
			public uint32 presentCount;
			public uint32 refreshCount;
			public uint32 virtualRefreshCount;
			public uint64 time;
		}
		[CRepr]
		public struct COMPOSITION_TARGET_STATS
		{
			public uint32 outstandingPresents;
			public uint64 presentTime;
			public uint64 vblankDuration;
			public COMPOSITION_STATS presentedStats;
			public COMPOSITION_STATS completedStats;
		}
		[CRepr]
		public struct DCompositionInkTrailPoint
		{
			public float x;
			public float y;
			public float radius;
		}
		
		// --- COM Interfaces ---
		
		public struct IDCompositionAnimation {}
		public struct IDCompositionDevice {}
		public struct IDCompositionTarget {}
		public struct IDCompositionVisual {}
		public struct IDCompositionEffect {}
		public struct IDCompositionTransform3D {}
		public struct IDCompositionTransform {}
		public struct IDCompositionTranslateTransform {}
		public struct IDCompositionScaleTransform {}
		public struct IDCompositionRotateTransform {}
		public struct IDCompositionSkewTransform {}
		public struct IDCompositionMatrixTransform {}
		public struct IDCompositionEffectGroup {}
		public struct IDCompositionTranslateTransform3D {}
		public struct IDCompositionScaleTransform3D {}
		public struct IDCompositionRotateTransform3D {}
		public struct IDCompositionMatrixTransform3D {}
		public struct IDCompositionClip {}
		public struct IDCompositionRectangleClip {}
		public struct IDCompositionSurface {}
		public struct IDCompositionVirtualSurface {}
		public struct IDCompositionDevice2 {}
		public struct IDCompositionDesktopDevice {}
		public struct IDCompositionDeviceDebug {}
		public struct IDCompositionSurfaceFactory {}
		public struct IDCompositionVisual2 {}
		public struct IDCompositionVisualDebug {}
		public struct IDCompositionVisual3 {}
		public struct IDCompositionDevice3 {}
		public struct IDCompositionFilterEffect {}
		public struct IDCompositionGaussianBlurEffect {}
		public struct IDCompositionBrightnessEffect {}
		public struct IDCompositionColorMatrixEffect {}
		public struct IDCompositionShadowEffect {}
		public struct IDCompositionHueRotationEffect {}
		public struct IDCompositionSaturationEffect {}
		public struct IDCompositionTurbulenceEffect {}
		public struct IDCompositionLinearTransferEffect {}
		public struct IDCompositionTableTransferEffect {}
		public struct IDCompositionCompositeEffect {}
		public struct IDCompositionBlendEffect {}
		public struct IDCompositionArithmeticCompositeEffect {}
		public struct IDCompositionAffineTransform2DEffect {}
		public struct IDCompositionDelegatedInkTrail {}
		public struct IDCompositionInkTrailDevice {}
		
		// --- Functions ---
		
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionCreateDevice(IDXGIDevice dxgiDevice, Guid* iid, void** dcompositionDevice);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionCreateDevice2(IUnknown renderingDevice, Guid* iid, void** dcompositionDevice);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionCreateDevice3(IUnknown renderingDevice, Guid* iid, void** dcompositionDevice);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionCreateSurfaceHandle(uint32 desiredAccess, SECURITY_ATTRIBUTES* securityAttributes, HANDLE* surfaceHandle);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionAttachMouseWheelToHwnd(IDCompositionVisual visual, HWND hwnd, BOOL enable);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionAttachMouseDragToHwnd(IDCompositionVisual visual, HWND hwnd, BOOL enable);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionGetFrameId(COMPOSITION_FRAME_ID_TYPE frameIdType, uint64* frameId);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionGetStatistics(uint64 frameId, COMPOSITION_FRAME_STATS* frameStats, uint32 targetIdCount, COMPOSITION_TARGET_ID* targetIds, uint32* actualTargetIdCount);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionGetTargetStatistics(uint64 frameId, COMPOSITION_TARGET_ID* targetId, COMPOSITION_TARGET_STATS* targetStats);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionBoostCompositorClock(BOOL enable);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DCompositionWaitForCompositorClock(uint32 count, HANDLE* handles, uint32 timeoutInMs);
		
	}
}
