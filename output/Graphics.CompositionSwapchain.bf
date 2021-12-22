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
		
		[CRepr]
		public struct IPresentationBuffer : IUnknown
		{
			public const new Guid IID = .(0x2e217d3a, 0x5abb, 0x4138, 0x9a, 0x13, 0xa7, 0x75, 0x59, 0x3c, 0x89, 0xca);
			
			public function HRESULT(IPresentationBuffer *self, HANDLE* availableEventHandle) GetAvailableEvent;
			public function HRESULT(IPresentationBuffer *self, uint8* isAvailable) IsAvailable;
		}
		[CRepr]
		public struct IPresentationContent : IUnknown
		{
			public const new Guid IID = .(0x5668bb79, 0x3d8e, 0x415c, 0xb2, 0x15, 0xf3, 0x80, 0x20, 0xf2, 0xd2, 0x52);
			
			public function void(IPresentationContent *self, uint tag) SetTag;
		}
		[CRepr]
		public struct IPresentationSurface : IPresentationContent
		{
			public const new Guid IID = .(0x956710fb, 0xea40, 0x4eba, 0xa3, 0xeb, 0x43, 0x75, 0xa0, 0xeb, 0x4e, 0xdc);
			
			public function HRESULT(IPresentationSurface *self, IPresentationBuffer* presentationBuffer) SetBuffer;
			public function HRESULT(IPresentationSurface *self, DXGI_COLOR_SPACE_TYPE colorSpace) SetColorSpace;
			public function HRESULT(IPresentationSurface *self, DXGI_ALPHA_MODE alphaMode) SetAlphaMode;
			public function HRESULT(IPresentationSurface *self, RECT* sourceRect) SetSourceRect;
			public function HRESULT(IPresentationSurface *self, PresentationTransform* transform) SetTransform;
			public function HRESULT(IPresentationSurface *self, IUnknown* output) RestrictToOutput;
			public function HRESULT(IPresentationSurface *self, uint8 value) SetDisableReadback;
			public function HRESULT(IPresentationSurface *self, float leftLetterboxSize, float topLetterboxSize, float rightLetterboxSize, float bottomLetterboxSize) SetLetterboxingMargins;
		}
		[CRepr]
		public struct IPresentStatistics : IUnknown
		{
			public const new Guid IID = .(0xb44b8bda, 0x7282, 0x495d, 0x9d, 0xd7, 0xce, 0xad, 0xd8, 0xb4, 0xbb, 0x86);
			
			public function uint64(IPresentStatistics *self) GetPresentId;
			public function PresentStatisticsKind(IPresentStatistics *self) GetKind;
		}
		[CRepr]
		public struct IPresentationManager : IUnknown
		{
			public const new Guid IID = .(0xfb562f82, 0x6292, 0x470a, 0x88, 0xb1, 0x84, 0x36, 0x61, 0xe7, 0xf2, 0x0c);
			
			public function HRESULT(IPresentationManager *self, IUnknown* resource, IPresentationBuffer** presentationBuffer) AddBufferFromResource;
			public function HRESULT(IPresentationManager *self, HANDLE compositionSurfaceHandle, IPresentationSurface** presentationSurface) CreatePresentationSurface;
			public function uint64(IPresentationManager *self) GetNextPresentId;
			public function HRESULT(IPresentationManager *self, SystemInterruptTime targetTime) SetTargetTime;
			public function HRESULT(IPresentationManager *self, SystemInterruptTime preferredDuration, SystemInterruptTime deviationTolerance) SetPreferredPresentDuration;
			public function HRESULT(IPresentationManager *self, uint8 forceVsyncInterrupt) ForceVSyncInterrupt;
			public function HRESULT(IPresentationManager *self) Present;
			public function HRESULT(IPresentationManager *self, Guid* riid, void** fence) GetPresentRetiringFence;
			public function HRESULT(IPresentationManager *self, uint64 presentIdToCancelFrom) CancelPresentsFrom;
			public function HRESULT(IPresentationManager *self, HANDLE* lostEventHandle) GetLostEvent;
			public function HRESULT(IPresentationManager *self, HANDLE* presentStatisticsAvailableEventHandle) GetPresentStatisticsAvailableEvent;
			public function HRESULT(IPresentationManager *self, PresentStatisticsKind presentStatisticsKind, uint8 enabled) EnablePresentStatisticsKind;
			public function HRESULT(IPresentationManager *self, IPresentStatistics** nextPresentStatistics) GetNextPresentStatistics;
		}
		[CRepr]
		public struct IPresentationFactory : IUnknown
		{
			public const new Guid IID = .(0x8fb37b58, 0x1d74, 0x4f64, 0xa4, 0x9c, 0x1f, 0x97, 0xa8, 0x0a, 0x2e, 0xc0);
			
			public function uint8(IPresentationFactory *self) IsPresentationSupported;
			public function uint8(IPresentationFactory *self) IsPresentationSupportedWithIndependentFlip;
			public function HRESULT(IPresentationFactory *self, IPresentationManager** ppPresentationManager) CreatePresentationManager;
		}
		[CRepr]
		public struct IPresentStatusPresentStatistics : IPresentStatistics
		{
			public const new Guid IID = .(0xc9ed2a41, 0x79cb, 0x435e, 0x96, 0x4e, 0xc8, 0x55, 0x30, 0x55, 0x42, 0x0c);
			
			public function uint64(IPresentStatusPresentStatistics *self) GetCompositionFrameId;
			public function PresentStatus(IPresentStatusPresentStatistics *self) GetPresentStatus;
		}
		[CRepr]
		public struct ICompositionFramePresentStatistics : IPresentStatistics
		{
			public const new Guid IID = .(0xab41d127, 0xc101, 0x4c0a, 0x91, 0x1d, 0xf9, 0xf2, 0xe9, 0xd0, 0x8e, 0x64);
			
			public function uint(ICompositionFramePresentStatistics *self) GetContentTag;
			public function uint64(ICompositionFramePresentStatistics *self) GetCompositionFrameId;
			public function void(ICompositionFramePresentStatistics *self, uint32* displayInstanceArrayCount, CompositionFrameDisplayInstance** displayInstanceArray) GetDisplayInstanceArray;
		}
		[CRepr]
		public struct IIndependentFlipFramePresentStatistics : IPresentStatistics
		{
			public const new Guid IID = .(0x8c93be27, 0xad94, 0x4da0, 0x8f, 0xd4, 0x24, 0x13, 0x13, 0x2d, 0x12, 0x4e);
			
			public function LUID(IIndependentFlipFramePresentStatistics *self) GetOutputAdapterLUID;
			public function uint32(IIndependentFlipFramePresentStatistics *self) GetOutputVidPnSourceId;
			public function uint(IIndependentFlipFramePresentStatistics *self) GetContentTag;
			public function SystemInterruptTime(IIndependentFlipFramePresentStatistics *self) GetDisplayedTime;
			public function SystemInterruptTime(IIndependentFlipFramePresentStatistics *self) GetPresentDuration;
		}
		
		// --- Functions ---
		
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreatePresentationFactory(IUnknown* d3dDevice, Guid* riid, void** presentationFactory);
		
	}
}
