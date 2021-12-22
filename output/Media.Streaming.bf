using System;

// namespace Media.Streaming
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum MF_TRANSFER_VIDEO_FRAME_FLAGS : int32
		{
			MF_TRANSFER_VIDEO_FRAME_DEFAULT = 0,
			MF_TRANSFER_VIDEO_FRAME_STRETCH = 1,
			MF_TRANSFER_VIDEO_FRAME_IGNORE_PAR = 2,
		}
		[AllowDuplicates]
		public enum MF_MEDIASOURCE_STATUS_INFO : int32
		{
			MF_MEDIASOURCE_STATUS_INFO_FULLYSUPPORTED = 0,
			MF_MEDIASOURCE_STATUS_INFO_UNKNOWN = 1,
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
			
			public function HRESULT(IMFDeviceTransform *self, IMFAttributes* pAttributes) InitializeTransform;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwInputStreamID, uint32 dwTypeIndex, IMFMediaType** pMediaType) GetInputAvailableType;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwInputStreamID, IMFMediaType** pMediaType) GetInputCurrentType;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwInputStreamID, IMFAttributes** ppAttributes) GetInputStreamAttributes;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwOutputStreamID, uint32 dwTypeIndex, IMFMediaType** pMediaType) GetOutputAvailableType;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwOutputStreamID, IMFMediaType** pMediaType) GetOutputCurrentType;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwOutputStreamID, IMFAttributes** ppAttributes) GetOutputStreamAttributes;
			public function HRESULT(IMFDeviceTransform *self, uint32* pcInputStreams, uint32* pcOutputStreams) GetStreamCount;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwInputIDArraySize, uint32* pdwInputStreamIds, uint32 dwOutputIDArraySize, uint32* pdwOutputStreamIds) GetStreamIDs;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwInputStreamID, IMFMediaEvent* pEvent) ProcessEvent;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwInputStreamID, IMFSample* pSample, uint32 dwFlags) ProcessInput;
			public function HRESULT(IMFDeviceTransform *self, MFT_MESSAGE_TYPE eMessage, uint ulParam) ProcessMessage;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwFlags, uint32 cOutputBufferCount, MFT_OUTPUT_DATA_BUFFER* pOutputSample, uint32* pdwStatus) ProcessOutput;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwStreamID, IMFMediaType* pMediaType, DeviceStreamState value, uint32 dwFlags) SetInputStreamState;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwStreamID, DeviceStreamState* value) GetInputStreamState;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwStreamID, IMFMediaType* pMediaType, DeviceStreamState value, uint32 dwFlags) SetOutputStreamState;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwStreamID, DeviceStreamState* value) GetOutputStreamState;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwStreamID, DeviceStreamState* value, IMFMediaType** ppMediaType) GetInputStreamPreferredState;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwStreamIndex, uint32 dwFlags) FlushInputStream;
			public function HRESULT(IMFDeviceTransform *self, uint32 dwStreamIndex, uint32 dwFlags) FlushOutputStream;
		}
		[CRepr]
		public struct IMFDeviceTransformCallback : IUnknown
		{
			public const new Guid IID = .(0x6d5cb646, 0x29ec, 0x41fb, 0x81, 0x79, 0x8c, 0x4c, 0x6d, 0x75, 0x08, 0x11);
			
			public function HRESULT(IMFDeviceTransformCallback *self, IMFAttributes* pCallbackAttributes, uint32 pinId) OnBufferSent;
		}
		
	}
}
