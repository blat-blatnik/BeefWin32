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
			
			public HRESULT InitializeTransform(IMFAttributes* pAttributes) mut
			{
				return VT.InitializeTransform(&this, pAttributes);
			}
			public HRESULT GetInputAvailableType(uint32 dwInputStreamID, uint32 dwTypeIndex, IMFMediaType** pMediaType) mut
			{
				return VT.GetInputAvailableType(&this, dwInputStreamID, dwTypeIndex, pMediaType);
			}
			public HRESULT GetInputCurrentType(uint32 dwInputStreamID, IMFMediaType** pMediaType) mut
			{
				return VT.GetInputCurrentType(&this, dwInputStreamID, pMediaType);
			}
			public HRESULT GetInputStreamAttributes(uint32 dwInputStreamID, IMFAttributes** ppAttributes) mut
			{
				return VT.GetInputStreamAttributes(&this, dwInputStreamID, ppAttributes);
			}
			public HRESULT GetOutputAvailableType(uint32 dwOutputStreamID, uint32 dwTypeIndex, IMFMediaType** pMediaType) mut
			{
				return VT.GetOutputAvailableType(&this, dwOutputStreamID, dwTypeIndex, pMediaType);
			}
			public HRESULT GetOutputCurrentType(uint32 dwOutputStreamID, IMFMediaType** pMediaType) mut
			{
				return VT.GetOutputCurrentType(&this, dwOutputStreamID, pMediaType);
			}
			public HRESULT GetOutputStreamAttributes(uint32 dwOutputStreamID, IMFAttributes** ppAttributes) mut
			{
				return VT.GetOutputStreamAttributes(&this, dwOutputStreamID, ppAttributes);
			}
			public HRESULT GetStreamCount(uint32* pcInputStreams, uint32* pcOutputStreams) mut
			{
				return VT.GetStreamCount(&this, pcInputStreams, pcOutputStreams);
			}
			public HRESULT GetStreamIDs(uint32 dwInputIDArraySize, uint32* pdwInputStreamIds, uint32 dwOutputIDArraySize, uint32* pdwOutputStreamIds) mut
			{
				return VT.GetStreamIDs(&this, dwInputIDArraySize, pdwInputStreamIds, dwOutputIDArraySize, pdwOutputStreamIds);
			}
			public HRESULT ProcessEvent(uint32 dwInputStreamID, IMFMediaEvent* pEvent) mut
			{
				return VT.ProcessEvent(&this, dwInputStreamID, pEvent);
			}
			public HRESULT ProcessInput(uint32 dwInputStreamID, IMFSample* pSample, uint32 dwFlags) mut
			{
				return VT.ProcessInput(&this, dwInputStreamID, pSample, dwFlags);
			}
			public HRESULT ProcessMessage(MFT_MESSAGE_TYPE eMessage, uint ulParam) mut
			{
				return VT.ProcessMessage(&this, eMessage, ulParam);
			}
			public HRESULT ProcessOutput(uint32 dwFlags, uint32 cOutputBufferCount, MFT_OUTPUT_DATA_BUFFER* pOutputSample, uint32* pdwStatus) mut
			{
				return VT.ProcessOutput(&this, dwFlags, cOutputBufferCount, pOutputSample, pdwStatus);
			}
			public HRESULT SetInputStreamState(uint32 dwStreamID, IMFMediaType* pMediaType, DeviceStreamState value, uint32 dwFlags) mut
			{
				return VT.SetInputStreamState(&this, dwStreamID, pMediaType, value, dwFlags);
			}
			public HRESULT GetInputStreamState(uint32 dwStreamID, DeviceStreamState* value) mut
			{
				return VT.GetInputStreamState(&this, dwStreamID, value);
			}
			public HRESULT SetOutputStreamState(uint32 dwStreamID, IMFMediaType* pMediaType, DeviceStreamState value, uint32 dwFlags) mut
			{
				return VT.SetOutputStreamState(&this, dwStreamID, pMediaType, value, dwFlags);
			}
			public HRESULT GetOutputStreamState(uint32 dwStreamID, DeviceStreamState* value) mut
			{
				return VT.GetOutputStreamState(&this, dwStreamID, value);
			}
			public HRESULT GetInputStreamPreferredState(uint32 dwStreamID, DeviceStreamState* value, IMFMediaType** ppMediaType) mut
			{
				return VT.GetInputStreamPreferredState(&this, dwStreamID, value, ppMediaType);
			}
			public HRESULT FlushInputStream(uint32 dwStreamIndex, uint32 dwFlags) mut
			{
				return VT.FlushInputStream(&this, dwStreamIndex, dwFlags);
			}
			public HRESULT FlushOutputStream(uint32 dwStreamIndex, uint32 dwFlags) mut
			{
				return VT.FlushOutputStream(&this, dwStreamIndex, dwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMFDeviceTransform *self, IMFAttributes* pAttributes) InitializeTransform;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwInputStreamID, uint32 dwTypeIndex, IMFMediaType** pMediaType) GetInputAvailableType;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwInputStreamID, IMFMediaType** pMediaType) GetInputCurrentType;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwInputStreamID, IMFAttributes** ppAttributes) GetInputStreamAttributes;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwOutputStreamID, uint32 dwTypeIndex, IMFMediaType** pMediaType) GetOutputAvailableType;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwOutputStreamID, IMFMediaType** pMediaType) GetOutputCurrentType;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwOutputStreamID, IMFAttributes** ppAttributes) GetOutputStreamAttributes;
				public new function HRESULT(IMFDeviceTransform *self, uint32* pcInputStreams, uint32* pcOutputStreams) GetStreamCount;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwInputIDArraySize, uint32* pdwInputStreamIds, uint32 dwOutputIDArraySize, uint32* pdwOutputStreamIds) GetStreamIDs;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwInputStreamID, IMFMediaEvent* pEvent) ProcessEvent;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwInputStreamID, IMFSample* pSample, uint32 dwFlags) ProcessInput;
				public new function HRESULT(IMFDeviceTransform *self, MFT_MESSAGE_TYPE eMessage, uint ulParam) ProcessMessage;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwFlags, uint32 cOutputBufferCount, MFT_OUTPUT_DATA_BUFFER* pOutputSample, uint32* pdwStatus) ProcessOutput;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwStreamID, IMFMediaType* pMediaType, DeviceStreamState value, uint32 dwFlags) SetInputStreamState;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwStreamID, DeviceStreamState* value) GetInputStreamState;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwStreamID, IMFMediaType* pMediaType, DeviceStreamState value, uint32 dwFlags) SetOutputStreamState;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwStreamID, DeviceStreamState* value) GetOutputStreamState;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwStreamID, DeviceStreamState* value, IMFMediaType** ppMediaType) GetInputStreamPreferredState;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwStreamIndex, uint32 dwFlags) FlushInputStream;
				public new function HRESULT(IMFDeviceTransform *self, uint32 dwStreamIndex, uint32 dwFlags) FlushOutputStream;
			}
		}
		[CRepr]
		public struct IMFDeviceTransformCallback : IUnknown
		{
			public const new Guid IID = .(0x6d5cb646, 0x29ec, 0x41fb, 0x81, 0x79, 0x8c, 0x4c, 0x6d, 0x75, 0x08, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnBufferSent(IMFAttributes* pCallbackAttributes, uint32 pinId) mut
			{
				return VT.OnBufferSent(&this, pCallbackAttributes, pinId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMFDeviceTransformCallback *self, IMFAttributes* pCallbackAttributes, uint32 pinId) OnBufferSent;
			}
		}
		
	}
}
