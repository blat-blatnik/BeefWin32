using System;

// namespace Media.DxMediaObjects
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const HRESULT DMO_E_INVALIDSTREAMINDEX = -2147220991;
		public const HRESULT DMO_E_INVALIDTYPE = -2147220990;
		public const HRESULT DMO_E_TYPE_NOT_SET = -2147220989;
		public const HRESULT DMO_E_NOTACCEPTING = -2147220988;
		public const HRESULT DMO_E_TYPE_NOT_ACCEPTED = -2147220987;
		public const HRESULT DMO_E_NO_MORE_ITEMS = -2147220986;
		public const Guid DMOCATEGORY_AUDIO_DECODER = .(0x57f2db8b, 0xe6bb, 0x4513, 0x9d, 0x43, 0xdc, 0xd2, 0xa6, 0x59, 0x31, 0x25);
		public const Guid DMOCATEGORY_AUDIO_ENCODER = .(0x33d9a761, 0x90c8, 0x11d0, 0xbd, 0x43, 0x00, 0xa0, 0xc9, 0x11, 0xce, 0x86);
		public const Guid DMOCATEGORY_VIDEO_DECODER = .(0x4a69b442, 0x28be, 0x4991, 0x96, 0x9c, 0xb5, 0x00, 0xad, 0xf5, 0xd8, 0xa8);
		public const Guid DMOCATEGORY_VIDEO_ENCODER = .(0x33d9a760, 0x90c8, 0x11d0, 0xbd, 0x43, 0x00, 0xa0, 0xc9, 0x11, 0xce, 0x86);
		public const Guid DMOCATEGORY_AUDIO_EFFECT = .(0xf3602b3f, 0x0592, 0x48df, 0xa4, 0xcd, 0x67, 0x47, 0x21, 0xe7, 0xeb, 0xeb);
		public const Guid DMOCATEGORY_VIDEO_EFFECT = .(0xd990ee14, 0x776c, 0x4723, 0xbe, 0x46, 0x3d, 0xa2, 0xf5, 0x6f, 0x10, 0xb9);
		public const Guid DMOCATEGORY_AUDIO_CAPTURE_EFFECT = .(0xf665aaba, 0x3e09, 0x4920, 0xaa, 0x5f, 0x21, 0x98, 0x11, 0x14, 0x8f, 0x09);
		public const Guid DMOCATEGORY_ACOUSTIC_ECHO_CANCEL = .(0xbf963d80, 0xc559, 0x11d0, 0x8a, 0x2b, 0x00, 0xa0, 0xc9, 0x25, 0x5a, 0xc1);
		public const Guid DMOCATEGORY_AUDIO_NOISE_SUPPRESS = .(0xe07f903f, 0x62fd, 0x4e60, 0x8c, 0xdd, 0xde, 0xa7, 0x23, 0x66, 0x65, 0xb5);
		public const Guid DMOCATEGORY_AGC = .(0xe88c9ba0, 0xc557, 0x11d0, 0x8a, 0x2b, 0x00, 0xa0, 0xc9, 0x25, 0x5a, 0xc1);
		
		// --- Enums ---
		
		public enum _DMO_INPUT_DATA_BUFFER_FLAGS : int32
		{
			SYNCPOINT = 1,
			TIME = 2,
			TIMELENGTH = 4,
			DISCONTINUITY = 8,
		}
		public enum _DMO_OUTPUT_DATA_BUFFER_FLAGS : int32
		{
			SYNCPOINT = 1,
			TIME = 2,
			TIMELENGTH = 4,
			DISCONTINUITY = 8,
			INCOMPLETE = 16777216,
		}
		public enum _DMO_INPUT_STATUS_FLAGS : int32
		{
			DMO_INPUT_STATUSF_ACCEPT_DATA = 1,
		}
		public enum _DMO_INPUT_STREAM_INFO_FLAGS : int32
		{
			WHOLE_SAMPLES = 1,
			SINGLE_SAMPLE_PER_BUFFER = 2,
			FIXED_SAMPLE_SIZE = 4,
			HOLDS_BUFFERS = 8,
		}
		public enum _DMO_OUTPUT_STREAM_INFO_FLAGS : int32
		{
			WHOLE_SAMPLES = 1,
			SINGLE_SAMPLE_PER_BUFFER = 2,
			FIXED_SAMPLE_SIZE = 4,
			DISCARDABLE = 8,
			OPTIONAL = 16,
		}
		public enum _DMO_SET_TYPE_FLAGS : int32
		{
			TEST_ONLY = 1,
			CLEAR = 2,
		}
		public enum _DMO_PROCESS_OUTPUT_FLAGS : int32
		{
			DMO_PROCESS_OUTPUT_DISCARD_WHEN_NO_BUFFER = 1,
		}
		public enum _DMO_INPLACE_PROCESS_FLAGS : int32
		{
			NORMAL = 0,
			ZERO = 1,
		}
		public enum _DMO_QUALITY_STATUS_FLAGS : int32
		{
			DMO_QUALITY_STATUS_ENABLED = 1,
		}
		public enum _DMO_VIDEO_OUTPUT_STREAM_FLAGS : int32
		{
			DMO_VOSF_NEEDS_PREVIOUS_SAMPLE = 1,
		}
		public enum DMO_REGISTER_FLAGS : int32
		{
			REGISTERF_IS_KEYED = 1,
		}
		public enum DMO_ENUM_FLAGS : int32
		{
			ENUMF_INCLUDE_KEYED = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct DMO_MEDIA_TYPE
		{
			public Guid majortype;
			public Guid subtype;
			public BOOL bFixedSizeSamples;
			public BOOL bTemporalCompression;
			public uint32 lSampleSize;
			public Guid formattype;
			public IUnknown* pUnk;
			public uint32 cbFormat;
			public uint8* pbFormat;
		}
		[CRepr]
		public struct DMO_OUTPUT_DATA_BUFFER
		{
			public IMediaBuffer* pBuffer;
			public uint32 dwStatus;
			public int64 rtTimestamp;
			public int64 rtTimelength;
		}
		[CRepr]
		public struct DMO_PARTIAL_MEDIATYPE
		{
			public Guid type;
			public Guid subtype;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IMediaBuffer : IUnknown
		{
			public const new Guid IID = .(0x59eff8b9, 0x938c, 0x4a26, 0x82, 0xf2, 0x95, 0xcb, 0x84, 0xcd, 0xc8, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetLength(uint32 cbLength) mut => VT.SetLength(ref this, cbLength);
			public HRESULT GetMaxLength(out uint32 pcbMaxLength) mut => VT.GetMaxLength(ref this, out pcbMaxLength);
			public HRESULT GetBufferAndLength(uint8** ppBuffer, uint32* pcbLength) mut => VT.GetBufferAndLength(ref this, ppBuffer, pcbLength);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaBuffer self, uint32 cbLength) SetLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaBuffer self, out uint32 pcbMaxLength) GetMaxLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaBuffer self, uint8** ppBuffer, uint32* pcbLength) GetBufferAndLength;
			}
		}
		[CRepr]
		public struct IMediaObject : IUnknown
		{
			public const new Guid IID = .(0xd8ad0f58, 0x5494, 0x4102, 0x97, 0xc5, 0xec, 0x79, 0x8e, 0x59, 0xbc, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamCount(out uint32 pcInputStreams, out uint32 pcOutputStreams) mut => VT.GetStreamCount(ref this, out pcInputStreams, out pcOutputStreams);
			public HRESULT GetInputStreamInfo(uint32 dwInputStreamIndex, out uint32 pdwFlags) mut => VT.GetInputStreamInfo(ref this, dwInputStreamIndex, out pdwFlags);
			public HRESULT GetOutputStreamInfo(uint32 dwOutputStreamIndex, out uint32 pdwFlags) mut => VT.GetOutputStreamInfo(ref this, dwOutputStreamIndex, out pdwFlags);
			public HRESULT GetInputType(uint32 dwInputStreamIndex, uint32 dwTypeIndex, DMO_MEDIA_TYPE* pmt) mut => VT.GetInputType(ref this, dwInputStreamIndex, dwTypeIndex, pmt);
			public HRESULT GetOutputType(uint32 dwOutputStreamIndex, uint32 dwTypeIndex, DMO_MEDIA_TYPE* pmt) mut => VT.GetOutputType(ref this, dwOutputStreamIndex, dwTypeIndex, pmt);
			public HRESULT SetInputType(uint32 dwInputStreamIndex, DMO_MEDIA_TYPE* pmt, uint32 dwFlags) mut => VT.SetInputType(ref this, dwInputStreamIndex, pmt, dwFlags);
			public HRESULT SetOutputType(uint32 dwOutputStreamIndex, DMO_MEDIA_TYPE* pmt, uint32 dwFlags) mut => VT.SetOutputType(ref this, dwOutputStreamIndex, pmt, dwFlags);
			public HRESULT GetInputCurrentType(uint32 dwInputStreamIndex, out DMO_MEDIA_TYPE pmt) mut => VT.GetInputCurrentType(ref this, dwInputStreamIndex, out pmt);
			public HRESULT GetOutputCurrentType(uint32 dwOutputStreamIndex, out DMO_MEDIA_TYPE pmt) mut => VT.GetOutputCurrentType(ref this, dwOutputStreamIndex, out pmt);
			public HRESULT GetInputSizeInfo(uint32 dwInputStreamIndex, out uint32 pcbSize, out uint32 pcbMaxLookahead, out uint32 pcbAlignment) mut => VT.GetInputSizeInfo(ref this, dwInputStreamIndex, out pcbSize, out pcbMaxLookahead, out pcbAlignment);
			public HRESULT GetOutputSizeInfo(uint32 dwOutputStreamIndex, out uint32 pcbSize, out uint32 pcbAlignment) mut => VT.GetOutputSizeInfo(ref this, dwOutputStreamIndex, out pcbSize, out pcbAlignment);
			public HRESULT GetInputMaxLatency(uint32 dwInputStreamIndex, out int64 prtMaxLatency) mut => VT.GetInputMaxLatency(ref this, dwInputStreamIndex, out prtMaxLatency);
			public HRESULT SetInputMaxLatency(uint32 dwInputStreamIndex, int64 rtMaxLatency) mut => VT.SetInputMaxLatency(ref this, dwInputStreamIndex, rtMaxLatency);
			public HRESULT Flush() mut => VT.Flush(ref this);
			public HRESULT Discontinuity(uint32 dwInputStreamIndex) mut => VT.Discontinuity(ref this, dwInputStreamIndex);
			public HRESULT AllocateStreamingResources() mut => VT.AllocateStreamingResources(ref this);
			public HRESULT FreeStreamingResources() mut => VT.FreeStreamingResources(ref this);
			public HRESULT GetInputStatus(uint32 dwInputStreamIndex, out uint32 dwFlags) mut => VT.GetInputStatus(ref this, dwInputStreamIndex, out dwFlags);
			public HRESULT ProcessInput(uint32 dwInputStreamIndex, ref IMediaBuffer pBuffer, uint32 dwFlags, int64 rtTimestamp, int64 rtTimelength) mut => VT.ProcessInput(ref this, dwInputStreamIndex, ref pBuffer, dwFlags, rtTimestamp, rtTimelength);
			public HRESULT ProcessOutput(uint32 dwFlags, uint32 cOutputBufferCount, DMO_OUTPUT_DATA_BUFFER* pOutputBuffers, out uint32 pdwStatus) mut => VT.ProcessOutput(ref this, dwFlags, cOutputBufferCount, pOutputBuffers, out pdwStatus);
			public HRESULT Lock(int32 bLock) mut => VT.Lock(ref this, bLock);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, out uint32 pcInputStreams, out uint32 pcOutputStreams) GetStreamCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwInputStreamIndex, out uint32 pdwFlags) GetInputStreamInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwOutputStreamIndex, out uint32 pdwFlags) GetOutputStreamInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwInputStreamIndex, uint32 dwTypeIndex, DMO_MEDIA_TYPE* pmt) GetInputType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwOutputStreamIndex, uint32 dwTypeIndex, DMO_MEDIA_TYPE* pmt) GetOutputType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwInputStreamIndex, DMO_MEDIA_TYPE* pmt, uint32 dwFlags) SetInputType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwOutputStreamIndex, DMO_MEDIA_TYPE* pmt, uint32 dwFlags) SetOutputType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwInputStreamIndex, out DMO_MEDIA_TYPE pmt) GetInputCurrentType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwOutputStreamIndex, out DMO_MEDIA_TYPE pmt) GetOutputCurrentType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwInputStreamIndex, out uint32 pcbSize, out uint32 pcbMaxLookahead, out uint32 pcbAlignment) GetInputSizeInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwOutputStreamIndex, out uint32 pcbSize, out uint32 pcbAlignment) GetOutputSizeInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwInputStreamIndex, out int64 prtMaxLatency) GetInputMaxLatency;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwInputStreamIndex, int64 rtMaxLatency) SetInputMaxLatency;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self) Flush;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwInputStreamIndex) Discontinuity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self) AllocateStreamingResources;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self) FreeStreamingResources;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwInputStreamIndex, out uint32 dwFlags) GetInputStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwInputStreamIndex, ref IMediaBuffer pBuffer, uint32 dwFlags, int64 rtTimestamp, int64 rtTimelength) ProcessInput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, uint32 dwFlags, uint32 cOutputBufferCount, DMO_OUTPUT_DATA_BUFFER* pOutputBuffers, out uint32 pdwStatus) ProcessOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObject self, int32 bLock) Lock;
			}
		}
		[CRepr]
		public struct IEnumDMO : IUnknown
		{
			public const new Guid IID = .(0x2c3cd98a, 0x2bfa, 0x4a53, 0x9c, 0x27, 0x52, 0x49, 0xba, 0x64, 0xba, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cItemsToFetch, Guid* pCLSID, PWSTR* Names, out uint32 pcItemsFetched) mut => VT.Next(ref this, cItemsToFetch, pCLSID, Names, out pcItemsFetched);
			public HRESULT Skip(uint32 cItemsToSkip) mut => VT.Skip(ref this, cItemsToSkip);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumDMO* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDMO self, uint32 cItemsToFetch, Guid* pCLSID, PWSTR* Names, out uint32 pcItemsFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDMO self, uint32 cItemsToSkip) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDMO self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDMO self, out IEnumDMO* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IMediaObjectInPlace : IUnknown
		{
			public const new Guid IID = .(0x651b9ad0, 0x0fc7, 0x4aa9, 0x95, 0x38, 0xd8, 0x99, 0x31, 0x01, 0x07, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Process(uint32 ulSize, out uint8 pData, int64 refTimeStart, uint32 dwFlags) mut => VT.Process(ref this, ulSize, out pData, refTimeStart, dwFlags);
			public HRESULT Clone(out IMediaObjectInPlace* ppMediaObject) mut => VT.Clone(ref this, out ppMediaObject);
			public HRESULT GetLatency(out int64 pLatencyTime) mut => VT.GetLatency(ref this, out pLatencyTime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObjectInPlace self, uint32 ulSize, out uint8 pData, int64 refTimeStart, uint32 dwFlags) Process;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObjectInPlace self, out IMediaObjectInPlace* ppMediaObject) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaObjectInPlace self, out int64 pLatencyTime) GetLatency;
			}
		}
		[CRepr]
		public struct IDMOQualityControl : IUnknown
		{
			public const new Guid IID = .(0x65abea96, 0xcf36, 0x453f, 0xaf, 0x8a, 0x70, 0x5e, 0x98, 0xf1, 0x62, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetNow(int64 rtNow) mut => VT.SetNow(ref this, rtNow);
			public HRESULT SetStatus(uint32 dwFlags) mut => VT.SetStatus(ref this, dwFlags);
			public HRESULT GetStatus(out uint32 pdwFlags) mut => VT.GetStatus(ref this, out pdwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMOQualityControl self, int64 rtNow) SetNow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMOQualityControl self, uint32 dwFlags) SetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMOQualityControl self, out uint32 pdwFlags) GetStatus;
			}
		}
		[CRepr]
		public struct IDMOVideoOutputOptimizations : IUnknown
		{
			public const new Guid IID = .(0xbe8f4f4e, 0x5b16, 0x4d29, 0xb3, 0x50, 0x7f, 0x6b, 0x5d, 0x92, 0x98, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryOperationModePreferences(uint32 ulOutputStreamIndex, out uint32 pdwRequestedCapabilities) mut => VT.QueryOperationModePreferences(ref this, ulOutputStreamIndex, out pdwRequestedCapabilities);
			public HRESULT SetOperationMode(uint32 ulOutputStreamIndex, uint32 dwEnabledFeatures) mut => VT.SetOperationMode(ref this, ulOutputStreamIndex, dwEnabledFeatures);
			public HRESULT GetCurrentOperationMode(uint32 ulOutputStreamIndex, out uint32 pdwEnabledFeatures) mut => VT.GetCurrentOperationMode(ref this, ulOutputStreamIndex, out pdwEnabledFeatures);
			public HRESULT GetCurrentSampleRequirements(uint32 ulOutputStreamIndex, out uint32 pdwRequestedFeatures) mut => VT.GetCurrentSampleRequirements(ref this, ulOutputStreamIndex, out pdwRequestedFeatures);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMOVideoOutputOptimizations self, uint32 ulOutputStreamIndex, out uint32 pdwRequestedCapabilities) QueryOperationModePreferences;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMOVideoOutputOptimizations self, uint32 ulOutputStreamIndex, uint32 dwEnabledFeatures) SetOperationMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMOVideoOutputOptimizations self, uint32 ulOutputStreamIndex, out uint32 pdwEnabledFeatures) GetCurrentOperationMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMOVideoOutputOptimizations self, uint32 ulOutputStreamIndex, out uint32 pdwRequestedFeatures) GetCurrentSampleRequirements;
			}
		}
		
		// --- Functions ---
		
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMORegister(PWSTR szName, in Guid clsidDMO, in Guid guidCategory, uint32 dwFlags, uint32 cInTypes, in DMO_PARTIAL_MEDIATYPE pInTypes, uint32 cOutTypes, in DMO_PARTIAL_MEDIATYPE pOutTypes);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMOUnregister(in Guid clsidDMO, in Guid guidCategory);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMOEnum(in Guid guidCategory, uint32 dwFlags, uint32 cInTypes, in DMO_PARTIAL_MEDIATYPE pInTypes, uint32 cOutTypes, in DMO_PARTIAL_MEDIATYPE pOutTypes, out IEnumDMO* ppEnum);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMOGetTypes(in Guid clsidDMO, uint32 ulInputTypesRequested, out uint32 pulInputTypesSupplied, out DMO_PARTIAL_MEDIATYPE pInputTypes, uint32 ulOutputTypesRequested, out uint32 pulOutputTypesSupplied, out DMO_PARTIAL_MEDIATYPE pOutputTypes);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMOGetName(in Guid clsidDMO, char16* szName);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MoInitMediaType(out DMO_MEDIA_TYPE pmt, uint32 cbFormat);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MoFreeMediaType(out DMO_MEDIA_TYPE pmt);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MoCopyMediaType(out DMO_MEDIA_TYPE pmtDest, in DMO_MEDIA_TYPE pmtSrc);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MoCreateMediaType(out DMO_MEDIA_TYPE* ppmt, uint32 cbFormat);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MoDeleteMediaType(out DMO_MEDIA_TYPE pmt);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MoDuplicateMediaType(out DMO_MEDIA_TYPE* ppmtDest, in DMO_MEDIA_TYPE pmtSrc);
	}
}
