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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAvailableEvent(HANDLE* availableEventHandle) mut
			{
				return VT.GetAvailableEvent(&this, availableEventHandle);
			}
			public HRESULT IsAvailable(uint8* isAvailable) mut
			{
				return VT.IsAvailable(&this, isAvailable);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPresentationBuffer *self, HANDLE* availableEventHandle) GetAvailableEvent;
				public new function HRESULT(IPresentationBuffer *self, uint8* isAvailable) IsAvailable;
			}
		}
		[CRepr]
		public struct IPresentationContent : IUnknown
		{
			public const new Guid IID = .(0x5668bb79, 0x3d8e, 0x415c, 0xb2, 0x15, 0xf3, 0x80, 0x20, 0xf2, 0xd2, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetTag(uint tag) mut
			{
				VT.SetTag(&this, tag);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(IPresentationContent *self, uint tag) SetTag;
			}
		}
		[CRepr]
		public struct IPresentationSurface : IPresentationContent
		{
			public const new Guid IID = .(0x956710fb, 0xea40, 0x4eba, 0xa3, 0xeb, 0x43, 0x75, 0xa0, 0xeb, 0x4e, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBuffer(IPresentationBuffer* presentationBuffer) mut
			{
				return VT.SetBuffer(&this, presentationBuffer);
			}
			public HRESULT SetColorSpace(DXGI_COLOR_SPACE_TYPE colorSpace) mut
			{
				return VT.SetColorSpace(&this, colorSpace);
			}
			public HRESULT SetAlphaMode(DXGI_ALPHA_MODE alphaMode) mut
			{
				return VT.SetAlphaMode(&this, alphaMode);
			}
			public HRESULT SetSourceRect(RECT* sourceRect) mut
			{
				return VT.SetSourceRect(&this, sourceRect);
			}
			public HRESULT SetTransform(PresentationTransform* transform) mut
			{
				return VT.SetTransform(&this, transform);
			}
			public HRESULT RestrictToOutput(IUnknown* output) mut
			{
				return VT.RestrictToOutput(&this, output);
			}
			public HRESULT SetDisableReadback(uint8 value) mut
			{
				return VT.SetDisableReadback(&this, value);
			}
			public HRESULT SetLetterboxingMargins(float leftLetterboxSize, float topLetterboxSize, float rightLetterboxSize, float bottomLetterboxSize) mut
			{
				return VT.SetLetterboxingMargins(&this, leftLetterboxSize, topLetterboxSize, rightLetterboxSize, bottomLetterboxSize);
			}
			[CRepr]
			public struct VTable : IPresentationContent.VTable
			{
				public new function HRESULT(IPresentationSurface *self, IPresentationBuffer* presentationBuffer) SetBuffer;
				public new function HRESULT(IPresentationSurface *self, DXGI_COLOR_SPACE_TYPE colorSpace) SetColorSpace;
				public new function HRESULT(IPresentationSurface *self, DXGI_ALPHA_MODE alphaMode) SetAlphaMode;
				public new function HRESULT(IPresentationSurface *self, RECT* sourceRect) SetSourceRect;
				public new function HRESULT(IPresentationSurface *self, PresentationTransform* transform) SetTransform;
				public new function HRESULT(IPresentationSurface *self, IUnknown* output) RestrictToOutput;
				public new function HRESULT(IPresentationSurface *self, uint8 value) SetDisableReadback;
				public new function HRESULT(IPresentationSurface *self, float leftLetterboxSize, float topLetterboxSize, float rightLetterboxSize, float bottomLetterboxSize) SetLetterboxingMargins;
			}
		}
		[CRepr]
		public struct IPresentStatistics : IUnknown
		{
			public const new Guid IID = .(0xb44b8bda, 0x7282, 0x495d, 0x9d, 0xd7, 0xce, 0xad, 0xd8, 0xb4, 0xbb, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint64 GetPresentId() mut
			{
				return VT.GetPresentId(&this);
			}
			public PresentStatisticsKind GetKind() mut
			{
				return VT.GetKind(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint64(IPresentStatistics *self) GetPresentId;
				public new function PresentStatisticsKind(IPresentStatistics *self) GetKind;
			}
		}
		[CRepr]
		public struct IPresentationManager : IUnknown
		{
			public const new Guid IID = .(0xfb562f82, 0x6292, 0x470a, 0x88, 0xb1, 0x84, 0x36, 0x61, 0xe7, 0xf2, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddBufferFromResource(IUnknown* resource, IPresentationBuffer** presentationBuffer) mut
			{
				return VT.AddBufferFromResource(&this, resource, presentationBuffer);
			}
			public HRESULT CreatePresentationSurface(HANDLE compositionSurfaceHandle, IPresentationSurface** presentationSurface) mut
			{
				return VT.CreatePresentationSurface(&this, compositionSurfaceHandle, presentationSurface);
			}
			public uint64 GetNextPresentId() mut
			{
				return VT.GetNextPresentId(&this);
			}
			public HRESULT SetTargetTime(SystemInterruptTime targetTime) mut
			{
				return VT.SetTargetTime(&this, targetTime);
			}
			public HRESULT SetPreferredPresentDuration(SystemInterruptTime preferredDuration, SystemInterruptTime deviationTolerance) mut
			{
				return VT.SetPreferredPresentDuration(&this, preferredDuration, deviationTolerance);
			}
			public HRESULT ForceVSyncInterrupt(uint8 forceVsyncInterrupt) mut
			{
				return VT.ForceVSyncInterrupt(&this, forceVsyncInterrupt);
			}
			public HRESULT Present() mut
			{
				return VT.Present(&this);
			}
			public HRESULT GetPresentRetiringFence(Guid* riid, void** fence) mut
			{
				return VT.GetPresentRetiringFence(&this, riid, fence);
			}
			public HRESULT CancelPresentsFrom(uint64 presentIdToCancelFrom) mut
			{
				return VT.CancelPresentsFrom(&this, presentIdToCancelFrom);
			}
			public HRESULT GetLostEvent(HANDLE* lostEventHandle) mut
			{
				return VT.GetLostEvent(&this, lostEventHandle);
			}
			public HRESULT GetPresentStatisticsAvailableEvent(HANDLE* presentStatisticsAvailableEventHandle) mut
			{
				return VT.GetPresentStatisticsAvailableEvent(&this, presentStatisticsAvailableEventHandle);
			}
			public HRESULT EnablePresentStatisticsKind(PresentStatisticsKind presentStatisticsKind, uint8 enabled) mut
			{
				return VT.EnablePresentStatisticsKind(&this, presentStatisticsKind, enabled);
			}
			public HRESULT GetNextPresentStatistics(IPresentStatistics** nextPresentStatistics) mut
			{
				return VT.GetNextPresentStatistics(&this, nextPresentStatistics);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPresentationManager *self, IUnknown* resource, IPresentationBuffer** presentationBuffer) AddBufferFromResource;
				public new function HRESULT(IPresentationManager *self, HANDLE compositionSurfaceHandle, IPresentationSurface** presentationSurface) CreatePresentationSurface;
				public new function uint64(IPresentationManager *self) GetNextPresentId;
				public new function HRESULT(IPresentationManager *self, SystemInterruptTime targetTime) SetTargetTime;
				public new function HRESULT(IPresentationManager *self, SystemInterruptTime preferredDuration, SystemInterruptTime deviationTolerance) SetPreferredPresentDuration;
				public new function HRESULT(IPresentationManager *self, uint8 forceVsyncInterrupt) ForceVSyncInterrupt;
				public new function HRESULT(IPresentationManager *self) Present;
				public new function HRESULT(IPresentationManager *self, Guid* riid, void** fence) GetPresentRetiringFence;
				public new function HRESULT(IPresentationManager *self, uint64 presentIdToCancelFrom) CancelPresentsFrom;
				public new function HRESULT(IPresentationManager *self, HANDLE* lostEventHandle) GetLostEvent;
				public new function HRESULT(IPresentationManager *self, HANDLE* presentStatisticsAvailableEventHandle) GetPresentStatisticsAvailableEvent;
				public new function HRESULT(IPresentationManager *self, PresentStatisticsKind presentStatisticsKind, uint8 enabled) EnablePresentStatisticsKind;
				public new function HRESULT(IPresentationManager *self, IPresentStatistics** nextPresentStatistics) GetNextPresentStatistics;
			}
		}
		[CRepr]
		public struct IPresentationFactory : IUnknown
		{
			public const new Guid IID = .(0x8fb37b58, 0x1d74, 0x4f64, 0xa4, 0x9c, 0x1f, 0x97, 0xa8, 0x0a, 0x2e, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint8 IsPresentationSupported() mut
			{
				return VT.IsPresentationSupported(&this);
			}
			public uint8 IsPresentationSupportedWithIndependentFlip() mut
			{
				return VT.IsPresentationSupportedWithIndependentFlip(&this);
			}
			public HRESULT CreatePresentationManager(IPresentationManager** ppPresentationManager) mut
			{
				return VT.CreatePresentationManager(&this, ppPresentationManager);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint8(IPresentationFactory *self) IsPresentationSupported;
				public new function uint8(IPresentationFactory *self) IsPresentationSupportedWithIndependentFlip;
				public new function HRESULT(IPresentationFactory *self, IPresentationManager** ppPresentationManager) CreatePresentationManager;
			}
		}
		[CRepr]
		public struct IPresentStatusPresentStatistics : IPresentStatistics
		{
			public const new Guid IID = .(0xc9ed2a41, 0x79cb, 0x435e, 0x96, 0x4e, 0xc8, 0x55, 0x30, 0x55, 0x42, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint64 GetCompositionFrameId() mut
			{
				return VT.GetCompositionFrameId(&this);
			}
			public PresentStatus GetPresentStatus() mut
			{
				return VT.GetPresentStatus(&this);
			}
			[CRepr]
			public struct VTable : IPresentStatistics.VTable
			{
				public new function uint64(IPresentStatusPresentStatistics *self) GetCompositionFrameId;
				public new function PresentStatus(IPresentStatusPresentStatistics *self) GetPresentStatus;
			}
		}
		[CRepr]
		public struct ICompositionFramePresentStatistics : IPresentStatistics
		{
			public const new Guid IID = .(0xab41d127, 0xc101, 0x4c0a, 0x91, 0x1d, 0xf9, 0xf2, 0xe9, 0xd0, 0x8e, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint GetContentTag() mut
			{
				return VT.GetContentTag(&this);
			}
			public uint64 GetCompositionFrameId() mut
			{
				return VT.GetCompositionFrameId(&this);
			}
			public void GetDisplayInstanceArray(uint32* displayInstanceArrayCount, CompositionFrameDisplayInstance** displayInstanceArray) mut
			{
				VT.GetDisplayInstanceArray(&this, displayInstanceArrayCount, displayInstanceArray);
			}
			[CRepr]
			public struct VTable : IPresentStatistics.VTable
			{
				public new function uint(ICompositionFramePresentStatistics *self) GetContentTag;
				public new function uint64(ICompositionFramePresentStatistics *self) GetCompositionFrameId;
				public new function void(ICompositionFramePresentStatistics *self, uint32* displayInstanceArrayCount, CompositionFrameDisplayInstance** displayInstanceArray) GetDisplayInstanceArray;
			}
		}
		[CRepr]
		public struct IIndependentFlipFramePresentStatistics : IPresentStatistics
		{
			public const new Guid IID = .(0x8c93be27, 0xad94, 0x4da0, 0x8f, 0xd4, 0x24, 0x13, 0x13, 0x2d, 0x12, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public LUID GetOutputAdapterLUID() mut
			{
				return VT.GetOutputAdapterLUID(&this);
			}
			public uint32 GetOutputVidPnSourceId() mut
			{
				return VT.GetOutputVidPnSourceId(&this);
			}
			public uint GetContentTag() mut
			{
				return VT.GetContentTag(&this);
			}
			public SystemInterruptTime GetDisplayedTime() mut
			{
				return VT.GetDisplayedTime(&this);
			}
			public SystemInterruptTime GetPresentDuration() mut
			{
				return VT.GetPresentDuration(&this);
			}
			[CRepr]
			public struct VTable : IPresentStatistics.VTable
			{
				public new function LUID(IIndependentFlipFramePresentStatistics *self) GetOutputAdapterLUID;
				public new function uint32(IIndependentFlipFramePresentStatistics *self) GetOutputVidPnSourceId;
				public new function uint(IIndependentFlipFramePresentStatistics *self) GetContentTag;
				public new function SystemInterruptTime(IIndependentFlipFramePresentStatistics *self) GetDisplayedTime;
				public new function SystemInterruptTime(IIndependentFlipFramePresentStatistics *self) GetPresentDuration;
			}
		}
		
		// --- Functions ---
		
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreatePresentationFactory(IUnknown* d3dDevice, Guid* riid, void** presentationFactory);
		
	}
}
