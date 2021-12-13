using System;

// namespace Graphics.CompositionSwapchain
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum PresentStatisticsKind : int32
		{
			PresentStatisticsKind_PresentStatus = 1,
			PresentStatisticsKind_CompositionFrame = 2,
			PresentStatisticsKind_IndependentFlipFrame = 3,
		}
		[AllowDuplicates]
		public enum PresentStatus : int32
		{
			PresentStatus_Queued = 0,
			PresentStatus_Skipped = 1,
			PresentStatus_Canceled = 2,
		}
		[AllowDuplicates]
		public enum CompositionFrameInstanceKind : int32
		{
			CompositionFrameInstanceKind_ComposedOnScreen = 0,
			CompositionFrameInstanceKind_ScanoutOnScreen = 1,
			CompositionFrameInstanceKind_ComposedToIntermediate = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct SystemInterruptTime
		{
			public uint64 value;
		}
		[CRepr]
		public struct PresentationTransform
		{
			public float M11;
			public float M12;
			public float M21;
			public float M22;
			public float M31;
			public float M32;
		}
		[CRepr]
		public struct CompositionFrameDisplayInstance
		{
			public LUID displayAdapterLUID;
			public uint32 displayVidPnSourceId;
			public uint32 displayUniqueId;
			public LUID renderAdapterLUID;
			public CompositionFrameInstanceKind instanceKind;
			public PresentationTransform finalTransform;
			public uint8 requiredCrossAdapterCopy;
			public DXGI_COLOR_SPACE_TYPE colorSpace;
		}
		
		// --- COM Interfaces ---
		
		public struct IPresentationBuffer {}
		public struct IPresentationContent {}
		public struct IPresentationSurface {}
		public struct IPresentStatistics {}
		public struct IPresentationManager {}
		public struct IPresentationFactory {}
		public struct IPresentStatusPresentStatistics {}
		public struct ICompositionFramePresentStatistics {}
		public struct IIndependentFlipFramePresentStatistics {}
		
		// --- Functions ---
		
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreatePresentationFactory(IUnknown d3dDevice, Guid* riid, void** presentationFactory);
		
	}
}
