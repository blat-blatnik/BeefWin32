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
		
		[AllowDuplicates]
		public enum _DMO_INPUT_DATA_BUFFER_FLAGS : int32
		{
			DMO_INPUT_DATA_BUFFERF_SYNCPOINT = 1,
			DMO_INPUT_DATA_BUFFERF_TIME = 2,
			DMO_INPUT_DATA_BUFFERF_TIMELENGTH = 4,
			DMO_INPUT_DATA_BUFFERF_DISCONTINUITY = 8,
		}
		[AllowDuplicates]
		public enum _DMO_OUTPUT_DATA_BUFFER_FLAGS : int32
		{
			DMO_OUTPUT_DATA_BUFFERF_SYNCPOINT = 1,
			DMO_OUTPUT_DATA_BUFFERF_TIME = 2,
			DMO_OUTPUT_DATA_BUFFERF_TIMELENGTH = 4,
			DMO_OUTPUT_DATA_BUFFERF_DISCONTINUITY = 8,
			DMO_OUTPUT_DATA_BUFFERF_INCOMPLETE = 16777216,
		}
		[AllowDuplicates]
		public enum _DMO_INPUT_STATUS_FLAGS : int32
		{
			DMO_INPUT_STATUSF_ACCEPT_DATA = 1,
		}
		[AllowDuplicates]
		public enum _DMO_INPUT_STREAM_INFO_FLAGS : int32
		{
			DMO_INPUT_STREAMF_WHOLE_SAMPLES = 1,
			DMO_INPUT_STREAMF_SINGLE_SAMPLE_PER_BUFFER = 2,
			DMO_INPUT_STREAMF_FIXED_SAMPLE_SIZE = 4,
			DMO_INPUT_STREAMF_HOLDS_BUFFERS = 8,
		}
		[AllowDuplicates]
		public enum _DMO_OUTPUT_STREAM_INFO_FLAGS : int32
		{
			DMO_OUTPUT_STREAMF_WHOLE_SAMPLES = 1,
			DMO_OUTPUT_STREAMF_SINGLE_SAMPLE_PER_BUFFER = 2,
			DMO_OUTPUT_STREAMF_FIXED_SAMPLE_SIZE = 4,
			DMO_OUTPUT_STREAMF_DISCARDABLE = 8,
			DMO_OUTPUT_STREAMF_OPTIONAL = 16,
		}
		[AllowDuplicates]
		public enum _DMO_SET_TYPE_FLAGS : int32
		{
			DMO_SET_TYPEF_TEST_ONLY = 1,
			DMO_SET_TYPEF_CLEAR = 2,
		}
		[AllowDuplicates]
		public enum _DMO_PROCESS_OUTPUT_FLAGS : int32
		{
			DMO_PROCESS_OUTPUT_DISCARD_WHEN_NO_BUFFER = 1,
		}
		[AllowDuplicates]
		public enum _DMO_INPLACE_PROCESS_FLAGS : int32
		{
			DMO_INPLACE_NORMAL = 0,
			DMO_INPLACE_ZERO = 1,
		}
		[AllowDuplicates]
		public enum _DMO_QUALITY_STATUS_FLAGS : int32
		{
			DMO_QUALITY_STATUS_ENABLED = 1,
		}
		[AllowDuplicates]
		public enum _DMO_VIDEO_OUTPUT_STREAM_FLAGS : int32
		{
			DMO_VOSF_NEEDS_PREVIOUS_SAMPLE = 1,
		}
		[AllowDuplicates]
		public enum DMO_REGISTER_FLAGS : int32
		{
			DMO_REGISTERF_IS_KEYED = 1,
		}
		[AllowDuplicates]
		public enum DMO_ENUM_FLAGS : int32
		{
			DMO_ENUMF_INCLUDE_KEYED = 1,
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
			public IUnknown pUnk;
			public uint32 cbFormat;
			public uint8* pbFormat;
		}
		[CRepr]
		public struct DMO_OUTPUT_DATA_BUFFER
		{
			public IMediaBuffer pBuffer;
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
		
		public struct IMediaBuffer {}
		public struct IMediaObject {}
		public struct IEnumDMO {}
		public struct IMediaObjectInPlace {}
		public struct IDMOQualityControl {}
		public struct IDMOVideoOutputOptimizations {}
		
		// --- Functions ---
		
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMORegister(PWSTR szName, Guid* clsidDMO, Guid* guidCategory, uint32 dwFlags, uint32 cInTypes, DMO_PARTIAL_MEDIATYPE* pInTypes, uint32 cOutTypes, DMO_PARTIAL_MEDIATYPE* pOutTypes);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMOUnregister(Guid* clsidDMO, Guid* guidCategory);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMOEnum(Guid* guidCategory, uint32 dwFlags, uint32 cInTypes, DMO_PARTIAL_MEDIATYPE* pInTypes, uint32 cOutTypes, DMO_PARTIAL_MEDIATYPE* pOutTypes, IEnumDMO* ppEnum);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMOGetTypes(Guid* clsidDMO, uint32 ulInputTypesRequested, uint32* pulInputTypesSupplied, DMO_PARTIAL_MEDIATYPE* pInputTypes, uint32 ulOutputTypesRequested, uint32* pulOutputTypesSupplied, DMO_PARTIAL_MEDIATYPE* pOutputTypes);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMOGetName(Guid* clsidDMO, char16* szName);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MoInitMediaType(DMO_MEDIA_TYPE* pmt, uint32 cbFormat);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MoFreeMediaType(DMO_MEDIA_TYPE* pmt);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MoCopyMediaType(DMO_MEDIA_TYPE* pmtDest, DMO_MEDIA_TYPE* pmtSrc);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MoCreateMediaType(DMO_MEDIA_TYPE** ppmt, uint32 cbFormat);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MoDeleteMediaType(DMO_MEDIA_TYPE* pmt);
		[Import("msdmo.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MoDuplicateMediaType(DMO_MEDIA_TYPE** ppmtDest, DMO_MEDIA_TYPE* pmtSrc);
		
	}
}
