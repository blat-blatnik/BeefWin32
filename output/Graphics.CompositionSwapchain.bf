using System;

// namespace Graphics.CompositionSwapchain
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum PresentStatisticsKind : int32
		{
			PresentStatus = 1,
			CompositionFrame = 2,
			IndependentFlipFrame = 3,
		}
		public enum PresentStatus : int32
		{
			Queued = 0,
			Skipped = 1,
			Canceled = 2,
		}
		public enum CompositionFrameInstanceKind : int32
		{
			ComposedOnScreen = 0,
			ScanoutOnScreen = 1,
			ComposedToIntermediate = 2,
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
			
			public HRESULT GetAvailableEvent(out HANDLE availableEventHandle) mut => VT.GetAvailableEvent(ref this, out availableEventHandle);
			public HRESULT IsAvailable(out uint8 isAvailable) mut => VT.IsAvailable(ref this, out isAvailable);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationBuffer self, out HANDLE availableEventHandle) GetAvailableEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationBuffer self, out uint8 isAvailable) IsAvailable;
			}
		}
		[CRepr]
		public struct IPresentationContent : IUnknown
		{
			public const new Guid IID = .(0x5668bb79, 0x3d8e, 0x415c, 0xb2, 0x15, 0xf3, 0x80, 0x20, 0xf2, 0xd2, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetTag(uint tag) mut => VT.SetTag(ref this, tag);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IPresentationContent self, uint tag) SetTag;
			}
		}
		[CRepr]
		public struct IPresentationSurface : IPresentationContent
		{
			public const new Guid IID = .(0x956710fb, 0xea40, 0x4eba, 0xa3, 0xeb, 0x43, 0x75, 0xa0, 0xeb, 0x4e, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBuffer(ref IPresentationBuffer presentationBuffer) mut => VT.SetBuffer(ref this, ref presentationBuffer);
			public HRESULT SetColorSpace(DXGI_COLOR_SPACE_TYPE colorSpace) mut => VT.SetColorSpace(ref this, colorSpace);
			public HRESULT SetAlphaMode(DXGI_ALPHA_MODE alphaMode) mut => VT.SetAlphaMode(ref this, alphaMode);
			public HRESULT SetSourceRect(in RECT sourceRect) mut => VT.SetSourceRect(ref this, sourceRect);
			public HRESULT SetTransform(ref PresentationTransform transform) mut => VT.SetTransform(ref this, ref transform);
			public HRESULT RestrictToOutput(ref IUnknown output) mut => VT.RestrictToOutput(ref this, ref output);
			public HRESULT SetDisableReadback(uint8 value) mut => VT.SetDisableReadback(ref this, value);
			public HRESULT SetLetterboxingMargins(float leftLetterboxSize, float topLetterboxSize, float rightLetterboxSize, float bottomLetterboxSize) mut => VT.SetLetterboxingMargins(ref this, leftLetterboxSize, topLetterboxSize, rightLetterboxSize, bottomLetterboxSize);

			[CRepr]
			public struct VTable : IPresentationContent.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationSurface self, ref IPresentationBuffer presentationBuffer) SetBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationSurface self, DXGI_COLOR_SPACE_TYPE colorSpace) SetColorSpace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationSurface self, DXGI_ALPHA_MODE alphaMode) SetAlphaMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationSurface self, in RECT sourceRect) SetSourceRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationSurface self, ref PresentationTransform transform) SetTransform;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationSurface self, ref IUnknown output) RestrictToOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationSurface self, uint8 value) SetDisableReadback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationSurface self, float leftLetterboxSize, float topLetterboxSize, float rightLetterboxSize, float bottomLetterboxSize) SetLetterboxingMargins;
			}
		}
		[CRepr]
		public struct IPresentStatistics : IUnknown
		{
			public const new Guid IID = .(0xb44b8bda, 0x7282, 0x495d, 0x9d, 0xd7, 0xce, 0xad, 0xd8, 0xb4, 0xbb, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint64 GetPresentId() mut => VT.GetPresentId(ref this);
			public PresentStatisticsKind GetKind() mut => VT.GetKind(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint64(ref IPresentStatistics self) GetPresentId;
				public new function [CallingConvention(.Stdcall)] PresentStatisticsKind(ref IPresentStatistics self) GetKind;
			}
		}
		[CRepr]
		public struct IPresentationManager : IUnknown
		{
			public const new Guid IID = .(0xfb562f82, 0x6292, 0x470a, 0x88, 0xb1, 0x84, 0x36, 0x61, 0xe7, 0xf2, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddBufferFromResource(ref IUnknown resource, out IPresentationBuffer* presentationBuffer) mut => VT.AddBufferFromResource(ref this, ref resource, out presentationBuffer);
			public HRESULT CreatePresentationSurface(HANDLE compositionSurfaceHandle, out IPresentationSurface* presentationSurface) mut => VT.CreatePresentationSurface(ref this, compositionSurfaceHandle, out presentationSurface);
			public uint64 GetNextPresentId() mut => VT.GetNextPresentId(ref this);
			public HRESULT SetTargetTime(SystemInterruptTime targetTime) mut => VT.SetTargetTime(ref this, targetTime);
			public HRESULT SetPreferredPresentDuration(SystemInterruptTime preferredDuration, SystemInterruptTime deviationTolerance) mut => VT.SetPreferredPresentDuration(ref this, preferredDuration, deviationTolerance);
			public HRESULT ForceVSyncInterrupt(uint8 forceVsyncInterrupt) mut => VT.ForceVSyncInterrupt(ref this, forceVsyncInterrupt);
			public HRESULT Present() mut => VT.Present(ref this);
			public HRESULT GetPresentRetiringFence(in Guid riid, void** fence) mut => VT.GetPresentRetiringFence(ref this, riid, fence);
			public HRESULT CancelPresentsFrom(uint64 presentIdToCancelFrom) mut => VT.CancelPresentsFrom(ref this, presentIdToCancelFrom);
			public HRESULT GetLostEvent(out HANDLE lostEventHandle) mut => VT.GetLostEvent(ref this, out lostEventHandle);
			public HRESULT GetPresentStatisticsAvailableEvent(out HANDLE presentStatisticsAvailableEventHandle) mut => VT.GetPresentStatisticsAvailableEvent(ref this, out presentStatisticsAvailableEventHandle);
			public HRESULT EnablePresentStatisticsKind(PresentStatisticsKind presentStatisticsKind, uint8 enabled) mut => VT.EnablePresentStatisticsKind(ref this, presentStatisticsKind, enabled);
			public HRESULT GetNextPresentStatistics(out IPresentStatistics* nextPresentStatistics) mut => VT.GetNextPresentStatistics(ref this, out nextPresentStatistics);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationManager self, ref IUnknown resource, out IPresentationBuffer* presentationBuffer) AddBufferFromResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationManager self, HANDLE compositionSurfaceHandle, out IPresentationSurface* presentationSurface) CreatePresentationSurface;
				public new function [CallingConvention(.Stdcall)] uint64(ref IPresentationManager self) GetNextPresentId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationManager self, SystemInterruptTime targetTime) SetTargetTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationManager self, SystemInterruptTime preferredDuration, SystemInterruptTime deviationTolerance) SetPreferredPresentDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationManager self, uint8 forceVsyncInterrupt) ForceVSyncInterrupt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationManager self) Present;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationManager self, in Guid riid, void** fence) GetPresentRetiringFence;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationManager self, uint64 presentIdToCancelFrom) CancelPresentsFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationManager self, out HANDLE lostEventHandle) GetLostEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationManager self, out HANDLE presentStatisticsAvailableEventHandle) GetPresentStatisticsAvailableEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationManager self, PresentStatisticsKind presentStatisticsKind, uint8 enabled) EnablePresentStatisticsKind;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationManager self, out IPresentStatistics* nextPresentStatistics) GetNextPresentStatistics;
			}
		}
		[CRepr]
		public struct IPresentationFactory : IUnknown
		{
			public const new Guid IID = .(0x8fb37b58, 0x1d74, 0x4f64, 0xa4, 0x9c, 0x1f, 0x97, 0xa8, 0x0a, 0x2e, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint8 IsPresentationSupported() mut => VT.IsPresentationSupported(ref this);
			public uint8 IsPresentationSupportedWithIndependentFlip() mut => VT.IsPresentationSupportedWithIndependentFlip(ref this);
			public HRESULT CreatePresentationManager(out IPresentationManager* ppPresentationManager) mut => VT.CreatePresentationManager(ref this, out ppPresentationManager);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint8(ref IPresentationFactory self) IsPresentationSupported;
				public new function [CallingConvention(.Stdcall)] uint8(ref IPresentationFactory self) IsPresentationSupportedWithIndependentFlip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPresentationFactory self, out IPresentationManager* ppPresentationManager) CreatePresentationManager;
			}
		}
		[CRepr]
		public struct IPresentStatusPresentStatistics : IPresentStatistics
		{
			public const new Guid IID = .(0xc9ed2a41, 0x79cb, 0x435e, 0x96, 0x4e, 0xc8, 0x55, 0x30, 0x55, 0x42, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint64 GetCompositionFrameId() mut => VT.GetCompositionFrameId(ref this);
			public PresentStatus GetPresentStatus() mut => VT.GetPresentStatus(ref this);

			[CRepr]
			public struct VTable : IPresentStatistics.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint64(ref IPresentStatusPresentStatistics self) GetCompositionFrameId;
				public new function [CallingConvention(.Stdcall)] PresentStatus(ref IPresentStatusPresentStatistics self) GetPresentStatus;
			}
		}
		[CRepr]
		public struct ICompositionFramePresentStatistics : IPresentStatistics
		{
			public const new Guid IID = .(0xab41d127, 0xc101, 0x4c0a, 0x91, 0x1d, 0xf9, 0xf2, 0xe9, 0xd0, 0x8e, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint GetContentTag() mut => VT.GetContentTag(ref this);
			public uint64 GetCompositionFrameId() mut => VT.GetCompositionFrameId(ref this);
			public void GetDisplayInstanceArray(out uint32 displayInstanceArrayCount, out CompositionFrameDisplayInstance* displayInstanceArray) mut => VT.GetDisplayInstanceArray(ref this, out displayInstanceArrayCount, out displayInstanceArray);

			[CRepr]
			public struct VTable : IPresentStatistics.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint(ref ICompositionFramePresentStatistics self) GetContentTag;
				public new function [CallingConvention(.Stdcall)] uint64(ref ICompositionFramePresentStatistics self) GetCompositionFrameId;
				public new function [CallingConvention(.Stdcall)] void(ref ICompositionFramePresentStatistics self, out uint32 displayInstanceArrayCount, out CompositionFrameDisplayInstance* displayInstanceArray) GetDisplayInstanceArray;
			}
		}
		[CRepr]
		public struct IIndependentFlipFramePresentStatistics : IPresentStatistics
		{
			public const new Guid IID = .(0x8c93be27, 0xad94, 0x4da0, 0x8f, 0xd4, 0x24, 0x13, 0x13, 0x2d, 0x12, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public LUID GetOutputAdapterLUID() mut => VT.GetOutputAdapterLUID(ref this);
			public uint32 GetOutputVidPnSourceId() mut => VT.GetOutputVidPnSourceId(ref this);
			public uint GetContentTag() mut => VT.GetContentTag(ref this);
			public SystemInterruptTime GetDisplayedTime() mut => VT.GetDisplayedTime(ref this);
			public SystemInterruptTime GetPresentDuration() mut => VT.GetPresentDuration(ref this);

			[CRepr]
			public struct VTable : IPresentStatistics.VTable
			{
				public new function [CallingConvention(.Stdcall)] LUID(ref IIndependentFlipFramePresentStatistics self) GetOutputAdapterLUID;
				public new function [CallingConvention(.Stdcall)] uint32(ref IIndependentFlipFramePresentStatistics self) GetOutputVidPnSourceId;
				public new function [CallingConvention(.Stdcall)] uint(ref IIndependentFlipFramePresentStatistics self) GetContentTag;
				public new function [CallingConvention(.Stdcall)] SystemInterruptTime(ref IIndependentFlipFramePresentStatistics self) GetDisplayedTime;
				public new function [CallingConvention(.Stdcall)] SystemInterruptTime(ref IIndependentFlipFramePresentStatistics self) GetPresentDuration;
			}
		}
		
		// --- Functions ---
		
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreatePresentationFactory(ref IUnknown d3dDevice, in Guid riid, void** presentationFactory);
	}
}
