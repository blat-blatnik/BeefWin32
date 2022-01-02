using System;

// namespace Media.Streaming
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum MF_TRANSFER_VIDEO_FRAME_FLAGS : int32
		{
			DEFAULT = 0,
			STRETCH = 1,
			IGNORE_PAR = 2,
		}
		public enum MF_MEDIASOURCE_STATUS_INFO : int32
		{
			FULLYSUPPORTED = 0,
			UNKNOWN = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct FaceRectInfoBlobHeader
		{
			public uint32 Size;
			public uint32 Count;
		}
		[CRepr]
		public struct FaceRectInfo
		{
			public RECT Region;
			public int32 confidenceLevel;
		}
		[CRepr]
		public struct FaceCharacterizationBlobHeader
		{
			public uint32 Size;
			public uint32 Count;
		}
		[CRepr]
		public struct FaceCharacterization
		{
			public uint32 BlinkScoreLeft;
			public uint32 BlinkScoreRight;
			public uint32 FacialExpression;
			public uint32 FacialExpressionScore;
		}
		[CRepr]
		public struct CapturedMetadataExposureCompensation
		{
			public uint64 Flags;
			public int32 Value;
		}
		[CRepr]
		public struct CapturedMetadataISOGains
		{
			public float AnalogGain;
			public float DigitalGain;
		}
		[CRepr]
		public struct CapturedMetadataWhiteBalanceGains
		{
			public float R;
			public float G;
			public float B;
		}
		[CRepr]
		public struct MetadataTimeStamps
		{
			public uint32 Flags;
			public int64 Device;
			public int64 Presentation;
		}
		[CRepr]
		public struct HistogramGrid
		{
			public uint32 Width;
			public uint32 Height;
			public RECT Region;
		}
		[CRepr]
		public struct HistogramBlobHeader
		{
			public uint32 Size;
			public uint32 Histograms;
		}
		[CRepr]
		public struct HistogramHeader
		{
			public uint32 Size;
			public uint32 Bins;
			public uint32 FourCC;
			public uint32 ChannelMasks;
			public HistogramGrid Grid;
		}
		[CRepr]
		public struct HistogramDataHeader
		{
			public uint32 Size;
			public uint32 ChannelMask;
			public uint32 Linear;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IMFDeviceTransform : IUnknown
		{
			public const new Guid IID = .(0xd818fbd8, 0xfc46, 0x42f2, 0x87, 0xac, 0x1e, 0xa2, 0xd1, 0xf9, 0xbf, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeTransform(ref IMFAttributes pAttributes) mut => VT.InitializeTransform(ref this, ref pAttributes);
			public HRESULT GetInputAvailableType(uint32 dwInputStreamID, uint32 dwTypeIndex, out IMFMediaType* pMediaType) mut => VT.GetInputAvailableType(ref this, dwInputStreamID, dwTypeIndex, out pMediaType);
			public HRESULT GetInputCurrentType(uint32 dwInputStreamID, out IMFMediaType* pMediaType) mut => VT.GetInputCurrentType(ref this, dwInputStreamID, out pMediaType);
			public HRESULT GetInputStreamAttributes(uint32 dwInputStreamID, out IMFAttributes* ppAttributes) mut => VT.GetInputStreamAttributes(ref this, dwInputStreamID, out ppAttributes);
			public HRESULT GetOutputAvailableType(uint32 dwOutputStreamID, uint32 dwTypeIndex, out IMFMediaType* pMediaType) mut => VT.GetOutputAvailableType(ref this, dwOutputStreamID, dwTypeIndex, out pMediaType);
			public HRESULT GetOutputCurrentType(uint32 dwOutputStreamID, out IMFMediaType* pMediaType) mut => VT.GetOutputCurrentType(ref this, dwOutputStreamID, out pMediaType);
			public HRESULT GetOutputStreamAttributes(uint32 dwOutputStreamID, out IMFAttributes* ppAttributes) mut => VT.GetOutputStreamAttributes(ref this, dwOutputStreamID, out ppAttributes);
			public HRESULT GetStreamCount(out uint32 pcInputStreams, out uint32 pcOutputStreams) mut => VT.GetStreamCount(ref this, out pcInputStreams, out pcOutputStreams);
			public HRESULT GetStreamIDs(uint32 dwInputIDArraySize, out uint32 pdwInputStreamIds, uint32 dwOutputIDArraySize, out uint32 pdwOutputStreamIds) mut => VT.GetStreamIDs(ref this, dwInputIDArraySize, out pdwInputStreamIds, dwOutputIDArraySize, out pdwOutputStreamIds);
			public HRESULT ProcessEvent(uint32 dwInputStreamID, ref IMFMediaEvent pEvent) mut => VT.ProcessEvent(ref this, dwInputStreamID, ref pEvent);
			public HRESULT ProcessInput(uint32 dwInputStreamID, ref IMFSample pSample, uint32 dwFlags) mut => VT.ProcessInput(ref this, dwInputStreamID, ref pSample, dwFlags);
			public HRESULT ProcessMessage(MFT_MESSAGE_TYPE eMessage, uint ulParam) mut => VT.ProcessMessage(ref this, eMessage, ulParam);
			public HRESULT ProcessOutput(uint32 dwFlags, uint32 cOutputBufferCount, out MFT_OUTPUT_DATA_BUFFER pOutputSample, out uint32 pdwStatus) mut => VT.ProcessOutput(ref this, dwFlags, cOutputBufferCount, out pOutputSample, out pdwStatus);
			public HRESULT SetInputStreamState(uint32 dwStreamID, ref IMFMediaType pMediaType, DeviceStreamState value, uint32 dwFlags) mut => VT.SetInputStreamState(ref this, dwStreamID, ref pMediaType, value, dwFlags);
			public HRESULT GetInputStreamState(uint32 dwStreamID, out DeviceStreamState value) mut => VT.GetInputStreamState(ref this, dwStreamID, out value);
			public HRESULT SetOutputStreamState(uint32 dwStreamID, ref IMFMediaType pMediaType, DeviceStreamState value, uint32 dwFlags) mut => VT.SetOutputStreamState(ref this, dwStreamID, ref pMediaType, value, dwFlags);
			public HRESULT GetOutputStreamState(uint32 dwStreamID, out DeviceStreamState value) mut => VT.GetOutputStreamState(ref this, dwStreamID, out value);
			public HRESULT GetInputStreamPreferredState(uint32 dwStreamID, out DeviceStreamState value, out IMFMediaType* ppMediaType) mut => VT.GetInputStreamPreferredState(ref this, dwStreamID, out value, out ppMediaType);
			public HRESULT FlushInputStream(uint32 dwStreamIndex, uint32 dwFlags) mut => VT.FlushInputStream(ref this, dwStreamIndex, dwFlags);
			public HRESULT FlushOutputStream(uint32 dwStreamIndex, uint32 dwFlags) mut => VT.FlushOutputStream(ref this, dwStreamIndex, dwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, ref IMFAttributes pAttributes) InitializeTransform;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwInputStreamID, uint32 dwTypeIndex, out IMFMediaType* pMediaType) GetInputAvailableType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwInputStreamID, out IMFMediaType* pMediaType) GetInputCurrentType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwInputStreamID, out IMFAttributes* ppAttributes) GetInputStreamAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwOutputStreamID, uint32 dwTypeIndex, out IMFMediaType* pMediaType) GetOutputAvailableType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwOutputStreamID, out IMFMediaType* pMediaType) GetOutputCurrentType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwOutputStreamID, out IMFAttributes* ppAttributes) GetOutputStreamAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, out uint32 pcInputStreams, out uint32 pcOutputStreams) GetStreamCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwInputIDArraySize, out uint32 pdwInputStreamIds, uint32 dwOutputIDArraySize, out uint32 pdwOutputStreamIds) GetStreamIDs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwInputStreamID, ref IMFMediaEvent pEvent) ProcessEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwInputStreamID, ref IMFSample pSample, uint32 dwFlags) ProcessInput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, MFT_MESSAGE_TYPE eMessage, uint ulParam) ProcessMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwFlags, uint32 cOutputBufferCount, out MFT_OUTPUT_DATA_BUFFER pOutputSample, out uint32 pdwStatus) ProcessOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwStreamID, ref IMFMediaType pMediaType, DeviceStreamState value, uint32 dwFlags) SetInputStreamState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwStreamID, out DeviceStreamState value) GetInputStreamState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwStreamID, ref IMFMediaType pMediaType, DeviceStreamState value, uint32 dwFlags) SetOutputStreamState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwStreamID, out DeviceStreamState value) GetOutputStreamState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwStreamID, out DeviceStreamState value, out IMFMediaType* ppMediaType) GetInputStreamPreferredState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwStreamIndex, uint32 dwFlags) FlushInputStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransform self, uint32 dwStreamIndex, uint32 dwFlags) FlushOutputStream;
			}
		}
		[CRepr]
		public struct IMFDeviceTransformCallback : IUnknown
		{
			public const new Guid IID = .(0x6d5cb646, 0x29ec, 0x41fb, 0x81, 0x79, 0x8c, 0x4c, 0x6d, 0x75, 0x08, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnBufferSent(ref IMFAttributes pCallbackAttributes, uint32 pinId) mut => VT.OnBufferSent(ref this, ref pCallbackAttributes, pinId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDeviceTransformCallback self, ref IMFAttributes pCallbackAttributes, uint32 pinId) OnBufferSent;
			}
		}
		
	}
}
