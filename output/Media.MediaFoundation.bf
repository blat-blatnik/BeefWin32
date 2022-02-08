using System;

// namespace Media.MediaFoundation
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid MEDIASUBTYPE_None = .(0xe436eb8e, 0x524f, 0x11ce, 0x9f, 0x53, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
		public const uint32 AVENC_H263V_LEVELCOUNT = 8;
		public const uint32 AVENC_H264V_LEVELCOUNT = 16;
		public const uint32 AVENC_H264V_MAX_MBBITS = 3200;
		public const Guid D3D12_VIDEO_DECODE_PROFILE_MPEG2 = .(0xee27417f, 0x5e28, 0x4e65, 0xbe, 0xea, 0x1d, 0x26, 0xb5, 0x08, 0xad, 0xc9);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_MPEG1_AND_MPEG2 = .(0x86695f12, 0x340e, 0x4f04, 0x9f, 0xd3, 0x92, 0x53, 0xdd, 0x32, 0x74, 0x60);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_H264 = .(0x1b81be68, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_H264_STEREO_PROGRESSIVE = .(0xd79be8da, 0x0cf1, 0x4c81, 0xb8, 0x2a, 0x69, 0xa4, 0xe2, 0x36, 0xf4, 0x3d);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_H264_STEREO = .(0xf9aaccbb, 0xc2b6, 0x4cfc, 0x87, 0x79, 0x57, 0x07, 0xb1, 0x76, 0x05, 0x52);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_H264_MULTIVIEW = .(0x705b9d82, 0x76cf, 0x49d6, 0xb7, 0xe6, 0xac, 0x88, 0x72, 0xdb, 0x01, 0x3c);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_VC1 = .(0x1b81bea3, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_VC1_D2010 = .(0x1b81bea4, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_MPEG4PT2_SIMPLE = .(0xefd64d74, 0xc9e8, 0x41d7, 0xa5, 0xe9, 0xe9, 0xb0, 0xe3, 0x9f, 0xa3, 0x19);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_MPEG4PT2_ADVSIMPLE_NOGMC = .(0xed418a9f, 0x010d, 0x4eda, 0x9a, 0xe3, 0x9a, 0x65, 0x35, 0x8d, 0x8d, 0x2e);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_HEVC_MAIN = .(0x5b11d51b, 0x2f4c, 0x4452, 0xbc, 0xc3, 0x09, 0xf2, 0xa1, 0x16, 0x0c, 0xc0);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_HEVC_MAIN10 = .(0x107af0e0, 0xef1a, 0x4d19, 0xab, 0xa8, 0x67, 0xa1, 0x63, 0x07, 0x3d, 0x13);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_VP9 = .(0x463707f8, 0xa1d0, 0x4585, 0x87, 0x6d, 0x83, 0xaa, 0x6d, 0x60, 0xb8, 0x9e);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_VP9_10BIT_PROFILE2 = .(0xa4c749ef, 0x6ecf, 0x48aa, 0x84, 0x48, 0x50, 0xa7, 0xa1, 0x16, 0x5f, 0xf7);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_VP8 = .(0x90b899ea, 0x3a62, 0x4705, 0x88, 0xb3, 0x8d, 0xf0, 0x4b, 0x27, 0x44, 0xe7);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_AV1_PROFILE0 = .(0xb8be4ccb, 0xcf53, 0x46ba, 0x8d, 0x59, 0xd6, 0xb8, 0xa6, 0xda, 0x5d, 0x2a);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_AV1_PROFILE1 = .(0x6936ff0f, 0x45b1, 0x4163, 0x9c, 0xc1, 0x64, 0x6e, 0xf6, 0x94, 0x61, 0x08);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_AV1_PROFILE2 = .(0x0c5f2aa1, 0xe541, 0x4089, 0xbb, 0x7b, 0x98, 0x11, 0x0a, 0x19, 0xd7, 0xc8);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_AV1_12BIT_PROFILE2 = .(0x17127009, 0xa00f, 0x4ce1, 0x99, 0x4e, 0xbf, 0x40, 0x81, 0xf6, 0xf3, 0xf0);
		public const Guid D3D12_VIDEO_DECODE_PROFILE_AV1_12BIT_PROFILE2_420 = .(0x2d80bed6, 0x9cac, 0x4835, 0x9e, 0x91, 0x32, 0x7b, 0xbc, 0x4f, 0x9e, 0xe8);
		public const Guid DXVA2_ModeMPEG2_MoComp = .(0xe6a9f44b, 0x61b0, 0x4563, 0x9e, 0xa4, 0x63, 0xd2, 0xa3, 0xc6, 0xfe, 0x66);
		public const Guid DXVA2_ModeMPEG2_IDCT = .(0xbf22ad00, 0x03ea, 0x4690, 0x80, 0x77, 0x47, 0x33, 0x46, 0x20, 0x9b, 0x7e);
		public const Guid DXVA2_ModeMPEG2_VLD = .(0xee27417f, 0x5e28, 0x4e65, 0xbe, 0xea, 0x1d, 0x26, 0xb5, 0x08, 0xad, 0xc9);
		public const Guid DXVA2_ModeMPEG1_VLD = .(0x6f3ec719, 0x3735, 0x42cc, 0x80, 0x63, 0x65, 0xcc, 0x3c, 0xb3, 0x66, 0x16);
		public const Guid DXVA2_ModeMPEG2and1_VLD = .(0x86695f12, 0x340e, 0x4f04, 0x9f, 0xd3, 0x92, 0x53, 0xdd, 0x32, 0x74, 0x60);
		public const Guid DXVA2_ModeH264_A = .(0x1b81be64, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeH264_B = .(0x1b81be65, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeH264_C = .(0x1b81be66, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeH264_D = .(0x1b81be67, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeH264_E = .(0x1b81be68, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeH264_F = .(0x1b81be69, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeH264_VLD_WithFMOASO_NoFGT = .(0xd5f04ff9, 0x3418, 0x45d8, 0x95, 0x61, 0x32, 0xa7, 0x6a, 0xae, 0x2d, 0xdd);
		public const Guid DXVA2_ModeH264_VLD_Stereo_Progressive_NoFGT = .(0xd79be8da, 0x0cf1, 0x4c81, 0xb8, 0x2a, 0x69, 0xa4, 0xe2, 0x36, 0xf4, 0x3d);
		public const Guid DXVA2_ModeH264_VLD_Stereo_NoFGT = .(0xf9aaccbb, 0xc2b6, 0x4cfc, 0x87, 0x79, 0x57, 0x07, 0xb1, 0x76, 0x05, 0x52);
		public const Guid DXVA2_ModeH264_VLD_Multiview_NoFGT = .(0x705b9d82, 0x76cf, 0x49d6, 0xb7, 0xe6, 0xac, 0x88, 0x72, 0xdb, 0x01, 0x3c);
		public const Guid DXVA2_ModeWMV8_A = .(0x1b81be80, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeWMV8_B = .(0x1b81be81, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeWMV9_A = .(0x1b81be90, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeWMV9_B = .(0x1b81be91, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeWMV9_C = .(0x1b81be94, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeVC1_A = .(0x1b81bea0, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeVC1_B = .(0x1b81bea1, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeVC1_C = .(0x1b81bea2, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeVC1_D = .(0x1b81bea3, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_ModeVC1_D2010 = .(0x1b81bea4, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_NoEncrypt = .(0x1b81bed0, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA2_VideoProcProgressiveDevice = .(0x5a54a0c9, 0xc7ec, 0x4bd9, 0x8e, 0xde, 0xf3, 0xc7, 0x5d, 0xc4, 0x39, 0x3b);
		public const Guid DXVA2_VideoProcBobDevice = .(0x335aa36e, 0x7884, 0x43a4, 0x9c, 0x91, 0x7f, 0x87, 0xfa, 0xf3, 0xe3, 0x7e);
		public const Guid DXVA2_VideoProcSoftwareDevice = .(0x4553d47f, 0xee7e, 0x4e3f, 0x94, 0x75, 0xdb, 0xf1, 0x37, 0x6c, 0x48, 0x10);
		public const Guid DXVA2_ModeMPEG4pt2_VLD_Simple = .(0xefd64d74, 0xc9e8, 0x41d7, 0xa5, 0xe9, 0xe9, 0xb0, 0xe3, 0x9f, 0xa3, 0x19);
		public const Guid DXVA2_ModeMPEG4pt2_VLD_AdvSimple_NoGMC = .(0xed418a9f, 0x010d, 0x4eda, 0x9a, 0xe3, 0x9a, 0x65, 0x35, 0x8d, 0x8d, 0x2e);
		public const Guid DXVA2_ModeMPEG4pt2_VLD_AdvSimple_GMC = .(0xab998b5b, 0x4258, 0x44a9, 0x9f, 0xeb, 0x94, 0xe5, 0x97, 0xa6, 0xba, 0xae);
		public const Guid DXVA2_ModeHEVC_VLD_Main = .(0x5b11d51b, 0x2f4c, 0x4452, 0xbc, 0xc3, 0x09, 0xf2, 0xa1, 0x16, 0x0c, 0xc0);
		public const Guid DXVA2_ModeHEVC_VLD_Main10 = .(0x107af0e0, 0xef1a, 0x4d19, 0xab, 0xa8, 0x67, 0xa1, 0x63, 0x07, 0x3d, 0x13);
		public const Guid DXVA2_ModeVP9_VLD_Profile0 = .(0x463707f8, 0xa1d0, 0x4585, 0x87, 0x6d, 0x83, 0xaa, 0x6d, 0x60, 0xb8, 0x9e);
		public const Guid DXVA2_ModeVP9_VLD_10bit_Profile2 = .(0xa4c749ef, 0x6ecf, 0x48aa, 0x84, 0x48, 0x50, 0xa7, 0xa1, 0x16, 0x5f, 0xf7);
		public const Guid DXVA2_ModeVP8_VLD = .(0x90b899ea, 0x3a62, 0x4705, 0x88, 0xb3, 0x8d, 0xf0, 0x4b, 0x27, 0x44, 0xe7);
		public const HRESULT DXVA2_E_NOT_INITIALIZED = -2147217408;
		public const HRESULT DXVA2_E_NEW_VIDEO_DEVICE = -2147217407;
		public const HRESULT DXVA2_E_VIDEO_DEVICE_LOCKED = -2147217406;
		public const HRESULT DXVA2_E_NOT_AVAILABLE = -2147217405;
		public const uint32 MAX_SUBSTREAMS = 15;
		public const uint32 DXVA2_DECODE_GET_DRIVER_HANDLE = 1829;
		public const uint32 DXVA2_DECODE_SPECIFY_ENCRYPTED_BLOCKS = 1828;
		public const Guid DXVAp_ModeMPEG2_A = .(0x1b81be0a, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVAp_ModeMPEG2_C = .(0x1b81be0c, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVAp_NoEncrypt = .(0x1b81bed0, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVAp_DeinterlaceBobDevice = .(0x335aa36e, 0x7884, 0x43a4, 0x9c, 0x91, 0x7f, 0x87, 0xfa, 0xf3, 0xe3, 0x7e);
		public const Guid DXVAp_DeinterlaceContainerDevice = .(0x0e85cb93, 0x3046, 0x4ff0, 0xae, 0xcc, 0xd5, 0x8c, 0xb5, 0xf0, 0x35, 0xfd);
		public const Guid DXVAHD_STREAM_STATE_PRIVATE_IVTC = .(0x9c601e3c, 0x0f33, 0x414c, 0xa7, 0x39, 0x99, 0x54, 0x0e, 0xe4, 0x2d, 0xa5);
		public const Guid DXVAHDControlGuid = .(0xa0386e75, 0xf70c, 0x464c, 0xa9, 0xce, 0x33, 0xc4, 0x4e, 0x09, 0x16, 0x23);
		public const Guid DXVAHDETWGUID_CREATEVIDEOPROCESSOR = .(0x681e3d1e, 0x5674, 0x4fb3, 0xa5, 0x03, 0x2f, 0x20, 0x55, 0xe9, 0x1f, 0x60);
		public const Guid DXVAHDETWGUID_VIDEOPROCESSBLTSTATE = .(0x76c94b5a, 0x193f, 0x4692, 0x94, 0x84, 0xa4, 0xd9, 0x99, 0xda, 0x81, 0xa8);
		public const Guid DXVAHDETWGUID_VIDEOPROCESSSTREAMSTATE = .(0x262c0b02, 0x209d, 0x47ed, 0x94, 0xd8, 0x82, 0xae, 0x02, 0xb8, 0x4a, 0xa7);
		public const Guid DXVAHDETWGUID_VIDEOPROCESSBLTHD = .(0xbef3d435, 0x78c7, 0x4de3, 0x97, 0x07, 0xcd, 0x1b, 0x08, 0x3b, 0x16, 0x0a);
		public const Guid DXVAHDETWGUID_VIDEOPROCESSBLTHD_STREAM = .(0x27ae473e, 0xa5fc, 0x4be5, 0xb4, 0xe3, 0xf2, 0x49, 0x94, 0xd3, 0xc4, 0x95);
		public const Guid DXVAHDETWGUID_DESTROYVIDEOPROCESSOR = .(0xf943f0a0, 0x3f16, 0x43e0, 0x80, 0x93, 0x10, 0x5a, 0x98, 0x6a, 0xa5, 0xf1);
		public const Guid MR_VIDEO_RENDER_SERVICE = .(0x1092a86c, 0xab1a, 0x459a, 0xa3, 0x36, 0x83, 0x1f, 0xbc, 0x4d, 0x11, 0xff);
		public const Guid MR_VIDEO_MIXER_SERVICE = .(0x073cd2fc, 0x6cf4, 0x40b7, 0x88, 0x59, 0xe8, 0x95, 0x52, 0xc8, 0x41, 0xf8);
		public const Guid MR_VIDEO_ACCELERATION_SERVICE = .(0xefef5175, 0x5c7d, 0x4ce2, 0xbb, 0xbd, 0x34, 0xff, 0x8b, 0xca, 0x65, 0x54);
		public const Guid MR_BUFFER_SERVICE = .(0xa562248c, 0x9ac6, 0x4ffc, 0x9f, 0xba, 0x3a, 0xf8, 0xf8, 0xad, 0x1a, 0x4d);
		public const Guid VIDEO_ZOOM_RECT = .(0x7aaa1638, 0x1b7f, 0x4c93, 0xbd, 0x89, 0x5b, 0x9c, 0x9f, 0xb6, 0xfc, 0xf0);
		public const uint32 MFEVRDLL = 0;
		public const uint32 MF_SDK_VERSION = 2;
		public const uint32 MF_API_VERSION = 112;
		public const uint32 MFSTARTUP_NOSOCKET = 1;
		public const uint32 MFSTARTUP_LITE = 1;
		public const uint32 MFSTARTUP_FULL = 0;
		public const HRESULT MF_E_DXGI_DEVICE_NOT_INITIALIZED = -2147217408;
		public const HRESULT MF_E_DXGI_NEW_VIDEO_DEVICE = -2147217407;
		public const HRESULT MF_E_DXGI_VIDEO_DEVICE_LOCKED = -2147217406;
		public const uint32 MF_1_BYTE_ALIGNMENT = 0;
		public const uint32 MF_2_BYTE_ALIGNMENT = 1;
		public const uint32 MF_4_BYTE_ALIGNMENT = 3;
		public const uint32 MF_8_BYTE_ALIGNMENT = 7;
		public const uint32 MF_16_BYTE_ALIGNMENT = 15;
		public const uint32 MF_32_BYTE_ALIGNMENT = 31;
		public const uint32 MF_64_BYTE_ALIGNMENT = 63;
		public const uint32 MF_128_BYTE_ALIGNMENT = 127;
		public const uint32 MF_256_BYTE_ALIGNMENT = 255;
		public const uint32 MF_512_BYTE_ALIGNMENT = 511;
		public const uint32 MF_1024_BYTE_ALIGNMENT = 1023;
		public const uint32 MF_2048_BYTE_ALIGNMENT = 2047;
		public const uint32 MF_4096_BYTE_ALIGNMENT = 4095;
		public const uint32 MF_8192_BYTE_ALIGNMENT = 8191;
		public const Guid MF_EVENT_SESSIONCAPS = .(0x7e5ebcd0, 0x11b8, 0x4abe, 0xaf, 0xad, 0x10, 0xf6, 0x59, 0x9a, 0x7f, 0x42);
		public const Guid MF_EVENT_SESSIONCAPS_DELTA = .(0x7e5ebcd1, 0x11b8, 0x4abe, 0xaf, 0xad, 0x10, 0xf6, 0x59, 0x9a, 0x7f, 0x42);
		public const uint32 MFSESSIONCAP_START = 1;
		public const uint32 MFSESSIONCAP_SEEK = 2;
		public const uint32 MFSESSIONCAP_PAUSE = 4;
		public const uint32 MFSESSIONCAP_RATE_FORWARD = 16;
		public const uint32 MFSESSIONCAP_RATE_REVERSE = 32;
		public const uint32 MFSESSIONCAP_DOES_NOT_USE_NETWORK = 64;
		public const Guid MF_EVENT_TOPOLOGY_STATUS = .(0x30c5018d, 0x9a53, 0x454b, 0xad, 0x9e, 0x6d, 0x5f, 0x8f, 0xa7, 0xc4, 0x3b);
		public const Guid MF_EVENT_START_PRESENTATION_TIME = .(0x5ad914d0, 0x9b45, 0x4a8d, 0xa2, 0xc0, 0x81, 0xd1, 0xe5, 0x0b, 0xfb, 0x07);
		public const Guid MF_EVENT_PRESENTATION_TIME_OFFSET = .(0x5ad914d1, 0x9b45, 0x4a8d, 0xa2, 0xc0, 0x81, 0xd1, 0xe5, 0x0b, 0xfb, 0x07);
		public const Guid MF_EVENT_START_PRESENTATION_TIME_AT_OUTPUT = .(0x5ad914d2, 0x9b45, 0x4a8d, 0xa2, 0xc0, 0x81, 0xd1, 0xe5, 0x0b, 0xfb, 0x07);
		public const Guid MF_EVENT_SOURCE_FAKE_START = .(0xa8cc55a7, 0x6b31, 0x419f, 0x84, 0x5d, 0xff, 0xb3, 0x51, 0xa2, 0x43, 0x4b);
		public const Guid MF_EVENT_SOURCE_PROJECTSTART = .(0xa8cc55a8, 0x6b31, 0x419f, 0x84, 0x5d, 0xff, 0xb3, 0x51, 0xa2, 0x43, 0x4b);
		public const Guid MF_EVENT_SOURCE_ACTUAL_START = .(0xa8cc55a9, 0x6b31, 0x419f, 0x84, 0x5d, 0xff, 0xb3, 0x51, 0xa2, 0x43, 0x4b);
		public const Guid MF_EVENT_SOURCE_TOPOLOGY_CANCELED = .(0xdb62f650, 0x9a5e, 0x4704, 0xac, 0xf3, 0x56, 0x3b, 0xc6, 0xa7, 0x33, 0x64);
		public const Guid MF_EVENT_SOURCE_CHARACTERISTICS = .(0x47db8490, 0x8b22, 0x4f52, 0xaf, 0xda, 0x9c, 0xe1, 0xb2, 0xd3, 0xcf, 0xa8);
		public const Guid MF_EVENT_SOURCE_CHARACTERISTICS_OLD = .(0x47db8491, 0x8b22, 0x4f52, 0xaf, 0xda, 0x9c, 0xe1, 0xb2, 0xd3, 0xcf, 0xa8);
		public const Guid MF_EVENT_DO_THINNING = .(0x321ea6fb, 0xdad9, 0x46e4, 0xb3, 0x1d, 0xd2, 0xea, 0xe7, 0x09, 0x0e, 0x30);
		public const Guid MF_EVENT_SCRUBSAMPLE_TIME = .(0x9ac712b3, 0xdcb8, 0x44d5, 0x8d, 0x0c, 0x37, 0x45, 0x5a, 0x27, 0x82, 0xe3);
		public const Guid MF_EVENT_OUTPUT_NODE = .(0x830f1a8b, 0xc060, 0x46dd, 0xa8, 0x01, 0x1c, 0x95, 0xde, 0xc9, 0xb1, 0x07);
		public const Guid MF_EVENT_MFT_INPUT_STREAM_ID = .(0xf29c2cca, 0x7ae6, 0x42d2, 0xb2, 0x84, 0xbf, 0x83, 0x7c, 0xc8, 0x74, 0xe2);
		public const Guid MF_EVENT_MFT_CONTEXT = .(0xb7cd31f1, 0x899e, 0x4b41, 0x80, 0xc9, 0x26, 0xa8, 0x96, 0xd3, 0x29, 0x77);
		public const Guid MF_EVENT_STREAM_METADATA_KEYDATA = .(0xcd59a4a1, 0x4a3b, 0x4bbd, 0x86, 0x65, 0x72, 0xa4, 0x0f, 0xbe, 0xa7, 0x76);
		public const Guid MF_EVENT_STREAM_METADATA_CONTENT_KEYIDS = .(0x5063449d, 0xcc29, 0x4fc6, 0xa7, 0x5a, 0xd2, 0x47, 0xb3, 0x5a, 0xf8, 0x5c);
		public const Guid MF_EVENT_STREAM_METADATA_SYSTEMID = .(0x1ea2ef64, 0xba16, 0x4a36, 0x87, 0x19, 0xfe, 0x75, 0x60, 0xba, 0x32, 0xad);
		public const Guid MFSampleExtension_MaxDecodeFrameSize = .(0xd3cc654f, 0xf9f3, 0x4a13, 0x88, 0x9f, 0xf0, 0x4e, 0xb2, 0xb5, 0xb9, 0x57);
		public const Guid MFSampleExtension_AccumulatedNonRefPicPercent = .(0x79ea74df, 0xa740, 0x445b, 0xbc, 0x98, 0xc9, 0xed, 0x1f, 0x26, 0x0e, 0xee);
		public const Guid MFSampleExtension_Encryption_ProtectionScheme = .(0xd054d096, 0x28bb, 0x45da, 0x87, 0xec, 0x74, 0xf3, 0x51, 0x87, 0x14, 0x06);
		public const Guid MFSampleExtension_Encryption_CryptByteBlock = .(0x9d84289b, 0x0c7f, 0x4713, 0xab, 0x95, 0x10, 0x8a, 0xb4, 0x2a, 0xd8, 0x01);
		public const Guid MFSampleExtension_Encryption_SkipByteBlock = .(0x0d550548, 0x8317, 0x4ab1, 0x84, 0x5f, 0xd0, 0x63, 0x06, 0xe2, 0x93, 0xe3);
		public const Guid MFSampleExtension_Encryption_SubSample_Mapping = .(0x8444f27a, 0x69a1, 0x48da, 0xbd, 0x08, 0x11, 0xce, 0xf3, 0x68, 0x30, 0xd2);
		public const Guid MFSampleExtension_Encryption_ClearSliceHeaderData = .(0x5509a4f4, 0x320d, 0x4e6c, 0x8d, 0x1a, 0x94, 0xc6, 0x6d, 0xd2, 0x0c, 0xb0);
		public const Guid MFSampleExtension_Encryption_HardwareProtection_KeyInfoID = .(0x8cbfcceb, 0x94a5, 0x4de1, 0x82, 0x31, 0xa8, 0x5e, 0x47, 0xcf, 0x81, 0xe7);
		public const Guid MFSampleExtension_Encryption_HardwareProtection_KeyInfo = .(0xb2372080, 0x455b, 0x4dd7, 0x99, 0x89, 0x1a, 0x95, 0x57, 0x84, 0xb7, 0x54);
		public const Guid MFSampleExtension_Encryption_HardwareProtection_VideoDecryptorContext = .(0x693470c8, 0xe837, 0x47a0, 0x88, 0xcb, 0x53, 0x5b, 0x90, 0x5e, 0x35, 0x82);
		public const Guid MFSampleExtension_Encryption_Opaque_Data = .(0x224d77e5, 0x1391, 0x4ffb, 0x9f, 0x41, 0xb4, 0x32, 0xf6, 0x8c, 0x61, 0x1d);
		public const Guid MFSampleExtension_NALULengthInfo = .(0x19124e7c, 0xad4b, 0x465f, 0xbb, 0x18, 0x20, 0x18, 0x62, 0x87, 0xb6, 0xaf);
		public const Guid MFSampleExtension_Encryption_ResumeVideoOutput = .(0xa435aba5, 0xafde, 0x4cf5, 0xbc, 0x1c, 0xf6, 0xac, 0xaf, 0x13, 0x94, 0x9d);
		public const Guid MFSampleExtension_Encryption_NALUTypes = .(0xb0f067c7, 0x714c, 0x416c, 0x8d, 0x59, 0x5f, 0x4d, 0xdf, 0x89, 0x13, 0xb6);
		public const Guid MFSampleExtension_Encryption_SPSPPSData = .(0xaede0fa2, 0x0e0c, 0x453c, 0xb7, 0xf3, 0xde, 0x86, 0x93, 0x36, 0x4d, 0x11);
		public const Guid MFSampleExtension_Encryption_SEIData = .(0x3cf0e972, 0x4542, 0x4687, 0x99, 0x99, 0x58, 0x5f, 0x56, 0x5f, 0xba, 0x7d);
		public const Guid MFSampleExtension_Encryption_HardwareProtection = .(0x9a2b2d2b, 0x8270, 0x43e3, 0x84, 0x48, 0x99, 0x4f, 0x42, 0x6e, 0x88, 0x86);
		public const Guid MFSampleExtension_CleanPoint = .(0x9cdf01d8, 0xa0f0, 0x43ba, 0xb0, 0x77, 0xea, 0xa0, 0x6c, 0xbd, 0x72, 0x8a);
		public const Guid MFSampleExtension_Discontinuity = .(0x9cdf01d9, 0xa0f0, 0x43ba, 0xb0, 0x77, 0xea, 0xa0, 0x6c, 0xbd, 0x72, 0x8a);
		public const Guid MFSampleExtension_Token = .(0x8294da66, 0xf328, 0x4805, 0xb5, 0x51, 0x00, 0xde, 0xb4, 0xc5, 0x7a, 0x61);
		public const Guid MFSampleExtension_ClosedCaption_CEA708 = .(0x26f09068, 0xe744, 0x47dc, 0xaa, 0x03, 0xdb, 0xf2, 0x04, 0x03, 0xbd, 0xe6);
		public const uint32 MFSampleExtension_ClosedCaption_CEA708_MAX_SIZE = 256;
		public const Guid MFSampleExtension_DecodeTimestamp = .(0x73a954d4, 0x09e2, 0x4861, 0xbe, 0xfc, 0x94, 0xbd, 0x97, 0xc0, 0x8e, 0x6e);
		public const Guid MFSampleExtension_VideoEncodeQP = .(0xb2efe478, 0xf979, 0x4c66, 0xb9, 0x5e, 0xee, 0x2b, 0x82, 0xc8, 0x2f, 0x36);
		public const Guid MFSampleExtension_VideoEncodePictureType = .(0x973704e6, 0xcd14, 0x483c, 0x8f, 0x20, 0xc9, 0xfc, 0x09, 0x28, 0xba, 0xd5);
		public const Guid MFSampleExtension_FrameCorruption = .(0xb4dd4a8c, 0x0beb, 0x44c4, 0x8b, 0x75, 0xb0, 0x2b, 0x91, 0x3b, 0x04, 0xf0);
		public const Guid MFSampleExtension_DirtyRects = .(0x9ba70225, 0xb342, 0x4e97, 0x91, 0x26, 0x0b, 0x56, 0x6a, 0xb7, 0xea, 0x7e);
		public const Guid MFSampleExtension_MoveRegions = .(0xe2a6c693, 0x3a8b, 0x4b8d, 0x95, 0xd0, 0xf6, 0x02, 0x81, 0xa1, 0x2f, 0xb7);
		public const Guid MFSampleExtension_HDCP_OptionalHeader = .(0x9a2e7390, 0x121f, 0x455f, 0x83, 0x76, 0xc9, 0x74, 0x28, 0xe0, 0xb5, 0x40);
		public const Guid MFSampleExtension_HDCP_FrameCounter = .(0x9d389c60, 0xf507, 0x4aa6, 0xa4, 0x0a, 0x71, 0x02, 0x7a, 0x02, 0xf3, 0xde);
		public const Guid MFSampleExtension_HDCP_StreamID = .(0x177e5d74, 0xc370, 0x4a7a, 0x95, 0xa2, 0x36, 0x83, 0x3c, 0x01, 0xd0, 0xaf);
		public const Guid MFSampleExtension_Timestamp = .(0x1e436999, 0x69be, 0x4c7a, 0x93, 0x69, 0x70, 0x06, 0x8c, 0x02, 0x60, 0xcb);
		public const Guid MFSampleExtension_RepeatFrame = .(0x88be738f, 0x0711, 0x4f42, 0xb4, 0x58, 0x34, 0x4a, 0xed, 0x42, 0xec, 0x2f);
		public const Guid MFT_ENCODER_ERROR = .(0xc8d1eda4, 0x98e4, 0x41d5, 0x92, 0x97, 0x44, 0xf5, 0x38, 0x52, 0xf9, 0x0e);
		public const Guid MFT_GFX_DRIVER_VERSION_ID_Attribute = .(0xf34b9093, 0x05e0, 0x4b16, 0x99, 0x3d, 0x3e, 0x2a, 0x2c, 0xde, 0x6a, 0xd3);
		public const Guid MFSampleExtension_DescrambleData = .(0x43483be6, 0x4903, 0x4314, 0xb0, 0x32, 0x29, 0x51, 0x36, 0x59, 0x36, 0xfc);
		public const Guid MFSampleExtension_SampleKeyID = .(0x9ed713c8, 0x9b87, 0x4b26, 0x82, 0x97, 0xa9, 0x3b, 0x0c, 0x5a, 0x8a, 0xcc);
		public const Guid MFSampleExtension_GenKeyFunc = .(0x441ca1ee, 0x6b1f, 0x4501, 0x90, 0x3a, 0xde, 0x87, 0xdf, 0x42, 0xf6, 0xed);
		public const Guid MFSampleExtension_GenKeyCtx = .(0x188120cb, 0xd7da, 0x4b59, 0x9b, 0x3e, 0x92, 0x52, 0xfd, 0x37, 0x30, 0x1c);
		public const Guid MFSampleExtension_PacketCrossOffsets = .(0x2789671d, 0x389f, 0x40bb, 0x90, 0xd9, 0xc2, 0x82, 0xf7, 0x7f, 0x9a, 0xbd);
		public const Guid MFSampleExtension_Encryption_SampleID = .(0x6698b84e, 0x0afa, 0x4330, 0xae, 0xb2, 0x1c, 0x0a, 0x98, 0xd7, 0xa4, 0x4d);
		public const Guid MFSampleExtension_Encryption_KeyID = .(0x76376591, 0x795f, 0x4da1, 0x86, 0xed, 0x9d, 0x46, 0xec, 0xa1, 0x09, 0xa9);
		public const Guid MFSampleExtension_Content_KeyID = .(0xc6c7f5b0, 0xacca, 0x415b, 0x87, 0xd9, 0x10, 0x44, 0x14, 0x69, 0xef, 0xc6);
		public const Guid MFSampleExtension_Encryption_SubSampleMappingSplit = .(0xfe0254b9, 0x2aa5, 0x4edc, 0x99, 0xf7, 0x17, 0xe8, 0x9d, 0xbf, 0x91, 0x74);
		public const Guid MFSampleExtension_Interlaced = .(0xb1d5830a, 0xdeb8, 0x40e3, 0x90, 0xfa, 0x38, 0x99, 0x43, 0x71, 0x64, 0x61);
		public const Guid MFSampleExtension_BottomFieldFirst = .(0x941ce0a3, 0x6ae3, 0x4dda, 0x9a, 0x08, 0xa6, 0x42, 0x98, 0x34, 0x06, 0x17);
		public const Guid MFSampleExtension_RepeatFirstField = .(0x304d257c, 0x7493, 0x4fbd, 0xb1, 0x49, 0x92, 0x28, 0xde, 0x8d, 0x9a, 0x99);
		public const Guid MFSampleExtension_SingleField = .(0x9d85f816, 0x658b, 0x455a, 0xbd, 0xe0, 0x9f, 0xa7, 0xe1, 0x5a, 0xb8, 0xf9);
		public const Guid MFSampleExtension_DerivedFromTopField = .(0x6852465a, 0xae1c, 0x4553, 0x8e, 0x9b, 0xc3, 0x42, 0x0f, 0xcb, 0x16, 0x37);
		public const Guid MFSampleExtension_MeanAbsoluteDifference = .(0x1cdbde11, 0x08b4, 0x4311, 0xa6, 0xdd, 0x0f, 0x9f, 0x37, 0x19, 0x07, 0xaa);
		public const Guid MFSampleExtension_LongTermReferenceFrameInfo = .(0x9154733f, 0xe1bd, 0x41bf, 0x81, 0xd3, 0xfc, 0xd9, 0x18, 0xf7, 0x13, 0x32);
		public const Guid MFSampleExtension_ROIRectangle = .(0x3414a438, 0x4998, 0x4d2c, 0xbe, 0x82, 0xbe, 0x3c, 0xa0, 0xb2, 0x4d, 0x43);
		public const Guid MFSampleExtension_LastSlice = .(0x2b5d5457, 0x5547, 0x4f07, 0xb8, 0xc8, 0xb4, 0xa3, 0xa9, 0xa1, 0xda, 0xac);
		public const uint32 MACROBLOCK_FLAG_SKIP = 1;
		public const uint32 MACROBLOCK_FLAG_DIRTY = 2;
		public const uint32 MACROBLOCK_FLAG_MOTION = 4;
		public const uint32 MACROBLOCK_FLAG_VIDEO = 8;
		public const uint32 MACROBLOCK_FLAG_HAS_MOTION_VECTOR = 16;
		public const uint32 MACROBLOCK_FLAG_HAS_QP = 32;
		public const Guid MFSampleExtension_FeatureMap = .(0xa032d165, 0x46fc, 0x400a, 0xb4, 0x49, 0x49, 0xde, 0x53, 0xe6, 0x2a, 0x6e);
		public const Guid MFSampleExtension_ChromaOnly = .(0x1eb9179c, 0xa01f, 0x4845, 0x8c, 0x04, 0x0e, 0x65, 0xa2, 0x6e, 0xb0, 0x4f);
		public const Guid MFSampleExtension_PhotoThumbnail = .(0x74bbc85c, 0xc8bb, 0x42dc, 0xb5, 0x86, 0xda, 0x17, 0xff, 0xd3, 0x5d, 0xcc);
		public const Guid MFSampleExtension_PhotoThumbnailMediaType = .(0x61ad5420, 0xebf8, 0x4143, 0x89, 0xaf, 0x6b, 0xf2, 0x5f, 0x67, 0x2d, 0xef);
		public const Guid MFSampleExtension_CaptureMetadata = .(0x2ebe23a8, 0xfaf5, 0x444a, 0xa6, 0xa2, 0xeb, 0x81, 0x08, 0x80, 0xab, 0x5d);
		public const Guid MFSampleExtension_MDLCacheCookie = .(0x5f002af9, 0xd8f9, 0x41a3, 0xb6, 0xc3, 0xa2, 0xad, 0x43, 0xf6, 0x47, 0xad);
		public const Guid MF_CAPTURE_METADATA_PHOTO_FRAME_FLASH = .(0x0f9dd6c6, 0x6003, 0x45d8, 0xbd, 0x59, 0xf1, 0xf5, 0x3e, 0x3d, 0x04, 0xe8);
		public const Guid MF_CAPTURE_METADATA_FRAME_RAWSTREAM = .(0x9252077b, 0x2680, 0x49b9, 0xae, 0x02, 0xb1, 0x90, 0x75, 0x97, 0x3b, 0x70);
		public const Guid MF_CAPTURE_METADATA_FOCUSSTATE = .(0xa87ee154, 0x997f, 0x465d, 0xb9, 0x1f, 0x29, 0xd5, 0x3b, 0x98, 0x2b, 0x88);
		public const Guid MF_CAPTURE_METADATA_REQUESTED_FRAME_SETTING_ID = .(0xbb3716d9, 0x8a61, 0x47a4, 0x81, 0x97, 0x45, 0x9c, 0x7f, 0xf1, 0x74, 0xd5);
		public const Guid MF_CAPTURE_METADATA_EXPOSURE_TIME = .(0x16b9ae99, 0xcd84, 0x4063, 0x87, 0x9d, 0xa2, 0x8c, 0x76, 0x33, 0x72, 0x9e);
		public const Guid MF_CAPTURE_METADATA_EXPOSURE_COMPENSATION = .(0xd198aa75, 0x4b62, 0x4345, 0xab, 0xf3, 0x3c, 0x31, 0xfa, 0x12, 0xc2, 0x99);
		public const Guid MF_CAPTURE_METADATA_ISO_SPEED = .(0xe528a68f, 0xb2e3, 0x44fe, 0x8b, 0x65, 0x07, 0xbf, 0x4b, 0x5a, 0x13, 0xff);
		public const Guid MF_CAPTURE_METADATA_LENS_POSITION = .(0xb5fc8e86, 0x11d1, 0x4e70, 0x81, 0x9b, 0x72, 0x3a, 0x89, 0xfa, 0x45, 0x20);
		public const Guid MF_CAPTURE_METADATA_SCENE_MODE = .(0x9cc3b54d, 0x5ed3, 0x4bae, 0xb3, 0x88, 0x76, 0x70, 0xae, 0xf5, 0x9e, 0x13);
		public const Guid MF_CAPTURE_METADATA_FLASH = .(0x4a51520b, 0xfb36, 0x446c, 0x9d, 0xf2, 0x68, 0x17, 0x1b, 0x9a, 0x03, 0x89);
		public const Guid MF_CAPTURE_METADATA_FLASH_POWER = .(0x9c0e0d49, 0x0205, 0x491a, 0xbc, 0x9d, 0x2d, 0x6e, 0x1f, 0x4d, 0x56, 0x84);
		public const Guid MF_CAPTURE_METADATA_WHITEBALANCE = .(0xc736fd77, 0x0fb9, 0x4e2e, 0x97, 0xa2, 0xfc, 0xd4, 0x90, 0x73, 0x9e, 0xe9);
		public const Guid MF_CAPTURE_METADATA_ZOOMFACTOR = .(0xe50b0b81, 0xe501, 0x42c2, 0xab, 0xf2, 0x85, 0x7e, 0xcb, 0x13, 0xfa, 0x5c);
		public const Guid MF_CAPTURE_METADATA_FACEROIS = .(0x864f25a6, 0x349f, 0x46b1, 0xa3, 0x0e, 0x54, 0xcc, 0x22, 0x92, 0x8a, 0x47);
		public const Guid MF_CAPTURE_METADATA_FACEROITIMESTAMPS = .(0xe94d50cc, 0x3da0, 0x44d4, 0xbb, 0x34, 0x83, 0x19, 0x8a, 0x74, 0x18, 0x68);
		public const Guid MF_CAPTURE_METADATA_FACEROICHARACTERIZATIONS = .(0xb927a1a8, 0x18ef, 0x46d3, 0xb3, 0xaf, 0x69, 0x37, 0x2f, 0x94, 0xd9, 0xb2);
		public const Guid MF_CAPTURE_METADATA_ISO_GAINS = .(0x05802ac9, 0x0e1d, 0x41c7, 0xa8, 0xc8, 0x7e, 0x73, 0x69, 0xf8, 0x4e, 0x1e);
		public const Guid MF_CAPTURE_METADATA_SENSORFRAMERATE = .(0xdb51357e, 0x9d3d, 0x4962, 0xb0, 0x6d, 0x07, 0xce, 0x65, 0x0d, 0x9a, 0x0a);
		public const Guid MF_CAPTURE_METADATA_WHITEBALANCE_GAINS = .(0xe7570c8f, 0x2dcb, 0x4c7c, 0xaa, 0xce, 0x22, 0xec, 0xe7, 0xcc, 0xe6, 0x47);
		public const Guid MF_CAPTURE_METADATA_HISTOGRAM = .(0x85358432, 0x2ef6, 0x4ba9, 0xa3, 0xfb, 0x06, 0xd8, 0x29, 0x74, 0xb8, 0x95);
		public const Guid MF_CAPTURE_METADATA_EXIF = .(0x2e9575b8, 0x8c31, 0x4a02, 0x85, 0x75, 0x42, 0xb1, 0x97, 0xb7, 0x15, 0x92);
		public const Guid MF_CAPTURE_METADATA_FRAME_ILLUMINATION = .(0x6d688ffc, 0x63d3, 0x46fe, 0xba, 0xda, 0x5b, 0x94, 0x7d, 0xb0, 0xd0, 0x80);
		public const Guid MF_CAPTURE_METADATA_UVC_PAYLOADHEADER = .(0xf9f88a87, 0xe1dd, 0x441e, 0x95, 0xcb, 0x42, 0xe2, 0x1a, 0x64, 0xf1, 0xd9);
		public const Guid MFSampleExtension_Depth_MinReliableDepth = .(0x5f8582b2, 0xe36b, 0x47c8, 0x9b, 0x87, 0xfe, 0xe1, 0xca, 0x72, 0xc5, 0xb0);
		public const Guid MFSampleExtension_Depth_MaxReliableDepth = .(0xe45545d1, 0x1f0f, 0x4a32, 0xa8, 0xa7, 0x61, 0x01, 0xa2, 0x4e, 0xa8, 0xbe);
		public const Guid MF_CAPTURE_METADATA_FIRST_SCANLINE_START_TIME_QPC = .(0x6a2c49f1, 0xe052, 0x46b6, 0xb2, 0xd9, 0x73, 0xc1, 0x55, 0x87, 0x09, 0xaf);
		public const Guid MF_CAPTURE_METADATA_LAST_SCANLINE_END_TIME_QPC = .(0xdccadecb, 0xc4d4, 0x400d, 0xb4, 0x18, 0x10, 0xe8, 0x85, 0x25, 0xe1, 0xf6);
		public const Guid MF_CAPTURE_METADATA_SCANLINE_TIME_QPC_ACCURACY = .(0x4cd79c51, 0xf765, 0x4b09, 0xb1, 0xe1, 0x27, 0xd1, 0xf7, 0xeb, 0xea, 0x09);
		public const Guid MF_CAPTURE_METADATA_SCANLINE_DIRECTION = .(0x6496a3ba, 0x1907, 0x49e6, 0xb0, 0xc3, 0x12, 0x37, 0x95, 0xf3, 0x80, 0xa9);
		public const uint32 MFCAPTURE_METADATA_SCAN_RIGHT_LEFT = 1;
		public const uint32 MFCAPTURE_METADATA_SCAN_BOTTOM_TOP = 2;
		public const uint32 MFCAPTURE_METADATA_SCANLINE_VERTICAL = 4;
		public const Guid MF_CAPTURE_METADATA_DIGITALWINDOW = .(0x276f72a2, 0x59c8, 0x4f69, 0x97, 0xb4, 0x06, 0x8b, 0x8c, 0x0e, 0xc0, 0x44);
		public const Guid MF_CAPTURE_METADATA_FRAME_BACKGROUND_MASK = .(0x03f14dd3, 0x75dd, 0x433a, 0xa8, 0xe2, 0x1e, 0x3f, 0x5f, 0x2a, 0x50, 0xa0);
		public const uint32 MF_METADATAFACIALEXPRESSION_SMILE = 1;
		public const uint32 MF_METADATATIMESTAMPS_DEVICE = 1;
		public const uint32 MF_METADATATIMESTAMPS_PRESENTATION = 2;
		public const uint32 MF_HISTOGRAM_CHANNEL_Y = 1;
		public const uint32 MF_HISTOGRAM_CHANNEL_R = 2;
		public const uint32 MF_HISTOGRAM_CHANNEL_G = 4;
		public const uint32 MF_HISTOGRAM_CHANNEL_B = 8;
		public const uint32 MF_HISTOGRAM_CHANNEL_Cb = 16;
		public const uint32 MF_HISTOGRAM_CHANNEL_Cr = 32;
		public const Guid MFT_CATEGORY_VIDEO_DECODER = .(0xd6c02d4b, 0x6833, 0x45b4, 0x97, 0x1a, 0x05, 0xa4, 0xb0, 0x4b, 0xab, 0x91);
		public const Guid MFT_CATEGORY_VIDEO_ENCODER = .(0xf79eac7d, 0xe545, 0x4387, 0xbd, 0xee, 0xd6, 0x47, 0xd7, 0xbd, 0xe4, 0x2a);
		public const Guid MFT_CATEGORY_VIDEO_EFFECT = .(0x12e17c21, 0x532c, 0x4a6e, 0x8a, 0x1c, 0x40, 0x82, 0x5a, 0x73, 0x63, 0x97);
		public const Guid MFT_CATEGORY_MULTIPLEXER = .(0x059c561e, 0x05ae, 0x4b61, 0xb6, 0x9d, 0x55, 0xb6, 0x1e, 0xe5, 0x4a, 0x7b);
		public const Guid MFT_CATEGORY_DEMULTIPLEXER = .(0xa8700a7a, 0x939b, 0x44c5, 0x99, 0xd7, 0x76, 0x22, 0x6b, 0x23, 0xb3, 0xf1);
		public const Guid MFT_CATEGORY_AUDIO_DECODER = .(0x9ea73fb4, 0xef7a, 0x4559, 0x8d, 0x5d, 0x71, 0x9d, 0x8f, 0x04, 0x26, 0xc7);
		public const Guid MFT_CATEGORY_AUDIO_ENCODER = .(0x91c64bd0, 0xf91e, 0x4d8c, 0x92, 0x76, 0xdb, 0x24, 0x82, 0x79, 0xd9, 0x75);
		public const Guid MFT_CATEGORY_AUDIO_EFFECT = .(0x11064c48, 0x3648, 0x4ed0, 0x93, 0x2e, 0x05, 0xce, 0x8a, 0xc8, 0x11, 0xb7);
		public const Guid MFT_CATEGORY_VIDEO_PROCESSOR = .(0x302ea3fc, 0xaa5f, 0x47f9, 0x9f, 0x7a, 0xc2, 0x18, 0x8b, 0xb1, 0x63, 0x02);
		public const Guid MFT_CATEGORY_OTHER = .(0x90175d57, 0xb7ea, 0x4901, 0xae, 0xb3, 0x93, 0x3a, 0x87, 0x47, 0x75, 0x6f);
		public const Guid MFT_CATEGORY_ENCRYPTOR = .(0xb0c687be, 0x01cd, 0x44b5, 0xb8, 0xb2, 0x7c, 0x1d, 0x7e, 0x05, 0x8b, 0x1f);
		public const Guid MFT_CATEGORY_VIDEO_RENDERER_EFFECT = .(0x145cd8b4, 0x92f4, 0x4b23, 0x8a, 0xe7, 0xe0, 0xdf, 0x06, 0xc2, 0xda, 0x95);
		public const Guid MFT_ENUM_VIDEO_RENDERER_EXTENSION_PROFILE = .(0x62c56928, 0x9a4e, 0x443b, 0xb9, 0xdc, 0xca, 0xc8, 0x30, 0xc2, 0x41, 0x00);
		public const Guid MFT_ENUM_ADAPTER_LUID = .(0x1d39518c, 0xe220, 0x4da8, 0xa0, 0x7f, 0xba, 0x17, 0x25, 0x52, 0xd6, 0xb1);
		public const Guid MFT_SUPPORT_DYNAMIC_FORMAT_CHANGE = .(0x53476a11, 0x3f13, 0x49fb, 0xac, 0x42, 0xee, 0x27, 0x33, 0xc9, 0x67, 0x41);
		public const uint32 LOCAL_D3DFMT_DEFINES = 1;
		public const Guid MFVideoFormat_Base = .(0x00000000, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_RGB32 = .(0x00000016, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_ARGB32 = .(0x00000015, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_RGB24 = .(0x00000014, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_RGB555 = .(0x00000018, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_RGB565 = .(0x00000017, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_RGB8 = .(0x00000029, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_L8 = .(0x00000032, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_L16 = .(0x00000051, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_D16 = .(0x00000050, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_AI44 = .(0x34344941, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_AYUV = .(0x56555941, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_YUY2 = .(0x32595559, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_YVYU = .(0x55595659, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_YVU9 = .(0x39555659, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_UYVY = .(0x59565955, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_NV11 = .(0x3131564e, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_NV12 = .(0x3231564e, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_NV21 = .(0x3132564e, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_YV12 = .(0x32315659, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_I420 = .(0x30323449, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_IYUV = .(0x56555949, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_Y210 = .(0x30313259, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_Y216 = .(0x36313259, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_Y410 = .(0x30313459, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_Y416 = .(0x36313459, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_Y41P = .(0x50313459, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_Y41T = .(0x54313459, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_Y42T = .(0x54323459, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_P210 = .(0x30313250, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_P216 = .(0x36313250, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_P010 = .(0x30313050, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_P016 = .(0x36313050, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_v210 = .(0x30313276, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_v216 = .(0x36313276, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_v410 = .(0x30313476, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_MP43 = .(0x3334504d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_MP4S = .(0x5334504d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_M4S2 = .(0x3253344d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_MP4V = .(0x5634504d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_WMV1 = .(0x31564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_WMV2 = .(0x32564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_WMV3 = .(0x33564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_WVC1 = .(0x31435657, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_MSS1 = .(0x3153534d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_MSS2 = .(0x3253534d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_MPG1 = .(0x3147504d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_DVSL = .(0x6c737664, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_DVSD = .(0x64737664, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_DVHD = .(0x64687664, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_DV25 = .(0x35327664, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_DV50 = .(0x30357664, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_DVH1 = .(0x31687664, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_H264 = .(0x34363248, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_H265 = .(0x35363248, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_MJPG = .(0x47504a4d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_420O = .(0x4f303234, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_HEVC = .(0x43564548, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_HEVC_ES = .(0x53564548, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_VP80 = .(0x30385056, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_VP90 = .(0x30395056, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_ORAW = .(0x5741524f, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_H263 = .(0x33363248, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_A2R10G10B10 = .(0x0000001f, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_A16B16G16R16F = .(0x00000071, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_VP10 = .(0x30315056, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_AV1 = .(0x31305641, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_Theora = .(0x6f656874, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFVideoFormat_H264_ES = .(0x3f40f4f0, 0x5622, 0x4ff8, 0xb6, 0xd8, 0xa1, 0x7a, 0x58, 0x4b, 0xee, 0x5e);
		public const Guid MFVideoFormat_MPEG2 = .(0xe06d8026, 0xdb46, 0x11cf, 0xb4, 0xd1, 0x00, 0x80, 0x5f, 0x6c, 0xbb, 0xea);
		public const Guid MFAudioFormat_Base = .(0x00000000, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_PCM = .(0x00000001, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_Float = .(0x00000003, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_DTS = .(0x00000008, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_Dolby_AC3_SPDIF = .(0x00000092, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_DRM = .(0x00000009, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_WMAudioV8 = .(0x00000161, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_WMAudioV9 = .(0x00000162, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_WMAudio_Lossless = .(0x00000163, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_WMASPDIF = .(0x00000164, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_MSP1 = .(0x0000000a, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_MP3 = .(0x00000055, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_MPEG = .(0x00000050, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_AAC = .(0x00001610, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_ADTS = .(0x00001600, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_AMR_NB = .(0x00007361, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_AMR_WB = .(0x00007362, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_AMR_WP = .(0x00007363, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_FLAC = .(0x0000f1ac, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_ALAC = .(0x00006c61, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_Opus = .(0x0000704f, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_Dolby_AC4 = .(0x0000ac40, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFAudioFormat_Dolby_AC3 = .(0xe06d802c, 0xdb46, 0x11cf, 0xb4, 0xd1, 0x00, 0x80, 0x5f, 0x6c, 0xbb, 0xea);
		public const Guid MFAudioFormat_Dolby_DDPlus = .(0xa7fb87af, 0x2d02, 0x42fb, 0xa4, 0xd4, 0x05, 0xcd, 0x93, 0x84, 0x3b, 0xdd);
		public const Guid MFAudioFormat_Dolby_AC4_V1 = .(0x36b7927c, 0x3d87, 0x4a2a, 0x91, 0x96, 0xa2, 0x1a, 0xd9, 0xe9, 0x35, 0xe6);
		public const Guid MFAudioFormat_Dolby_AC4_V2 = .(0x7998b2a0, 0x17dd, 0x49b6, 0x8d, 0xfa, 0x9b, 0x27, 0x85, 0x52, 0xa2, 0xac);
		public const Guid MFAudioFormat_Dolby_AC4_V1_ES = .(0x9d8dccc6, 0xd156, 0x4fb8, 0x97, 0x9c, 0xa8, 0x5b, 0xe7, 0xd2, 0x1d, 0xfa);
		public const Guid MFAudioFormat_Dolby_AC4_V2_ES = .(0x7e58c9f9, 0xb070, 0x45f4, 0x8c, 0xcd, 0xa9, 0x9a, 0x04, 0x17, 0xc1, 0xac);
		public const Guid MFAudioFormat_Vorbis = .(0x8d2fd10b, 0x5841, 0x4a6b, 0x89, 0x05, 0x58, 0x8f, 0xec, 0x1a, 0xde, 0xd9);
		public const Guid MFAudioFormat_DTS_RAW = .(0xe06d8033, 0xdb46, 0x11cf, 0xb4, 0xd1, 0x00, 0x80, 0x5f, 0x6c, 0xbb, 0xea);
		public const Guid MFAudioFormat_DTS_HD = .(0xa2e58eb7, 0x0fa9, 0x48bb, 0xa4, 0x0c, 0xfa, 0x0e, 0x15, 0x6d, 0x06, 0x45);
		public const Guid MFAudioFormat_DTS_XLL = .(0x45b37c1b, 0x8c70, 0x4e59, 0xa7, 0xbe, 0xa1, 0xe4, 0x2c, 0x81, 0xc8, 0x0d);
		public const Guid MFAudioFormat_DTS_LBR = .(0xc2fe6f0a, 0x4e3c, 0x4df1, 0x9b, 0x60, 0x50, 0x86, 0x30, 0x91, 0xe4, 0xb9);
		public const Guid MFAudioFormat_DTS_UHD = .(0x87020117, 0xace3, 0x42de, 0xb7, 0x3e, 0xc6, 0x56, 0x70, 0x62, 0x63, 0xf8);
		public const Guid MFAudioFormat_DTS_UHDY = .(0x9b9cca00, 0x91b9, 0x4ccc, 0x88, 0x3a, 0x8f, 0x78, 0x7a, 0xc3, 0xcc, 0x86);
		public const Guid MFAudioFormat_Float_SpatialObjects = .(0xfa39cd94, 0xbc64, 0x4ab1, 0x9b, 0x71, 0xdc, 0xd0, 0x9d, 0x5a, 0x7e, 0x7a);
		public const Guid MFAudioFormat_LPCM = .(0xe06d8032, 0xdb46, 0x11cf, 0xb4, 0xd1, 0x00, 0x80, 0x5f, 0x6c, 0xbb, 0xea);
		public const Guid MFAudioFormat_PCM_HDCP = .(0xa5e7ff01, 0x8411, 0x4acc, 0xa8, 0x65, 0x5f, 0x49, 0x41, 0x28, 0x8d, 0x80);
		public const Guid MFAudioFormat_Dolby_AC3_HDCP = .(0x97663a80, 0x8ffb, 0x4445, 0xa6, 0xba, 0x79, 0x2d, 0x90, 0x8f, 0x49, 0x7f);
		public const Guid MFAudioFormat_AAC_HDCP = .(0x419bce76, 0x8b72, 0x400f, 0xad, 0xeb, 0x84, 0xb5, 0x7d, 0x63, 0x48, 0x4d);
		public const Guid MFAudioFormat_ADTS_HDCP = .(0xda4963a3, 0x14d8, 0x4dcf, 0x92, 0xb7, 0x19, 0x3e, 0xb8, 0x43, 0x63, 0xdb);
		public const Guid MFAudioFormat_Base_HDCP = .(0x3884b5bc, 0xe277, 0x43fd, 0x98, 0x3d, 0x03, 0x8a, 0xa8, 0xd9, 0xb6, 0x05);
		public const Guid MFVideoFormat_H264_HDCP = .(0x5d0ce9dd, 0x9817, 0x49da, 0xbd, 0xfd, 0xf5, 0xf5, 0xb9, 0x8f, 0x18, 0xa6);
		public const Guid MFVideoFormat_HEVC_HDCP = .(0x3cfe0fe6, 0x05c4, 0x47dc, 0x9d, 0x70, 0x4b, 0xdb, 0x29, 0x59, 0x72, 0x0f);
		public const Guid MFVideoFormat_Base_HDCP = .(0xeac3b9d5, 0xbd14, 0x4237, 0x8f, 0x1f, 0xba, 0xb4, 0x28, 0xe4, 0x93, 0x12);
		public const Guid MFMPEG4Format_Base = .(0x00000000, 0x767a, 0x494d, 0xb4, 0x78, 0xf2, 0x9d, 0x25, 0xdc, 0x90, 0x37);
		public const Guid MFSubtitleFormat_XML = .(0x2006f94f, 0x29ca, 0x4195, 0xb8, 0xdb, 0x00, 0xde, 0xd8, 0xff, 0x0c, 0x97);
		public const Guid MFSubtitleFormat_TTML = .(0x73e73992, 0x9a10, 0x4356, 0x95, 0x57, 0x71, 0x94, 0xe9, 0x1e, 0x3e, 0x54);
		public const Guid MFSubtitleFormat_ATSC = .(0x7fa7faa3, 0xfeae, 0x4e16, 0xae, 0xdf, 0x36, 0xb9, 0xac, 0xfb, 0xb0, 0x99);
		public const Guid MFSubtitleFormat_WebVTT = .(0xc886d215, 0xf485, 0x40bb, 0x8d, 0xb6, 0xfa, 0xdb, 0xc6, 0x19, 0xa4, 0x5d);
		public const Guid MFSubtitleFormat_SRT = .(0x5e467f2e, 0x77ca, 0x4ca5, 0x83, 0x91, 0xd1, 0x42, 0xed, 0x4b, 0x76, 0xc8);
		public const Guid MFSubtitleFormat_SSA = .(0x57176a1b, 0x1a9e, 0x4eea, 0xab, 0xef, 0xc6, 0x17, 0x60, 0x19, 0x8a, 0xc4);
		public const Guid MFSubtitleFormat_CustomUserData = .(0x1bb3d849, 0x6614, 0x4d80, 0x88, 0x82, 0xed, 0x24, 0xaa, 0x82, 0xda, 0x92);
		public const Guid MFSubtitleFormat_PGS = .(0x71f40e4a, 0x1278, 0x4442, 0xb3, 0x0d, 0x39, 0xdd, 0x1d, 0x77, 0x22, 0xbc);
		public const Guid MFSubtitleFormat_VobSub = .(0x6b8e40f4, 0x8d2c, 0x4ced, 0xad, 0x91, 0x59, 0x60, 0xe4, 0x5b, 0x44, 0x33);
		public const Guid MF_MT_MAJOR_TYPE = .(0x48eba18e, 0xf8c9, 0x4687, 0xbf, 0x11, 0x0a, 0x74, 0xc9, 0xf9, 0x6a, 0x8f);
		public const Guid MF_MT_SUBTYPE = .(0xf7e34c9a, 0x42e8, 0x4714, 0xb7, 0x4b, 0xcb, 0x29, 0xd7, 0x2c, 0x35, 0xe5);
		public const Guid MF_MT_ALL_SAMPLES_INDEPENDENT = .(0xc9173739, 0x5e56, 0x461c, 0xb7, 0x13, 0x46, 0xfb, 0x99, 0x5c, 0xb9, 0x5f);
		public const Guid MF_MT_FIXED_SIZE_SAMPLES = .(0xb8ebefaf, 0xb718, 0x4e04, 0xb0, 0xa9, 0x11, 0x67, 0x75, 0xe3, 0x32, 0x1b);
		public const Guid MF_MT_COMPRESSED = .(0x3afd0cee, 0x18f2, 0x4ba5, 0xa1, 0x10, 0x8b, 0xea, 0x50, 0x2e, 0x1f, 0x92);
		public const Guid MF_MT_SAMPLE_SIZE = .(0xdad3ab78, 0x1990, 0x408b, 0xbc, 0xe2, 0xeb, 0xa6, 0x73, 0xda, 0xcc, 0x10);
		public const Guid MF_MT_WRAPPED_TYPE = .(0x4d3f7b23, 0xd02f, 0x4e6c, 0x9b, 0xee, 0xe4, 0xbf, 0x2c, 0x6c, 0x69, 0x5d);
		public const Guid MF_MT_VIDEO_3D = .(0xcb5e88cf, 0x7b5b, 0x476b, 0x85, 0xaa, 0x1c, 0xa5, 0xae, 0x18, 0x75, 0x55);
		public const Guid MF_MT_VIDEO_3D_FORMAT = .(0x5315d8a0, 0x87c5, 0x4697, 0xb7, 0x93, 0x66, 0x06, 0xc6, 0x7c, 0x04, 0x9b);
		public const Guid MF_MT_VIDEO_3D_NUM_VIEWS = .(0xbb077e8a, 0xdcbf, 0x42eb, 0xaf, 0x60, 0x41, 0x8d, 0xf9, 0x8a, 0xa4, 0x95);
		public const Guid MF_MT_VIDEO_3D_LEFT_IS_BASE = .(0x6d4b7bff, 0x5629, 0x4404, 0x94, 0x8c, 0xc6, 0x34, 0xf4, 0xce, 0x26, 0xd4);
		public const Guid MF_MT_VIDEO_3D_FIRST_IS_LEFT = .(0xec298493, 0x0ada, 0x4ea1, 0xa4, 0xfe, 0xcb, 0xbd, 0x36, 0xce, 0x93, 0x31);
		public const Guid MFSampleExtension_3DVideo = .(0xf86f97a4, 0xdd54, 0x4e2e, 0x9a, 0x5e, 0x55, 0xfc, 0x2d, 0x74, 0xa0, 0x05);
		public const Guid MFSampleExtension_3DVideo_SampleFormat = .(0x08671772, 0xe36f, 0x4cff, 0x97, 0xb3, 0xd7, 0x2e, 0x20, 0x98, 0x7a, 0x48);
		public const Guid MF_MT_VIDEO_ROTATION = .(0xc380465d, 0x2271, 0x428c, 0x9b, 0x83, 0xec, 0xea, 0x3b, 0x4a, 0x85, 0xc1);
		public const Guid MF_DEVICESTREAM_MULTIPLEXED_MANAGER = .(0x6ea542b0, 0x281f, 0x4231, 0xa4, 0x64, 0xfe, 0x2f, 0x50, 0x22, 0x50, 0x1c);
		public const Guid MF_MEDIATYPE_MULTIPLEXED_MANAGER = .(0x13c78fb5, 0xf275, 0x4ea0, 0xbb, 0x5f, 0x02, 0x49, 0x83, 0x2b, 0x0d, 0x6e);
		public const Guid MFSampleExtension_MULTIPLEXED_MANAGER = .(0x8dcdee79, 0x6b5a, 0x4c45, 0x8d, 0xb9, 0x20, 0xb3, 0x95, 0xf0, 0x2f, 0xcf);
		public const Guid MF_MT_SECURE = .(0xc5acc4fd, 0x0304, 0x4ecf, 0x80, 0x9f, 0x47, 0xbc, 0x97, 0xff, 0x63, 0xbd);
		public const Guid MF_DEVICESTREAM_ATTRIBUTE_FRAMESOURCE_TYPES = .(0x17145fd1, 0x1b2b, 0x423c, 0x80, 0x01, 0x2b, 0x68, 0x33, 0xed, 0x35, 0x88);
		public const Guid MF_MT_ALPHA_MODE = .(0x5d959b0d, 0x4cbf, 0x4d04, 0x91, 0x9f, 0x3f, 0x5f, 0x7f, 0x28, 0x42, 0x11);
		public const Guid MF_MT_DEPTH_MEASUREMENT = .(0xfd5ac489, 0x0917, 0x4bb6, 0x9d, 0x54, 0x31, 0x22, 0xbf, 0x70, 0x14, 0x4b);
		public const Guid MF_MT_DEPTH_VALUE_UNIT = .(0x21a800f5, 0x3189, 0x4797, 0xbe, 0xba, 0xf1, 0x3c, 0xd9, 0xa3, 0x1a, 0x5e);
		public const Guid MF_MT_VIDEO_NO_FRAME_ORDERING = .(0x3f5b106f, 0x6bc2, 0x4ee3, 0xb7, 0xed, 0x89, 0x02, 0xc1, 0x8f, 0x53, 0x51);
		public const Guid MF_MT_VIDEO_H264_NO_FMOASO = .(0xed461cd6, 0xec9f, 0x416a, 0xa8, 0xa3, 0x26, 0xd7, 0xd3, 0x10, 0x18, 0xd7);
		public const Guid MFSampleExtension_ForwardedDecodeUnits = .(0x424c754c, 0x97c8, 0x48d6, 0x87, 0x77, 0xfc, 0x41, 0xf7, 0xb6, 0x08, 0x79);
		public const Guid MFSampleExtension_TargetGlobalLuminance = .(0x3f60ef36, 0x31ef, 0x4daf, 0x83, 0x60, 0x94, 0x03, 0x97, 0xe4, 0x1e, 0xf3);
		public const Guid MFSampleExtension_ForwardedDecodeUnitType = .(0x089e57c7, 0x47d3, 0x4a26, 0xbf, 0x9c, 0x4b, 0x64, 0xfa, 0xfb, 0x5d, 0x1e);
		public const Guid MF_MT_FORWARD_CUSTOM_NALU = .(0xed336efd, 0x244f, 0x428d, 0x91, 0x53, 0x28, 0xf3, 0x99, 0x45, 0x88, 0x90);
		public const Guid MF_MT_FORWARD_CUSTOM_SEI = .(0xe27362f1, 0xb136, 0x41d1, 0x95, 0x94, 0x3a, 0x7e, 0x4f, 0xeb, 0xf2, 0xd1);
		public const Guid MF_MT_VIDEO_RENDERER_EXTENSION_PROFILE = .(0x8437d4b9, 0xd448, 0x4fcd, 0x9b, 0x6b, 0x83, 0x9b, 0xf9, 0x6c, 0x77, 0x98);
		public const Guid MF_DECODER_FWD_CUSTOM_SEI_DECODE_ORDER = .(0xf13bbe3c, 0x36d4, 0x410a, 0xb9, 0x85, 0x7a, 0x95, 0x1a, 0x1e, 0x62, 0x94);
		public const Guid MF_VIDEO_RENDERER_EFFECT_APP_SERVICE_NAME = .(0xc6052a80, 0x6d9c, 0x40a3, 0x9d, 0xb8, 0xf0, 0x27, 0xa2, 0x5c, 0x9a, 0xb9);
		public const Guid MF_MT_AUDIO_NUM_CHANNELS = .(0x37e48bf5, 0x645e, 0x4c5b, 0x89, 0xde, 0xad, 0xa9, 0xe2, 0x9b, 0x69, 0x6a);
		public const Guid MF_MT_AUDIO_SAMPLES_PER_SECOND = .(0x5faeeae7, 0x0290, 0x4c31, 0x9e, 0x8a, 0xc5, 0x34, 0xf6, 0x8d, 0x9d, 0xba);
		public const Guid MF_MT_AUDIO_FLOAT_SAMPLES_PER_SECOND = .(0xfb3b724a, 0xcfb5, 0x4319, 0xae, 0xfe, 0x6e, 0x42, 0xb2, 0x40, 0x61, 0x32);
		public const Guid MF_MT_AUDIO_AVG_BYTES_PER_SECOND = .(0x1aab75c8, 0xcfef, 0x451c, 0xab, 0x95, 0xac, 0x03, 0x4b, 0x8e, 0x17, 0x31);
		public const Guid MF_MT_AUDIO_BLOCK_ALIGNMENT = .(0x322de230, 0x9eeb, 0x43bd, 0xab, 0x7a, 0xff, 0x41, 0x22, 0x51, 0x54, 0x1d);
		public const Guid MF_MT_AUDIO_BITS_PER_SAMPLE = .(0xf2deb57f, 0x40fa, 0x4764, 0xaa, 0x33, 0xed, 0x4f, 0x2d, 0x1f, 0xf6, 0x69);
		public const Guid MF_MT_AUDIO_VALID_BITS_PER_SAMPLE = .(0xd9bf8d6a, 0x9530, 0x4b7c, 0x9d, 0xdf, 0xff, 0x6f, 0xd5, 0x8b, 0xbd, 0x06);
		public const Guid MF_MT_AUDIO_SAMPLES_PER_BLOCK = .(0xaab15aac, 0xe13a, 0x4995, 0x92, 0x22, 0x50, 0x1e, 0xa1, 0x5c, 0x68, 0x77);
		public const Guid MF_MT_AUDIO_CHANNEL_MASK = .(0x55fb5765, 0x644a, 0x4caf, 0x84, 0x79, 0x93, 0x89, 0x83, 0xbb, 0x15, 0x88);
		public const Guid MF_MT_AUDIO_FOLDDOWN_MATRIX = .(0x9d62927c, 0x36be, 0x4cf2, 0xb5, 0xc4, 0xa3, 0x92, 0x6e, 0x3e, 0x87, 0x11);
		public const Guid MF_MT_AUDIO_WMADRC_PEAKREF = .(0x9d62927d, 0x36be, 0x4cf2, 0xb5, 0xc4, 0xa3, 0x92, 0x6e, 0x3e, 0x87, 0x11);
		public const Guid MF_MT_AUDIO_WMADRC_PEAKTARGET = .(0x9d62927e, 0x36be, 0x4cf2, 0xb5, 0xc4, 0xa3, 0x92, 0x6e, 0x3e, 0x87, 0x11);
		public const Guid MF_MT_AUDIO_WMADRC_AVGREF = .(0x9d62927f, 0x36be, 0x4cf2, 0xb5, 0xc4, 0xa3, 0x92, 0x6e, 0x3e, 0x87, 0x11);
		public const Guid MF_MT_AUDIO_WMADRC_AVGTARGET = .(0x9d629280, 0x36be, 0x4cf2, 0xb5, 0xc4, 0xa3, 0x92, 0x6e, 0x3e, 0x87, 0x11);
		public const Guid MF_MT_AUDIO_PREFER_WAVEFORMATEX = .(0xa901aaba, 0xe037, 0x458a, 0xbd, 0xf6, 0x54, 0x5b, 0xe2, 0x07, 0x40, 0x42);
		public const Guid MF_MT_AAC_PAYLOAD_TYPE = .(0xbfbabe79, 0x7434, 0x4d1c, 0x94, 0xf0, 0x72, 0xa3, 0xb9, 0xe1, 0x71, 0x88);
		public const Guid MF_MT_AAC_AUDIO_PROFILE_LEVEL_INDICATION = .(0x7632f0e6, 0x9538, 0x4d61, 0xac, 0xda, 0xea, 0x29, 0xc8, 0xc1, 0x44, 0x56);
		public const Guid MF_MT_AUDIO_FLAC_MAX_BLOCK_SIZE = .(0x8b81adae, 0x4b5a, 0x4d40, 0x80, 0x22, 0xf3, 0x8d, 0x09, 0xca, 0x3c, 0x5c);
		public const Guid MF_MT_SPATIAL_AUDIO_MAX_DYNAMIC_OBJECTS = .(0xdcfba24a, 0x2609, 0x4240, 0xa7, 0x21, 0x3f, 0xae, 0xa7, 0x6a, 0x4d, 0xf9);
		public const Guid MF_MT_SPATIAL_AUDIO_OBJECT_METADATA_FORMAT_ID = .(0x2ab71bc0, 0x6223, 0x4ba7, 0xad, 0x64, 0x7b, 0x94, 0xb4, 0x7a, 0xe7, 0x92);
		public const Guid MF_MT_SPATIAL_AUDIO_OBJECT_METADATA_LENGTH = .(0x094ba8be, 0xd723, 0x489f, 0x92, 0xfa, 0x76, 0x67, 0x77, 0xb3, 0x47, 0x26);
		public const Guid MF_MT_SPATIAL_AUDIO_MAX_METADATA_ITEMS = .(0x11aa80b4, 0xe0da, 0x47c6, 0x80, 0x60, 0x96, 0xc1, 0x25, 0x9a, 0xe5, 0x0d);
		public const Guid MF_MT_SPATIAL_AUDIO_MIN_METADATA_ITEM_OFFSET_SPACING = .(0x83e96ec9, 0x1184, 0x417e, 0x82, 0x54, 0x9f, 0x26, 0x91, 0x58, 0xfc, 0x06);
		public const Guid MF_MT_SPATIAL_AUDIO_DATA_PRESENT = .(0x6842f6e7, 0xd43e, 0x4ebb, 0x9c, 0x9c, 0xc9, 0x6f, 0x41, 0x78, 0x48, 0x63);
		public const Guid MF_MT_FRAME_SIZE = .(0x1652c33d, 0xd6b2, 0x4012, 0xb8, 0x34, 0x72, 0x03, 0x08, 0x49, 0xa3, 0x7d);
		public const Guid MF_MT_FRAME_RATE = .(0xc459a2e8, 0x3d2c, 0x4e44, 0xb1, 0x32, 0xfe, 0xe5, 0x15, 0x6c, 0x7b, 0xb0);
		public const Guid MF_MT_PIXEL_ASPECT_RATIO = .(0xc6376a1e, 0x8d0a, 0x4027, 0xbe, 0x45, 0x6d, 0x9a, 0x0a, 0xd3, 0x9b, 0xb6);
		public const Guid MF_MT_DRM_FLAGS = .(0x8772f323, 0x355a, 0x4cc7, 0xbb, 0x78, 0x6d, 0x61, 0xa0, 0x48, 0xae, 0x82);
		public const Guid MF_MT_TIMESTAMP_CAN_BE_DTS = .(0x24974215, 0x1b7b, 0x41e4, 0x86, 0x25, 0xac, 0x46, 0x9f, 0x2d, 0xed, 0xaa);
		public const Guid MF_MT_PAD_CONTROL_FLAGS = .(0x4d0e73e5, 0x80ea, 0x4354, 0xa9, 0xd0, 0x11, 0x76, 0xce, 0xb0, 0x28, 0xea);
		public const Guid MF_MT_SOURCE_CONTENT_HINT = .(0x68aca3cc, 0x22d0, 0x44e6, 0x85, 0xf8, 0x28, 0x16, 0x71, 0x97, 0xfa, 0x38);
		public const Guid MF_MT_VIDEO_CHROMA_SITING = .(0x65df2370, 0xc773, 0x4c33, 0xaa, 0x64, 0x84, 0x3e, 0x06, 0x8e, 0xfb, 0x0c);
		public const Guid MF_MT_INTERLACE_MODE = .(0xe2724bb8, 0xe676, 0x4806, 0xb4, 0xb2, 0xa8, 0xd6, 0xef, 0xb4, 0x4c, 0xcd);
		public const Guid MF_MT_TRANSFER_FUNCTION = .(0x5fb0fce9, 0xbe5c, 0x4935, 0xa8, 0x11, 0xec, 0x83, 0x8f, 0x8e, 0xed, 0x93);
		public const Guid MF_MT_VIDEO_PRIMARIES = .(0xdbfbe4d7, 0x0740, 0x4ee0, 0x81, 0x92, 0x85, 0x0a, 0xb0, 0xe2, 0x19, 0x35);
		public const Guid MF_MT_MAX_LUMINANCE_LEVEL = .(0x50253128, 0xc110, 0x4de4, 0x98, 0xae, 0x46, 0xa3, 0x24, 0xfa, 0xe6, 0xda);
		public const Guid MF_MT_MAX_FRAME_AVERAGE_LUMINANCE_LEVEL = .(0x58d4bf57, 0x6f52, 0x4733, 0xa1, 0x95, 0xa9, 0xe2, 0x9e, 0xcf, 0x9e, 0x27);
		public const Guid MF_MT_MAX_MASTERING_LUMINANCE = .(0xd6c6b997, 0x272f, 0x4ca1, 0x8d, 0x00, 0x80, 0x42, 0x11, 0x1a, 0x0f, 0xf6);
		public const Guid MF_MT_MIN_MASTERING_LUMINANCE = .(0x839a4460, 0x4e7e, 0x4b4f, 0xae, 0x79, 0xcc, 0x08, 0x90, 0x5c, 0x7b, 0x27);
		public const Guid MF_MT_DECODER_USE_MAX_RESOLUTION = .(0x4c547c24, 0xaf9a, 0x4f38, 0x96, 0xad, 0x97, 0x87, 0x73, 0xcf, 0x53, 0xe7);
		public const Guid MF_MT_DECODER_MAX_DPB_COUNT = .(0x67be144c, 0x88b7, 0x4ca9, 0x96, 0x28, 0xc8, 0x08, 0xd5, 0x26, 0x22, 0x17);
		public const Guid MF_MT_CUSTOM_VIDEO_PRIMARIES = .(0x47537213, 0x8cfb, 0x4722, 0xaa, 0x34, 0xfb, 0xc9, 0xe2, 0x4d, 0x77, 0xb8);
		public const Guid MF_MT_YUV_MATRIX = .(0x3e23d450, 0x2c75, 0x4d25, 0xa0, 0x0e, 0xb9, 0x16, 0x70, 0xd1, 0x23, 0x27);
		public const Guid MF_MT_VIDEO_LIGHTING = .(0x53a0529c, 0x890b, 0x4216, 0x8b, 0xf9, 0x59, 0x93, 0x67, 0xad, 0x6d, 0x20);
		public const Guid MF_MT_VIDEO_NOMINAL_RANGE = .(0xc21b8ee5, 0xb956, 0x4071, 0x8d, 0xaf, 0x32, 0x5e, 0xdf, 0x5c, 0xab, 0x11);
		public const Guid MF_MT_GEOMETRIC_APERTURE = .(0x66758743, 0x7e5f, 0x400d, 0x98, 0x0a, 0xaa, 0x85, 0x96, 0xc8, 0x56, 0x96);
		public const Guid MF_MT_MINIMUM_DISPLAY_APERTURE = .(0xd7388766, 0x18fe, 0x48c6, 0xa1, 0x77, 0xee, 0x89, 0x48, 0x67, 0xc8, 0xc4);
		public const Guid MF_MT_PAN_SCAN_APERTURE = .(0x79614dde, 0x9187, 0x48fb, 0xb8, 0xc7, 0x4d, 0x52, 0x68, 0x9d, 0xe6, 0x49);
		public const Guid MF_MT_PAN_SCAN_ENABLED = .(0x4b7f6bc3, 0x8b13, 0x40b2, 0xa9, 0x93, 0xab, 0xf6, 0x30, 0xb8, 0x20, 0x4e);
		public const Guid MF_MT_AVG_BITRATE = .(0x20332624, 0xfb0d, 0x4d9e, 0xbd, 0x0d, 0xcb, 0xf6, 0x78, 0x6c, 0x10, 0x2e);
		public const Guid MF_MT_AVG_BIT_ERROR_RATE = .(0x799cabd6, 0x3508, 0x4db4, 0xa3, 0xc7, 0x56, 0x9c, 0xd5, 0x33, 0xde, 0xb1);
		public const Guid MF_MT_MAX_KEYFRAME_SPACING = .(0xc16eb52b, 0x73a1, 0x476f, 0x8d, 0x62, 0x83, 0x9d, 0x6a, 0x02, 0x06, 0x52);
		public const Guid MF_MT_USER_DATA = .(0xb6bc765f, 0x4c3b, 0x40a4, 0xbd, 0x51, 0x25, 0x35, 0xb6, 0x6f, 0xe0, 0x9d);
		public const Guid MF_MT_OUTPUT_BUFFER_NUM = .(0xa505d3ac, 0xf930, 0x436e, 0x8e, 0xde, 0x93, 0xa5, 0x09, 0xce, 0x23, 0xb2);
		public const Guid MF_MT_REALTIME_CONTENT = .(0xbb12d222, 0x2bdb, 0x425e, 0x91, 0xec, 0x23, 0x08, 0xe1, 0x89, 0xa5, 0x8f);
		public const Guid MF_MT_DEFAULT_STRIDE = .(0x644b4e48, 0x1e02, 0x4516, 0xb0, 0xeb, 0xc0, 0x1c, 0xa9, 0xd4, 0x9a, 0xc6);
		public const Guid MF_MT_PALETTE = .(0x6d283f42, 0x9846, 0x4410, 0xaf, 0xd9, 0x65, 0x4d, 0x50, 0x3b, 0x1a, 0x54);
		public const Guid MF_MT_AM_FORMAT_TYPE = .(0x73d1072d, 0x1870, 0x4174, 0xa0, 0x63, 0x29, 0xff, 0x4f, 0xf6, 0xc1, 0x1e);
		public const Guid MF_MT_VIDEO_PROFILE = .(0xad76a80b, 0x2d5c, 0x4e0b, 0xb3, 0x75, 0x64, 0xe5, 0x20, 0x13, 0x70, 0x36);
		public const Guid MF_MT_VIDEO_LEVEL = .(0x96f66574, 0x11c5, 0x4015, 0x86, 0x66, 0xbf, 0xf5, 0x16, 0x43, 0x6d, 0xa7);
		public const Guid MF_MT_MPEG_START_TIME_CODE = .(0x91f67885, 0x4333, 0x4280, 0x97, 0xcd, 0xbd, 0x5a, 0x6c, 0x03, 0xa0, 0x6e);
		public const Guid MF_MT_MPEG2_PROFILE = .(0xad76a80b, 0x2d5c, 0x4e0b, 0xb3, 0x75, 0x64, 0xe5, 0x20, 0x13, 0x70, 0x36);
		public const Guid MF_MT_MPEG2_LEVEL = .(0x96f66574, 0x11c5, 0x4015, 0x86, 0x66, 0xbf, 0xf5, 0x16, 0x43, 0x6d, 0xa7);
		public const Guid MF_MT_MPEG2_FLAGS = .(0x31e3991d, 0xf701, 0x4b2f, 0xb4, 0x26, 0x8a, 0xe3, 0xbd, 0xa9, 0xe0, 0x4b);
		public const Guid MF_MT_MPEG_SEQUENCE_HEADER = .(0x3c036de7, 0x3ad0, 0x4c9e, 0x92, 0x16, 0xee, 0x6d, 0x6a, 0xc2, 0x1c, 0xb3);
		public const Guid MF_MT_MPEG2_STANDARD = .(0xa20af9e8, 0x928a, 0x4b26, 0xaa, 0xa9, 0xf0, 0x5c, 0x74, 0xca, 0xc4, 0x7c);
		public const Guid MF_MT_MPEG2_TIMECODE = .(0x5229ba10, 0xe29d, 0x4f80, 0xa5, 0x9c, 0xdf, 0x4f, 0x18, 0x02, 0x07, 0xd2);
		public const Guid MF_MT_MPEG2_CONTENT_PACKET = .(0x825d55e4, 0x4f12, 0x4197, 0x9e, 0xb3, 0x59, 0xb6, 0xe4, 0x71, 0x0f, 0x06);
		public const Guid MF_MT_MPEG2_ONE_FRAME_PER_PACKET = .(0x91a49eb5, 0x1d20, 0x4b42, 0xac, 0xe8, 0x80, 0x42, 0x69, 0xbf, 0x95, 0xed);
		public const Guid MF_MT_MPEG2_HDCP = .(0x168f1b4a, 0x3e91, 0x450f, 0xae, 0xa7, 0xe4, 0xba, 0xea, 0xda, 0xe5, 0xba);
		public const Guid MF_MT_H264_MAX_CODEC_CONFIG_DELAY = .(0xf5929986, 0x4c45, 0x4fbb, 0xbb, 0x49, 0x6c, 0xc5, 0x34, 0xd0, 0x5b, 0x9b);
		public const Guid MF_MT_H264_SUPPORTED_SLICE_MODES = .(0xc8be1937, 0x4d64, 0x4549, 0x83, 0x43, 0xa8, 0x08, 0x6c, 0x0b, 0xfd, 0xa5);
		public const Guid MF_MT_H264_SUPPORTED_SYNC_FRAME_TYPES = .(0x89a52c01, 0xf282, 0x48d2, 0xb5, 0x22, 0x22, 0xe6, 0xae, 0x63, 0x31, 0x99);
		public const Guid MF_MT_H264_RESOLUTION_SCALING = .(0xe3854272, 0xf715, 0x4757, 0xba, 0x90, 0x1b, 0x69, 0x6c, 0x77, 0x34, 0x57);
		public const Guid MF_MT_H264_SIMULCAST_SUPPORT = .(0x9ea2d63d, 0x53f0, 0x4a34, 0xb9, 0x4e, 0x9d, 0xe4, 0x9a, 0x07, 0x8c, 0xb3);
		public const Guid MF_MT_H264_SUPPORTED_RATE_CONTROL_MODES = .(0x6a8ac47e, 0x519c, 0x4f18, 0x9b, 0xb3, 0x7e, 0xea, 0xae, 0xa5, 0x59, 0x4d);
		public const Guid MF_MT_H264_MAX_MB_PER_SEC = .(0x45256d30, 0x7215, 0x4576, 0x93, 0x36, 0xb0, 0xf1, 0xbc, 0xd5, 0x9b, 0xb2);
		public const Guid MF_MT_H264_SUPPORTED_USAGES = .(0x60b1a998, 0xdc01, 0x40ce, 0x97, 0x36, 0xab, 0xa8, 0x45, 0xa2, 0xdb, 0xdc);
		public const Guid MF_MT_H264_CAPABILITIES = .(0xbb3bd508, 0x490a, 0x11e0, 0x99, 0xe4, 0x13, 0x16, 0xdf, 0xd7, 0x20, 0x85);
		public const Guid MF_MT_H264_SVC_CAPABILITIES = .(0xf8993abe, 0xd937, 0x4a8f, 0xbb, 0xca, 0x69, 0x66, 0xfe, 0x9e, 0x11, 0x52);
		public const Guid MF_MT_H264_USAGE = .(0x359ce3a5, 0xaf00, 0x49ca, 0xa2, 0xf4, 0x2a, 0xc9, 0x4c, 0xa8, 0x2b, 0x61);
		public const Guid MF_MT_H264_RATE_CONTROL_MODES = .(0x705177d8, 0x45cb, 0x11e0, 0xac, 0x7d, 0xb9, 0x1c, 0xe0, 0xd7, 0x20, 0x85);
		public const Guid MF_MT_H264_LAYOUT_PER_STREAM = .(0x85e299b2, 0x90e3, 0x4fe8, 0xb2, 0xf5, 0xc0, 0x67, 0xe0, 0xbf, 0xe5, 0x7a);
		public const Guid MF_MT_IN_BAND_PARAMETER_SET = .(0x75da5090, 0x910b, 0x4a03, 0x89, 0x6c, 0x7b, 0x89, 0x8f, 0xee, 0xa5, 0xaf);
		public const Guid MF_MT_MPEG4_TRACK_TYPE = .(0x54f486dd, 0x9327, 0x4f6d, 0x80, 0xab, 0x6f, 0x70, 0x9e, 0xbb, 0x4c, 0xce);
		public const Guid MF_MT_CONTAINER_RATE_SCALING = .(0x83877f5e, 0x0444, 0x4e28, 0x84, 0x79, 0x6d, 0xb0, 0x98, 0x9b, 0x8c, 0x09);
		public const Guid MF_MT_DV_AAUX_SRC_PACK_0 = .(0x84bd5d88, 0x0fb8, 0x4ac8, 0xbe, 0x4b, 0xa8, 0x84, 0x8b, 0xef, 0x98, 0xf3);
		public const Guid MF_MT_DV_AAUX_CTRL_PACK_0 = .(0xf731004e, 0x1dd1, 0x4515, 0xaa, 0xbe, 0xf0, 0xc0, 0x6a, 0xa5, 0x36, 0xac);
		public const Guid MF_MT_DV_AAUX_SRC_PACK_1 = .(0x720e6544, 0x0225, 0x4003, 0xa6, 0x51, 0x01, 0x96, 0x56, 0x3a, 0x95, 0x8e);
		public const Guid MF_MT_DV_AAUX_CTRL_PACK_1 = .(0xcd1f470d, 0x1f04, 0x4fe0, 0xbf, 0xb9, 0xd0, 0x7a, 0xe0, 0x38, 0x6a, 0xd8);
		public const Guid MF_MT_DV_VAUX_SRC_PACK = .(0x41402d9d, 0x7b57, 0x43c6, 0xb1, 0x29, 0x2c, 0xb9, 0x97, 0xf1, 0x50, 0x09);
		public const Guid MF_MT_DV_VAUX_CTRL_PACK = .(0x2f84e1c4, 0x0da1, 0x4788, 0x93, 0x8e, 0x0d, 0xfb, 0xfb, 0xb3, 0x4b, 0x48);
		public const Guid MF_MT_ARBITRARY_HEADER = .(0x9e6bd6f5, 0x0109, 0x4f95, 0x84, 0xac, 0x93, 0x09, 0x15, 0x3a, 0x19, 0xfc);
		public const Guid MF_MT_ARBITRARY_FORMAT = .(0x5a75b249, 0x0d7d, 0x49a1, 0xa1, 0xc3, 0xe0, 0xd8, 0x7f, 0x0c, 0xad, 0xe5);
		public const Guid MF_MT_IMAGE_LOSS_TOLERANT = .(0xed062cf4, 0xe34e, 0x4922, 0xbe, 0x99, 0x93, 0x40, 0x32, 0x13, 0x3d, 0x7c);
		public const Guid MF_MT_MPEG4_SAMPLE_DESCRIPTION = .(0x261e9d83, 0x9529, 0x4b8f, 0xa1, 0x11, 0x8b, 0x9c, 0x95, 0x0a, 0x81, 0xa9);
		public const Guid MF_MT_MPEG4_CURRENT_SAMPLE_ENTRY = .(0x9aa7e155, 0xb64a, 0x4c1d, 0xa5, 0x00, 0x45, 0x5d, 0x60, 0x0b, 0x65, 0x60);
		public const Guid MF_SD_AMBISONICS_SAMPLE3D_DESCRIPTION = .(0xf715cf3e, 0xa964, 0x4c3f, 0x94, 0xae, 0x9d, 0x6b, 0xa7, 0x26, 0x46, 0x41);
		public const Guid MF_MT_ORIGINAL_4CC = .(0xd7be3fe0, 0x2bc7, 0x492d, 0xb8, 0x43, 0x61, 0xa1, 0x91, 0x9b, 0x70, 0xc3);
		public const Guid MF_MT_ORIGINAL_WAVE_FORMAT_TAG = .(0x8cbbc843, 0x9fd9, 0x49c2, 0x88, 0x2f, 0xa7, 0x25, 0x86, 0xc4, 0x08, 0xad);
		public const Guid MF_MT_FRAME_RATE_RANGE_MIN = .(0xd2e7558c, 0xdc1f, 0x403f, 0x9a, 0x72, 0xd2, 0x8b, 0xb1, 0xeb, 0x3b, 0x5e);
		public const Guid MF_MT_FRAME_RATE_RANGE_MAX = .(0xe3371d41, 0xb4cf, 0x4a05, 0xbd, 0x4e, 0x20, 0xb8, 0x8b, 0xb2, 0xc4, 0xd6);
		public const Guid MF_LOW_LATENCY = .(0x9c27891a, 0xed7a, 0x40e1, 0x88, 0xe8, 0xb2, 0x27, 0x27, 0xa0, 0x24, 0xee);
		public const Guid MF_VIDEO_MAX_MB_PER_SEC = .(0xe3f2e203, 0xd445, 0x4b8c, 0x92, 0x11, 0xae, 0x39, 0x0d, 0x3b, 0xa0, 0x17);
		public const Guid MF_DISABLE_FRAME_CORRUPTION_INFO = .(0x7086e16c, 0x49c5, 0x4201, 0x88, 0x2a, 0x85, 0x38, 0xf3, 0x8c, 0xf1, 0x3a);
		public const Guid MFStreamExtension_CameraExtrinsics = .(0x686196d0, 0x13e2, 0x41d9, 0x96, 0x38, 0xef, 0x03, 0x2c, 0x27, 0x2a, 0x52);
		public const Guid MFSampleExtension_CameraExtrinsics = .(0x6b761658, 0xb7ec, 0x4c3b, 0x82, 0x25, 0x86, 0x23, 0xca, 0xbe, 0xc3, 0x1d);
		public const Guid MFStreamExtension_PinholeCameraIntrinsics = .(0xdbac0455, 0x0ec8, 0x4aef, 0x9c, 0x32, 0x7a, 0x3e, 0xe3, 0x45, 0x6f, 0x53);
		public const Guid MFSampleExtension_PinholeCameraIntrinsics = .(0x4ee3b6c5, 0x6a15, 0x4e72, 0x97, 0x61, 0x70, 0xc1, 0xdb, 0x8b, 0x9f, 0xe3);
		public const Guid MFMediaType_Default = .(0x81a412e6, 0x8103, 0x4b06, 0x85, 0x7f, 0x18, 0x62, 0x78, 0x10, 0x24, 0xac);
		public const Guid MFMediaType_Audio = .(0x73647561, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFMediaType_Video = .(0x73646976, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFMediaType_Protected = .(0x7b4b6fe6, 0x9d04, 0x4494, 0xbe, 0x14, 0x7e, 0x0b, 0xd0, 0x76, 0xc8, 0xe4);
		public const Guid MFMediaType_SAMI = .(0xe69669a0, 0x3dcd, 0x40cb, 0x9e, 0x2e, 0x37, 0x08, 0x38, 0x7c, 0x06, 0x16);
		public const Guid MFMediaType_Script = .(0x72178c22, 0xe45b, 0x11d5, 0xbc, 0x2a, 0x00, 0xb0, 0xd0, 0xf3, 0xf4, 0xab);
		public const Guid MFMediaType_Image = .(0x72178c23, 0xe45b, 0x11d5, 0xbc, 0x2a, 0x00, 0xb0, 0xd0, 0xf3, 0xf4, 0xab);
		public const Guid MFMediaType_HTML = .(0x72178c24, 0xe45b, 0x11d5, 0xbc, 0x2a, 0x00, 0xb0, 0xd0, 0xf3, 0xf4, 0xab);
		public const Guid MFMediaType_Binary = .(0x72178c25, 0xe45b, 0x11d5, 0xbc, 0x2a, 0x00, 0xb0, 0xd0, 0xf3, 0xf4, 0xab);
		public const Guid MFMediaType_FileTransfer = .(0x72178c26, 0xe45b, 0x11d5, 0xbc, 0x2a, 0x00, 0xb0, 0xd0, 0xf3, 0xf4, 0xab);
		public const Guid MFMediaType_Stream = .(0xe436eb83, 0x524f, 0x11ce, 0x9f, 0x53, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
		public const Guid MFMediaType_MultiplexedFrames = .(0x6ea542b0, 0x281f, 0x4231, 0xa4, 0x64, 0xfe, 0x2f, 0x50, 0x22, 0x50, 0x1c);
		public const Guid MFMediaType_Subtitle = .(0xa6d13581, 0xed50, 0x4e65, 0xae, 0x08, 0x26, 0x06, 0x55, 0x76, 0xaa, 0xcc);
		public const Guid MFMediaType_Perception = .(0x597ff6f9, 0x6ea2, 0x4670, 0x85, 0xb4, 0xea, 0x84, 0x07, 0x3f, 0xe9, 0x40);
		public const Guid MFImageFormat_JPEG = .(0x19e4a5aa, 0x5662, 0x4fc5, 0xa0, 0xc0, 0x17, 0x58, 0x02, 0x8e, 0x10, 0x57);
		public const Guid MFImageFormat_RGB32 = .(0x00000016, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MFStreamFormat_MPEG2Transport = .(0xe06d8023, 0xdb46, 0x11cf, 0xb4, 0xd1, 0x00, 0x80, 0x5f, 0x6c, 0xbb, 0xea);
		public const Guid MFStreamFormat_MPEG2Program = .(0x263067d1, 0xd330, 0x45dc, 0xb6, 0x69, 0x34, 0xd9, 0x86, 0xe4, 0xe3, 0xe1);
		public const Guid AM_MEDIA_TYPE_REPRESENTATION = .(0xe2e42ad2, 0x132c, 0x491e, 0xa2, 0x68, 0x3c, 0x7c, 0x2d, 0xca, 0x18, 0x1f);
		public const Guid FORMAT_MFVideoFormat = .(0xaed4ab2d, 0x7326, 0x43cb, 0x94, 0x64, 0xc8, 0x79, 0xca, 0xb9, 0xc4, 0x3d);
		public const Guid MFMediaType_Metadata = .(0x2c8fa20c, 0x82bb, 0x4782, 0x90, 0xa0, 0x98, 0xa2, 0xa5, 0xbd, 0x8e, 0xf8);
		public const Guid CLSID_MFSourceResolver = .(0x90eab60f, 0xe43a, 0x4188, 0xbc, 0xc4, 0xe4, 0x7f, 0xdf, 0x04, 0x86, 0x8c);
		public const Guid MF_DEVICESTREAM_ATTRIBUTE_FACEAUTH_CAPABILITY = .(0xcb6fd12a, 0x2248, 0x4e41, 0xad, 0x46, 0xe7, 0x8b, 0xb9, 0x0a, 0xb9, 0xfc);
		public const Guid MF_DEVICESTREAM_ATTRIBUTE_SECURE_CAPABILITY = .(0x940fd626, 0xea6e, 0x4684, 0x98, 0x40, 0x36, 0xbd, 0x6e, 0xc9, 0xfb, 0xef);
		public const uint32 MEDIASINK_FIXED_STREAMS = 1;
		public const uint32 MEDIASINK_CANNOT_MATCH_CLOCK = 2;
		public const uint32 MEDIASINK_RATELESS = 4;
		public const uint32 MEDIASINK_CLOCK_REQUIRED = 8;
		public const uint32 MEDIASINK_CAN_PREROLL = 16;
		public const uint32 MEDIASINK_REQUIRE_REFERENCE_MEDIATYPE = 32;
		public const uint32 MFCLOCK_FREQUENCY_HNS = 10000000;
		public const uint32 MFCLOCK_TOLERANCE_UNKNOWN = 50000;
		public const uint32 MFCLOCK_JITTER_ISR = 1000;
		public const uint32 MFCLOCK_JITTER_DPC = 4000;
		public const uint32 MFCLOCK_JITTER_PASSIVE = 10000;
		public const uint64 PRESENTATION_CURRENT_POSITION = 9223372036854775807uL;
		public const Guid MF_PD_ADAPTIVE_STREAMING = .(0xea0d5d97, 0x29f9, 0x488b, 0xae, 0x6b, 0x7d, 0x6b, 0x41, 0x36, 0x11, 0x2b);
		public const uint32 MF_AUDIO_RENDERER_ATTRIBUTE_FLAGS_CROSSPROCESS = 1;
		public const uint32 MF_AUDIO_RENDERER_ATTRIBUTE_FLAGS_NOPERSIST = 2;
		public const uint32 MF_AUDIO_RENDERER_ATTRIBUTE_FLAGS_DONT_ALLOW_FORMAT_CHANGES = 4;
		public const uint32 MFRR_INFO_VERSION = 0;
		public const uint32 MF_USER_MODE_COMPONENT_LOAD = 1;
		public const uint32 MF_KERNEL_MODE_COMPONENT_LOAD = 2;
		public const uint32 MF_GRL_LOAD_FAILED = 16;
		public const uint32 MF_INVALID_GRL_SIGNATURE = 32;
		public const uint32 MF_GRL_ABSENT = 4096;
		public const uint32 MF_COMPONENT_REVOKED = 8192;
		public const uint32 MF_COMPONENT_INVALID_EKU = 16384;
		public const uint32 MF_COMPONENT_CERT_REVOKED = 32768;
		public const uint32 MF_COMPONENT_INVALID_ROOT = 65536;
		public const uint32 MF_COMPONENT_HS_CERT_REVOKED = 131072;
		public const uint32 MF_COMPONENT_LS_CERT_REVOKED = 262144;
		public const uint32 MF_BOOT_DRIVER_VERIFICATION_FAILED = 1048576;
		public const uint32 MF_TEST_SIGNED_COMPONENT_LOADING = 16777216;
		public const uint32 MF_MINCRYPT_FAILURE = 268435456;
		public const uint32 SHA_HASH_LEN = 20;
		public const uint32 MFSEQUENCER_INVALID_ELEMENT_ID = 4294967295;
		public const Guid MF_WRAPPED_BUFFER_SERVICE = .(0xab544072, 0xc269, 0x4ebc, 0xa5, 0x52, 0x1c, 0x3b, 0x32, 0xbe, 0xd5, 0xca);
		public const Guid CLSID_MPEG2ByteStreamPlugin = .(0x40871c59, 0xab40, 0x471f, 0x8d, 0xc3, 0x1f, 0x25, 0x9d, 0x86, 0x24, 0x79);
		public const uint32 MFCONTENTPROTECTIONDEVICE_FUNCTIONID_START = 67108864;
		public const uint32 MFCONTENTPROTECTIONDEVICE_REALTIMECLIENT_DATA_FUNCTIONID = 67108864;
		public const uint32 MF_UNKNOWN_DURATION = 0;
		public const Guid MFStreamExtension_ExtendedCameraIntrinsics = .(0xaa74b3df, 0x9a2c, 0x48d6, 0x83, 0x93, 0x5b, 0xd1, 0xc1, 0xa8, 0x1e, 0x6e);
		public const Guid MFSampleExtension_ExtendedCameraIntrinsics = .(0x560bc4a5, 0x4de0, 0x4113, 0x9c, 0xdc, 0x83, 0x2d, 0xb9, 0x74, 0x0f, 0x3d);
		public const uint64 MF_INVALID_PRESENTATION_TIME = 9223372036854775808uL;
		public const uint32 MF_MEDIATYPE_EQUAL_MAJOR_TYPES = 1;
		public const uint32 MF_MEDIATYPE_EQUAL_FORMAT_TYPES = 2;
		public const uint32 MF_MEDIATYPE_EQUAL_FORMAT_DATA = 4;
		public const uint32 MF_MEDIATYPE_EQUAL_FORMAT_USER_DATA = 8;
		public const uint32 MFASYNC_FAST_IO_PROCESSING_CALLBACK = 1;
		public const uint32 MFASYNC_SIGNAL_CALLBACK = 2;
		public const uint32 MFASYNC_BLOCKING_CALLBACK = 4;
		public const uint32 MFASYNC_REPLY_CALLBACK = 8;
		public const uint32 MFASYNC_LOCALIZE_REMOTE_CALLBACK = 16;
		public const uint32 MFASYNC_CALLBACK_QUEUE_UNDEFINED = 0;
		public const uint32 MFASYNC_CALLBACK_QUEUE_STANDARD = 1;
		public const uint32 MFASYNC_CALLBACK_QUEUE_RT = 2;
		public const uint32 MFASYNC_CALLBACK_QUEUE_IO = 3;
		public const uint32 MFASYNC_CALLBACK_QUEUE_TIMER = 4;
		public const uint32 MFASYNC_CALLBACK_QUEUE_MULTITHREADED = 5;
		public const uint32 MFASYNC_CALLBACK_QUEUE_LONG_FUNCTION = 7;
		public const uint32 MFASYNC_CALLBACK_QUEUE_PRIVATE_MASK = 4294901760;
		public const uint32 MFASYNC_CALLBACK_QUEUE_ALL = 4294967295;
		public const uint32 MFBYTESTREAM_IS_READABLE = 1;
		public const uint32 MFBYTESTREAM_IS_WRITABLE = 2;
		public const uint32 MFBYTESTREAM_IS_SEEKABLE = 4;
		public const uint32 MFBYTESTREAM_IS_REMOTE = 8;
		public const uint32 MFBYTESTREAM_IS_DIRECTORY = 128;
		public const uint32 MFBYTESTREAM_HAS_SLOW_SEEK = 256;
		public const uint32 MFBYTESTREAM_IS_PARTIALLY_DOWNLOADED = 512;
		public const uint32 MFBYTESTREAM_SHARE_WRITE = 1024;
		public const uint32 MFBYTESTREAM_DOES_NOT_USE_NETWORK = 2048;
		public const uint32 MFBYTESTREAM_SEEK_FLAG_CANCEL_PENDING_IO = 1;
		public const Guid MF_MEDIA_SHARING_ENGINE_INITIAL_SEEK_TIME = .(0x6f3497f5, 0xd528, 0x4a4f, 0x8d, 0xd7, 0xdb, 0x36, 0x65, 0x7e, 0xc4, 0xc9);
		public const Guid MF_SHUTDOWN_RENDERER_ON_ENGINE_SHUTDOWN = .(0xc112d94d, 0x6b9c, 0x48f8, 0xb6, 0xf9, 0x79, 0x50, 0xff, 0x9a, 0xb7, 0x1e);
		public const Guid MF_PREFERRED_SOURCE_URI = .(0x5fc85488, 0x436a, 0x4db8, 0x90, 0xaf, 0x4d, 0xb4, 0x02, 0xae, 0x5c, 0x57);
		public const Guid MF_SHARING_ENGINE_SHAREDRENDERER = .(0xefa446a0, 0x73e7, 0x404e, 0x8a, 0xe2, 0xfe, 0xf6, 0x0a, 0xf5, 0xa3, 0x2b);
		public const Guid MF_SHARING_ENGINE_CALLBACK = .(0x57dc1e95, 0xd252, 0x43fa, 0x9b, 0xbc, 0x18, 0x00, 0x70, 0xee, 0xfe, 0x6d);
		public const uint32 MFT_STREAMS_UNLIMITED = 4294967295;
		public const uint64 MFT_OUTPUT_BOUND_UPPER_UNBOUNDED = 9223372036854775807uL;
		public const Guid OPM_GET_CURRENT_HDCP_SRM_VERSION = .(0x99c5ceff, 0x5f1d, 0x4879, 0x81, 0xc1, 0xc5, 0x24, 0x43, 0xc9, 0x48, 0x2b);
		public const Guid OPM_GET_CONNECTED_HDCP_DEVICE_INFORMATION = .(0x0db59d74, 0xa992, 0x492e, 0xa0, 0xbd, 0xc2, 0x3f, 0xda, 0x56, 0x4e, 0x00);
		public const Guid OPM_GET_ACP_AND_CGMSA_SIGNALING = .(0x6629a591, 0x3b79, 0x4cf3, 0x92, 0x4a, 0x11, 0xe8, 0xe7, 0x81, 0x16, 0x71);
		public const Guid OPM_GET_CONNECTOR_TYPE = .(0x81d0bfd5, 0x6afe, 0x48c2, 0x99, 0xc0, 0x95, 0xa0, 0x8f, 0x97, 0xc5, 0xda);
		public const Guid OPM_GET_SUPPORTED_PROTECTION_TYPES = .(0x38f2a801, 0x9a6c, 0x48bb, 0x91, 0x07, 0xb6, 0x69, 0x6e, 0x6f, 0x17, 0x97);
		public const Guid OPM_GET_VIRTUAL_PROTECTION_LEVEL = .(0xb2075857, 0x3eda, 0x4d5d, 0x88, 0xdb, 0x74, 0x8f, 0x8c, 0x1a, 0x05, 0x49);
		public const Guid OPM_GET_ACTUAL_PROTECTION_LEVEL = .(0x1957210a, 0x7766, 0x452a, 0xb9, 0x9a, 0xd2, 0x7a, 0xed, 0x54, 0xf0, 0x3a);
		public const Guid OPM_GET_ACTUAL_OUTPUT_FORMAT = .(0xd7bf1ba3, 0xad13, 0x4f8e, 0xaf, 0x98, 0x0d, 0xcb, 0x3c, 0xa2, 0x04, 0xcc);
		public const Guid OPM_GET_ADAPTER_BUS_TYPE = .(0xc6f4d673, 0x6174, 0x4184, 0x8e, 0x35, 0xf6, 0xdb, 0x52, 0x00, 0xbc, 0xba);
		public const Guid OPM_GET_OUTPUT_ID = .(0x72cb6df3, 0x244f, 0x40ce, 0xb0, 0x9e, 0x20, 0x50, 0x6a, 0xf6, 0x30, 0x2f);
		public const Guid OPM_GET_DVI_CHARACTERISTICS = .(0xa470b3bb, 0x5dd7, 0x4172, 0x83, 0x9c, 0x3d, 0x37, 0x76, 0xe0, 0xeb, 0xf5);
		public const Guid OPM_GET_CODEC_INFO = .(0x4f374491, 0x8f5f, 0x4445, 0x9d, 0xba, 0x95, 0x58, 0x8f, 0x6b, 0x58, 0xb4);
		public const Guid OPM_GET_OUTPUT_HARDWARE_PROTECTION_SUPPORT = .(0x3b129589, 0x2af8, 0x4ef0, 0x96, 0xa2, 0x70, 0x4a, 0x84, 0x5a, 0x21, 0x8e);
		public const Guid OPM_SET_PROTECTION_LEVEL = .(0x9bb9327c, 0x4eb5, 0x4727, 0x9f, 0x00, 0xb4, 0x2b, 0x09, 0x19, 0xc0, 0xda);
		public const Guid OPM_SET_ACP_AND_CGMSA_SIGNALING = .(0x09a631a5, 0xd684, 0x4c60, 0x8e, 0x4d, 0xd3, 0xbb, 0x0f, 0x0b, 0xe3, 0xee);
		public const Guid OPM_SET_HDCP_SRM = .(0x8b5ef5d1, 0xc30d, 0x44ff, 0x84, 0xa5, 0xea, 0x71, 0xdc, 0xe7, 0x8f, 0x13);
		public const Guid OPM_SET_PROTECTION_LEVEL_ACCORDING_TO_CSS_DVD = .(0x39ce333e, 0x4cc0, 0x44ae, 0xbf, 0xcc, 0xda, 0x50, 0xb5, 0xf8, 0x2e, 0x72);
		public const uint32 WM_CODEC_ONEPASS_CBR = 1;
		public const uint32 WM_CODEC_ONEPASS_VBR = 2;
		public const uint32 WM_CODEC_TWOPASS_CBR = 4;
		public const uint32 WM_CODEC_TWOPASS_VBR_UNCONSTRAINED = 8;
		public const uint32 WM_CODEC_TWOPASS_VBR_PEAKCONSTRAINED = 16;
		public const uint32 SYSFXUI_DONOTSHOW_LOUDNESSEQUALIZATION = 1;
		public const uint32 SYSFXUI_DONOTSHOW_ROOMCORRECTION = 2;
		public const uint32 SYSFXUI_DONOTSHOW_BASSMANAGEMENT = 4;
		public const uint32 SYSFXUI_DONOTSHOW_BASSBOOST = 8;
		public const uint32 SYSFXUI_DONOTSHOW_HEADPHONEVIRTUALIZATION = 16;
		public const uint32 SYSFXUI_DONOTSHOW_VIRTUALSURROUND = 32;
		public const uint32 SYSFXUI_DONOTSHOW_SPEAKERFILLING = 64;
		public const uint32 SYSFXUI_DONOTSHOW_CHANNELPHANTOMING = 128;
		public const uint32 AEC_MAX_SYSTEM_MODES = 6;
		public const uint32 WMAAECMA_E_NO_ACTIVE_RENDER_STREAM = 2278293514;
		public const Guid MEDIASUBTYPE_Y41T = .(0x54313459, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_Y42T = .(0x54323459, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_NV11 = .(0x3131564e, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_V216 = .(0x36313256, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_V410 = .(0x30313456, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_v210 = .(0x30313276, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_I420 = .(0x30323449, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WVC1 = .(0x31435657, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_wvc1 = .(0x31637677, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WMVA = .(0x41564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_wmva = .(0x61766d77, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WMVB = .(0x42564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_wmvb = .(0x62766d77, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WMVR = .(0x52564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_wmvr = .(0x72766d77, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WMVP = .(0x50564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_wmvp = .(0x70766d77, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WVP2 = .(0x32505657, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_wvp2 = .(0x32707677, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WMV3 = .(0x33564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_wmv3 = .(0x33766d77, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WMV2 = .(0x32564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_wmv2 = .(0x32766d77, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WMV1 = .(0x31564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_wmv1 = .(0x31766d77, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_MPG4 = .(0x3447504d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_mpg4 = .(0x3467706d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_MP42 = .(0x3234504d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_mp42 = .(0x3234706d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_MP43 = .(0x3334504d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_mp43 = .(0x3334706d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_MP4S = .(0x5334504d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_mp4s = .(0x7334706d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_M4S2 = .(0x3253344d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_m4s2 = .(0x3273346d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_MSS1 = .(0x3153534d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_MSS2 = .(0x3253534d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_MSAUDIO1 = .(0x00000160, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WMAUDIO2 = .(0x00000161, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WMAUDIO3 = .(0x00000162, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WMAUDIO_LOSSLESS = .(0x00000163, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WMASPDIF = .(0x00000164, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_WMAUDIO4 = .(0x00000168, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_MPEG_ADTS_AAC = .(0x00001600, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_MPEG_RAW_AAC = .(0x00001601, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_MPEG_LOAS = .(0x00001602, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_NOKIA_MPEG_ADTS_AAC = .(0x00001608, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_NOKIA_MPEG_RAW_AAC = .(0x00001609, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_VODAFONE_MPEG_ADTS_AAC = .(0x0000160a, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_VODAFONE_MPEG_RAW_AAC = .(0x0000160b, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_MPEG_HEAAC = .(0x00001610, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_RAW_AAC1 = .(0x000000ff, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_DVM = .(0x00002000, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_DTS2 = .(0x00002001, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_DOLBY_DDPLUS = .(0xa7fb87af, 0x2d02, 0x42fb, 0xa4, 0xd4, 0x05, 0xcd, 0x93, 0x84, 0x3b, 0xdd);
		public const Guid MEDIASUBTYPE_DOLBY_TRUEHD = .(0xeb27cec4, 0x163e, 0x4ca3, 0x8b, 0x74, 0x8e, 0x25, 0xf9, 0x1b, 0x51, 0x7e);
		public const Guid MEDIASUBTYPE_DTS_HD = .(0xa2e58eb7, 0x0fa9, 0x48bb, 0xa4, 0x0c, 0xfa, 0x0e, 0x15, 0x6d, 0x06, 0x45);
		public const Guid MEDIASUBTYPE_DTS_HD_HRA = .(0xa61ac364, 0xad0e, 0x4744, 0x89, 0xff, 0x21, 0x3c, 0xe0, 0xdf, 0x88, 0x04);
		public const Guid MEDIASUBTYPE_h264 = .(0x34363268, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_AVC1 = .(0x31435641, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_X264 = .(0x34363258, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MEDIASUBTYPE_x264 = .(0x34363278, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid MF_VIDEODSP_MODE = .(0x16d720f0, 0x768c, 0x11de, 0x8a, 0x39, 0x08, 0x00, 0x20, 0x0c, 0x9a, 0x66);
		public const Guid MFSampleExtension_VideoDSPMode = .(0xc12d55cb, 0xd7d9, 0x476d, 0x81, 0xf3, 0x69, 0x11, 0x7f, 0x16, 0x3e, 0xa0);
		public const Guid CLSID_CTocEntry = .(0xf22f5e05, 0x585c, 0x4def, 0x85, 0x23, 0x65, 0x55, 0xcf, 0xbc, 0x0c, 0xb3);
		public const Guid CLSID_CTocEntryList = .(0x3a8cccbc, 0x0efd, 0x43a3, 0xb8, 0x38, 0xf3, 0x8a, 0x55, 0x2b, 0xa2, 0x37);
		public const Guid CLSID_CToc = .(0x4fe24495, 0x28ce, 0x4920, 0xa4, 0xc4, 0xe5, 0x56, 0xe1, 0xf0, 0xdf, 0x2a);
		public const Guid CLSID_CTocCollection = .(0x5058292d, 0xa244, 0x4840, 0xab, 0x44, 0x48, 0x09, 0x75, 0xc4, 0xff, 0xe4);
		public const Guid CLSID_CTocParser = .(0x499eaeea, 0x2737, 0x4849, 0x8b, 0xb6, 0x47, 0xf1, 0x07, 0xea, 0xf3, 0x58);
		public const Guid CLSID_CAsfTocParser = .(0x9b77c0f2, 0x8735, 0x46c5, 0xb9, 0x0f, 0x5f, 0x0b, 0x30, 0x3e, 0xf6, 0xab);
		public const Guid CLSID_CAviTocParser = .(0x3adce5cc, 0x13c8, 0x4573, 0xb3, 0x28, 0xed, 0x43, 0x8e, 0xb6, 0x94, 0xf9);
		public const Guid CLSID_CFileIo = .(0x11993195, 0x1244, 0x4840, 0xab, 0x44, 0x48, 0x09, 0x75, 0xc4, 0xff, 0xe4);
		public const Guid CLSID_CFileClient = .(0xbfccd195, 0x1244, 0x4840, 0xab, 0x44, 0x48, 0x09, 0x75, 0xc4, 0xff, 0xe4);
		public const Guid CLSID_CClusterDetectorEx = .(0x47354492, 0x827e, 0x4b8a, 0xb3, 0x18, 0xc8, 0x0e, 0xba, 0x13, 0x81, 0xf0);
		public const HRESULT E_TOCPARSER_INVALIDASFFILE = -1728053247;
		public const HRESULT E_TOCPARSER_INVALIDRIFFFILE = -1728053246;
		public const uint32 TOC_MAX_DESCRIPTION_SIZE = 65535;
		public const uint32 TOC_ENTRY_MAX_TITLE_SIZE = 65535;
		public const uint32 MFASFINDEXER_PER_ENTRY_BYTES_DYNAMIC = 65535;
		public const uint32 MFASFINDEXER_NO_FIXED_INTERVAL = 4294967295;
		public const uint64 MFASFINDEXER_READ_FOR_REVERSEPLAYBACK_OUTOFDATASEGMENT = 18446744073709551615uL;
		public const uint64 MFASFINDEXER_APPROX_SEEK_TIME_UNKNOWN = 18446744073709551615uL;
		public const uint32 MFASF_MAX_STREAM_NUMBER = 127;
		public const uint32 MFASF_INVALID_STREAM_NUMBER = 128;
		public const uint32 MFASF_PAYLOADEXTENSION_MAX_SIZE = 255;
		public const uint32 MFASF_PAYLOADEXTENSION_VARIABLE_SIZE = 65535;
		public const uint32 MFASF_DEFAULT_BUFFER_WINDOW_MS = 3000;
		public const uint32 FACILITY_MF = 13;
		public const uint32 FACILITY_MF_WIN32 = 7;
		public const HRESULT MF_E_PLATFORM_NOT_INITIALIZED = -1072875856;
		public const HRESULT MF_E_BUFFERTOOSMALL = -1072875855;
		public const HRESULT MF_E_INVALIDREQUEST = -1072875854;
		public const HRESULT MF_E_INVALIDSTREAMNUMBER = -1072875853;
		public const HRESULT MF_E_INVALIDMEDIATYPE = -1072875852;
		public const HRESULT MF_E_NOTACCEPTING = -1072875851;
		public const HRESULT MF_E_NOT_INITIALIZED = -1072875850;
		public const HRESULT MF_E_UNSUPPORTED_REPRESENTATION = -1072875849;
		public const HRESULT MF_E_NO_MORE_TYPES = -1072875847;
		public const HRESULT MF_E_UNSUPPORTED_SERVICE = -1072875846;
		public const HRESULT MF_E_UNEXPECTED = -1072875845;
		public const HRESULT MF_E_INVALIDNAME = -1072875844;
		public const HRESULT MF_E_INVALIDTYPE = -1072875843;
		public const HRESULT MF_E_INVALID_FILE_FORMAT = -1072875842;
		public const HRESULT MF_E_INVALIDINDEX = -1072875841;
		public const HRESULT MF_E_INVALID_TIMESTAMP = -1072875840;
		public const HRESULT MF_E_UNSUPPORTED_SCHEME = -1072875837;
		public const HRESULT MF_E_UNSUPPORTED_BYTESTREAM_TYPE = -1072875836;
		public const HRESULT MF_E_UNSUPPORTED_TIME_FORMAT = -1072875835;
		public const HRESULT MF_E_NO_SAMPLE_TIMESTAMP = -1072875832;
		public const HRESULT MF_E_NO_SAMPLE_DURATION = -1072875831;
		public const HRESULT MF_E_INVALID_STREAM_DATA = -1072875829;
		public const HRESULT MF_E_RT_UNAVAILABLE = -1072875825;
		public const HRESULT MF_E_UNSUPPORTED_RATE = -1072875824;
		public const HRESULT MF_E_THINNING_UNSUPPORTED = -1072875823;
		public const HRESULT MF_E_REVERSE_UNSUPPORTED = -1072875822;
		public const HRESULT MF_E_UNSUPPORTED_RATE_TRANSITION = -1072875821;
		public const HRESULT MF_E_RATE_CHANGE_PREEMPTED = -1072875820;
		public const HRESULT MF_E_NOT_FOUND = -1072875819;
		public const HRESULT MF_E_NOT_AVAILABLE = -1072875818;
		public const HRESULT MF_E_NO_CLOCK = -1072875817;
		public const HRESULT MF_S_MULTIPLE_BEGIN = 866008;
		public const HRESULT MF_E_MULTIPLE_BEGIN = -1072875815;
		public const HRESULT MF_E_MULTIPLE_SUBSCRIBERS = -1072875814;
		public const HRESULT MF_E_TIMER_ORPHANED = -1072875813;
		public const HRESULT MF_E_STATE_TRANSITION_PENDING = -1072875812;
		public const HRESULT MF_E_UNSUPPORTED_STATE_TRANSITION = -1072875811;
		public const HRESULT MF_E_UNRECOVERABLE_ERROR_OCCURRED = -1072875810;
		public const HRESULT MF_E_SAMPLE_HAS_TOO_MANY_BUFFERS = -1072875809;
		public const HRESULT MF_E_SAMPLE_NOT_WRITABLE = -1072875808;
		public const HRESULT MF_E_INVALID_KEY = -1072875806;
		public const HRESULT MF_E_BAD_STARTUP_VERSION = -1072875805;
		public const HRESULT MF_E_UNSUPPORTED_CAPTION = -1072875804;
		public const HRESULT MF_E_INVALID_POSITION = -1072875803;
		public const HRESULT MF_E_ATTRIBUTENOTFOUND = -1072875802;
		public const HRESULT MF_E_PROPERTY_TYPE_NOT_ALLOWED = -1072875801;
		public const HRESULT MF_E_PROPERTY_TYPE_NOT_SUPPORTED = -1072875800;
		public const HRESULT MF_E_PROPERTY_EMPTY = -1072875799;
		public const HRESULT MF_E_PROPERTY_NOT_EMPTY = -1072875798;
		public const HRESULT MF_E_PROPERTY_VECTOR_NOT_ALLOWED = -1072875797;
		public const HRESULT MF_E_PROPERTY_VECTOR_REQUIRED = -1072875796;
		public const HRESULT MF_E_OPERATION_CANCELLED = -1072875795;
		public const HRESULT MF_E_BYTESTREAM_NOT_SEEKABLE = -1072875794;
		public const HRESULT MF_E_DISABLED_IN_SAFEMODE = -1072875793;
		public const HRESULT MF_E_CANNOT_PARSE_BYTESTREAM = -1072875792;
		public const HRESULT MF_E_SOURCERESOLVER_MUTUALLY_EXCLUSIVE_FLAGS = -1072875791;
		public const HRESULT MF_E_MEDIAPROC_WRONGSTATE = -1072875790;
		public const HRESULT MF_E_RT_THROUGHPUT_NOT_AVAILABLE = -1072875789;
		public const HRESULT MF_E_RT_TOO_MANY_CLASSES = -1072875788;
		public const HRESULT MF_E_RT_WOULDBLOCK = -1072875787;
		public const HRESULT MF_E_NO_BITPUMP = -1072875786;
		public const HRESULT MF_E_RT_OUTOFMEMORY = -1072875785;
		public const HRESULT MF_E_RT_WORKQUEUE_CLASS_NOT_SPECIFIED = -1072875784;
		public const HRESULT MF_E_INSUFFICIENT_BUFFER = -1072860816;
		public const HRESULT MF_E_CANNOT_CREATE_SINK = -1072875782;
		public const HRESULT MF_E_BYTESTREAM_UNKNOWN_LENGTH = -1072875781;
		public const HRESULT MF_E_SESSION_PAUSEWHILESTOPPED = -1072875780;
		public const HRESULT MF_S_ACTIVATE_REPLACED = 866045;
		public const HRESULT MF_E_FORMAT_CHANGE_NOT_SUPPORTED = -1072875778;
		public const HRESULT MF_E_INVALID_WORKQUEUE = -1072875777;
		public const HRESULT MF_E_DRM_UNSUPPORTED = -1072875776;
		public const HRESULT MF_E_UNAUTHORIZED = -1072875775;
		public const HRESULT MF_E_OUT_OF_RANGE = -1072875774;
		public const HRESULT MF_E_INVALID_CODEC_MERIT = -1072875773;
		public const HRESULT MF_E_HW_MFT_FAILED_START_STREAMING = -1072875772;
		public const HRESULT MF_E_OPERATION_IN_PROGRESS = -1072875771;
		public const HRESULT MF_E_HARDWARE_DRM_UNSUPPORTED = -1072875770;
		public const HRESULT MF_E_DURATION_TOO_LONG = -1072875769;
		public const HRESULT MF_E_OPERATION_UNSUPPORTED_AT_D3D_FEATURE_LEVEL = -1072875768;
		public const HRESULT MF_E_UNSUPPORTED_MEDIATYPE_AT_D3D_FEATURE_LEVEL = -1072875767;
		public const HRESULT MF_S_ASF_PARSEINPROGRESS = 1074608792;
		public const HRESULT MF_E_ASF_PARSINGINCOMPLETE = -1072874856;
		public const HRESULT MF_E_ASF_MISSINGDATA = -1072874855;
		public const HRESULT MF_E_ASF_INVALIDDATA = -1072874854;
		public const HRESULT MF_E_ASF_OPAQUEPACKET = -1072874853;
		public const HRESULT MF_E_ASF_NOINDEX = -1072874852;
		public const HRESULT MF_E_ASF_OUTOFRANGE = -1072874851;
		public const HRESULT MF_E_ASF_INDEXNOTLOADED = -1072874850;
		public const HRESULT MF_E_ASF_TOO_MANY_PAYLOADS = -1072874849;
		public const HRESULT MF_E_ASF_UNSUPPORTED_STREAM_TYPE = -1072874848;
		public const HRESULT MF_E_ASF_DROPPED_PACKET = -1072874847;
		public const HRESULT MF_E_NO_EVENTS_AVAILABLE = -1072873856;
		public const HRESULT MF_E_INVALID_STATE_TRANSITION = -1072873854;
		public const HRESULT MF_E_END_OF_STREAM = -1072873852;
		public const HRESULT MF_E_SHUTDOWN = -1072873851;
		public const HRESULT MF_E_MP3_NOTFOUND = -1072873850;
		public const HRESULT MF_E_MP3_OUTOFDATA = -1072873849;
		public const HRESULT MF_E_MP3_NOTMP3 = -1072873848;
		public const HRESULT MF_E_MP3_NOTSUPPORTED = -1072873847;
		public const HRESULT MF_E_NO_DURATION = -1072873846;
		public const HRESULT MF_E_INVALID_FORMAT = -1072873844;
		public const HRESULT MF_E_PROPERTY_NOT_FOUND = -1072873843;
		public const HRESULT MF_E_PROPERTY_READ_ONLY = -1072873842;
		public const HRESULT MF_E_PROPERTY_NOT_ALLOWED = -1072873841;
		public const HRESULT MF_E_MEDIA_SOURCE_NOT_STARTED = -1072873839;
		public const HRESULT MF_E_UNSUPPORTED_FORMAT = -1072873832;
		public const HRESULT MF_E_MP3_BAD_CRC = -1072873831;
		public const HRESULT MF_E_NOT_PROTECTED = -1072873830;
		public const HRESULT MF_E_MEDIA_SOURCE_WRONGSTATE = -1072873829;
		public const HRESULT MF_E_MEDIA_SOURCE_NO_STREAMS_SELECTED = -1072873828;
		public const HRESULT MF_E_CANNOT_FIND_KEYFRAME_SAMPLE = -1072873827;
		public const HRESULT MF_E_UNSUPPORTED_CHARACTERISTICS = -1072873826;
		public const HRESULT MF_E_NO_AUDIO_RECORDING_DEVICE = -1072873825;
		public const HRESULT MF_E_AUDIO_RECORDING_DEVICE_IN_USE = -1072873824;
		public const HRESULT MF_E_AUDIO_RECORDING_DEVICE_INVALIDATED = -1072873823;
		public const HRESULT MF_E_VIDEO_RECORDING_DEVICE_INVALIDATED = -1072873822;
		public const HRESULT MF_E_VIDEO_RECORDING_DEVICE_PREEMPTED = -1072873821;
		public const HRESULT MF_E_NETWORK_RESOURCE_FAILURE = -1072872856;
		public const HRESULT MF_E_NET_WRITE = -1072872855;
		public const HRESULT MF_E_NET_READ = -1072872854;
		public const HRESULT MF_E_NET_REQUIRE_NETWORK = -1072872853;
		public const HRESULT MF_E_NET_REQUIRE_ASYNC = -1072872852;
		public const HRESULT MF_E_NET_BWLEVEL_NOT_SUPPORTED = -1072872851;
		public const HRESULT MF_E_NET_STREAMGROUPS_NOT_SUPPORTED = -1072872850;
		public const HRESULT MF_E_NET_MANUALSS_NOT_SUPPORTED = -1072872849;
		public const HRESULT MF_E_NET_INVALID_PRESENTATION_DESCRIPTOR = -1072872848;
		public const HRESULT MF_E_NET_CACHESTREAM_NOT_FOUND = -1072872847;
		public const HRESULT MF_I_MANUAL_PROXY = 1074610802;
		public const HRESULT MF_E_NET_REQUIRE_INPUT = -1072872844;
		public const HRESULT MF_E_NET_REDIRECT = -1072872843;
		public const HRESULT MF_E_NET_REDIRECT_TO_PROXY = -1072872842;
		public const HRESULT MF_E_NET_TOO_MANY_REDIRECTS = -1072872841;
		public const HRESULT MF_E_NET_TIMEOUT = -1072872840;
		public const HRESULT MF_E_NET_CLIENT_CLOSE = -1072872839;
		public const HRESULT MF_E_NET_BAD_CONTROL_DATA = -1072872838;
		public const HRESULT MF_E_NET_INCOMPATIBLE_SERVER = -1072872837;
		public const HRESULT MF_E_NET_UNSAFE_URL = -1072872836;
		public const HRESULT MF_E_NET_CACHE_NO_DATA = -1072872835;
		public const HRESULT MF_E_NET_EOL = -1072872834;
		public const HRESULT MF_E_NET_BAD_REQUEST = -1072872833;
		public const HRESULT MF_E_NET_INTERNAL_SERVER_ERROR = -1072872832;
		public const HRESULT MF_E_NET_SESSION_NOT_FOUND = -1072872831;
		public const HRESULT MF_E_NET_NOCONNECTION = -1072872830;
		public const HRESULT MF_E_NET_CONNECTION_FAILURE = -1072872829;
		public const HRESULT MF_E_NET_INCOMPATIBLE_PUSHSERVER = -1072872828;
		public const HRESULT MF_E_NET_SERVER_ACCESSDENIED = -1072872827;
		public const HRESULT MF_E_NET_PROXY_ACCESSDENIED = -1072872826;
		public const HRESULT MF_E_NET_CANNOTCONNECT = -1072872825;
		public const HRESULT MF_E_NET_INVALID_PUSH_TEMPLATE = -1072872824;
		public const HRESULT MF_E_NET_INVALID_PUSH_PUBLISHING_POINT = -1072872823;
		public const HRESULT MF_E_NET_BUSY = -1072872822;
		public const HRESULT MF_E_NET_RESOURCE_GONE = -1072872821;
		public const HRESULT MF_E_NET_ERROR_FROM_PROXY = -1072872820;
		public const HRESULT MF_E_NET_PROXY_TIMEOUT = -1072872819;
		public const HRESULT MF_E_NET_SERVER_UNAVAILABLE = -1072872818;
		public const HRESULT MF_E_NET_TOO_MUCH_DATA = -1072872817;
		public const HRESULT MF_E_NET_SESSION_INVALID = -1072872816;
		public const HRESULT MF_E_OFFLINE_MODE = -1072872815;
		public const HRESULT MF_E_NET_UDP_BLOCKED = -1072872814;
		public const HRESULT MF_E_NET_UNSUPPORTED_CONFIGURATION = -1072872813;
		public const HRESULT MF_E_NET_PROTOCOL_DISABLED = -1072872812;
		public const HRESULT MF_E_NET_COMPANION_DRIVER_DISCONNECT = -1072872811;
		public const HRESULT MF_E_ALREADY_INITIALIZED = -1072871856;
		public const HRESULT MF_E_BANDWIDTH_OVERRUN = -1072871855;
		public const HRESULT MF_E_LATE_SAMPLE = -1072871854;
		public const HRESULT MF_E_FLUSH_NEEDED = -1072871853;
		public const HRESULT MF_E_INVALID_PROFILE = -1072871852;
		public const HRESULT MF_E_INDEX_NOT_COMMITTED = -1072871851;
		public const HRESULT MF_E_NO_INDEX = -1072871850;
		public const HRESULT MF_E_CANNOT_INDEX_IN_PLACE = -1072871849;
		public const HRESULT MF_E_MISSING_ASF_LEAKYBUCKET = -1072871848;
		public const HRESULT MF_E_INVALID_ASF_STREAMID = -1072871847;
		public const HRESULT MF_E_STREAMSINK_REMOVED = -1072870856;
		public const HRESULT MF_E_STREAMSINKS_OUT_OF_SYNC = -1072870854;
		public const HRESULT MF_E_STREAMSINKS_FIXED = -1072870853;
		public const HRESULT MF_E_STREAMSINK_EXISTS = -1072870852;
		public const HRESULT MF_E_SAMPLEALLOCATOR_CANCELED = -1072870851;
		public const HRESULT MF_E_SAMPLEALLOCATOR_EMPTY = -1072870850;
		public const HRESULT MF_E_SINK_ALREADYSTOPPED = -1072870849;
		public const HRESULT MF_E_ASF_FILESINK_BITRATE_UNKNOWN = -1072870848;
		public const HRESULT MF_E_SINK_NO_STREAMS = -1072870847;
		public const HRESULT MF_S_SINK_NOT_FINALIZED = 870978;
		public const HRESULT MF_E_METADATA_TOO_LONG = -1072870845;
		public const HRESULT MF_E_SINK_NO_SAMPLES_PROCESSED = -1072870844;
		public const HRESULT MF_E_SINK_HEADERS_NOT_FOUND = -1072870843;
		public const HRESULT MF_E_VIDEO_REN_NO_PROCAMP_HW = -1072869856;
		public const HRESULT MF_E_VIDEO_REN_NO_DEINTERLACE_HW = -1072869855;
		public const HRESULT MF_E_VIDEO_REN_COPYPROT_FAILED = -1072869854;
		public const HRESULT MF_E_VIDEO_REN_SURFACE_NOT_SHARED = -1072869853;
		public const HRESULT MF_E_VIDEO_DEVICE_LOCKED = -1072869852;
		public const HRESULT MF_E_NEW_VIDEO_DEVICE = -1072869851;
		public const HRESULT MF_E_NO_VIDEO_SAMPLE_AVAILABLE = -1072869850;
		public const HRESULT MF_E_NO_AUDIO_PLAYBACK_DEVICE = -1072869756;
		public const HRESULT MF_E_AUDIO_PLAYBACK_DEVICE_IN_USE = -1072869755;
		public const HRESULT MF_E_AUDIO_PLAYBACK_DEVICE_INVALIDATED = -1072869754;
		public const HRESULT MF_E_AUDIO_SERVICE_NOT_RUNNING = -1072869753;
		public const HRESULT MF_E_AUDIO_BUFFER_SIZE_ERROR = -1072869752;
		public const HRESULT MF_E_AUDIO_CLIENT_WRAPPER_SPOOF_ERROR = -1072869751;
		public const HRESULT MF_E_TOPO_INVALID_OPTIONAL_NODE = -1072868850;
		public const HRESULT MF_E_TOPO_CANNOT_FIND_DECRYPTOR = -1072868847;
		public const HRESULT MF_E_TOPO_CODEC_NOT_FOUND = -1072868846;
		public const HRESULT MF_E_TOPO_CANNOT_CONNECT = -1072868845;
		public const HRESULT MF_E_TOPO_UNSUPPORTED = -1072868844;
		public const HRESULT MF_E_TOPO_INVALID_TIME_ATTRIBUTES = -1072868843;
		public const HRESULT MF_E_TOPO_LOOPS_IN_TOPOLOGY = -1072868842;
		public const HRESULT MF_E_TOPO_MISSING_PRESENTATION_DESCRIPTOR = -1072868841;
		public const HRESULT MF_E_TOPO_MISSING_STREAM_DESCRIPTOR = -1072868840;
		public const HRESULT MF_E_TOPO_STREAM_DESCRIPTOR_NOT_SELECTED = -1072868839;
		public const HRESULT MF_E_TOPO_MISSING_SOURCE = -1072868838;
		public const HRESULT MF_E_TOPO_SINK_ACTIVATES_UNSUPPORTED = -1072868837;
		public const HRESULT MF_E_SEQUENCER_UNKNOWN_SEGMENT_ID = -1072864852;
		public const HRESULT MF_S_SEQUENCER_CONTEXT_CANCELED = 876973;
		public const HRESULT MF_E_NO_SOURCE_IN_CACHE = -1072864850;
		public const HRESULT MF_S_SEQUENCER_SEGMENT_AT_END_OF_STREAM = 876975;
		public const HRESULT MF_E_TRANSFORM_TYPE_NOT_SET = -1072861856;
		public const HRESULT MF_E_TRANSFORM_STREAM_CHANGE = -1072861855;
		public const HRESULT MF_E_TRANSFORM_INPUT_REMAINING = -1072861854;
		public const HRESULT MF_E_TRANSFORM_PROFILE_MISSING = -1072861853;
		public const HRESULT MF_E_TRANSFORM_PROFILE_INVALID_OR_CORRUPT = -1072861852;
		public const HRESULT MF_E_TRANSFORM_PROFILE_TRUNCATED = -1072861851;
		public const HRESULT MF_E_TRANSFORM_PROPERTY_PID_NOT_RECOGNIZED = -1072861850;
		public const HRESULT MF_E_TRANSFORM_PROPERTY_VARIANT_TYPE_WRONG = -1072861849;
		public const HRESULT MF_E_TRANSFORM_PROPERTY_NOT_WRITEABLE = -1072861848;
		public const HRESULT MF_E_TRANSFORM_PROPERTY_ARRAY_VALUE_WRONG_NUM_DIM = -1072861847;
		public const HRESULT MF_E_TRANSFORM_PROPERTY_VALUE_SIZE_WRONG = -1072861846;
		public const HRESULT MF_E_TRANSFORM_PROPERTY_VALUE_OUT_OF_RANGE = -1072861845;
		public const HRESULT MF_E_TRANSFORM_PROPERTY_VALUE_INCOMPATIBLE = -1072861844;
		public const HRESULT MF_E_TRANSFORM_NOT_POSSIBLE_FOR_CURRENT_OUTPUT_MEDIATYPE = -1072861843;
		public const HRESULT MF_E_TRANSFORM_NOT_POSSIBLE_FOR_CURRENT_INPUT_MEDIATYPE = -1072861842;
		public const HRESULT MF_E_TRANSFORM_NOT_POSSIBLE_FOR_CURRENT_MEDIATYPE_COMBINATION = -1072861841;
		public const HRESULT MF_E_TRANSFORM_CONFLICTS_WITH_OTHER_CURRENTLY_ENABLED_FEATURES = -1072861840;
		public const HRESULT MF_E_TRANSFORM_NEED_MORE_INPUT = -1072861838;
		public const HRESULT MF_E_TRANSFORM_NOT_POSSIBLE_FOR_CURRENT_SPKR_CONFIG = -1072861837;
		public const HRESULT MF_E_TRANSFORM_CANNOT_CHANGE_MEDIATYPE_WHILE_PROCESSING = -1072861836;
		public const HRESULT MF_S_TRANSFORM_DO_NOT_PROPAGATE_EVENT = 879989;
		public const HRESULT MF_E_UNSUPPORTED_D3D_TYPE = -1072861834;
		public const HRESULT MF_E_TRANSFORM_ASYNC_LOCKED = -1072861833;
		public const HRESULT MF_E_TRANSFORM_CANNOT_INITIALIZE_ACM_DRIVER = -1072861832;
		public const HRESULT MF_E_TRANSFORM_STREAM_INVALID_RESOLUTION = -1072861831;
		public const HRESULT MF_E_TRANSFORM_ASYNC_MFT_NOT_SUPPORTED = -1072861830;
		public const HRESULT MF_E_TRANSFORM_EXATTRIBUTE_NOT_SUPPORTED = -1072861828;
		public const HRESULT MF_E_LICENSE_INCORRECT_RIGHTS = -1072860856;
		public const HRESULT MF_E_LICENSE_OUTOFDATE = -1072860855;
		public const HRESULT MF_E_LICENSE_REQUIRED = -1072860854;
		public const HRESULT MF_E_DRM_HARDWARE_INCONSISTENT = -1072860853;
		public const HRESULT MF_E_NO_CONTENT_PROTECTION_MANAGER = -1072860852;
		public const HRESULT MF_E_LICENSE_RESTORE_NO_RIGHTS = -1072860851;
		public const HRESULT MF_E_BACKUP_RESTRICTED_LICENSE = -1072860850;
		public const HRESULT MF_E_LICENSE_RESTORE_NEEDS_INDIVIDUALIZATION = -1072860849;
		public const HRESULT MF_S_PROTECTION_NOT_REQUIRED = 880976;
		public const HRESULT MF_E_COMPONENT_REVOKED = -1072860847;
		public const HRESULT MF_E_TRUST_DISABLED = -1072860846;
		public const HRESULT MF_E_WMDRMOTA_NO_ACTION = -1072860845;
		public const HRESULT MF_E_WMDRMOTA_ACTION_ALREADY_SET = -1072860844;
		public const HRESULT MF_E_WMDRMOTA_DRM_HEADER_NOT_AVAILABLE = -1072860843;
		public const HRESULT MF_E_WMDRMOTA_DRM_ENCRYPTION_SCHEME_NOT_SUPPORTED = -1072860842;
		public const HRESULT MF_E_WMDRMOTA_ACTION_MISMATCH = -1072860841;
		public const HRESULT MF_E_WMDRMOTA_INVALID_POLICY = -1072860840;
		public const HRESULT MF_E_POLICY_UNSUPPORTED = -1072860839;
		public const HRESULT MF_E_OPL_NOT_SUPPORTED = -1072860838;
		public const HRESULT MF_E_TOPOLOGY_VERIFICATION_FAILED = -1072860837;
		public const HRESULT MF_E_SIGNATURE_VERIFICATION_FAILED = -1072860836;
		public const HRESULT MF_E_DEBUGGING_NOT_ALLOWED = -1072860835;
		public const HRESULT MF_E_CODE_EXPIRED = -1072860834;
		public const HRESULT MF_E_GRL_VERSION_TOO_LOW = -1072860833;
		public const HRESULT MF_E_GRL_RENEWAL_NOT_FOUND = -1072860832;
		public const HRESULT MF_E_GRL_EXTENSIBLE_ENTRY_NOT_FOUND = -1072860831;
		public const HRESULT MF_E_KERNEL_UNTRUSTED = -1072860830;
		public const HRESULT MF_E_PEAUTH_UNTRUSTED = -1072860829;
		public const HRESULT MF_E_NON_PE_PROCESS = -1072860827;
		public const HRESULT MF_E_REBOOT_REQUIRED = -1072860825;
		public const HRESULT MF_S_WAIT_FOR_POLICY_SET = 881000;
		public const HRESULT MF_S_VIDEO_DISABLED_WITH_UNKNOWN_SOFTWARE_OUTPUT = 881001;
		public const HRESULT MF_E_GRL_INVALID_FORMAT = -1072860822;
		public const HRESULT MF_E_GRL_UNRECOGNIZED_FORMAT = -1072860821;
		public const HRESULT MF_E_ALL_PROCESS_RESTART_REQUIRED = -1072860820;
		public const HRESULT MF_E_PROCESS_RESTART_REQUIRED = -1072860819;
		public const HRESULT MF_E_USERMODE_UNTRUSTED = -1072860818;
		public const HRESULT MF_E_PEAUTH_SESSION_NOT_STARTED = -1072860817;
		public const HRESULT MF_E_PEAUTH_PUBLICKEY_REVOKED = -1072860815;
		public const HRESULT MF_E_GRL_ABSENT = -1072860814;
		public const HRESULT MF_S_PE_TRUSTED = 881011;
		public const HRESULT MF_E_PE_UNTRUSTED = -1072860812;
		public const HRESULT MF_E_PEAUTH_NOT_STARTED = -1072860811;
		public const HRESULT MF_E_INCOMPATIBLE_SAMPLE_PROTECTION = -1072860810;
		public const HRESULT MF_E_PE_SESSIONS_MAXED = -1072860809;
		public const HRESULT MF_E_HIGH_SECURITY_LEVEL_CONTENT_NOT_ALLOWED = -1072860808;
		public const HRESULT MF_E_TEST_SIGNED_COMPONENTS_NOT_ALLOWED = -1072860807;
		public const HRESULT MF_E_ITA_UNSUPPORTED_ACTION = -1072860806;
		public const HRESULT MF_E_ITA_ERROR_PARSING_SAP_PARAMETERS = -1072860805;
		public const HRESULT MF_E_POLICY_MGR_ACTION_OUTOFBOUNDS = -1072860804;
		public const HRESULT MF_E_BAD_OPL_STRUCTURE_FORMAT = -1072860803;
		public const HRESULT MF_E_ITA_UNRECOGNIZED_ANALOG_VIDEO_PROTECTION_GUID = -1072860802;
		public const HRESULT MF_E_NO_PMP_HOST = -1072860801;
		public const HRESULT MF_E_ITA_OPL_DATA_NOT_INITIALIZED = -1072860800;
		public const HRESULT MF_E_ITA_UNRECOGNIZED_ANALOG_VIDEO_OUTPUT = -1072860799;
		public const HRESULT MF_E_ITA_UNRECOGNIZED_DIGITAL_VIDEO_OUTPUT = -1072860798;
		public const HRESULT MF_E_RESOLUTION_REQUIRES_PMP_CREATION_CALLBACK = -1072860797;
		public const HRESULT MF_E_INVALID_AKE_CHANNEL_PARAMETERS = -1072860796;
		public const HRESULT MF_E_CONTENT_PROTECTION_SYSTEM_NOT_ENABLED = -1072860795;
		public const HRESULT MF_E_UNSUPPORTED_CONTENT_PROTECTION_SYSTEM = -1072860794;
		public const HRESULT MF_E_DRM_MIGRATION_NOT_SUPPORTED = -1072860793;
		public const HRESULT MF_E_HDCP_AUTHENTICATION_FAILURE = -1072860792;
		public const HRESULT MF_E_HDCP_LINK_FAILURE = -1072860791;
		public const HRESULT MF_E_CLOCK_INVALID_CONTINUITY_KEY = -1072849856;
		public const HRESULT MF_E_CLOCK_NO_TIME_SOURCE = -1072849855;
		public const HRESULT MF_E_CLOCK_STATE_ALREADY_SET = -1072849854;
		public const HRESULT MF_E_CLOCK_NOT_SIMPLE = -1072849853;
		public const HRESULT MF_S_CLOCK_STOPPED = 891972;
		public const HRESULT MF_E_CLOCK_AUDIO_DEVICE_POSITION_UNEXPECTED = 891973;
		public const HRESULT MF_E_CLOCK_AUDIO_RENDER_POSITION_UNEXPECTED = 891974;
		public const HRESULT MF_E_CLOCK_AUDIO_RENDER_TIME_UNEXPECTED = 891975;
		public const HRESULT MF_E_NO_MORE_DROP_MODES = -1072848856;
		public const HRESULT MF_E_NO_MORE_QUALITY_LEVELS = -1072848855;
		public const HRESULT MF_E_DROPTIME_NOT_SUPPORTED = -1072848854;
		public const HRESULT MF_E_QUALITYKNOB_WAIT_LONGER = -1072848853;
		public const HRESULT MF_E_QM_INVALIDSTATE = -1072848852;
		public const HRESULT MF_E_TRANSCODE_NO_CONTAINERTYPE = -1072847856;
		public const HRESULT MF_E_TRANSCODE_PROFILE_NO_MATCHING_STREAMS = -1072847855;
		public const HRESULT MF_E_TRANSCODE_NO_MATCHING_ENCODER = -1072847854;
		public const HRESULT MF_E_TRANSCODE_INVALID_PROFILE = -1072847853;
		public const HRESULT MF_E_ALLOCATOR_NOT_INITIALIZED = -1072846856;
		public const HRESULT MF_E_ALLOCATOR_NOT_COMMITED = -1072846855;
		public const HRESULT MF_E_ALLOCATOR_ALREADY_COMMITED = -1072846854;
		public const HRESULT MF_E_STREAM_ERROR = -1072846853;
		public const HRESULT MF_E_INVALID_STREAM_STATE = -1072846852;
		public const HRESULT MF_E_HW_STREAM_NOT_CONNECTED = -1072846851;
		public const HRESULT MF_E_NO_CAPTURE_DEVICES_AVAILABLE = -1072845856;
		public const HRESULT MF_E_CAPTURE_SINK_OUTPUT_NOT_SET = -1072845855;
		public const HRESULT MF_E_CAPTURE_SINK_MIRROR_ERROR = -1072845854;
		public const HRESULT MF_E_CAPTURE_SINK_ROTATE_ERROR = -1072845853;
		public const HRESULT MF_E_CAPTURE_ENGINE_INVALID_OP = -1072845852;
		public const HRESULT MF_E_CAPTURE_ENGINE_ALL_EFFECTS_REMOVED = -1072845851;
		public const HRESULT MF_E_CAPTURE_SOURCE_NO_INDEPENDENT_PHOTO_STREAM_PRESENT = -1072845850;
		public const HRESULT MF_E_CAPTURE_SOURCE_NO_VIDEO_STREAM_PRESENT = -1072845849;
		public const HRESULT MF_E_CAPTURE_SOURCE_NO_AUDIO_STREAM_PRESENT = -1072845848;
		public const HRESULT MF_E_CAPTURE_SOURCE_DEVICE_EXTENDEDPROP_OP_IN_PROGRESS = -1072845847;
		public const HRESULT MF_E_CAPTURE_PROPERTY_SET_DURING_PHOTO = -1072845846;
		public const HRESULT MF_E_CAPTURE_NO_SAMPLES_IN_QUEUE = -1072845845;
		public const HRESULT MF_E_HW_ACCELERATED_THUMBNAIL_NOT_SUPPORTED = -1072845844;
		public const HRESULT MF_E_UNSUPPORTED_CAPTURE_DEVICE_PRESENT = -1072845843;
		public const HRESULT MF_E_TIMELINECONTROLLER_UNSUPPORTED_SOURCE_TYPE = -1072844856;
		public const HRESULT MF_E_TIMELINECONTROLLER_NOT_ALLOWED = -1072844855;
		public const HRESULT MF_E_TIMELINECONTROLLER_CANNOT_ATTACH = -1072844854;
		public const HRESULT MF_E_MEDIA_EXTENSION_APPSERVICE_CONNECTION_FAILED = -1072843856;
		public const HRESULT MF_E_MEDIA_EXTENSION_APPSERVICE_REQUEST_FAILED = -1072843855;
		public const HRESULT MF_E_MEDIA_EXTENSION_PACKAGE_INTEGRITY_CHECK_FAILED = -1072843854;
		public const HRESULT MF_E_MEDIA_EXTENSION_PACKAGE_LICENSE_INVALID = -1072843853;
		public const uint32 MF_INDEX_SIZE_ERR = 2154823681;
		public const uint32 MF_NOT_FOUND_ERR = 2154823688;
		public const uint32 MF_NOT_SUPPORTED_ERR = 2154823689;
		public const uint32 MF_INVALID_STATE_ERR = 2154823691;
		public const uint32 MF_SYNTAX_ERR = 2154823692;
		public const uint32 MF_INVALID_ACCESS_ERR = 2154823695;
		public const uint32 MF_QUOTA_EXCEEDED_ERR = 2154823702;
		public const uint32 MF_PARSE_ERR = 2154823761;
		public const uint32 MF_TYPE_ERR = 2154840069;
		public const PROPERTYKEY DEVPKEY_DeviceInterface_IsVirtualCamera = .(.(0x6edc630d, 0xc2e3, 0x43b7, 0xb2, 0xd1, 0x20, 0x52, 0x5a, 0x1a, 0xf1, 0x20), 3);
		public const String g_wszSpeechFormatCaps = "SpeechFormatCap";
		public const String g_wszWMCPCodecName = "_CODECNAME";
		public const String g_wszWMCPSupportedVBRModes = "_SUPPORTEDVBRMODES";
		public const String g_wszWMCPAudioVBRSupported = "_VBRENABLED";
		public const String g_wszWMCPAudioVBRQuality = "_VBRQUALITY";
		public const String g_wszWMCPMaxPasses = "_PASSESRECOMMENDED";
		public const String g_wszWMCPDefaultCrisp = "_DEFAULTCRISP";
		public const int32 COPP_ProtectionType_Unknown = -2147483648;
		public const int32 COPP_ProtectionType_None = 0;
		public const int32 COPP_ProtectionType_HDCP = 1;
		public const int32 COPP_ProtectionType_ACP = 2;
		public const int32 COPP_ProtectionType_CGMSA = 4;
		public const int32 COPP_ProtectionType_Mask = -2147483641;
		public const int32 COPP_ProtectionType_Reserved = 2147483640;
		public const Guid MF_BYTESTREAM_ORIGIN_NAME = .(0xfc358288, 0x3cb6, 0x460c, 0xa4, 0x24, 0xb6, 0x68, 0x12, 0x60, 0x37, 0x5a);
		public const Guid MF_BYTESTREAM_CONTENT_TYPE = .(0xfc358289, 0x3cb6, 0x460c, 0xa4, 0x24, 0xb6, 0x68, 0x12, 0x60, 0x37, 0x5a);
		public const Guid MF_BYTESTREAM_DURATION = .(0xfc35828a, 0x3cb6, 0x460c, 0xa4, 0x24, 0xb6, 0x68, 0x12, 0x60, 0x37, 0x5a);
		public const Guid MF_BYTESTREAM_LAST_MODIFIED_TIME = .(0xfc35828b, 0x3cb6, 0x460c, 0xa4, 0x24, 0xb6, 0x68, 0x12, 0x60, 0x37, 0x5a);
		public const Guid MF_BYTESTREAM_IFO_FILE_URI = .(0xfc35828c, 0x3cb6, 0x460c, 0xa4, 0x24, 0xb6, 0x68, 0x12, 0x60, 0x37, 0x5a);
		public const Guid MF_BYTESTREAM_DLNA_PROFILE_ID = .(0xfc35828d, 0x3cb6, 0x460c, 0xa4, 0x24, 0xb6, 0x68, 0x12, 0x60, 0x37, 0x5a);
		public const Guid MF_BYTESTREAM_EFFECTIVE_URL = .(0x9afa0209, 0x89d1, 0x42af, 0x84, 0x56, 0x1d, 0xe6, 0xb5, 0x62, 0xd6, 0x91);
		public const Guid MF_BYTESTREAM_TRANSCODED = .(0xb6c5c282, 0x4dc9, 0x4db9, 0xab, 0x48, 0xcf, 0x3b, 0x6d, 0x8b, 0xc5, 0xe0);
		public const Guid CLSID_MFByteStreamProxyClassFactory = .(0x770e8e77, 0x4916, 0x441c, 0xa9, 0xa7, 0xb3, 0x42, 0xd0, 0xee, 0xbc, 0x71);
		public const Guid MEDeviceStreamCreated = .(0x0252a1cf, 0x3540, 0x43b4, 0x91, 0x64, 0xd7, 0x2e, 0xb4, 0x05, 0xfa, 0x40);
		public const Guid MF_SA_D3D_AWARE = .(0xeaa35c29, 0x775e, 0x488e, 0x9b, 0x61, 0xb3, 0x28, 0x3e, 0x49, 0x58, 0x3b);
		public const Guid MF_SA_REQUIRED_SAMPLE_COUNT = .(0x18802c61, 0x324b, 0x4952, 0xab, 0xd0, 0x17, 0x6f, 0xf5, 0xc6, 0x96, 0xff);
		public const Guid MFT_END_STREAMING_AWARE = .(0x70fbc845, 0xb07e, 0x4089, 0xb0, 0x64, 0x39, 0x9d, 0xc6, 0x11, 0x0f, 0x29);
		public const Guid MF_SA_AUDIO_ENDPOINT_AWARE = .(0xc0381701, 0x805c, 0x42b2, 0xac, 0x8d, 0xe2, 0xb4, 0xbf, 0x21, 0xf4, 0xf8);
		public const Guid MFT_AUDIO_DECODER_AUDIO_ENDPOINT_ID = .(0xc7ccdd6e, 0x5398, 0x4695, 0x8b, 0xe7, 0x51, 0xb3, 0xe9, 0x51, 0x11, 0xbd);
		public const Guid MFT_AUDIO_DECODER_SPATIAL_METADATA_CLIENT = .(0x05987df4, 0x1270, 0x4999, 0x92, 0x5f, 0x8e, 0x93, 0x9a, 0x7c, 0x0a, 0xf7);
		public const Guid MF_DMFT_FRAME_BUFFER_INFO = .(0x396ce1c9, 0x67a9, 0x454c, 0x87, 0x97, 0x95, 0xa4, 0x57, 0x99, 0xd8, 0x04);
		public const Guid MF_SA_REQUIRED_SAMPLE_COUNT_PROGRESSIVE = .(0xb172d58e, 0xfa77, 0x4e48, 0x8d, 0x2a, 0x1d, 0xf2, 0xd8, 0x50, 0xea, 0xc2);
		public const Guid MF_SA_MINIMUM_OUTPUT_SAMPLE_COUNT = .(0x851745d5, 0xc3d6, 0x476d, 0x95, 0x27, 0x49, 0x8e, 0xf2, 0xd1, 0x0d, 0x18);
		public const Guid MF_SA_MINIMUM_OUTPUT_SAMPLE_COUNT_PROGRESSIVE = .(0x0f5523a5, 0x1cb2, 0x47c5, 0xa5, 0x50, 0x2e, 0xeb, 0x84, 0xb4, 0xd1, 0x4a);
		public const Guid MFT_SUPPORT_3DVIDEO = .(0x093f81b1, 0x4f2e, 0x4631, 0x81, 0x68, 0x79, 0x34, 0x03, 0x2a, 0x01, 0xd3);
		public const Guid MF_ENABLE_3DVIDEO_OUTPUT = .(0xbdad7bca, 0x0e5f, 0x4b10, 0xab, 0x16, 0x26, 0xde, 0x38, 0x1b, 0x62, 0x93);
		public const Guid MF_SA_D3D11_BINDFLAGS = .(0xeacf97ad, 0x065c, 0x4408, 0xbe, 0xe3, 0xfd, 0xcb, 0xfd, 0x12, 0x8b, 0xe2);
		public const Guid MF_SA_D3D11_USAGE = .(0xe85fe442, 0x2ca3, 0x486e, 0xa9, 0xc7, 0x10, 0x9d, 0xda, 0x60, 0x98, 0x80);
		public const Guid MF_SA_D3D11_AWARE = .(0x206b4fc8, 0xfcf9, 0x4c51, 0xaf, 0xe3, 0x97, 0x64, 0x36, 0x9e, 0x33, 0xa0);
		public const Guid MF_SA_D3D11_SHARED = .(0x7b8f32c3, 0x6d96, 0x4b89, 0x92, 0x03, 0xdd, 0x38, 0xb6, 0x14, 0x14, 0xf3);
		public const Guid MF_SA_D3D11_SHARED_WITHOUT_MUTEX = .(0x39dbd44d, 0x2e44, 0x4931, 0xa4, 0xc8, 0x35, 0x2d, 0x3d, 0xc4, 0x21, 0x15);
		public const Guid MF_SA_D3D11_ALLOW_DYNAMIC_YUV_TEXTURE = .(0xce06d49f, 0x0613, 0x4b9d, 0x86, 0xa6, 0xd8, 0xc4, 0xf9, 0xc1, 0x00, 0x75);
		public const Guid MF_SA_D3D11_HW_PROTECTED = .(0x3a8ba9d9, 0x92ca, 0x4307, 0xa3, 0x91, 0x69, 0x99, 0xdb, 0xf3, 0xb6, 0xce);
		public const Guid MF_SA_BUFFERS_PER_SAMPLE = .(0x873c5171, 0x1e3d, 0x4e25, 0x98, 0x8d, 0xb4, 0x33, 0xce, 0x04, 0x19, 0x83);
		public const Guid MF_SA_D3D11_ALLOCATE_DISPLAYABLE_RESOURCES = .(0xeeface6d, 0x2ea9, 0x4adf, 0xbb, 0xdf, 0x7b, 0xbc, 0x48, 0x2a, 0x1b, 0x6d);
		public const Guid MFT_DECODER_EXPOSE_OUTPUT_TYPES_IN_NATIVE_ORDER = .(0xef80833f, 0xf8fa, 0x44d9, 0x80, 0xd8, 0x41, 0xed, 0x62, 0x32, 0x67, 0x0c);
		public const Guid MFT_DECODER_QUALITY_MANAGEMENT_CUSTOM_CONTROL = .(0xa24e30d7, 0xde25, 0x4558, 0xbb, 0xfb, 0x71, 0x07, 0x0a, 0x2d, 0x33, 0x2e);
		public const Guid MFT_DECODER_QUALITY_MANAGEMENT_RECOVERY_WITHOUT_ARTIFACTS = .(0xd8980deb, 0x0a48, 0x425f, 0x86, 0x23, 0x61, 0x1d, 0xb4, 0x1d, 0x38, 0x10);
		public const Guid MFT_REMUX_MARK_I_PICTURE_AS_CLEAN_POINT = .(0x364e8f85, 0x3f2e, 0x436c, 0xb2, 0xa2, 0x44, 0x40, 0xa0, 0x12, 0xa9, 0xe8);
		public const Guid MFT_DECODER_FINAL_VIDEO_RESOLUTION_HINT = .(0xdc2f8496, 0x15c4, 0x407a, 0xb6, 0xf0, 0x1b, 0x66, 0xab, 0x5f, 0xbf, 0x53);
		public const Guid MFT_ENCODER_SUPPORTS_CONFIG_EVENT = .(0x86a355ae, 0x3a77, 0x4ec4, 0x9f, 0x31, 0x01, 0x14, 0x9a, 0x4e, 0x92, 0xde);
		public const Guid MFT_ENUM_HARDWARE_VENDOR_ID_Attribute = .(0x3aecb0cc, 0x035b, 0x4bcc, 0x81, 0x85, 0x2b, 0x8d, 0x55, 0x1e, 0xf3, 0xaf);
		public const Guid MF_TRANSFORM_ASYNC = .(0xf81a699a, 0x649a, 0x497d, 0x8c, 0x73, 0x29, 0xf8, 0xfe, 0xd6, 0xad, 0x7a);
		public const Guid MF_TRANSFORM_ASYNC_UNLOCK = .(0xe5666d6b, 0x3422, 0x4eb6, 0xa4, 0x21, 0xda, 0x7d, 0xb1, 0xf8, 0xe2, 0x07);
		public const Guid MF_TRANSFORM_FLAGS_Attribute = .(0x9359bb7e, 0x6275, 0x46c4, 0xa0, 0x25, 0x1c, 0x01, 0xe4, 0x5f, 0x1a, 0x86);
		public const Guid MF_TRANSFORM_CATEGORY_Attribute = .(0xceabba49, 0x506d, 0x4757, 0xa6, 0xff, 0x66, 0xc1, 0x84, 0x98, 0x7e, 0x4e);
		public const Guid MFT_TRANSFORM_CLSID_Attribute = .(0x6821c42b, 0x65a4, 0x4e82, 0x99, 0xbc, 0x9a, 0x88, 0x20, 0x5e, 0xcd, 0x0c);
		public const Guid MFT_INPUT_TYPES_Attributes = .(0x4276c9b1, 0x759d, 0x4bf3, 0x9c, 0xd0, 0x0d, 0x72, 0x3d, 0x13, 0x8f, 0x96);
		public const Guid MFT_OUTPUT_TYPES_Attributes = .(0x8eae8cf3, 0xa44f, 0x4306, 0xba, 0x5c, 0xbf, 0x5d, 0xda, 0x24, 0x28, 0x18);
		public const Guid MFT_ENUM_HARDWARE_URL_Attribute = .(0x2fb866ac, 0xb078, 0x4942, 0xab, 0x6c, 0x00, 0x3d, 0x05, 0xcd, 0xa6, 0x74);
		public const Guid MFT_FRIENDLY_NAME_Attribute = .(0x314ffbae, 0x5b41, 0x4c95, 0x9c, 0x19, 0x4e, 0x7d, 0x58, 0x6f, 0xac, 0xe3);
		public const Guid MFT_CONNECTED_STREAM_ATTRIBUTE = .(0x71eeb820, 0xa59f, 0x4de2, 0xbc, 0xec, 0x38, 0xdb, 0x1d, 0xd6, 0x11, 0xa4);
		public const Guid MFT_CONNECTED_TO_HW_STREAM = .(0x34e6e728, 0x06d6, 0x4491, 0xa5, 0x53, 0x47, 0x95, 0x65, 0x0d, 0xb9, 0x12);
		public const Guid MFT_PREFERRED_OUTPUTTYPE_Attribute = .(0x7e700499, 0x396a, 0x49ee, 0xb1, 0xb4, 0xf6, 0x28, 0x02, 0x1e, 0x8c, 0x9d);
		public const Guid MFT_PROCESS_LOCAL_Attribute = .(0x543186e4, 0x4649, 0x4e65, 0xb5, 0x88, 0x4a, 0xa3, 0x52, 0xaf, 0xf3, 0x79);
		public const Guid MFT_PREFERRED_ENCODER_PROFILE = .(0x53004909, 0x1ef5, 0x46d7, 0xa1, 0x8e, 0x5a, 0x75, 0xf8, 0xb5, 0x90, 0x5f);
		public const Guid MFT_HW_TIMESTAMP_WITH_QPC_Attribute = .(0x8d030fb8, 0xcc43, 0x4258, 0xa2, 0x2e, 0x92, 0x10, 0xbe, 0xf8, 0x9b, 0xe4);
		public const Guid MFT_FIELDOFUSE_UNLOCK_Attribute = .(0x8ec2e9fd, 0x9148, 0x410d, 0x83, 0x1e, 0x70, 0x24, 0x39, 0x46, 0x1a, 0x8e);
		public const Guid MFT_CODEC_MERIT_Attribute = .(0x88a7cb15, 0x7b07, 0x4a34, 0x91, 0x28, 0xe6, 0x4c, 0x67, 0x03, 0xc4, 0xd3);
		public const Guid MFT_ENUM_TRANSCODE_ONLY_ATTRIBUTE = .(0x111ea8cd, 0xb62a, 0x4bdb, 0x89, 0xf6, 0x67, 0xff, 0xcd, 0xc2, 0x45, 0x8b);
		public const Guid MFT_AUDIO_DECODER_DEGRADATION_INFO_ATTRIBUTE = .(0x6c3386ad, 0xec20, 0x430d, 0xb2, 0xa5, 0x50, 0x5c, 0x71, 0x78, 0xd9, 0xc4);
		public const Guid MFT_POLICY_SET_AWARE = .(0x5a633b19, 0xcc39, 0x4fa8, 0x8c, 0xa5, 0x59, 0x98, 0x1b, 0x7a, 0x00, 0x18);
		public const Guid MFT_USING_HARDWARE_DRM = .(0x34faa77d, 0xd79e, 0x4957, 0xb8, 0xce, 0x36, 0x2b, 0x26, 0x84, 0x99, 0x6c);
		public const Guid MF_WVC1_PROG_SINGLE_SLICE_CONTENT = .(0x67ec2559, 0x0f2f, 0x4420, 0xa4, 0xdd, 0x2f, 0x8e, 0xe7, 0xa5, 0x73, 0x8b);
		public const Guid MF_PROGRESSIVE_CODING_CONTENT = .(0x8f020eea, 0x1508, 0x471f, 0x9d, 0xa6, 0x50, 0x7d, 0x7c, 0xfa, 0x40, 0xdb);
		public const Guid MF_NALU_LENGTH_SET = .(0xa7911d53, 0x12a4, 0x4965, 0xae, 0x70, 0x6e, 0xad, 0xd6, 0xff, 0x05, 0x51);
		public const Guid MF_NALU_LENGTH_INFORMATION = .(0x19124e7c, 0xad4b, 0x465f, 0xbb, 0x18, 0x20, 0x18, 0x62, 0x87, 0xb6, 0xaf);
		public const Guid MF_USER_DATA_PAYLOAD = .(0xd1d4985d, 0xdc92, 0x457a, 0xb3, 0xa0, 0x65, 0x1a, 0x33, 0xa3, 0x10, 0x47);
		public const Guid MF_MPEG4SINK_SPSPPS_PASSTHROUGH = .(0x5601a134, 0x2005, 0x4ad2, 0xb3, 0x7d, 0x22, 0xa6, 0xc5, 0x54, 0xde, 0xb2);
		public const Guid MF_MPEG4SINK_MOOV_BEFORE_MDAT = .(0xf672e3ac, 0xe1e6, 0x4f10, 0xb5, 0xec, 0x5f, 0x3b, 0x30, 0x82, 0x88, 0x16);
		public const Guid MF_MPEG4SINK_MINIMUM_PROPERTIES_SIZE = .(0xdca1ed52, 0x450e, 0x4a22, 0x8c, 0x62, 0x4e, 0xd4, 0x52, 0xf7, 0xa1, 0x87);
		public const Guid MF_MPEG4SINK_MIN_FRAGMENT_DURATION = .(0xa30b570c, 0x8efd, 0x45e8, 0x94, 0xfe, 0x27, 0xc8, 0x4b, 0x5b, 0xdf, 0xf6);
		public const Guid MF_MPEG4SINK_MAX_CODED_SEQUENCES_PER_FRAGMENT = .(0xfc1b3bd6, 0x692d, 0x4ce5, 0x92, 0x99, 0x73, 0x8a, 0xa5, 0x46, 0x3e, 0x9a);
		public const Guid MF_SESSION_TOPOLOADER = .(0x1e83d482, 0x1f1c, 0x4571, 0x84, 0x05, 0x88, 0xf4, 0xb2, 0x18, 0x1f, 0x71);
		public const Guid MF_SESSION_GLOBAL_TIME = .(0x1e83d482, 0x1f1c, 0x4571, 0x84, 0x05, 0x88, 0xf4, 0xb2, 0x18, 0x1f, 0x72);
		public const Guid MF_SESSION_QUALITY_MANAGER = .(0x1e83d482, 0x1f1c, 0x4571, 0x84, 0x05, 0x88, 0xf4, 0xb2, 0x18, 0x1f, 0x73);
		public const Guid MF_SESSION_CONTENT_PROTECTION_MANAGER = .(0x1e83d482, 0x1f1c, 0x4571, 0x84, 0x05, 0x88, 0xf4, 0xb2, 0x18, 0x1f, 0x74);
		public const Guid MF_SESSION_SERVER_CONTEXT = .(0xafe5b291, 0x50fa, 0x46e8, 0xb9, 0xbe, 0x0c, 0x0c, 0x3c, 0xe4, 0xb3, 0xa5);
		public const Guid MF_SESSION_REMOTE_SOURCE_MODE = .(0xf4033ef4, 0x9bb3, 0x4378, 0x94, 0x1f, 0x85, 0xa0, 0x85, 0x6b, 0xc2, 0x44);
		public const Guid MF_SESSION_APPROX_EVENT_OCCURRENCE_TIME = .(0x190e852f, 0x6238, 0x42d1, 0xb5, 0xaf, 0x69, 0xea, 0x33, 0x8e, 0xf8, 0x50);
		public const Guid MF_PMP_SERVER_CONTEXT = .(0x2f00c910, 0xd2cf, 0x4278, 0x8b, 0x6a, 0xd0, 0x77, 0xfa, 0xc3, 0xa2, 0x5f);
		public const Guid MF_TIME_FORMAT_ENTRY_RELATIVE = .(0x4399f178, 0x46d3, 0x4504, 0xaf, 0xda, 0x20, 0xd3, 0x2e, 0x9b, 0xa3, 0x60);
		public const Guid MF_SOURCE_STREAM_SUPPORTS_HW_CONNECTION = .(0xa38253aa, 0x6314, 0x42fd, 0xa3, 0xce, 0xbb, 0x27, 0xb6, 0x85, 0x99, 0x46);
		public const Guid MF_STREAM_SINK_SUPPORTS_HW_CONNECTION = .(0x9b465cbf, 0x0597, 0x4f9e, 0x9f, 0x3c, 0xb9, 0x7e, 0xee, 0xf9, 0x03, 0x59);
		public const Guid MF_STREAM_SINK_SUPPORTS_ROTATION = .(0xb3e96280, 0xbd05, 0x41a5, 0x97, 0xad, 0x8a, 0x7f, 0xee, 0x24, 0xb9, 0x12);
		public const Guid MF_SINK_VIDEO_PTS = .(0x2162bde7, 0x421e, 0x4b90, 0x9b, 0x33, 0xe5, 0x8f, 0xbf, 0x1d, 0x58, 0xb6);
		public const Guid MF_SINK_VIDEO_NATIVE_WIDTH = .(0xe6d6a707, 0x1505, 0x4747, 0x9b, 0x10, 0x72, 0xd2, 0xd1, 0x58, 0xcb, 0x3a);
		public const Guid MF_SINK_VIDEO_NATIVE_HEIGHT = .(0xf0ca6705, 0x490c, 0x43e8, 0x94, 0x1c, 0xc0, 0xb3, 0x20, 0x6b, 0x9a, 0x65);
		public const Guid MF_SINK_VIDEO_DISPLAY_ASPECT_RATIO_NUMERATOR = .(0xd0f33b22, 0xb78a, 0x4879, 0xb4, 0x55, 0xf0, 0x3e, 0xf3, 0xfa, 0x82, 0xcd);
		public const Guid MF_SINK_VIDEO_DISPLAY_ASPECT_RATIO_DENOMINATOR = .(0x6ea1eb97, 0x1fe0, 0x4f10, 0xa6, 0xe4, 0x1f, 0x4f, 0x66, 0x15, 0x64, 0xe0);
		public const Guid MF_BD_MVC_PLANE_OFFSET_METADATA = .(0x62a654e4, 0xb76c, 0x4901, 0x98, 0x23, 0x2c, 0xb6, 0x15, 0xd4, 0x73, 0x18);
		public const Guid MF_LUMA_KEY_ENABLE = .(0x7369820f, 0x76de, 0x43ca, 0x92, 0x84, 0x47, 0xb8, 0xf3, 0x7e, 0x06, 0x49);
		public const Guid MF_LUMA_KEY_LOWER = .(0x93d7b8d5, 0x0b81, 0x4715, 0xae, 0xa0, 0x87, 0x25, 0x87, 0x16, 0x21, 0xe9);
		public const Guid MF_LUMA_KEY_UPPER = .(0xd09f39bb, 0x4602, 0x4c31, 0xa7, 0x06, 0xa1, 0x21, 0x71, 0xa5, 0x11, 0x0a);
		public const Guid MF_USER_EXTENDED_ATTRIBUTES = .(0xc02abac6, 0xfeb2, 0x4541, 0x92, 0x2f, 0x92, 0x0b, 0x43, 0x70, 0x27, 0x22);
		public const Guid MF_INDEPENDENT_STILL_IMAGE = .(0xea12af41, 0x0710, 0x42c9, 0xa1, 0x27, 0xda, 0xa3, 0xe7, 0x84, 0x83, 0xa5);
		public const Guid MF_XVP_SAMPLE_LOCK_TIMEOUT = .(0xaa4ddb29, 0x5134, 0x4363, 0xac, 0x72, 0x83, 0xec, 0x4b, 0xc1, 0x04, 0x26);
		public const Guid MF_TOPOLOGY_PROJECTSTART = .(0x7ed3f802, 0x86bb, 0x4b3f, 0xb7, 0xe4, 0x7c, 0xb4, 0x3a, 0xfd, 0x4b, 0x80);
		public const Guid MF_TOPOLOGY_PROJECTSTOP = .(0x7ed3f803, 0x86bb, 0x4b3f, 0xb7, 0xe4, 0x7c, 0xb4, 0x3a, 0xfd, 0x4b, 0x80);
		public const Guid MF_TOPOLOGY_NO_MARKIN_MARKOUT = .(0x7ed3f804, 0x86bb, 0x4b3f, 0xb7, 0xe4, 0x7c, 0xb4, 0x3a, 0xfd, 0x4b, 0x80);
		public const Guid MF_TOPOLOGY_DXVA_MODE = .(0x1e8d34f6, 0xf5ab, 0x4e23, 0xbb, 0x88, 0x87, 0x4a, 0xa3, 0xa1, 0xa7, 0x4d);
		public const Guid MF_TOPOLOGY_ENABLE_XVP_FOR_PLAYBACK = .(0x1967731f, 0xcd78, 0x42fc, 0xb0, 0x26, 0x09, 0x92, 0xa5, 0x6e, 0x56, 0x93);
		public const Guid MF_TOPOLOGY_STATIC_PLAYBACK_OPTIMIZATIONS = .(0xb86cac42, 0x41a6, 0x4b79, 0x89, 0x7a, 0x1a, 0xb0, 0xe5, 0x2b, 0x4a, 0x1b);
		public const Guid MF_TOPOLOGY_PLAYBACK_MAX_DIMS = .(0x5715cf19, 0x5768, 0x44aa, 0xad, 0x6e, 0x87, 0x21, 0xf1, 0xb0, 0xf9, 0xbb);
		public const Guid MF_TOPOLOGY_HARDWARE_MODE = .(0xd2d362fd, 0x4e4f, 0x4191, 0xa5, 0x79, 0xc6, 0x18, 0xb6, 0x67, 0x06, 0xaf);
		public const Guid MF_TOPOLOGY_PLAYBACK_FRAMERATE = .(0xc164737a, 0xc2b1, 0x4553, 0x83, 0xbb, 0x5a, 0x52, 0x60, 0x72, 0x44, 0x8f);
		public const Guid MF_TOPOLOGY_DYNAMIC_CHANGE_NOT_ALLOWED = .(0xd529950b, 0xd484, 0x4527, 0xa9, 0xcd, 0xb1, 0x90, 0x95, 0x32, 0xb5, 0xb0);
		public const Guid MF_TOPOLOGY_ENUMERATE_SOURCE_TYPES = .(0x6248c36d, 0x5d0b, 0x4f40, 0xa0, 0xbb, 0xb0, 0xb3, 0x05, 0xf7, 0x76, 0x98);
		public const Guid MF_TOPOLOGY_START_TIME_ON_PRESENTATION_SWITCH = .(0xc8cc113f, 0x7951, 0x4548, 0xaa, 0xd6, 0x9e, 0xd6, 0x20, 0x2e, 0x62, 0xb3);
		public const Guid MF_DISABLE_LOCALLY_REGISTERED_PLUGINS = .(0x66b16da9, 0xadd4, 0x47e0, 0xa1, 0x6b, 0x5a, 0xf1, 0xfb, 0x48, 0x36, 0x34);
		public const Guid MF_LOCAL_PLUGIN_CONTROL_POLICY = .(0xd91b0085, 0xc86d, 0x4f81, 0x88, 0x22, 0x8c, 0x68, 0xe1, 0xd7, 0xfa, 0x04);
		public const Guid MF_TOPONODE_FLUSH = .(0x494bbce8, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_DRAIN = .(0x494bbce9, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_D3DAWARE = .(0x494bbced, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPOLOGY_RESOLUTION_STATUS = .(0x494bbcde, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_ERRORCODE = .(0x494bbcee, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_CONNECT_METHOD = .(0x494bbcf1, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_LOCKED = .(0x494bbcf7, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_WORKQUEUE_ID = .(0x494bbcf8, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_WORKQUEUE_MMCSS_CLASS = .(0x494bbcf9, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_DECRYPTOR = .(0x494bbcfa, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_DISCARDABLE = .(0x494bbcfb, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_ERROR_MAJORTYPE = .(0x494bbcfd, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_ERROR_SUBTYPE = .(0x494bbcfe, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_WORKQUEUE_MMCSS_TASKID = .(0x494bbcff, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_WORKQUEUE_MMCSS_PRIORITY = .(0x5001f840, 0x2816, 0x48f4, 0x93, 0x64, 0xad, 0x1e, 0xf6, 0x61, 0xa1, 0x23);
		public const Guid MF_TOPONODE_WORKQUEUE_ITEM_PRIORITY = .(0xa1ff99be, 0x5e97, 0x4a53, 0xb4, 0x94, 0x56, 0x8c, 0x64, 0x2c, 0x0f, 0xf3);
		public const Guid MF_TOPONODE_MARKIN_HERE = .(0x494bbd00, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_MARKOUT_HERE = .(0x494bbd01, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_DECODER = .(0x494bbd02, 0xb031, 0x4e38, 0x97, 0xc4, 0xd5, 0x42, 0x2d, 0xd6, 0x18, 0xdc);
		public const Guid MF_TOPONODE_MEDIASTART = .(0x835c58ea, 0xe075, 0x4bc7, 0xbc, 0xba, 0x4d, 0xe0, 0x00, 0xdf, 0x9a, 0xe6);
		public const Guid MF_TOPONODE_MEDIASTOP = .(0x835c58eb, 0xe075, 0x4bc7, 0xbc, 0xba, 0x4d, 0xe0, 0x00, 0xdf, 0x9a, 0xe6);
		public const Guid MF_TOPONODE_SOURCE = .(0x835c58ec, 0xe075, 0x4bc7, 0xbc, 0xba, 0x4d, 0xe0, 0x00, 0xdf, 0x9a, 0xe6);
		public const Guid MF_TOPONODE_PRESENTATION_DESCRIPTOR = .(0x835c58ed, 0xe075, 0x4bc7, 0xbc, 0xba, 0x4d, 0xe0, 0x00, 0xdf, 0x9a, 0xe6);
		public const Guid MF_TOPONODE_STREAM_DESCRIPTOR = .(0x835c58ee, 0xe075, 0x4bc7, 0xbc, 0xba, 0x4d, 0xe0, 0x00, 0xdf, 0x9a, 0xe6);
		public const Guid MF_TOPONODE_SEQUENCE_ELEMENTID = .(0x835c58ef, 0xe075, 0x4bc7, 0xbc, 0xba, 0x4d, 0xe0, 0x00, 0xdf, 0x9a, 0xe6);
		public const Guid MF_TOPONODE_TRANSFORM_OBJECTID = .(0x88dcc0c9, 0x293e, 0x4e8b, 0x9a, 0xeb, 0x0a, 0xd6, 0x4c, 0xc0, 0x16, 0xb0);
		public const Guid MF_TOPONODE_STREAMID = .(0x14932f9b, 0x9087, 0x4bb4, 0x84, 0x12, 0x51, 0x67, 0x14, 0x5c, 0xbe, 0x04);
		public const Guid MF_TOPONODE_NOSHUTDOWN_ON_REMOVE = .(0x14932f9c, 0x9087, 0x4bb4, 0x84, 0x12, 0x51, 0x67, 0x14, 0x5c, 0xbe, 0x04);
		public const Guid MF_TOPONODE_RATELESS = .(0x14932f9d, 0x9087, 0x4bb4, 0x84, 0x12, 0x51, 0x67, 0x14, 0x5c, 0xbe, 0x04);
		public const Guid MF_TOPONODE_DISABLE_PREROLL = .(0x14932f9e, 0x9087, 0x4bb4, 0x84, 0x12, 0x51, 0x67, 0x14, 0x5c, 0xbe, 0x04);
		public const Guid MF_TOPONODE_PRIMARYOUTPUT = .(0x6304ef99, 0x16b2, 0x4ebe, 0x9d, 0x67, 0xe4, 0xc5, 0x39, 0xb3, 0xa2, 0x59);
		public const Guid MF_PD_PMPHOST_CONTEXT = .(0x6c990d31, 0xbb8e, 0x477a, 0x85, 0x98, 0x0d, 0x5d, 0x96, 0xfc, 0xd8, 0x8a);
		public const Guid MF_PD_APP_CONTEXT = .(0x6c990d32, 0xbb8e, 0x477a, 0x85, 0x98, 0x0d, 0x5d, 0x96, 0xfc, 0xd8, 0x8a);
		public const Guid MF_PD_DURATION = .(0x6c990d33, 0xbb8e, 0x477a, 0x85, 0x98, 0x0d, 0x5d, 0x96, 0xfc, 0xd8, 0x8a);
		public const Guid MF_PD_TOTAL_FILE_SIZE = .(0x6c990d34, 0xbb8e, 0x477a, 0x85, 0x98, 0x0d, 0x5d, 0x96, 0xfc, 0xd8, 0x8a);
		public const Guid MF_PD_AUDIO_ENCODING_BITRATE = .(0x6c990d35, 0xbb8e, 0x477a, 0x85, 0x98, 0x0d, 0x5d, 0x96, 0xfc, 0xd8, 0x8a);
		public const Guid MF_PD_VIDEO_ENCODING_BITRATE = .(0x6c990d36, 0xbb8e, 0x477a, 0x85, 0x98, 0x0d, 0x5d, 0x96, 0xfc, 0xd8, 0x8a);
		public const Guid MF_PD_MIME_TYPE = .(0x6c990d37, 0xbb8e, 0x477a, 0x85, 0x98, 0x0d, 0x5d, 0x96, 0xfc, 0xd8, 0x8a);
		public const Guid MF_PD_LAST_MODIFIED_TIME = .(0x6c990d38, 0xbb8e, 0x477a, 0x85, 0x98, 0x0d, 0x5d, 0x96, 0xfc, 0xd8, 0x8a);
		public const Guid MF_PD_PLAYBACK_ELEMENT_ID = .(0x6c990d39, 0xbb8e, 0x477a, 0x85, 0x98, 0x0d, 0x5d, 0x96, 0xfc, 0xd8, 0x8a);
		public const Guid MF_PD_PREFERRED_LANGUAGE = .(0x6c990d3a, 0xbb8e, 0x477a, 0x85, 0x98, 0x0d, 0x5d, 0x96, 0xfc, 0xd8, 0x8a);
		public const Guid MF_PD_PLAYBACK_BOUNDARY_TIME = .(0x6c990d3b, 0xbb8e, 0x477a, 0x85, 0x98, 0x0d, 0x5d, 0x96, 0xfc, 0xd8, 0x8a);
		public const Guid MF_PD_AUDIO_ISVARIABLEBITRATE = .(0x33026ee0, 0xe387, 0x4582, 0xae, 0x0a, 0x34, 0xa2, 0xad, 0x3b, 0xaa, 0x18);
		public const Guid MF_SD_LANGUAGE = .(0x00af2180, 0xbdc2, 0x423c, 0xab, 0xca, 0xf5, 0x03, 0x59, 0x3b, 0xc1, 0x21);
		public const Guid MF_SD_PROTECTED = .(0x00af2181, 0xbdc2, 0x423c, 0xab, 0xca, 0xf5, 0x03, 0x59, 0x3b, 0xc1, 0x21);
		public const Guid MF_SD_STREAM_NAME = .(0x4f1b099d, 0xd314, 0x41e5, 0xa7, 0x81, 0x7f, 0xef, 0xaa, 0x4c, 0x50, 0x1f);
		public const Guid MF_SD_MUTUALLY_EXCLUSIVE = .(0x023ef79c, 0x388d, 0x487f, 0xac, 0x17, 0x69, 0x6c, 0xd6, 0xe3, 0xc6, 0xf5);
		public const Guid MF_ACTIVATE_CUSTOM_VIDEO_MIXER_CLSID = .(0xba491360, 0xbe50, 0x451e, 0x95, 0xab, 0x6d, 0x4a, 0xcc, 0xc7, 0xda, 0xd8);
		public const Guid MF_ACTIVATE_CUSTOM_VIDEO_MIXER_ACTIVATE = .(0xba491361, 0xbe50, 0x451e, 0x95, 0xab, 0x6d, 0x4a, 0xcc, 0xc7, 0xda, 0xd8);
		public const Guid MF_ACTIVATE_CUSTOM_VIDEO_MIXER_FLAGS = .(0xba491362, 0xbe50, 0x451e, 0x95, 0xab, 0x6d, 0x4a, 0xcc, 0xc7, 0xda, 0xd8);
		public const Guid MF_ACTIVATE_CUSTOM_VIDEO_PRESENTER_CLSID = .(0xba491364, 0xbe50, 0x451e, 0x95, 0xab, 0x6d, 0x4a, 0xcc, 0xc7, 0xda, 0xd8);
		public const Guid MF_ACTIVATE_CUSTOM_VIDEO_PRESENTER_ACTIVATE = .(0xba491365, 0xbe50, 0x451e, 0x95, 0xab, 0x6d, 0x4a, 0xcc, 0xc7, 0xda, 0xd8);
		public const Guid MF_ACTIVATE_CUSTOM_VIDEO_PRESENTER_FLAGS = .(0xba491366, 0xbe50, 0x451e, 0x95, 0xab, 0x6d, 0x4a, 0xcc, 0xc7, 0xda, 0xd8);
		public const Guid MF_ACTIVATE_MFT_LOCKED = .(0xc1f6093c, 0x7f65, 0x4fbd, 0x9e, 0x39, 0x5f, 0xae, 0xc3, 0xc4, 0xfb, 0xd7);
		public const Guid MF_ACTIVATE_VIDEO_WINDOW = .(0x9a2dbbdd, 0xf57e, 0x4162, 0x82, 0xb9, 0x68, 0x31, 0x37, 0x76, 0x82, 0xd3);
		public const Guid MF_AUDIO_RENDERER_ATTRIBUTE_FLAGS = .(0xede4b5e0, 0xf805, 0x4d6c, 0x99, 0xb3, 0xdb, 0x01, 0xbf, 0x95, 0xdf, 0xab);
		public const Guid MF_AUDIO_RENDERER_ATTRIBUTE_SESSION_ID = .(0xede4b5e3, 0xf805, 0x4d6c, 0x99, 0xb3, 0xdb, 0x01, 0xbf, 0x95, 0xdf, 0xab);
		public const Guid MF_AUDIO_RENDERER_ATTRIBUTE_ENDPOINT_ID = .(0xb10aaec3, 0xef71, 0x4cc3, 0xb8, 0x73, 0x05, 0xa9, 0xa0, 0x8b, 0x9f, 0x8e);
		public const Guid MF_AUDIO_RENDERER_ATTRIBUTE_ENDPOINT_ROLE = .(0x6ba644ff, 0x27c5, 0x4d02, 0x98, 0x87, 0xc2, 0x86, 0x19, 0xfd, 0xb9, 0x1b);
		public const Guid MF_AUDIO_RENDERER_ATTRIBUTE_STREAM_CATEGORY = .(0xa9770471, 0x92ec, 0x4df4, 0x94, 0xfe, 0x81, 0xc3, 0x6f, 0x0c, 0x3a, 0x7a);
		public const Guid MFENABLETYPE_WMDRMV1_LicenseAcquisition = .(0x4ff6eeaf, 0x0b43, 0x4797, 0x9b, 0x85, 0xab, 0xf3, 0x18, 0x15, 0xe7, 0xb0);
		public const Guid MFENABLETYPE_WMDRMV7_LicenseAcquisition = .(0x003306df, 0x4a06, 0x4884, 0xa0, 0x97, 0xef, 0x6d, 0x22, 0xec, 0x84, 0xa3);
		public const Guid MFENABLETYPE_WMDRMV7_Individualization = .(0xacd2c84a, 0xb303, 0x4f65, 0xbc, 0x2c, 0x2c, 0x84, 0x8d, 0x01, 0xa9, 0x89);
		public const Guid MFENABLETYPE_MF_UpdateRevocationInformation = .(0xe558b0b5, 0xb3c4, 0x44a0, 0x92, 0x4c, 0x50, 0xd1, 0x78, 0x93, 0x23, 0x85);
		public const Guid MFENABLETYPE_MF_UpdateUntrustedComponent = .(0x9879f3d6, 0xcee2, 0x48e6, 0xb5, 0x73, 0x97, 0x67, 0xab, 0x17, 0x2f, 0x16);
		public const Guid MFENABLETYPE_MF_RebootRequired = .(0x6d4d3d4b, 0x0ece, 0x4652, 0x8b, 0x3a, 0xf2, 0xd2, 0x42, 0x60, 0xd8, 0x87);
		public const Guid MF_METADATA_PROVIDER_SERVICE = .(0xdb214084, 0x58a4, 0x4d2e, 0xb8, 0x4f, 0x6f, 0x75, 0x5b, 0x2f, 0x7a, 0x0d);
		public const Guid MF_PROPERTY_HANDLER_SERVICE = .(0xa3face02, 0x32b8, 0x41dd, 0x90, 0xe7, 0x5f, 0xef, 0x7c, 0x89, 0x91, 0xb5);
		public const Guid MF_RATE_CONTROL_SERVICE = .(0x866fa297, 0xb802, 0x4bf8, 0x9d, 0xc9, 0x5e, 0x3b, 0x6a, 0x9f, 0x53, 0xc9);
		public const Guid MF_TIMECODE_SERVICE = .(0xa0d502a7, 0x0eb3, 0x4885, 0xb1, 0xb9, 0x9f, 0xeb, 0x0d, 0x08, 0x34, 0x54);
		public const Guid MR_POLICY_VOLUME_SERVICE = .(0x1abaa2ac, 0x9d3b, 0x47c6, 0xab, 0x48, 0xc5, 0x95, 0x06, 0xde, 0x78, 0x4d);
		public const Guid MR_CAPTURE_POLICY_VOLUME_SERVICE = .(0x24030acd, 0x107a, 0x4265, 0x97, 0x5c, 0x41, 0x4e, 0x33, 0xe6, 0x5f, 0x2a);
		public const Guid MR_STREAM_VOLUME_SERVICE = .(0xf8b5fa2f, 0x32ef, 0x46f5, 0xb1, 0x72, 0x13, 0x21, 0x21, 0x2f, 0xb2, 0xc4);
		public const Guid MR_AUDIO_POLICY_SERVICE = .(0x911fd737, 0x6775, 0x4ab0, 0xa6, 0x14, 0x29, 0x78, 0x62, 0xfd, 0xac, 0x88);
		public const Guid MF_SAMPLEGRABBERSINK_SAMPLE_TIME_OFFSET = .(0x62e3d776, 0x8100, 0x4e03, 0xa6, 0xe8, 0xbd, 0x38, 0x57, 0xac, 0x9c, 0x47);
		public const Guid MF_SAMPLEGRABBERSINK_IGNORE_CLOCK = .(0x0efda2c0, 0x2b69, 0x4e2e, 0xab, 0x8d, 0x46, 0xdc, 0xbf, 0xf7, 0xd2, 0x5d);
		public const Guid MF_QUALITY_SERVICES = .(0xb7e2be11, 0x2f96, 0x4640, 0xb5, 0x2c, 0x28, 0x23, 0x65, 0xbd, 0xf1, 0x6c);
		public const Guid MF_WORKQUEUE_SERVICES = .(0x8e37d489, 0x41e0, 0x413a, 0x90, 0x68, 0x28, 0x7c, 0x88, 0x6d, 0x8d, 0xda);
		public const Guid MF_QUALITY_NOTIFY_PROCESSING_LATENCY = .(0xf6b44af8, 0x604d, 0x46fe, 0xa9, 0x5d, 0x45, 0x47, 0x9b, 0x10, 0xc9, 0xbc);
		public const Guid MF_QUALITY_NOTIFY_SAMPLE_LAG = .(0x30d15206, 0xed2a, 0x4760, 0xbe, 0x17, 0xeb, 0x4a, 0x9f, 0x12, 0x29, 0x5c);
		public const Guid MF_TIME_FORMAT_SEGMENT_OFFSET = .(0xc8b8be77, 0x869c, 0x431d, 0x81, 0x2e, 0x16, 0x96, 0x93, 0xf6, 0x5a, 0x39);
		public const Guid MF_SOURCE_PRESENTATION_PROVIDER_SERVICE = .(0xe002aadc, 0xf4af, 0x4ee5, 0x98, 0x47, 0x05, 0x3e, 0xdf, 0x84, 0x04, 0x26);
		public const Guid MF_TOPONODE_ATTRIBUTE_EDITOR_SERVICE = .(0x65656e1a, 0x077f, 0x4472, 0x83, 0xef, 0x31, 0x6f, 0x11, 0xd5, 0x08, 0x7a);
		public const Guid MFNETSOURCE_SSLCERTIFICATE_MANAGER = .(0x55e6cb27, 0xe69b, 0x4267, 0x94, 0x0c, 0x2d, 0x7e, 0xc5, 0xbb, 0x8a, 0x0f);
		public const Guid MFNETSOURCE_RESOURCE_FILTER = .(0x815d0ff6, 0x265a, 0x4477, 0x9e, 0x46, 0x7b, 0x80, 0xad, 0x80, 0xb5, 0xfb);
		public const Guid MFNET_SAVEJOB_SERVICE = .(0xb85a587f, 0x3d02, 0x4e52, 0x95, 0x65, 0x55, 0xd3, 0xec, 0x1e, 0x7f, 0xf7);
		public const Guid MFNETSOURCE_STATISTICS_SERVICE = .(0x3cb1f275, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_STATISTICS = .(0x3cb1f274, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_BUFFERINGTIME = .(0x3cb1f276, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_ACCELERATEDSTREAMINGDURATION = .(0x3cb1f277, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_MAXUDPACCELERATEDSTREAMINGDURATION = .(0x4aab2879, 0xbbe1, 0x4994, 0x9f, 0xf0, 0x54, 0x95, 0xbd, 0x25, 0x01, 0x29);
		public const Guid MFNETSOURCE_MAXBUFFERTIMEMS = .(0x408b24e6, 0x4038, 0x4401, 0xb5, 0xb2, 0xfe, 0x70, 0x1a, 0x9e, 0xbf, 0x10);
		public const Guid MFNETSOURCE_CONNECTIONBANDWIDTH = .(0x3cb1f278, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_CACHEENABLED = .(0x3cb1f279, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_AUTORECONNECTLIMIT = .(0x3cb1f27a, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_RESENDSENABLED = .(0x3cb1f27b, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_THINNINGENABLED = .(0x3cb1f27c, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_PROTOCOL = .(0x3cb1f27d, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_TRANSPORT = .(0x3cb1f27e, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_PREVIEWMODEENABLED = .(0x3cb1f27f, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_CREDENTIAL_MANAGER = .(0x3cb1f280, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_PPBANDWIDTH = .(0x3cb1f281, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_AUTORECONNECTPROGRESS = .(0x3cb1f282, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_PROXYLOCATORFACTORY = .(0x3cb1f283, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_BROWSERUSERAGENT = .(0x3cb1f28b, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_BROWSERWEBPAGE = .(0x3cb1f28c, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_PLAYERVERSION = .(0x3cb1f28d, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_PLAYERID = .(0x3cb1f28e, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_HOSTEXE = .(0x3cb1f28f, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_HOSTVERSION = .(0x3cb1f291, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_PLAYERUSERAGENT = .(0x3cb1f292, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_CLIENTGUID = .(0x60a2c4a6, 0xf197, 0x4c14, 0xa5, 0xbf, 0x88, 0x83, 0x0d, 0x24, 0x58, 0xaf);
		public const Guid MFNETSOURCE_LOGURL = .(0x3cb1f293, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_ENABLE_UDP = .(0x3cb1f294, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_ENABLE_TCP = .(0x3cb1f295, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_ENABLE_MSB = .(0x3cb1f296, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_ENABLE_RTSP = .(0x3cb1f298, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_ENABLE_HTTP = .(0x3cb1f299, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_ENABLE_STREAMING = .(0x3cb1f29c, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_ENABLE_DOWNLOAD = .(0x3cb1f29d, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_ENABLE_PRIVATEMODE = .(0x824779d8, 0xf18b, 0x4405, 0x8c, 0xf1, 0x46, 0x4f, 0xb5, 0xaa, 0x8f, 0x71);
		public const Guid MFNETSOURCE_UDP_PORT_RANGE = .(0x3cb1f29a, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_PROXYINFO = .(0x3cb1f29b, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_DRMNET_LICENSE_REPRESENTATION = .(0x47eae1bd, 0xbdfe, 0x42e2, 0x82, 0xf3, 0x54, 0xa4, 0x8c, 0x17, 0x96, 0x2d);
		public const Guid MFNETSOURCE_PROXYSETTINGS = .(0x3cb1f287, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_PROXYHOSTNAME = .(0x3cb1f284, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_PROXYPORT = .(0x3cb1f288, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_PROXYEXCEPTIONLIST = .(0x3cb1f285, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_PROXYBYPASSFORLOCAL = .(0x3cb1f286, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_PROXYRERUNAUTODETECTION = .(0x3cb1f289, 0x0505, 0x4c5d, 0xae, 0x71, 0x0a, 0x55, 0x63, 0x44, 0xef, 0xa1);
		public const Guid MFNETSOURCE_STREAM_LANGUAGE = .(0x9ab44318, 0xf7cd, 0x4f2d, 0x8d, 0x6d, 0xfa, 0x35, 0xb4, 0x92, 0xce, 0xcb);
		public const Guid MFNETSOURCE_LOGPARAMS = .(0x64936ae8, 0x9418, 0x453a, 0x8c, 0xda, 0x3e, 0x0a, 0x66, 0x8b, 0x35, 0x3b);
		public const Guid MFNETSOURCE_PEERMANAGER = .(0x48b29adb, 0xfebf, 0x45ee, 0xa9, 0xbf, 0xef, 0xb8, 0x1c, 0x49, 0x2e, 0xfc);
		public const Guid MFNETSOURCE_FRIENDLYNAME = .(0x5b2a7757, 0xbc6b, 0x447e, 0xaa, 0x06, 0x0d, 0xda, 0x1c, 0x64, 0x6e, 0x2f);
		public const Guid MF_BYTESTREAMHANDLER_ACCEPTS_SHARE_WRITE = .(0xa6e1f733, 0x3001, 0x4915, 0x81, 0x50, 0x15, 0x58, 0xa2, 0x18, 0x0e, 0xc8);
		public const Guid MF_BYTESTREAM_SERVICE = .(0xab025e2b, 0x16d9, 0x4180, 0xa1, 0x27, 0xba, 0x6c, 0x70, 0x15, 0x61, 0x61);
		public const Guid MF_MEDIA_PROTECTION_MANAGER_PROPERTIES = .(0x38bd81a9, 0xacea, 0x4c73, 0x89, 0xb2, 0x55, 0x32, 0xc0, 0xae, 0xca, 0x79);
		public const Guid MFCONNECTOR_SPDIF = .(0x0b94a712, 0xad3e, 0x4cee, 0x83, 0xce, 0xce, 0x32, 0xe3, 0xdb, 0x65, 0x22);
		public const Guid MFCONNECTOR_UNKNOWN = .(0xac3aef5c, 0xce43, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_PCI = .(0xac3aef5d, 0xce43, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_PCIX = .(0xac3aef5e, 0xce43, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_PCI_Express = .(0xac3aef5f, 0xce43, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_AGP = .(0xac3aef60, 0xce43, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_VGA = .(0x57cd5968, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_SVIDEO = .(0x57cd5969, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_COMPOSITE = .(0x57cd596a, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_COMPONENT = .(0x57cd596b, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_DVI = .(0x57cd596c, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_HDMI = .(0x57cd596d, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_LVDS = .(0x57cd596e, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_D_JPN = .(0x57cd5970, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_SDI = .(0x57cd5971, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_DISPLAYPORT_EXTERNAL = .(0x57cd5972, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_DISPLAYPORT_EMBEDDED = .(0x57cd5973, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_UDI_EXTERNAL = .(0x57cd5974, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_UDI_EMBEDDED = .(0x57cd5975, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_MIRACAST = .(0x57cd5977, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_TRANSPORT_AGNOSTIC_DIGITAL_MODE_A = .(0x57cd5978, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MFCONNECTOR_TRANSPORT_AGNOSTIC_DIGITAL_MODE_B = .(0x57cd5979, 0xce47, 0x11d9, 0x92, 0xdb, 0x00, 0x0b, 0xdb, 0x28, 0xff, 0x98);
		public const Guid MF_POLICY_ID = .(0xb160c24d, 0xc059, 0x48f1, 0xa9, 0x01, 0x9e, 0xe2, 0x98, 0xa9, 0xa8, 0xc3);
		public const Guid MFPROTECTION_DISABLE = .(0x8cc6d81b, 0xfec6, 0x4d8f, 0x96, 0x4b, 0xcf, 0xba, 0x0b, 0x0d, 0xad, 0x0d);
		public const Guid MFPROTECTION_CONSTRICTVIDEO = .(0x193370ce, 0xc5e4, 0x4c3a, 0x8a, 0x66, 0x69, 0x59, 0xb4, 0xda, 0x44, 0x42);
		public const Guid MFPROTECTION_CONSTRICTVIDEO_NOOPM = .(0xa580e8cd, 0xc247, 0x4957, 0xb9, 0x83, 0x3c, 0x2e, 0xeb, 0xd1, 0xff, 0x59);
		public const Guid MFPROTECTION_CONSTRICTAUDIO = .(0xffc99b44, 0xdf48, 0x4e16, 0x8e, 0x66, 0x09, 0x68, 0x92, 0xc1, 0x57, 0x8a);
		public const Guid MFPROTECTION_TRUSTEDAUDIODRIVERS = .(0x65bdf3d2, 0x0168, 0x4816, 0xa5, 0x33, 0x55, 0xd4, 0x7b, 0x02, 0x71, 0x01);
		public const Guid MFPROTECTION_HDCP = .(0xae7cc03d, 0xc828, 0x4021, 0xac, 0xb7, 0xd5, 0x78, 0xd2, 0x7a, 0xaf, 0x13);
		public const Guid MFPROTECTION_CGMSA = .(0xe57e69e9, 0x226b, 0x4d31, 0xb4, 0xe3, 0xd3, 0xdb, 0x00, 0x87, 0x36, 0xdd);
		public const Guid MFPROTECTION_ACP = .(0xc3fd11c6, 0xf8b7, 0x4d20, 0xb0, 0x08, 0x1d, 0xb1, 0x7d, 0x61, 0xf2, 0xda);
		public const Guid MFPROTECTION_WMDRMOTA = .(0xa267a6a1, 0x362e, 0x47d0, 0x88, 0x05, 0x46, 0x28, 0x59, 0x8a, 0x23, 0xe4);
		public const Guid MFPROTECTION_FFT = .(0x462a56b2, 0x2866, 0x4bb6, 0x98, 0x0d, 0x6d, 0x8d, 0x9e, 0xdb, 0x1a, 0x8c);
		public const Guid MFPROTECTION_PROTECTED_SURFACE = .(0x4f5d9566, 0xe742, 0x4a25, 0x8d, 0x1f, 0xd2, 0x87, 0xb5, 0xfa, 0x0a, 0xde);
		public const Guid MFPROTECTION_DISABLE_SCREEN_SCRAPE = .(0xa21179a4, 0xb7cd, 0x40d8, 0x96, 0x14, 0x8e, 0xf2, 0x37, 0x1b, 0xa7, 0x8d);
		public const Guid MFPROTECTION_VIDEO_FRAMES = .(0x36a59cbc, 0x7401, 0x4a8c, 0xbc, 0x20, 0x46, 0xa7, 0xc9, 0xe5, 0x97, 0xf0);
		public const Guid MFPROTECTION_HARDWARE = .(0x4ee7f0c1, 0x9ed7, 0x424f, 0xb6, 0xbe, 0x99, 0x6b, 0x33, 0x52, 0x88, 0x56);
		public const Guid MFPROTECTION_HDCP_WITH_TYPE_ENFORCEMENT = .(0xa4a585e8, 0xed60, 0x442d, 0x81, 0x4d, 0xdb, 0x4d, 0x42, 0x20, 0xa0, 0x6d);
		public const Guid MFPROTECTIONATTRIBUTE_BEST_EFFORT = .(0xc8e06331, 0x75f0, 0x4ec1, 0x8e, 0x77, 0x17, 0x57, 0x8f, 0x77, 0x3b, 0x46);
		public const Guid MFPROTECTIONATTRIBUTE_FAIL_OVER = .(0x8536abc5, 0x38f1, 0x4151, 0x9c, 0xce, 0xf5, 0x5d, 0x94, 0x12, 0x29, 0xac);
		public const Guid MFPROTECTION_GRAPHICS_TRANSFER_AES_ENCRYPTION = .(0xc873de64, 0xd8a5, 0x49e6, 0x88, 0xbb, 0xfb, 0x96, 0x3f, 0xd3, 0xd4, 0xce);
		public const Guid MFPROTECTIONATTRIBUTE_CONSTRICTVIDEO_IMAGESIZE = .(0x008476fc, 0x4b58, 0x4d80, 0xa7, 0x90, 0xe7, 0x29, 0x76, 0x73, 0x16, 0x1d);
		public const Guid MFPROTECTIONATTRIBUTE_HDCP_SRM = .(0x6f302107, 0x3477, 0x4468, 0x8a, 0x08, 0xee, 0xf9, 0xdb, 0x10, 0xe2, 0x0f);
		public const Guid MF_SampleProtectionSalt = .(0x5403deee, 0xb9ee, 0x438f, 0xaa, 0x83, 0x38, 0x04, 0x99, 0x7e, 0x56, 0x9d);
		public const Guid MF_REMOTE_PROXY = .(0x2f00c90e, 0xd2cf, 0x4278, 0x8b, 0x6a, 0xd0, 0x77, 0xfa, 0xc3, 0xa2, 0x5f);
		public const Guid CLSID_CreateMediaExtensionObject = .(0xef65a54d, 0x0788, 0x45b8, 0x8b, 0x14, 0xbc, 0x0f, 0x6a, 0x6b, 0x51, 0x37);
		public const Guid MF_SAMI_SERVICE = .(0x49a89ae7, 0xb4d9, 0x4ef2, 0xaa, 0x5c, 0xf6, 0x5a, 0x3e, 0x05, 0xae, 0x4e);
		public const Guid MF_PD_SAMI_STYLELIST = .(0xe0b73c7f, 0x486d, 0x484e, 0x98, 0x72, 0x4d, 0xe5, 0x19, 0x2a, 0x7b, 0xf8);
		public const Guid MF_SD_SAMI_LANGUAGE = .(0x36fcb98a, 0x6cd0, 0x44cb, 0xac, 0xb9, 0xa8, 0xf5, 0x60, 0x0d, 0xd0, 0xbb);
		public const Guid MF_TRANSCODE_CONTAINERTYPE = .(0x150ff23f, 0x4abc, 0x478b, 0xac, 0x4f, 0xe1, 0x91, 0x6f, 0xba, 0x1c, 0xca);
		public const Guid MFTranscodeContainerType_ASF = .(0x430f6f6e, 0xb6bf, 0x4fc1, 0xa0, 0xbd, 0x9e, 0xe4, 0x6e, 0xee, 0x2a, 0xfb);
		public const Guid MFTranscodeContainerType_MPEG4 = .(0xdc6cd05d, 0xb9d0, 0x40ef, 0xbd, 0x35, 0xfa, 0x62, 0x2c, 0x1a, 0xb2, 0x8a);
		public const Guid MFTranscodeContainerType_MP3 = .(0xe438b912, 0x83f1, 0x4de6, 0x9e, 0x3a, 0x9f, 0xfb, 0xc6, 0xdd, 0x24, 0xd1);
		public const Guid MFTranscodeContainerType_FLAC = .(0x31344aa3, 0x05a9, 0x42b5, 0x90, 0x1b, 0x8e, 0x9d, 0x42, 0x57, 0xf7, 0x5e);
		public const Guid MFTranscodeContainerType_3GP = .(0x34c50167, 0x4472, 0x4f34, 0x9e, 0xa0, 0xc4, 0x9f, 0xba, 0xcf, 0x03, 0x7d);
		public const Guid MFTranscodeContainerType_AC3 = .(0x6d8d91c3, 0x8c91, 0x4ed1, 0x87, 0x42, 0x8c, 0x34, 0x7d, 0x5b, 0x44, 0xd0);
		public const Guid MFTranscodeContainerType_ADTS = .(0x132fd27d, 0x0f02, 0x43de, 0xa3, 0x01, 0x38, 0xfb, 0xbb, 0xb3, 0x83, 0x4e);
		public const Guid MFTranscodeContainerType_MPEG2 = .(0xbfc2dbf9, 0x7bb4, 0x4f8f, 0xaf, 0xde, 0xe1, 0x12, 0xc4, 0x4b, 0xa8, 0x82);
		public const Guid MFTranscodeContainerType_WAVE = .(0x64c3453c, 0x0f26, 0x4741, 0xbe, 0x63, 0x87, 0xbd, 0xf8, 0xbb, 0x93, 0x5b);
		public const Guid MFTranscodeContainerType_AVI = .(0x7edfe8af, 0x402f, 0x4d76, 0xa3, 0x3c, 0x61, 0x9f, 0xd1, 0x57, 0xd0, 0xf1);
		public const Guid MFTranscodeContainerType_FMPEG4 = .(0x9ba876f1, 0x419f, 0x4b77, 0xa1, 0xe0, 0x35, 0x95, 0x9d, 0x9d, 0x40, 0x04);
		public const Guid MFTranscodeContainerType_AMR = .(0x025d5ad3, 0x621a, 0x475b, 0x96, 0x4d, 0x66, 0xb1, 0xc8, 0x24, 0xf0, 0x79);
		public const Guid MF_TRANSCODE_SKIP_METADATA_TRANSFER = .(0x4e4469ef, 0xb571, 0x4959, 0x8f, 0x83, 0x3d, 0xcf, 0xba, 0x33, 0xa3, 0x93);
		public const Guid MF_TRANSCODE_TOPOLOGYMODE = .(0x3e3df610, 0x394a, 0x40b2, 0x9d, 0xea, 0x3b, 0xab, 0x65, 0x0b, 0xeb, 0xf2);
		public const Guid MF_TRANSCODE_ADJUST_PROFILE = .(0x9c37c21b, 0x060f, 0x487c, 0xa6, 0x90, 0x80, 0xd7, 0xf5, 0x0d, 0x1c, 0x72);
		public const Guid MF_TRANSCODE_ENCODINGPROFILE = .(0x6947787c, 0xf508, 0x4ea9, 0xb1, 0xe9, 0xa1, 0xfe, 0x3a, 0x49, 0xfb, 0xc9);
		public const Guid MF_TRANSCODE_QUALITYVSSPEED = .(0x98332df8, 0x03cd, 0x476b, 0x89, 0xfa, 0x3f, 0x9e, 0x44, 0x2d, 0xec, 0x9f);
		public const Guid MF_TRANSCODE_DONOT_INSERT_ENCODER = .(0xf45aa7ce, 0xab24, 0x4012, 0xa1, 0x1b, 0xdc, 0x82, 0x20, 0x20, 0x14, 0x10);
		public const Guid MF_VIDEO_PROCESSOR_ALGORITHM = .(0x4a0a1e1f, 0x272c, 0x4fb6, 0x9e, 0xb1, 0xdb, 0x33, 0x0c, 0xbc, 0x97, 0xca);
		public const Guid MF_XVP_DISABLE_FRC = .(0x2c0afa19, 0x7a97, 0x4d5a, 0x9e, 0xe8, 0x16, 0xd4, 0xfc, 0x51, 0x8d, 0x8c);
		public const Guid MF_XVP_CALLER_ALLOCATES_OUTPUT = .(0x04a2cabc, 0x0cab, 0x40b1, 0xa1, 0xb9, 0x75, 0xbc, 0x36, 0x58, 0xf0, 0x00);
		public const Guid MF_LOCAL_MFT_REGISTRATION_SERVICE = .(0xddf5cf9c, 0x4506, 0x45aa, 0xab, 0xf0, 0x6d, 0x5d, 0x94, 0xdd, 0x1b, 0x4a);
		public const Guid MF_WRAPPED_SAMPLE_SERVICE = .(0x31f52bf2, 0xd03e, 0x4048, 0x80, 0xd0, 0x9c, 0x10, 0x46, 0xd8, 0x7c, 0x61);
		public const Guid MF_WRAPPED_OBJECT = .(0x2b182c4c, 0xd6ac, 0x49f4, 0x89, 0x15, 0xf7, 0x18, 0x87, 0xdb, 0x70, 0xcd);
		public const Guid CLSID_HttpSchemePlugin = .(0x44cb442b, 0x9da9, 0x49df, 0xb3, 0xfd, 0x02, 0x37, 0x77, 0xb1, 0x6e, 0x50);
		public const Guid CLSID_UrlmonSchemePlugin = .(0x9ec4b4f9, 0x3029, 0x45ad, 0x94, 0x7b, 0x34, 0x4d, 0xe2, 0xa2, 0x49, 0xe2);
		public const Guid CLSID_NetSchemePlugin = .(0xe9f4ebab, 0xd97b, 0x463e, 0xa2, 0xb1, 0xc5, 0x4e, 0xe3, 0xf9, 0x41, 0x4d);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_TYPE = .(0xc60ac5fe, 0x252a, 0x478f, 0xa0, 0xef, 0xbc, 0x8f, 0xa5, 0xf7, 0xca, 0xd3);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_TYPE_VIDCAP_HW_SOURCE = .(0xde7046ba, 0x54d6, 0x4487, 0xa2, 0xa4, 0xec, 0x7c, 0x0d, 0x1b, 0xd1, 0x63);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_FRIENDLY_NAME = .(0x60d0e559, 0x52f8, 0x4fa2, 0xbb, 0xce, 0xac, 0xdb, 0x34, 0xa8, 0xec, 0x01);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_MEDIA_TYPE = .(0x56a819ca, 0x0c78, 0x4de4, 0xa0, 0xa7, 0x3d, 0xda, 0xba, 0x0f, 0x24, 0xd4);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_TYPE_VIDCAP_CATEGORY = .(0x77f0ae69, 0xc3bd, 0x4509, 0x94, 0x1d, 0x46, 0x7e, 0x4d, 0x24, 0x89, 0x9e);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_TYPE_VIDCAP_SYMBOLIC_LINK = .(0x58f0aad8, 0x22bf, 0x4f8a, 0xbb, 0x3d, 0xd2, 0xc4, 0x97, 0x8c, 0x6e, 0x2f);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_TYPE_AUDCAP_SYMBOLIC_LINK = .(0x98d24b5e, 0x5930, 0x4614, 0xb5, 0xa1, 0xf6, 0x00, 0xf9, 0x35, 0x5a, 0x78);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_TYPE_VIDCAP_MAX_BUFFERS = .(0x7dd9b730, 0x4f2d, 0x41d5, 0x8f, 0x95, 0x0c, 0xc9, 0xa9, 0x12, 0xba, 0x26);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_TYPE_AUDCAP_ENDPOINT_ID = .(0x30da9258, 0xfeb9, 0x47a7, 0xa4, 0x53, 0x76, 0x3a, 0x7a, 0x8e, 0x1c, 0x5f);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_TYPE_AUDCAP_ROLE = .(0xbc9d118e, 0x8c67, 0x4a18, 0x85, 0xd4, 0x12, 0xd3, 0x00, 0x40, 0x05, 0x52);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_TYPE_VIDCAP_PROVIDER_DEVICE_ID = .(0x36689d42, 0xa06c, 0x40ae, 0x84, 0xcf, 0xf5, 0xa0, 0x34, 0x06, 0x7c, 0xc4);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_XADDRESS = .(0xbca0be52, 0xc327, 0x44c7, 0x9b, 0x7d, 0x7f, 0xa8, 0xd9, 0xb5, 0xbc, 0xda);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_STREAM_URL = .(0x9d7b40d2, 0x3617, 0x4043, 0x93, 0xe3, 0x8d, 0x6d, 0xa9, 0xbb, 0x34, 0x92);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_USERNAME = .(0x05d01add, 0x949f, 0x46eb, 0xbc, 0x8e, 0x8b, 0x0d, 0x2b, 0x32, 0xd7, 0x9d);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_PASSWORD = .(0xa0fd7e16, 0x42d9, 0x49df, 0x84, 0xc0, 0xe8, 0x2c, 0x5e, 0xab, 0x88, 0x74);
		public const Guid CLSID_FrameServerNetworkCameraSource = .(0x7a213aa7, 0x866f, 0x414a, 0x8c, 0x1a, 0x27, 0x5c, 0x72, 0x83, 0xa3, 0x95);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_TYPE_AUDCAP_GUID = .(0x14dd9a1c, 0x7cff, 0x41be, 0xb1, 0xb9, 0xba, 0x1a, 0xc6, 0xec, 0xb5, 0x71);
		public const Guid MF_DEVSOURCE_ATTRIBUTE_SOURCE_TYPE_VIDCAP_GUID = .(0x8ac3587a, 0x4ae7, 0x42d8, 0x99, 0xe0, 0x0a, 0x60, 0x13, 0xee, 0xf9, 0x0f);
		public const Guid MF_DEVICESTREAM_IMAGE_STREAM = .(0xa7ffb865, 0xe7b2, 0x43b0, 0x9f, 0x6f, 0x9a, 0xf2, 0xa0, 0xe5, 0x0f, 0xc0);
		public const Guid MF_DEVICESTREAM_INDEPENDENT_IMAGE_STREAM = .(0x03eeec7e, 0xd605, 0x4576, 0x8b, 0x29, 0x65, 0x80, 0xb4, 0x90, 0xd7, 0xd3);
		public const Guid MF_DEVICESTREAM_STREAM_ID = .(0x11bd5120, 0xd124, 0x446b, 0x88, 0xe6, 0x17, 0x06, 0x02, 0x57, 0xff, 0xf9);
		public const Guid MF_DEVICESTREAM_STREAM_CATEGORY = .(0x2939e7b8, 0xa62e, 0x4579, 0xb6, 0x74, 0xd4, 0x07, 0x3d, 0xfa, 0xbb, 0xba);
		public const Guid MF_DEVICESTREAM_FRAMESERVER_SHARED = .(0x1cb378e9, 0xb279, 0x41d4, 0xaf, 0x97, 0x34, 0xa2, 0x43, 0xe6, 0x83, 0x20);
		public const Guid MF_DEVICESTREAM_TRANSFORM_STREAM_ID = .(0xe63937b7, 0xdaaf, 0x4d49, 0x81, 0x5f, 0xd8, 0x26, 0xf8, 0xad, 0x31, 0xe7);
		public const Guid MF_DEVICESTREAM_EXTENSION_PLUGIN_CLSID = .(0x048e6558, 0x60c4, 0x4173, 0xbd, 0x5b, 0x6a, 0x3c, 0xa2, 0x89, 0x6a, 0xee);
		public const Guid MF_DEVICEMFT_EXTENSION_PLUGIN_CLSID = .(0x0844dbae, 0x34fa, 0x48a0, 0xa7, 0x83, 0x8e, 0x69, 0x6f, 0xb1, 0xc9, 0xa8);
		public const Guid MF_DEVICESTREAM_EXTENSION_PLUGIN_CONNECTION_POINT = .(0x37f9375c, 0xe664, 0x4ea4, 0xaa, 0xe4, 0xcb, 0x6d, 0x1d, 0xac, 0xa1, 0xf4);
		public const Guid MF_DEVICESTREAM_TAKEPHOTO_TRIGGER = .(0x1d180e34, 0x538c, 0x4fbb, 0xa7, 0x5a, 0x85, 0x9a, 0xf7, 0xd2, 0x61, 0xa6);
		public const Guid MF_DEVICESTREAM_MAX_FRAME_BUFFERS = .(0x1684cebe, 0x3175, 0x4985, 0x88, 0x2c, 0x0e, 0xfd, 0x3e, 0x8a, 0xc1, 0x1e);
		public const Guid MF_DEVICEMFT_CONNECTED_FILTER_KSCONTROL = .(0x6a2c4fa6, 0xd179, 0x41cd, 0x95, 0x23, 0x82, 0x23, 0x71, 0xea, 0x40, 0xe5);
		public const Guid MF_DEVICEMFT_CONNECTED_PIN_KSCONTROL = .(0xe63310f7, 0xb244, 0x4ef8, 0x9a, 0x7d, 0x24, 0xc7, 0x4e, 0x32, 0xeb, 0xd0);
		public const Guid MF_DEVICE_THERMAL_STATE_CHANGED = .(0x70ccd0af, 0xfc9f, 0x4deb, 0xa8, 0x75, 0x9f, 0xec, 0xd1, 0x6c, 0x5b, 0xd4);
		public const Guid MFSampleExtension_DeviceTimestamp = .(0x8f3e35e7, 0x2dcd, 0x4887, 0x86, 0x22, 0x2a, 0x58, 0xba, 0xa6, 0x52, 0xb0);
		public const Guid MFSampleExtension_Spatial_CameraViewTransform = .(0x4e251fa4, 0x830f, 0x4770, 0x85, 0x9a, 0x4b, 0x8d, 0x99, 0xaa, 0x80, 0x9b);
		public const Guid MFSampleExtension_Spatial_CameraCoordinateSystem = .(0x9d13c82f, 0x2199, 0x4e67, 0x91, 0xcd, 0xd1, 0xa4, 0x18, 0x1f, 0x25, 0x34);
		public const Guid MFSampleExtension_Spatial_CameraProjectionTransform = .(0x47f9fcb5, 0x2a02, 0x4f26, 0xa4, 0x77, 0x79, 0x2f, 0xdf, 0x95, 0x88, 0x6a);
		public const Guid MF_MEDIASOURCE_SERVICE = .(0xf09992f7, 0x9fba, 0x4c4a, 0xa3, 0x7f, 0x8c, 0x47, 0xb4, 0xe1, 0xdf, 0xe7);
		public const Guid MF_ACCESS_CONTROLLED_MEDIASOURCE_SERVICE = .(0x014a5031, 0x2f05, 0x4c6a, 0x9f, 0x9c, 0x7d, 0x0d, 0xc4, 0xed, 0xa5, 0xf4);
		public const Guid MF_CONTENT_DECRYPTOR_SERVICE = .(0x68a72927, 0xfc7b, 0x44ee, 0x85, 0xf4, 0x7c, 0x51, 0xbd, 0x55, 0xa6, 0x59);
		public const Guid MF_CONTENT_PROTECTION_DEVICE_SERVICE = .(0xff58436f, 0x76a0, 0x41fe, 0xb5, 0x66, 0x10, 0xcc, 0x53, 0x96, 0x2e, 0xdd);
		public const Guid MF_SD_AUDIO_ENCODER_DELAY = .(0x8e85422c, 0x73de, 0x403f, 0x9a, 0x35, 0x55, 0x0a, 0xd6, 0xe8, 0xb9, 0x51);
		public const Guid MF_SD_AUDIO_ENCODER_PADDING = .(0x529c7f2c, 0xac4b, 0x4e3f, 0xbf, 0xc3, 0x09, 0x02, 0x19, 0x49, 0x82, 0xcb);
		public const Guid CLSID_MSH264DecoderMFT = .(0x62ce7e72, 0x4c71, 0x4d20, 0xb1, 0x5d, 0x45, 0x28, 0x31, 0xa8, 0x7d, 0x9d);
		public const Guid CLSID_MSH264EncoderMFT = .(0x6ca50344, 0x051a, 0x4ded, 0x97, 0x79, 0xa4, 0x33, 0x05, 0x16, 0x5e, 0x35);
		public const Guid CLSID_MSDDPlusDecMFT = .(0x177c0afe, 0x900b, 0x48d4, 0x9e, 0x4c, 0x57, 0xad, 0xd2, 0x50, 0xb3, 0xd4);
		public const Guid CLSID_MP3DecMediaObject = .(0xbbeea841, 0x0a63, 0x4f52, 0xa7, 0xab, 0xa9, 0xb3, 0xa8, 0x4e, 0xd3, 0x8a);
		public const Guid CLSID_MSAACDecMFT = .(0x32d186a7, 0x218f, 0x4c75, 0x88, 0x76, 0xdd, 0x77, 0x27, 0x3a, 0x89, 0x99);
		public const Guid CLSID_MSH265DecoderMFT = .(0x420a51a3, 0xd605, 0x430c, 0xb4, 0xfc, 0x45, 0x27, 0x4f, 0xa6, 0xc5, 0x62);
		public const Guid CLSID_WMVDecoderMFT = .(0x82d353df, 0x90bd, 0x4382, 0x8b, 0xc2, 0x3f, 0x61, 0x92, 0xb7, 0x6e, 0x34);
		public const Guid CLSID_WMADecMediaObject = .(0x2eeb4adf, 0x4578, 0x4d10, 0xbc, 0xa7, 0xbb, 0x95, 0x5f, 0x56, 0x32, 0x0a);
		public const Guid CLSID_MSMPEGAudDecMFT = .(0x70707b39, 0xb2ca, 0x4015, 0xab, 0xea, 0xf8, 0x44, 0x7d, 0x22, 0xd8, 0x8b);
		public const Guid CLSID_MSMPEGDecoderMFT = .(0x2d709e52, 0x123f, 0x49b5, 0x9c, 0xbc, 0x9a, 0xf5, 0xcd, 0xe2, 0x8f, 0xb9);
		public const Guid CLSID_AudioResamplerMediaObject = .(0xf447b69e, 0x1884, 0x4a7e, 0x80, 0x55, 0x34, 0x6f, 0x74, 0xd6, 0xed, 0xb3);
		public const Guid CLSID_MSVPxDecoder = .(0xe3aaf548, 0xc9a4, 0x4c6e, 0x23, 0x4d, 0x5a, 0xda, 0x37, 0x4b, 0x00, 0x00);
		public const Guid CLSID_MSOpusDecoder = .(0x63e17c10, 0x2d43, 0x4c42, 0x8f, 0xe3, 0x8d, 0x8b, 0x63, 0xe4, 0x6a, 0x6a);
		public const Guid CLSID_VideoProcessorMFT = .(0x88753b26, 0x5b24, 0x49bd, 0xb2, 0xe7, 0x0c, 0x44, 0x5c, 0x78, 0xc9, 0x82);
		public const Guid MFNETSOURCE_CROSS_ORIGIN_SUPPORT = .(0x9842207c, 0xb02c, 0x4271, 0xa2, 0xfc, 0x72, 0xe4, 0x93, 0x08, 0xe5, 0xc2);
		public const Guid MFNETSOURCE_HTTP_DOWNLOAD_SESSION_PROVIDER = .(0x7d55081e, 0x307d, 0x4d6d, 0xa6, 0x63, 0xa9, 0x3b, 0xe9, 0x7c, 0x4b, 0x5c);
		public const Guid MF_SD_MEDIASOURCE_STATUS = .(0x1913678b, 0xfc0f, 0x44da, 0x8f, 0x43, 0x1b, 0xa3, 0xb5, 0x26, 0xf4, 0xae);
		public const Guid MF_SD_VIDEO_SPHERICAL = .(0xa51da449, 0x3fdc, 0x478c, 0xbc, 0xb5, 0x30, 0xbe, 0x76, 0x59, 0x5f, 0x55);
		public const Guid MF_SD_VIDEO_SPHERICAL_FORMAT = .(0x4a8fc407, 0x6ea1, 0x46c8, 0xb5, 0x67, 0x69, 0x71, 0xd4, 0xa1, 0x39, 0xc3);
		public const Guid MF_SD_VIDEO_SPHERICAL_INITIAL_VIEWDIRECTION = .(0x11d25a49, 0xbb62, 0x467f, 0x9d, 0xb1, 0xc1, 0x71, 0x65, 0x71, 0x6c, 0x49);
		public const Guid MF_MEDIASOURCE_EXPOSE_ALL_STREAMS = .(0xe7f250b8, 0x8fd9, 0x4a09, 0xb6, 0xc1, 0x6a, 0x31, 0x5c, 0x7c, 0x72, 0x0e);
		public const Guid MF_ST_MEDIASOURCE_COLLECTION = .(0x616de972, 0x83ad, 0x4950, 0x81, 0x70, 0x63, 0x0d, 0x19, 0xcb, 0xe3, 0x07);
		public const Guid MF_DEVICESTREAM_FILTER_KSCONTROL = .(0x46783cca, 0x3df5, 0x4923, 0xa9, 0xef, 0x36, 0xb7, 0x22, 0x3e, 0xdd, 0xe0);
		public const Guid MF_DEVICESTREAM_PIN_KSCONTROL = .(0xef3ef9a7, 0x87f2, 0x48ca, 0xbe, 0x02, 0x67, 0x48, 0x78, 0x91, 0x8e, 0x98);
		public const Guid MF_DEVICESTREAM_SOURCE_ATTRIBUTES = .(0x2f8cb617, 0x361b, 0x434f, 0x85, 0xea, 0x99, 0xa0, 0x3e, 0x1c, 0xe4, 0xe0);
		public const Guid MF_DEVICESTREAM_FRAMESERVER_HIDDEN = .(0xf402567b, 0x4d91, 0x4179, 0x96, 0xd1, 0x74, 0xc8, 0x48, 0x0c, 0x20, 0x34);
		public const Guid MF_STF_VERSION_INFO = .(0x6770bd39, 0xef82, 0x44ee, 0xa4, 0x9b, 0x93, 0x4b, 0xeb, 0x24, 0xae, 0xf7);
		public const Guid MF_STF_VERSION_DATE = .(0x31a165d5, 0xdf67, 0x4095, 0x8e, 0x44, 0x88, 0x68, 0xfc, 0x20, 0xdb, 0xfd);
		public const Guid MF_DEVICESTREAM_REQUIRED_CAPABILITIES = .(0x6d8b957e, 0x7cf6, 0x43f4, 0xaf, 0x56, 0x9c, 0x0e, 0x1e, 0x4f, 0xcb, 0xe1);
		public const Guid MF_DEVICESTREAM_REQUIRED_SDDL = .(0x331ae85d, 0xc0d3, 0x49ba, 0x83, 0xba, 0x82, 0xa1, 0x2d, 0x63, 0xcd, 0xd6);
		public const Guid MF_DEVICEMFT_SENSORPROFILE_COLLECTION = .(0x36ebdc44, 0xb12c, 0x441b, 0x89, 0xf4, 0x08, 0xb2, 0xf4, 0x1a, 0x9c, 0xfc);
		public const Guid MF_DEVICESTREAM_SENSORSTREAM_ID = .(0xe35b9fe4, 0x0659, 0x4cad, 0xbb, 0x51, 0x33, 0x16, 0x0b, 0xe7, 0xe4, 0x13);
		public const Guid MF_PD_ASF_FILEPROPERTIES_FILE_ID = .(0x3de649b4, 0xd76d, 0x4e66, 0x9e, 0xc9, 0x78, 0x12, 0x0f, 0xb4, 0xc7, 0xe3);
		public const Guid MF_PD_ASF_FILEPROPERTIES_CREATION_TIME = .(0x3de649b6, 0xd76d, 0x4e66, 0x9e, 0xc9, 0x78, 0x12, 0x0f, 0xb4, 0xc7, 0xe3);
		public const Guid MF_PD_ASF_FILEPROPERTIES_PACKETS = .(0x3de649b7, 0xd76d, 0x4e66, 0x9e, 0xc9, 0x78, 0x12, 0x0f, 0xb4, 0xc7, 0xe3);
		public const Guid MF_PD_ASF_FILEPROPERTIES_PLAY_DURATION = .(0x3de649b8, 0xd76d, 0x4e66, 0x9e, 0xc9, 0x78, 0x12, 0x0f, 0xb4, 0xc7, 0xe3);
		public const Guid MF_PD_ASF_FILEPROPERTIES_SEND_DURATION = .(0x3de649b9, 0xd76d, 0x4e66, 0x9e, 0xc9, 0x78, 0x12, 0x0f, 0xb4, 0xc7, 0xe3);
		public const Guid MF_PD_ASF_FILEPROPERTIES_PREROLL = .(0x3de649ba, 0xd76d, 0x4e66, 0x9e, 0xc9, 0x78, 0x12, 0x0f, 0xb4, 0xc7, 0xe3);
		public const Guid MF_PD_ASF_FILEPROPERTIES_FLAGS = .(0x3de649bb, 0xd76d, 0x4e66, 0x9e, 0xc9, 0x78, 0x12, 0x0f, 0xb4, 0xc7, 0xe3);
		public const Guid MF_PD_ASF_FILEPROPERTIES_MIN_PACKET_SIZE = .(0x3de649bc, 0xd76d, 0x4e66, 0x9e, 0xc9, 0x78, 0x12, 0x0f, 0xb4, 0xc7, 0xe3);
		public const Guid MF_PD_ASF_FILEPROPERTIES_MAX_PACKET_SIZE = .(0x3de649bd, 0xd76d, 0x4e66, 0x9e, 0xc9, 0x78, 0x12, 0x0f, 0xb4, 0xc7, 0xe3);
		public const Guid MF_PD_ASF_FILEPROPERTIES_MAX_BITRATE = .(0x3de649be, 0xd76d, 0x4e66, 0x9e, 0xc9, 0x78, 0x12, 0x0f, 0xb4, 0xc7, 0xe3);
		public const Guid CLSID_WMDRMSystemID = .(0x8948bb22, 0x11bd, 0x4796, 0x93, 0xe3, 0x97, 0x4d, 0x1b, 0x57, 0x56, 0x78);
		public const Guid MF_PD_ASF_CONTENTENCRYPTION_TYPE = .(0x8520fe3d, 0x277e, 0x46ea, 0x99, 0xe4, 0xe3, 0x0a, 0x86, 0xdb, 0x12, 0xbe);
		public const Guid MF_PD_ASF_CONTENTENCRYPTION_KEYID = .(0x8520fe3e, 0x277e, 0x46ea, 0x99, 0xe4, 0xe3, 0x0a, 0x86, 0xdb, 0x12, 0xbe);
		public const Guid MF_PD_ASF_CONTENTENCRYPTION_SECRET_DATA = .(0x8520fe3f, 0x277e, 0x46ea, 0x99, 0xe4, 0xe3, 0x0a, 0x86, 0xdb, 0x12, 0xbe);
		public const Guid MF_PD_ASF_CONTENTENCRYPTION_LICENSE_URL = .(0x8520fe40, 0x277e, 0x46ea, 0x99, 0xe4, 0xe3, 0x0a, 0x86, 0xdb, 0x12, 0xbe);
		public const Guid MF_PD_ASF_CONTENTENCRYPTIONEX_ENCRYPTION_DATA = .(0x62508be5, 0xecdf, 0x4924, 0xa3, 0x59, 0x72, 0xba, 0xb3, 0x39, 0x7b, 0x9d);
		public const Guid MF_PD_ASF_LANGLIST = .(0xf23de43c, 0x9977, 0x460d, 0xa6, 0xec, 0x32, 0x93, 0x7f, 0x16, 0x0f, 0x7d);
		public const Guid MF_PD_ASF_LANGLIST_LEGACYORDER = .(0xf23de43d, 0x9977, 0x460d, 0xa6, 0xec, 0x32, 0x93, 0x7f, 0x16, 0x0f, 0x7d);
		public const Guid MF_PD_ASF_MARKER = .(0x5134330e, 0x83a6, 0x475e, 0xa9, 0xd5, 0x4f, 0xb8, 0x75, 0xfb, 0x2e, 0x31);
		public const Guid MF_PD_ASF_SCRIPT = .(0xe29cd0d7, 0xd602, 0x4923, 0xa7, 0xfe, 0x73, 0xfd, 0x97, 0xec, 0xc6, 0x50);
		public const Guid MF_PD_ASF_CODECLIST = .(0xe4bb3509, 0xc18d, 0x4df1, 0xbb, 0x99, 0x7a, 0x36, 0xb3, 0xcc, 0x41, 0x19);
		public const Guid MF_PD_ASF_METADATA_IS_VBR = .(0x5fc6947a, 0xef60, 0x445d, 0xb4, 0x49, 0x44, 0x2e, 0xcc, 0x78, 0xb4, 0xc1);
		public const Guid MF_PD_ASF_METADATA_V8_VBRPEAK = .(0x5fc6947b, 0xef60, 0x445d, 0xb4, 0x49, 0x44, 0x2e, 0xcc, 0x78, 0xb4, 0xc1);
		public const Guid MF_PD_ASF_METADATA_V8_BUFFERAVERAGE = .(0x5fc6947c, 0xef60, 0x445d, 0xb4, 0x49, 0x44, 0x2e, 0xcc, 0x78, 0xb4, 0xc1);
		public const Guid MF_PD_ASF_METADATA_LEAKY_BUCKET_PAIRS = .(0x5fc6947d, 0xef60, 0x445d, 0xb4, 0x49, 0x44, 0x2e, 0xcc, 0x78, 0xb4, 0xc1);
		public const Guid MF_PD_ASF_DATA_START_OFFSET = .(0xe7d5b3e7, 0x1f29, 0x45d3, 0x88, 0x22, 0x3e, 0x78, 0xfa, 0xe2, 0x72, 0xed);
		public const Guid MF_PD_ASF_DATA_LENGTH = .(0xe7d5b3e8, 0x1f29, 0x45d3, 0x88, 0x22, 0x3e, 0x78, 0xfa, 0xe2, 0x72, 0xed);
		public const Guid MF_SD_ASF_EXTSTRMPROP_LANGUAGE_ID_INDEX = .(0x48f8a522, 0x305d, 0x422d, 0x85, 0x24, 0x25, 0x02, 0xdd, 0xa3, 0x36, 0x80);
		public const Guid MF_SD_ASF_EXTSTRMPROP_AVG_DATA_BITRATE = .(0x48f8a523, 0x305d, 0x422d, 0x85, 0x24, 0x25, 0x02, 0xdd, 0xa3, 0x36, 0x80);
		public const Guid MF_SD_ASF_EXTSTRMPROP_AVG_BUFFERSIZE = .(0x48f8a524, 0x305d, 0x422d, 0x85, 0x24, 0x25, 0x02, 0xdd, 0xa3, 0x36, 0x80);
		public const Guid MF_SD_ASF_EXTSTRMPROP_MAX_DATA_BITRATE = .(0x48f8a525, 0x305d, 0x422d, 0x85, 0x24, 0x25, 0x02, 0xdd, 0xa3, 0x36, 0x80);
		public const Guid MF_SD_ASF_EXTSTRMPROP_MAX_BUFFERSIZE = .(0x48f8a526, 0x305d, 0x422d, 0x85, 0x24, 0x25, 0x02, 0xdd, 0xa3, 0x36, 0x80);
		public const Guid MF_SD_ASF_STREAMBITRATES_BITRATE = .(0xa8e182ed, 0xafc8, 0x43d0, 0xb0, 0xd1, 0xf6, 0x5b, 0xad, 0x9d, 0xa5, 0x58);
		public const Guid MF_SD_ASF_METADATA_DEVICE_CONFORMANCE_TEMPLATE = .(0x245e929d, 0xc44e, 0x4f7e, 0xbb, 0x3c, 0x77, 0xd4, 0xdf, 0xd2, 0x7f, 0x8a);
		public const Guid MF_PD_ASF_INFO_HAS_AUDIO = .(0x80e62295, 0x2296, 0x4a44, 0xb3, 0x1c, 0xd1, 0x03, 0xc6, 0xfe, 0xd2, 0x3c);
		public const Guid MF_PD_ASF_INFO_HAS_VIDEO = .(0x80e62296, 0x2296, 0x4a44, 0xb3, 0x1c, 0xd1, 0x03, 0xc6, 0xfe, 0xd2, 0x3c);
		public const Guid MF_PD_ASF_INFO_HAS_NON_AUDIO_VIDEO = .(0x80e62297, 0x2296, 0x4a44, 0xb3, 0x1c, 0xd1, 0x03, 0xc6, 0xfe, 0xd2, 0x3c);
		public const Guid MF_ASFPROFILE_MINPACKETSIZE = .(0x22587626, 0x47de, 0x4168, 0x87, 0xf5, 0xb5, 0xaa, 0x9b, 0x12, 0xa8, 0xf0);
		public const Guid MF_ASFPROFILE_MAXPACKETSIZE = .(0x22587627, 0x47de, 0x4168, 0x87, 0xf5, 0xb5, 0xaa, 0x9b, 0x12, 0xa8, 0xf0);
		public const Guid MF_ASFSTREAMCONFIG_LEAKYBUCKET1 = .(0xc69b5901, 0xea1a, 0x4c9b, 0xb6, 0x92, 0xe2, 0xa0, 0xd2, 0x9a, 0x8a, 0xdd);
		public const Guid MF_ASFSTREAMCONFIG_LEAKYBUCKET2 = .(0xc69b5902, 0xea1a, 0x4c9b, 0xb6, 0x92, 0xe2, 0xa0, 0xd2, 0x9a, 0x8a, 0xdd);
		public const Guid MFASFSampleExtension_SampleDuration = .(0xc6bd9450, 0x867f, 0x4907, 0x83, 0xa3, 0xc7, 0x79, 0x21, 0xb7, 0x33, 0xad);
		public const Guid MFASFSampleExtension_OutputCleanPoint = .(0xf72a3c6f, 0x6eb4, 0x4ebc, 0xb1, 0x92, 0x09, 0xad, 0x97, 0x59, 0xe8, 0x28);
		public const Guid MFASFSampleExtension_SMPTE = .(0x399595ec, 0x8667, 0x4e2d, 0x8f, 0xdb, 0x98, 0x81, 0x4c, 0xe7, 0x6c, 0x1e);
		public const Guid MFASFSampleExtension_FileName = .(0xe165ec0e, 0x19ed, 0x45d7, 0xb4, 0xa7, 0x25, 0xcb, 0xd1, 0xe2, 0x8e, 0x9b);
		public const Guid MFASFSampleExtension_ContentType = .(0xd590dc20, 0x07bc, 0x436c, 0x9c, 0xf7, 0xf3, 0xbb, 0xfb, 0xf1, 0xa4, 0xdc);
		public const Guid MFASFSampleExtension_PixelAspectRatio = .(0x1b1ee554, 0xf9ea, 0x4bc8, 0x82, 0x1a, 0x37, 0x6b, 0x74, 0xe4, 0xc4, 0xb8);
		public const Guid MFASFSampleExtension_Encryption_SampleID = .(0x6698b84e, 0x0afa, 0x4330, 0xae, 0xb2, 0x1c, 0x0a, 0x98, 0xd7, 0xa4, 0x4d);
		public const Guid MFASFSampleExtension_Encryption_KeyID = .(0x76376591, 0x795f, 0x4da1, 0x86, 0xed, 0x9d, 0x46, 0xec, 0xa1, 0x09, 0xa9);
		public const Guid MFASFMutexType_Language = .(0x72178c2b, 0xe45b, 0x11d5, 0xbc, 0x2a, 0x00, 0xb0, 0xd0, 0xf3, 0xf4, 0xab);
		public const Guid MFASFMutexType_Bitrate = .(0x72178c2c, 0xe45b, 0x11d5, 0xbc, 0x2a, 0x00, 0xb0, 0xd0, 0xf3, 0xf4, 0xab);
		public const Guid MFASFMutexType_Presentation = .(0x72178c2d, 0xe45b, 0x11d5, 0xbc, 0x2a, 0x00, 0xb0, 0xd0, 0xf3, 0xf4, 0xab);
		public const Guid MFASFMutexType_Unknown = .(0x72178c2e, 0xe45b, 0x11d5, 0xbc, 0x2a, 0x00, 0xb0, 0xd0, 0xf3, 0xf4, 0xab);
		public const Guid MFASFSPLITTER_PACKET_BOUNDARY = .(0xfe584a05, 0xe8d6, 0x42e3, 0xb1, 0x76, 0xf1, 0x21, 0x17, 0x05, 0xfb, 0x6f);
		public const Guid MFASFINDEXER_TYPE_TIMECODE = .(0x49815231, 0x6bad, 0x44fd, 0x81, 0x0a, 0x3f, 0x60, 0x98, 0x4e, 0xc7, 0xfd);
		public const Guid MF_CAPTURE_ENGINE_INITIALIZED = .(0x219992bc, 0xcf92, 0x4531, 0xa1, 0xae, 0x96, 0xe1, 0xe8, 0x86, 0xc8, 0xf1);
		public const Guid MF_CAPTURE_ENGINE_PREVIEW_STARTED = .(0xa416df21, 0xf9d3, 0x4a74, 0x99, 0x1b, 0xb8, 0x17, 0x29, 0x89, 0x52, 0xc4);
		public const Guid MF_CAPTURE_ENGINE_PREVIEW_STOPPED = .(0x13d5143c, 0x1edd, 0x4e50, 0xa2, 0xef, 0x35, 0x0a, 0x47, 0x67, 0x80, 0x60);
		public const Guid MF_CAPTURE_ENGINE_RECORD_STARTED = .(0xac2b027b, 0xddf9, 0x48a0, 0x89, 0xbe, 0x38, 0xab, 0x35, 0xef, 0x45, 0xc0);
		public const Guid MF_CAPTURE_ENGINE_RECORD_STOPPED = .(0x55e5200a, 0xf98f, 0x4c0d, 0xa9, 0xec, 0x9e, 0xb2, 0x5e, 0xd3, 0xd7, 0x73);
		public const Guid MF_CAPTURE_ENGINE_PHOTO_TAKEN = .(0x3c50c445, 0x7304, 0x48eb, 0x86, 0x5d, 0xbb, 0xa1, 0x9b, 0xa3, 0xaf, 0x5c);
		public const Guid MF_CAPTURE_SOURCE_CURRENT_DEVICE_MEDIA_TYPE_SET = .(0xe7e75e4c, 0x039c, 0x4410, 0x81, 0x5b, 0x87, 0x41, 0x30, 0x7b, 0x63, 0xaa);
		public const Guid MF_CAPTURE_ENGINE_ERROR = .(0x46b89fc6, 0x33cc, 0x4399, 0x9d, 0xad, 0x78, 0x4d, 0xe7, 0x7d, 0x58, 0x7c);
		public const Guid MF_CAPTURE_ENGINE_EFFECT_ADDED = .(0xaa8dc7b5, 0xa048, 0x4e13, 0x8e, 0xbe, 0xf2, 0x3c, 0x46, 0xc8, 0x30, 0xc1);
		public const Guid MF_CAPTURE_ENGINE_EFFECT_REMOVED = .(0xc6e8db07, 0xfb09, 0x4a48, 0x89, 0xc6, 0xbf, 0x92, 0xa0, 0x42, 0x22, 0xc9);
		public const Guid MF_CAPTURE_ENGINE_ALL_EFFECTS_REMOVED = .(0xfded7521, 0x8ed8, 0x431a, 0xa9, 0x6b, 0xf3, 0xe2, 0x56, 0x5e, 0x98, 0x1c);
		public const Guid MF_CAPTURE_SINK_PREPARED = .(0x7bfce257, 0x12b1, 0x4409, 0x8c, 0x34, 0xd4, 0x45, 0xda, 0xab, 0x75, 0x78);
		public const Guid MF_CAPTURE_ENGINE_OUTPUT_MEDIA_TYPE_SET = .(0xcaaad994, 0x83ec, 0x45e9, 0xa3, 0x0a, 0x1f, 0x20, 0xaa, 0xdb, 0x98, 0x31);
		public const Guid MF_CAPTURE_ENGINE_CAMERA_STREAM_BLOCKED = .(0xa4209417, 0x8d39, 0x46f3, 0xb7, 0x59, 0x59, 0x12, 0x52, 0x8f, 0x42, 0x07);
		public const Guid MF_CAPTURE_ENGINE_CAMERA_STREAM_UNBLOCKED = .(0x9be9eef0, 0xcdaf, 0x4717, 0x85, 0x64, 0x83, 0x4a, 0xae, 0x66, 0x41, 0x5c);
		public const Guid MF_CAPTURE_ENGINE_D3D_MANAGER = .(0x76e25e7b, 0xd595, 0x4283, 0x96, 0x2c, 0xc5, 0x94, 0xaf, 0xd7, 0x8d, 0xdf);
		public const Guid MF_CAPTURE_ENGINE_RECORD_SINK_VIDEO_MAX_UNPROCESSED_SAMPLES = .(0xb467f705, 0x7913, 0x4894, 0x9d, 0x42, 0xa2, 0x15, 0xfe, 0xa2, 0x3d, 0xa9);
		public const Guid MF_CAPTURE_ENGINE_RECORD_SINK_AUDIO_MAX_UNPROCESSED_SAMPLES = .(0x1cddb141, 0xa7f4, 0x4d58, 0x98, 0x96, 0x4d, 0x15, 0xa5, 0x3c, 0x4e, 0xfe);
		public const Guid MF_CAPTURE_ENGINE_RECORD_SINK_VIDEO_MAX_PROCESSED_SAMPLES = .(0xe7b4a49e, 0x382c, 0x4aef, 0xa9, 0x46, 0xae, 0xd5, 0x49, 0x0b, 0x71, 0x11);
		public const Guid MF_CAPTURE_ENGINE_RECORD_SINK_AUDIO_MAX_PROCESSED_SAMPLES = .(0x9896e12a, 0xf707, 0x4500, 0xb6, 0xbd, 0xdb, 0x8e, 0xb8, 0x10, 0xb5, 0x0f);
		public const Guid MF_CAPTURE_ENGINE_USE_AUDIO_DEVICE_ONLY = .(0x1c8077da, 0x8466, 0x4dc4, 0x8b, 0x8e, 0x27, 0x6b, 0x3f, 0x85, 0x92, 0x3b);
		public const Guid MF_CAPTURE_ENGINE_USE_VIDEO_DEVICE_ONLY = .(0x7e025171, 0xcf32, 0x4f2e, 0x8f, 0x19, 0x41, 0x05, 0x77, 0xb7, 0x3a, 0x66);
		public const Guid MF_CAPTURE_ENGINE_DISABLE_HARDWARE_TRANSFORMS = .(0xb7c42a6b, 0x3207, 0x4495, 0xb4, 0xe7, 0x81, 0xf9, 0xc3, 0x5d, 0x59, 0x91);
		public const Guid MF_CAPTURE_ENGINE_DISABLE_DXVA = .(0xf9818862, 0x179d, 0x433f, 0xa3, 0x2f, 0x74, 0xcb, 0xcf, 0x74, 0x46, 0x6d);
		public const Guid MF_CAPTURE_ENGINE_MEDIASOURCE_CONFIG = .(0xbc6989d2, 0x0fc1, 0x46e1, 0xa7, 0x4f, 0xef, 0xd3, 0x6b, 0xc7, 0x88, 0xde);
		public const Guid MF_CAPTURE_ENGINE_DECODER_MFT_FIELDOFUSE_UNLOCK_Attribute = .(0x2b8ad2e8, 0x7acb, 0x4321, 0xa6, 0x06, 0x32, 0x5c, 0x42, 0x49, 0xf4, 0xfc);
		public const Guid MF_CAPTURE_ENGINE_ENCODER_MFT_FIELDOFUSE_UNLOCK_Attribute = .(0x54c63a00, 0x78d5, 0x422f, 0xaa, 0x3e, 0x5e, 0x99, 0xac, 0x64, 0x92, 0x69);
		public const Guid MF_CAPTURE_ENGINE_ENABLE_CAMERA_STREAMSTATE_NOTIFICATION = .(0x4c808e9d, 0xaaed, 0x4713, 0x90, 0xfb, 0xcb, 0x24, 0x06, 0x4a, 0xb8, 0xda);
		public const Guid MF_CAPTURE_ENGINE_MEDIA_CATEGORY = .(0x8e3f5bd5, 0xdbbf, 0x42f0, 0x85, 0x42, 0xd0, 0x7a, 0x39, 0x71, 0x76, 0x2a);
		public const Guid MF_CAPTURE_ENGINE_AUDIO_PROCESSING = .(0x10f1be5e, 0x7e11, 0x410b, 0x97, 0x3d, 0xf4, 0xb6, 0x10, 0x90, 0x00, 0xfe);
		public const Guid MF_CAPTURE_ENGINE_EVENT_GENERATOR_GUID = .(0xabfa8ad5, 0xfc6d, 0x4911, 0x87, 0xe0, 0x96, 0x19, 0x45, 0xf8, 0xf7, 0xce);
		public const Guid MF_CAPTURE_ENGINE_EVENT_STREAM_INDEX = .(0x82697f44, 0xb1cf, 0x42eb, 0x97, 0x53, 0xf8, 0x6d, 0x64, 0x9c, 0x88, 0x65);
		public const Guid MF_CAPTURE_ENGINE_SELECTEDCAMERAPROFILE = .(0x03160b7e, 0x1c6f, 0x4db2, 0xad, 0x56, 0xa7, 0xc4, 0x30, 0xf8, 0x23, 0x92);
		public const Guid MF_CAPTURE_ENGINE_SELECTEDCAMERAPROFILE_INDEX = .(0x3ce88613, 0x2214, 0x46c3, 0xb4, 0x17, 0x82, 0xf8, 0xa3, 0x13, 0xc9, 0xc3);
		public const Guid CLSID_MFCaptureEngine = .(0xefce38d3, 0x8914, 0x4674, 0xa7, 0xdf, 0xae, 0x1b, 0x3d, 0x65, 0x4b, 0x8a);
		public const Guid CLSID_MFCaptureEngineClassFactory = .(0xefce38d3, 0x8914, 0x4674, 0xa7, 0xdf, 0xae, 0x1b, 0x3d, 0x65, 0x4b, 0x8a);
		public const Guid MFSampleExtension_DeviceReferenceSystemTime = .(0x6523775a, 0xba2d, 0x405f, 0xb2, 0xc5, 0x01, 0xff, 0x88, 0xe2, 0xe8, 0xf6);
		public const Guid MF_D3D12_SYNCHRONIZATION_OBJECT = .(0x2a7c8d6a, 0x85a6, 0x494d, 0xa0, 0x46, 0x06, 0xea, 0x1a, 0x13, 0x8f, 0x4b);
		public const Guid MF_MT_D3D_RESOURCE_VERSION = .(0x174f1e85, 0xfe26, 0x453d, 0xb5, 0x2e, 0x5b, 0xdd, 0x4e, 0x55, 0xb9, 0x44);
		public const Guid MF_MT_D3D12_CPU_READBACK = .(0x28ee9fe3, 0xd481, 0x46a6, 0xb9, 0x8a, 0x7f, 0x69, 0xd5, 0x28, 0x0e, 0x82);
		public const Guid MF_MT_D3D12_TEXTURE_LAYOUT = .(0x97c85caa, 0x0beb, 0x4ee1, 0x97, 0x15, 0xf2, 0x2f, 0xad, 0x8c, 0x10, 0xf5);
		public const Guid MF_MT_D3D12_RESOURCE_FLAG_ALLOW_RENDER_TARGET = .(0xeeac2585, 0x3430, 0x498c, 0x84, 0xa2, 0x77, 0xb1, 0xbb, 0xa5, 0x70, 0xf6);
		public const Guid MF_MT_D3D12_RESOURCE_FLAG_ALLOW_DEPTH_STENCIL = .(0xb1138dc3, 0x01d5, 0x4c14, 0x9b, 0xdc, 0xcd, 0xc9, 0x33, 0x6f, 0x55, 0xb9);
		public const Guid MF_MT_D3D12_RESOURCE_FLAG_ALLOW_UNORDERED_ACCESS = .(0x82c85647, 0x5057, 0x4960, 0x95, 0x59, 0xf4, 0x5b, 0x8e, 0x27, 0x14, 0x27);
		public const Guid MF_MT_D3D12_RESOURCE_FLAG_DENY_SHADER_RESOURCE = .(0xba06bfac, 0xffe3, 0x474a, 0xab, 0x55, 0x16, 0x1e, 0xe4, 0x41, 0x7a, 0x2e);
		public const Guid MF_MT_D3D12_RESOURCE_FLAG_ALLOW_CROSS_ADAPTER = .(0xa6a1e439, 0x2f96, 0x4ab5, 0x98, 0xdc, 0xad, 0xf7, 0x49, 0x73, 0x50, 0x5d);
		public const Guid MF_MT_D3D12_RESOURCE_FLAG_ALLOW_SIMULTANEOUS_ACCESS = .(0x0a4940b2, 0xcfd6, 0x4738, 0x9d, 0x02, 0x98, 0x11, 0x37, 0x34, 0x01, 0x5a);
		public const Guid MF_SA_D3D12_HEAP_FLAGS = .(0x496b3266, 0xd28f, 0x4f8c, 0x93, 0xa7, 0x4a, 0x59, 0x6b, 0x1a, 0x31, 0xa1);
		public const Guid MF_SA_D3D12_HEAP_TYPE = .(0x56f26a76, 0xbbc1, 0x4ce0, 0xbb, 0x11, 0xe2, 0x23, 0x68, 0xd8, 0x74, 0xed);
		public const Guid MF_SA_D3D12_CLEAR_VALUE = .(0x86ba9a39, 0x0526, 0x495d, 0x9a, 0xb5, 0x54, 0xec, 0x9f, 0xad, 0x6f, 0xc3);
		public const Guid MF_MSE_CALLBACK = .(0x9063a7c0, 0x42c5, 0x4ffd, 0xa8, 0xa8, 0x6f, 0xcf, 0x9e, 0xa3, 0xd0, 0x0c);
		public const Guid MF_MSE_ACTIVELIST_CALLBACK = .(0x949bda0f, 0x4549, 0x46d5, 0xad, 0x7f, 0xb8, 0x46, 0xe1, 0xab, 0x16, 0x52);
		public const Guid MF_MSE_BUFFERLIST_CALLBACK = .(0x42e669b0, 0xd60e, 0x4afb, 0xa8, 0x5b, 0xd8, 0xe5, 0xfe, 0x6b, 0xda, 0xb5);
		public const Guid MF_MSE_VP9_SUPPORT = .(0x92d78429, 0xd88b, 0x4ff0, 0x83, 0x22, 0x80, 0x3e, 0xfa, 0x6e, 0x96, 0x26);
		public const Guid MF_MSE_OPUS_SUPPORT = .(0x4d224cc1, 0x8cc4, 0x48a3, 0xa7, 0xa7, 0xe4, 0xc1, 0x6c, 0xe6, 0x38, 0x8a);
		public const Guid MF_MEDIA_ENGINE_NEEDKEY_CALLBACK = .(0x7ea80843, 0xb6e4, 0x432c, 0x8e, 0xa4, 0x78, 0x48, 0xff, 0xe4, 0x22, 0x0e);
		public const Guid MF_MEDIA_ENGINE_CALLBACK = .(0xc60381b8, 0x83a4, 0x41f8, 0xa3, 0xd0, 0xde, 0x05, 0x07, 0x68, 0x49, 0xa9);
		public const Guid MF_MEDIA_ENGINE_DXGI_MANAGER = .(0x065702da, 0x1094, 0x486d, 0x86, 0x17, 0xee, 0x7c, 0xc4, 0xee, 0x46, 0x48);
		public const Guid MF_MEDIA_ENGINE_EXTENSION = .(0x3109fd46, 0x060d, 0x4b62, 0x8d, 0xcf, 0xfa, 0xff, 0x81, 0x13, 0x18, 0xd2);
		public const Guid MF_MEDIA_ENGINE_PLAYBACK_HWND = .(0xd988879b, 0x67c9, 0x4d92, 0xba, 0xa7, 0x6e, 0xad, 0xd4, 0x46, 0x03, 0x9d);
		public const Guid MF_MEDIA_ENGINE_OPM_HWND = .(0xa0be8ee7, 0x0572, 0x4f2c, 0xa8, 0x01, 0x2a, 0x15, 0x1b, 0xd3, 0xe7, 0x26);
		public const Guid MF_MEDIA_ENGINE_PLAYBACK_VISUAL = .(0x6debd26f, 0x6ab9, 0x4d7e, 0xb0, 0xee, 0xc6, 0x1a, 0x73, 0xff, 0xad, 0x15);
		public const Guid MF_MEDIA_ENGINE_COREWINDOW = .(0xfccae4dc, 0x0b7f, 0x41c2, 0x9f, 0x96, 0x46, 0x59, 0x94, 0x8a, 0xcd, 0xdc);
		public const Guid MF_MEDIA_ENGINE_VIDEO_OUTPUT_FORMAT = .(0x5066893c, 0x8cf9, 0x42bc, 0x8b, 0x8a, 0x47, 0x22, 0x12, 0xe5, 0x27, 0x26);
		public const Guid MF_MEDIA_ENGINE_CONTENT_PROTECTION_FLAGS = .(0xe0350223, 0x5aaf, 0x4d76, 0xa7, 0xc3, 0x06, 0xde, 0x70, 0x89, 0x4d, 0xb4);
		public const Guid MF_MEDIA_ENGINE_CONTENT_PROTECTION_MANAGER = .(0xfdd6dfaa, 0xbd85, 0x4af3, 0x9e, 0x0f, 0xa0, 0x1d, 0x53, 0x9d, 0x87, 0x6a);
		public const Guid MF_MEDIA_ENGINE_AUDIO_ENDPOINT_ROLE = .(0xd2cb93d1, 0x116a, 0x44f2, 0x93, 0x85, 0xf7, 0xd0, 0xfd, 0xa2, 0xfb, 0x46);
		public const Guid MF_MEDIA_ENGINE_AUDIO_CATEGORY = .(0xc8d4c51d, 0x350e, 0x41f2, 0xba, 0x46, 0xfa, 0xeb, 0xbb, 0x08, 0x57, 0xf6);
		public const Guid MF_MEDIA_ENGINE_STREAM_CONTAINS_ALPHA_CHANNEL = .(0x5cbfaf44, 0xd2b2, 0x4cfb, 0x80, 0xa7, 0xd4, 0x29, 0xc7, 0x4c, 0x78, 0x9d);
		public const Guid MF_MEDIA_ENGINE_BROWSER_COMPATIBILITY_MODE = .(0x4e0212e2, 0xe18f, 0x41e1, 0x95, 0xe5, 0xc0, 0xe7, 0xe9, 0x23, 0x5b, 0xc3);
		public const Guid MF_MEDIA_ENGINE_BROWSER_COMPATIBILITY_MODE_IE9 = .(0x052c2d39, 0x40c0, 0x4188, 0xab, 0x86, 0xf8, 0x28, 0x27, 0x3b, 0x75, 0x22);
		public const Guid MF_MEDIA_ENGINE_BROWSER_COMPATIBILITY_MODE_IE10 = .(0x11a47afd, 0x6589, 0x4124, 0xb3, 0x12, 0x61, 0x58, 0xec, 0x51, 0x7f, 0xc3);
		public const Guid MF_MEDIA_ENGINE_BROWSER_COMPATIBILITY_MODE_IE11 = .(0x1cf1315f, 0xce3f, 0x4035, 0x93, 0x91, 0x16, 0x14, 0x2f, 0x77, 0x51, 0x89);
		public const Guid MF_MEDIA_ENGINE_BROWSER_COMPATIBILITY_MODE_IE_EDGE = .(0xa6f3e465, 0x3aca, 0x442c, 0xa3, 0xf0, 0xad, 0x6d, 0xda, 0xd8, 0x39, 0xae);
		public const Guid MF_MEDIA_ENGINE_COMPATIBILITY_MODE = .(0x3ef26ad4, 0xdc54, 0x45de, 0xb9, 0xaf, 0x76, 0xc8, 0xc6, 0x6b, 0xfa, 0x8e);
		public const Guid MF_MEDIA_ENGINE_COMPATIBILITY_MODE_WWA_EDGE = .(0x15b29098, 0x9f01, 0x4e4d, 0xb6, 0x5a, 0xc0, 0x6c, 0x6c, 0x89, 0xda, 0x2a);
		public const Guid MF_MEDIA_ENGINE_COMPATIBILITY_MODE_WIN10 = .(0x5b25e089, 0x6ca7, 0x4139, 0xa2, 0xcb, 0xfc, 0xaa, 0xb3, 0x95, 0x52, 0xa3);
		public const Guid MF_MEDIA_ENGINE_SOURCE_RESOLVER_CONFIG_STORE = .(0x0ac0c497, 0xb3c4, 0x48c9, 0x9c, 0xde, 0xbb, 0x8c, 0xa2, 0x44, 0x2c, 0xa3);
		public const Guid MF_MEDIA_ENGINE_TRACK_ID = .(0x65bea312, 0x4043, 0x4815, 0x8e, 0xab, 0x44, 0xdc, 0xe2, 0xef, 0x8f, 0x2a);
		public const Guid MF_MEDIA_ENGINE_TELEMETRY_APPLICATION_ID = .(0x1e7b273b, 0xa7e4, 0x402a, 0x8f, 0x51, 0xc4, 0x8e, 0x88, 0xa2, 0xca, 0xbc);
		public const Guid MF_MEDIA_ENGINE_SYNCHRONOUS_CLOSE = .(0xc3c2e12f, 0x7e0e, 0x4e43, 0xb9, 0x1c, 0xdc, 0x99, 0x2c, 0xcd, 0xfa, 0x5e);
		public const Guid MF_MEDIA_ENGINE_MEDIA_PLAYER_MODE = .(0x3ddd8d45, 0x5aa1, 0x4112, 0x82, 0xe5, 0x36, 0xf6, 0xa2, 0x19, 0x7e, 0x6e);
		public const Guid CLSID_MFMediaEngineClassFactory = .(0xb44392da, 0x499b, 0x446b, 0xa4, 0xcb, 0x00, 0x5f, 0xea, 0xd0, 0xe6, 0xd5);
		public const Guid MF_MEDIA_ENGINE_TIMEDTEXT = .(0x805ea411, 0x92e0, 0x4e59, 0x9b, 0x6e, 0x5c, 0x7d, 0x79, 0x15, 0xe6, 0x4f);
		public const Guid MF_MEDIA_ENGINE_CONTINUE_ON_CODEC_ERROR = .(0xdbcdb7f9, 0x48e4, 0x4295, 0xb7, 0x0d, 0xd5, 0x18, 0x23, 0x4e, 0xeb, 0x38);
		public const Guid MF_MEDIA_ENGINE_EME_CALLBACK = .(0x494553a7, 0xa481, 0x4cb7, 0xbe, 0xc5, 0x38, 0x09, 0x03, 0x51, 0x37, 0x31);
		public const Guid CLSID_MPEG2DLNASink = .(0xfa5fe7c5, 0x6a1d, 0x4b11, 0xb4, 0x1f, 0xf9, 0x59, 0xd6, 0xc7, 0x65, 0x00);
		public const Guid MF_MP2DLNA_USE_MMCSS = .(0x54f3e2ee, 0xa2a2, 0x497d, 0x98, 0x34, 0x97, 0x3a, 0xfd, 0xe5, 0x21, 0xeb);
		public const Guid MF_MP2DLNA_VIDEO_BIT_RATE = .(0xe88548de, 0x73b4, 0x42d7, 0x9c, 0x75, 0xad, 0xfa, 0x0a, 0x2a, 0x6e, 0x4c);
		public const Guid MF_MP2DLNA_AUDIO_BIT_RATE = .(0x2d1c070e, 0x2b5f, 0x4ab3, 0xa7, 0xe6, 0x8d, 0x94, 0x3b, 0xa8, 0xd0, 0x0a);
		public const Guid MF_MP2DLNA_ENCODE_QUALITY = .(0xb52379d7, 0x1d46, 0x4fb6, 0xa3, 0x17, 0xa4, 0xa5, 0xf6, 0x09, 0x59, 0xf8);
		public const Guid MF_MP2DLNA_STATISTICS = .(0x75e488a3, 0xd5ad, 0x4898, 0x85, 0xe0, 0xbc, 0xce, 0x24, 0xa7, 0x22, 0xd7);
		public const Guid CLSID_MFReadWriteClassFactory = .(0x48e2ed0f, 0x98c2, 0x4a37, 0xbe, 0xd5, 0x16, 0x63, 0x12, 0xdd, 0xd8, 0x3f);
		public const Guid CLSID_MFSourceReader = .(0x1777133c, 0x0881, 0x411b, 0xa5, 0x77, 0xad, 0x54, 0x5f, 0x07, 0x14, 0xc4);
		public const Guid MF_SOURCE_READER_ASYNC_CALLBACK = .(0x1e3dbeac, 0xbb43, 0x4c35, 0xb5, 0x07, 0xcd, 0x64, 0x44, 0x64, 0xc9, 0x65);
		public const Guid MF_SOURCE_READER_D3D_MANAGER = .(0xec822da2, 0xe1e9, 0x4b29, 0xa0, 0xd8, 0x56, 0x3c, 0x71, 0x9f, 0x52, 0x69);
		public const Guid MF_SOURCE_READER_DISABLE_DXVA = .(0xaa456cfd, 0x3943, 0x4a1e, 0xa7, 0x7d, 0x18, 0x38, 0xc0, 0xea, 0x2e, 0x35);
		public const Guid MF_SOURCE_READER_MEDIASOURCE_CONFIG = .(0x9085abeb, 0x0354, 0x48f9, 0xab, 0xb5, 0x20, 0x0d, 0xf8, 0x38, 0xc6, 0x8e);
		public const Guid MF_SOURCE_READER_MEDIASOURCE_CHARACTERISTICS = .(0x6d23f5c8, 0xc5d7, 0x4a9b, 0x99, 0x71, 0x5d, 0x11, 0xf8, 0xbc, 0xa8, 0x80);
		public const Guid MF_SOURCE_READER_ENABLE_VIDEO_PROCESSING = .(0xfb394f3d, 0xccf1, 0x42ee, 0xbb, 0xb3, 0xf9, 0xb8, 0x45, 0xd5, 0x68, 0x1d);
		public const Guid MF_SOURCE_READER_ENABLE_ADVANCED_VIDEO_PROCESSING = .(0x0f81da2c, 0xb537, 0x4672, 0xa8, 0xb2, 0xa6, 0x81, 0xb1, 0x73, 0x07, 0xa3);
		public const Guid MF_SOURCE_READER_DISABLE_CAMERA_PLUGINS = .(0x9d3365dd, 0x058f, 0x4cfb, 0x9f, 0x97, 0xb3, 0x14, 0xcc, 0x99, 0xc8, 0xad);
		public const Guid MF_SOURCE_READER_DISCONNECT_MEDIASOURCE_ON_SHUTDOWN = .(0x56b67165, 0x219e, 0x456d, 0xa2, 0x2e, 0x2d, 0x30, 0x04, 0xc7, 0xfe, 0x56);
		public const Guid MF_SOURCE_READER_ENABLE_TRANSCODE_ONLY_TRANSFORMS = .(0xdfd4f008, 0xb5fd, 0x4e78, 0xae, 0x44, 0x62, 0xa1, 0xe6, 0x7b, 0xbe, 0x27);
		public const Guid MF_SOURCE_READER_D3D11_BIND_FLAGS = .(0x33f3197b, 0xf73a, 0x4e14, 0x8d, 0x85, 0x0e, 0x4c, 0x43, 0x68, 0x78, 0x8d);
		public const Guid CLSID_MFSinkWriter = .(0xa3bbfb17, 0x8273, 0x4e52, 0x9e, 0x0e, 0x97, 0x39, 0xdc, 0x88, 0x79, 0x90);
		public const Guid MF_SINK_WRITER_ASYNC_CALLBACK = .(0x48cb183e, 0x7b0b, 0x46f4, 0x82, 0x2e, 0x5e, 0x1d, 0x2d, 0xda, 0x43, 0x54);
		public const Guid MF_SINK_WRITER_DISABLE_THROTTLING = .(0x08b845d8, 0x2b74, 0x4afe, 0x9d, 0x53, 0xbe, 0x16, 0xd2, 0xd5, 0xae, 0x4f);
		public const Guid MF_SINK_WRITER_D3D_MANAGER = .(0xec822da2, 0xe1e9, 0x4b29, 0xa0, 0xd8, 0x56, 0x3c, 0x71, 0x9f, 0x52, 0x69);
		public const Guid MF_SINK_WRITER_ENCODER_CONFIG = .(0xad91cd04, 0xa7cc, 0x4ac7, 0x99, 0xb6, 0xa5, 0x7b, 0x9a, 0x4a, 0x7c, 0x70);
		public const Guid MF_READWRITE_DISABLE_CONVERTERS = .(0x98d5b065, 0x1374, 0x4847, 0x8d, 0x5d, 0x31, 0x52, 0x0f, 0xee, 0x71, 0x56);
		public const Guid MF_READWRITE_ENABLE_HARDWARE_TRANSFORMS = .(0xa634a91c, 0x822b, 0x41b9, 0xa4, 0x94, 0x4d, 0xe4, 0x64, 0x36, 0x12, 0xb0);
		public const Guid MF_READWRITE_MMCSS_CLASS = .(0x39384300, 0xd0eb, 0x40b1, 0x87, 0xa0, 0x33, 0x18, 0x87, 0x1b, 0x5a, 0x53);
		public const Guid MF_READWRITE_MMCSS_PRIORITY = .(0x43ad19ce, 0xf33f, 0x4ba9, 0xa5, 0x80, 0xe4, 0xcd, 0x12, 0xf2, 0xd1, 0x44);
		public const Guid MF_READWRITE_MMCSS_CLASS_AUDIO = .(0x430847da, 0x0890, 0x4b0e, 0x93, 0x8c, 0x05, 0x43, 0x32, 0xc5, 0x47, 0xe1);
		public const Guid MF_READWRITE_MMCSS_PRIORITY_AUDIO = .(0x273db885, 0x2de2, 0x4db2, 0xa6, 0xa7, 0xfd, 0xb6, 0x6f, 0xb4, 0x0b, 0x61);
		public const Guid MF_READWRITE_D3D_OPTIONAL = .(0x216479d9, 0x3071, 0x42ca, 0xbb, 0x6c, 0x4c, 0x22, 0x10, 0x2e, 0x1d, 0x18);
		public const Guid MF_MEDIASINK_AUTOFINALIZE_SUPPORTED = .(0x48c131be, 0x135a, 0x41cb, 0x82, 0x90, 0x03, 0x65, 0x25, 0x09, 0xc9, 0x99);
		public const Guid MF_MEDIASINK_ENABLE_AUTOFINALIZE = .(0x34014265, 0xcb7e, 0x4cde, 0xac, 0x7c, 0xef, 0xfd, 0x3b, 0x3c, 0x25, 0x30);
		public const Guid MF_READWRITE_ENABLE_AUTOFINALIZE = .(0xdd7ca129, 0x8cd1, 0x4dc5, 0x9d, 0xde, 0xce, 0x16, 0x86, 0x75, 0xde, 0x61);
		public const Guid MFP_POSITIONTYPE_100NS = .(0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		public const Guid MF_MEDIA_SHARING_ENGINE_DEVICE_NAME = .(0x771e05d1, 0x862f, 0x4299, 0x95, 0xac, 0xae, 0x81, 0xfd, 0x14, 0xf3, 0xe7);
		public const Guid MF_MEDIA_SHARING_ENGINE_DEVICE = .(0xb461c58a, 0x7a08, 0x4b98, 0x99, 0xa8, 0x70, 0xfd, 0x5f, 0x3b, 0xad, 0xfd);
		public const Guid CLSID_MFMediaSharingEngineClassFactory = .(0xf8e307fb, 0x6d45, 0x4ad3, 0x99, 0x93, 0x66, 0xcd, 0x5a, 0x52, 0x96, 0x59);
		public const Guid CLSID_MFImageSharingEngineClassFactory = .(0xb22c3339, 0x87f3, 0x4059, 0xa0, 0xc5, 0x03, 0x7a, 0xa9, 0x70, 0x7e, 0xaf);
		public const Guid CLSID_PlayToSourceClassFactory = .(0xda17539a, 0x3dc3, 0x42c1, 0xa7, 0x49, 0xa1, 0x83, 0xb5, 0x1f, 0x08, 0x5e);
		public const Guid GUID_PlayToService = .(0xf6a8ff9d, 0x9e14, 0x41c9, 0xbf, 0x0f, 0x12, 0x0a, 0x2b, 0x3c, 0xe1, 0x20);
		public const Guid GUID_NativeDeviceService = .(0xef71e53c, 0x52f4, 0x43c5, 0xb8, 0x6a, 0xad, 0x6c, 0xb2, 0x16, 0xa6, 0x1e);
		public const Guid MF_CONTENTDECRYPTIONMODULE_SERVICE = .(0x15320c45, 0xff80, 0x484a, 0x9d, 0xcb, 0x0d, 0xf8, 0x94, 0xe6, 0x9a, 0x01);
		public const Guid MF_VIRTUALCAMERA_CONFIGURATION_APP_PACKAGE_FAMILY_NAME = .(0x658abe51, 0x8044, 0x462e, 0x97, 0xea, 0xe6, 0x76, 0xfd, 0x72, 0x05, 0x5f);
		public const Guid MF_FRAMESERVER_VCAMEVENT_EXTENDED_SOURCE_INITIALIZE = .(0xe52c4dff, 0xe46d, 0x4d0b, 0xbc, 0x75, 0xdd, 0xd4, 0xc8, 0x72, 0x3f, 0x96);
		public const Guid MF_FRAMESERVER_VCAMEVENT_EXTENDED_SOURCE_START = .(0xb1eeb989, 0xb456, 0x4f4a, 0xae, 0x40, 0x07, 0x9c, 0x28, 0xe2, 0x4a, 0xf8);
		public const Guid MF_FRAMESERVER_VCAMEVENT_EXTENDED_SOURCE_STOP = .(0xb7fe7a61, 0xfe91, 0x415e, 0x86, 0x08, 0xd3, 0x7d, 0xed, 0xb1, 0xa5, 0x8b);
		public const Guid MF_FRAMESERVER_VCAMEVENT_EXTENDED_SOURCE_UNINITIALIZE = .(0xa0ebaba7, 0xa422, 0x4e33, 0x84, 0x01, 0xb3, 0x7d, 0x28, 0x00, 0xaa, 0x67);
		public const Guid MF_FRAMESERVER_VCAMEVENT_EXTENDED_PIPELINE_SHUTDOWN = .(0x45a81b31, 0x43f8, 0x4e5d, 0x8c, 0xe2, 0x22, 0xdc, 0xe0, 0x26, 0x99, 0x6d);
		public const Guid MF_FRAMESERVER_VCAMEVENT_EXTENDED_CUSTOM_EVENT = .(0x6e59489c, 0x47d3, 0x4467, 0x83, 0xef, 0x12, 0xd3, 0x4e, 0x87, 0x16, 0x65);
		
		// --- Enums ---
		
		public enum MEDIA_EVENT_GENERATOR_GET_EVENT_FLAGS : uint32
		{
			NONE = 0,
			NO_WAIT = 1,
		}
		public enum MF_Plugin_Type : int32
		{
			MFT = 0,
			MediaSource = 1,
			MFT_MatchOutputType = 2,
			Other = -1,
		}
		public enum D3D12_VIDEO_FIELD_TYPE : int32
		{
			NONE = 0,
			INTERLACED_TOP_FIELD_FIRST = 1,
			INTERLACED_BOTTOM_FIELD_FIRST = 2,
		}
		public enum D3D12_VIDEO_FRAME_STEREO_FORMAT : int32
		{
			NONE = 0,
			MONO = 1,
			HORIZONTAL = 2,
			VERTICAL = 3,
			SEPARATE = 4,
		}
		public enum D3D12_VIDEO_FRAME_CODED_INTERLACE_TYPE : int32
		{
			NONE = 0,
			FIELD_BASED = 1,
		}
		public enum D3D12_FEATURE_VIDEO : int32
		{
			DECODE_SUPPORT = 0,
			DECODE_PROFILES = 1,
			DECODE_FORMATS = 2,
			DECODE_CONVERSION_SUPPORT = 3,
			PROCESS_SUPPORT = 5,
			PROCESS_MAX_INPUT_STREAMS = 6,
			PROCESS_REFERENCE_INFO = 7,
			DECODER_HEAP_SIZE = 8,
			PROCESSOR_SIZE = 9,
			DECODE_PROFILE_COUNT = 10,
			DECODE_FORMAT_COUNT = 11,
			ARCHITECTURE = 17,
			DECODE_HISTOGRAM = 18,
			FEATURE_AREA_SUPPORT = 19,
			MOTION_ESTIMATOR = 20,
			MOTION_ESTIMATOR_SIZE = 21,
			EXTENSION_COMMAND_COUNT = 22,
			EXTENSION_COMMANDS = 23,
			EXTENSION_COMMAND_PARAMETER_COUNT = 24,
			EXTENSION_COMMAND_PARAMETERS = 25,
			EXTENSION_COMMAND_SUPPORT = 26,
			EXTENSION_COMMAND_SIZE = 27,
			DECODE_PROTECTED_RESOURCES = 28,
			PROCESS_PROTECTED_RESOURCES = 29,
			MOTION_ESTIMATOR_PROTECTED_RESOURCES = 30,
			DECODER_HEAP_SIZE1 = 31,
			PROCESSOR_SIZE1 = 32,
		}
		public enum D3D12_BITSTREAM_ENCRYPTION_TYPE : int32
		{
			TYPE_NONE = 0,
		}
		public enum D3D12_VIDEO_PROCESS_FILTER : int32
		{
			BRIGHTNESS = 0,
			CONTRAST = 1,
			HUE = 2,
			SATURATION = 3,
			NOISE_REDUCTION = 4,
			EDGE_ENHANCEMENT = 5,
			ANAMORPHIC_SCALING = 6,
			STEREO_ADJUSTMENT = 7,
		}
		public enum D3D12_VIDEO_PROCESS_FILTER_FLAGS : uint32
		{
			NONE = 0,
			BRIGHTNESS = 1,
			CONTRAST = 2,
			HUE = 4,
			SATURATION = 8,
			NOISE_REDUCTION = 16,
			EDGE_ENHANCEMENT = 32,
			ANAMORPHIC_SCALING = 64,
			STEREO_ADJUSTMENT = 128,
		}
		public enum D3D12_VIDEO_PROCESS_DEINTERLACE_FLAGS : uint32
		{
			NONE = 0,
			BOB = 1,
			CUSTOM = 2147483648,
		}
		public enum D3D12_VIDEO_PROCESS_ALPHA_FILL_MODE : int32
		{
			OPAQUE = 0,
			BACKGROUND = 1,
			DESTINATION = 2,
			SOURCE_STREAM = 3,
		}
		public enum D3D12_VIDEO_DECODE_TIER : int32
		{
			NOT_SUPPORTED = 0,
			_1 = 1,
			_2 = 2,
			_3 = 3,
		}
		public enum D3D12_VIDEO_DECODE_SUPPORT_FLAGS : uint32
		{
			NONE = 0,
			SUPPORTED = 1,
		}
		public enum D3D12_VIDEO_DECODE_CONFIGURATION_FLAGS : uint32
		{
			NONE = 0,
			HEIGHT_ALIGNMENT_MULTIPLE_32_REQUIRED = 1,
			POST_PROCESSING_SUPPORTED = 2,
			REFERENCE_ONLY_ALLOCATIONS_REQUIRED = 4,
			ALLOW_RESOLUTION_CHANGE_ON_NON_KEY_FRAME = 8,
		}
		public enum D3D12_VIDEO_DECODE_STATUS : int32
		{
			OK = 0,
			CONTINUE = 1,
			CONTINUE_SKIP_DISPLAY = 2,
			RESTART = 3,
			RATE_EXCEEDED = 4,
		}
		public enum D3D12_VIDEO_DECODE_ARGUMENT_TYPE : int32
		{
			PICTURE_PARAMETERS = 0,
			INVERSE_QUANTIZATION_MATRIX = 1,
			SLICE_CONTROL = 2,
			MAX_VALID = 3,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT : int32
		{
			Y = 0,
			U = 1,
			V = 2,
			R = 0,
			G = 1,
			B = 2,
			A = 3,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_FLAGS : uint32
		{
			NONE = 0,
			Y = 1,
			U = 2,
			V = 4,
			R = 1,
			G = 2,
			B = 4,
			A = 8,
		}
		public enum D3D12_VIDEO_DECODE_CONVERSION_SUPPORT_FLAGS : uint32
		{
			NONE = 0,
			SUPPORTED = 1,
		}
		public enum D3D12_VIDEO_SCALE_SUPPORT_FLAGS : uint32
		{
			NONE = 0,
			POW2_ONLY = 1,
			EVEN_DIMENSIONS_ONLY = 2,
		}
		public enum D3D12_VIDEO_PROCESS_FEATURE_FLAGS : uint32
		{
			NONE = 0,
			ALPHA_FILL = 1,
			LUMA_KEY = 2,
			STEREO = 4,
			ROTATION = 8,
			FLIP = 16,
			ALPHA_BLENDING = 32,
			PIXEL_ASPECT_RATIO = 64,
		}
		public enum D3D12_VIDEO_PROCESS_AUTO_PROCESSING_FLAGS : uint32
		{
			NONE = 0,
			DENOISE = 1,
			DERINGING = 2,
			EDGE_ENHANCEMENT = 4,
			COLOR_CORRECTION = 8,
			FLESH_TONE_MAPPING = 16,
			IMAGE_STABILIZATION = 32,
			SUPER_RESOLUTION = 64,
			ANAMORPHIC_SCALING = 128,
			CUSTOM = 2147483648,
		}
		public enum D3D12_VIDEO_PROCESS_ORIENTATION : int32
		{
			DEFAULT = 0,
			FLIP_HORIZONTAL = 1,
			CLOCKWISE_90 = 2,
			CLOCKWISE_90_FLIP_HORIZONTAL = 3,
			CLOCKWISE_180 = 4,
			FLIP_VERTICAL = 5,
			CLOCKWISE_270 = 6,
			CLOCKWISE_270_FLIP_HORIZONTAL = 7,
		}
		public enum D3D12_VIDEO_PROCESS_INPUT_STREAM_FLAGS : uint32
		{
			NONE = 0,
			FRAME_DISCONTINUITY = 1,
			FRAME_REPEAT = 2,
		}
		public enum D3D12_VIDEO_PROCESS_SUPPORT_FLAGS : uint32
		{
			NONE = 0,
			SUPPORTED = 1,
		}
		public enum D3D12_VIDEO_MOTION_ESTIMATOR_SEARCH_BLOCK_SIZE : int32
		{
			_8X8 = 0,
			_16X16 = 1,
		}
		public enum D3D12_VIDEO_MOTION_ESTIMATOR_SEARCH_BLOCK_SIZE_FLAGS : uint32
		{
			NONE = 0,
			_8X8 = 1,
			_16X16 = 2,
		}
		public enum D3D12_VIDEO_MOTION_ESTIMATOR_VECTOR_PRECISION : int32
		{
			PRECISION_QUARTER_PEL = 0,
		}
		public enum D3D12_VIDEO_MOTION_ESTIMATOR_VECTOR_PRECISION_FLAGS : uint32
		{
			NONE = 0,
			QUARTER_PEL = 1,
		}
		public enum D3D12_VIDEO_PROTECTED_RESOURCE_SUPPORT_FLAGS : uint32
		{
			NONE = 0,
			SUPPORTED = 1,
		}
		public enum D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_STAGE : int32
		{
			CREATION = 0,
			INITIALIZATION = 1,
			EXECUTION = 2,
			CAPS_INPUT = 3,
			CAPS_OUTPUT = 4,
			DEVICE_EXECUTE_INPUT = 5,
			DEVICE_EXECUTE_OUTPUT = 6,
		}
		public enum D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE : int32
		{
			UINT8 = 0,
			UINT16 = 1,
			UINT32 = 2,
			UINT64 = 3,
			SINT8 = 4,
			SINT16 = 5,
			SINT32 = 6,
			SINT64 = 7,
			FLOAT = 8,
			DOUBLE = 9,
			RESOURCE = 10,
		}
		public enum D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_FLAGS : uint32
		{
			NONE = 0,
			READ = 1,
			WRITE = 2,
		}
		public enum D3D12_VIDEO_ENCODER_RATE_CONTROL_MODE : int32
		{
			ABSOLUTE_QP_MAP = 0,
			CQP = 1,
			CBR = 2,
			VBR = 3,
			QVBR = 4,
		}
		public enum D3D12_VIDEO_ENCODER_RATE_CONTROL_FLAGS : uint32
		{
			NONE = 0,
			ENABLE_DELTA_QP = 1,
			ENABLE_FRAME_ANALYSIS = 2,
			ENABLE_QP_RANGE = 4,
			ENABLE_INITIAL_QP = 8,
			ENABLE_MAX_FRAME_SIZE = 16,
			ENABLE_VBV_SIZES = 32,
		}
		public enum D3D12_VIDEO_ENCODER_CODEC : int32
		{
			H264 = 0,
			HEVC = 1,
		}
		public enum D3D12_VIDEO_ENCODER_PROFILE_H264 : int32
		{
			MAIN = 0,
			HIGH = 1,
			HIGH_10 = 2,
		}
		public enum D3D12_VIDEO_ENCODER_PROFILE_HEVC : int32
		{
			MAIN = 0,
			MAIN10 = 1,
		}
		public enum D3D12_VIDEO_ENCODER_LEVELS_H264 : int32
		{
			_1 = 0,
			_1b = 1,
			_11 = 2,
			_12 = 3,
			_13 = 4,
			_2 = 5,
			_21 = 6,
			_22 = 7,
			_3 = 8,
			_31 = 9,
			_32 = 10,
			_4 = 11,
			_41 = 12,
			_42 = 13,
			_5 = 14,
			_51 = 15,
			_52 = 16,
			_6 = 17,
			_61 = 18,
			_62 = 19,
		}
		public enum D3D12_VIDEO_ENCODER_TIER_HEVC : int32
		{
			MAIN = 0,
			HIGH = 1,
		}
		public enum D3D12_VIDEO_ENCODER_LEVELS_HEVC : int32
		{
			_1 = 0,
			_2 = 1,
			_21 = 2,
			_3 = 3,
			_31 = 4,
			_4 = 5,
			_41 = 6,
			_5 = 7,
			_51 = 8,
			_52 = 9,
			_6 = 10,
			_61 = 11,
			_62 = 12,
		}
		public enum D3D12_VIDEO_ENCODER_INTRA_REFRESH_MODE : int32
		{
			NONE = 0,
			ROW_BASED = 1,
		}
		public enum D3D12_VIDEO_ENCODER_FRAME_SUBREGION_LAYOUT_MODE : int32
		{
			FULL_FRAME = 0,
			BYTES_PER_SUBREGION = 1,
			SQUARE_UNITS_PER_SUBREGION_ROW_UNALIGNED = 2,
			UNIFORM_PARTITIONING_ROWS_PER_SUBREGION = 3,
			UNIFORM_PARTITIONING_SUBREGIONS_PER_FRAME = 4,
		}
		public enum D3D12_VIDEO_ENCODER_HEAP_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264_FLAGS : uint32
		{
			NONE = 0,
			CABAC_ENCODING_SUPPORT = 1,
			INTRA_SLICE_CONSTRAINED_ENCODING_SUPPORT = 2,
			BFRAME_LTR_COMBINED_SUPPORT = 4,
			ADAPTIVE_8x8_TRANSFORM_ENCODING_SUPPORT = 8,
			DIRECT_SPATIAL_ENCODING_SUPPORT = 16,
			DIRECT_TEMPORAL_ENCODING_SUPPORT = 32,
			CONSTRAINED_INTRAPREDICTION_SUPPORT = 64,
		}
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODES : int32
		{
			_0_ALL_LUMA_CHROMA_SLICE_BLOCK_EDGES_ALWAYS_FILTERED = 0,
			_1_DISABLE_ALL_SLICE_BLOCK_EDGES = 1,
			_2_DISABLE_SLICE_BOUNDARIES_BLOCKS = 2,
			_3_USE_TWO_STAGE_DEBLOCKING = 3,
			_4_DISABLE_CHROMA_BLOCK_EDGES = 4,
			_5_DISABLE_CHROMA_BLOCK_EDGES_AND_LUMA_BOUNDARIES = 5,
			_6_DISABLE_CHROMA_BLOCK_EDGES_AND_USE_LUMA_TWO_STAGE_DEBLOCKING = 6,
		}
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_FLAGS : uint32
		{
			NONE = 0,
			_0_ALL_LUMA_CHROMA_SLICE_BLOCK_EDGES_ALWAYS_FILTERED = 1,
			_1_DISABLE_ALL_SLICE_BLOCK_EDGES = 2,
			_2_DISABLE_SLICE_BOUNDARIES_BLOCKS = 4,
			_3_USE_TWO_STAGE_DEBLOCKING = 8,
			_4_DISABLE_CHROMA_BLOCK_EDGES = 16,
			_5_DISABLE_CHROMA_BLOCK_EDGES_AND_LUMA_BOUNDARIES = 32,
			_6_DISABLE_CHROMA_BLOCK_EDGES_AND_USE_LUMA_TWO_STAGE_DEBLOCKING = 64,
		}
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC_FLAGS : uint32
		{
			NONE = 0,
			BFRAME_LTR_COMBINED_SUPPORT = 1,
			INTRA_SLICE_CONSTRAINED_ENCODING_SUPPORT = 2,
			CONSTRAINED_INTRAPREDICTION_SUPPORT = 4,
			SAO_FILTER_SUPPORT = 8,
			ASYMETRIC_MOTION_PARTITION_SUPPORT = 16,
			ASYMETRIC_MOTION_PARTITION_REQUIRED = 32,
			TRANSFORM_SKIP_SUPPORT = 64,
			DISABLING_LOOP_FILTER_ACROSS_SLICES_SUPPORT = 128,
			P_FRAMES_IMPLEMENTED_AS_LOW_DELAY_B_FRAMES = 256,
		}
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_CUSIZE : int32
		{
			_8x8 = 0,
			_16x16 = 1,
			_32x32 = 2,
			_64x64 = 3,
		}
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_TUSIZE : int32
		{
			_4x4 = 0,
			_8x8 = 1,
			_16x16 = 2,
			_32x32 = 3,
		}
		public enum D3D12_VIDEO_ENCODER_SUPPORT_FLAGS : uint32
		{
			NONE = 0,
			GENERAL_SUPPORT_OK = 1,
			RATE_CONTROL_RECONFIGURATION_AVAILABLE = 2,
			RESOLUTION_RECONFIGURATION_AVAILABLE = 4,
			RATE_CONTROL_VBV_SIZE_CONFIG_AVAILABLE = 8,
			RATE_CONTROL_FRAME_ANALYSIS_AVAILABLE = 16,
			RECONSTRUCTED_FRAMES_REQUIRE_TEXTURE_ARRAYS = 32,
			RATE_CONTROL_DELTA_QP_AVAILABLE = 64,
			SUBREGION_LAYOUT_RECONFIGURATION_AVAILABLE = 128,
			RATE_CONTROL_ADJUSTABLE_QP_RANGE_AVAILABLE = 256,
			RATE_CONTROL_INITIAL_QP_AVAILABLE = 512,
			RATE_CONTROL_MAX_FRAME_SIZE_AVAILABLE = 1024,
			SEQUENCE_GOP_RECONFIGURATION_AVAILABLE = 2048,
			MOTION_ESTIMATION_PRECISION_MODE_LIMIT_AVAILABLE = 4096,
		}
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_FLAGS : uint32
		{
			NONE = 0,
			USE_CONSTRAINED_INTRAPREDICTION = 1,
			USE_ADAPTIVE_8x8_TRANSFORM = 2,
			ENABLE_CABAC_ENCODING = 4,
			ALLOW_REQUEST_INTRA_CONSTRAINED_SLICES = 8,
		}
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_DIRECT_MODES : int32
		{
			DISABLED = 0,
			TEMPORAL = 1,
			SPATIAL = 2,
		}
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_FLAGS : uint32
		{
			NONE = 0,
			DISABLE_LOOP_FILTER_ACROSS_SLICES = 1,
			ALLOW_REQUEST_INTRA_CONSTRAINED_SLICES = 2,
			ENABLE_SAO_FILTER = 4,
			ENABLE_LONG_TERM_REFERENCES = 8,
			USE_ASYMETRIC_MOTION_PARTITION = 16,
			ENABLE_TRANSFORM_SKIPPING = 32,
			USE_CONSTRAINED_INTRAPREDICTION = 64,
		}
		public enum D3D12_VIDEO_ENCODER_MOTION_ESTIMATION_PRECISION_MODE : int32
		{
			MAXIMUM = 0,
			FULL_PIXEL = 1,
			HALF_PIXEL = 2,
			QUARTER_PIXEL = 3,
		}
		public enum D3D12_VIDEO_ENCODER_VALIDATION_FLAGS : uint32
		{
			NONE = 0,
			CODEC_NOT_SUPPORTED = 1,
			INPUT_FORMAT_NOT_SUPPORTED = 8,
			CODEC_CONFIGURATION_NOT_SUPPORTED = 16,
			RATE_CONTROL_MODE_NOT_SUPPORTED = 32,
			RATE_CONTROL_CONFIGURATION_NOT_SUPPORTED = 64,
			INTRA_REFRESH_MODE_NOT_SUPPORTED = 128,
			SUBREGION_LAYOUT_MODE_NOT_SUPPORTED = 256,
			RESOLUTION_NOT_SUPPORTED_IN_LIST = 512,
			GOP_STRUCTURE_NOT_SUPPORTED = 2048,
		}
		public enum D3D12_VIDEO_ENCODER_FLAGS : uint32
		{
			FLAG_NONE = 0,
		}
		public enum D3D12_VIDEO_ENCODER_FRAME_TYPE_H264 : int32
		{
			I_FRAME = 0,
			P_FRAME = 1,
			B_FRAME = 2,
			IDR_FRAME = 3,
		}
		public enum D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_FLAGS : uint32
		{
			NONE = 0,
			REQUEST_INTRA_CONSTRAINED_SLICES = 1,
		}
		public enum D3D12_VIDEO_ENCODER_FRAME_TYPE_HEVC : int32
		{
			I_FRAME = 0,
			P_FRAME = 1,
			B_FRAME = 2,
			IDR_FRAME = 3,
		}
		public enum D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_HEVC_FLAGS : uint32
		{
			NONE = 0,
			REQUEST_INTRA_CONSTRAINED_SLICES = 1,
		}
		public enum D3D12_VIDEO_ENCODER_PICTURE_CONTROL_FLAGS : uint32
		{
			NONE = 0,
			USED_AS_REFERENCE_PICTURE = 1,
		}
		public enum D3D12_VIDEO_ENCODER_SEQUENCE_CONTROL_FLAGS : uint32
		{
			NONE = 0,
			RESOLUTION_CHANGE = 1,
			RATE_CONTROL_CHANGE = 2,
			SUBREGION_LAYOUT_CHANGE = 4,
			REQUEST_INTRA_REFRESH = 8,
			GOP_SEQUENCE_CHANGE = 16,
		}
		public enum D3D12_VIDEO_ENCODER_ENCODE_ERROR_FLAGS : uint32
		{
			NO_ERROR = 0,
			CODEC_PICTURE_CONTROL_NOT_SUPPORTED = 1,
			SUBREGION_LAYOUT_CONFIGURATION_NOT_SUPPORTED = 2,
			INVALID_REFERENCE_PICTURES = 4,
			RECONFIGURATION_REQUEST_NOT_SUPPORTED = 8,
			INVALID_METADATA_BUFFER_SOURCE = 16,
		}
		public enum WMT_PROP_DATATYPE : int32
		{
			DWORD = 0,
			STRING = 1,
			BINARY = 2,
			BOOL = 3,
			QWORD = 4,
			WORD = 5,
			GUID = 6,
		}
		public enum WMV_DYNAMIC_FLAGS : int32
		{
			BITRATE = 1,
			RESOLUTION = 2,
			COMPLEXITY = 4,
		}
		public enum MF_AUVRHP_ROOMMODEL : int32
		{
			SMALLROOM = 0,
			MEDIUMROOM = 1,
			BIGROOM = 2,
			CUSTUMIZEDROOM = 3,
		}
		public enum AEC_SYSTEM_MODE : int32
		{
			SINGLE_CHANNEL_AEC = 0,
			ADAPTIVE_ARRAY_ONLY = 1,
			OPTIBEAM_ARRAY_ONLY = 2,
			ADAPTIVE_ARRAY_AND_AEC = 3,
			OPTIBEAM_ARRAY_AND_AEC = 4,
			SINGLE_CHANNEL_NSAGC = 5,
			MODE_NOT_SET = 6,
		}
		public enum AEC_VAD_MODE : int32
		{
			DISABLED = 0,
			NORMAL = 1,
			FOR_AGC = 2,
			FOR_SILENCE_SUPPRESSION = 3,
		}
		public enum AEC_INPUT_STREAM : int32
		{
			CAPTURE_STREAM = 0,
			REFERENCE_STREAM = 1,
		}
		public enum MIC_ARRAY_MODE : int32
		{
			SINGLE_CHAN = 0,
			SIMPLE_SUM = 256,
			SINGLE_BEAM = 512,
			FIXED_BEAM = 1024,
			EXTERN_BEAM = 2048,
		}
		public enum MFVideoDSPMode : int32
		{
			Passthrough = 1,
			Stabilization = 4,
		}
		public enum TOC_POS_TYPE : int32
		{
			INHEADER = 0,
			TOPLEVELOBJECT = 1,
		}
		public enum FILE_OPENMODE : int32
		{
			FAIL_IF_NOT_EXIST = 0,
			FAIL_IF_EXIST = 1,
			RESET_IF_EXIST = 2,
			APPEND_IF_EXIST = 3,
			DELETE_IF_EXIST = 4,
		}
		public enum SEEK_ORIGIN : int32
		{
			Begin = 0,
			Current = 1,
		}
		public enum FILE_ACCESSMODE : int32
		{
			READ = 1,
			WRITE = 2,
			READWRITE = 3,
			WRITE_EXCLUSIVE = 4,
		}
		public enum DXVA_SampleFormat : int32
		{
			FormatMask = 255,
			Unknown = 0,
			PreviousFrame = 1,
			ProgressiveFrame = 2,
			FieldInterleavedEvenFirst = 3,
			FieldInterleavedOddFirst = 4,
			FieldSingleEven = 5,
			FieldSingleOdd = 6,
			SubStream = 7,
		}
		public enum DXVA_VideoTransferFunction : int32
		{
			FuncShift = 27,
			FuncMask = -134217728,
			Func_Unknown = 0,
			Func_10 = 1,
			Func_18 = 2,
			Func_20 = 3,
			Func_22 = 4,
			Func_22_709 = 5,
			Func_22_240M = 6,
			Func_22_8bit_sRGB = 7,
			Func_28 = 8,
		}
		public enum DXVA_VideoPrimaries : int32
		{
			PrimariesShift = 22,
			PrimariesMask = 130023424,
			Primaries_Unknown = 0,
			Primaries_reserved = 1,
			Primaries_BT709 = 2,
			Primaries_BT470_2_SysM = 3,
			Primaries_BT470_2_SysBG = 4,
			Primaries_SMPTE170M = 5,
			Primaries_SMPTE240M = 6,
			Primaries_EBU3213 = 7,
			Primaries_SMPTE_C = 8,
		}
		public enum DXVA_VideoLighting : int32
		{
			LightingShift = 18,
			LightingMask = 3932160,
			Lighting_Unknown = 0,
			Lighting_bright = 1,
			Lighting_office = 2,
			Lighting_dim = 3,
			Lighting_dark = 4,
		}
		public enum DXVA_VideoTransferMatrix : int32
		{
			MatrixShift = 15,
			MatrixMask = 229376,
			Matrix_Unknown = 0,
			Matrix_BT709 = 1,
			Matrix_BT601 = 2,
			Matrix_SMPTE240M = 3,
		}
		[AllowDuplicates]
		public enum DXVA_NominalRange : int32
		{
			RangeShift = 12,
			RangeMask = 28672,
			Range_Unknown = 0,
			Range_Normal = 1,
			Range_Wide = 2,
			Range_0_255 = 1,
			Range_16_235 = 2,
			Range_48_208 = 3,
		}
		[AllowDuplicates]
		public enum DXVA_VideoChromaSubsampling : int32
		{
			SubsamplingShift = 8,
			SubsamplingMask = 3840,
			Subsampling_Unknown = 0,
			Subsampling_ProgressiveChroma = 8,
			Subsampling_Horizontally_Cosited = 4,
			Subsampling_Vertically_Cosited = 2,
			Subsampling_Vertically_AlignedChromaPlanes = 1,
			Subsampling_MPEG2 = 5,
			Subsampling_MPEG1 = 1,
			Subsampling_DV_PAL = 6,
			Subsampling_Cosited = 7,
		}
		public enum DXVA_VideoProcessCaps : int32
		{
			None = 0,
			YUV2RGB = 1,
			StretchX = 2,
			StretchY = 4,
			AlphaBlend = 8,
			SubRects = 16,
			SubStreams = 32,
			SubStreamsExtended = 64,
			YUV2RGBExtended = 128,
			AlphaBlendExtended = 256,
		}
		public enum DXVA_DeinterlaceTech : int32
		{
			Unknown = 0,
			BOBLineReplicate = 1,
			BOBVerticalStretch = 2,
			BOBVerticalStretch4Tap = 256,
			MedianFiltering = 4,
			EdgeFiltering = 16,
			FieldAdaptive = 32,
			PixelAdaptive = 64,
			MotionVectorSteered = 128,
		}
		public enum DXVA_SampleFlags : int32
		{
			FlagsMask = 15,
			Flag_Palette_Changed = 1,
			Flag_SrcRect_Changed = 2,
			Flag_DstRect_Changed = 4,
			Flag_ColorData_Changed = 8,
		}
		public enum DXVA_DestinationFlags : int32
		{
			FlagMask = 15,
			Flag_Background_Changed = 1,
			Flag_TargetRect_Changed = 2,
			Flag_ColorData_Changed = 4,
			Flag_Alpha_Changed = 8,
		}
		public enum DXVA_ProcAmpControlProp : int32
		{
			None = 0,
			Brightness = 1,
			Contrast = 2,
			Hue = 4,
			Saturation = 8,
		}
		public enum eAVEncCommonRateControlMode : int32
		{
			CBR = 0,
			PeakConstrainedVBR = 1,
			UnconstrainedVBR = 2,
			Quality = 3,
			LowDelayVBR = 4,
			GlobalVBR = 5,
			GlobalLowDelayVBR = 6,
		}
		public enum eAVEncCommonStreamEndHandling : int32
		{
			DiscardPartial = 0,
			EnsureComplete = 1,
		}
		public enum eAVEncVideoOutputFrameRateConversion : int32
		{
			Disable = 0,
			Enable = 1,
			Alias = 2,
		}
		public enum eAVDecVideoSoftwareDeinterlaceMode : int32
		{
			NoDeinterlacing = 0,
			ProgressiveDeinterlacing = 1,
			BOBDeinterlacing = 2,
			SmartBOBDeinterlacing = 3,
		}
		public enum eAVFastDecodeMode : int32
		{
			Compliant = 0,
			OptimalLF = 1,
			DisableLF = 2,
			Fastest = 32,
		}
		public enum eAVDecVideoH264ErrorConcealment : int32
		{
			Drop = 0,
			Basic = 1,
			Advanced = 2,
			DXVASetBlack = 3,
		}
		public enum eAVDecVideoMPEG2ErrorConcealment : int32
		{
			Off = 0,
			On = 1,
		}
		public enum eAVDecVideoCodecType : int32
		{
			NOTPLAYING = 0,
			MPEG2 = 1,
			H264 = 2,
		}
		public enum eAVDecVideoDXVAMode : int32
		{
			NOTPLAYING = 0,
			SW = 1,
			MC = 2,
			IDCT = 3,
			VLD = 4,
		}
		public enum eAVDecVideoDXVABusEncryption : int32
		{
			NONE = 0,
			PRIVATE = 1,
			AES = 2,
		}
		public enum eAVEncVideoSourceScanType : int32
		{
			Automatic = 0,
			Interlaced = 1,
			Progressive = 2,
		}
		public enum eAVEncVideoOutputScanType : int32
		{
			Progressive = 0,
			Interlaced = 1,
			SameAsInput = 2,
			Automatic = 3,
		}
		public enum eAVEncVideoFilmContent : int32
		{
			VideoOnly = 0,
			FilmOnly = 1,
			Mixed = 2,
		}
		public enum eAVEncVideoChromaResolution : int32
		{
			SameAsSource = 0,
			_444 = 1,
			_422 = 2,
			_420 = 3,
			_411 = 4,
		}
		public enum eAVEncVideoChromaSubsampling : int32
		{
			SameAsSource = 0,
			ProgressiveChroma = 8,
			Horizontally_Cosited = 4,
			Vertically_Cosited = 2,
			Vertically_AlignedChromaPlanes = 1,
		}
		public enum eAVEncVideoColorPrimaries : int32
		{
			SameAsSource = 0,
			Reserved = 1,
			BT709 = 2,
			BT470_2_SysM = 3,
			BT470_2_SysBG = 4,
			SMPTE170M = 5,
			SMPTE240M = 6,
			EBU3231 = 7,
			SMPTE_C = 8,
		}
		public enum eAVEncVideoColorTransferFunction : int32
		{
			SameAsSource = 0,
			_10 = 1,
			_18 = 2,
			_20 = 3,
			_22 = 4,
			_22_709 = 5,
			_22_240M = 6,
			_22_8bit_sRGB = 7,
			_28 = 8,
		}
		public enum eAVEncVideoColorTransferMatrix : int32
		{
			SameAsSource = 0,
			BT709 = 1,
			BT601 = 2,
			SMPTE240M = 3,
		}
		public enum eAVEncVideoColorLighting : int32
		{
			SameAsSource = 0,
			Unknown = 1,
			Bright = 2,
			Office = 3,
			Dim = 4,
			Dark = 5,
		}
		public enum eAVEncVideoColorNominalRange : int32
		{
			SameAsSource = 0,
			_0_255 = 1,
			_16_235 = 2,
			_48_208 = 3,
		}
		public enum eAVEncInputVideoSystem : int32
		{
			Unspecified = 0,
			PAL = 1,
			NTSC = 2,
			SECAM = 3,
			MAC = 4,
			HDV = 5,
			Component = 6,
		}
		public enum eAVEncVideoContentType : int32
		{
			Unknown = 0,
			FixedCameraAngle = 1,
		}
		public enum eAVEncAdaptiveMode : int32
		{
			None = 0,
			Resolution = 1,
			FrameRate = 2,
		}
		public enum eAVScenarioInfo : int32
		{
			Unknown = 0,
			DisplayRemoting = 1,
			VideoConference = 2,
			Archive = 3,
			LiveStreaming = 4,
			CameraRecord = 5,
			DisplayRemotingWithFeatureMap = 6,
		}
		public enum eVideoEncoderDisplayContentType : int32
		{
			Unknown = 0,
			FullScreenVideo = 1,
		}
		public enum eAVEncMuxOutput : int32
		{
			Auto = 0,
			PS = 1,
			TS = 2,
		}
		public enum eAVEncAudioDualMono : int32
		{
			SameAsInput = 0,
			Off = 1,
			On = 2,
		}
		public enum eAVEncAudioInputContent : int32
		{
			Unknown = 0,
			Voice = 1,
			Music = 2,
		}
		public enum eAVEncMPVProfile : int32
		{
			unknown = 0,
			Simple = 1,
			Main = 2,
			High = 3,
			_422 = 4,
		}
		public enum eAVEncMPVLevel : int32
		{
			Low = 1,
			Main = 2,
			High1440 = 3,
			High = 4,
		}
		public enum eAVEncH263VProfile : int32
		{
			Base = 0,
			CompatibilityV2 = 1,
			CompatibilityV1 = 2,
			WirelessV2 = 3,
			WirelessV3 = 4,
			HighCompression = 5,
			Internet = 6,
			Interlace = 7,
			HighLatency = 8,
		}
		[AllowDuplicates]
		public enum eAVEncH264VProfile : int32
		{
			unknown = 0,
			Simple = 66,
			Base = 66,
			Main = 77,
			High = 100,
			_422 = 122,
			High10 = 110,
			_444 = 244,
			Extended = 88,
			ScalableBase = 83,
			ScalableHigh = 86,
			MultiviewHigh = 118,
			StereoHigh = 128,
			ConstrainedBase = 256,
			UCConstrainedHigh = 257,
			UCScalableConstrainedBase = 258,
			UCScalableConstrainedHigh = 259,
		}
		public enum eAVEncH265VProfile : int32
		{
			unknown = 0,
			Main_420_8 = 1,
			Main_420_10 = 2,
			Main_420_12 = 3,
			Main_422_10 = 4,
			Main_422_12 = 5,
			Main_444_8 = 6,
			Main_444_10 = 7,
			Main_444_12 = 8,
			Monochrome_12 = 9,
			Monochrome_16 = 10,
			MainIntra_420_8 = 11,
			MainIntra_420_10 = 12,
			MainIntra_420_12 = 13,
			MainIntra_422_10 = 14,
			MainIntra_422_12 = 15,
			MainIntra_444_8 = 16,
			MainIntra_444_10 = 17,
			MainIntra_444_12 = 18,
			MainIntra_444_16 = 19,
			MainStill_420_8 = 20,
			MainStill_444_8 = 21,
			MainStill_444_16 = 22,
		}
		public enum eAVEncVP9VProfile : int32
		{
			unknown = 0,
			_420_8 = 1,
			_420_10 = 2,
			_420_12 = 3,
		}
		public enum eAVEncH263PictureType : int32
		{
			I = 0,
			P = 1,
			B = 2,
		}
		public enum eAVEncH264PictureType : int32
		{
			IDR = 0,
			P = 1,
			B = 2,
		}
		public enum eAVEncH263VLevel : int32
		{
			H263VLevel1 = 10,
			H263VLevel2 = 20,
			H263VLevel3 = 30,
			H263VLevel4 = 40,
			H263VLevel4_5 = 45,
			H263VLevel5 = 50,
			H263VLevel6 = 60,
			H263VLevel7 = 70,
		}
		[AllowDuplicates]
		public enum eAVEncH264VLevel : int32
		{
			H264VLevel1 = 10,
			H264VLevel1_b = 11,
			H264VLevel1_1 = 11,
			H264VLevel1_2 = 12,
			H264VLevel1_3 = 13,
			H264VLevel2 = 20,
			H264VLevel2_1 = 21,
			H264VLevel2_2 = 22,
			H264VLevel3 = 30,
			H264VLevel3_1 = 31,
			H264VLevel3_2 = 32,
			H264VLevel4 = 40,
			H264VLevel4_1 = 41,
			H264VLevel4_2 = 42,
			H264VLevel5 = 50,
			H264VLevel5_1 = 51,
			H264VLevel5_2 = 52,
		}
		public enum eAVEncH265VLevel : int32
		{
			H265VLevel1 = 30,
			H265VLevel2 = 60,
			H265VLevel2_1 = 63,
			H265VLevel3 = 90,
			H265VLevel3_1 = 93,
			H265VLevel4 = 120,
			H265VLevel4_1 = 123,
			H265VLevel5 = 150,
			H265VLevel5_1 = 153,
			H265VLevel5_2 = 156,
			H265VLevel6 = 180,
			H265VLevel6_1 = 183,
			H265VLevel6_2 = 186,
		}
		public enum eAVEncMPVFrameFieldMode : int32
		{
			FieldMode = 0,
			FrameMode = 1,
		}
		public enum eAVEncMPVSceneDetection : int32
		{
			None = 0,
			InsertIPicture = 1,
			StartNewGOP = 2,
			StartNewLocatableGOP = 3,
		}
		public enum eAVEncMPVScanPattern : int32
		{
			Auto = 0,
			ZigZagScan = 1,
			AlternateScan = 2,
		}
		public enum eAVEncMPVQScaleType : int32
		{
			Auto = 0,
			Linear = 1,
			NonLinear = 2,
		}
		public enum eAVEncMPVIntraVLCTable : int32
		{
			Auto = 0,
			MPEG1 = 1,
			Alternate = 2,
		}
		public enum eAVEncMPALayer : int32
		{
			_1 = 1,
			_2 = 2,
			_3 = 3,
		}
		public enum eAVEncMPACodingMode : int32
		{
			Mono = 0,
			Stereo = 1,
			DualChannel = 2,
			JointStereo = 3,
			Surround = 4,
		}
		public enum eAVEncMPAEmphasisType : int32
		{
			None = 0,
			_50_15 = 1,
			Reserved = 2,
			CCITT_J17 = 3,
		}
		public enum eAVEncDDService : int32
		{
			CM = 0,
			ME = 1,
			VI = 2,
			HI = 3,
			D = 4,
			C = 5,
			E = 6,
			VO = 7,
		}
		public enum eAVEncDDProductionRoomType : int32
		{
			NotIndicated = 0,
			Large = 1,
			Small = 2,
		}
		public enum eAVEncDDDynamicRangeCompressionControl : int32
		{
			None = 0,
			FilmStandard = 1,
			FilmLight = 2,
			MusicStandard = 3,
			MusicLight = 4,
			Speech = 5,
		}
		public enum eAVEncDDSurroundExMode : int32
		{
			NotIndicated = 0,
			No = 1,
			Yes = 2,
		}
		public enum eAVEncDDPreferredStereoDownMixMode : int32
		{
			LtRt = 0,
			LoRo = 1,
		}
		public enum eAVEncDDAtoDConverterType : int32
		{
			Standard = 0,
			HDCD = 1,
		}
		public enum eAVEncDDHeadphoneMode : int32
		{
			NotIndicated = 0,
			NotEncoded = 1,
			Encoded = 2,
		}
		public enum eAVDecVideoInputScanType : int32
		{
			Unknown = 0,
			Progressive = 1,
			Interlaced_UpperFieldFirst = 2,
			Interlaced_LowerFieldFirst = 3,
		}
		public enum eAVDecVideoSWPowerLevel : int32
		{
			BatteryLife = 0,
			Balanced = 50,
			VideoQuality = 100,
		}
		public enum eAVDecAACDownmixMode : int32
		{
			ISODownmix = 0,
			ARIBDownmix = 1,
		}
		public enum eAVDecHEAACDynamicRangeControl : int32
		{
			OFF = 0,
			ON = 1,
		}
		public enum eAVDecAudioDualMono : int32
		{
			IsNotDualMono = 0,
			IsDualMono = 1,
			UnSpecified = 2,
		}
		public enum eAVDecAudioDualMonoReproMode : int32
		{
			STEREO = 0,
			LEFT_MONO = 1,
			RIGHT_MONO = 2,
			MIX_MONO = 3,
		}
		public enum eAVAudioChannelConfig : int32
		{
			FRONT_LEFT = 1,
			FRONT_RIGHT = 2,
			FRONT_CENTER = 4,
			LOW_FREQUENCY = 8,
			BACK_LEFT = 16,
			BACK_RIGHT = 32,
			FRONT_LEFT_OF_CENTER = 64,
			FRONT_RIGHT_OF_CENTER = 128,
			BACK_CENTER = 256,
			SIDE_LEFT = 512,
			SIDE_RIGHT = 1024,
			TOP_CENTER = 2048,
			TOP_FRONT_LEFT = 4096,
			TOP_FRONT_CENTER = 8192,
			TOP_FRONT_RIGHT = 16384,
			TOP_BACK_LEFT = 32768,
			TOP_BACK_CENTER = 65536,
			TOP_BACK_RIGHT = 131072,
		}
		public enum eAVDDSurroundMode : int32
		{
			NotIndicated = 0,
			No = 1,
			Yes = 2,
		}
		public enum eAVDecDDOperationalMode : int32
		{
			NONE = 0,
			LINE = 1,
			RF = 2,
			CUSTOM0 = 3,
			CUSTOM1 = 4,
			PORTABLE8 = 5,
			PORTABLE11 = 6,
			PORTABLE14 = 7,
		}
		public enum eAVDecDDMatrixDecodingMode : int32
		{
			OFF = 0,
			ON = 1,
			AUTO = 2,
		}
		public enum eAVDecDDStereoDownMixMode : int32
		{
			Auto = 0,
			LtRt = 1,
			LoRo = 2,
		}
		public enum eAVDSPLoudnessEqualization : int32
		{
			OFF = 0,
			ON = 1,
			AUTO = 2,
		}
		public enum eAVDSPSpeakerFill : int32
		{
			OFF = 0,
			ON = 1,
			AUTO = 2,
		}
		public enum eAVEncChromaEncodeMode : int32
		{
			_420 = 0,
			_444 = 1,
			_444_v2 = 2,
		}
		public enum DXVAHD_FRAME_FORMAT : int32
		{
			PROGRESSIVE = 0,
			INTERLACED_TOP_FIELD_FIRST = 1,
			INTERLACED_BOTTOM_FIELD_FIRST = 2,
		}
		public enum DXVAHD_DEVICE_USAGE : int32
		{
			PLAYBACK_NORMAL = 0,
			OPTIMAL_SPEED = 1,
			OPTIMAL_QUALITY = 2,
		}
		public enum DXVAHD_SURFACE_TYPE : int32
		{
			INPUT = 0,
			INPUT_PRIVATE = 1,
			OUTPUT = 2,
		}
		public enum DXVAHD_DEVICE_TYPE : int32
		{
			HARDWARE = 0,
			SOFTWARE = 1,
			REFERENCE = 2,
			OTHER = 3,
		}
		public enum DXVAHD_DEVICE_CAPS : int32
		{
			LINEAR_SPACE = 1,
			xvYCC = 2,
			RGB_RANGE_CONVERSION = 4,
			YCbCr_MATRIX_CONVERSION = 8,
		}
		public enum DXVAHD_FEATURE_CAPS : int32
		{
			ALPHA_FILL = 1,
			CONSTRICTION = 2,
			LUMA_KEY = 4,
			ALPHA_PALETTE = 8,
		}
		public enum DXVAHD_FILTER_CAPS : int32
		{
			BRIGHTNESS = 1,
			CONTRAST = 2,
			HUE = 4,
			SATURATION = 8,
			NOISE_REDUCTION = 16,
			EDGE_ENHANCEMENT = 32,
			ANAMORPHIC_SCALING = 64,
		}
		public enum DXVAHD_INPUT_FORMAT_CAPS : int32
		{
			RGB_INTERLACED = 1,
			RGB_PROCAMP = 2,
			RGB_LUMA_KEY = 4,
			PALETTE_INTERLACED = 8,
		}
		public enum DXVAHD_PROCESSOR_CAPS : int32
		{
			DEINTERLACE_BLEND = 1,
			DEINTERLACE_BOB = 2,
			DEINTERLACE_ADAPTIVE = 4,
			DEINTERLACE_MOTION_COMPENSATION = 8,
			INVERSE_TELECINE = 16,
			FRAME_RATE_CONVERSION = 32,
		}
		public enum DXVAHD_ITELECINE_CAPS : int32
		{
			_32 = 1,
			_22 = 2,
			_2224 = 4,
			_2332 = 8,
			_32322 = 16,
			_55 = 32,
			_64 = 64,
			_87 = 128,
			_222222222223 = 256,
			OTHER = -2147483648,
		}
		public enum DXVAHD_FILTER : int32
		{
			BRIGHTNESS = 0,
			CONTRAST = 1,
			HUE = 2,
			SATURATION = 3,
			NOISE_REDUCTION = 4,
			EDGE_ENHANCEMENT = 5,
			ANAMORPHIC_SCALING = 6,
		}
		public enum DXVAHD_BLT_STATE : int32
		{
			TARGET_RECT = 0,
			BACKGROUND_COLOR = 1,
			OUTPUT_COLOR_SPACE = 2,
			ALPHA_FILL = 3,
			CONSTRICTION = 4,
			PRIVATE = 1000,
		}
		public enum DXVAHD_ALPHA_FILL_MODE : int32
		{
			OPAQUE = 0,
			BACKGROUND = 1,
			DESTINATION = 2,
			SOURCE_STREAM = 3,
		}
		public enum DXVAHD_STREAM_STATE : int32
		{
			D3DFORMAT = 0,
			FRAME_FORMAT = 1,
			INPUT_COLOR_SPACE = 2,
			OUTPUT_RATE = 3,
			SOURCE_RECT = 4,
			DESTINATION_RECT = 5,
			ALPHA = 6,
			PALETTE = 7,
			LUMA_KEY = 8,
			ASPECT_RATIO = 9,
			FILTER_BRIGHTNESS = 100,
			FILTER_CONTRAST = 101,
			FILTER_HUE = 102,
			FILTER_SATURATION = 103,
			FILTER_NOISE_REDUCTION = 104,
			FILTER_EDGE_ENHANCEMENT = 105,
			FILTER_ANAMORPHIC_SCALING = 106,
			PRIVATE = 1000,
		}
		public enum DXVAHD_OUTPUT_RATE : int32
		{
			NORMAL = 0,
			HALF = 1,
			CUSTOM = 2,
		}
		public enum DXVA2_SampleFormat : int32
		{
			FormatMask = 255,
			Unknown = 0,
			ProgressiveFrame = 2,
			FieldInterleavedEvenFirst = 3,
			FieldInterleavedOddFirst = 4,
			FieldSingleEven = 5,
			FieldSingleOdd = 6,
			SubStream = 7,
		}
		[AllowDuplicates]
		public enum DXVA2_VideoChromaSubSampling : int32
		{
			SubsamplingMask = 15,
			Subsampling_Unknown = 0,
			Subsampling_ProgressiveChroma = 8,
			Subsampling_Horizontally_Cosited = 4,
			Subsampling_Vertically_Cosited = 2,
			Subsampling_Vertically_AlignedChromaPlanes = 1,
			Subsampling_MPEG2 = 5,
			Subsampling_MPEG1 = 1,
			Subsampling_DV_PAL = 6,
			Subsampling_Cosited = 7,
		}
		[AllowDuplicates]
		public enum DXVA2_NominalRange : int32
		{
			RangeMask = 7,
			Range_Unknown = 0,
			Range_Normal = 1,
			Range_Wide = 2,
			Range_0_255 = 1,
			Range_16_235 = 2,
			Range_48_208 = 3,
		}
		public enum DXVA2_VideoTransferMatrix : int32
		{
			MatrixMask = 7,
			Matrix_Unknown = 0,
			Matrix_BT709 = 1,
			Matrix_BT601 = 2,
			Matrix_SMPTE240M = 3,
		}
		public enum DXVA2_VideoLighting : int32
		{
			LightingMask = 15,
			Lighting_Unknown = 0,
			Lighting_bright = 1,
			Lighting_office = 2,
			Lighting_dim = 3,
			Lighting_dark = 4,
		}
		public enum DXVA2_VideoPrimaries : int32
		{
			PrimariesMask = 31,
			Primaries_Unknown = 0,
			Primaries_reserved = 1,
			Primaries_BT709 = 2,
			Primaries_BT470_2_SysM = 3,
			Primaries_BT470_2_SysBG = 4,
			Primaries_SMPTE170M = 5,
			Primaries_SMPTE240M = 6,
			Primaries_EBU3213 = 7,
			Primaries_SMPTE_C = 8,
		}
		public enum DXVA2_VideoTransferFunction : int32
		{
			FuncMask = 31,
			Func_Unknown = 0,
			Func_10 = 1,
			Func_18 = 2,
			Func_20 = 3,
			Func_22 = 4,
			Func_709 = 5,
			Func_240M = 6,
			Func_sRGB = 7,
			Func_28 = 8,
		}
		public enum DXVA2_DeinterlaceTech : int32
		{
			Unknown = 0,
			BOBLineReplicate = 1,
			BOBVerticalStretch = 2,
			BOBVerticalStretch4Tap = 4,
			MedianFiltering = 8,
			EdgeFiltering = 16,
			FieldAdaptive = 32,
			PixelAdaptive = 64,
			MotionVectorSteered = 128,
			InverseTelecine = 256,
			Mask = 511,
		}
		public enum DXVA2_FilterType : int32
		{
			NoiseFilterLumaLevel = 1,
			NoiseFilterLumaThreshold = 2,
			NoiseFilterLumaRadius = 3,
			NoiseFilterChromaLevel = 4,
			NoiseFilterChromaThreshold = 5,
			NoiseFilterChromaRadius = 6,
			DetailFilterLumaLevel = 7,
			DetailFilterLumaThreshold = 8,
			DetailFilterLumaRadius = 9,
			DetailFilterChromaLevel = 10,
			DetailFilterChromaThreshold = 11,
			DetailFilterChromaRadius = 12,
		}
		public enum DXVA2_NoiseFilterTech : int32
		{
			Unsupported = 0,
			Unknown = 1,
			Median = 2,
			Temporal = 4,
			BlockNoise = 8,
			MosquitoNoise = 16,
			Mask = 31,
		}
		public enum DXVA2_DetailFilterTech : int32
		{
			Unsupported = 0,
			Unknown = 1,
			Edge = 2,
			Sharpening = 4,
			Mask = 7,
		}
		public enum DXVA2_ProcAmp : int32
		{
			None = 0,
			Brightness = 1,
			Contrast = 2,
			Hue = 4,
			Saturation = 8,
			Mask = 15,
		}
		public enum DXVA2_VideoProcess : int32
		{
			None = 0,
			YUV2RGB = 1,
			StretchX = 2,
			StretchY = 4,
			AlphaBlend = 8,
			SubRects = 16,
			SubStreams = 32,
			SubStreamsExtended = 64,
			YUV2RGBExtended = 128,
			AlphaBlendExtended = 256,
			Constriction = 512,
			NoiseFilter = 1024,
			DetailFilter = 2048,
			PlanarAlpha = 4096,
			LinearScaling = 8192,
			GammaCompensated = 16384,
			MaintainsOriginalFieldData = 32768,
			Mask = 65535,
		}
		public enum DXVA2_VPDev : int32
		{
			HardwareDevice = 1,
			EmulatedDXVA1 = 2,
			SoftwareDevice = 4,
			Mask = 7,
		}
		public enum DXVA2_SampleData : int32
		{
			RFF = 1,
			TFF = 2,
			RFF_TFF_Present = 4,
			Mask = 65535,
		}
		public enum DXVA2_DestData : int32
		{
			RFF = 1,
			TFF = 2,
			RFF_TFF_Present = 4,
			Mask = 65535,
		}
		public enum DXVA2_BufferfType : int32
		{
			PictureParametersBufferType = 0,
			MacroBlockControlBufferType = 1,
			ResidualDifferenceBufferType = 2,
			DeblockingControlBufferType = 3,
			InverseQuantizationMatrixBufferType = 4,
			SliceControlBufferType = 5,
			BitStreamDateBufferType = 6,
			MotionVectorBuffer = 7,
			FilmGrainBuffer = 8,
		}
		public enum DXVA2_VideoRenderTargetType : int32
		{
			DecoderRenderTarget = 0,
			ProcessorRenderTarget = 1,
			SoftwareRenderTarget = 2,
		}
		public enum DXVA2_SurfaceType : int32
		{
			DecoderRenderTarget = 0,
			ProcessorRenderTarget = 1,
			D3DRenderTargetTexture = 2,
		}
		[AllowDuplicates]
		public enum OPM_TYPE : int32
		{
			OMAC_SIZE = 16,
			_128_BIT_RANDOM_NUMBER_SIZE = 16,
			ENCRYPTED_INITIALIZATION_PARAMETERS_SIZE = 256,
			CONFIGURE_SETTING_DATA_SIZE = 4056,
			GET_INFORMATION_PARAMETERS_SIZE = 4056,
			REQUESTED_INFORMATION_SIZE = 4076,
			HDCP_KEY_SELECTION_VECTOR_SIZE = 5,
			PROTECTION_TYPE_SIZE = 4,
			BUS_TYPE_MASK = 65535,
			BUS_IMPLEMENTATION_MODIFIER_MASK = 32767,
		}
		public enum OPM_VIDEO_OUTPUT_SEMANTICS : int32
		{
			COPP_SEMANTICS = 0,
			OPM_SEMANTICS = 1,
			OPM_INDIRECT_DISPLAY = 2,
		}
		public enum OPM_HDCP_FLAGS : uint32
		{
			NONE = 0,
			REPEATER = 1,
		}
		public enum OPM_STATUS : int32
		{
			NORMAL = 0,
			LINK_LOST = 1,
			RENEGOTIATION_REQUIRED = 2,
			TAMPERING_DETECTED = 4,
			REVOKED_HDCP_DEVICE_ATTACHED = 8,
		}
		public enum PM_CONNECTOR_TYPE : int32
		{
			CONNECTOR_TYPE_OTHER = -1,
			CONNECTOR_TYPE_VGA = 0,
			CONNECTOR_TYPE_SVIDEO = 1,
			CONNECTOR_TYPE_COMPOSITE_VIDEO = 2,
			CONNECTOR_TYPE_COMPONENT_VIDEO = 3,
			CONNECTOR_TYPE_DVI = 4,
			CONNECTOR_TYPE_HDMI = 5,
			CONNECTOR_TYPE_LVDS = 6,
			CONNECTOR_TYPE_D_JPN = 8,
			CONNECTOR_TYPE_SDI = 9,
			CONNECTOR_TYPE_DISPLAYPORT_EXTERNAL = 10,
			CONNECTOR_TYPE_DISPLAYPORT_EMBEDDED = 11,
			CONNECTOR_TYPE_UDI_EXTERNAL = 12,
			CONNECTOR_TYPE_UDI_EMBEDDED = 13,
			CONNECTOR_TYPE_RESERVED = 14,
			CONNECTOR_TYPE_MIRACAST = 15,
			CONNECTOR_TYPE_TRANSPORT_AGNOSTIC_DIGITAL_MODE_A = 16,
			CONNECTOR_TYPE_TRANSPORT_AGNOSTIC_DIGITAL_MODE_B = 17,
			COPP_COMPATIBLE_CONNECTOR_TYPE_INTERNAL = -2147483648,
		}
		public enum OPM_DVI_CHARACTERISTIC : int32
		{
			_0 = 1,
			_1_OR_ABOVE = 2,
		}
		public enum OPM_OUTPUT_HARDWARE_PROTECTION : int32
		{
			NOT_SUPPORTED = 0,
			SUPPORTED = 1,
		}
		[AllowDuplicates]
		public enum OPM_BUS_TYPE : int32
		{
			BUS_TYPE_OTHER = 0,
			BUS_TYPE_PCI = 1,
			BUS_TYPE_PCIX = 2,
			BUS_TYPE_PCIEXPRESS = 3,
			BUS_TYPE_AGP = 4,
			BUS_IMPLEMENTATION_MODIFIER_INSIDE_OF_CHIPSET = 65536,
			BUS_IMPLEMENTATION_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_CHIP = 131072,
			BUS_IMPLEMENTATION_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_SOCKET = 196608,
			BUS_IMPLEMENTATION_MODIFIER_DAUGHTER_BOARD_CONNECTOR = 262144,
			BUS_IMPLEMENTATION_MODIFIER_DAUGHTER_BOARD_CONNECTOR_INSIDE_OF_NUAE = 327680,
			BUS_IMPLEMENTATION_MODIFIER_NON_STANDARD = -2147483648,
			COPP_COMPATIBLE_BUS_TYPE_INTEGRATED = -2147483648,
		}
		public enum OPM_DPCP_PROTECTION_LEVEL : int32
		{
			OFF = 0,
			ON = 1,
			FORCE_ULONG = 2147483647,
		}
		public enum OPM_HDCP_PROTECTION_LEVEL : int32
		{
			OFF = 0,
			ON = 1,
			FORCE_ULONG = 2147483647,
		}
		public enum OPM_TYPE_ENFORCEMENT_HDCP_PROTECTION_LEVEL : int32
		{
			OFF = 0,
			ON_WITH_NO_TYPE_RESTRICTION = 1,
			ON_WITH_TYPE1_RESTRICTION = 2,
			FORCE_ULONG = 2147483647,
		}
		public enum OPM_CGMSA : int32
		{
			OFF = 0,
			COPY_FREELY = 1,
			COPY_NO_MORE = 2,
			COPY_ONE_GENERATION = 3,
			COPY_NEVER = 4,
			REDISTRIBUTION_CONTROL_REQUIRED = 8,
		}
		public enum OPM_ACP_PROTECTION_LEVEL : int32
		{
			OFF = 0,
			LEVEL_ONE = 1,
			LEVEL_TWO = 2,
			LEVEL_THREE = 3,
			FORCE_ULONG = 2147483647,
		}
		public enum OPM_PROTECTION_TYPE : int32
		{
			OTHER = -2147483648,
			NONE = 0,
			COPP_COMPATIBLE_HDCP = 1,
			ACP = 2,
			CGMSA = 4,
			HDCP = 8,
			DPCP = 16,
			TYPE_ENFORCEMENT_HDCP = 32,
		}
		public enum OPM_PROTECTION_STANDARD_TYPE : uint32
		{
			OTHER = 2147483648,
			NONE = 0,
			IEC61880_525I = 1,
			IEC61880_2_525I = 2,
			IEC62375_625P = 4,
			EIA608B_525 = 8,
			EN300294_625I = 16,
			CEA805A_TYPEA_525P = 32,
			CEA805A_TYPEA_750P = 64,
			CEA805A_TYPEA_1125I = 128,
			CEA805A_TYPEB_525P = 256,
			CEA805A_TYPEB_750P = 512,
			CEA805A_TYPEB_1125I = 1024,
			ARIBTRB15_525I = 2048,
			ARIBTRB15_525P = 4096,
			ARIBTRB15_750P = 8192,
			ARIBTRB15_1125I = 16384,
		}
		public enum OPM_IMAGE_ASPECT_RATIO_EN300294 : int32
		{
			EN300294_FULL_FORMAT_4_BY_3 = 0,
			EN300294_BOX_14_BY_9_CENTER = 1,
			EN300294_BOX_14_BY_9_TOP = 2,
			EN300294_BOX_16_BY_9_CENTER = 3,
			EN300294_BOX_16_BY_9_TOP = 4,
			EN300294_BOX_GT_16_BY_9_CENTER = 5,
			EN300294_FULL_FORMAT_4_BY_3_PROTECTED_CENTER = 6,
			EN300294_FULL_FORMAT_16_BY_9_ANAMORPHIC = 7,
			FORCE_ULONG = 2147483647,
		}
		public enum KSMETHOD_OPMVIDEOOUTPUT : int32
		{
			STARTINITIALIZATION = 0,
			FINISHINITIALIZATION = 1,
			GETINFORMATION = 2,
		}
		public enum MF_ATTRIBUTE_TYPE : int32
		{
			UINT32 = 19,
			UINT64 = 21,
			DOUBLE = 5,
			GUID = 72,
			STRING = 31,
			BLOB = 4113,
			IUNKNOWN = 13,
		}
		public enum MF_ATTRIBUTES_MATCH_TYPE : int32
		{
			OUR_ITEMS = 0,
			THEIR_ITEMS = 1,
			ALL_ITEMS = 2,
			INTERSECTION = 3,
			SMALLER = 4,
		}
		public enum MF_ATTRIBUTE_SERIALIZE_OPTIONS : int32
		{
			UNKNOWN_BYREF = 1,
		}
		[AllowDuplicates]
		public enum MF2DBuffer_LockFlags : int32
		{
			LockTypeMask = 3,
			Read = 1,
			Write = 2,
			ReadWrite = 3,
			ForceDWORD = 2147483647,
		}
		public enum MFVideoInterlaceMode : int32
		{
			Unknown = 0,
			Progressive = 2,
			FieldInterleavedUpperFirst = 3,
			FieldInterleavedLowerFirst = 4,
			FieldSingleUpper = 5,
			FieldSingleLower = 6,
			MixedInterlaceOrProgressive = 7,
			Last = 8,
			ForceDWORD = 2147483647,
		}
		public enum MFVideoTransferFunction : int32
		{
			Unknown = 0,
			_10 = 1,
			_18 = 2,
			_20 = 3,
			_22 = 4,
			_709 = 5,
			_240M = 6,
			sRGB = 7,
			_28 = 8,
			Log_100 = 9,
			Log_316 = 10,
			_709_sym = 11,
			_2020_const = 12,
			_2020 = 13,
			_26 = 14,
			_2084 = 15,
			HLG = 16,
			_10_rel = 17,
			Last = 18,
			ForceDWORD = 2147483647,
		}
		public enum MFVideoPrimaries : int32
		{
			Unknown = 0,
			reserved = 1,
			BT709 = 2,
			BT470_2_SysM = 3,
			BT470_2_SysBG = 4,
			SMPTE170M = 5,
			SMPTE240M = 6,
			EBU3213 = 7,
			SMPTE_C = 8,
			BT2020 = 9,
			XYZ = 10,
			DCI_P3 = 11,
			ACES = 12,
			Last = 13,
			ForceDWORD = 2147483647,
		}
		public enum MFVideoLighting : int32
		{
			Unknown = 0,
			bright = 1,
			office = 2,
			dim = 3,
			dark = 4,
			Last = 5,
			ForceDWORD = 2147483647,
		}
		public enum MFVideoTransferMatrix : int32
		{
			Unknown = 0,
			BT709 = 1,
			BT601 = 2,
			SMPTE240M = 3,
			BT2020_10 = 4,
			BT2020_12 = 5,
			Last = 6,
			ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum MFVideoChromaSubsampling : int32
		{
			Unknown = 0,
			ProgressiveChroma = 8,
			Horizontally_Cosited = 4,
			Vertically_Cosited = 2,
			Vertically_AlignedChromaPlanes = 1,
			MPEG2 = 5,
			MPEG1 = 1,
			DV_PAL = 6,
			Cosited = 7,
			Last = 8,
			ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum MFNominalRange : int32
		{
			Unknown = 0,
			Normal = 1,
			Wide = 2,
			_0_255 = 1,
			_16_235 = 2,
			_48_208 = 3,
			_64_127 = 4,
			Last = 5,
			ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum MFVideoFlags : int32
		{
			Flag_PAD_TO_Mask = 3,
			Flag_PAD_TO_None = 0,
			Flag_PAD_TO_4x3 = 1,
			Flag_PAD_TO_16x9 = 2,
			Flag_SrcContentHintMask = 28,
			Flag_SrcContentHintNone = 0,
			Flag_SrcContentHint16x9 = 4,
			Flag_SrcContentHint235_1 = 8,
			Flag_AnalogProtected = 32,
			Flag_DigitallyProtected = 64,
			Flag_ProgressiveContent = 128,
			Flag_FieldRepeatCountMask = 1792,
			Flag_FieldRepeatCountShift = 8,
			Flag_ProgressiveSeqReset = 2048,
			Flag_PanScanEnabled = 131072,
			Flag_LowerFieldFirst = 262144,
			Flag_BottomUpLinearRep = 524288,
			Flags_DXVASurface = 1048576,
			Flags_RenderTargetSurface = 4194304,
			Flags_ForceQWORD = 2147483647,
		}
		public enum MFStandardVideoFormat : int32
		{
			reserved = 0,
			NTSC = 1,
			PAL = 2,
			DVD_NTSC = 3,
			DVD_PAL = 4,
			DV_PAL = 5,
			DV_NTSC = 6,
			ATSC_SD480i = 7,
			ATSC_HD1080i = 8,
			ATSC_HD720p = 9,
		}
		[AllowDuplicates]
		public enum MF_EVENT_TYPE : int32
		{
			MEUnknown = 0,
			MEError = 1,
			MEExtendedType = 2,
			MENonFatalError = 3,
			MEGenericV1Anchor = 3,
			MESessionUnknown = 100,
			MESessionTopologySet = 101,
			MESessionTopologiesCleared = 102,
			MESessionStarted = 103,
			MESessionPaused = 104,
			MESessionStopped = 105,
			MESessionClosed = 106,
			MESessionEnded = 107,
			MESessionRateChanged = 108,
			MESessionScrubSampleComplete = 109,
			MESessionCapabilitiesChanged = 110,
			MESessionTopologyStatus = 111,
			MESessionNotifyPresentationTime = 112,
			MENewPresentation = 113,
			MELicenseAcquisitionStart = 114,
			MELicenseAcquisitionCompleted = 115,
			MEIndividualizationStart = 116,
			MEIndividualizationCompleted = 117,
			MEEnablerProgress = 118,
			MEEnablerCompleted = 119,
			MEPolicyError = 120,
			MEPolicyReport = 121,
			MEBufferingStarted = 122,
			MEBufferingStopped = 123,
			MEConnectStart = 124,
			MEConnectEnd = 125,
			MEReconnectStart = 126,
			MEReconnectEnd = 127,
			MERendererEvent = 128,
			MESessionStreamSinkFormatChanged = 129,
			MESessionV1Anchor = 129,
			MESourceUnknown = 200,
			MESourceStarted = 201,
			MEStreamStarted = 202,
			MESourceSeeked = 203,
			MEStreamSeeked = 204,
			MENewStream = 205,
			MEUpdatedStream = 206,
			MESourceStopped = 207,
			MEStreamStopped = 208,
			MESourcePaused = 209,
			MEStreamPaused = 210,
			MEEndOfPresentation = 211,
			MEEndOfStream = 212,
			MEMediaSample = 213,
			MEStreamTick = 214,
			MEStreamThinMode = 215,
			MEStreamFormatChanged = 216,
			MESourceRateChanged = 217,
			MEEndOfPresentationSegment = 218,
			MESourceCharacteristicsChanged = 219,
			MESourceRateChangeRequested = 220,
			MESourceMetadataChanged = 221,
			MESequencerSourceTopologyUpdated = 222,
			MESourceV1Anchor = 222,
			MESinkUnknown = 300,
			MEStreamSinkStarted = 301,
			MEStreamSinkStopped = 302,
			MEStreamSinkPaused = 303,
			MEStreamSinkRateChanged = 304,
			MEStreamSinkRequestSample = 305,
			MEStreamSinkMarker = 306,
			MEStreamSinkPrerolled = 307,
			MEStreamSinkScrubSampleComplete = 308,
			MEStreamSinkFormatChanged = 309,
			MEStreamSinkDeviceChanged = 310,
			MEQualityNotify = 311,
			MESinkInvalidated = 312,
			MEAudioSessionNameChanged = 313,
			MEAudioSessionVolumeChanged = 314,
			MEAudioSessionDeviceRemoved = 315,
			MEAudioSessionServerShutdown = 316,
			MEAudioSessionGroupingParamChanged = 317,
			MEAudioSessionIconChanged = 318,
			MEAudioSessionFormatChanged = 319,
			MEAudioSessionDisconnected = 320,
			MEAudioSessionExclusiveModeOverride = 321,
			MESinkV1Anchor = 321,
			MECaptureAudioSessionVolumeChanged = 322,
			MECaptureAudioSessionDeviceRemoved = 323,
			MECaptureAudioSessionFormatChanged = 324,
			MECaptureAudioSessionDisconnected = 325,
			MECaptureAudioSessionExclusiveModeOverride = 326,
			MECaptureAudioSessionServerShutdown = 327,
			MESinkV2Anchor = 327,
			METrustUnknown = 400,
			MEPolicyChanged = 401,
			MEContentProtectionMessage = 402,
			MEPolicySet = 403,
			METrustV1Anchor = 403,
			MEWMDRMLicenseBackupCompleted = 500,
			MEWMDRMLicenseBackupProgress = 501,
			MEWMDRMLicenseRestoreCompleted = 502,
			MEWMDRMLicenseRestoreProgress = 503,
			MEWMDRMLicenseAcquisitionCompleted = 506,
			MEWMDRMIndividualizationCompleted = 508,
			MEWMDRMIndividualizationProgress = 513,
			MEWMDRMProximityCompleted = 514,
			MEWMDRMLicenseStoreCleaned = 515,
			MEWMDRMRevocationDownloadCompleted = 516,
			MEWMDRMV1Anchor = 516,
			METransformUnknown = 600,
			METransformNeedInput = 601,
			METransformHaveOutput = 602,
			METransformDrainComplete = 603,
			METransformMarker = 604,
			METransformInputStreamStateChanged = 605,
			MEByteStreamCharacteristicsChanged = 700,
			MEVideoCaptureDeviceRemoved = 800,
			MEVideoCaptureDevicePreempted = 801,
			MEStreamSinkFormatInvalidated = 802,
			MEEncodingParameters = 803,
			MEContentProtectionMetadata = 900,
			MEDeviceThermalStateChanged = 950,
			MEReservedMax = 10000,
		}
		public enum MFBYTESTREAM_SEEK_ORIGIN : int32
		{
			Begin = 0,
			Current = 1,
		}
		public enum MF_FILE_ACCESSMODE : int32
		{
			READ = 1,
			WRITE = 2,
			READWRITE = 3,
		}
		public enum MF_FILE_OPENMODE : int32
		{
			FAIL_IF_NOT_EXIST = 0,
			FAIL_IF_EXIST = 1,
			RESET_IF_EXIST = 2,
			APPEND_IF_EXIST = 3,
			DELETE_IF_EXIST = 4,
		}
		public enum MF_FILE_FLAGS : int32
		{
			NONE = 0,
			NOBUFFERING = 1,
			ALLOW_WRITE_SHARING = 2,
		}
		public enum MF_PLUGIN_CONTROL_POLICY : int32
		{
			ALL_PLUGINS = 0,
			APPROVED_PLUGINS = 1,
			WEB_PLUGINS = 2,
			WEB_PLUGINS_EDGEMODE = 3,
		}
		public enum MF_STREAM_STATE : int32
		{
			STOPPED = 0,
			PAUSED = 1,
			RUNNING = 2,
		}
		public enum _MFT_INPUT_DATA_BUFFER_FLAGS : int32
		{
			MFT_INPUT_DATA_BUFFER_PLACEHOLDER = -1,
		}
		public enum _MFT_OUTPUT_DATA_BUFFER_FLAGS : int32
		{
			INCOMPLETE = 16777216,
			FORMAT_CHANGE = 256,
			STREAM_END = 512,
			NO_SAMPLE = 768,
		}
		public enum _MFT_INPUT_STATUS_FLAGS : int32
		{
			MFT_INPUT_STATUS_ACCEPT_DATA = 1,
		}
		public enum _MFT_OUTPUT_STATUS_FLAGS : int32
		{
			MFT_OUTPUT_STATUS_SAMPLE_READY = 1,
		}
		public enum _MFT_INPUT_STREAM_INFO_FLAGS : int32
		{
			WHOLE_SAMPLES = 1,
			SINGLE_SAMPLE_PER_BUFFER = 2,
			FIXED_SAMPLE_SIZE = 4,
			HOLDS_BUFFERS = 8,
			DOES_NOT_ADDREF = 256,
			REMOVABLE = 512,
			OPTIONAL = 1024,
			PROCESSES_IN_PLACE = 2048,
		}
		public enum _MFT_OUTPUT_STREAM_INFO_FLAGS : int32
		{
			WHOLE_SAMPLES = 1,
			SINGLE_SAMPLE_PER_BUFFER = 2,
			FIXED_SAMPLE_SIZE = 4,
			DISCARDABLE = 8,
			OPTIONAL = 16,
			PROVIDES_SAMPLES = 256,
			CAN_PROVIDE_SAMPLES = 512,
			LAZY_READ = 1024,
			REMOVABLE = 2048,
		}
		public enum _MFT_SET_TYPE_FLAGS : int32
		{
			MFT_SET_TYPE_TEST_ONLY = 1,
		}
		public enum _MFT_PROCESS_OUTPUT_FLAGS : int32
		{
			DISCARD_WHEN_NO_BUFFER = 1,
			REGENERATE_LAST_OUTPUT = 2,
		}
		public enum _MFT_PROCESS_OUTPUT_STATUS : int32
		{
			MFT_PROCESS_OUTPUT_STATUS_NEW_STREAMS = 256,
		}
		public enum MFT_DRAIN_TYPE : int32
		{
			PRODUCE_TAILS = 0,
			NO_TAILS = 1,
		}
		public enum MFT_MESSAGE_TYPE : int32
		{
			COMMAND_FLUSH = 0,
			COMMAND_DRAIN = 1,
			SET_D3D_MANAGER = 2,
			DROP_SAMPLES = 3,
			COMMAND_TICK = 4,
			NOTIFY_BEGIN_STREAMING = 268435456,
			NOTIFY_END_STREAMING = 268435457,
			NOTIFY_END_OF_STREAM = 268435458,
			NOTIFY_START_OF_STREAM = 268435459,
			NOTIFY_RELEASE_RESOURCES = 268435460,
			NOTIFY_REACQUIRE_RESOURCES = 268435461,
			NOTIFY_EVENT = 268435462,
			COMMAND_SET_OUTPUT_STREAM_STATE = 268435463,
			COMMAND_FLUSH_OUTPUT_STREAM = 268435464,
			COMMAND_MARKER = 536870912,
		}
		public enum DeviceStreamState : int32
		{
			Stop = 0,
			Pause = 1,
			Run = 2,
			Disabled = 3,
		}
		public enum MF3DVideoOutputType : int32
		{
			BaseView = 0,
			Stereo = 1,
		}
		public enum MFT_AUDIO_DECODER_DEGRADATION_REASON : int32
		{
			NONE = 0,
			LICENSING_REQUIREMENT = 1,
		}
		public enum MFT_AUDIO_DECODER_DEGRADATION_TYPE : int32
		{
			NONE = 0,
			DOWNMIX2CHANNEL = 1,
			DOWNMIX6CHANNEL = 2,
			DOWNMIX8CHANNEL = 3,
		}
		public enum MFSESSION_SETTOPOLOGY_FLAGS : int32
		{
			IMMEDIATE = 1,
			NORESOLUTION = 2,
			CLEAR_CURRENT = 4,
		}
		public enum MFSESSION_GETFULLTOPOLOGY_FLAGS : int32
		{
			CURRENT = 1,
		}
		public enum MFPMPSESSION_CREATION_FLAGS : int32
		{
			UNPROTECTED_PROCESS = 1,
			IN_PROCESS = 2,
		}
		public enum MF_OBJECT_TYPE : int32
		{
			MEDIASOURCE = 0,
			BYTESTREAM = 1,
			INVALID = 2,
		}
		public enum MF_RESOLUTION_FLAGS : uint32
		{
			MEDIASOURCE = 1,
			BYTESTREAM = 2,
			CONTENT_DOES_NOT_HAVE_TO_MATCH_EXTENSION_OR_MIME_TYPE = 16,
			KEEP_BYTE_STREAM_ALIVE_ON_FAIL = 32,
			DISABLE_LOCAL_PLUGINS = 64,
			PLUGIN_CONTROL_POLICY_APPROVED_ONLY = 128,
			PLUGIN_CONTROL_POLICY_WEB_ONLY = 256,
			PLUGIN_CONTROL_POLICY_WEB_ONLY_EDGEMODE = 512,
			ENABLE_STORE_PLUGINS = 1024,
			READ = 65536,
			WRITE = 131072,
		}
		public enum MF_CONNECT_METHOD : int32
		{
			DIRECT = 0,
			ALLOW_CONVERTER = 1,
			ALLOW_DECODER = 3,
			RESOLVE_INDEPENDENT_OUTPUTTYPES = 4,
			AS_OPTIONAL = 65536,
			AS_OPTIONAL_BRANCH = 131072,
		}
		public enum MF_TOPOLOGY_RESOLUTION_STATUS_FLAGS : int32
		{
			TOPOLOGY_RESOLUTION_SUCCEEDED = 0,
			OPTIONAL_NODE_REJECTED_MEDIA_TYPE = 1,
			OPTIONAL_NODE_REJECTED_PROTECTED_PROCESS = 2,
		}
		public enum MFMEDIASOURCE_CHARACTERISTICS : int32
		{
			IS_LIVE = 1,
			CAN_SEEK = 2,
			CAN_PAUSE = 4,
			HAS_SLOW_SEEK = 8,
			HAS_MULTIPLE_PRESENTATIONS = 16,
			CAN_SKIPFORWARD = 32,
			CAN_SKIPBACKWARD = 64,
			DOES_NOT_USE_NETWORK = 128,
		}
		public enum MFSTREAMSINK_MARKER_TYPE : int32
		{
			DEFAULT = 0,
			ENDOFSEGMENT = 1,
			TICK = 2,
			EVENT = 3,
		}
		public enum MF_VIDEO_PROCESSOR_ROTATION : int32
		{
			NONE = 0,
			NORMAL = 1,
		}
		public enum MF_VIDEO_PROCESSOR_MIRROR : int32
		{
			NONE = 0,
			HORIZONTAL = 1,
			VERTICAL = 2,
		}
		public enum MFVideoSphericalFormat : int32
		{
			Unsupported = 0,
			Equirectangular = 1,
			CubeMap = 2,
			_3DMesh = 3,
		}
		public enum MFVideoSphericalProjectionMode : int32
		{
			Spherical = 0,
			Flat = 1,
		}
		public enum MFTOPOLOGY_DXVA_MODE : int32
		{
			DEFAULT = 0,
			NONE = 1,
			FULL = 2,
		}
		public enum MFTOPOLOGY_HARDWARE_MODE : int32
		{
			SOFTWARE_ONLY = 0,
			USE_HARDWARE = 1,
			USE_ONLY_HARDWARE = 2,
		}
		public enum MF_TOPOLOGY_TYPE : int32
		{
			OUTPUT_NODE = 0,
			SOURCESTREAM_NODE = 1,
			TRANSFORM_NODE = 2,
			TEE_NODE = 3,
			MAX = -1,
		}
		public enum MF_TOPONODE_FLUSH_MODE : int32
		{
			ALWAYS = 0,
			SEEK = 1,
			NEVER = 2,
		}
		public enum MF_TOPONODE_DRAIN_MODE : int32
		{
			DEFAULT = 0,
			ALWAYS = 1,
			NEVER = 2,
		}
		public enum MFCLOCK_CHARACTERISTICS_FLAGS : int32
		{
			FREQUENCY_10MHZ = 2,
			ALWAYS_RUNNING = 4,
			IS_SYSTEM_CLOCK = 8,
		}
		public enum MFCLOCK_STATE : int32
		{
			INVALID = 0,
			RUNNING = 1,
			STOPPED = 2,
			PAUSED = 3,
		}
		public enum MFCLOCK_RELATIONAL_FLAGS : int32
		{
			FLAG_JITTER_NEVER_AHEAD = 1,
		}
		public enum MFTIMER_FLAGS : int32
		{
			RELATIVE = 1,
		}
		public enum MF_ACTIVATE_CUSTOM_MIXER : int32
		{
			MIXER_ALLOWFAIL = 1,
		}
		public enum MF_ACTIVATE_CUSTOM_PRESENTER : int32
		{
			PRESENTER_ALLOWFAIL = 1,
		}
		public enum MFSHUTDOWN_STATUS : int32
		{
			INITIATED = 0,
			COMPLETED = 1,
		}
		public enum MF_URL_TRUST_STATUS : int32
		{
			UNTRUSTED = 0,
			TRUSTED = 1,
			TAMPERED = 2,
		}
		public enum MFRATE_DIRECTION : int32
		{
			FORWARD = 0,
			REVERSE = 1,
		}
		public enum MF_QUALITY_DROP_MODE : int32
		{
			DROP_MODE_NONE = 0,
			DROP_MODE_1 = 1,
			DROP_MODE_2 = 2,
			DROP_MODE_3 = 3,
			DROP_MODE_4 = 4,
			DROP_MODE_5 = 5,
			NUM_DROP_MODES = 6,
		}
		public enum MF_QUALITY_LEVEL : int32
		{
			QUALITY_NORMAL = 0,
			QUALITY_NORMAL_MINUS_1 = 1,
			QUALITY_NORMAL_MINUS_2 = 2,
			QUALITY_NORMAL_MINUS_3 = 3,
			QUALITY_NORMAL_MINUS_4 = 4,
			QUALITY_NORMAL_MINUS_5 = 5,
			NUM_QUALITY_LEVELS = 6,
		}
		public enum MF_QUALITY_ADVISE_FLAGS : int32
		{
			CANNOT_KEEP_UP = 1,
		}
		public enum MFSequencerTopologyFlags : int32
		{
			SequencerTopologyFlags_Last = 1,
		}
		public enum MFNetCredentialRequirements : int32
		{
			PROMPT = 1,
			SAVE_SELECTED = 2,
		}
		public enum MFNetCredentialOptions : int32
		{
			SAVE = 1,
			DONT_CACHE = 2,
			ALLOW_CLEAR_TEXT = 4,
		}
		public enum MFNetAuthenticationFlags : int32
		{
			PROXY = 1,
			CLEAR_TEXT = 2,
			LOGGED_ON_USER = 4,
		}
		public enum MFNETSOURCE_PROTOCOL_TYPE : int32
		{
			UNDEFINED = 0,
			HTTP = 1,
			RTSP = 2,
			FILE = 3,
			MULTICAST = 4,
		}
		public enum MFNETSOURCE_TRANSPORT_TYPE : int32
		{
			UDP = 0,
			TCP = 1,
		}
		public enum MFNETSOURCE_CACHE_STATE : int32
		{
			UNAVAILABLE = 0,
			ACTIVE_WRITING = 1,
			ACTIVE_COMPLETE = 2,
		}
		public enum MFNETSOURCE_STATISTICS_IDS : int32
		{
			RECVPACKETS_ID = 0,
			LOSTPACKETS_ID = 1,
			RESENDSREQUESTED_ID = 2,
			RESENDSRECEIVED_ID = 3,
			RECOVEREDBYECCPACKETS_ID = 4,
			RECOVEREDBYRTXPACKETS_ID = 5,
			OUTPACKETS_ID = 6,
			RECVRATE_ID = 7,
			AVGBANDWIDTHBPS_ID = 8,
			BYTESRECEIVED_ID = 9,
			PROTOCOL_ID = 10,
			TRANSPORT_ID = 11,
			CACHE_STATE_ID = 12,
			LINKBANDWIDTH_ID = 13,
			CONTENTBITRATE_ID = 14,
			SPEEDFACTOR_ID = 15,
			BUFFERSIZE_ID = 16,
			BUFFERPROGRESS_ID = 17,
			LASTBWSWITCHTS_ID = 18,
			SEEKRANGESTART_ID = 19,
			SEEKRANGEEND_ID = 20,
			BUFFERINGCOUNT_ID = 21,
			INCORRECTLYSIGNEDPACKETS_ID = 22,
			SIGNEDSESSION_ID = 23,
			MAXBITRATE_ID = 24,
			RECEPTION_QUALITY_ID = 25,
			RECOVEREDPACKETS_ID = 26,
			VBR_ID = 27,
			DOWNLOADPROGRESS_ID = 28,
			UNPREDEFINEDPROTOCOLNAME_ID = 29,
		}
		public enum MFNET_PROXYSETTINGS : int32
		{
			NONE = 0,
			MANUAL = 1,
			AUTO = 2,
			BROWSER = 3,
		}
		[AllowDuplicates]
		public enum MFPOLICYMANAGER_ACTION : int32
		{
			NO = 0,
			PLAY = 1,
			COPY = 2,
			EXPORT = 3,
			EXTRACT = 4,
			RESERVED1 = 5,
			RESERVED2 = 6,
			RESERVED3 = 7,
			LAST = 7,
		}
		public enum MF_OPM_CGMSA_PROTECTION_LEVEL : int32
		{
			OFF = 0,
			COPY_FREELY = 1,
			COPY_NO_MORE = 2,
			COPY_ONE_GENERATION = 3,
			COPY_NEVER = 4,
			REDISTRIBUTION_CONTROL_REQUIRED = 8,
		}
		public enum MF_OPM_ACP_PROTECTION_LEVEL : int32
		{
			OFF = 0,
			LEVEL_ONE = 1,
			LEVEL_TWO = 2,
			LEVEL_THREE = 3,
			FORCE_ULONG = 2147483647,
		}
		public enum MFAudioConstriction : int32
		{
			ConstrictionOff = 0,
			Constriction48_16 = 1,
			Constriction44_16 = 2,
			Constriction14_14 = 3,
			ConstrictionMute = 4,
		}
		public enum SAMPLE_PROTECTION_VERSION : int32
		{
			NO = 0,
			BASIC_LOKI = 1,
			SCATTER = 2,
			RC4 = 3,
			AES128CTR = 4,
		}
		public enum MF_TRANSCODE_TOPOLOGYMODE_FLAGS : int32
		{
			SOFTWARE_ONLY = 0,
			HARDWARE_ALLOWED = 1,
		}
		public enum MF_TRANSCODE_ADJUST_PROFILE_FLAGS : int32
		{
			DEFAULT = 0,
			USE_SOURCE_ATTRIBUTES = 1,
		}
		public enum MF_VIDEO_PROCESSOR_ALGORITHM_TYPE : int32
		{
			DEFAULT = 0,
			MRF_CRF_444 = 1,
		}
		public enum MF_MEDIAKEYSESSION_TYPE : int32
		{
			TEMPORARY = 0,
			PERSISTENT_LICENSE = 1,
			PERSISTENT_RELEASE_MESSAGE = 2,
			PERSISTENT_USAGE_RECORD = 3,
		}
		public enum MF_MEDIAKEY_STATUS : int32
		{
			USABLE = 0,
			EXPIRED = 1,
			OUTPUT_DOWNSCALED = 2,
			OUTPUT_NOT_ALLOWED = 3,
			STATUS_PENDING = 4,
			INTERNAL_ERROR = 5,
			RELEASED = 6,
			OUTPUT_RESTRICTED = 7,
		}
		public enum MF_MEDIAKEYSESSION_MESSAGETYPE : int32
		{
			LICENSE_REQUEST = 0,
			LICENSE_RENEWAL = 1,
			LICENSE_RELEASE = 2,
			INDIVIDUALIZATION_REQUEST = 3,
		}
		public enum MF_CROSS_ORIGIN_POLICY : int32
		{
			NONE = 0,
			ANONYMOUS = 1,
			USE_CREDENTIALS = 2,
		}
		public enum MFSensorDeviceType : int32
		{
			Unknown = 0,
			Device = 1,
			MediaSource = 2,
			FrameProvider = 3,
			SensorTransform = 4,
		}
		public enum MFSensorStreamType : int32
		{
			Unknown = 0,
			Input = 1,
			Output = 2,
		}
		public enum MFSensorDeviceMode : int32
		{
			Controller = 0,
			Shared = 1,
		}
		public enum MFCameraIntrinsic_DistortionModelType : int32
		{
			_6KT = 0,
			ArcTan = 1,
		}
		public enum MFCameraOcclusionState : int32
		{
			Open = 0,
			OccludedByLid = 1,
			OccludedByCameraHardware = 2,
		}
		public enum MFSampleAllocatorUsage : int32
		{
			UsesProvidedAllocator = 0,
			UsesCustomAllocator = 1,
			DoesNotAllocate = 2,
		}
		public enum MFASF_INDEXER_FLAGS : int32
		{
			WRITE_NEW_INDEX = 1,
			READ_FOR_REVERSEPLAYBACK = 2,
			WRITE_FOR_LIVEREAD = 4,
		}
		public enum MFASF_SPLITTERFLAGS : int32
		{
			REVERSE = 1,
			WMDRM = 2,
		}
		public enum ASF_STATUSFLAGS : int32
		{
			INCOMPLETE = 1,
			NONFATAL_ERROR = 2,
		}
		public enum MFASF_MULTIPLEXERFLAGS : int32
		{
			MULTIPLEXER_AUTOADJUST_BITRATE = 1,
		}
		public enum MFASF_STREAMSELECTOR_FLAGS : int32
		{
			DISABLE_THINNING = 1,
			USE_AVERAGE_BITRATE = 2,
		}
		public enum ASF_SELECTION_STATUS : int32
		{
			NOTSELECTED = 0,
			CLEANPOINTSONLY = 1,
			ALLDATAUNITS = 2,
		}
		[AllowDuplicates]
		public enum MFSINK_WMDRMACTION : int32
		{
			UNDEFINED = 0,
			ENCODE = 1,
			TRANSCODE = 2,
			TRANSCRYPT = 3,
			LAST = 3,
		}
		public enum MF_CAPTURE_ENGINE_DEVICE_TYPE : int32
		{
			AUDIO = 0,
			VIDEO = 1,
		}
		public enum MF_CAPTURE_ENGINE_SINK_TYPE : int32
		{
			RECORD = 0,
			PREVIEW = 1,
			PHOTO = 2,
		}
		public enum MF_CAPTURE_ENGINE_SOURCE : uint32
		{
			PREFERRED_SOURCE_STREAM_FOR_VIDEO_PREVIEW = 4294967290,
			PREFERRED_SOURCE_STREAM_FOR_VIDEO_RECORD = 4294967289,
			PREFERRED_SOURCE_STREAM_FOR_PHOTO = 4294967288,
			PREFERRED_SOURCE_STREAM_FOR_AUDIO = 4294967287,
			PREFERRED_SOURCE_STREAM_FOR_METADATA = 4294967286,
			MEDIASOURCE = 4294967295,
		}
		public enum MF_CAPTURE_ENGINE_STREAM_CATEGORY : int32
		{
			VIDEO_PREVIEW = 0,
			VIDEO_CAPTURE = 1,
			PHOTO_INDEPENDENT = 2,
			PHOTO_DEPENDENT = 3,
			AUDIO = 4,
			UNSUPPORTED = 5,
			METADATA = 6,
		}
		public enum MF_CAPTURE_ENGINE_MEDIA_CATEGORY_TYPE : int32
		{
			OTHER = 0,
			COMMUNICATIONS = 1,
			MEDIA = 2,
			GAMECHAT = 3,
			SPEECH = 4,
			FARFIELDSPEECH = 5,
			UNIFORMSPEECH = 6,
			VOICETYPING = 7,
		}
		public enum MF_CAPTURE_ENGINE_AUDIO_PROCESSING_MODE : int32
		{
			DEFAULT = 0,
			RAW = 1,
		}
		public enum MF_MT_D3D_RESOURCE_VERSION_ENUM : int32
		{
			D3D11_RESOURCE = 0,
			D3D12_RESOURCE = 1,
		}
		public enum MFASYNC_WORKQUEUE_TYPE : int32
		{
			STANDARD_WORKQUEUE = 0,
			WINDOW_WORKQUEUE = 1,
			MULTITHREADED_WORKQUEUE = 2,
		}
		public enum MF_TOPOSTATUS : int32
		{
			INVALID = 0,
			READY = 100,
			STARTED_SOURCE = 200,
			DYNAMIC_CHANGED = 210,
			SINK_SWITCHED = 300,
			ENDED = 400,
		}
		public enum MFSampleEncryptionProtectionScheme : int32
		{
			NONE = 0,
			AES_CTR = 1,
			AES_CBC = 2,
		}
		public enum _MFT_ENUM_FLAG : int32
		{
			SYNCMFT = 1,
			ASYNCMFT = 2,
			HARDWARE = 4,
			FIELDOFUSE = 8,
			LOCALMFT = 16,
			TRANSCODE_ONLY = 32,
			SORTANDFILTER = 64,
			SORTANDFILTER_APPROVED_ONLY = 192,
			SORTANDFILTER_WEB_ONLY = 320,
			SORTANDFILTER_WEB_ONLY_EDGEMODE = 576,
			UNTRUSTED_STOREMFT = 1024,
			ALL = 63,
		}
		public enum MFFrameSourceTypes : int32
		{
			Color = 1,
			Infrared = 2,
			Depth = 4,
			Image = 8,
			Custom = 128,
		}
		public enum MFVideo3DFormat : int32
		{
			BaseView = 0,
			MultiView = 1,
			Packed_LeftRight = 2,
			Packed_TopBottom = 3,
		}
		public enum MFVideo3DSampleFormat : int32
		{
			MultiView = 1,
			Packed = 0,
		}
		public enum MFVideoRotationFormat : int32
		{
			_0 = 0,
			_90 = 90,
			_180 = 180,
			_270 = 270,
		}
		public enum MFDepthMeasurement : int32
		{
			FocalPlane = 0,
			OpticalCenter = 1,
		}
		public enum MF_CUSTOM_DECODE_UNIT_TYPE : int32
		{
			NAL = 0,
			SEI = 1,
		}
		public enum MFVideoDRMFlags : int32
		{
			None = 0,
			AnalogProtected = 1,
			DigitallyProtected = 2,
		}
		public enum MFVideoPadFlags : int32
		{
			None = 0,
			_4x3 = 1,
			_16x9 = 2,
		}
		public enum MFVideoSrcContentHintFlags : int32
		{
			None = 0,
			_16x9 = 1,
			_235_1 = 2,
		}
		public enum MFWaveFormatExConvertFlags : int32
		{
			Normal = 0,
			ForceExtensible = 1,
		}
		public enum EAllocationType : int32
		{
			Dynamic = 0,
			RT = 1,
			Pageable = 2,
			Ignore = 3,
		}
		public enum MF_MEDIA_ENGINE_ERR : int32
		{
			NOERROR = 0,
			ABORTED = 1,
			NETWORK = 2,
			DECODE = 3,
			SRC_NOT_SUPPORTED = 4,
			ENCRYPTED = 5,
		}
		public enum MF_MEDIA_ENGINE_EVENT : int32
		{
			LOADSTART = 1,
			PROGRESS = 2,
			SUSPEND = 3,
			ABORT = 4,
			ERROR = 5,
			EMPTIED = 6,
			STALLED = 7,
			PLAY = 8,
			PAUSE = 9,
			LOADEDMETADATA = 10,
			LOADEDDATA = 11,
			WAITING = 12,
			PLAYING = 13,
			CANPLAY = 14,
			CANPLAYTHROUGH = 15,
			SEEKING = 16,
			SEEKED = 17,
			TIMEUPDATE = 18,
			ENDED = 19,
			RATECHANGE = 20,
			DURATIONCHANGE = 21,
			VOLUMECHANGE = 22,
			FORMATCHANGE = 1000,
			PURGEQUEUEDEVENTS = 1001,
			TIMELINE_MARKER = 1002,
			BALANCECHANGE = 1003,
			DOWNLOADCOMPLETE = 1004,
			BUFFERINGSTARTED = 1005,
			BUFFERINGENDED = 1006,
			FRAMESTEPCOMPLETED = 1007,
			NOTIFYSTABLESTATE = 1008,
			FIRSTFRAMEREADY = 1009,
			TRACKSCHANGE = 1010,
			OPMINFO = 1011,
			RESOURCELOST = 1012,
			DELAYLOADEVENT_CHANGED = 1013,
			STREAMRENDERINGERROR = 1014,
			SUPPORTEDRATES_CHANGED = 1015,
			AUDIOENDPOINTCHANGE = 1016,
		}
		public enum MF_MEDIA_ENGINE_NETWORK : int32
		{
			EMPTY = 0,
			IDLE = 1,
			LOADING = 2,
			NO_SOURCE = 3,
		}
		public enum MF_MEDIA_ENGINE_READY : int32
		{
			NOTHING = 0,
			METADATA = 1,
			CURRENT_DATA = 2,
			FUTURE_DATA = 3,
			ENOUGH_DATA = 4,
		}
		public enum MF_MEDIA_ENGINE_CANPLAY : int32
		{
			NOT_SUPPORTED = 0,
			MAYBE = 1,
			PROBABLY = 2,
		}
		public enum MF_MEDIA_ENGINE_PRELOAD : int32
		{
			MISSING = 0,
			EMPTY = 1,
			NONE = 2,
			METADATA = 3,
			AUTOMATIC = 4,
		}
		public enum MF_MEDIA_ENGINE_S3D_PACKING_MODE : int32
		{
			NONE = 0,
			SIDE_BY_SIDE = 1,
			TOP_BOTTOM = 2,
		}
		public enum MF_MEDIA_ENGINE_STATISTIC : int32
		{
			FRAMES_RENDERED = 0,
			FRAMES_DROPPED = 1,
			BYTES_DOWNLOADED = 2,
			BUFFER_PROGRESS = 3,
			FRAMES_PER_SECOND = 4,
			PLAYBACK_JITTER = 5,
			FRAMES_CORRUPTED = 6,
			TOTAL_FRAME_DELAY = 7,
		}
		public enum MF_MEDIA_ENGINE_SEEK_MODE : int32
		{
			NORMAL = 0,
			APPROXIMATE = 1,
		}
		public enum MF_MEDIA_ENGINE_EXTENSION_TYPE : int32
		{
			MEDIASOURCE = 0,
			BYTESTREAM = 1,
		}
		public enum MF_MEDIA_ENGINE_FRAME_PROTECTION_FLAGS : int32
		{
			PROTECTED = 1,
			REQUIRES_SURFACE_PROTECTION = 2,
			REQUIRES_ANTI_SCREEN_SCRAPE_PROTECTION = 4,
		}
		public enum MF_MSE_VP9_SUPPORT_TYPE : int32
		{
			DEFAULT = 0,
			ON = 1,
			OFF = 2,
		}
		public enum MF_MSE_OPUS_SUPPORT_TYPE : int32
		{
			ON = 0,
			OFF = 1,
		}
		public enum MF_MSE_APPEND_MODE : int32
		{
			SEGMENTS = 0,
			SEQUENCE = 1,
		}
		public enum MF_MSE_READY : int32
		{
			CLOSED = 1,
			OPEN = 2,
			ENDED = 3,
		}
		public enum MF_MSE_ERROR : int32
		{
			NOERROR = 0,
			NETWORK = 1,
			DECODE = 2,
			UNKNOWN_ERROR = 3,
		}
		public enum MF_MEDIA_ENGINE_KEYERR : int32
		{
			UNKNOWN = 1,
			CLIENT = 2,
			SERVICE = 3,
			OUTPUT = 4,
			HARDWARECHANGE = 5,
			DOMAIN = 6,
		}
		public enum MF_HDCP_STATUS : int32
		{
			ON = 0,
			OFF = 1,
			ON_WITH_TYPE_ENFORCEMENT = 2,
		}
		public enum MF_MEDIA_ENGINE_OPM_STATUS : int32
		{
			NOT_REQUESTED = 0,
			ESTABLISHED = 1,
			FAILED_VM = 2,
			FAILED_BDA = 3,
			FAILED_UNSIGNED_DRIVER = 4,
			FAILED = 5,
		}
		public enum MF_MEDIA_ENGINE_CREATEFLAGS : int32
		{
			AUDIOONLY = 1,
			WAITFORSTABLE_STATE = 2,
			FORCEMUTE = 4,
			REAL_TIME_MODE = 8,
			DISABLE_LOCAL_PLUGINS = 16,
			CREATEFLAGS_MASK = 31,
		}
		public enum MF_MEDIA_ENGINE_PROTECTION_FLAGS : int32
		{
			ENABLE_PROTECTED_CONTENT = 1,
			USE_PMP_FOR_ALL_CONTENT = 2,
			USE_UNPROTECTED_PMP = 4,
		}
		public enum MF_TIMED_TEXT_TRACK_KIND : int32
		{
			UNKNOWN = 0,
			SUBTITLES = 1,
			CAPTIONS = 2,
			METADATA = 3,
		}
		public enum MF_TIMED_TEXT_UNIT_TYPE : int32
		{
			PIXELS = 0,
			PERCENTAGE = 1,
		}
		public enum MF_TIMED_TEXT_FONT_STYLE : int32
		{
			NORMAL = 0,
			OBLIQUE = 1,
			ITALIC = 2,
		}
		public enum MF_TIMED_TEXT_ALIGNMENT : int32
		{
			START = 0,
			END = 1,
			CENTER = 2,
		}
		public enum MF_TIMED_TEXT_DISPLAY_ALIGNMENT : int32
		{
			BEFORE = 0,
			AFTER = 1,
			CENTER = 2,
		}
		public enum MF_TIMED_TEXT_DECORATION : int32
		{
			NONE = 0,
			UNDERLINE = 1,
			LINE_THROUGH = 2,
			OVERLINE = 4,
		}
		public enum MF_TIMED_TEXT_WRITING_MODE : int32
		{
			LRTB = 0,
			RLTB = 1,
			TBRL = 2,
			TBLR = 3,
			LR = 4,
			RL = 5,
			TB = 6,
		}
		public enum MF_TIMED_TEXT_SCROLL_MODE : int32
		{
			POP_ON = 0,
			ROLL_UP = 1,
		}
		public enum MF_TIMED_TEXT_ERROR_CODE : int32
		{
			NOERROR = 0,
			FATAL = 1,
			DATA_FORMAT = 2,
			NETWORK = 3,
			INTERNAL = 4,
		}
		public enum MF_TIMED_TEXT_CUE_EVENT : int32
		{
			ACTIVE = 0,
			INACTIVE = 1,
			CLEAR = 2,
		}
		public enum MF_TIMED_TEXT_TRACK_READY_STATE : int32
		{
			NONE = 0,
			LOADING = 1,
			LOADED = 2,
			ERROR = 3,
		}
		public enum MF_TIMED_TEXT_RUBY_POSITION : int32
		{
			BEFORE = 0,
			AFTER = 1,
			OUTSIDE = 2,
		}
		public enum MF_TIMED_TEXT_RUBY_ALIGN : int32
		{
			CENTER = 0,
			START = 1,
			END = 2,
			SPACEAROUND = 3,
			SPACEBETWEEN = 4,
			WITHBASE = 5,
		}
		public enum MF_TIMED_TEXT_RUBY_RESERVE : int32
		{
			NONE = 0,
			BEFORE = 1,
			AFTER = 2,
			BOTH = 3,
			OUTSIDE = 4,
		}
		public enum MF_TIMED_TEXT_BOUTEN_TYPE : int32
		{
			NONE = 0,
			AUTO = 1,
			FILLEDCIRCLE = 2,
			OPENCIRCLE = 3,
			FILLEDDOT = 4,
			OPENDOT = 5,
			FILLEDSESAME = 6,
			OPENSESAME = 7,
		}
		public enum MF_TIMED_TEXT_BOUTEN_POSITION : int32
		{
			BEFORE = 0,
			AFTER = 1,
			OUTSIDE = 2,
		}
		public enum MF_MEDIA_ENGINE_STREAMTYPE_FAILED : int32
		{
			UNKNOWN = 0,
			AUDIO = 1,
			VIDEO = 2,
		}
		public enum MF_MEDIAKEYS_REQUIREMENT : int32
		{
			REQUIRED = 1,
			OPTIONAL = 2,
			NOT_ALLOWED = 3,
		}
		public enum MF_SOURCE_READER_FLAG : int32
		{
			ERROR = 1,
			ENDOFSTREAM = 2,
			NEWSTREAM = 4,
			NATIVEMEDIATYPECHANGED = 16,
			CURRENTMEDIATYPECHANGED = 32,
			STREAMTICK = 256,
			ALLEFFECTSREMOVED = 512,
		}
		public enum MF_SOURCE_READER_CONTROL_FLAG : int32
		{
			CONTROLF_DRAIN = 1,
		}
		[AllowDuplicates]
		public enum MF_SOURCE_READER_CONSTANTS : int32
		{
			INVALID_STREAM_INDEX = -1,
			ALL_STREAMS = -2,
			ANY_STREAM = -2,
			FIRST_AUDIO_STREAM = -3,
			FIRST_VIDEO_STREAM = -4,
			MEDIASOURCE = -1,
		}
		public enum MF_SOURCE_READER_CURRENT_TYPE_CONSTANTS : int32
		{
			INDEX = -1,
		}
		[AllowDuplicates]
		public enum MF_SINK_WRITER_CONSTANTS : uint32
		{
			INVALID_STREAM_INDEX = 4294967295,
			ALL_STREAMS = 4294967294,
			MEDIASINK = 4294967295,
		}
		public enum MFVideoAspectRatioMode : int32
		{
			None = 0,
			PreservePicture = 1,
			PreservePixel = 2,
			NonLinearStretch = 4,
			Mask = 7,
		}
		public enum MFVideoRenderPrefs : int32
		{
			DoNotRenderBorder = 1,
			DoNotClipToDevice = 2,
			AllowOutputThrottling = 4,
			ForceOutputThrottling = 8,
			ForceBatching = 16,
			AllowBatching = 32,
			ForceScaling = 64,
			AllowScaling = 128,
			DoNotRepaintOnStop = 256,
			Mask = 511,
		}
		public enum MFVP_MESSAGE_TYPE : int32
		{
			FLUSH = 0,
			INVALIDATEMEDIATYPE = 1,
			PROCESSINPUTNOTIFY = 2,
			BEGINSTREAMING = 3,
			ENDSTREAMING = 4,
			ENDOFSTREAM = 5,
			STEP = 6,
			CANCELSTEP = 7,
		}
		public enum MFVideoMixPrefs : int32
		{
			ForceHalfInterlace = 1,
			AllowDropToHalfInterlace = 2,
			AllowDropToBob = 4,
			ForceBob = 8,
			EnableRotation = 16,
			Mask = 31,
		}
		[AllowDuplicates]
		public enum EVRFilterConfigPrefs : int32
		{
			EnableQoS = 1,
			Mask = 1,
		}
		public enum MF_SERVICE_LOOKUP_TYPE : int32
		{
			UPSTREAM = 0,
			UPSTREAM_DIRECT = 1,
			DOWNSTREAM = 2,
			DOWNSTREAM_DIRECT = 3,
			ALL = 4,
			GLOBAL = 5,
		}
		public enum MFP_CREATION_OPTIONS : int32
		{
			NONE = 0,
			FREE_THREADED_CALLBACK = 1,
			NO_MMCSS = 2,
			NO_REMOTE_DESKTOP_OPTIMIZATION = 4,
		}
		public enum MFP_MEDIAPLAYER_STATE : int32
		{
			EMPTY = 0,
			STOPPED = 1,
			PLAYING = 2,
			PAUSED = 3,
			SHUTDOWN = 4,
		}
		public enum _MFP_MEDIAITEM_CHARACTERISTICS : int32
		{
			IS_LIVE = 1,
			CAN_SEEK = 2,
			CAN_PAUSE = 4,
			HAS_SLOW_SEEK = 8,
		}
		public enum _MFP_CREDENTIAL_FLAGS : int32
		{
			PROMPT = 1,
			SAVE = 2,
			DO_NOT_CACHE = 4,
			CLEAR_TEXT = 8,
			PROXY = 16,
			LOGGED_ON_USER = 32,
		}
		public enum MFP_EVENT_TYPE : int32
		{
			PLAY = 0,
			PAUSE = 1,
			STOP = 2,
			POSITION_SET = 3,
			RATE_SET = 4,
			MEDIAITEM_CREATED = 5,
			MEDIAITEM_SET = 6,
			FRAME_STEP = 7,
			MEDIAITEM_CLEARED = 8,
			MF = 9,
			ERROR = 10,
			PLAYBACK_ENDED = 11,
			ACQUIRE_USER_CREDENTIAL = 12,
		}
		public enum MF_SHARING_ENGINE_EVENT : int32
		{
			DISCONNECT = 2000,
			LOCALRENDERINGSTARTED = 2001,
			LOCALRENDERINGENDED = 2002,
			STOPPED = 2003,
			ERROR = 2501,
		}
		public enum MF_MEDIA_SHARING_ENGINE_EVENT : int32
		{
			EVENT_DISCONNECT = 2000,
		}
		public enum PLAYTO_SOURCE_CREATEFLAGS : int32
		{
			NONE = 0,
			IMAGE = 1,
			AUDIO = 2,
			VIDEO = 4,
			PROTECTED = 8,
		}
		public enum MFVideoAlphaBitmapFlags : int32
		{
			EntireDDS = 1,
			SrcColorKey = 2,
			SrcRect = 4,
			DestRect = 8,
			FilterMode = 16,
			Alpha = 32,
			BitMask = 63,
		}
		public enum __MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0001 : int32
		{
			MFVirtualCameraType_SoftwareCameraSource = 0,
		}
		public enum __MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0002 : int32
		{
			Session = 0,
			System = 1,
		}
		public enum __MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0003 : int32
		{
			CurrentUser = 0,
			AllUsers = 1,
		}
		public enum OPM_HDCP_TYPE : int32
		{
			_0 = 0,
			_1 = 1,
		}
		public enum OPM_HDCP_STATUS : int32
		{
			ON = 0,
			OFF = 1,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT PDXVAHDSW_CreateDevice(ref IDirect3DDevice9Ex pD3DDevice, out HANDLE phDevice);
		public function HRESULT PDXVAHDSW_ProposeVideoPrivateFormat(HANDLE hDevice, out D3DFORMAT pFormat);
		public function HRESULT PDXVAHDSW_GetVideoProcessorDeviceCaps(HANDLE hDevice, in DXVAHD_CONTENT_DESC pContentDesc, DXVAHD_DEVICE_USAGE Usage, out DXVAHD_VPDEVCAPS pCaps);
		public function HRESULT PDXVAHDSW_GetVideoProcessorOutputFormats(HANDLE hDevice, in DXVAHD_CONTENT_DESC pContentDesc, DXVAHD_DEVICE_USAGE Usage, uint32 Count, D3DFORMAT* pFormats);
		public function HRESULT PDXVAHDSW_GetVideoProcessorInputFormats(HANDLE hDevice, in DXVAHD_CONTENT_DESC pContentDesc, DXVAHD_DEVICE_USAGE Usage, uint32 Count, D3DFORMAT* pFormats);
		public function HRESULT PDXVAHDSW_GetVideoProcessorCaps(HANDLE hDevice, in DXVAHD_CONTENT_DESC pContentDesc, DXVAHD_DEVICE_USAGE Usage, uint32 Count, DXVAHD_VPCAPS* pCaps);
		public function HRESULT PDXVAHDSW_GetVideoProcessorCustomRates(HANDLE hDevice, in Guid pVPGuid, uint32 Count, DXVAHD_CUSTOM_RATE_DATA* pRates);
		public function HRESULT PDXVAHDSW_GetVideoProcessorFilterRange(HANDLE hDevice, DXVAHD_FILTER Filter, out DXVAHD_FILTER_RANGE_DATA pRange);
		public function HRESULT PDXVAHDSW_DestroyDevice(HANDLE hDevice);
		public function HRESULT PDXVAHDSW_CreateVideoProcessor(HANDLE hDevice, in Guid pVPGuid, out HANDLE phVideoProcessor);
		public function HRESULT PDXVAHDSW_SetVideoProcessBltState(HANDLE hVideoProcessor, DXVAHD_BLT_STATE State, uint32 DataSize, void* pData);
		public function HRESULT PDXVAHDSW_GetVideoProcessBltStatePrivate(HANDLE hVideoProcessor, out DXVAHD_BLT_STATE_PRIVATE_DATA pData);
		public function HRESULT PDXVAHDSW_SetVideoProcessStreamState(HANDLE hVideoProcessor, uint32 StreamNumber, DXVAHD_STREAM_STATE State, uint32 DataSize, void* pData);
		public function HRESULT PDXVAHDSW_GetVideoProcessStreamStatePrivate(HANDLE hVideoProcessor, uint32 StreamNumber, out DXVAHD_STREAM_STATE_PRIVATE_DATA pData);
		public function HRESULT PDXVAHDSW_VideoProcessBltHD(HANDLE hVideoProcessor, ref IDirect3DSurface9 pOutputSurface, uint32 OutputFrame, uint32 StreamCount, DXVAHD_STREAM_DATA* pStreams);
		public function HRESULT PDXVAHDSW_DestroyVideoProcessor(HANDLE hVideoProcessor);
		public function HRESULT PDXVAHDSW_Plugin(uint32 Size, void* pCallbacks);
		public function HRESULT PDXVAHD_CreateDevice(ref IDirect3DDevice9Ex pD3DDevice, in DXVAHD_CONTENT_DESC pContentDesc, DXVAHD_DEVICE_USAGE Usage, PDXVAHDSW_Plugin pPlugin, out IDXVAHD_Device* ppDevice);
		public function void MFPERIODICCALLBACK(ref IUnknown pContext);
		
		// --- Structs ---
		
		[CRepr]
		public struct CodecAPIEventData
		{
			public Guid guid;
			public uint32 dataLength;
			public uint32[3] reserved;
		}
		[CRepr]
		public struct D3DOVERLAYCAPS
		{
			public uint32 Caps;
			public uint32 MaxOverlayDisplayWidth;
			public uint32 MaxOverlayDisplayHeight;
		}
		[CRepr]
		public struct D3DCONTENTPROTECTIONCAPS
		{
			public uint32 Caps;
			public Guid KeyExchangeType;
			public uint32 BufferAlignmentStart;
			public uint32 BlockAlignmentSize;
			public uint64 ProtectedMemorySize;
		}
		[CRepr]
		public struct D3D12_VIDEO_FORMAT
		{
			public DXGI_FORMAT Format;
			public DXGI_COLOR_SPACE_TYPE ColorSpace;
		}
		[CRepr]
		public struct D3D12_VIDEO_SAMPLE
		{
			public uint32 Width;
			public uint32 Height;
			public D3D12_VIDEO_FORMAT Format;
		}
		[CRepr]
		public struct D3D12_VIDEO_DECODE_CONFIGURATION
		{
			public Guid DecodeProfile;
			public D3D12_BITSTREAM_ENCRYPTION_TYPE BitstreamEncryption;
			public D3D12_VIDEO_FRAME_CODED_INTERLACE_TYPE InterlaceType;
		}
		[CRepr]
		public struct D3D12_VIDEO_DECODER_DESC
		{
			public uint32 NodeMask;
			public D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
		}
		[CRepr]
		public struct D3D12_VIDEO_DECODER_HEAP_DESC
		{
			public uint32 NodeMask;
			public D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
			public uint32 DecodeWidth;
			public uint32 DecodeHeight;
			public DXGI_FORMAT Format;
			public DXGI_RATIONAL FrameRate;
			public uint32 BitRate;
			public uint32 MaxDecodePictureBufferCount;
		}
		[CRepr]
		public struct D3D12_VIDEO_SIZE_RANGE
		{
			public uint32 MaxWidth;
			public uint32 MaxHeight;
			public uint32 MinWidth;
			public uint32 MinHeight;
		}
		[CRepr]
		public struct D3D12_VIDEO_PROCESS_ALPHA_BLENDING
		{
			public BOOL Enable;
			public float Alpha;
		}
		[CRepr]
		public struct D3D12_VIDEO_PROCESS_LUMA_KEY
		{
			public BOOL Enable;
			public float Lower;
			public float Upper;
		}
		[CRepr]
		public struct D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC
		{
			public DXGI_FORMAT Format;
			public DXGI_COLOR_SPACE_TYPE ColorSpace;
			public DXGI_RATIONAL SourceAspectRatio;
			public DXGI_RATIONAL DestinationAspectRatio;
			public DXGI_RATIONAL FrameRate;
			public D3D12_VIDEO_SIZE_RANGE SourceSizeRange;
			public D3D12_VIDEO_SIZE_RANGE DestinationSizeRange;
			public BOOL EnableOrientation;
			public D3D12_VIDEO_PROCESS_FILTER_FLAGS FilterFlags;
			public D3D12_VIDEO_FRAME_STEREO_FORMAT StereoFormat;
			public D3D12_VIDEO_FIELD_TYPE FieldType;
			public D3D12_VIDEO_PROCESS_DEINTERLACE_FLAGS DeinterlaceMode;
			public BOOL EnableAlphaBlending;
			public D3D12_VIDEO_PROCESS_LUMA_KEY LumaKey;
			public uint32 NumPastFrames;
			public uint32 NumFutureFrames;
			public BOOL EnableAutoProcessing;
		}
		[CRepr]
		public struct D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC
		{
			public DXGI_FORMAT Format;
			public DXGI_COLOR_SPACE_TYPE ColorSpace;
			public D3D12_VIDEO_PROCESS_ALPHA_FILL_MODE AlphaFillMode;
			public uint32 AlphaFillModeSourceStreamIndex;
			public float[4] BackgroundColor;
			public DXGI_RATIONAL FrameRate;
			public BOOL EnableStereo;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_DECODE_SUPPORT
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
			public uint32 Width;
			public uint32 Height;
			public DXGI_FORMAT DecodeFormat;
			public DXGI_RATIONAL FrameRate;
			public uint32 BitRate;
			public D3D12_VIDEO_DECODE_SUPPORT_FLAGS SupportFlags;
			public D3D12_VIDEO_DECODE_CONFIGURATION_FLAGS ConfigurationFlags;
			public D3D12_VIDEO_DECODE_TIER DecodeTier;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_DECODE_PROFILE_COUNT
		{
			public uint32 NodeIndex;
			public uint32 ProfileCount;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_DECODE_PROFILES
		{
			public uint32 NodeIndex;
			public uint32 ProfileCount;
			public Guid* pProfiles;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_DECODE_FORMAT_COUNT
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
			public uint32 FormatCount;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_DECODE_FORMATS
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
			public uint32 FormatCount;
			public DXGI_FORMAT* pOutputFormats;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ARCHITECTURE
		{
			public BOOL IOCoherent;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_DECODE_HISTOGRAM
		{
			public uint32 NodeIndex;
			public Guid DecodeProfile;
			public uint32 Width;
			public uint32 Height;
			public DXGI_FORMAT DecodeFormat;
			public D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_FLAGS Components;
			public uint32 BinCount;
			public uint32 CounterBitDepth;
		}
		[CRepr]
		public struct D3D12_VIDEO_SCALE_SUPPORT
		{
			public D3D12_VIDEO_SIZE_RANGE OutputSizeRange;
			public D3D12_VIDEO_SCALE_SUPPORT_FLAGS Flags;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_DECODE_CONVERSION_SUPPORT
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
			public D3D12_VIDEO_SAMPLE DecodeSample;
			public D3D12_VIDEO_FORMAT OutputFormat;
			public DXGI_RATIONAL FrameRate;
			public uint32 BitRate;
			public D3D12_VIDEO_DECODE_CONVERSION_SUPPORT_FLAGS SupportFlags;
			public D3D12_VIDEO_SCALE_SUPPORT ScaleSupport;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_DECODER_HEAP_SIZE
		{
			public D3D12_VIDEO_DECODER_HEAP_DESC VideoDecoderHeapDesc;
			public uint64 MemoryPoolL0Size;
			public uint64 MemoryPoolL1Size;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_PROCESSOR_SIZE
		{
			public uint32 NodeMask;
			public D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC* pOutputStreamDesc;
			public uint32 NumInputStreamDescs;
			public D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC* pInputStreamDescs;
			public uint64 MemoryPoolL0Size;
			public uint64 MemoryPoolL1Size;
		}
		[CRepr]
		public struct D3D12_QUERY_DATA_VIDEO_DECODE_STATISTICS
		{
			public uint64 Status;
			public uint64 NumMacroblocksAffected;
			public DXGI_RATIONAL FrameRate;
			public uint32 BitRate;
		}
		[CRepr]
		public struct D3D12_VIDEO_DECODE_FRAME_ARGUMENT
		{
			public D3D12_VIDEO_DECODE_ARGUMENT_TYPE Type;
			public uint32 Size;
			public void* pData;
		}
		[CRepr]
		public struct D3D12_VIDEO_DECODE_REFERENCE_FRAMES
		{
			public uint32 NumTexture2Ds;
			public ID3D12Resource** ppTexture2Ds;
			public uint32* pSubresources;
			public ID3D12VideoDecoderHeap** ppHeaps;
		}
		[CRepr]
		public struct D3D12_VIDEO_DECODE_COMPRESSED_BITSTREAM
		{
			public ID3D12Resource* pBuffer;
			public uint64 Offset;
			public uint64 Size;
		}
		[CRepr]
		public struct D3D12_VIDEO_DECODE_CONVERSION_ARGUMENTS
		{
			public BOOL Enable;
			public ID3D12Resource* pReferenceTexture2D;
			public uint32 ReferenceSubresource;
			public DXGI_COLOR_SPACE_TYPE OutputColorSpace;
			public DXGI_COLOR_SPACE_TYPE DecodeColorSpace;
		}
		[CRepr]
		public struct D3D12_VIDEO_DECODE_INPUT_STREAM_ARGUMENTS
		{
			public uint32 NumFrameArguments;
			public D3D12_VIDEO_DECODE_FRAME_ARGUMENT[10] FrameArguments;
			public D3D12_VIDEO_DECODE_REFERENCE_FRAMES ReferenceFrames;
			public D3D12_VIDEO_DECODE_COMPRESSED_BITSTREAM CompressedBitstream;
			public ID3D12VideoDecoderHeap* pHeap;
		}
		[CRepr]
		public struct D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS
		{
			public ID3D12Resource* pOutputTexture2D;
			public uint32 OutputSubresource;
			public D3D12_VIDEO_DECODE_CONVERSION_ARGUMENTS ConversionArguments;
		}
		[CRepr]
		public struct D3D12_VIDEO_PROCESS_FILTER_RANGE
		{
			public int32 Minimum;
			public int32 Maximum;
			public int32 Default;
			public float Multiplier;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_PROCESS_SUPPORT
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_SAMPLE InputSample;
			public D3D12_VIDEO_FIELD_TYPE InputFieldType;
			public D3D12_VIDEO_FRAME_STEREO_FORMAT InputStereoFormat;
			public DXGI_RATIONAL InputFrameRate;
			public D3D12_VIDEO_FORMAT OutputFormat;
			public D3D12_VIDEO_FRAME_STEREO_FORMAT OutputStereoFormat;
			public DXGI_RATIONAL OutputFrameRate;
			public D3D12_VIDEO_PROCESS_SUPPORT_FLAGS SupportFlags;
			public D3D12_VIDEO_SCALE_SUPPORT ScaleSupport;
			public D3D12_VIDEO_PROCESS_FEATURE_FLAGS FeatureSupport;
			public D3D12_VIDEO_PROCESS_DEINTERLACE_FLAGS DeinterlaceSupport;
			public D3D12_VIDEO_PROCESS_AUTO_PROCESSING_FLAGS AutoProcessingSupport;
			public D3D12_VIDEO_PROCESS_FILTER_FLAGS FilterSupport;
			public D3D12_VIDEO_PROCESS_FILTER_RANGE[32] FilterRangeSupport;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_PROCESS_MAX_INPUT_STREAMS
		{
			public uint32 NodeIndex;
			public uint32 MaxInputStreams;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_PROCESS_REFERENCE_INFO
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_PROCESS_DEINTERLACE_FLAGS DeinterlaceMode;
			public D3D12_VIDEO_PROCESS_FILTER_FLAGS Filters;
			public D3D12_VIDEO_PROCESS_FEATURE_FLAGS FeatureSupport;
			public DXGI_RATIONAL InputFrameRate;
			public DXGI_RATIONAL OutputFrameRate;
			public BOOL EnableAutoProcessing;
			public uint32 PastFrames;
			public uint32 FutureFrames;
		}
		[CRepr]
		public struct D3D12_VIDEO_PROCESS_REFERENCE_SET
		{
			public uint32 NumPastFrames;
			public ID3D12Resource** ppPastFrames;
			public uint32* pPastSubresources;
			public uint32 NumFutureFrames;
			public ID3D12Resource** ppFutureFrames;
			public uint32* pFutureSubresources;
		}
		[CRepr]
		public struct D3D12_VIDEO_PROCESS_TRANSFORM
		{
			public RECT SourceRectangle;
			public RECT DestinationRectangle;
			public D3D12_VIDEO_PROCESS_ORIENTATION Orientation;
		}
		[CRepr]
		public struct D3D12_VIDEO_PROCESS_INPUT_STREAM_RATE
		{
			public uint32 OutputIndex;
			public uint32 InputFrameOrField;
		}
		[CRepr]
		public struct D3D12_VIDEO_PROCESS_INPUT_STREAM
		{
			public ID3D12Resource* pTexture2D;
			public uint32 Subresource;
			public D3D12_VIDEO_PROCESS_REFERENCE_SET ReferenceSet;
		}
		[CRepr]
		public struct D3D12_VIDEO_PROCESS_INPUT_STREAM_ARGUMENTS
		{
			public D3D12_VIDEO_PROCESS_INPUT_STREAM[2] InputStream;
			public D3D12_VIDEO_PROCESS_TRANSFORM Transform;
			public D3D12_VIDEO_PROCESS_INPUT_STREAM_FLAGS Flags;
			public D3D12_VIDEO_PROCESS_INPUT_STREAM_RATE RateInfo;
			public int32[32] FilterLevels;
			public D3D12_VIDEO_PROCESS_ALPHA_BLENDING AlphaBlending;
		}
		[CRepr]
		public struct D3D12_VIDEO_PROCESS_OUTPUT_STREAM
		{
			public ID3D12Resource* pTexture2D;
			public uint32 Subresource;
		}
		[CRepr]
		public struct D3D12_VIDEO_PROCESS_OUTPUT_STREAM_ARGUMENTS
		{
			public D3D12_VIDEO_PROCESS_OUTPUT_STREAM[2] OutputStream;
			public RECT TargetRectangle;
		}
		[CRepr]
		public struct D3D12_VIDEO_DECODE_OUTPUT_HISTOGRAM
		{
			public uint64 Offset;
			public ID3D12Resource* pBuffer;
		}
		[CRepr]
		public struct D3D12_VIDEO_DECODE_CONVERSION_ARGUMENTS1
		{
			public BOOL Enable;
			public ID3D12Resource* pReferenceTexture2D;
			public uint32 ReferenceSubresource;
			public DXGI_COLOR_SPACE_TYPE OutputColorSpace;
			public DXGI_COLOR_SPACE_TYPE DecodeColorSpace;
			public uint32 OutputWidth;
			public uint32 OutputHeight;
		}
		[CRepr]
		public struct D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS1
		{
			public ID3D12Resource* pOutputTexture2D;
			public uint32 OutputSubresource;
			public D3D12_VIDEO_DECODE_CONVERSION_ARGUMENTS1 ConversionArguments;
			public D3D12_VIDEO_DECODE_OUTPUT_HISTOGRAM[4] Histograms;
		}
		[CRepr]
		public struct D3D12_VIDEO_PROCESS_INPUT_STREAM_ARGUMENTS1
		{
			public D3D12_VIDEO_PROCESS_INPUT_STREAM[2] InputStream;
			public D3D12_VIDEO_PROCESS_TRANSFORM Transform;
			public D3D12_VIDEO_PROCESS_INPUT_STREAM_FLAGS Flags;
			public D3D12_VIDEO_PROCESS_INPUT_STREAM_RATE RateInfo;
			public int32[32] FilterLevels;
			public D3D12_VIDEO_PROCESS_ALPHA_BLENDING AlphaBlending;
			public D3D12_VIDEO_FIELD_TYPE FieldType;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_FEATURE_AREA_SUPPORT
		{
			public uint32 NodeIndex;
			public BOOL VideoDecodeSupport;
			public BOOL VideoProcessSupport;
			public BOOL VideoEncodeSupport;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_MOTION_ESTIMATOR
		{
			public uint32 NodeIndex;
			public DXGI_FORMAT InputFormat;
			public D3D12_VIDEO_MOTION_ESTIMATOR_SEARCH_BLOCK_SIZE_FLAGS BlockSizeFlags;
			public D3D12_VIDEO_MOTION_ESTIMATOR_VECTOR_PRECISION_FLAGS PrecisionFlags;
			public D3D12_VIDEO_SIZE_RANGE SizeRange;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_MOTION_ESTIMATOR_SIZE
		{
			public uint32 NodeIndex;
			public DXGI_FORMAT InputFormat;
			public D3D12_VIDEO_MOTION_ESTIMATOR_SEARCH_BLOCK_SIZE BlockSize;
			public D3D12_VIDEO_MOTION_ESTIMATOR_VECTOR_PRECISION Precision;
			public D3D12_VIDEO_SIZE_RANGE SizeRange;
			public BOOL Protected;
			public uint64 MotionVectorHeapMemoryPoolL0Size;
			public uint64 MotionVectorHeapMemoryPoolL1Size;
			public uint64 MotionEstimatorMemoryPoolL0Size;
			public uint64 MotionEstimatorMemoryPoolL1Size;
		}
		[CRepr]
		public struct D3D12_VIDEO_MOTION_ESTIMATOR_DESC
		{
			public uint32 NodeMask;
			public DXGI_FORMAT InputFormat;
			public D3D12_VIDEO_MOTION_ESTIMATOR_SEARCH_BLOCK_SIZE BlockSize;
			public D3D12_VIDEO_MOTION_ESTIMATOR_VECTOR_PRECISION Precision;
			public D3D12_VIDEO_SIZE_RANGE SizeRange;
		}
		[CRepr]
		public struct D3D12_VIDEO_MOTION_VECTOR_HEAP_DESC
		{
			public uint32 NodeMask;
			public DXGI_FORMAT InputFormat;
			public D3D12_VIDEO_MOTION_ESTIMATOR_SEARCH_BLOCK_SIZE BlockSize;
			public D3D12_VIDEO_MOTION_ESTIMATOR_VECTOR_PRECISION Precision;
			public D3D12_VIDEO_SIZE_RANGE SizeRange;
		}
		[CRepr]
		public struct D3D12_RESOURCE_COORDINATE
		{
			public uint64 X;
			public uint32 Y;
			public uint32 Z;
			public uint32 SubresourceIndex;
		}
		[CRepr]
		public struct D3D12_VIDEO_MOTION_ESTIMATOR_OUTPUT
		{
			public ID3D12VideoMotionVectorHeap* pMotionVectorHeap;
		}
		[CRepr]
		public struct D3D12_VIDEO_MOTION_ESTIMATOR_INPUT
		{
			public ID3D12Resource* pInputTexture2D;
			public uint32 InputSubresourceIndex;
			public ID3D12Resource* pReferenceTexture2D;
			public uint32 ReferenceSubresourceIndex;
			public ID3D12VideoMotionVectorHeap* pHintMotionVectorHeap;
		}
		[CRepr]
		public struct D3D12_RESOLVE_VIDEO_MOTION_VECTOR_HEAP_OUTPUT
		{
			public ID3D12Resource* pMotionVectorTexture2D;
			public D3D12_RESOURCE_COORDINATE MotionVectorCoordinate;
		}
		[CRepr]
		public struct D3D12_RESOLVE_VIDEO_MOTION_VECTOR_HEAP_INPUT
		{
			public ID3D12VideoMotionVectorHeap* pMotionVectorHeap;
			public uint32 PixelWidth;
			public uint32 PixelHeight;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_DECODE_PROTECTED_RESOURCES
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
			public D3D12_VIDEO_PROTECTED_RESOURCE_SUPPORT_FLAGS SupportFlags;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_PROCESS_PROTECTED_RESOURCES
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_PROTECTED_RESOURCE_SUPPORT_FLAGS SupportFlags;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_MOTION_ESTIMATOR_PROTECTED_RESOURCES
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_PROTECTED_RESOURCE_SUPPORT_FLAGS SupportFlags;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_DECODER_HEAP_SIZE1
		{
			public D3D12_VIDEO_DECODER_HEAP_DESC VideoDecoderHeapDesc;
			public BOOL Protected;
			public uint64 MemoryPoolL0Size;
			public uint64 MemoryPoolL1Size;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_PROCESSOR_SIZE1
		{
			public uint32 NodeMask;
			public D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC* pOutputStreamDesc;
			public uint32 NumInputStreamDescs;
			public D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC* pInputStreamDescs;
			public BOOL Protected;
			public uint64 MemoryPoolL0Size;
			public uint64 MemoryPoolL1Size;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_COUNT
		{
			public uint32 NodeIndex;
			public uint32 CommandCount;
		}
		[CRepr]
		public struct D3D12_VIDEO_EXTENSION_COMMAND_INFO
		{
			public Guid CommandId;
			public PWSTR Name;
			public D3D12_COMMAND_LIST_SUPPORT_FLAGS CommandListSupportFlags;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMANDS
		{
			public uint32 NodeIndex;
			public uint32 CommandCount;
			public D3D12_VIDEO_EXTENSION_COMMAND_INFO* pCommandInfos;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_PARAMETER_COUNT
		{
			public Guid CommandId;
			public D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_STAGE Stage;
			public uint32 ParameterCount;
			public uint32 ParameterPacking;
		}
		[CRepr]
		public struct D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_INFO
		{
			public PWSTR Name;
			public D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE Type;
			public D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_FLAGS Flags;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_PARAMETERS
		{
			public Guid CommandId;
			public D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_STAGE Stage;
			public uint32 ParameterCount;
			public D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_INFO* pParameterInfos;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_SUPPORT
		{
			public uint32 NodeIndex;
			public Guid CommandId;
			public void* pInputData;
			public uint InputDataSizeInBytes;
			public void* pOutputData;
			public uint OutputDataSizeInBytes;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_SIZE
		{
			public uint32 NodeIndex;
			public Guid CommandId;
			public void* pCreationParameters;
			public uint CreationParametersSizeInBytes;
			public uint64 MemoryPoolL0Size;
			public uint64 MemoryPoolL1Size;
		}
		[CRepr]
		public struct D3D12_VIDEO_EXTENSION_COMMAND_DESC
		{
			public uint32 NodeMask;
			public Guid CommandId;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_RATE_CONTROL_CQP
		{
			public uint32 ConstantQP_FullIntracodedFrame;
			public uint32 ConstantQP_InterPredictedFrame_PrevRefOnly;
			public uint32 ConstantQP_InterPredictedFrame_BiDirectionalRef;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_RATE_CONTROL_CBR
		{
			public uint32 InitialQP;
			public uint32 MinQP;
			public uint32 MaxQP;
			public uint64 MaxFrameBitSize;
			public uint64 TargetBitRate;
			public uint64 VBVCapacity;
			public uint64 InitialVBVFullness;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_RATE_CONTROL_VBR
		{
			public uint32 InitialQP;
			public uint32 MinQP;
			public uint32 MaxQP;
			public uint64 MaxFrameBitSize;
			public uint64 TargetAvgBitRate;
			public uint64 PeakBitRate;
			public uint64 VBVCapacity;
			public uint64 InitialVBVFullness;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_RATE_CONTROL_QVBR
		{
			public uint32 InitialQP;
			public uint32 MinQP;
			public uint32 MaxQP;
			public uint64 MaxFrameBitSize;
			public uint64 TargetAvgBitRate;
			public uint64 PeakBitRate;
			public uint32 ConstantQualityTarget;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_RATE_CONTROL_CONFIGURATION_PARAMS
		{
			public uint32 DataSize;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public D3D12_VIDEO_ENCODER_RATE_CONTROL_CQP* pConfiguration_CQP;
				public D3D12_VIDEO_ENCODER_RATE_CONTROL_CBR* pConfiguration_CBR;
				public D3D12_VIDEO_ENCODER_RATE_CONTROL_VBR* pConfiguration_VBR;
				public D3D12_VIDEO_ENCODER_RATE_CONTROL_QVBR* pConfiguration_QVBR;
			}
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_RATE_CONTROL
		{
			public D3D12_VIDEO_ENCODER_RATE_CONTROL_MODE Mode;
			public D3D12_VIDEO_ENCODER_RATE_CONTROL_FLAGS Flags;
			public D3D12_VIDEO_ENCODER_RATE_CONTROL_CONFIGURATION_PARAMS ConfigParams;
			public DXGI_RATIONAL TargetFrameRate;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_CODEC
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_ENCODER_CODEC Codec;
			public BOOL IsSupported;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_PROFILE_DESC
		{
			public uint32 DataSize;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public D3D12_VIDEO_ENCODER_PROFILE_H264* pH264Profile;
				public D3D12_VIDEO_ENCODER_PROFILE_HEVC* pHEVCProfile;
			}
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_LEVEL_TIER_CONSTRAINTS_HEVC
		{
			public D3D12_VIDEO_ENCODER_LEVELS_HEVC Level;
			public D3D12_VIDEO_ENCODER_TIER_HEVC Tier;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_LEVEL_SETTING
		{
			public uint32 DataSize;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public D3D12_VIDEO_ENCODER_LEVELS_H264* pH264LevelSetting;
				public D3D12_VIDEO_ENCODER_LEVEL_TIER_CONSTRAINTS_HEVC* pHEVCLevelSetting;
			}
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_PROFILE_LEVEL
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_ENCODER_CODEC Codec;
			public D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;
			public BOOL IsSupported;
			public D3D12_VIDEO_ENCODER_LEVEL_SETTING MinSupportedLevel;
			public D3D12_VIDEO_ENCODER_LEVEL_SETTING MaxSupportedLevel;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC
		{
			public uint32 Width;
			public uint32 Height;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_RATIO_DESC
		{
			public uint32 WidthRatio;
			public uint32 HeightRatio;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_OUTPUT_RESOLUTION_RATIOS_COUNT
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_ENCODER_CODEC Codec;
			public uint32 ResolutionRatiosCount;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_OUTPUT_RESOLUTION
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_ENCODER_CODEC Codec;
			public uint32 ResolutionRatiosCount;
			public BOOL IsSupported;
			public D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC MinResolutionSupported;
			public D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC MaxResolutionSupported;
			public uint32 ResolutionWidthMultipleRequirement;
			public uint32 ResolutionHeightMultipleRequirement;
			public D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_RATIO_DESC* pResolutionRatios;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_INPUT_FORMAT
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_ENCODER_CODEC Codec;
			public D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;
			public DXGI_FORMAT Format;
			public BOOL IsSupported;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_RATE_CONTROL_MODE
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_ENCODER_CODEC Codec;
			public D3D12_VIDEO_ENCODER_RATE_CONTROL_MODE RateControlMode;
			public BOOL IsSupported;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_INTRA_REFRESH_MODE
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_ENCODER_CODEC Codec;
			public D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;
			public D3D12_VIDEO_ENCODER_LEVEL_SETTING Level;
			public D3D12_VIDEO_ENCODER_INTRA_REFRESH_MODE IntraRefreshMode;
			public BOOL IsSupported;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_FRAME_SUBREGION_LAYOUT_MODE
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_ENCODER_CODEC Codec;
			public D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;
			public D3D12_VIDEO_ENCODER_LEVEL_SETTING Level;
			public D3D12_VIDEO_ENCODER_FRAME_SUBREGION_LAYOUT_MODE SubregionMode;
			public BOOL IsSupported;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_HEAP_DESC
		{
			public uint32 NodeMask;
			public D3D12_VIDEO_ENCODER_HEAP_FLAGS Flags;
			public D3D12_VIDEO_ENCODER_CODEC EncodeCodec;
			public D3D12_VIDEO_ENCODER_PROFILE_DESC EncodeProfile;
			public D3D12_VIDEO_ENCODER_LEVEL_SETTING EncodeLevel;
			public uint32 ResolutionsListCount;
			public D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC* pResolutionList;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_HEAP_SIZE
		{
			public D3D12_VIDEO_ENCODER_HEAP_DESC HeapDesc;
			public BOOL IsSupported;
			public uint64 MemoryPoolL0Size;
			public uint64 MemoryPoolL1Size;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264
		{
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264_FLAGS SupportFlags;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_FLAGS DisableDeblockingFilterSupportedModes;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC
		{
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC_FLAGS SupportFlags;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_CUSIZE MinLumaCodingUnitSize;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_CUSIZE MaxLumaCodingUnitSize;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_TUSIZE MinLumaTransformUnitSize;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_TUSIZE MaxLumaTransformUnitSize;
			public uint8 max_transform_hierarchy_depth_inter;
			public uint8 max_transform_hierarchy_depth_intra;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT
		{
			public uint32 DataSize;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264* pH264Support;
				public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC* pHEVCSupport;
			}
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_ENCODER_CODEC Codec;
			public D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;
			public BOOL IsSupported;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT CodecSupportLimits;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT_H264
		{
			public uint32 MaxL0ReferencesForP;
			public uint32 MaxL0ReferencesForB;
			public uint32 MaxL1ReferencesForB;
			public uint32 MaxLongTermReferences;
			public uint32 MaxDPBCapacity;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT_HEVC
		{
			public uint32 MaxL0ReferencesForP;
			public uint32 MaxL0ReferencesForB;
			public uint32 MaxL1ReferencesForB;
			public uint32 MaxLongTermReferences;
			public uint32 MaxDPBCapacity;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT
		{
			public uint32 DataSize;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT_H264* pH264Support;
				public D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT_HEVC* pHEVCSupport;
			}
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_ENCODER_CODEC Codec;
			public D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;
			public BOOL IsSupported;
			public D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT PictureSupport;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264
		{
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_FLAGS ConfigurationFlags;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_DIRECT_MODES DirectModeConfig;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODES DisableDeblockingFilterConfig;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC
		{
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_FLAGS ConfigurationFlags;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_CUSIZE MinLumaCodingUnitSize;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_CUSIZE MaxLumaCodingUnitSize;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_TUSIZE MinLumaTransformUnitSize;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_TUSIZE MaxLumaTransformUnitSize;
			public uint8 max_transform_hierarchy_depth_inter;
			public uint8 max_transform_hierarchy_depth_intra;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION
		{
			public uint32 DataSize;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264* pH264Config;
				public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC* pHEVCConfig;
			}
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_INTRA_REFRESH
		{
			public D3D12_VIDEO_ENCODER_INTRA_REFRESH_MODE Mode;
			public uint32 IntraRefreshDuration;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_RESOLUTION_SUPPORT_LIMITS
		{
			public uint32 MaxSubregionsNumber;
			public uint32 MaxIntraRefreshFrameDuration;
			public uint32 SubregionBlockPixelsSize;
			public uint32 QPMapRegionPixelsSize;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE_H264
		{
			public uint32 GOPLength;
			public uint32 PPicturePeriod;
			public uint8 pic_order_cnt_type;
			public uint8 log2_max_frame_num_minus4;
			public uint8 log2_max_pic_order_cnt_lsb_minus4;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE_HEVC
		{
			public uint32 GOPLength;
			public uint32 PPicturePeriod;
			public uint8 log2_max_pic_order_cnt_lsb_minus4;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE
		{
			public uint32 DataSize;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE_H264* pH264GroupOfPictures;
				public D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE_HEVC* pHEVCGroupOfPictures;
			}
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_SUPPORT
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_ENCODER_CODEC Codec;
			public DXGI_FORMAT InputFormat;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION CodecConfiguration;
			public D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE CodecGopSequence;
			public D3D12_VIDEO_ENCODER_RATE_CONTROL RateControl;
			public D3D12_VIDEO_ENCODER_INTRA_REFRESH_MODE IntraRefresh;
			public D3D12_VIDEO_ENCODER_FRAME_SUBREGION_LAYOUT_MODE SubregionFrameEncoding;
			public uint32 ResolutionsListCount;
			public D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC* pResolutionList;
			public uint32 MaxReferenceFramesInDPB;
			public D3D12_VIDEO_ENCODER_VALIDATION_FLAGS ValidationFlags;
			public D3D12_VIDEO_ENCODER_SUPPORT_FLAGS SupportFlags;
			public D3D12_VIDEO_ENCODER_PROFILE_DESC SuggestedProfile;
			public D3D12_VIDEO_ENCODER_LEVEL_SETTING SuggestedLevel;
			public D3D12_FEATURE_DATA_VIDEO_ENCODER_RESOLUTION_SUPPORT_LIMITS* pResolutionDependentSupport;
		}
		[CRepr]
		public struct D3D12_FEATURE_DATA_VIDEO_ENCODER_RESOURCE_REQUIREMENTS
		{
			public uint32 NodeIndex;
			public D3D12_VIDEO_ENCODER_CODEC Codec;
			public D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;
			public DXGI_FORMAT InputFormat;
			public D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC PictureTargetResolution;
			public BOOL IsSupported;
			public uint32 CompressedBitstreamBufferAccessAlignment;
			public uint32 EncoderMetadataBufferAccessAlignment;
			public uint32 MaxEncoderOutputMetadataBufferSize;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_DESC
		{
			public uint32 NodeMask;
			public D3D12_VIDEO_ENCODER_FLAGS Flags;
			public D3D12_VIDEO_ENCODER_CODEC EncodeCodec;
			public D3D12_VIDEO_ENCODER_PROFILE_DESC EncodeProfile;
			public DXGI_FORMAT InputFormat;
			public D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION CodecConfiguration;
			public D3D12_VIDEO_ENCODER_MOTION_ESTIMATION_PRECISION_MODE MaxMotionEstimationPrecision;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_REFERENCE_PICTURE_DESCRIPTOR_H264
		{
			public uint32 ReconstructedPictureResourceIndex;
			public BOOL IsLongTermReference;
			public uint32 LongTermPictureIdx;
			public uint32 PictureOrderCountNumber;
			public uint32 FrameDecodingOrderNumber;
			public uint32 TemporalLayerIndex;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_REFERENCE_PICTURE_MARKING_OPERATION
		{
			public uint8 memory_management_control_operation;
			public uint32 difference_of_pic_nums_minus1;
			public uint32 long_term_pic_num;
			public uint32 long_term_frame_idx;
			public uint32 max_long_term_frame_idx_plus1;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_REFERENCE_PICTURE_LIST_MODIFICATION_OPERATION
		{
			public uint8 modification_of_pic_nums_idc;
			public uint32 abs_diff_pic_num_minus1;
			public uint32 long_term_pic_num;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264
		{
			public D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_FLAGS Flags;
			public D3D12_VIDEO_ENCODER_FRAME_TYPE_H264 FrameType;
			public uint32 pic_parameter_set_id;
			public uint32 idr_pic_id;
			public uint32 PictureOrderCountNumber;
			public uint32 FrameDecodingOrderNumber;
			public uint32 TemporalLayerIndex;
			public uint32 List0ReferenceFramesCount;
			public uint32* pList0ReferenceFrames;
			public uint32 List1ReferenceFramesCount;
			public uint32* pList1ReferenceFrames;
			public uint32 ReferenceFramesReconPictureDescriptorsCount;
			public D3D12_VIDEO_ENCODER_REFERENCE_PICTURE_DESCRIPTOR_H264* pReferenceFramesReconPictureDescriptors;
			public uint8 adaptive_ref_pic_marking_mode_flag;
			public uint32 RefPicMarkingOperationsCommandsCount;
			public D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_REFERENCE_PICTURE_MARKING_OPERATION* pRefPicMarkingOperationsCommands;
			public uint32 List0RefPicModificationsCount;
			public D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_REFERENCE_PICTURE_LIST_MODIFICATION_OPERATION* pList0RefPicModifications;
			public uint32 List1RefPicModificationsCount;
			public D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_REFERENCE_PICTURE_LIST_MODIFICATION_OPERATION* pList1RefPicModifications;
			public uint32 QPMapValuesCount;
			public int8* pRateControlQPMap;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_REFERENCE_PICTURE_DESCRIPTOR_HEVC
		{
			public uint32 ReconstructedPictureResourceIndex;
			public BOOL IsRefUsedByCurrentPic;
			public BOOL IsLongTermReference;
			public uint32 PictureOrderCountNumber;
			public uint32 TemporalLayerIndex;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_HEVC
		{
			public D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_HEVC_FLAGS Flags;
			public D3D12_VIDEO_ENCODER_FRAME_TYPE_HEVC FrameType;
			public uint32 slice_pic_parameter_set_id;
			public uint32 PictureOrderCountNumber;
			public uint32 TemporalLayerIndex;
			public uint32 List0ReferenceFramesCount;
			public uint32* pList0ReferenceFrames;
			public uint32 List1ReferenceFramesCount;
			public uint32* pList1ReferenceFrames;
			public uint32 ReferenceFramesReconPictureDescriptorsCount;
			public D3D12_VIDEO_ENCODER_REFERENCE_PICTURE_DESCRIPTOR_HEVC* pReferenceFramesReconPictureDescriptors;
			public uint32 List0RefPicModificationsCount;
			public uint32* pList0RefPicModifications;
			public uint32 List1RefPicModificationsCount;
			public uint32* pList1RefPicModifications;
			public uint32 QPMapValuesCount;
			public int8* pRateControlQPMap;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA
		{
			public uint32 DataSize;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264* pH264PicData;
				public D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_HEVC* pHEVCPicData;
			}
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODE_REFERENCE_FRAMES
		{
			public uint32 NumTexture2Ds;
			public ID3D12Resource** ppTexture2Ds;
			public uint32* pSubresources;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_PICTURE_CONTROL_DESC
		{
			public uint32 IntraRefreshFrameIndex;
			public D3D12_VIDEO_ENCODER_PICTURE_CONTROL_FLAGS Flags;
			public D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA PictureControlCodecData;
			public D3D12_VIDEO_ENCODE_REFERENCE_FRAMES ReferenceFrames;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 MaxBytesPerSlice;
				public uint32 NumberOfCodingUnitsPerSlice;
				public uint32 NumberOfRowsPerSlice;
				public uint32 NumberOfSlicesPerFrame;
			}
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA
		{
			public uint32 DataSize;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES* pSlicesPartition_H264;
				public D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES* pSlicesPartition_HEVC;
			}
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_SEQUENCE_CONTROL_DESC
		{
			public D3D12_VIDEO_ENCODER_SEQUENCE_CONTROL_FLAGS Flags;
			public D3D12_VIDEO_ENCODER_INTRA_REFRESH IntraRefreshConfig;
			public D3D12_VIDEO_ENCODER_RATE_CONTROL RateControl;
			public D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC PictureTargetResolution;
			public D3D12_VIDEO_ENCODER_FRAME_SUBREGION_LAYOUT_MODE SelectedLayoutMode;
			public D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA FrameSubregionsLayoutData;
			public D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE CodecGopSequence;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_ENCODEFRAME_INPUT_ARGUMENTS
		{
			public D3D12_VIDEO_ENCODER_SEQUENCE_CONTROL_DESC SequenceControlDesc;
			public D3D12_VIDEO_ENCODER_PICTURE_CONTROL_DESC PictureControlDesc;
			public ID3D12Resource* pInputFrame;
			public uint32 InputFrameSubresource;
			public uint32 CurrentFrameBitstreamMetadataSize;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_COMPRESSED_BITSTREAM
		{
			public ID3D12Resource* pBuffer;
			public uint64 FrameStartOffset;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_RECONSTRUCTED_PICTURE
		{
			public ID3D12Resource* pReconstructedPicture;
			public uint32 ReconstructedPictureSubresource;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_FRAME_SUBREGION_METADATA
		{
			public uint64 bSize;
			public uint64 bStartOffset;
			public uint64 bHeaderSize;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_OUTPUT_METADATA_STATISTICS
		{
			public uint64 AverageQP;
			public uint64 IntraCodingUnitsCount;
			public uint64 InterCodingUnitsCount;
			public uint64 SkipCodingUnitsCount;
			public uint64 AverageMotionEstimationXDirection;
			public uint64 AverageMotionEstimationYDirection;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_OUTPUT_METADATA
		{
			public uint64 EncodeErrorFlags;
			public D3D12_VIDEO_ENCODER_OUTPUT_METADATA_STATISTICS EncodeStats;
			public uint64 EncodedBitstreamWrittenBytesCount;
			public uint64 WrittenSubregionsCount;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_ENCODE_OPERATION_METADATA_BUFFER
		{
			public ID3D12Resource* pBuffer;
			public uint64 Offset;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_RESOLVE_METADATA_INPUT_ARGUMENTS
		{
			public D3D12_VIDEO_ENCODER_CODEC EncoderCodec;
			public D3D12_VIDEO_ENCODER_PROFILE_DESC EncoderProfile;
			public DXGI_FORMAT EncoderInputFormat;
			public D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC EncodedPictureEffectiveResolution;
			public D3D12_VIDEO_ENCODER_ENCODE_OPERATION_METADATA_BUFFER HWLayoutMetadata;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_RESOLVE_METADATA_OUTPUT_ARGUMENTS
		{
			public D3D12_VIDEO_ENCODER_ENCODE_OPERATION_METADATA_BUFFER ResolvedLayoutMetadata;
		}
		[CRepr]
		public struct D3D12_VIDEO_ENCODER_ENCODEFRAME_OUTPUT_ARGUMENTS
		{
			public D3D12_VIDEO_ENCODER_COMPRESSED_BITSTREAM Bitstream;
			public D3D12_VIDEO_ENCODER_RECONSTRUCTED_PICTURE ReconstructedPicture;
			public D3D12_VIDEO_ENCODER_ENCODE_OPERATION_METADATA_BUFFER EncoderOutputMetadata;
		}
		[CRepr]
		public struct AecQualityMetrics_Struct
		{
			public int64 i64Timestamp;
			public uint8 ConvergenceFlag;
			public uint8 MicClippedFlag;
			public uint8 MicSilenceFlag;
			public uint8 PstvFeadbackFlag;
			public uint8 SpkClippedFlag;
			public uint8 SpkMuteFlag;
			public uint8 GlitchFlag;
			public uint8 DoubleTalkFlag;
			public uint32 uGlitchCount;
			public uint32 uMicClipCount;
			public float fDuration;
			public float fTSVariance;
			public float fTSDriftRate;
			public float fVoiceLevel;
			public float fNoiseLevel;
			public float fERLE;
			public float fAvgERLE;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct TOC_DESCRIPTOR
		{
			public Guid guidID;
			public uint16 wStreamNumber;
			public Guid guidType;
			public uint16 wLanguageIndex;
		}
		[CRepr]
		public struct TOC_ENTRY_DESCRIPTOR
		{
			public uint64 qwStartTime;
			public uint64 qwEndTime;
			public uint64 qwStartPacketOffset;
			public uint64 qwEndPacketOffset;
			public uint64 qwRepresentativeFrameTime;
		}
		[CRepr]
		public struct DXVA_AYUVsample2
		{
			public uint8 bCrValue;
			public uint8 bCbValue;
			public uint8 bY_Value;
			public uint8 bSampleAlpha8;
		}
		[CRepr, Packed(1)]
		public struct DXVA_BufferDescription
		{
			public uint32 dwTypeIndex;
			public uint32 dwBufferIndex;
			public uint32 dwDataOffset;
			public uint32 dwDataSize;
			public uint32 dwFirstMBaddress;
			public uint32 dwNumMBsInBuffer;
			public uint32 dwWidth;
			public uint32 dwHeight;
			public uint32 dwStride;
			public uint32 dwReservedBits;
		}
		[CRepr, Packed(1)]
		public struct DXVA_ConfigPictureDecode
		{
			public uint32 dwFunction;
			public uint32[3] dwReservedBits;
			public Guid guidConfigBitstreamEncryption;
			public Guid guidConfigMBcontrolEncryption;
			public Guid guidConfigResidDiffEncryption;
			public uint8 bConfigBitstreamRaw;
			public uint8 bConfigMBcontrolRasterOrder;
			public uint8 bConfigResidDiffHost;
			public uint8 bConfigSpatialResid8;
			public uint8 bConfigResid8Subtraction;
			public uint8 bConfigSpatialHost8or9Clipping;
			public uint8 bConfigSpatialResidInterleaved;
			public uint8 bConfigIntraResidUnsigned;
			public uint8 bConfigResidDiffAccelerator;
			public uint8 bConfigHostInverseScan;
			public uint8 bConfigSpecificIDCT;
			public uint8 bConfig4GroupedCoefs;
		}
		[CRepr, Packed(1)]
		public struct DXVA_PictureParameters
		{
			public uint16 wDecodedPictureIndex;
			public uint16 wDeblockedPictureIndex;
			public uint16 wForwardRefPictureIndex;
			public uint16 wBackwardRefPictureIndex;
			public uint16 wPicWidthInMBminus1;
			public uint16 wPicHeightInMBminus1;
			public uint8 bMacroblockWidthMinus1;
			public uint8 bMacroblockHeightMinus1;
			public uint8 bBlockWidthMinus1;
			public uint8 bBlockHeightMinus1;
			public uint8 bBPPminus1;
			public uint8 bPicStructure;
			public uint8 bSecondField;
			public uint8 bPicIntra;
			public uint8 bPicBackwardPrediction;
			public uint8 bBidirectionalAveragingMode;
			public uint8 bMVprecisionAndChromaRelation;
			public uint8 bChromaFormat;
			public uint8 bPicScanFixed;
			public uint8 bPicScanMethod;
			public uint8 bPicReadbackRequests;
			public uint8 bRcontrol;
			public uint8 bPicSpatialResid8;
			public uint8 bPicOverflowBlocks;
			public uint8 bPicExtrapolation;
			public uint8 bPicDeblocked;
			public uint8 bPicDeblockConfined;
			public uint8 bPic4MVallowed;
			public uint8 bPicOBMC;
			public uint8 bPicBinPB;
			public uint8 bMV_RPS;
			public uint8 bReservedBits;
			public uint16 wBitstreamFcodes;
			public uint16 wBitstreamPCEelements;
			public uint8 bBitstreamConcealmentNeed;
			public uint8 bBitstreamConcealmentMethod;
		}
		[CRepr]
		public struct DXVAUncompDataInfo
		{
			public uint32 UncompWidth;
			public uint32 UncompHeight;
			public D3DFORMAT UncompFormat;
		}
		[CRepr]
		public struct DXVACompBufferInfo
		{
			public uint32 NumCompBuffers;
			public uint32 WidthToCreate;
			public uint32 HeightToCreate;
			public uint32 BytesToAllocate;
			public uint32 Usage;
			public D3DPOOL Pool;
			public D3DFORMAT Format;
		}
		[CRepr]
		public struct DXVABufferInfo
		{
			public void* pCompSurface;
			public uint32 DataOffset;
			public uint32 DataSize;
		}
		[CRepr]
		public struct DXVA_ExtendedFormat
		{
			public uint32 _bitfield;
		}
		[CRepr]
		public struct DXVA_Frequency
		{
			public uint32 Numerator;
			public uint32 Denominator;
		}
		[CRepr]
		public struct DXVA_VideoDesc
		{
			public uint32 Size;
			public uint32 SampleWidth;
			public uint32 SampleHeight;
			public uint32 SampleFormat;
			public D3DFORMAT d3dFormat;
			public DXVA_Frequency InputSampleFreq;
			public DXVA_Frequency OutputFrameFreq;
		}
		[CRepr]
		public struct DXVA_VideoSample
		{
			public int64 rtStart;
			public int64 rtEnd;
			public DXVA_SampleFormat SampleFormat;
			public void* lpDDSSrcSurface;
		}
		[CRepr]
		public struct DXVA_VideoSample2
		{
			public uint32 Size;
			public uint32 Reserved;
			public int64 rtStart;
			public int64 rtEnd;
			public uint32 SampleFormat;
			public uint32 SampleFlags;
			public void* lpDDSSrcSurface;
			public RECT rcSrc;
			public RECT rcDst;
			public DXVA_AYUVsample2[16] Palette;
		}
		[CRepr]
		public struct DXVA_DeinterlaceCaps
		{
			public uint32 Size;
			public uint32 NumPreviousOutputFrames;
			public uint32 InputPool;
			public uint32 NumForwardRefSamples;
			public uint32 NumBackwardRefSamples;
			public D3DFORMAT d3dOutputFormat;
			public DXVA_VideoProcessCaps VideoProcessingCaps;
			public DXVA_DeinterlaceTech DeinterlaceTechnology;
		}
		[CRepr]
		public struct DXVA_VideoSample32
		{
			public int64 rtStart;
			public int64 rtEnd;
			public uint32 SampleFormat;
			public uint32 SampleFlags;
			public uint32 lpDDSSrcSurface;
			public RECT rcSrc;
			public RECT rcDst;
			public DXVA_AYUVsample2[16] Palette;
		}
		[CRepr]
		public struct DXVA_DeinterlaceBltEx32
		{
			public uint32 Size;
			public DXVA_AYUVsample2 BackgroundColor;
			public RECT rcTarget;
			public int64 rtTarget;
			public uint32 NumSourceSurfaces;
			public float Alpha;
			public DXVA_VideoSample32[32] Source;
			public uint32 DestinationFormat;
			public uint32 DestinationFlags;
		}
		[CRepr]
		public struct DXVA_DeinterlaceBlt
		{
			public uint32 Size;
			public uint32 Reserved;
			public int64 rtTarget;
			public RECT DstRect;
			public RECT SrcRect;
			public uint32 NumSourceSurfaces;
			public float Alpha;
			public DXVA_VideoSample[32] Source;
		}
		[CRepr]
		public struct DXVA_DeinterlaceBltEx
		{
			public uint32 Size;
			public DXVA_AYUVsample2 BackgroundColor;
			public RECT rcTarget;
			public int64 rtTarget;
			public uint32 NumSourceSurfaces;
			public float Alpha;
			public DXVA_VideoSample2[32] Source;
			public uint32 DestinationFormat;
			public uint32 DestinationFlags;
		}
		[CRepr]
		public struct DXVA_DeinterlaceQueryAvailableModes
		{
			public uint32 Size;
			public uint32 NumGuids;
			public Guid[32] Guids;
		}
		[CRepr]
		public struct DXVA_DeinterlaceQueryModeCaps
		{
			public uint32 Size;
			public Guid Guid;
			public DXVA_VideoDesc VideoDesc;
		}
		[CRepr]
		public struct DXVA_ProcAmpControlCaps
		{
			public uint32 Size;
			public uint32 InputPool;
			public D3DFORMAT d3dOutputFormat;
			public uint32 ProcAmpControlProps;
			public uint32 VideoProcessingCaps;
		}
		[CRepr]
		public struct DXVA_ProcAmpControlQueryRange
		{
			public uint32 Size;
			public DXVA_ProcAmpControlProp ProcAmpControlProp;
			public DXVA_VideoDesc VideoDesc;
		}
		[CRepr]
		public struct DXVA_VideoPropertyRange
		{
			public float MinValue;
			public float MaxValue;
			public float DefaultValue;
			public float StepSize;
		}
		[CRepr]
		public struct DXVA_ProcAmpControlBlt
		{
			public uint32 Size;
			public RECT DstRect;
			public RECT SrcRect;
			public float Alpha;
			public float Brightness;
			public float Contrast;
			public float Hue;
			public float Saturation;
		}
		[CRepr]
		public struct DXVA_COPPSignature
		{
			public uint8[256] Signature;
		}
		[CRepr]
		public struct DXVA_COPPCommand
		{
			public Guid macKDI;
			public Guid guidCommandID;
			public uint32 dwSequence;
			public uint32 cbSizeData;
			public uint8[4056] CommandData;
		}
		[CRepr]
		public struct DXVA_COPPStatusInput
		{
			public Guid rApp;
			public Guid guidStatusRequestID;
			public uint32 dwSequence;
			public uint32 cbSizeData;
			public uint8[4056] StatusData;
		}
		[CRepr]
		public struct DXVA_COPPStatusOutput
		{
			public Guid macKDI;
			public uint32 cbSizeData;
			public uint8[4076] COPPStatus;
		}
		[CRepr]
		public struct DXVAHD_RATIONAL
		{
			public uint32 Numerator;
			public uint32 Denominator;
		}
		[CRepr]
		public struct DXVAHD_COLOR_RGBA
		{
			public float R;
			public float G;
			public float B;
			public float A;
		}
		[CRepr]
		public struct DXVAHD_COLOR_YCbCrA
		{
			public float Y;
			public float Cb;
			public float Cr;
			public float A;
		}
		[CRepr, Union]
		public struct DXVAHD_COLOR
		{
			public DXVAHD_COLOR_RGBA RGB;
			public DXVAHD_COLOR_YCbCrA YCbCr;
		}
		[CRepr]
		public struct DXVAHD_CONTENT_DESC
		{
			public DXVAHD_FRAME_FORMAT InputFrameFormat;
			public DXVAHD_RATIONAL InputFrameRate;
			public uint32 InputWidth;
			public uint32 InputHeight;
			public DXVAHD_RATIONAL OutputFrameRate;
			public uint32 OutputWidth;
			public uint32 OutputHeight;
		}
		[CRepr]
		public struct DXVAHD_VPDEVCAPS
		{
			public DXVAHD_DEVICE_TYPE DeviceType;
			public uint32 DeviceCaps;
			public uint32 FeatureCaps;
			public uint32 FilterCaps;
			public uint32 InputFormatCaps;
			public D3DPOOL InputPool;
			public uint32 OutputFormatCount;
			public uint32 InputFormatCount;
			public uint32 VideoProcessorCount;
			public uint32 MaxInputStreams;
			public uint32 MaxStreamStates;
		}
		[CRepr]
		public struct DXVAHD_VPCAPS
		{
			public Guid VPGuid;
			public uint32 PastFrames;
			public uint32 FutureFrames;
			public uint32 ProcessorCaps;
			public uint32 ITelecineCaps;
			public uint32 CustomRateCount;
		}
		[CRepr]
		public struct DXVAHD_CUSTOM_RATE_DATA
		{
			public DXVAHD_RATIONAL CustomRate;
			public uint32 OutputFrames;
			public BOOL InputInterlaced;
			public uint32 InputFramesOrFields;
		}
		[CRepr]
		public struct DXVAHD_FILTER_RANGE_DATA
		{
			public int32 Minimum;
			public int32 Maximum;
			public int32 Default;
			public float Multiplier;
		}
		[CRepr]
		public struct DXVAHD_BLT_STATE_TARGET_RECT_DATA
		{
			public BOOL Enable;
			public RECT TargetRect;
		}
		[CRepr]
		public struct DXVAHD_BLT_STATE_BACKGROUND_COLOR_DATA
		{
			public BOOL YCbCr;
			public DXVAHD_COLOR BackgroundColor;
		}
		[CRepr]
		public struct DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE_DATA
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint32 Value;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct DXVAHD_BLT_STATE_ALPHA_FILL_DATA
		{
			public DXVAHD_ALPHA_FILL_MODE Mode;
			public uint32 StreamNumber;
		}
		[CRepr]
		public struct DXVAHD_BLT_STATE_CONSTRICTION_DATA
		{
			public BOOL Enable;
			public SIZE Size;
		}
		[CRepr]
		public struct DXVAHD_BLT_STATE_PRIVATE_DATA
		{
			public Guid Guid;
			public uint32 DataSize;
			public void* pData;
		}
		[CRepr]
		public struct DXVAHD_STREAM_STATE_D3DFORMAT_DATA
		{
			public D3DFORMAT Format;
		}
		[CRepr]
		public struct DXVAHD_STREAM_STATE_FRAME_FORMAT_DATA
		{
			public DXVAHD_FRAME_FORMAT FrameFormat;
		}
		[CRepr]
		public struct DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE_DATA
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint32 Value;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct DXVAHD_STREAM_STATE_OUTPUT_RATE_DATA
		{
			public BOOL RepeatFrame;
			public DXVAHD_OUTPUT_RATE OutputRate;
			public DXVAHD_RATIONAL CustomRate;
		}
		[CRepr]
		public struct DXVAHD_STREAM_STATE_SOURCE_RECT_DATA
		{
			public BOOL Enable;
			public RECT SourceRect;
		}
		[CRepr]
		public struct DXVAHD_STREAM_STATE_DESTINATION_RECT_DATA
		{
			public BOOL Enable;
			public RECT DestinationRect;
		}
		[CRepr]
		public struct DXVAHD_STREAM_STATE_ALPHA_DATA
		{
			public BOOL Enable;
			public float Alpha;
		}
		[CRepr]
		public struct DXVAHD_STREAM_STATE_PALETTE_DATA
		{
			public uint32 Count;
			public uint32* pEntries;
		}
		[CRepr]
		public struct DXVAHD_STREAM_STATE_LUMA_KEY_DATA
		{
			public BOOL Enable;
			public float Lower;
			public float Upper;
		}
		[CRepr]
		public struct DXVAHD_STREAM_STATE_ASPECT_RATIO_DATA
		{
			public BOOL Enable;
			public DXVAHD_RATIONAL SourceAspectRatio;
			public DXVAHD_RATIONAL DestinationAspectRatio;
		}
		[CRepr]
		public struct DXVAHD_STREAM_STATE_FILTER_DATA
		{
			public BOOL Enable;
			public int32 Level;
		}
		[CRepr]
		public struct DXVAHD_STREAM_STATE_PRIVATE_DATA
		{
			public Guid Guid;
			public uint32 DataSize;
			public void* pData;
		}
		[CRepr]
		public struct DXVAHD_STREAM_DATA
		{
			public BOOL Enable;
			public uint32 OutputIndex;
			public uint32 InputFrameOrField;
			public uint32 PastFrames;
			public uint32 FutureFrames;
			public IDirect3DSurface9** ppPastSurfaces;
			public IDirect3DSurface9* pInputSurface;
			public IDirect3DSurface9** ppFutureSurfaces;
		}
		[CRepr]
		public struct DXVAHD_STREAM_STATE_PRIVATE_IVTC_DATA
		{
			public BOOL Enable;
			public uint32 ITelecineFlags;
			public uint32 Frames;
			public uint32 InputField;
		}
		[CRepr]
		public struct DXVAHDSW_CALLBACKS
		{
			public PDXVAHDSW_CreateDevice CreateDevice;
			public PDXVAHDSW_ProposeVideoPrivateFormat ProposeVideoPrivateFormat;
			public PDXVAHDSW_GetVideoProcessorDeviceCaps GetVideoProcessorDeviceCaps;
			public PDXVAHDSW_GetVideoProcessorOutputFormats GetVideoProcessorOutputFormats;
			public PDXVAHDSW_GetVideoProcessorInputFormats GetVideoProcessorInputFormats;
			public PDXVAHDSW_GetVideoProcessorCaps GetVideoProcessorCaps;
			public PDXVAHDSW_GetVideoProcessorCustomRates GetVideoProcessorCustomRates;
			public PDXVAHDSW_GetVideoProcessorFilterRange GetVideoProcessorFilterRange;
			public PDXVAHDSW_DestroyDevice DestroyDevice;
			public PDXVAHDSW_CreateVideoProcessor CreateVideoProcessor;
			public PDXVAHDSW_SetVideoProcessBltState SetVideoProcessBltState;
			public PDXVAHDSW_GetVideoProcessBltStatePrivate GetVideoProcessBltStatePrivate;
			public PDXVAHDSW_SetVideoProcessStreamState SetVideoProcessStreamState;
			public PDXVAHDSW_GetVideoProcessStreamStatePrivate GetVideoProcessStreamStatePrivate;
			public PDXVAHDSW_VideoProcessBltHD VideoProcessBltHD;
			public PDXVAHDSW_DestroyVideoProcessor DestroyVideoProcessor;
		}
		[CRepr]
		public struct DXVAHDETW_CREATEVIDEOPROCESSOR
		{
			public uint64 pObject;
			public uint64 pD3D9Ex;
			public Guid VPGuid;
		}
		[CRepr]
		public struct DXVAHDETW_VIDEOPROCESSBLTSTATE
		{
			public uint64 pObject;
			public DXVAHD_BLT_STATE State;
			public uint32 DataSize;
			public BOOL SetState;
		}
		[CRepr]
		public struct DXVAHDETW_VIDEOPROCESSSTREAMSTATE
		{
			public uint64 pObject;
			public uint32 StreamNumber;
			public DXVAHD_STREAM_STATE State;
			public uint32 DataSize;
			public BOOL SetState;
		}
		[CRepr]
		public struct DXVAHDETW_VIDEOPROCESSBLTHD
		{
			public uint64 pObject;
			public uint64 pOutputSurface;
			public RECT TargetRect;
			public D3DFORMAT OutputFormat;
			public uint32 ColorSpace;
			public uint32 OutputFrame;
			public uint32 StreamCount;
			public BOOL Enter;
		}
		[CRepr]
		public struct DXVAHDETW_VIDEOPROCESSBLTHD_STREAM
		{
			public uint64 pObject;
			public uint64 pInputSurface;
			public RECT SourceRect;
			public RECT DestinationRect;
			public D3DFORMAT InputFormat;
			public DXVAHD_FRAME_FORMAT FrameFormat;
			public uint32 ColorSpace;
			public uint32 StreamNumber;
			public uint32 OutputIndex;
			public uint32 InputFrameOrField;
			public uint32 PastFrames;
			public uint32 FutureFrames;
		}
		[CRepr]
		public struct DXVAHDETW_DESTROYVIDEOPROCESSOR
		{
			public uint64 pObject;
		}
		[CRepr]
		public struct DXVA2_ExtendedFormat
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint32 value;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct DXVA2_Frequency
		{
			public uint32 Numerator;
			public uint32 Denominator;
		}
		[CRepr]
		public struct DXVA2_VideoDesc
		{
			public uint32 SampleWidth;
			public uint32 SampleHeight;
			public DXVA2_ExtendedFormat SampleFormat;
			public D3DFORMAT Format;
			public DXVA2_Frequency InputSampleFreq;
			public DXVA2_Frequency OutputFrameFreq;
			public uint32 UABProtectionLevel;
			public uint32 Reserved;
		}
		[CRepr]
		public struct DXVA2_VideoProcessorCaps
		{
			public uint32 DeviceCaps;
			public D3DPOOL InputPool;
			public uint32 NumForwardRefSamples;
			public uint32 NumBackwardRefSamples;
			public uint32 Reserved;
			public uint32 DeinterlaceTechnology;
			public uint32 ProcAmpControlCaps;
			public uint32 VideoProcessorOperations;
			public uint32 NoiseFilterTechnology;
			public uint32 DetailFilterTechnology;
		}
		[CRepr]
		public struct DXVA2_Fixed32
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public int32 ll;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint16 Fraction;
					public int16 Value;
				}
			}
		}
		[CRepr]
		public struct DXVA2_AYUVSample8
		{
			public uint8 Cr;
			public uint8 Cb;
			public uint8 Y;
			public uint8 Alpha;
		}
		[CRepr]
		public struct DXVA2_AYUVSample16
		{
			public uint16 Cr;
			public uint16 Cb;
			public uint16 Y;
			public uint16 Alpha;
		}
		[CRepr]
		public struct DXVA2_VideoSample
		{
			public int64 Start;
			public int64 End;
			public DXVA2_ExtendedFormat SampleFormat;
			public IDirect3DSurface9* SrcSurface;
			public RECT SrcRect;
			public RECT DstRect;
			public DXVA2_AYUVSample8[16] Pal;
			public DXVA2_Fixed32 PlanarAlpha;
			public uint32 SampleData;
		}
		[CRepr]
		public struct DXVA2_ValueRange
		{
			public DXVA2_Fixed32 MinValue;
			public DXVA2_Fixed32 MaxValue;
			public DXVA2_Fixed32 DefaultValue;
			public DXVA2_Fixed32 StepSize;
		}
		[CRepr]
		public struct DXVA2_ProcAmpValues
		{
			public DXVA2_Fixed32 Brightness;
			public DXVA2_Fixed32 Contrast;
			public DXVA2_Fixed32 Hue;
			public DXVA2_Fixed32 Saturation;
		}
		[CRepr]
		public struct DXVA2_FilterValues
		{
			public DXVA2_Fixed32 Level;
			public DXVA2_Fixed32 Threshold;
			public DXVA2_Fixed32 Radius;
		}
		[CRepr]
		public struct DXVA2_VideoProcessBltParams
		{
			public int64 TargetFrame;
			public RECT TargetRect;
			public SIZE ConstrictionSize;
			public uint32 StreamingFlags;
			public DXVA2_AYUVSample16 BackgroundColor;
			public DXVA2_ExtendedFormat DestFormat;
			public DXVA2_ProcAmpValues ProcAmpValues;
			public DXVA2_Fixed32 Alpha;
			public DXVA2_FilterValues NoiseFilterLuma;
			public DXVA2_FilterValues NoiseFilterChroma;
			public DXVA2_FilterValues DetailFilterLuma;
			public DXVA2_FilterValues DetailFilterChroma;
			public uint32 DestData;
		}
		[CRepr]
		public struct DXVA2_ConfigPictureDecode
		{
			public Guid guidConfigBitstreamEncryption;
			public Guid guidConfigMBcontrolEncryption;
			public Guid guidConfigResidDiffEncryption;
			public uint32 ConfigBitstreamRaw;
			public uint32 ConfigMBcontrolRasterOrder;
			public uint32 ConfigResidDiffHost;
			public uint32 ConfigSpatialResid8;
			public uint32 ConfigResid8Subtraction;
			public uint32 ConfigSpatialHost8or9Clipping;
			public uint32 ConfigSpatialResidInterleaved;
			public uint32 ConfigIntraResidUnsigned;
			public uint32 ConfigResidDiffAccelerator;
			public uint32 ConfigHostInverseScan;
			public uint32 ConfigSpecificIDCT;
			public uint32 Config4GroupedCoefs;
			public uint16 ConfigMinRenderTargetBuffCount;
			public uint16 ConfigDecoderSpecific;
		}
		[CRepr]
		public struct DXVA2_DecodeBufferDesc
		{
			public DXVA2_BufferfType CompressedBufferType;
			public uint32 BufferIndex;
			public uint32 DataOffset;
			public uint32 DataSize;
			public uint32 FirstMBaddress;
			public uint32 NumMBsInBuffer;
			public uint32 Width;
			public uint32 Height;
			public uint32 Stride;
			public uint32 ReservedBits;
			public void* pvPVPState;
		}
		[CRepr]
		public struct DXVA2_AES_CTR_IV
		{
			public uint64 IV;
			public uint64 Count;
		}
		[CRepr]
		public struct DXVA2_DecodeExtensionData
		{
			public uint32 Function;
			public void* pPrivateInputData;
			public uint32 PrivateInputDataSize;
			public void* pPrivateOutputData;
			public uint32 PrivateOutputDataSize;
		}
		[CRepr]
		public struct DXVA2_DecodeExecuteParams
		{
			public uint32 NumCompBuffers;
			public DXVA2_DecodeBufferDesc* pCompressedBuffers;
			public DXVA2_DecodeExtensionData* pExtensionData;
		}
		[CRepr]
		public struct OPM_RANDOM_NUMBER
		{
			public uint8[16] abRandomNumber;
		}
		[CRepr]
		public struct OPM_OMAC
		{
			public uint8[16] abOMAC;
		}
		[CRepr]
		public struct OPM_ENCRYPTED_INITIALIZATION_PARAMETERS
		{
			public uint8[256] abEncryptedInitializationParameters;
		}
		[CRepr, Packed(1)]
		public struct OPM_GET_INFO_PARAMETERS
		{
			public OPM_OMAC omac;
			public OPM_RANDOM_NUMBER rnRandomNumber;
			public Guid guidInformation;
			public uint32 ulSequenceNumber;
			public uint32 cbParametersSize;
			public uint8[4056] abParameters;
		}
		[CRepr, Packed(1)]
		public struct OPM_COPP_COMPATIBLE_GET_INFO_PARAMETERS
		{
			public OPM_RANDOM_NUMBER rnRandomNumber;
			public Guid guidInformation;
			public uint32 ulSequenceNumber;
			public uint32 cbParametersSize;
			public uint8[4056] abParameters;
		}
		[CRepr]
		public struct OPM_HDCP_KEY_SELECTION_VECTOR
		{
			public uint8[5] abKeySelectionVector;
		}
		[CRepr, Packed(1)]
		public struct OPM_CONNECTED_HDCP_DEVICE_INFORMATION
		{
			public OPM_RANDOM_NUMBER rnRandomNumber;
			public uint32 ulStatusFlags;
			public uint32 ulHDCPFlags;
			public OPM_HDCP_KEY_SELECTION_VECTOR ksvB;
			public uint8[11] Reserved;
			public uint8[16] Reserved2;
			public uint8[16] Reserved3;
		}
		[CRepr, Packed(1)]
		public struct OPM_REQUESTED_INFORMATION
		{
			public OPM_OMAC omac;
			public uint32 cbRequestedInformationSize;
			public uint8[4076] abRequestedInformation;
		}
		[CRepr, Packed(1)]
		public struct OPM_STANDARD_INFORMATION
		{
			public OPM_RANDOM_NUMBER rnRandomNumber;
			public uint32 ulStatusFlags;
			public uint32 ulInformation;
			public uint32 ulReserved;
			public uint32 ulReserved2;
		}
		[CRepr, Packed(1)]
		public struct OPM_ACTUAL_OUTPUT_FORMAT
		{
			public OPM_RANDOM_NUMBER rnRandomNumber;
			public uint32 ulStatusFlags;
			public uint32 ulDisplayWidth;
			public uint32 ulDisplayHeight;
			public DXVA2_SampleFormat dsfSampleInterleaveFormat;
			public D3DFORMAT d3dFormat;
			public uint32 ulFrequencyNumerator;
			public uint32 ulFrequencyDenominator;
		}
		[CRepr, Packed(1)]
		public struct OPM_ACP_AND_CGMSA_SIGNALING
		{
			public OPM_RANDOM_NUMBER rnRandomNumber;
			public uint32 ulStatusFlags;
			public uint32 ulAvailableTVProtectionStandards;
			public uint32 ulActiveTVProtectionStandard;
			public uint32 ulReserved;
			public uint32 ulAspectRatioValidMask1;
			public uint32 ulAspectRatioData1;
			public uint32 ulAspectRatioValidMask2;
			public uint32 ulAspectRatioData2;
			public uint32 ulAspectRatioValidMask3;
			public uint32 ulAspectRatioData3;
			public uint32[4] ulReserved2;
			public uint32[4] ulReserved3;
		}
		[CRepr, Packed(1)]
		public struct OPM_OUTPUT_ID_DATA
		{
			public OPM_RANDOM_NUMBER rnRandomNumber;
			public uint32 ulStatusFlags;
			public uint64 OutputId;
		}
		[CRepr, Packed(1)]
		public struct OPM_CONFIGURE_PARAMETERS
		{
			public OPM_OMAC omac;
			public Guid guidSetting;
			public uint32 ulSequenceNumber;
			public uint32 cbParametersSize;
			public uint8[4056] abParameters;
		}
		[CRepr, Packed(1)]
		public struct OPM_SET_PROTECTION_LEVEL_PARAMETERS
		{
			public uint32 ulProtectionType;
			public uint32 ulProtectionLevel;
			public uint32 Reserved;
			public uint32 Reserved2;
		}
		[CRepr, Packed(1)]
		public struct OPM_SET_ACP_AND_CGMSA_SIGNALING_PARAMETERS
		{
			public uint32 ulNewTVProtectionStandard;
			public uint32 ulAspectRatioChangeMask1;
			public uint32 ulAspectRatioData1;
			public uint32 ulAspectRatioChangeMask2;
			public uint32 ulAspectRatioData2;
			public uint32 ulAspectRatioChangeMask3;
			public uint32 ulAspectRatioData3;
			public uint32[4] ulReserved;
			public uint32[4] ulReserved2;
			public uint32 ulReserved3;
		}
		[CRepr, Packed(1)]
		public struct OPM_SET_HDCP_SRM_PARAMETERS
		{
			public uint32 ulSRMVersion;
		}
		[CRepr, Packed(1)]
		public struct OPM_GET_CODEC_INFO_PARAMETERS
		{
			public uint32 cbVerifier;
			public uint8[4052] Verifier;
		}
		[CRepr, Packed(1)]
		public struct OPM_GET_CODEC_INFO_INFORMATION
		{
			public OPM_RANDOM_NUMBER rnRandomNumber;
			public uint32 Merit;
		}
		[CRepr]
		public struct MFT_REGISTER_TYPE_INFO
		{
			public Guid guidMajorType;
			public Guid guidSubtype;
		}
		[CRepr]
		public struct MFRatio
		{
			public uint32 Numerator;
			public uint32 Denominator;
		}
		[CRepr]
		public struct MFOffset
		{
			public uint16 fract;
			public int16 value;
		}
		[CRepr]
		public struct MFVideoArea
		{
			public MFOffset OffsetX;
			public MFOffset OffsetY;
			public SIZE Area;
		}
		[CRepr]
		public struct MFVideoInfo
		{
			public uint32 dwWidth;
			public uint32 dwHeight;
			public MFRatio PixelAspectRatio;
			public MFVideoChromaSubsampling SourceChromaSubsampling;
			public MFVideoInterlaceMode InterlaceMode;
			public MFVideoTransferFunction TransferFunction;
			public MFVideoPrimaries ColorPrimaries;
			public MFVideoTransferMatrix TransferMatrix;
			public MFVideoLighting SourceLighting;
			public MFRatio FramesPerSecond;
			public MFNominalRange NominalRange;
			public MFVideoArea GeometricAperture;
			public MFVideoArea MinimumDisplayAperture;
			public MFVideoArea PanScanAperture;
			public uint64 VideoFlags;
		}
		[CRepr]
		public struct MFAYUVSample
		{
			public uint8 bCrValue;
			public uint8 bCbValue;
			public uint8 bYValue;
			public uint8 bSampleAlpha8;
		}
		[CRepr]
		public struct MFARGB
		{
			public uint8 rgbBlue;
			public uint8 rgbGreen;
			public uint8 rgbRed;
			public uint8 rgbAlpha;
		}
		[CRepr, Union]
		public struct MFPaletteEntry
		{
			public MFARGB ARGB;
			public MFAYUVSample AYCbCr;
		}
		[CRepr]
		public struct MFVideoSurfaceInfo
		{
			public uint32 Format;
			public uint32 PaletteEntries;
			public MFPaletteEntry[0] Palette;
		}
		[CRepr]
		public struct MFVideoCompressedInfo
		{
			public int64 AvgBitrate;
			public int64 AvgBitErrorRate;
			public uint32 MaxKeyFrameSpacing;
		}
		[CRepr]
		public struct MFVIDEOFORMAT
		{
			public uint32 dwSize;
			public MFVideoInfo videoInfo;
			public Guid guidFormat;
			public MFVideoCompressedInfo compressedInfo;
			public MFVideoSurfaceInfo surfaceInfo;
		}
		[CRepr]
		public struct MFT_INPUT_STREAM_INFO
		{
			public int64 hnsMaxLatency;
			public uint32 dwFlags;
			public uint32 cbSize;
			public uint32 cbMaxLookahead;
			public uint32 cbAlignment;
		}
		[CRepr]
		public struct MFT_OUTPUT_STREAM_INFO
		{
			public uint32 dwFlags;
			public uint32 cbSize;
			public uint32 cbAlignment;
		}
		[CRepr]
		public struct MFT_OUTPUT_DATA_BUFFER
		{
			public uint32 dwStreamID;
			public IMFSample* pSample;
			public uint32 dwStatus;
			public IMFCollection* pEvents;
		}
		[CRepr]
		public struct STREAM_MEDIUM
		{
			public Guid gidMedium;
			public uint32 unMediumInstance;
		}
		[CRepr]
		public struct MFAudioDecoderDegradationInfo
		{
			public MFT_AUDIO_DECODER_DEGRADATION_REASON eDegradationReason;
			public MFT_AUDIO_DECODER_DEGRADATION_TYPE eType;
		}
		[CRepr]
		public struct MFT_STREAM_STATE_PARAM
		{
			public uint32 StreamId;
			public MF_STREAM_STATE State;
		}
		[CRepr]
		public struct MFCLOCK_PROPERTIES
		{
			public uint64 qwCorrelationRate;
			public Guid guidClockId;
			public uint32 dwClockFlags;
			public uint64 qwClockFrequency;
			public uint32 dwClockTolerance;
			public uint32 dwClockJitter;
		}
		[CRepr]
		public struct MFRR_COMPONENT_HASH_INFO
		{
			public uint32 ulReason;
			public char16[43] rgHeaderHash;
			public char16[43] rgPublicKeyHash;
			public char16[260] wszName;
		}
		[CRepr]
		public struct MFRR_COMPONENTS
		{
			public uint32 dwRRInfoVersion;
			public uint32 dwRRComponents;
			public MFRR_COMPONENT_HASH_INFO* pRRComponents;
		}
		[CRepr, Packed(1)]
		public struct ASF_FLAT_PICTURE
		{
			public uint8 bPictureType;
			public uint32 dwDataLen;
		}
		[CRepr, Packed(1)]
		public struct ASF_FLAT_SYNCHRONISED_LYRICS
		{
			public uint8 bTimeStampFormat;
			public uint8 bContentType;
			public uint32 dwLyricsLen;
		}
		[CRepr]
		public struct MFTOPONODE_ATTRIBUTE_UPDATE
		{
			public uint64 NodeId;
			public Guid guidAttributeKey;
			public MF_ATTRIBUTE_TYPE attrType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 u32;
				public uint64 u64;
				public double d;
			}
		}
		[CRepr]
		public struct MF_LEAKY_BUCKET_PAIR
		{
			public uint32 dwBitrate;
			public uint32 msBufferWindow;
		}
		[CRepr]
		public struct MFBYTESTREAM_BUFFERING_PARAMS
		{
			public uint64 cbTotalFileSize;
			public uint64 cbPlayableDataSize;
			public MF_LEAKY_BUCKET_PAIR* prgBuckets;
			public uint32 cBuckets;
			public uint64 qwNetBufferingTime;
			public uint64 qwExtraBufferingTimeDuringSeek;
			public uint64 qwPlayDuration;
			public float dRate;
		}
		[CRepr]
		public struct MF_BYTE_STREAM_CACHE_RANGE
		{
			public uint64 qwStartOffset;
			public uint64 qwEndOffset;
		}
		[CRepr]
		public struct MFNetCredentialManagerGetParam
		{
			public HRESULT hrOp;
			public BOOL fAllowLoggedOnUser;
			public BOOL fClearTextPackage;
			public PWSTR pszUrl;
			public PWSTR pszSite;
			public PWSTR pszRealm;
			public PWSTR pszPackage;
			public int32 nRetries;
		}
		[CRepr]
		public struct MFINPUTTRUSTAUTHORITY_ACCESS_ACTION
		{
			public MFPOLICYMANAGER_ACTION Action;
			public uint8* pbTicket;
			public uint32 cbTicket;
		}
		[CRepr]
		public struct MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS
		{
			public uint32 dwSize;
			public uint32 dwVer;
			public uint32 cbSignatureOffset;
			public uint32 cbSignatureSize;
			public uint32 cbExtensionOffset;
			public uint32 cbExtensionSize;
			public uint32 cActions;
			public MFINPUTTRUSTAUTHORITY_ACCESS_ACTION[0] rgOutputActions;
		}
		[CRepr]
		public struct MF_TRANSCODE_SINK_INFO
		{
			public uint32 dwVideoStreamID;
			public IMFMediaType* pVideoMediaType;
			public uint32 dwAudioStreamID;
			public IMFMediaType* pAudioMediaType;
		}
		[CRepr]
		public struct MFT_REGISTRATION_INFO
		{
			public Guid clsid;
			public Guid guidCategory;
			public uint32 uiFlags;
			public PWSTR pszName;
			public uint32 cInTypes;
			public MFT_REGISTER_TYPE_INFO* pInTypes;
			public uint32 cOutTypes;
			public MFT_REGISTER_TYPE_INFO* pOutTypes;
		}
		[CRepr]
		public struct MFCONTENTPROTECTIONDEVICE_INPUT_DATA
		{
			public uint32 HWProtectionFunctionID;
			public uint32 PrivateDataByteCount;
			public uint32 HWProtectionDataByteCount;
			public uint32 Reserved;
			public uint8[4] InputData;
		}
		[CRepr]
		public struct MFCONTENTPROTECTIONDEVICE_OUTPUT_DATA
		{
			public uint32 PrivateDataByteCount;
			public uint32 MaxHWProtectionDataByteCount;
			public uint32 HWProtectionDataByteCount;
			public HRESULT Status;
			public int64 TransportTimeInHundredsOfNanoseconds;
			public int64 ExecutionTimeInHundredsOfNanoseconds;
			public uint8[4] OutputData;
		}
		[CRepr]
		public struct MFCONTENTPROTECTIONDEVICE_REALTIMECLIENT_DATA
		{
			public uint32 TaskIndex;
			public char16[260] ClassName;
			public int32 BasePriority;
		}
		[CRepr]
		public struct MFMediaKeyStatus
		{
			public uint8* pbKeyId;
			public uint32 cbKeyId;
			public MF_MEDIAKEY_STATUS eMediaKeyStatus;
		}
		[CRepr]
		public struct MF_VIDEO_SPHERICAL_VIEWDIRECTION
		{
			public int32 iHeading;
			public int32 iPitch;
			public int32 iRoll;
		}
		[CRepr]
		public struct SENSORPROFILEID
		{
			public Guid Type;
			public uint32 Index;
			public uint32 Unused;
		}
		[CRepr]
		public struct MFCameraIntrinsic_CameraModel
		{
			public float FocalLength_x;
			public float FocalLength_y;
			public float PrincipalPoint_x;
			public float PrincipalPoint_y;
		}
		[CRepr]
		public struct MFCameraIntrinsic_DistortionModel6KT
		{
			public float Radial_k1;
			public float Radial_k2;
			public float Radial_k3;
			public float Radial_k4;
			public float Radial_k5;
			public float Radial_k6;
			public float Tangential_p1;
			public float Tangential_p2;
		}
		[CRepr]
		public struct MFCameraIntrinsic_DistortionModelArcTan
		{
			public float Radial_k0;
			public float DistortionCenter_x;
			public float DistortionCenter_y;
			public float Tangential_x;
			public float Tangential_y;
		}
		[CRepr]
		public struct MFExtendedCameraIntrinsic_IntrinsicModel
		{
			public uint32 Width;
			public uint32 Height;
			public uint32 SplitFrameId;
			public MFCameraIntrinsic_CameraModel CameraModel;
		}
		[CRepr]
		public struct ASF_INDEX_IDENTIFIER
		{
			public Guid guidIndexType;
			public uint16 wStreamNumber;
		}
		[CRepr]
		public struct ASF_INDEX_DESCRIPTOR
		{
			public ASF_INDEX_IDENTIFIER Identifier;
			public uint16 cPerEntryBytes;
			public char16[32] szDescription;
			public uint32 dwInterval;
		}
		[CRepr]
		public struct ASF_MUX_STATISTICS
		{
			public uint32 cFramesWritten;
			public uint32 cFramesDropped;
		}
		[CRepr]
		public struct MFVideoNormalizedRect
		{
			public float left;
			public float top;
			public float right;
			public float bottom;
		}
		[CRepr]
		public struct MOVE_RECT
		{
			public POINT SourcePoint;
			public RECT DestRect;
		}
		[CRepr]
		public struct DIRTYRECT_INFO
		{
			public uint32 FrameNumber;
			public uint32 NumDirtyRects;
			public RECT[0] DirtyRects;
		}
		[CRepr]
		public struct MOVEREGION_INFO
		{
			public uint32 FrameNumber;
			public uint32 NumMoveRegions;
			public MOVE_RECT[0] MoveRegions;
		}
		[CRepr]
		public struct ROI_AREA
		{
			public RECT rect;
			public int32 QPDelta;
		}
		[CRepr]
		public struct MACROBLOCK_DATA
		{
			public uint32 flags;
			public int16 motionVectorX;
			public int16 motionVectorY;
			public int32 QPDelta;
		}
		[CRepr]
		public struct DigitalWindowSetting
		{
			public double OriginX;
			public double OriginY;
			public double WindowSize;
		}
		[CRepr]
		public struct MFFOLDDOWN_MATRIX
		{
			public uint32 cbSize;
			public uint32 cSrcChannels;
			public uint32 cDstChannels;
			public uint32 dwChannelMask;
			public int32[64] Coeff;
		}
		[CRepr]
		public struct MT_CUSTOM_VIDEO_PRIMARIES
		{
			public float fRx;
			public float fRy;
			public float fGx;
			public float fGy;
			public float fBx;
			public float fBy;
			public float fWx;
			public float fWy;
		}
		[CRepr]
		public struct MT_ARBITRARY_HEADER
		{
			public Guid majortype;
			public Guid subtype;
			public BOOL bFixedSizeSamples;
			public BOOL bTemporalCompression;
			public uint32 lSampleSize;
			public Guid formattype;
		}
		[CRepr]
		public struct MF_FLOAT2
		{
			public float x;
			public float y;
		}
		[CRepr]
		public struct MF_FLOAT3
		{
			public float x;
			public float y;
			public float z;
		}
		[CRepr]
		public struct MF_QUATERNION
		{
			public float x;
			public float y;
			public float z;
			public float w;
		}
		[CRepr]
		public struct MFCameraExtrinsic_CalibratedTransform
		{
			public Guid CalibrationId;
			public MF_FLOAT3 Position;
			public MF_QUATERNION Orientation;
		}
		[CRepr]
		public struct MFCameraExtrinsics
		{
			public uint32 TransformCount;
			public MFCameraExtrinsic_CalibratedTransform[0] CalibratedTransforms;
		}
		[CRepr]
		public struct MFCameraIntrinsic_PinholeCameraModel
		{
			public MF_FLOAT2 FocalLength;
			public MF_FLOAT2 PrincipalPoint;
		}
		[CRepr]
		public struct MFCameraIntrinsic_DistortionModel
		{
			public float Radial_k1;
			public float Radial_k2;
			public float Radial_k3;
			public float Tangential_p1;
			public float Tangential_p2;
		}
		[CRepr]
		public struct MFPinholeCameraIntrinsic_IntrinsicModel
		{
			public uint32 Width;
			public uint32 Height;
			public MFCameraIntrinsic_PinholeCameraModel CameraModel;
			public MFCameraIntrinsic_DistortionModel DistortionModel;
		}
		[CRepr]
		public struct MFPinholeCameraIntrinsics
		{
			public uint32 IntrinsicModelCount;
			public MFPinholeCameraIntrinsic_IntrinsicModel[0] IntrinsicModels;
		}
		[CRepr]
		public struct MFMPEG2DLNASINKSTATS
		{
			public uint64 cBytesWritten;
			public BOOL fPAL;
			public uint32 fccVideo;
			public uint32 dwVideoWidth;
			public uint32 dwVideoHeight;
			public uint64 cVideoFramesReceived;
			public uint64 cVideoFramesEncoded;
			public uint64 cVideoFramesSkipped;
			public uint64 cBlackVideoFramesEncoded;
			public uint64 cVideoFramesDuplicated;
			public uint32 cAudioSamplesPerSec;
			public uint32 cAudioChannels;
			public uint64 cAudioBytesReceived;
			public uint64 cAudioFramesEncoded;
		}
		[CRepr]
		public struct MF_SINK_WRITER_STATISTICS
		{
			public uint32 cb;
			public int64 llLastTimestampReceived;
			public int64 llLastTimestampEncoded;
			public int64 llLastTimestampProcessed;
			public int64 llLastStreamTickReceived;
			public int64 llLastSinkSampleRequest;
			public uint64 qwNumSamplesReceived;
			public uint64 qwNumSamplesEncoded;
			public uint64 qwNumSamplesProcessed;
			public uint64 qwNumStreamTicksReceived;
			public uint32 dwByteCountQueued;
			public uint64 qwByteCountProcessed;
			public uint32 dwNumOutstandingSinkSampleRequests;
			public uint32 dwAverageSampleRateReceived;
			public uint32 dwAverageSampleRateEncoded;
			public uint32 dwAverageSampleRateProcessed;
		}
		[CRepr]
		public struct MFP_EVENT_HEADER
		{
			public MFP_EVENT_TYPE eEventType;
			public HRESULT hrEvent;
			public IMFPMediaPlayer* pMediaPlayer;
			public MFP_MEDIAPLAYER_STATE eState;
			public IPropertyStore* pPropertyStore;
		}
		[CRepr]
		public struct MFP_PLAY_EVENT
		{
			public MFP_EVENT_HEADER header;
			public IMFPMediaItem* pMediaItem;
		}
		[CRepr]
		public struct MFP_PAUSE_EVENT
		{
			public MFP_EVENT_HEADER header;
			public IMFPMediaItem* pMediaItem;
		}
		[CRepr]
		public struct MFP_STOP_EVENT
		{
			public MFP_EVENT_HEADER header;
			public IMFPMediaItem* pMediaItem;
		}
		[CRepr]
		public struct MFP_POSITION_SET_EVENT
		{
			public MFP_EVENT_HEADER header;
			public IMFPMediaItem* pMediaItem;
		}
		[CRepr]
		public struct MFP_RATE_SET_EVENT
		{
			public MFP_EVENT_HEADER header;
			public IMFPMediaItem* pMediaItem;
			public float flRate;
		}
		[CRepr]
		public struct MFP_MEDIAITEM_CREATED_EVENT
		{
			public MFP_EVENT_HEADER header;
			public IMFPMediaItem* pMediaItem;
			public uint dwUserData;
		}
		[CRepr]
		public struct MFP_MEDIAITEM_SET_EVENT
		{
			public MFP_EVENT_HEADER header;
			public IMFPMediaItem* pMediaItem;
		}
		[CRepr]
		public struct MFP_FRAME_STEP_EVENT
		{
			public MFP_EVENT_HEADER header;
			public IMFPMediaItem* pMediaItem;
		}
		[CRepr]
		public struct MFP_MEDIAITEM_CLEARED_EVENT
		{
			public MFP_EVENT_HEADER header;
			public IMFPMediaItem* pMediaItem;
		}
		[CRepr]
		public struct MFP_MF_EVENT
		{
			public MFP_EVENT_HEADER header;
			public uint32 MFEventType;
			public IMFMediaEvent* pMFMediaEvent;
			public IMFPMediaItem* pMediaItem;
		}
		[CRepr]
		public struct MFP_ERROR_EVENT
		{
			public MFP_EVENT_HEADER header;
		}
		[CRepr]
		public struct MFP_PLAYBACK_ENDED_EVENT
		{
			public MFP_EVENT_HEADER header;
			public IMFPMediaItem* pMediaItem;
		}
		[CRepr]
		public struct MFP_ACQUIRE_USER_CREDENTIAL_EVENT
		{
			public MFP_EVENT_HEADER header;
			public uint dwUserData;
			public BOOL fProceedWithAuthentication;
			public HRESULT hrAuthenticationStatus;
			public PWSTR pwszURL;
			public PWSTR pwszSite;
			public PWSTR pwszRealm;
			public PWSTR pwszPackage;
			public int32 nRetries;
			public uint32 flags;
			public IMFNetCredential* pCredential;
		}
		[CRepr]
		public struct DEVICE_INFO
		{
			public BSTR pFriendlyDeviceName;
			public BSTR pUniqueDeviceName;
			public BSTR pManufacturerName;
			public BSTR pModelName;
			public BSTR pIconURL;
		}
		[CRepr]
		public struct MFVideoAlphaBitmapParams
		{
			public uint32 dwFlags;
			public uint32 clrSrcKey;
			public RECT rcSrc;
			public MFVideoNormalizedRect nrcDest;
			public float fAlpha;
			public uint32 dwFilterMode;
		}
		[CRepr]
		public struct MFVideoAlphaBitmap
		{
			public BOOL GetBitmapFromDC;
			public _bitmap_e__Union bitmap;
			public MFVideoAlphaBitmapParams @params;
			
			[CRepr, Union]
			public struct _bitmap_e__Union
			{
				public HDC hdc;
				public IDirect3DSurface9* pDDS;
			}
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_CMpeg4DecMediaObject = .(0xf371728a, 0x6052, 0x4d47, 0x82, 0x7c, 0xd0, 0x39, 0x33, 0x5d, 0xfe, 0x0a);
		public const Guid CLSID_CMpeg43DecMediaObject = .(0xcba9e78b, 0x49a3, 0x49ea, 0x93, 0xd4, 0x6b, 0xcb, 0xa8, 0xc4, 0xde, 0x07);
		public const Guid CLSID_CMpeg4sDecMediaObject = .(0x2a11bae2, 0xfe6e, 0x4249, 0x86, 0x4b, 0x9e, 0x9e, 0xd6, 0xe8, 0xdb, 0xc2);
		public const Guid CLSID_CMpeg4sDecMFT = .(0x5686a0d9, 0xfe39, 0x409f, 0x9d, 0xff, 0x3f, 0xdb, 0xc8, 0x49, 0xf9, 0xf5);
		public const Guid CLSID_CZuneM4S2DecMediaObject = .(0xc56fc25c, 0x0fc6, 0x404a, 0x95, 0x03, 0xb1, 0x0b, 0xf5, 0x1a, 0x8a, 0xb9);
		public const Guid CLSID_CMpeg4EncMediaObject = .(0x24f258d8, 0xc651, 0x4042, 0x93, 0xe4, 0xca, 0x65, 0x4a, 0xbb, 0x68, 0x2c);
		public const Guid CLSID_CMpeg4sEncMediaObject = .(0x6ec5a7be, 0xd81e, 0x4f9e, 0xad, 0xa3, 0xcd, 0x1b, 0xf2, 0x62, 0xb6, 0xd8);
		public const Guid CLSID_CMSSCDecMediaObject = .(0x7bafb3b1, 0xd8f4, 0x4279, 0x92, 0x53, 0x27, 0xda, 0x42, 0x31, 0x08, 0xde);
		public const Guid CLSID_CMSSCEncMediaObject = .(0x8cb9cc06, 0xd139, 0x4ae6, 0x8b, 0xb4, 0x41, 0xe6, 0x12, 0xe1, 0x41, 0xd5);
		public const Guid CLSID_CMSSCEncMediaObject2 = .(0xf7ffe0a0, 0xa4f5, 0x44b5, 0x94, 0x9e, 0x15, 0xed, 0x2b, 0xc6, 0x6f, 0x9d);
		public const Guid CLSID_CWMADecMediaObject = .(0x2eeb4adf, 0x4578, 0x4d10, 0xbc, 0xa7, 0xbb, 0x95, 0x5f, 0x56, 0x32, 0x0a);
		public const Guid CLSID_CWMAEncMediaObject = .(0x70f598e9, 0xf4ab, 0x495a, 0x99, 0xe2, 0xa7, 0xc4, 0xd3, 0xd8, 0x9a, 0xbf);
		public const Guid CLSID_CWMATransMediaObject = .(0xedcad9cb, 0x3127, 0x40df, 0xb5, 0x27, 0x01, 0x52, 0xcc, 0xb3, 0xf6, 0xf5);
		public const Guid CLSID_CWMSPDecMediaObject = .(0x874131cb, 0x4ecc, 0x443b, 0x89, 0x48, 0x74, 0x6b, 0x89, 0x59, 0x5d, 0x20);
		public const Guid CLSID_CWMSPEncMediaObject = .(0x67841b03, 0xc689, 0x4188, 0xad, 0x3f, 0x4c, 0x9e, 0xbe, 0xec, 0x71, 0x0b);
		public const Guid CLSID_CWMSPEncMediaObject2 = .(0x1f1f4e1a, 0x2252, 0x4063, 0x84, 0xbb, 0xee, 0xe7, 0x5f, 0x88, 0x56, 0xd5);
		public const Guid CLSID_CWMTDecMediaObject = .(0xf9dbc64e, 0x2dd0, 0x45dd, 0x9b, 0x52, 0x66, 0x64, 0x2e, 0xf9, 0x44, 0x31);
		public const Guid CLSID_CWMTEncMediaObject = .(0x60b67652, 0xe46b, 0x4e44, 0x86, 0x09, 0xf7, 0x4b, 0xff, 0xdc, 0x08, 0x3c);
		public const Guid CLSID_CWMVDecMediaObject = .(0x82d353df, 0x90bd, 0x4382, 0x8b, 0xc2, 0x3f, 0x61, 0x92, 0xb7, 0x6e, 0x34);
		public const Guid CLSID_CWMVEncMediaObject2 = .(0x96b57cdd, 0x8966, 0x410c, 0xbb, 0x1f, 0xc9, 0x7e, 0xea, 0x76, 0x5c, 0x04);
		public const Guid CLSID_CWMVXEncMediaObject = .(0x7e320092, 0x596a, 0x41b2, 0xbb, 0xeb, 0x17, 0x5d, 0x10, 0x50, 0x4e, 0xb6);
		public const Guid CLSID_CWMV9EncMediaObject = .(0xd23b90d0, 0x144f, 0x46bd, 0x84, 0x1d, 0x59, 0xe4, 0xeb, 0x19, 0xdc, 0x59);
		public const Guid CLSID_CWVC1DecMediaObject = .(0xc9bfbccf, 0xe60e, 0x4588, 0xa3, 0xdf, 0x5a, 0x03, 0xb1, 0xfd, 0x95, 0x85);
		public const Guid CLSID_CWVC1EncMediaObject = .(0x44653d0d, 0x8cca, 0x41e7, 0xba, 0xca, 0x88, 0x43, 0x37, 0xb7, 0x47, 0xac);
		public const Guid CLSID_CDeColorConvMediaObject = .(0x49034c05, 0xf43c, 0x400f, 0x84, 0xc1, 0x90, 0xa6, 0x83, 0x19, 0x5a, 0x3a);
		public const Guid CLSID_CDVDecoderMediaObject = .(0xe54709c5, 0x1e17, 0x4c8d, 0x94, 0xe7, 0x47, 0x89, 0x40, 0x43, 0x35, 0x84);
		public const Guid CLSID_CDVEncoderMediaObject = .(0xc82ae729, 0xc327, 0x4cce, 0x91, 0x4d, 0x81, 0x71, 0xfe, 0xfe, 0xbe, 0xfb);
		public const Guid CLSID_CMpeg2DecMediaObject = .(0x863d66cd, 0xcdce, 0x4617, 0xb4, 0x7f, 0xc8, 0x92, 0x9c, 0xfc, 0x28, 0xa6);
		public const Guid CLSID_CPK_DS_MPEG2Decoder = .(0x9910c5cd, 0x95c9, 0x4e06, 0x86, 0x5a, 0xef, 0xa1, 0xc8, 0x01, 0x6b, 0xf4);
		public const Guid CLSID_CAC3DecMediaObject = .(0x03d7c802, 0xecfa, 0x47d9, 0xb2, 0x68, 0x5f, 0xb3, 0xe3, 0x10, 0xde, 0xe4);
		public const Guid CLSID_CPK_DS_AC3Decoder = .(0x6c9c69d6, 0x0ffc, 0x4481, 0xaf, 0xdb, 0xcd, 0xf1, 0xc7, 0x9c, 0x6f, 0x3e);
		public const Guid CLSID_CMP3DecMediaObject = .(0xbbeea841, 0x0a63, 0x4f52, 0xa7, 0xab, 0xa9, 0xb3, 0xa8, 0x4e, 0xd3, 0x8a);
		public const Guid CLSID_CResamplerMediaObject = .(0xf447b69e, 0x1884, 0x4a7e, 0x80, 0x55, 0x34, 0x6f, 0x74, 0xd6, 0xed, 0xb3);
		public const Guid CLSID_CResizerMediaObject = .(0xd3ec8b8b, 0x7728, 0x4fd8, 0x9f, 0xe0, 0x7b, 0x67, 0xd1, 0x9f, 0x73, 0xa3);
		public const Guid CLSID_CInterlaceMediaObject = .(0xb5a89c80, 0x4901, 0x407b, 0x9a, 0xbc, 0x90, 0xd9, 0xa6, 0x44, 0xbb, 0x46);
		public const Guid CLSID_CWMAudioLFXAPO = .(0x62dc1a93, 0xae24, 0x464c, 0xa4, 0x3e, 0x45, 0x2f, 0x82, 0x4c, 0x42, 0x50);
		public const Guid CLSID_CWMAudioGFXAPO = .(0x637c490d, 0xeee3, 0x4c0a, 0x97, 0x3f, 0x37, 0x19, 0x58, 0x80, 0x2d, 0xa2);
		public const Guid CLSID_CWMAudioCAPXLFXAPO = .(0xc9453e73, 0x8c5c, 0x4463, 0x99, 0x84, 0xaf, 0x8b, 0xab, 0x2f, 0x54, 0x47);
		public const Guid CLSID_CWMAudioCAPXGFXAPO = .(0x13ab3ebd, 0x137e, 0x4903, 0x9d, 0x89, 0x60, 0xbe, 0x82, 0x77, 0xfd, 0x17);
		public const Guid CLSID_CWMAudioSpdTxDMO = .(0x5210f8e4, 0xb0bb, 0x47c3, 0xa8, 0xd9, 0x7b, 0x22, 0x82, 0xcc, 0x79, 0xed);
		public const Guid CLSID_CWMAudioAEC = .(0x745057c7, 0xf353, 0x4f2d, 0xa7, 0xee, 0x58, 0x43, 0x44, 0x77, 0x73, 0x0e);
		public const Guid CLSID_CClusterDetectorDmo = .(0x36e820c4, 0x165a, 0x4521, 0x86, 0x3c, 0x61, 0x9e, 0x11, 0x60, 0xd4, 0xd4);
		public const Guid CLSID_CColorControlDmo = .(0x798059f0, 0x89ca, 0x4160, 0xb3, 0x25, 0xae, 0xb4, 0x8e, 0xfe, 0x4f, 0x9a);
		public const Guid CLSID_CColorConvertDMO = .(0x98230571, 0x0087, 0x4204, 0xb0, 0x20, 0x32, 0x82, 0x53, 0x8e, 0x57, 0xd3);
		public const Guid CLSID_CColorLegalizerDmo = .(0xfdfaa753, 0xe48e, 0x4e33, 0x9c, 0x74, 0x98, 0xa2, 0x7f, 0xc6, 0x72, 0x6a);
		public const Guid CLSID_CFrameInterpDMO = .(0x0a7cfe1b, 0x6ab5, 0x4334, 0x9e, 0xd8, 0x3f, 0x97, 0xcb, 0x37, 0xda, 0xa1);
		public const Guid CLSID_CFrameRateConvertDmo = .(0x01f36ce2, 0x0907, 0x4d8b, 0x97, 0x9d, 0xf1, 0x51, 0xbe, 0x91, 0xc8, 0x83);
		public const Guid CLSID_CResizerDMO = .(0x1ea1ea14, 0x48f4, 0x4054, 0xad, 0x1a, 0xe8, 0xae, 0xe1, 0x0a, 0xc8, 0x05);
		public const Guid CLSID_CShotDetectorDmo = .(0x56aefacd, 0x110c, 0x4397, 0x92, 0x92, 0xb0, 0xa0, 0xc6, 0x1b, 0x67, 0x50);
		public const Guid CLSID_CSmpteTransformsDmo = .(0xbde6388b, 0xda25, 0x485d, 0xba, 0x7f, 0xfa, 0xbc, 0x28, 0xb2, 0x03, 0x18);
		public const Guid CLSID_CThumbnailGeneratorDmo = .(0x559c6bad, 0x1ea8, 0x4963, 0xa0, 0x87, 0x8a, 0x68, 0x10, 0xf9, 0x21, 0x8b);
		public const Guid CLSID_CTocGeneratorDmo = .(0x4dda1941, 0x77a0, 0x4fb1, 0xa5, 0x18, 0xe2, 0x18, 0x50, 0x41, 0xd7, 0x0c);
		public const Guid CLSID_CMPEGAACDecMediaObject = .(0x8dde1772, 0xedad, 0x41c3, 0xb4, 0xbe, 0x1f, 0x30, 0xfb, 0x4e, 0xe0, 0xd6);
		public const Guid CLSID_CNokiaAACDecMediaObject = .(0x3cb2bde4, 0x4e29, 0x4c44, 0xa7, 0x3e, 0x2d, 0x7c, 0x2c, 0x46, 0xd6, 0xec);
		public const Guid CLSID_CVodafoneAACDecMediaObject = .(0x7f36f942, 0xdcf3, 0x4d82, 0x92, 0x89, 0x5b, 0x18, 0x20, 0x27, 0x8f, 0x7c);
		public const Guid CLSID_CZuneAACCCDecMediaObject = .(0xa74e98f2, 0x52d6, 0x4b4e, 0x88, 0x5b, 0xe0, 0xa6, 0xca, 0x4f, 0x18, 0x7a);
		public const Guid CLSID_CNokiaAACCCDecMediaObject = .(0xeabf7a6f, 0xccba, 0x4d60, 0x86, 0x20, 0xb1, 0x52, 0xcc, 0x97, 0x72, 0x63);
		public const Guid CLSID_CVodafoneAACCCDecMediaObject = .(0x7e76bf7f, 0xc993, 0x4e26, 0x8f, 0xab, 0x47, 0x0a, 0x70, 0xc0, 0xd5, 0x9c);
		public const Guid CLSID_CMPEG2EncoderDS = .(0x5f5aff4a, 0x2f7f, 0x4279, 0x88, 0xc2, 0xcd, 0x88, 0xeb, 0x39, 0xd1, 0x44);
		public const Guid CLSID_CMPEG2EncoderVideoDS = .(0x42150cd9, 0xca9a, 0x4ea5, 0x99, 0x39, 0x30, 0xee, 0x03, 0x7f, 0x6e, 0x74);
		public const Guid CLSID_CMPEG2EncoderAudioDS = .(0xacd453bc, 0xc58a, 0x44d1, 0xbb, 0xf5, 0xbf, 0xb3, 0x25, 0xbe, 0x2d, 0x78);
		public const Guid CLSID_CMPEG2AudDecoderDS = .(0xe1f1a0b8, 0xbeee, 0x490d, 0xba, 0x7c, 0x06, 0x6c, 0x40, 0xb5, 0xe2, 0xb9);
		public const Guid CLSID_CMPEG2VidDecoderDS = .(0x212690fb, 0x83e5, 0x4526, 0x8f, 0xd7, 0x74, 0x47, 0x8b, 0x79, 0x39, 0xcd);
		public const Guid CLSID_CDTVAudDecoderDS = .(0x8e269032, 0xfe03, 0x4753, 0x9b, 0x17, 0x18, 0x25, 0x3c, 0x21, 0x72, 0x2e);
		public const Guid CLSID_CDTVVidDecoderDS = .(0x64777dc8, 0x4e24, 0x4beb, 0x9d, 0x19, 0x60, 0xa3, 0x5b, 0xe1, 0xda, 0xaf);
		public const Guid CLSID_CMSAC3Enc = .(0xc6b400e2, 0x20a7, 0x4e58, 0xa2, 0xfe, 0x24, 0x61, 0x96, 0x82, 0xce, 0x6c);
		public const Guid CLSID_CMSH264DecoderMFT = .(0x62ce7e72, 0x4c71, 0x4d20, 0xb1, 0x5d, 0x45, 0x28, 0x31, 0xa8, 0x7d, 0x9d);
		public const Guid CLSID_CMSH263EncoderMFT = .(0xbc47fcfe, 0x98a0, 0x4f27, 0xbb, 0x07, 0x69, 0x8a, 0xf2, 0x4f, 0x2b, 0x38);
		public const Guid CLSID_CMSH264EncoderMFT = .(0x6ca50344, 0x051a, 0x4ded, 0x97, 0x79, 0xa4, 0x33, 0x05, 0x16, 0x5e, 0x35);
		public const Guid CLSID_CMSH265EncoderMFT = .(0xf2f84074, 0x8bca, 0x40bd, 0x91, 0x59, 0xe8, 0x80, 0xf6, 0x73, 0xdd, 0x3b);
		public const Guid CLSID_CMSVPXEncoderMFT = .(0xaeb6c755, 0x2546, 0x4881, 0x82, 0xcc, 0xe1, 0x5a, 0xe5, 0xeb, 0xff, 0x3d);
		public const Guid CLSID_CMSH264RemuxMFT = .(0x05a47ebb, 0x8bf0, 0x4cbf, 0xad, 0x2f, 0x3b, 0x71, 0xd7, 0x58, 0x66, 0xf5);
		public const Guid CLSID_CMSAACDecMFT = .(0x32d186a7, 0x218f, 0x4c75, 0x88, 0x76, 0xdd, 0x77, 0x27, 0x3a, 0x89, 0x99);
		public const Guid CLSID_AACMFTEncoder = .(0x93af0c51, 0x2275, 0x45d2, 0xa3, 0x5b, 0xf2, 0xba, 0x21, 0xca, 0xed, 0x00);
		public const Guid CLSID_CMSDDPlusDecMFT = .(0x177c0afe, 0x900b, 0x48d4, 0x9e, 0x4c, 0x57, 0xad, 0xd2, 0x50, 0xb3, 0xd4);
		public const Guid CLSID_CMPEG2VideoEncoderMFT = .(0xe6335f02, 0x80b7, 0x4dc4, 0xad, 0xfa, 0xdf, 0xe7, 0x21, 0x0d, 0x20, 0xd5);
		public const Guid CLSID_CMPEG2AudioEncoderMFT = .(0x46a4dd5c, 0x73f8, 0x4304, 0x94, 0xdf, 0x30, 0x8f, 0x76, 0x09, 0x74, 0xf4);
		public const Guid CLSID_CMSMPEGDecoderMFT = .(0x2d709e52, 0x123f, 0x49b5, 0x9c, 0xbc, 0x9a, 0xf5, 0xcd, 0xe2, 0x8f, 0xb9);
		public const Guid CLSID_CMSMPEGAudDecMFT = .(0x70707b39, 0xb2ca, 0x4015, 0xab, 0xea, 0xf8, 0x44, 0x7d, 0x22, 0xd8, 0x8b);
		public const Guid CLSID_CMSDolbyDigitalEncMFT = .(0xac3315c9, 0xf481, 0x45d7, 0x82, 0x6c, 0x0b, 0x40, 0x6c, 0x1f, 0x64, 0xb8);
		public const Guid CLSID_MP3ACMCodecWrapper = .(0x11103421, 0x354c, 0x4cca, 0xa7, 0xa3, 0x1a, 0xff, 0x9a, 0x5b, 0x67, 0x01);
		public const Guid CLSID_ALawCodecWrapper = .(0x36cb6e0c, 0x78c1, 0x42b2, 0x99, 0x43, 0x84, 0x62, 0x62, 0xf3, 0x17, 0x86);
		public const Guid CLSID_MULawCodecWrapper = .(0x92b66080, 0x5e2d, 0x449e, 0x90, 0xc4, 0xc4, 0x1f, 0x26, 0x8e, 0x55, 0x14);
		public const Guid CLSID_CMSVideoDSPMFT = .(0x51571744, 0x7fe4, 0x4ff2, 0xa4, 0x98, 0x2d, 0xc3, 0x4f, 0xf7, 0x4f, 0x1b);
		public const Guid CLSID_VorbisDecoderMFT = .(0x1a198ef2, 0x60e5, 0x4ea8, 0x90, 0xd8, 0xda, 0x1f, 0x28, 0x32, 0xc2, 0x88);
		public const Guid CLSID_CMSFLACDecMFT = .(0x6b0b3e6b, 0xa2c5, 0x4514, 0x80, 0x55, 0xaf, 0xe8, 0xa9, 0x52, 0x42, 0xd9);
		public const Guid CLSID_CMSFLACEncMFT = .(0x128509e9, 0xc44e, 0x45dc, 0x95, 0xe9, 0xc2, 0x55, 0xb8, 0xf4, 0x66, 0xa6);
		public const Guid CLSID_MFFLACBytestreamHandler = .(0x0e41cfb8, 0x0506, 0x40f4, 0xa5, 0x16, 0x77, 0xcc, 0x23, 0x64, 0x2d, 0x91);
		public const Guid CLSID_MFFLACSinkClassFactory = .(0x7d39c56f, 0x6075, 0x47c9, 0x9b, 0xae, 0x8c, 0xf9, 0xe5, 0x31, 0xb5, 0xf5);
		public const Guid CLSID_CMSALACDecMFT = .(0xc0cd7d12, 0x31fc, 0x4bbc, 0xb3, 0x63, 0x73, 0x22, 0xee, 0x3e, 0x18, 0x79);
		public const Guid CLSID_CMSALACEncMFT = .(0x9ab6a28c, 0x748e, 0x4b6a, 0xbf, 0xff, 0xcc, 0x44, 0x3b, 0x8e, 0x8f, 0xb4);
		public const Guid CLSID_CMSOpusDecMFT = .(0x63e17c10, 0x2d43, 0x4c42, 0x8f, 0xe3, 0x8d, 0x8b, 0x63, 0xe4, 0x6a, 0x6a);
		public const Guid CLSID_MSAMRNBDecoder = .(0x265011ae, 0x5481, 0x4f77, 0xa2, 0x95, 0xab, 0xb6, 0xff, 0xe8, 0xd6, 0x3e);
		public const Guid CLSID_MSAMRNBEncoder = .(0x2fae8afe, 0x04a3, 0x423a, 0xa8, 0x14, 0x85, 0xdb, 0x45, 0x47, 0x12, 0xb0);
		public const Guid CLSID_MFAMRNBByteStreamHandler = .(0xefe6208a, 0x0a2c, 0x49fa, 0x8a, 0x01, 0x37, 0x68, 0xb5, 0x59, 0xb6, 0xda);
		public const Guid CLSID_MFAMRNBSinkClassFactory = .(0xb0271158, 0x70d2, 0x4c5b, 0x9f, 0x94, 0x76, 0xf5, 0x49, 0xd9, 0x0f, 0xdf);
		public const Guid CLSID_CODECAPI_AVEncCommonFormatConstraint = .(0x57cbb9b8, 0x116f, 0x4951, 0xb4, 0x0c, 0xc2, 0xa0, 0x35, 0xed, 0x8f, 0x17);
		public const Guid CLSID_CODECAPI_GUID_AVEncCommonFormatUnSpecified = .(0xaf46a35a, 0x6024, 0x4525, 0xa4, 0x8a, 0x09, 0x4b, 0x97, 0xf5, 0xb3, 0xc2);
		public const Guid CLSID_CODECAPI_GUID_AVEncCommonFormatDVD_V = .(0xcc9598c4, 0xe7fe, 0x451d, 0xb1, 0xca, 0x76, 0x1b, 0xc8, 0x40, 0xb7, 0xf3);
		public const Guid CLSID_CODECAPI_GUID_AVEncCommonFormatDVD_DashVR = .(0xe55199d6, 0x044c, 0x4dae, 0xa4, 0x88, 0x53, 0x1e, 0xd3, 0x06, 0x23, 0x5b);
		public const Guid CLSID_CODECAPI_GUID_AVEncCommonFormatDVD_PlusVR = .(0xe74c6f2e, 0xec37, 0x478d, 0x9a, 0xf4, 0xa5, 0xe1, 0x35, 0xb6, 0x27, 0x1c);
		public const Guid CLSID_CODECAPI_GUID_AVEncCommonFormatVCD = .(0x95035bf7, 0x9d90, 0x40ff, 0xad, 0x5c, 0x5c, 0xf8, 0xcf, 0x71, 0xca, 0x1d);
		public const Guid CLSID_CODECAPI_GUID_AVEncCommonFormatSVCD = .(0x51d85818, 0x8220, 0x448c, 0x80, 0x66, 0xd6, 0x9b, 0xed, 0x16, 0xc9, 0xad);
		public const Guid CLSID_CODECAPI_GUID_AVEncCommonFormatATSC = .(0x8d7b897c, 0xa019, 0x4670, 0xaa, 0x76, 0x2e, 0xdc, 0xac, 0x7a, 0xc2, 0x96);
		public const Guid CLSID_CODECAPI_GUID_AVEncCommonFormatDVB = .(0x71830d8f, 0x6c33, 0x430d, 0x84, 0x4b, 0xc2, 0x70, 0x5b, 0xaa, 0xe6, 0xdb);
		public const Guid CLSID_CODECAPI_GUID_AVEncCommonFormatMP3 = .(0x349733cd, 0xeb08, 0x4dc2, 0x81, 0x97, 0xe4, 0x98, 0x35, 0xef, 0x82, 0x8b);
		public const Guid CLSID_CODECAPI_GUID_AVEncCommonFormatHighMAT = .(0x1eabe760, 0xfb2b, 0x4928, 0x90, 0xd1, 0x78, 0xdb, 0x88, 0xee, 0xe8, 0x89);
		public const Guid CLSID_CODECAPI_GUID_AVEncCommonFormatHighMPV = .(0xa2d25db8, 0xb8f9, 0x42c2, 0x8b, 0xc7, 0x0b, 0x93, 0xcf, 0x60, 0x47, 0x88);
		public const Guid CLSID_CODECAPI_AVEncCodecType = .(0x08af4ac1, 0xf3f2, 0x4c74, 0x9d, 0xcf, 0x37, 0xf2, 0xec, 0x79, 0xf8, 0x26);
		public const Guid CLSID_CODECAPI_GUID_AVEncMPEG1Video = .(0xc8dafefe, 0xda1e, 0x4774, 0xb2, 0x7d, 0x11, 0x83, 0x0c, 0x16, 0xb1, 0xfe);
		public const Guid CLSID_CODECAPI_GUID_AVEncMPEG2Video = .(0x046dc19a, 0x6677, 0x4aaa, 0xa3, 0x1d, 0xc1, 0xab, 0x71, 0x6f, 0x45, 0x60);
		public const Guid CLSID_CODECAPI_GUID_AVEncMPEG1Audio = .(0xd4dd1362, 0xcd4a, 0x4cd6, 0x81, 0x38, 0xb9, 0x4d, 0xb4, 0x54, 0x2b, 0x04);
		public const Guid CLSID_CODECAPI_GUID_AVEncMPEG2Audio = .(0xee4cbb1f, 0x9c3f, 0x4770, 0x92, 0xb5, 0xfc, 0xb7, 0xc2, 0xa8, 0xd3, 0x81);
		public const Guid CLSID_CODECAPI_GUID_AVEncWMV = .(0x4e0fef9b, 0x1d43, 0x41bd, 0xb8, 0xbd, 0x4d, 0x7b, 0xf7, 0x45, 0x7a, 0x2a);
		public const Guid CLSID_CODECAPI_GUID_AVEndMPEG4Video = .(0xdd37b12a, 0x9503, 0x4f8b, 0xb8, 0xd0, 0x32, 0x4a, 0x00, 0xc0, 0xa1, 0xcf);
		public const Guid CLSID_CODECAPI_GUID_AVEncH264Video = .(0x95044eab, 0x31b3, 0x47de, 0x8e, 0x75, 0x38, 0xa4, 0x2b, 0xb0, 0x3e, 0x28);
		public const Guid CLSID_CODECAPI_GUID_AVEncDV = .(0x09b769c7, 0x3329, 0x44fb, 0x89, 0x54, 0xfa, 0x30, 0x93, 0x7d, 0x3d, 0x5a);
		public const Guid CLSID_CODECAPI_GUID_AVEncWMAPro = .(0x1955f90c, 0x33f7, 0x4a68, 0xab, 0x81, 0x53, 0xf5, 0x65, 0x71, 0x25, 0xc4);
		public const Guid CLSID_CODECAPI_GUID_AVEncWMALossless = .(0x55ca7265, 0x23d8, 0x4761, 0x90, 0x31, 0xb7, 0x4f, 0xbe, 0x12, 0xf4, 0xc1);
		public const Guid CLSID_CODECAPI_GUID_AVEncWMAVoice = .(0x13ed18cb, 0x50e8, 0x4276, 0xa2, 0x88, 0xa6, 0xaa, 0x22, 0x83, 0x82, 0xd9);
		public const Guid CLSID_CODECAPI_GUID_AVEncDolbyDigitalPro = .(0xf5be76cc, 0x0ff8, 0x40eb, 0x9c, 0xb1, 0xbb, 0xa9, 0x40, 0x04, 0xd4, 0x4f);
		public const Guid CLSID_CODECAPI_GUID_AVEncDolbyDigitalConsumer = .(0xc1a7bf6c, 0x0059, 0x4bfa, 0x94, 0xef, 0xef, 0x74, 0x7a, 0x76, 0x8d, 0x52);
		public const Guid CLSID_CODECAPI_GUID_AVEncDolbyDigitalPlus = .(0x698d1b80, 0xf7dd, 0x415c, 0x97, 0x1c, 0x42, 0x49, 0x2a, 0x20, 0x56, 0xc6);
		public const Guid CLSID_CODECAPI_GUID_AVEncDTSHD = .(0x2052e630, 0x469d, 0x4bfb, 0x80, 0xca, 0x1d, 0x65, 0x6e, 0x7e, 0x91, 0x8f);
		public const Guid CLSID_CODECAPI_GUID_AVEncDTS = .(0x45fbcaa2, 0x5e6e, 0x4ab0, 0x88, 0x93, 0x59, 0x03, 0xbe, 0xe9, 0x3a, 0xcf);
		public const Guid CLSID_CODECAPI_GUID_AVEncMLP = .(0x05f73e29, 0xf0d1, 0x431e, 0xa4, 0x1c, 0xa4, 0x74, 0x32, 0xec, 0x5a, 0x66);
		public const Guid CLSID_CODECAPI_GUID_AVEncPCM = .(0x844be7f4, 0x26cf, 0x4779, 0xb3, 0x86, 0xcc, 0x05, 0xd1, 0x87, 0x99, 0x0c);
		public const Guid CLSID_CODECAPI_GUID_AVEncSDDS = .(0x1dc1b82f, 0x11c8, 0x4c71, 0xb7, 0xb6, 0xee, 0x3e, 0xb9, 0xbc, 0x2b, 0x94);
		public const Guid CLSID_CODECAPI_AVEncCommonRateControlMode = .(0x1c0608e9, 0x370c, 0x4710, 0x8a, 0x58, 0xcb, 0x61, 0x81, 0xc4, 0x24, 0x23);
		public const Guid CLSID_CODECAPI_AVEncCommonLowLatency = .(0x9d3ecd55, 0x89e8, 0x490a, 0x97, 0x0a, 0x0c, 0x95, 0x48, 0xd5, 0xa5, 0x6e);
		public const Guid CLSID_CODECAPI_AVEncCommonMultipassMode = .(0x22533d4c, 0x47e1, 0x41b5, 0x93, 0x52, 0xa2, 0xb7, 0x78, 0x0e, 0x7a, 0xc4);
		public const Guid CLSID_CODECAPI_AVEncCommonPassStart = .(0x6a67739f, 0x4eb5, 0x4385, 0x99, 0x28, 0xf2, 0x76, 0xa9, 0x39, 0xef, 0x95);
		public const Guid CLSID_CODECAPI_AVEncCommonPassEnd = .(0x0e3d01bc, 0xc85c, 0x467d, 0x8b, 0x60, 0xc4, 0x10, 0x12, 0xee, 0x3b, 0xf6);
		public const Guid CLSID_CODECAPI_AVEncCommonRealTime = .(0x143a0ff6, 0xa131, 0x43da, 0xb8, 0x1e, 0x98, 0xfb, 0xb8, 0xec, 0x37, 0x8e);
		public const Guid CLSID_CODECAPI_AVEncCommonQuality = .(0xfcbf57a3, 0x7ea5, 0x4b0c, 0x96, 0x44, 0x69, 0xb4, 0x0c, 0x39, 0xc3, 0x91);
		public const Guid CLSID_CODECAPI_AVEncCommonQualityVsSpeed = .(0x98332df8, 0x03cd, 0x476b, 0x89, 0xfa, 0x3f, 0x9e, 0x44, 0x2d, 0xec, 0x9f);
		public const Guid CLSID_CODECAPI_AVEncCommonTranscodeEncodingProfile = .(0x6947787c, 0xf508, 0x4ea9, 0xb1, 0xe9, 0xa1, 0xfe, 0x3a, 0x49, 0xfb, 0xc9);
		public const Guid CLSID_CODECAPI_AVEncCommonMeanBitRate = .(0xf7222374, 0x2144, 0x4815, 0xb5, 0x50, 0xa3, 0x7f, 0x8e, 0x12, 0xee, 0x52);
		public const Guid CLSID_CODECAPI_AVEncCommonMeanBitRateInterval = .(0xbfaa2f0c, 0xcb82, 0x4bc0, 0x84, 0x74, 0xf0, 0x6a, 0x8a, 0x0d, 0x02, 0x58);
		public const Guid CLSID_CODECAPI_AVEncCommonMaxBitRate = .(0x9651eae4, 0x39b9, 0x4ebf, 0x85, 0xef, 0xd7, 0xf4, 0x44, 0xec, 0x74, 0x65);
		public const Guid CLSID_CODECAPI_AVEncCommonMinBitRate = .(0x101405b2, 0x2083, 0x4034, 0xa8, 0x06, 0xef, 0xbe, 0xdd, 0xd7, 0xc9, 0xff);
		public const Guid CLSID_CODECAPI_AVEncCommonBufferSize = .(0x0db96574, 0xb6a4, 0x4c8b, 0x81, 0x06, 0x37, 0x73, 0xde, 0x03, 0x10, 0xcd);
		public const Guid CLSID_CODECAPI_AVEncCommonBufferInLevel = .(0xd9c5c8db, 0xfc74, 0x4064, 0x94, 0xe9, 0xcd, 0x19, 0xf9, 0x47, 0xed, 0x45);
		public const Guid CLSID_CODECAPI_AVEncCommonBufferOutLevel = .(0xccae7f49, 0xd0bc, 0x4e3d, 0xa5, 0x7e, 0xfb, 0x57, 0x40, 0x14, 0x00, 0x69);
		public const Guid CLSID_CODECAPI_AVEncCommonStreamEndHandling = .(0x6aad30af, 0x6ba8, 0x4ccc, 0x8f, 0xca, 0x18, 0xd1, 0x9b, 0xea, 0xeb, 0x1c);
		public const Guid CLSID_CODECAPI_AVEncStatCommonCompletedPasses = .(0x3e5de533, 0x9df7, 0x438c, 0x85, 0x4f, 0x9f, 0x7d, 0xd3, 0x68, 0x3d, 0x34);
		public const Guid CLSID_CODECAPI_AVEncVideoOutputFrameRate = .(0xea85e7c3, 0x9567, 0x4d99, 0x87, 0xc4, 0x02, 0xc1, 0xc2, 0x78, 0xca, 0x7c);
		public const Guid CLSID_CODECAPI_AVEncVideoOutputFrameRateConversion = .(0x8c068bf4, 0x369a, 0x4ba3, 0x82, 0xfd, 0xb2, 0x51, 0x8f, 0xb3, 0x39, 0x6e);
		public const Guid CLSID_CODECAPI_AVEncVideoPixelAspectRatio = .(0x3cdc718f, 0xb3e9, 0x4eb6, 0xa5, 0x7f, 0xcf, 0x1f, 0x1b, 0x32, 0x1b, 0x87);
		public const Guid CLSID_CODECAPI_AVDecVideoAcceleration_MPEG2 = .(0xf7db8a2e, 0x4f48, 0x4ee8, 0xae, 0x31, 0x8b, 0x6e, 0xbe, 0x55, 0x8a, 0xe2);
		public const Guid CLSID_CODECAPI_AVDecVideoAcceleration_H264 = .(0xf7db8a2f, 0x4f48, 0x4ee8, 0xae, 0x31, 0x8b, 0x6e, 0xbe, 0x55, 0x8a, 0xe2);
		public const Guid CLSID_CODECAPI_AVDecVideoAcceleration_VC1 = .(0xf7db8a30, 0x4f48, 0x4ee8, 0xae, 0x31, 0x8b, 0x6e, 0xbe, 0x55, 0x8a, 0xe2);
		public const Guid CLSID_CODECAPI_AVDecVideoProcDeinterlaceCSC = .(0xf7db8a31, 0x4f48, 0x4ee8, 0xae, 0x31, 0x8b, 0x6e, 0xbe, 0x55, 0x8a, 0xe2);
		public const Guid CLSID_CODECAPI_AVDecVideoThumbnailGenerationMode = .(0x2efd8eee, 0x1150, 0x4328, 0x9c, 0xf5, 0x66, 0xdc, 0xe9, 0x33, 0xfc, 0xf4);
		public const Guid CLSID_CODECAPI_AVDecVideoMaxCodedWidth = .(0x5ae557b8, 0x77af, 0x41f5, 0x9f, 0xa6, 0x4d, 0xb2, 0xfe, 0x1d, 0x4b, 0xca);
		public const Guid CLSID_CODECAPI_AVDecVideoMaxCodedHeight = .(0x7262a16a, 0xd2dc, 0x4e75, 0x9b, 0xa8, 0x65, 0xc0, 0xc6, 0xd3, 0x2b, 0x13);
		public const Guid CLSID_CODECAPI_AVDecNumWorkerThreads = .(0x9561c3e8, 0xea9e, 0x4435, 0x9b, 0x1e, 0xa9, 0x3e, 0x69, 0x18, 0x94, 0xd8);
		public const Guid CLSID_CODECAPI_AVDecSoftwareDynamicFormatChange = .(0x862e2f0a, 0x507b, 0x47ff, 0xaf, 0x47, 0x01, 0xe2, 0x62, 0x42, 0x98, 0xb7);
		public const Guid CLSID_CODECAPI_AVDecDisableVideoPostProcessing = .(0xf8749193, 0x667a, 0x4f2c, 0xa9, 0xe8, 0x5d, 0x4a, 0xf9, 0x24, 0xf0, 0x8f);
		public const Guid CLSID_CODECAPI_AVDecVideoDropPicWithMissingRef = .(0xf8226383, 0x14c2, 0x4567, 0x97, 0x34, 0x50, 0x04, 0xe9, 0x6f, 0xf8, 0x87);
		public const Guid CLSID_CODECAPI_AVDecVideoSoftwareDeinterlaceMode = .(0x0c08d1ce, 0x9ced, 0x4540, 0xba, 0xe3, 0xce, 0xb3, 0x80, 0x14, 0x11, 0x09);
		public const Guid CLSID_CODECAPI_AVDecVideoFastDecodeMode = .(0x6b529f7d, 0xd3b1, 0x49c6, 0xa9, 0x99, 0x9e, 0xc6, 0x91, 0x1b, 0xed, 0xbf);
		public const Guid CLSID_CODECAPI_AVLowLatencyMode = .(0x9c27891a, 0xed7a, 0x40e1, 0x88, 0xe8, 0xb2, 0x27, 0x27, 0xa0, 0x24, 0xee);
		public const Guid CLSID_CODECAPI_AVDecVideoH264ErrorConcealment = .(0xececace8, 0x3436, 0x462c, 0x92, 0x94, 0xcd, 0x7b, 0xac, 0xd7, 0x58, 0xa9);
		public const Guid CLSID_CODECAPI_AVDecVideoMPEG2ErrorConcealment = .(0x9d2bfe18, 0x728d, 0x48d2, 0xb3, 0x58, 0xbc, 0x7e, 0x43, 0x6c, 0x66, 0x74);
		public const Guid CLSID_CODECAPI_AVDecVideoCodecType = .(0x434528e5, 0x21f0, 0x46b6, 0xb6, 0x2c, 0x9b, 0x1b, 0x6b, 0x65, 0x8c, 0xd1);
		public const Guid CLSID_CODECAPI_AVDecVideoDXVAMode = .(0xf758f09e, 0x7337, 0x4ae7, 0x83, 0x87, 0x73, 0xdc, 0x2d, 0x54, 0xe6, 0x7d);
		public const Guid CLSID_CODECAPI_AVDecVideoDXVABusEncryption = .(0x42153c8b, 0xfd0b, 0x4765, 0xa4, 0x62, 0xdd, 0xd9, 0xe8, 0xbc, 0xc3, 0x88);
		public const Guid CLSID_CODECAPI_AVEncVideoForceSourceScanType = .(0x1ef2065f, 0x058a, 0x4765, 0xa4, 0xfc, 0x8a, 0x86, 0x4c, 0x10, 0x30, 0x12);
		public const Guid CLSID_CODECAPI_AVEncVideoNoOfFieldsToEncode = .(0x61e4bbe2, 0x4ee0, 0x40e7, 0x80, 0xab, 0x51, 0xdd, 0xee, 0xbe, 0x62, 0x91);
		public const Guid CLSID_CODECAPI_AVEncVideoNoOfFieldsToSkip = .(0xa97e1240, 0x1427, 0x4c16, 0xa7, 0xf7, 0x3d, 0xcf, 0xd8, 0xba, 0x4c, 0xc5);
		public const Guid CLSID_CODECAPI_AVEncVideoEncodeDimension = .(0x1074df28, 0x7e0f, 0x47a4, 0xa4, 0x53, 0xcd, 0xd7, 0x38, 0x70, 0xf5, 0xce);
		public const Guid CLSID_CODECAPI_AVEncVideoEncodeOffsetOrigin = .(0x6bc098fe, 0xa71a, 0x4454, 0x85, 0x2e, 0x4d, 0x2d, 0xde, 0xb2, 0xcd, 0x24);
		public const Guid CLSID_CODECAPI_AVEncVideoDisplayDimension = .(0xde053668, 0xf4ec, 0x47a9, 0x86, 0xd0, 0x83, 0x67, 0x70, 0xf0, 0xc1, 0xd5);
		public const Guid CLSID_CODECAPI_AVEncVideoOutputScanType = .(0x460b5576, 0x842e, 0x49ab, 0xa6, 0x2d, 0xb3, 0x6f, 0x73, 0x12, 0xc9, 0xdb);
		public const Guid CLSID_CODECAPI_AVEncVideoInverseTelecineEnable = .(0x2ea9098b, 0xe76d, 0x4ccd, 0xa0, 0x30, 0xd3, 0xb8, 0x89, 0xc1, 0xb6, 0x4c);
		public const Guid CLSID_CODECAPI_AVEncVideoInverseTelecineThreshold = .(0x40247d84, 0xe895, 0x497f, 0xb4, 0x4c, 0xb7, 0x45, 0x60, 0xac, 0xfe, 0x27);
		public const Guid CLSID_CODECAPI_AVEncVideoSourceFilmContent = .(0x1791c64b, 0xccfc, 0x4827, 0xa0, 0xed, 0x25, 0x57, 0x79, 0x3b, 0x2b, 0x1c);
		public const Guid CLSID_CODECAPI_AVEncVideoSourceIsBW = .(0x42ffc49b, 0x1812, 0x4fdc, 0x8d, 0x24, 0x70, 0x54, 0xc5, 0x21, 0xe6, 0xeb);
		public const Guid CLSID_CODECAPI_AVEncVideoFieldSwap = .(0xfefd7569, 0x4e0a, 0x49f2, 0x9f, 0x2b, 0x36, 0x0e, 0xa4, 0x8c, 0x19, 0xa2);
		public const Guid CLSID_CODECAPI_AVEncVideoInputChromaResolution = .(0xbb0cec33, 0x16f1, 0x47b0, 0x8a, 0x88, 0x37, 0x81, 0x5b, 0xee, 0x17, 0x39);
		public const Guid CLSID_CODECAPI_AVEncVideoOutputChromaResolution = .(0x6097b4c9, 0x7c1d, 0x4e64, 0xbf, 0xcc, 0x9e, 0x97, 0x65, 0x31, 0x8a, 0xe7);
		public const Guid CLSID_CODECAPI_AVEncVideoInputChromaSubsampling = .(0xa8e73a39, 0x4435, 0x4ec3, 0xa6, 0xea, 0x98, 0x30, 0x0f, 0x4b, 0x36, 0xf7);
		public const Guid CLSID_CODECAPI_AVEncVideoOutputChromaSubsampling = .(0xfa561c6c, 0x7d17, 0x44f0, 0x83, 0xc9, 0x32, 0xed, 0x12, 0xe9, 0x63, 0x43);
		public const Guid CLSID_CODECAPI_AVEncVideoInputColorPrimaries = .(0xc24d783f, 0x7ce6, 0x4278, 0x90, 0xab, 0x28, 0xa4, 0xf1, 0xe5, 0xf8, 0x6c);
		public const Guid CLSID_CODECAPI_AVEncVideoOutputColorPrimaries = .(0xbe95907c, 0x9d04, 0x4921, 0x89, 0x85, 0xa6, 0xd6, 0xd8, 0x7d, 0x1a, 0x6c);
		public const Guid CLSID_CODECAPI_AVEncVideoInputColorTransferFunction = .(0x8c056111, 0xa9c3, 0x4b08, 0xa0, 0xa0, 0xce, 0x13, 0xf8, 0xa2, 0x7c, 0x75);
		public const Guid CLSID_CODECAPI_AVEncVideoOutputColorTransferFunction = .(0x4a7f884a, 0xea11, 0x460d, 0xbf, 0x57, 0xb8, 0x8b, 0xc7, 0x59, 0x00, 0xde);
		public const Guid CLSID_CODECAPI_AVEncVideoInputColorTransferMatrix = .(0x52ed68b9, 0x72d5, 0x4089, 0x95, 0x8d, 0xf5, 0x40, 0x5d, 0x55, 0x08, 0x1c);
		public const Guid CLSID_CODECAPI_AVEncVideoOutputColorTransferMatrix = .(0xa9b90444, 0xaf40, 0x4310, 0x8f, 0xbe, 0xed, 0x6d, 0x93, 0x3f, 0x89, 0x2b);
		public const Guid CLSID_CODECAPI_AVEncVideoInputColorLighting = .(0x46a99549, 0x0015, 0x4a45, 0x9c, 0x30, 0x1d, 0x5c, 0xfa, 0x25, 0x83, 0x16);
		public const Guid CLSID_CODECAPI_AVEncVideoOutputColorLighting = .(0x0e5aaac6, 0xace6, 0x4c5c, 0x99, 0x8e, 0x1a, 0x8c, 0x9c, 0x6c, 0x0f, 0x89);
		public const Guid CLSID_CODECAPI_AVEncVideoInputColorNominalRange = .(0x16cf25c6, 0xa2a6, 0x48e9, 0xae, 0x80, 0x21, 0xae, 0xc4, 0x1d, 0x42, 0x7e);
		public const Guid CLSID_CODECAPI_AVEncVideoOutputColorNominalRange = .(0x972835ed, 0x87b5, 0x4e95, 0x95, 0x00, 0xc7, 0x39, 0x58, 0x56, 0x6e, 0x54);
		public const Guid CLSID_CODECAPI_AVEncInputVideoSystem = .(0xbede146d, 0xb616, 0x4dc7, 0x92, 0xb2, 0xf5, 0xd9, 0xfa, 0x92, 0x98, 0xf7);
		public const Guid CLSID_CODECAPI_AVEncVideoHeaderDropFrame = .(0x6ed9e124, 0x7925, 0x43fe, 0x97, 0x1b, 0xe0, 0x19, 0xf6, 0x22, 0x22, 0xb4);
		public const Guid CLSID_CODECAPI_AVEncVideoHeaderHours = .(0x2acc7702, 0xe2da, 0x4158, 0xbf, 0x9b, 0x88, 0x88, 0x01, 0x29, 0xd7, 0x40);
		public const Guid CLSID_CODECAPI_AVEncVideoHeaderMinutes = .(0xdc1a99ce, 0x0307, 0x408b, 0x88, 0x0b, 0xb8, 0x34, 0x8e, 0xe8, 0xca, 0x7f);
		public const Guid CLSID_CODECAPI_AVEncVideoHeaderSeconds = .(0x4a2e1a05, 0xa780, 0x4f58, 0x81, 0x20, 0x9a, 0x44, 0x9d, 0x69, 0x65, 0x6b);
		public const Guid CLSID_CODECAPI_AVEncVideoHeaderFrames = .(0xafd5f567, 0x5c1b, 0x4adc, 0xbd, 0xaf, 0x73, 0x56, 0x10, 0x38, 0x14, 0x36);
		public const Guid CLSID_CODECAPI_AVEncVideoDefaultUpperFieldDominant = .(0x810167c4, 0x0bc1, 0x47ca, 0x8f, 0xc2, 0x57, 0x05, 0x5a, 0x14, 0x74, 0xa5);
		public const Guid CLSID_CODECAPI_AVEncVideoCBRMotionTradeoff = .(0x0d49451e, 0x18d5, 0x4367, 0xa4, 0xef, 0x32, 0x40, 0xdf, 0x16, 0x93, 0xc4);
		public const Guid CLSID_CODECAPI_AVEncVideoCodedVideoAccessUnitSize = .(0xb4b10c15, 0x14a7, 0x4ce8, 0xb1, 0x73, 0xdc, 0x90, 0xa0, 0xb4, 0xfc, 0xdb);
		public const Guid CLSID_CODECAPI_AVEncVideoMaxKeyframeDistance = .(0x2987123a, 0xba93, 0x4704, 0xb4, 0x89, 0xec, 0x1e, 0x5f, 0x25, 0x29, 0x2c);
		public const Guid CLSID_CODECAPI_AVEncH264CABACEnable = .(0xee6cad62, 0xd305, 0x4248, 0xa5, 0x0e, 0xe1, 0xb2, 0x55, 0xf7, 0xca, 0xf8);
		public const Guid CLSID_CODECAPI_AVEncVideoContentType = .(0x66117aca, 0xeb77, 0x459d, 0x93, 0x0c, 0xa4, 0x8d, 0x9d, 0x06, 0x83, 0xfc);
		public const Guid CLSID_CODECAPI_AVEncNumWorkerThreads = .(0xb0c8bf60, 0x16f7, 0x4951, 0xa3, 0x0b, 0x1d, 0xb1, 0x60, 0x92, 0x93, 0xd6);
		public const Guid CLSID_CODECAPI_AVEncVideoEncodeQP = .(0x2cb5696b, 0x23fb, 0x4ce1, 0xa0, 0xf9, 0xef, 0x5b, 0x90, 0xfd, 0x55, 0xca);
		public const Guid CLSID_CODECAPI_AVEncVideoMinQP = .(0x0ee22c6a, 0xa37c, 0x4568, 0xb5, 0xf1, 0x9d, 0x4c, 0x2b, 0x3a, 0xb8, 0x86);
		public const Guid CLSID_CODECAPI_AVEncVideoForceKeyFrame = .(0x398c1b98, 0x8353, 0x475a, 0x9e, 0xf2, 0x8f, 0x26, 0x5d, 0x26, 0x03, 0x45);
		public const Guid CLSID_CODECAPI_AVEncH264SPSID = .(0x50f38f51, 0x2b79, 0x40e3, 0xb3, 0x9c, 0x7e, 0x9f, 0xa0, 0x77, 0x05, 0x01);
		public const Guid CLSID_CODECAPI_AVEncH264PPSID = .(0xbfe29ec2, 0x056c, 0x4d68, 0xa3, 0x8d, 0xae, 0x59, 0x44, 0xc8, 0x58, 0x2e);
		public const Guid CLSID_CODECAPI_AVEncAdaptiveMode = .(0x4419b185, 0xda1f, 0x4f53, 0xbc, 0x76, 0x09, 0x7d, 0x0c, 0x1e, 0xfb, 0x1e);
		public const Guid CLSID_CODECAPI_AVScenarioInfo = .(0xb28a6e64, 0x3ff9, 0x446a, 0x8a, 0x4b, 0x0d, 0x7a, 0x53, 0x41, 0x32, 0x36);
		public const Guid CLSID_CODECAPI_AVEncMPVGOPSizeMin = .(0x7155cf20, 0xd440, 0x4852, 0xad, 0x0f, 0x9c, 0x4a, 0xbf, 0xe3, 0x7a, 0x6a);
		public const Guid CLSID_CODECAPI_AVEncMPVGOPSizeMax = .(0xfe7de4c4, 0x1936, 0x4fe2, 0xbd, 0xf7, 0x1f, 0x18, 0xca, 0x1d, 0x00, 0x1f);
		public const Guid CLSID_CODECAPI_AVEncVideoMaxCTBSize = .(0x822363ff, 0xcec8, 0x43e5, 0x92, 0xfd, 0xe0, 0x97, 0x48, 0x84, 0x85, 0xe9);
		public const Guid CLSID_CODECAPI_AVEncVideoCTBSize = .(0xd47db8b2, 0xe73b, 0x4cb9, 0x8c, 0x3e, 0xbd, 0x87, 0x7d, 0x06, 0xd7, 0x7b);
		public const Guid CLSID_CODECAPI_VideoEncoderDisplayContentType = .(0x79b90b27, 0xf4b1, 0x42dc, 0x9d, 0xd7, 0xcd, 0xaf, 0x81, 0x35, 0xc4, 0x00);
		public const Guid CLSID_CODECAPI_AVEncEnableVideoProcessing = .(0x006f4bf6, 0x0ea3, 0x4d42, 0x87, 0x02, 0xb5, 0xd8, 0xbe, 0x0f, 0x7a, 0x92);
		public const Guid CLSID_CODECAPI_AVEncVideoGradualIntraRefresh = .(0x8f347dee, 0xcb0d, 0x49ba, 0xb4, 0x62, 0xdb, 0x69, 0x27, 0xee, 0x21, 0x01);
		public const Guid CLSID_CODECAPI_GetOPMContext = .(0x2f036c05, 0x4c14, 0x4689, 0x88, 0x39, 0x29, 0x4c, 0x6d, 0x73, 0xe0, 0x53);
		public const Guid CLSID_CODECAPI_SetHDCPManagerContext = .(0x6d2d1fc8, 0x3dc9, 0x47eb, 0xa1, 0xa2, 0x47, 0x1c, 0x80, 0xcd, 0x60, 0xd0);
		public const Guid CLSID_CODECAPI_AVEncVideoMaxTemporalLayers = .(0x9c668cfe, 0x08e1, 0x424a, 0x93, 0x4e, 0xb7, 0x64, 0xb0, 0x64, 0x80, 0x2a);
		public const Guid CLSID_CODECAPI_AVEncVideoNumGOPsPerIDR = .(0x83bc5bdb, 0x5b89, 0x4521, 0x8f, 0x66, 0x33, 0x15, 0x1c, 0x37, 0x31, 0x76);
		public const Guid CLSID_CODECAPI_AVEncCommonAllowFrameDrops = .(0xd8477dcb, 0x9598, 0x48e3, 0x8d, 0x0c, 0x75, 0x2b, 0xf2, 0x06, 0x09, 0x3e);
		public const Guid CLSID_CODECAPI_AVEncVideoIntraLayerPrediction = .(0xd3af46b8, 0xbf47, 0x44bb, 0xa2, 0x83, 0x69, 0xf0, 0xb0, 0x22, 0x8f, 0xf9);
		public const Guid CLSID_CODECAPI_AVEncVideoInstantTemporalUpSwitching = .(0xa3308307, 0x0d96, 0x4ba4, 0xb1, 0xf0, 0xb9, 0x1a, 0x5e, 0x49, 0xdf, 0x10);
		public const Guid CLSID_CODECAPI_AVEncLowPowerEncoder = .(0xb668d582, 0x8bad, 0x4f6a, 0x91, 0x41, 0x37, 0x5a, 0x95, 0x35, 0x8b, 0x6d);
		public const Guid CLSID_CODECAPI_AVEnableInLoopDeblockFilter = .(0xd2e8e399, 0x0623, 0x4bf3, 0x92, 0xa8, 0x4d, 0x18, 0x18, 0x52, 0x9d, 0xed);
		public const Guid CLSID_CODECAPI_AVEncVideoSelectLayer = .(0xeb1084f5, 0x6aaa, 0x4914, 0xbb, 0x2f, 0x61, 0x47, 0x22, 0x7f, 0x12, 0xe7);
		public const Guid CLSID_CODECAPI_AVEncVideoTemporalLayerCount = .(0x19caebff, 0xb74d, 0x4cfd, 0x8c, 0x27, 0xc2, 0xf9, 0xd9, 0x7d, 0x5f, 0x52);
		public const Guid CLSID_CODECAPI_AVEncVideoUsage = .(0x1f636849, 0x5dc1, 0x49f1, 0xb1, 0xd8, 0xce, 0x3c, 0xf6, 0x2e, 0xa3, 0x85);
		public const Guid CLSID_CODECAPI_AVEncVideoRateControlParams = .(0x87d43767, 0x7645, 0x44ec, 0xb4, 0x38, 0xd3, 0x32, 0x2f, 0xbc, 0xa2, 0x9f);
		public const Guid CLSID_CODECAPI_AVEncVideoSupportedControls = .(0xd3f40fdd, 0x77b9, 0x473d, 0x81, 0x96, 0x06, 0x12, 0x59, 0xe6, 0x9c, 0xff);
		public const Guid CLSID_CODECAPI_AVEncVideoEncodeFrameTypeQP = .(0xaa70b610, 0xe03f, 0x450c, 0xad, 0x07, 0x07, 0x31, 0x4e, 0x63, 0x9c, 0xe7);
		public const Guid CLSID_CODECAPI_AVEncSliceControlMode = .(0xe9e782ef, 0x5f18, 0x44c9, 0xa9, 0x0b, 0xe9, 0xc3, 0xc2, 0xc1, 0x7b, 0x0b);
		public const Guid CLSID_CODECAPI_AVEncSliceControlSize = .(0x92f51df3, 0x07a5, 0x4172, 0xae, 0xfe, 0xc6, 0x9c, 0xa3, 0xb6, 0x0e, 0x35);
		public const Guid CLSID_CODECAPI_AVEncSliceGenerationMode = .(0x8a6bc67f, 0x9497, 0x4286, 0xb4, 0x6b, 0x02, 0xdb, 0x8d, 0x60, 0xed, 0xbc);
		public const Guid CLSID_CODECAPI_AVEncVideoMaxNumRefFrame = .(0x964829ed, 0x94f9, 0x43b4, 0xb7, 0x4d, 0xef, 0x40, 0x94, 0x4b, 0x69, 0xa0);
		public const Guid CLSID_CODECAPI_AVEncVideoMeanAbsoluteDifference = .(0xe5c0c10f, 0x81a4, 0x422d, 0x8c, 0x3f, 0xb4, 0x74, 0xa4, 0x58, 0x13, 0x36);
		public const Guid CLSID_CODECAPI_AVEncVideoMaxQP = .(0x3daf6f66, 0xa6a7, 0x45e0, 0xa8, 0xe5, 0xf2, 0x74, 0x3f, 0x46, 0xa3, 0xa2);
		public const Guid CLSID_CODECAPI_AVEncVideoLTRBufferControl = .(0xa4a0e93d, 0x4cbc, 0x444c, 0x89, 0xf4, 0x82, 0x6d, 0x31, 0x0e, 0x92, 0xa7);
		public const Guid CLSID_CODECAPI_AVEncVideoMarkLTRFrame = .(0xe42f4748, 0xa06d, 0x4ef9, 0x8c, 0xea, 0x3d, 0x05, 0xfd, 0xe3, 0xbd, 0x3b);
		public const Guid CLSID_CODECAPI_AVEncVideoUseLTRFrame = .(0x00752db8, 0x55f7, 0x4f80, 0x89, 0x5b, 0x27, 0x63, 0x91, 0x95, 0xf2, 0xad);
		public const Guid CLSID_CODECAPI_AVEncVideoROIEnabled = .(0xd74f7f18, 0x44dd, 0x4b85, 0xab, 0xa3, 0x05, 0xd9, 0xf4, 0x2a, 0x82, 0x80);
		public const Guid CLSID_CODECAPI_AVEncVideoDirtyRectEnabled = .(0x8acb8fdd, 0x5e0c, 0x4c66, 0x87, 0x29, 0xb8, 0xf6, 0x29, 0xab, 0x04, 0xfb);
		public const Guid CLSID_CODECAPI_AVEncMaxFrameRate = .(0xb98e1b31, 0x19fa, 0x4d4f, 0x99, 0x31, 0xd6, 0xa5, 0xb8, 0xaa, 0xb9, 0x3c);
		public const Guid CLSID_CODECAPI_AVEncMuxOutputStreamType = .(0xcedd9e8f, 0x34d3, 0x44db, 0xa1, 0xd8, 0xf8, 0x15, 0x20, 0x25, 0x4f, 0x3e);
		public const Guid CLSID_CODECAPI_AVEncStatVideoOutputFrameRate = .(0xbe747849, 0x9ab4, 0x4a63, 0x98, 0xfe, 0xf1, 0x43, 0xf0, 0x4f, 0x8e, 0xe9);
		public const Guid CLSID_CODECAPI_AVEncStatVideoCodedFrames = .(0xd47f8d61, 0x6f5a, 0x4a26, 0xbb, 0x9f, 0xcd, 0x95, 0x18, 0x46, 0x2b, 0xcd);
		public const Guid CLSID_CODECAPI_AVEncStatVideoTotalFrames = .(0xfdaa9916, 0x119a, 0x4222, 0x9a, 0xd6, 0x3f, 0x7c, 0xab, 0x99, 0xcc, 0x8b);
		public const Guid CLSID_CODECAPI_AVEncAudioIntervalToEncode = .(0x866e4b4d, 0x725a, 0x467c, 0xbb, 0x01, 0xb4, 0x96, 0xb2, 0x3b, 0x25, 0xf9);
		public const Guid CLSID_CODECAPI_AVEncAudioIntervalToSkip = .(0x88c15f94, 0xc38c, 0x4796, 0xa9, 0xe8, 0x96, 0xe9, 0x67, 0x98, 0x3f, 0x26);
		public const Guid CLSID_CODECAPI_AVEncAudioDualMono = .(0x3648126b, 0xa3e8, 0x4329, 0x9b, 0x3a, 0x5c, 0xe5, 0x66, 0xa4, 0x3b, 0xd3);
		public const Guid CLSID_CODECAPI_AVEncAudioMeanBitRate = .(0x921295bb, 0x4fca, 0x4679, 0xaa, 0xb8, 0x9e, 0x2a, 0x1d, 0x75, 0x33, 0x84);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel0 = .(0xbc5d0b60, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel1 = .(0xbc5d0b61, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel2 = .(0xbc5d0b62, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel3 = .(0xbc5d0b63, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel4 = .(0xbc5d0b64, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel5 = .(0xbc5d0b65, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel6 = .(0xbc5d0b66, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel7 = .(0xbc5d0b67, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel8 = .(0xbc5d0b68, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel9 = .(0xbc5d0b69, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel10 = .(0xbc5d0b6a, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel11 = .(0xbc5d0b6b, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel12 = .(0xbc5d0b6c, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel13 = .(0xbc5d0b6d, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel14 = .(0xbc5d0b6e, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioMapDestChannel15 = .(0xbc5d0b6f, 0xdf6a, 0x4e16, 0x98, 0x03, 0xb8, 0x20, 0x07, 0xa3, 0x0c, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncAudioInputContent = .(0x3e226c2b, 0x60b9, 0x4a39, 0xb0, 0x0b, 0xa7, 0xb4, 0x0f, 0x70, 0xd5, 0x66);
		public const Guid CLSID_CODECAPI_AVEncStatAudioPeakPCMValue = .(0xdce7fd34, 0xdc00, 0x4c16, 0x82, 0x1b, 0x35, 0xd9, 0xeb, 0x00, 0xfb, 0x1a);
		public const Guid CLSID_CODECAPI_AVEncStatAudioAveragePCMValue = .(0x979272f8, 0xd17f, 0x4e32, 0xbb, 0x73, 0x4e, 0x73, 0x1c, 0x68, 0xba, 0x2d);
		public const Guid CLSID_CODECAPI_AVEncStatAudioAverageBPS = .(0xca6724db, 0x7059, 0x4351, 0x8b, 0x43, 0xf8, 0x21, 0x98, 0x82, 0x6a, 0x14);
		public const Guid CLSID_CODECAPI_AVEncStatAverageBPS = .(0xca6724db, 0x7059, 0x4351, 0x8b, 0x43, 0xf8, 0x21, 0x98, 0x82, 0x6a, 0x14);
		public const Guid CLSID_CODECAPI_AVEncStatHardwareProcessorUtilitization = .(0x995dc027, 0xcb95, 0x49e6, 0xb9, 0x1b, 0x59, 0x67, 0x75, 0x3c, 0xdc, 0xb8);
		public const Guid CLSID_CODECAPI_AVEncStatHardwareBandwidthUtilitization = .(0x0124ba9b, 0xdc41, 0x4826, 0xb4, 0x5f, 0x18, 0xac, 0x01, 0xb3, 0xd5, 0xa8);
		public const Guid CLSID_CODECAPI_AVEncMPVGOPSize = .(0x95f31b26, 0x95a4, 0x41aa, 0x93, 0x03, 0x24, 0x6a, 0x7f, 0xc6, 0xee, 0xf1);
		public const Guid CLSID_CODECAPI_AVEncMPVGOPOpen = .(0xb1d5d4a6, 0x3300, 0x49b1, 0xae, 0x61, 0xa0, 0x99, 0x37, 0xab, 0x0e, 0x49);
		public const Guid CLSID_CODECAPI_AVEncMPVDefaultBPictureCount = .(0x8d390aac, 0xdc5c, 0x4200, 0xb5, 0x7f, 0x81, 0x4d, 0x04, 0xba, 0xba, 0xb2);
		public const Guid CLSID_CODECAPI_AVEncMPVProfile = .(0xdabb534a, 0x1d99, 0x4284, 0x97, 0x5a, 0xd9, 0x0e, 0x22, 0x39, 0xba, 0xa1);
		public const Guid CLSID_CODECAPI_AVEncMPVLevel = .(0x6ee40c40, 0xa60c, 0x41ef, 0x8f, 0x50, 0x37, 0xc2, 0x24, 0x9e, 0x2c, 0xb3);
		public const Guid CLSID_CODECAPI_AVEncMPVFrameFieldMode = .(0xacb5de96, 0x7b93, 0x4c2f, 0x88, 0x25, 0xb0, 0x29, 0x5f, 0xa9, 0x3b, 0xf4);
		public const Guid CLSID_CODECAPI_AVEncMPVAddSeqEndCode = .(0xa823178f, 0x57df, 0x4c7a, 0xb8, 0xfd, 0xe5, 0xec, 0x88, 0x87, 0x70, 0x8d);
		public const Guid CLSID_CODECAPI_AVEncMPVGOPSInSeq = .(0x993410d4, 0x2691, 0x4192, 0x99, 0x78, 0x98, 0xdc, 0x26, 0x03, 0x66, 0x9f);
		public const Guid CLSID_CODECAPI_AVEncMPVUseConcealmentMotionVectors = .(0xec770cf3, 0x6908, 0x4b4b, 0xaa, 0x30, 0x7f, 0xb9, 0x86, 0x21, 0x4f, 0xea);
		public const Guid CLSID_CODECAPI_AVEncMPVSceneDetection = .(0x552799f1, 0xdb4c, 0x405b, 0x8a, 0x3a, 0xc9, 0x3f, 0x2d, 0x06, 0x74, 0xdc);
		public const Guid CLSID_CODECAPI_AVEncMPVGenerateHeaderSeqExt = .(0xd5e78611, 0x082d, 0x4e6b, 0x98, 0xaf, 0x0f, 0x51, 0xab, 0x13, 0x92, 0x22);
		public const Guid CLSID_CODECAPI_AVEncMPVGenerateHeaderSeqDispExt = .(0x6437aa6f, 0x5a3c, 0x4de9, 0x8a, 0x16, 0x53, 0xd9, 0xc4, 0xad, 0x32, 0x6f);
		public const Guid CLSID_CODECAPI_AVEncMPVGenerateHeaderPicExt = .(0x1b8464ab, 0x944f, 0x45f0, 0xb7, 0x4e, 0x3a, 0x58, 0xda, 0xd1, 0x1f, 0x37);
		public const Guid CLSID_CODECAPI_AVEncMPVGenerateHeaderPicDispExt = .(0xc6412f84, 0xc03f, 0x4f40, 0xa0, 0x0c, 0x42, 0x93, 0xdf, 0x83, 0x95, 0xbb);
		public const Guid CLSID_CODECAPI_AVEncMPVGenerateHeaderSeqScaleExt = .(0x0722d62f, 0xdd59, 0x4a86, 0x9c, 0xd5, 0x64, 0x4f, 0x8e, 0x26, 0x53, 0xd8);
		public const Guid CLSID_CODECAPI_AVEncMPVScanPattern = .(0x7f8a478e, 0x7bbb, 0x4ae2, 0xb2, 0xfc, 0x96, 0xd1, 0x7f, 0xc4, 0xa2, 0xd6);
		public const Guid CLSID_CODECAPI_AVEncMPVIntraDCPrecision = .(0xa0116151, 0xcbc8, 0x4af3, 0x97, 0xdc, 0xd0, 0x0c, 0xce, 0xb8, 0x2d, 0x79);
		public const Guid CLSID_CODECAPI_AVEncMPVQScaleType = .(0x2b79ebb7, 0xf484, 0x4af7, 0xbb, 0x58, 0xa2, 0xa1, 0x88, 0xc5, 0xcb, 0xbe);
		public const Guid CLSID_CODECAPI_AVEncMPVIntraVLCTable = .(0xa2b83ff5, 0x1a99, 0x405a, 0xaf, 0x95, 0xc5, 0x99, 0x7d, 0x55, 0x8d, 0x3a);
		public const Guid CLSID_CODECAPI_AVEncMPVQuantMatrixIntra = .(0x9bea04f3, 0x6621, 0x442c, 0x8b, 0xa1, 0x3a, 0xc3, 0x78, 0x97, 0x96, 0x98);
		public const Guid CLSID_CODECAPI_AVEncMPVQuantMatrixNonIntra = .(0x87f441d8, 0x0997, 0x4beb, 0xa0, 0x8e, 0x85, 0x73, 0xd4, 0x09, 0xcf, 0x75);
		public const Guid CLSID_CODECAPI_AVEncMPVQuantMatrixChromaIntra = .(0x9eb9ecd4, 0x018d, 0x4ffd, 0x8f, 0x2d, 0x39, 0xe4, 0x9f, 0x07, 0xb1, 0x7a);
		public const Guid CLSID_CODECAPI_AVEncMPVQuantMatrixChromaNonIntra = .(0x1415b6b1, 0x362a, 0x4338, 0xba, 0x9a, 0x1e, 0xf5, 0x87, 0x03, 0xc0, 0x5b);
		public const Guid CLSID_CODECAPI_AVEncMPALayer = .(0x9d377230, 0xf91b, 0x453d, 0x9c, 0xe0, 0x78, 0x44, 0x54, 0x14, 0xc2, 0x2d);
		public const Guid CLSID_CODECAPI_AVEncMPACodingMode = .(0xb16ade03, 0x4b93, 0x43d7, 0xa5, 0x50, 0x90, 0xb4, 0xfe, 0x22, 0x45, 0x37);
		public const Guid CLSID_CODECAPI_AVEncMPACopyright = .(0xa6ae762a, 0xd0a9, 0x4454, 0xb8, 0xef, 0xf2, 0xdb, 0xee, 0xfd, 0xd3, 0xbd);
		public const Guid CLSID_CODECAPI_AVEncMPAOriginalBitstream = .(0x3cfb7855, 0x9cc9, 0x47ff, 0xb8, 0x29, 0xb3, 0x67, 0x86, 0xc9, 0x23, 0x46);
		public const Guid CLSID_CODECAPI_AVEncMPAEnableRedundancyProtection = .(0x5e54b09e, 0xb2e7, 0x4973, 0xa8, 0x9b, 0x0b, 0x36, 0x50, 0xa3, 0xbe, 0xda);
		public const Guid CLSID_CODECAPI_AVEncMPAPrivateUserBit = .(0xafa505ce, 0xc1e3, 0x4e3d, 0x85, 0x1b, 0x61, 0xb7, 0x00, 0xe5, 0xe6, 0xcc);
		public const Guid CLSID_CODECAPI_AVEncMPAEmphasisType = .(0x2d59fcda, 0xbf4e, 0x4ed6, 0xb5, 0xdf, 0x5b, 0x03, 0xb3, 0x6b, 0x0a, 0x1f);
		public const Guid CLSID_CODECAPI_AVEncDDService = .(0xd2e1bec7, 0x5172, 0x4d2a, 0xa5, 0x0e, 0x2f, 0x3b, 0x82, 0xb1, 0xdd, 0xf8);
		public const Guid CLSID_CODECAPI_AVEncDDDialogNormalization = .(0xd7055acf, 0xf125, 0x437d, 0xa7, 0x04, 0x79, 0xc7, 0x9f, 0x04, 0x04, 0xa8);
		public const Guid CLSID_CODECAPI_AVEncDDCentreDownMixLevel = .(0xe285072c, 0xc958, 0x4a81, 0xaf, 0xd2, 0xe5, 0xe0, 0xda, 0xf1, 0xb1, 0x48);
		public const Guid CLSID_CODECAPI_AVEncDDSurroundDownMixLevel = .(0x7b20d6e5, 0x0bcf, 0x4273, 0xa4, 0x87, 0x50, 0x6b, 0x04, 0x79, 0x97, 0xe9);
		public const Guid CLSID_CODECAPI_AVEncDDProductionInfoExists = .(0xb0b7fe5f, 0xb6ab, 0x4f40, 0x96, 0x4d, 0x8d, 0x91, 0xf1, 0x7c, 0x19, 0xe8);
		public const Guid CLSID_CODECAPI_AVEncDDProductionRoomType = .(0xdad7ad60, 0x23d8, 0x4ab7, 0xa2, 0x84, 0x55, 0x69, 0x86, 0xd8, 0xa6, 0xfe);
		public const Guid CLSID_CODECAPI_AVEncDDProductionMixLevel = .(0x301d103a, 0xcbf9, 0x4776, 0x88, 0x99, 0x7c, 0x15, 0xb4, 0x61, 0xab, 0x26);
		public const Guid CLSID_CODECAPI_AVEncDDCopyright = .(0x8694f076, 0xcd75, 0x481d, 0xa5, 0xc6, 0xa9, 0x04, 0xdc, 0xc8, 0x28, 0xf0);
		public const Guid CLSID_CODECAPI_AVEncDDOriginalBitstream = .(0x966ae800, 0x5bd3, 0x4ff9, 0x95, 0xb9, 0xd3, 0x05, 0x66, 0x27, 0x38, 0x56);
		public const Guid CLSID_CODECAPI_AVEncDDDigitalDeemphasis = .(0xe024a2c2, 0x947c, 0x45ac, 0x87, 0xd8, 0xf1, 0x03, 0x0c, 0x5c, 0x00, 0x82);
		public const Guid CLSID_CODECAPI_AVEncDDDCHighPassFilter = .(0x9565239f, 0x861c, 0x4ac8, 0xbf, 0xda, 0xe0, 0x0c, 0xb4, 0xdb, 0x85, 0x48);
		public const Guid CLSID_CODECAPI_AVEncDDChannelBWLowPassFilter = .(0xe197821d, 0xd2e7, 0x43e2, 0xad, 0x2c, 0x00, 0x58, 0x2f, 0x51, 0x85, 0x45);
		public const Guid CLSID_CODECAPI_AVEncDDLFELowPassFilter = .(0xd3b80f6f, 0x9d15, 0x45e5, 0x91, 0xbe, 0x01, 0x9c, 0x3f, 0xab, 0x1f, 0x01);
		public const Guid CLSID_CODECAPI_AVEncDDSurround90DegreeePhaseShift = .(0x25ecec9d, 0x3553, 0x42c0, 0xbb, 0x56, 0xd2, 0x57, 0x92, 0x10, 0x4f, 0x80);
		public const Guid CLSID_CODECAPI_AVEncDDSurround3dBAttenuation = .(0x4d43b99d, 0x31e2, 0x48b9, 0xbf, 0x2e, 0x5c, 0xbf, 0x1a, 0x57, 0x27, 0x84);
		public const Guid CLSID_CODECAPI_AVEncDDDynamicRangeCompressionControl = .(0xcfc2ff6d, 0x79b8, 0x4b8d, 0xa8, 0xaa, 0xa0, 0xc9, 0xbd, 0x1c, 0x29, 0x40);
		public const Guid CLSID_CODECAPI_AVEncDDRFPreEmphasisFilter = .(0x21af44c0, 0x244e, 0x4f3d, 0xa2, 0xcc, 0x3d, 0x30, 0x68, 0xb2, 0xe7, 0x3f);
		public const Guid CLSID_CODECAPI_AVEncDDSurroundExMode = .(0x91607cee, 0xdbdd, 0x4eb6, 0xbc, 0xa2, 0xaa, 0xdf, 0xaf, 0xa3, 0xdd, 0x68);
		public const Guid CLSID_CODECAPI_AVEncDDPreferredStereoDownMixMode = .(0x7f4e6b31, 0x9185, 0x403d, 0xb0, 0xa2, 0x76, 0x37, 0x43, 0xe6, 0xf0, 0x63);
		public const Guid CLSID_CODECAPI_AVEncDDLtRtCenterMixLvl_x10 = .(0xdca128a2, 0x491f, 0x4600, 0xb2, 0xda, 0x76, 0xe3, 0x34, 0x4b, 0x41, 0x97);
		public const Guid CLSID_CODECAPI_AVEncDDLtRtSurroundMixLvl_x10 = .(0x212246c7, 0x3d2c, 0x4dfa, 0xbc, 0x21, 0x65, 0x2a, 0x90, 0x98, 0x69, 0x0d);
		public const Guid CLSID_CODECAPI_AVEncDDLoRoCenterMixLvl_x10 = .(0x1cfba222, 0x25b3, 0x4bf4, 0x9b, 0xfd, 0xe7, 0x11, 0x12, 0x67, 0x85, 0x8c);
		public const Guid CLSID_CODECAPI_AVEncDDLoRoSurroundMixLvl_x10 = .(0xe725cff6, 0xeb56, 0x40c7, 0x84, 0x50, 0x2b, 0x93, 0x67, 0xe9, 0x15, 0x55);
		public const Guid CLSID_CODECAPI_AVEncDDAtoDConverterType = .(0x719f9612, 0x81a1, 0x47e0, 0x9a, 0x05, 0xd9, 0x4a, 0xd5, 0xfc, 0xa9, 0x48);
		public const Guid CLSID_CODECAPI_AVEncDDHeadphoneMode = .(0x4052dbec, 0x52f5, 0x42f5, 0x9b, 0x00, 0xd1, 0x34, 0xb1, 0x34, 0x1b, 0x9d);
		public const Guid CLSID_CODECAPI_AVEncWMVKeyFrameDistance = .(0x5569055e, 0xe268, 0x4771, 0xb8, 0x3e, 0x95, 0x55, 0xea, 0x28, 0xae, 0xd3);
		public const Guid CLSID_CODECAPI_AVEncWMVInterlacedEncoding = .(0xe3d00f8a, 0xc6f5, 0x4e14, 0xa5, 0x88, 0x0e, 0xc8, 0x7a, 0x72, 0x6f, 0x9b);
		public const Guid CLSID_CODECAPI_AVEncWMVDecoderComplexity = .(0xf32c0dab, 0xf3cb, 0x4217, 0xb7, 0x9f, 0x87, 0x62, 0x76, 0x8b, 0x5f, 0x67);
		public const Guid CLSID_CODECAPI_AVEncWMVKeyFrameBufferLevelMarker = .(0x51ff1115, 0x33ac, 0x426c, 0xa1, 0xb1, 0x09, 0x32, 0x1b, 0xdf, 0x96, 0xb4);
		public const Guid CLSID_CODECAPI_AVEncWMVProduceDummyFrames = .(0xd669d001, 0x183c, 0x42e3, 0xa3, 0xca, 0x2f, 0x45, 0x86, 0xd2, 0x39, 0x6c);
		public const Guid CLSID_CODECAPI_AVEncStatWMVCBAvg = .(0x6aa6229f, 0xd602, 0x4b9d, 0xb6, 0x8c, 0xc1, 0xad, 0x78, 0x88, 0x4b, 0xef);
		public const Guid CLSID_CODECAPI_AVEncStatWMVCBMax = .(0xe976bef8, 0x00fe, 0x44b4, 0xb6, 0x25, 0x8f, 0x23, 0x8b, 0xc0, 0x34, 0x99);
		public const Guid CLSID_CODECAPI_AVEncStatWMVDecoderComplexityProfile = .(0x89e69fc3, 0x0f9b, 0x436c, 0x97, 0x4a, 0xdf, 0x82, 0x12, 0x27, 0xc9, 0x0d);
		public const Guid CLSID_CODECAPI_AVEncStatMPVSkippedEmptyFrames = .(0x32195fd3, 0x590d, 0x4812, 0xa7, 0xed, 0x6d, 0x63, 0x9a, 0x1f, 0x97, 0x11);
		public const Guid CLSID_CODECAPI_AVEncMP12PktzSTDBuffer = .(0x0b751bd0, 0x819e, 0x478c, 0x94, 0x35, 0x75, 0x20, 0x89, 0x26, 0xb3, 0x77);
		public const Guid CLSID_CODECAPI_AVEncMP12PktzStreamID = .(0xc834d038, 0xf5e8, 0x4408, 0x9b, 0x60, 0x88, 0xf3, 0x64, 0x93, 0xfe, 0xdf);
		public const Guid CLSID_CODECAPI_AVEncMP12PktzInitialPTS = .(0x2a4f2065, 0x9a63, 0x4d20, 0xae, 0x22, 0x0a, 0x1b, 0xc8, 0x96, 0xa3, 0x15);
		public const Guid CLSID_CODECAPI_AVEncMP12PktzPacketSize = .(0xab71347a, 0x1332, 0x4dde, 0xa0, 0xe5, 0xcc, 0xf7, 0xda, 0x8a, 0x0f, 0x22);
		public const Guid CLSID_CODECAPI_AVEncMP12PktzCopyright = .(0xc8f4b0c1, 0x094c, 0x43c7, 0x8e, 0x68, 0xa5, 0x95, 0x40, 0x5a, 0x6e, 0xf8);
		public const Guid CLSID_CODECAPI_AVEncMP12PktzOriginal = .(0x6b178416, 0x31b9, 0x4964, 0x94, 0xcb, 0x6b, 0xff, 0x86, 0x6c, 0xdf, 0x83);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxPacketOverhead = .(0xe40bd720, 0x3955, 0x4453, 0xac, 0xf9, 0xb7, 0x91, 0x32, 0xa3, 0x8f, 0xa0);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxNumStreams = .(0xf7164a41, 0xdced, 0x4659, 0xa8, 0xf2, 0xfb, 0x69, 0x3f, 0x2a, 0x4c, 0xd0);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxEarliestPTS = .(0x157232b6, 0xf809, 0x474e, 0x94, 0x64, 0xa7, 0xf9, 0x30, 0x14, 0xa8, 0x17);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxLargestPacketSize = .(0x35ceb711, 0xf461, 0x4b92, 0xa4, 0xef, 0x17, 0xb6, 0x84, 0x1e, 0xd2, 0x54);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxInitialSCR = .(0x3433ad21, 0x1b91, 0x4a0b, 0xb1, 0x90, 0x2b, 0x77, 0x06, 0x3b, 0x63, 0xa4);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxMuxRate = .(0xee047c72, 0x4bdb, 0x4a9d, 0x8e, 0x21, 0x41, 0x92, 0x6c, 0x82, 0x3d, 0xa7);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxPackSize = .(0xf916053a, 0x1ce8, 0x4faf, 0xaa, 0x0b, 0xba, 0x31, 0xc8, 0x00, 0x34, 0xb8);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxSysSTDBufferBound = .(0x35746903, 0xb545, 0x43e7, 0xbb, 0x35, 0xc5, 0xe0, 0xa7, 0xd5, 0x09, 0x3c);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxSysRateBound = .(0x05f0428a, 0xee30, 0x489d, 0xae, 0x28, 0x20, 0x5c, 0x72, 0x44, 0x67, 0x10);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxTargetPacketizer = .(0xd862212a, 0x2015, 0x45dd, 0x9a, 0x32, 0x1b, 0x3a, 0xa8, 0x82, 0x05, 0xa0);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxSysFixed = .(0xcefb987e, 0x894f, 0x452e, 0x8f, 0x89, 0xa4, 0xef, 0x8c, 0xec, 0x06, 0x3a);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxSysCSPS = .(0x7952ff45, 0x9c0d, 0x4822, 0xbc, 0x82, 0x8a, 0xd7, 0x72, 0xe0, 0x29, 0x93);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxSysVideoLock = .(0xb8296408, 0x2430, 0x4d37, 0xa2, 0xa1, 0x95, 0xb3, 0xe4, 0x35, 0xa9, 0x1d);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxSysAudioLock = .(0x0fbb5752, 0x1d43, 0x47bf, 0xbd, 0x79, 0xf2, 0x29, 0x3d, 0x8c, 0xe3, 0x37);
		public const Guid CLSID_CODECAPI_AVEncMP12MuxDVDNavPacks = .(0xc7607ced, 0x8cf1, 0x4a99, 0x83, 0xa1, 0xee, 0x54, 0x61, 0xbe, 0x35, 0x74);
		public const Guid CLSID_CODECAPI_AVDecCommonInputFormat = .(0xe5005239, 0xbd89, 0x4be3, 0x9c, 0x0f, 0x5d, 0xde, 0x31, 0x79, 0x88, 0xcc);
		public const Guid CLSID_CODECAPI_AVDecCommonOutputFormat = .(0x3c790028, 0xc0ce, 0x4256, 0xb1, 0xa2, 0x1b, 0x0f, 0xc8, 0xb1, 0xdc, 0xdc);
		public const Guid CLSID_CODECAPI_AVDecCommonMeanBitRate = .(0x59488217, 0x007a, 0x4f7a, 0x8e, 0x41, 0x5c, 0x48, 0xb1, 0xea, 0xc5, 0xc6);
		public const Guid CLSID_CODECAPI_AVDecCommonMeanBitRateInterval = .(0x0ee437c6, 0x38a7, 0x4c5c, 0x94, 0x4c, 0x68, 0xab, 0x42, 0x11, 0x6b, 0x85);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioOutputFormat_PCM_Stereo_MatrixEncoded = .(0x696e1d30, 0x548f, 0x4036, 0x82, 0x5f, 0x70, 0x26, 0xc6, 0x00, 0x11, 0xbd);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioOutputFormat_PCM = .(0x696e1d31, 0x548f, 0x4036, 0x82, 0x5f, 0x70, 0x26, 0xc6, 0x00, 0x11, 0xbd);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioOutputFormat_SPDIF_PCM = .(0x696e1d32, 0x548f, 0x4036, 0x82, 0x5f, 0x70, 0x26, 0xc6, 0x00, 0x11, 0xbd);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioOutputFormat_SPDIF_Bitstream = .(0x696e1d33, 0x548f, 0x4036, 0x82, 0x5f, 0x70, 0x26, 0xc6, 0x00, 0x11, 0xbd);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioOutputFormat_PCM_Headphones = .(0x696e1d34, 0x548f, 0x4036, 0x82, 0x5f, 0x70, 0x26, 0xc6, 0x00, 0x11, 0xbd);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioOutputFormat_PCM_Stereo_Auto = .(0x696e1d35, 0x548f, 0x4036, 0x82, 0x5f, 0x70, 0x26, 0xc6, 0x00, 0x11, 0xbd);
		public const Guid CLSID_CODECAPI_AVDecVideoImageSize = .(0x5ee5747c, 0x6801, 0x4cab, 0xaa, 0xf1, 0x62, 0x48, 0xfa, 0x84, 0x1b, 0xa4);
		public const Guid CLSID_CODECAPI_AVDecVideoPixelAspectRatio = .(0xb0cf8245, 0xf32d, 0x41df, 0xb0, 0x2c, 0x87, 0xbd, 0x30, 0x4d, 0x12, 0xab);
		public const Guid CLSID_CODECAPI_AVDecVideoInputScanType = .(0x38477e1f, 0x0ea7, 0x42cd, 0x8c, 0xd1, 0x13, 0x0c, 0xed, 0x57, 0xc5, 0x80);
		public const Guid CLSID_CODECAPI_AVDecVideoSWPowerLevel = .(0xfb5d2347, 0x4dd8, 0x4509, 0xae, 0xd0, 0xdb, 0x5f, 0xa9, 0xaa, 0x93, 0xf4);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioInputWMA = .(0xc95e8dcf, 0x4058, 0x4204, 0x8c, 0x42, 0xcb, 0x24, 0xd9, 0x1e, 0x4b, 0x9b);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioInputWMAPro = .(0x0128b7c7, 0xda72, 0x4fe3, 0xbe, 0xf8, 0x5c, 0x52, 0xe3, 0x55, 0x77, 0x04);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioInputDolby = .(0x8e4228a0, 0xf000, 0x4e0b, 0x8f, 0x54, 0xab, 0x8d, 0x24, 0xad, 0x61, 0xa2);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioInputDTS = .(0x600bc0ca, 0x6a1f, 0x4e91, 0xb2, 0x41, 0x1b, 0xbe, 0xb1, 0xcb, 0x19, 0xe0);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioInputPCM = .(0xf2421da5, 0xbbb4, 0x4cd5, 0xa9, 0x96, 0x93, 0x3c, 0x6b, 0x5d, 0x13, 0x47);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioInputMPEG = .(0x91106f36, 0x02c5, 0x4f75, 0x97, 0x19, 0x3b, 0x7a, 0xbf, 0x75, 0xe1, 0xf6);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioInputAAC = .(0x97df7828, 0xb94a, 0x47e2, 0xa4, 0xbc, 0x51, 0x19, 0x4d, 0xb2, 0x2a, 0x4d);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioInputHEAAC = .(0x16efb4aa, 0x330e, 0x4f5c, 0x98, 0xa8, 0xcf, 0x6a, 0xc5, 0x5c, 0xbe, 0x60);
		public const Guid CLSID_CODECAPI_GUID_AVDecAudioInputDolbyDigitalPlus = .(0x0803e185, 0x8f5d, 0x47f5, 0x99, 0x08, 0x19, 0xa5, 0xbb, 0xc9, 0xfe, 0x34);
		public const Guid CLSID_CODECAPI_AVDecAACDownmixMode = .(0x01274475, 0xf6bb, 0x4017, 0xb0, 0x84, 0x81, 0xa7, 0x63, 0xc9, 0x42, 0xd4);
		public const Guid CLSID_CODECAPI_AVDecHEAACDynamicRangeControl = .(0x287c8abe, 0x69a4, 0x4d39, 0x80, 0x80, 0xd3, 0xd9, 0x71, 0x21, 0x78, 0xa0);
		public const Guid CLSID_CODECAPI_AVDecAudioDualMono = .(0x4a52cda8, 0x30f8, 0x4216, 0xbe, 0x0f, 0xba, 0x0b, 0x20, 0x25, 0x92, 0x1d);
		public const Guid CLSID_CODECAPI_AVDecAudioDualMonoReproMode = .(0xa5106186, 0xcc94, 0x4bc9, 0x8c, 0xd9, 0xaa, 0x2f, 0x61, 0xf6, 0x80, 0x7e);
		public const Guid CLSID_CODECAPI_AVAudioChannelCount = .(0x1d3583c4, 0x1583, 0x474e, 0xb7, 0x1a, 0x5e, 0xe4, 0x63, 0xc1, 0x98, 0xe4);
		public const Guid CLSID_CODECAPI_AVAudioChannelConfig = .(0x17f89cb3, 0xc38d, 0x4368, 0x9e, 0xde, 0x63, 0xb9, 0x4d, 0x17, 0x7f, 0x9f);
		public const Guid CLSID_CODECAPI_AVAudioSampleRate = .(0x971d2723, 0x1acb, 0x42e7, 0x85, 0x5c, 0x52, 0x0a, 0x4b, 0x70, 0xa5, 0xf2);
		public const Guid CLSID_CODECAPI_AVDDSurroundMode = .(0x99f2f386, 0x98d1, 0x4452, 0xa1, 0x63, 0xab, 0xc7, 0x8a, 0x6e, 0xb7, 0x70);
		public const Guid CLSID_CODECAPI_AVDecDDOperationalMode = .(0xd6d6c6d1, 0x064e, 0x4fdd, 0xa4, 0x0e, 0x3e, 0xcb, 0xfc, 0xb7, 0xeb, 0xd0);
		public const Guid CLSID_CODECAPI_AVDecDDMatrixDecodingMode = .(0xddc811a5, 0x04ed, 0x4bf3, 0xa0, 0xca, 0xd0, 0x04, 0x49, 0xf9, 0x35, 0x5f);
		public const Guid CLSID_CODECAPI_AVDecDDDynamicRangeScaleHigh = .(0x50196c21, 0x1f33, 0x4af5, 0xb2, 0x96, 0x11, 0x42, 0x6d, 0x6c, 0x87, 0x89);
		public const Guid CLSID_CODECAPI_AVDecDDDynamicRangeScaleLow = .(0x044e62e4, 0x11a5, 0x42d5, 0xa3, 0xb2, 0x3b, 0xb2, 0xc7, 0xc2, 0xd7, 0xcf);
		public const Guid CLSID_CODECAPI_AVDecDDStereoDownMixMode = .(0x6ce4122c, 0x3ee9, 0x4182, 0xb4, 0xae, 0xc1, 0x0f, 0xc0, 0x88, 0x64, 0x9d);
		public const Guid CLSID_CODECAPI_AVDSPLoudnessEqualization = .(0x8afd1a15, 0x1812, 0x4cbf, 0x93, 0x19, 0x43, 0x3a, 0x5b, 0x2a, 0x3b, 0x27);
		public const Guid CLSID_CODECAPI_AVDSPSpeakerFill = .(0x5612bca1, 0x56da, 0x4582, 0x8d, 0xa1, 0xca, 0x80, 0x90, 0xf9, 0x27, 0x68);
		public const Guid CLSID_CODECAPI_AVPriorityControl = .(0x54ba3dc8, 0xbdde, 0x4329, 0xb1, 0x87, 0x20, 0x18, 0xbc, 0x5c, 0x2b, 0xa1);
		public const Guid CLSID_CODECAPI_AVRealtimeControl = .(0x6f440632, 0xc4ad, 0x4bf7, 0x9e, 0x52, 0x45, 0x69, 0x42, 0xb4, 0x54, 0xb0);
		public const Guid CLSID_CODECAPI_AVEncNoInputCopy = .(0xd2b46a2a, 0xe8ee, 0x4ec5, 0x86, 0x9e, 0x44, 0x9b, 0x6c, 0x62, 0xc8, 0x1a);
		public const Guid CLSID_CODECAPI_AVEncChromaEncodeMode = .(0x8a47ab5a, 0x4798, 0x4c93, 0xb5, 0xa5, 0x55, 0x4f, 0x9a, 0x3b, 0x9f, 0x50);
		public const Guid CLSID_CODECAPI_AVEncProgressiveUpdateTime = .(0x649faf66, 0xafc6, 0x4828, 0x8f, 0xdc, 0x07, 0x71, 0xcd, 0x9a, 0xb1, 0x7d);
		public const Guid CLSID_CODECAPI_AVEncChromaUpdateTime = .(0x4b4fd998, 0x4274, 0x40bb, 0x8e, 0xe4, 0x07, 0x55, 0x3e, 0x7e, 0x2d, 0x3a);
		public const Guid CLSID_KSPROPSETID_OPMVideoOutput = .(0x06f414bb, 0xf43a, 0x4fe2, 0xa5, 0x66, 0x77, 0x4b, 0x4c, 0x81, 0xf0, 0xdb);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ICodecAPI : IUnknown
		{
			public const new Guid IID = .(0x901db4c7, 0x31ce, 0x41a2, 0x85, 0xdc, 0x8f, 0xa0, 0xbf, 0x41, 0xb8, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsSupported(in Guid Api) mut => VT.IsSupported(ref this, Api);
			public HRESULT IsModifiable(in Guid Api) mut => VT.IsModifiable(ref this, Api);
			public HRESULT GetParameterRange(in Guid Api, out VARIANT ValueMin, out VARIANT ValueMax, out VARIANT SteppingDelta) mut => VT.GetParameterRange(ref this, Api, out ValueMin, out ValueMax, out SteppingDelta);
			public HRESULT GetParameterValues(in Guid Api, VARIANT** Values, out uint32 ValuesCount) mut => VT.GetParameterValues(ref this, Api, Values, out ValuesCount);
			public HRESULT GetDefaultValue(in Guid Api, out VARIANT Value) mut => VT.GetDefaultValue(ref this, Api, out Value);
			public HRESULT GetValue(in Guid Api, out VARIANT Value) mut => VT.GetValue(ref this, Api, out Value);
			public HRESULT SetValue(in Guid Api, ref VARIANT Value) mut => VT.SetValue(ref this, Api, ref Value);
			public HRESULT RegisterForEvent(in Guid Api, int userData) mut => VT.RegisterForEvent(ref this, Api, userData);
			public HRESULT UnregisterForEvent(in Guid Api) mut => VT.UnregisterForEvent(ref this, Api);
			public HRESULT SetAllDefaults() mut => VT.SetAllDefaults(ref this);
			public HRESULT SetValueWithNotify(in Guid Api, out VARIANT Value, Guid** ChangedParam, out uint32 ChangedParamCount) mut => VT.SetValueWithNotify(ref this, Api, out Value, ChangedParam, out ChangedParamCount);
			public HRESULT SetAllDefaultsWithNotify(Guid** ChangedParam, out uint32 ChangedParamCount) mut => VT.SetAllDefaultsWithNotify(ref this, ChangedParam, out ChangedParamCount);
			public HRESULT GetAllSettings(ref IStream __MIDL__ICodecAPI0000) mut => VT.GetAllSettings(ref this, ref __MIDL__ICodecAPI0000);
			public HRESULT SetAllSettings(ref IStream __MIDL__ICodecAPI0001) mut => VT.SetAllSettings(ref this, ref __MIDL__ICodecAPI0001);
			public HRESULT SetAllSettingsWithNotify(ref IStream __MIDL__ICodecAPI0002, Guid** ChangedParam, out uint32 ChangedParamCount) mut => VT.SetAllSettingsWithNotify(ref this, ref __MIDL__ICodecAPI0002, ChangedParam, out ChangedParamCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, in Guid Api) IsSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, in Guid Api) IsModifiable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, in Guid Api, out VARIANT ValueMin, out VARIANT ValueMax, out VARIANT SteppingDelta) GetParameterRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, in Guid Api, VARIANT** Values, out uint32 ValuesCount) GetParameterValues;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, in Guid Api, out VARIANT Value) GetDefaultValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, in Guid Api, out VARIANT Value) GetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, in Guid Api, ref VARIANT Value) SetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, in Guid Api, int userData) RegisterForEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, in Guid Api) UnregisterForEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self) SetAllDefaults;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, in Guid Api, out VARIANT Value, Guid** ChangedParam, out uint32 ChangedParamCount) SetValueWithNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, Guid** ChangedParam, out uint32 ChangedParamCount) SetAllDefaultsWithNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, ref IStream __MIDL__ICodecAPI0000) GetAllSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, ref IStream __MIDL__ICodecAPI0001) SetAllSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICodecAPI self, ref IStream __MIDL__ICodecAPI0002, Guid** ChangedParam, out uint32 ChangedParamCount) SetAllSettingsWithNotify;
			}
		}
		[CRepr]
		public struct IDirect3D9ExOverlayExtension : IUnknown
		{
			public const new Guid IID = .(0x187aeb13, 0xaaf5, 0x4c59, 0x87, 0x6d, 0xe0, 0x59, 0x08, 0x8c, 0x0d, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CheckDeviceOverlayType(uint32 Adapter, D3DDEVTYPE DevType, uint32 OverlayWidth, uint32 OverlayHeight, D3DFORMAT OverlayFormat, out D3DDISPLAYMODEEX pDisplayMode, D3DDISPLAYROTATION DisplayRotation, out D3DOVERLAYCAPS pOverlayCaps) mut => VT.CheckDeviceOverlayType(ref this, Adapter, DevType, OverlayWidth, OverlayHeight, OverlayFormat, out pDisplayMode, DisplayRotation, out pOverlayCaps);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9ExOverlayExtension self, uint32 Adapter, D3DDEVTYPE DevType, uint32 OverlayWidth, uint32 OverlayHeight, D3DFORMAT OverlayFormat, out D3DDISPLAYMODEEX pDisplayMode, D3DDISPLAYROTATION DisplayRotation, out D3DOVERLAYCAPS pOverlayCaps) CheckDeviceOverlayType;
			}
		}
		[CRepr]
		public struct IDirect3DDevice9Video : IUnknown
		{
			public const new Guid IID = .(0x26dc4561, 0xa1ee, 0x4ae7, 0x96, 0xda, 0x11, 0x8a, 0x36, 0xc0, 0xec, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetContentProtectionCaps(in Guid pCryptoType, in Guid pDecodeProfile, out D3DCONTENTPROTECTIONCAPS pCaps) mut => VT.GetContentProtectionCaps(ref this, pCryptoType, pDecodeProfile, out pCaps);
			public HRESULT CreateAuthenticatedChannel(D3DAUTHENTICATEDCHANNELTYPE ChannelType, out IDirect3DAuthenticatedChannel9* ppAuthenticatedChannel, out HANDLE pChannelHandle) mut => VT.CreateAuthenticatedChannel(ref this, ChannelType, out ppAuthenticatedChannel, out pChannelHandle);
			public HRESULT CreateCryptoSession(in Guid pCryptoType, in Guid pDecodeProfile, out IDirect3DCryptoSession9* ppCryptoSession, out HANDLE pCryptoHandle) mut => VT.CreateCryptoSession(ref this, pCryptoType, pDecodeProfile, out ppCryptoSession, out pCryptoHandle);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Video self, in Guid pCryptoType, in Guid pDecodeProfile, out D3DCONTENTPROTECTIONCAPS pCaps) GetContentProtectionCaps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Video self, D3DAUTHENTICATEDCHANNELTYPE ChannelType, out IDirect3DAuthenticatedChannel9* ppAuthenticatedChannel, out HANDLE pChannelHandle) CreateAuthenticatedChannel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Video self, in Guid pCryptoType, in Guid pDecodeProfile, out IDirect3DCryptoSession9* ppCryptoSession, out HANDLE pCryptoHandle) CreateCryptoSession;
			}
		}
		[CRepr]
		public struct IDirect3DAuthenticatedChannel9 : IUnknown
		{
			public const new Guid IID = .(0xff24beee, 0xda21, 0x4beb, 0x98, 0xb5, 0xd2, 0xf8, 0x99, 0xf9, 0x8a, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCertificateSize(out uint32 pCertificateSize) mut => VT.GetCertificateSize(ref this, out pCertificateSize);
			public HRESULT GetCertificate(uint32 CertifacteSize, out uint8 ppCertificate) mut => VT.GetCertificate(ref this, CertifacteSize, out ppCertificate);
			public HRESULT NegotiateKeyExchange(uint32 DataSize, void* pData) mut => VT.NegotiateKeyExchange(ref this, DataSize, pData);
			public HRESULT Query(uint32 InputSize, void* pInput, uint32 OutputSize, void* pOutput) mut => VT.Query(ref this, InputSize, pInput, OutputSize, pOutput);
			public HRESULT Configure(uint32 InputSize, void* pInput, out D3DAUTHENTICATEDCHANNEL_CONFIGURE_OUTPUT pOutput) mut => VT.Configure(ref this, InputSize, pInput, out pOutput);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DAuthenticatedChannel9 self, out uint32 pCertificateSize) GetCertificateSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DAuthenticatedChannel9 self, uint32 CertifacteSize, out uint8 ppCertificate) GetCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DAuthenticatedChannel9 self, uint32 DataSize, void* pData) NegotiateKeyExchange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DAuthenticatedChannel9 self, uint32 InputSize, void* pInput, uint32 OutputSize, void* pOutput) Query;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DAuthenticatedChannel9 self, uint32 InputSize, void* pInput, out D3DAUTHENTICATEDCHANNEL_CONFIGURE_OUTPUT pOutput) Configure;
			}
		}
		[CRepr]
		public struct IDirect3DCryptoSession9 : IUnknown
		{
			public const new Guid IID = .(0xfa0ab799, 0x7a9c, 0x48ca, 0x8c, 0x5b, 0x23, 0x7e, 0x71, 0xa5, 0x44, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCertificateSize(out uint32 pCertificateSize) mut => VT.GetCertificateSize(ref this, out pCertificateSize);
			public HRESULT GetCertificate(uint32 CertifacteSize, out uint8 ppCertificate) mut => VT.GetCertificate(ref this, CertifacteSize, out ppCertificate);
			public HRESULT NegotiateKeyExchange(uint32 DataSize, void* pData) mut => VT.NegotiateKeyExchange(ref this, DataSize, pData);
			public HRESULT EncryptionBlt(ref IDirect3DSurface9 pSrcSurface, ref IDirect3DSurface9 pDstSurface, uint32 DstSurfaceSize, void* pIV) mut => VT.EncryptionBlt(ref this, ref pSrcSurface, ref pDstSurface, DstSurfaceSize, pIV);
			public HRESULT DecryptionBlt(ref IDirect3DSurface9 pSrcSurface, ref IDirect3DSurface9 pDstSurface, uint32 SrcSurfaceSize, out D3DENCRYPTED_BLOCK_INFO pEncryptedBlockInfo, void* pContentKey, void* pIV) mut => VT.DecryptionBlt(ref this, ref pSrcSurface, ref pDstSurface, SrcSurfaceSize, out pEncryptedBlockInfo, pContentKey, pIV);
			public HRESULT GetSurfacePitch(ref IDirect3DSurface9 pSrcSurface, out uint32 pSurfacePitch) mut => VT.GetSurfacePitch(ref this, ref pSrcSurface, out pSurfacePitch);
			public HRESULT StartSessionKeyRefresh(void* pRandomNumber, uint32 RandomNumberSize) mut => VT.StartSessionKeyRefresh(ref this, pRandomNumber, RandomNumberSize);
			public HRESULT FinishSessionKeyRefresh() mut => VT.FinishSessionKeyRefresh(ref this);
			public HRESULT GetEncryptionBltKey(void* pReadbackKey, uint32 KeySize) mut => VT.GetEncryptionBltKey(ref this, pReadbackKey, KeySize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCryptoSession9 self, out uint32 pCertificateSize) GetCertificateSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCryptoSession9 self, uint32 CertifacteSize, out uint8 ppCertificate) GetCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCryptoSession9 self, uint32 DataSize, void* pData) NegotiateKeyExchange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCryptoSession9 self, ref IDirect3DSurface9 pSrcSurface, ref IDirect3DSurface9 pDstSurface, uint32 DstSurfaceSize, void* pIV) EncryptionBlt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCryptoSession9 self, ref IDirect3DSurface9 pSrcSurface, ref IDirect3DSurface9 pDstSurface, uint32 SrcSurfaceSize, out D3DENCRYPTED_BLOCK_INFO pEncryptedBlockInfo, void* pContentKey, void* pIV) DecryptionBlt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCryptoSession9 self, ref IDirect3DSurface9 pSrcSurface, out uint32 pSurfacePitch) GetSurfacePitch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCryptoSession9 self, void* pRandomNumber, uint32 RandomNumberSize) StartSessionKeyRefresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCryptoSession9 self) FinishSessionKeyRefresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCryptoSession9 self, void* pReadbackKey, uint32 KeySize) GetEncryptionBltKey;
			}
		}
		[CRepr]
		public struct ID3D12VideoDecoderHeap : ID3D12Pageable
		{
			public const new Guid IID = .(0x0946b7c9, 0xebf6, 0x4047, 0xbb, 0x73, 0x86, 0x83, 0xe2, 0x7d, 0xbb, 0x1f);
			
			public new VTable* VT { get => (.)vt; }
			
			public D3D12_VIDEO_DECODER_HEAP_DESC GetDesc() mut => VT.GetDesc(ref this);

			[CRepr]
			public struct VTable : ID3D12Pageable.VTable
			{
				public new function [CallingConvention(.Stdcall)] D3D12_VIDEO_DECODER_HEAP_DESC(ref ID3D12VideoDecoderHeap self) GetDesc;
			}
		}
		[CRepr]
		public struct ID3D12VideoDevice : IUnknown
		{
			public const new Guid IID = .(0x1f052807, 0x0b46, 0x4acc, 0x8a, 0x89, 0x36, 0x4f, 0x79, 0x37, 0x18, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CheckFeatureSupport(D3D12_FEATURE_VIDEO FeatureVideo, void* pFeatureSupportData, uint32 FeatureSupportDataSize) mut => VT.CheckFeatureSupport(ref this, FeatureVideo, pFeatureSupportData, FeatureSupportDataSize);
			public HRESULT CreateVideoDecoder(in D3D12_VIDEO_DECODER_DESC pDesc, in Guid riid, void** ppVideoDecoder) mut => VT.CreateVideoDecoder(ref this, pDesc, riid, ppVideoDecoder);
			public HRESULT CreateVideoDecoderHeap(in D3D12_VIDEO_DECODER_HEAP_DESC pVideoDecoderHeapDesc, in Guid riid, void** ppVideoDecoderHeap) mut => VT.CreateVideoDecoderHeap(ref this, pVideoDecoderHeapDesc, riid, ppVideoDecoderHeap);
			public HRESULT CreateVideoProcessor(uint32 NodeMask, in D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC pOutputStreamDesc, uint32 NumInputStreamDescs, D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC* pInputStreamDescs, in Guid riid, void** ppVideoProcessor) mut => VT.CreateVideoProcessor(ref this, NodeMask, pOutputStreamDesc, NumInputStreamDescs, pInputStreamDescs, riid, ppVideoProcessor);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDevice self, D3D12_FEATURE_VIDEO FeatureVideo, void* pFeatureSupportData, uint32 FeatureSupportDataSize) CheckFeatureSupport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDevice self, in D3D12_VIDEO_DECODER_DESC pDesc, in Guid riid, void** ppVideoDecoder) CreateVideoDecoder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDevice self, in D3D12_VIDEO_DECODER_HEAP_DESC pVideoDecoderHeapDesc, in Guid riid, void** ppVideoDecoderHeap) CreateVideoDecoderHeap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDevice self, uint32 NodeMask, in D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC pOutputStreamDesc, uint32 NumInputStreamDescs, D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC* pInputStreamDescs, in Guid riid, void** ppVideoProcessor) CreateVideoProcessor;
			}
		}
		[CRepr]
		public struct ID3D12VideoDecoder : ID3D12Pageable
		{
			public const new Guid IID = .(0xc59b6bdc, 0x7720, 0x4074, 0xa1, 0x36, 0x17, 0xa1, 0x56, 0x03, 0x74, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public D3D12_VIDEO_DECODER_DESC GetDesc() mut => VT.GetDesc(ref this);

			[CRepr]
			public struct VTable : ID3D12Pageable.VTable
			{
				public new function [CallingConvention(.Stdcall)] D3D12_VIDEO_DECODER_DESC(ref ID3D12VideoDecoder self) GetDesc;
			}
		}
		[CRepr]
		public struct ID3D12VideoProcessor : ID3D12Pageable
		{
			public const new Guid IID = .(0x304fdb32, 0xbede, 0x410a, 0x85, 0x45, 0x94, 0x3a, 0xc6, 0xa4, 0x61, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetNodeMask() mut => VT.GetNodeMask(ref this);
			public uint32 GetNumInputStreamDescs() mut => VT.GetNumInputStreamDescs(ref this);
			public HRESULT GetInputStreamDescs(uint32 NumInputStreamDescs, D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC* pInputStreamDescs) mut => VT.GetInputStreamDescs(ref this, NumInputStreamDescs, pInputStreamDescs);
			public D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC GetOutputStreamDesc() mut => VT.GetOutputStreamDesc(ref this);

			[CRepr]
			public struct VTable : ID3D12Pageable.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref ID3D12VideoProcessor self) GetNodeMask;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID3D12VideoProcessor self) GetNumInputStreamDescs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoProcessor self, uint32 NumInputStreamDescs, D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC* pInputStreamDescs) GetInputStreamDescs;
				public new function [CallingConvention(.Stdcall)] D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC(ref ID3D12VideoProcessor self) GetOutputStreamDesc;
			}
		}
		[CRepr]
		public struct ID3D12VideoDecodeCommandList : ID3D12CommandList
		{
			public const new Guid IID = .(0x3b60536e, 0xad29, 0x4e64, 0xa2, 0x69, 0xf8, 0x53, 0x83, 0x7e, 0x5e, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT Reset(ref ID3D12CommandAllocator pAllocator) mut => VT.Reset(ref this, ref pAllocator);
			public void ClearState() mut => VT.ClearState(ref this);
			public void ResourceBarrier(uint32 NumBarriers, D3D12_RESOURCE_BARRIER* pBarriers) mut => VT.ResourceBarrier(ref this, NumBarriers, pBarriers);
			public void DiscardResource(ref ID3D12Resource pResource, D3D12_DISCARD_REGION* pRegion) mut => VT.DiscardResource(ref this, ref pResource, pRegion);
			public void BeginQuery(ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) mut => VT.BeginQuery(ref this, ref pQueryHeap, Type, Index);
			public void EndQuery(ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) mut => VT.EndQuery(ref this, ref pQueryHeap, Type, Index);
			public void ResolveQueryData(ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 StartIndex, uint32 NumQueries, ref ID3D12Resource pDestinationBuffer, uint64 AlignedDestinationBufferOffset) mut => VT.ResolveQueryData(ref this, ref pQueryHeap, Type, StartIndex, NumQueries, ref pDestinationBuffer, AlignedDestinationBufferOffset);
			public void SetPredication(ID3D12Resource* pBuffer, uint64 AlignedBufferOffset, D3D12_PREDICATION_OP Operation) mut => VT.SetPredication(ref this, pBuffer, AlignedBufferOffset, Operation);
			public void SetMarker(uint32 Metadata, void* pData, uint32 Size) mut => VT.SetMarker(ref this, Metadata, pData, Size);
			public void BeginEvent(uint32 Metadata, void* pData, uint32 Size) mut => VT.BeginEvent(ref this, Metadata, pData, Size);
			public void EndEvent() mut => VT.EndEvent(ref this);
			public void DecodeFrame(ref ID3D12VideoDecoder pDecoder, in D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS pOutputArguments, in D3D12_VIDEO_DECODE_INPUT_STREAM_ARGUMENTS pInputArguments) mut => VT.DecodeFrame(ref this, ref pDecoder, pOutputArguments, pInputArguments);
			public void WriteBufferImmediate(uint32 Count, D3D12_WRITEBUFFERIMMEDIATE_PARAMETER* pParams, D3D12_WRITEBUFFERIMMEDIATE_MODE* pModes) mut => VT.WriteBufferImmediate(ref this, Count, pParams, pModes);

			[CRepr]
			public struct VTable : ID3D12CommandList.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDecodeCommandList self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDecodeCommandList self, ref ID3D12CommandAllocator pAllocator) Reset;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList self) ClearState;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList self, uint32 NumBarriers, D3D12_RESOURCE_BARRIER* pBarriers) ResourceBarrier;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList self, ref ID3D12Resource pResource, D3D12_DISCARD_REGION* pRegion) DiscardResource;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList self, ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) BeginQuery;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList self, ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) EndQuery;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList self, ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 StartIndex, uint32 NumQueries, ref ID3D12Resource pDestinationBuffer, uint64 AlignedDestinationBufferOffset) ResolveQueryData;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList self, ID3D12Resource* pBuffer, uint64 AlignedBufferOffset, D3D12_PREDICATION_OP Operation) SetPredication;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList self, uint32 Metadata, void* pData, uint32 Size) SetMarker;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList self, uint32 Metadata, void* pData, uint32 Size) BeginEvent;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList self) EndEvent;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList self, ref ID3D12VideoDecoder pDecoder, in D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS pOutputArguments, in D3D12_VIDEO_DECODE_INPUT_STREAM_ARGUMENTS pInputArguments) DecodeFrame;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList self, uint32 Count, D3D12_WRITEBUFFERIMMEDIATE_PARAMETER* pParams, D3D12_WRITEBUFFERIMMEDIATE_MODE* pModes) WriteBufferImmediate;
			}
		}
		[CRepr]
		public struct ID3D12VideoProcessCommandList : ID3D12CommandList
		{
			public const new Guid IID = .(0xaeb2543a, 0x167f, 0x4682, 0xac, 0xc8, 0xd1, 0x59, 0xed, 0x4a, 0x62, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT Reset(ref ID3D12CommandAllocator pAllocator) mut => VT.Reset(ref this, ref pAllocator);
			public void ClearState() mut => VT.ClearState(ref this);
			public void ResourceBarrier(uint32 NumBarriers, D3D12_RESOURCE_BARRIER* pBarriers) mut => VT.ResourceBarrier(ref this, NumBarriers, pBarriers);
			public void DiscardResource(ref ID3D12Resource pResource, D3D12_DISCARD_REGION* pRegion) mut => VT.DiscardResource(ref this, ref pResource, pRegion);
			public void BeginQuery(ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) mut => VT.BeginQuery(ref this, ref pQueryHeap, Type, Index);
			public void EndQuery(ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) mut => VT.EndQuery(ref this, ref pQueryHeap, Type, Index);
			public void ResolveQueryData(ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 StartIndex, uint32 NumQueries, ref ID3D12Resource pDestinationBuffer, uint64 AlignedDestinationBufferOffset) mut => VT.ResolveQueryData(ref this, ref pQueryHeap, Type, StartIndex, NumQueries, ref pDestinationBuffer, AlignedDestinationBufferOffset);
			public void SetPredication(ID3D12Resource* pBuffer, uint64 AlignedBufferOffset, D3D12_PREDICATION_OP Operation) mut => VT.SetPredication(ref this, pBuffer, AlignedBufferOffset, Operation);
			public void SetMarker(uint32 Metadata, void* pData, uint32 Size) mut => VT.SetMarker(ref this, Metadata, pData, Size);
			public void BeginEvent(uint32 Metadata, void* pData, uint32 Size) mut => VT.BeginEvent(ref this, Metadata, pData, Size);
			public void EndEvent() mut => VT.EndEvent(ref this);
			public void ProcessFrames(ref ID3D12VideoProcessor pVideoProcessor, in D3D12_VIDEO_PROCESS_OUTPUT_STREAM_ARGUMENTS pOutputArguments, uint32 NumInputStreams, D3D12_VIDEO_PROCESS_INPUT_STREAM_ARGUMENTS* pInputArguments) mut => VT.ProcessFrames(ref this, ref pVideoProcessor, pOutputArguments, NumInputStreams, pInputArguments);
			public void WriteBufferImmediate(uint32 Count, D3D12_WRITEBUFFERIMMEDIATE_PARAMETER* pParams, D3D12_WRITEBUFFERIMMEDIATE_MODE* pModes) mut => VT.WriteBufferImmediate(ref this, Count, pParams, pModes);

			[CRepr]
			public struct VTable : ID3D12CommandList.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoProcessCommandList self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoProcessCommandList self, ref ID3D12CommandAllocator pAllocator) Reset;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList self) ClearState;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList self, uint32 NumBarriers, D3D12_RESOURCE_BARRIER* pBarriers) ResourceBarrier;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList self, ref ID3D12Resource pResource, D3D12_DISCARD_REGION* pRegion) DiscardResource;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList self, ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) BeginQuery;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList self, ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) EndQuery;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList self, ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 StartIndex, uint32 NumQueries, ref ID3D12Resource pDestinationBuffer, uint64 AlignedDestinationBufferOffset) ResolveQueryData;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList self, ID3D12Resource* pBuffer, uint64 AlignedBufferOffset, D3D12_PREDICATION_OP Operation) SetPredication;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList self, uint32 Metadata, void* pData, uint32 Size) SetMarker;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList self, uint32 Metadata, void* pData, uint32 Size) BeginEvent;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList self) EndEvent;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList self, ref ID3D12VideoProcessor pVideoProcessor, in D3D12_VIDEO_PROCESS_OUTPUT_STREAM_ARGUMENTS pOutputArguments, uint32 NumInputStreams, D3D12_VIDEO_PROCESS_INPUT_STREAM_ARGUMENTS* pInputArguments) ProcessFrames;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList self, uint32 Count, D3D12_WRITEBUFFERIMMEDIATE_PARAMETER* pParams, D3D12_WRITEBUFFERIMMEDIATE_MODE* pModes) WriteBufferImmediate;
			}
		}
		[CRepr]
		public struct ID3D12VideoDecodeCommandList1 : ID3D12VideoDecodeCommandList
		{
			public const new Guid IID = .(0xd52f011b, 0xb56e, 0x453c, 0xa0, 0x5a, 0xa7, 0xf3, 0x11, 0xc8, 0xf4, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public void DecodeFrame1(ref ID3D12VideoDecoder pDecoder, in D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS1 pOutputArguments, in D3D12_VIDEO_DECODE_INPUT_STREAM_ARGUMENTS pInputArguments) mut => VT.DecodeFrame1(ref this, ref pDecoder, pOutputArguments, pInputArguments);

			[CRepr]
			public struct VTable : ID3D12VideoDecodeCommandList.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList1 self, ref ID3D12VideoDecoder pDecoder, in D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS1 pOutputArguments, in D3D12_VIDEO_DECODE_INPUT_STREAM_ARGUMENTS pInputArguments) DecodeFrame1;
			}
		}
		[CRepr]
		public struct ID3D12VideoProcessCommandList1 : ID3D12VideoProcessCommandList
		{
			public const new Guid IID = .(0x542c5c4d, 0x7596, 0x434f, 0x8c, 0x93, 0x4e, 0xfa, 0x67, 0x66, 0xf2, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public void ProcessFrames1(ref ID3D12VideoProcessor pVideoProcessor, in D3D12_VIDEO_PROCESS_OUTPUT_STREAM_ARGUMENTS pOutputArguments, uint32 NumInputStreams, D3D12_VIDEO_PROCESS_INPUT_STREAM_ARGUMENTS1* pInputArguments) mut => VT.ProcessFrames1(ref this, ref pVideoProcessor, pOutputArguments, NumInputStreams, pInputArguments);

			[CRepr]
			public struct VTable : ID3D12VideoProcessCommandList.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList1 self, ref ID3D12VideoProcessor pVideoProcessor, in D3D12_VIDEO_PROCESS_OUTPUT_STREAM_ARGUMENTS pOutputArguments, uint32 NumInputStreams, D3D12_VIDEO_PROCESS_INPUT_STREAM_ARGUMENTS1* pInputArguments) ProcessFrames1;
			}
		}
		[CRepr]
		public struct ID3D12VideoMotionEstimator : ID3D12Pageable
		{
			public const new Guid IID = .(0x33fdae0e, 0x098b, 0x428f, 0x87, 0xbb, 0x34, 0xb6, 0x95, 0xde, 0x08, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			public D3D12_VIDEO_MOTION_ESTIMATOR_DESC GetDesc() mut => VT.GetDesc(ref this);
			public HRESULT GetProtectedResourceSession(in Guid riid, void** ppProtectedSession) mut => VT.GetProtectedResourceSession(ref this, riid, ppProtectedSession);

			[CRepr]
			public struct VTable : ID3D12Pageable.VTable
			{
				public new function [CallingConvention(.Stdcall)] D3D12_VIDEO_MOTION_ESTIMATOR_DESC(ref ID3D12VideoMotionEstimator self) GetDesc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoMotionEstimator self, in Guid riid, void** ppProtectedSession) GetProtectedResourceSession;
			}
		}
		[CRepr]
		public struct ID3D12VideoMotionVectorHeap : ID3D12Pageable
		{
			public const new Guid IID = .(0x5be17987, 0x743a, 0x4061, 0x83, 0x4b, 0x23, 0xd2, 0x2d, 0xae, 0xa5, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public D3D12_VIDEO_MOTION_VECTOR_HEAP_DESC GetDesc() mut => VT.GetDesc(ref this);
			public HRESULT GetProtectedResourceSession(in Guid riid, void** ppProtectedSession) mut => VT.GetProtectedResourceSession(ref this, riid, ppProtectedSession);

			[CRepr]
			public struct VTable : ID3D12Pageable.VTable
			{
				public new function [CallingConvention(.Stdcall)] D3D12_VIDEO_MOTION_VECTOR_HEAP_DESC(ref ID3D12VideoMotionVectorHeap self) GetDesc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoMotionVectorHeap self, in Guid riid, void** ppProtectedSession) GetProtectedResourceSession;
			}
		}
		[CRepr]
		public struct ID3D12VideoDevice1 : ID3D12VideoDevice
		{
			public const new Guid IID = .(0x981611ad, 0xa144, 0x4c83, 0x98, 0x90, 0xf3, 0x0e, 0x26, 0xd6, 0x58, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateVideoMotionEstimator(in D3D12_VIDEO_MOTION_ESTIMATOR_DESC pDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, in Guid riid, void** ppVideoMotionEstimator) mut => VT.CreateVideoMotionEstimator(ref this, pDesc, pProtectedResourceSession, riid, ppVideoMotionEstimator);
			public HRESULT CreateVideoMotionVectorHeap(in D3D12_VIDEO_MOTION_VECTOR_HEAP_DESC pDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, in Guid riid, void** ppVideoMotionVectorHeap) mut => VT.CreateVideoMotionVectorHeap(ref this, pDesc, pProtectedResourceSession, riid, ppVideoMotionVectorHeap);

			[CRepr]
			public struct VTable : ID3D12VideoDevice.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDevice1 self, in D3D12_VIDEO_MOTION_ESTIMATOR_DESC pDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, in Guid riid, void** ppVideoMotionEstimator) CreateVideoMotionEstimator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDevice1 self, in D3D12_VIDEO_MOTION_VECTOR_HEAP_DESC pDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, in Guid riid, void** ppVideoMotionVectorHeap) CreateVideoMotionVectorHeap;
			}
		}
		[CRepr]
		public struct ID3D12VideoEncodeCommandList : ID3D12CommandList
		{
			public const new Guid IID = .(0x8455293a, 0x0cbd, 0x4831, 0x9b, 0x39, 0xfb, 0xdb, 0xab, 0x72, 0x47, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT Reset(ref ID3D12CommandAllocator pAllocator) mut => VT.Reset(ref this, ref pAllocator);
			public void ClearState() mut => VT.ClearState(ref this);
			public void ResourceBarrier(uint32 NumBarriers, D3D12_RESOURCE_BARRIER* pBarriers) mut => VT.ResourceBarrier(ref this, NumBarriers, pBarriers);
			public void DiscardResource(ref ID3D12Resource pResource, D3D12_DISCARD_REGION* pRegion) mut => VT.DiscardResource(ref this, ref pResource, pRegion);
			public void BeginQuery(ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) mut => VT.BeginQuery(ref this, ref pQueryHeap, Type, Index);
			public void EndQuery(ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) mut => VT.EndQuery(ref this, ref pQueryHeap, Type, Index);
			public void ResolveQueryData(ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 StartIndex, uint32 NumQueries, ref ID3D12Resource pDestinationBuffer, uint64 AlignedDestinationBufferOffset) mut => VT.ResolveQueryData(ref this, ref pQueryHeap, Type, StartIndex, NumQueries, ref pDestinationBuffer, AlignedDestinationBufferOffset);
			public void SetPredication(ID3D12Resource* pBuffer, uint64 AlignedBufferOffset, D3D12_PREDICATION_OP Operation) mut => VT.SetPredication(ref this, pBuffer, AlignedBufferOffset, Operation);
			public void SetMarker(uint32 Metadata, void* pData, uint32 Size) mut => VT.SetMarker(ref this, Metadata, pData, Size);
			public void BeginEvent(uint32 Metadata, void* pData, uint32 Size) mut => VT.BeginEvent(ref this, Metadata, pData, Size);
			public void EndEvent() mut => VT.EndEvent(ref this);
			public void EstimateMotion(ref ID3D12VideoMotionEstimator pMotionEstimator, in D3D12_VIDEO_MOTION_ESTIMATOR_OUTPUT pOutputArguments, in D3D12_VIDEO_MOTION_ESTIMATOR_INPUT pInputArguments) mut => VT.EstimateMotion(ref this, ref pMotionEstimator, pOutputArguments, pInputArguments);
			public void ResolveMotionVectorHeap(in D3D12_RESOLVE_VIDEO_MOTION_VECTOR_HEAP_OUTPUT pOutputArguments, in D3D12_RESOLVE_VIDEO_MOTION_VECTOR_HEAP_INPUT pInputArguments) mut => VT.ResolveMotionVectorHeap(ref this, pOutputArguments, pInputArguments);
			public void WriteBufferImmediate(uint32 Count, D3D12_WRITEBUFFERIMMEDIATE_PARAMETER* pParams, D3D12_WRITEBUFFERIMMEDIATE_MODE* pModes) mut => VT.WriteBufferImmediate(ref this, Count, pParams, pModes);
			public void SetProtectedResourceSession(ID3D12ProtectedResourceSession* pProtectedResourceSession) mut => VT.SetProtectedResourceSession(ref this, pProtectedResourceSession);

			[CRepr]
			public struct VTable : ID3D12CommandList.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoEncodeCommandList self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoEncodeCommandList self, ref ID3D12CommandAllocator pAllocator) Reset;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self) ClearState;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self, uint32 NumBarriers, D3D12_RESOURCE_BARRIER* pBarriers) ResourceBarrier;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self, ref ID3D12Resource pResource, D3D12_DISCARD_REGION* pRegion) DiscardResource;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self, ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) BeginQuery;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self, ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) EndQuery;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self, ref ID3D12QueryHeap pQueryHeap, D3D12_QUERY_TYPE Type, uint32 StartIndex, uint32 NumQueries, ref ID3D12Resource pDestinationBuffer, uint64 AlignedDestinationBufferOffset) ResolveQueryData;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self, ID3D12Resource* pBuffer, uint64 AlignedBufferOffset, D3D12_PREDICATION_OP Operation) SetPredication;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self, uint32 Metadata, void* pData, uint32 Size) SetMarker;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self, uint32 Metadata, void* pData, uint32 Size) BeginEvent;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self) EndEvent;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self, ref ID3D12VideoMotionEstimator pMotionEstimator, in D3D12_VIDEO_MOTION_ESTIMATOR_OUTPUT pOutputArguments, in D3D12_VIDEO_MOTION_ESTIMATOR_INPUT pInputArguments) EstimateMotion;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self, in D3D12_RESOLVE_VIDEO_MOTION_VECTOR_HEAP_OUTPUT pOutputArguments, in D3D12_RESOLVE_VIDEO_MOTION_VECTOR_HEAP_INPUT pInputArguments) ResolveMotionVectorHeap;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self, uint32 Count, D3D12_WRITEBUFFERIMMEDIATE_PARAMETER* pParams, D3D12_WRITEBUFFERIMMEDIATE_MODE* pModes) WriteBufferImmediate;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList self, ID3D12ProtectedResourceSession* pProtectedResourceSession) SetProtectedResourceSession;
			}
		}
		[CRepr]
		public struct ID3D12VideoDecoder1 : ID3D12VideoDecoder
		{
			public const new Guid IID = .(0x79a2e5fb, 0xccd2, 0x469a, 0x9f, 0xde, 0x19, 0x5d, 0x10, 0x95, 0x1f, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProtectedResourceSession(in Guid riid, void** ppProtectedSession) mut => VT.GetProtectedResourceSession(ref this, riid, ppProtectedSession);

			[CRepr]
			public struct VTable : ID3D12VideoDecoder.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDecoder1 self, in Guid riid, void** ppProtectedSession) GetProtectedResourceSession;
			}
		}
		[CRepr]
		public struct ID3D12VideoDecoderHeap1 : ID3D12VideoDecoderHeap
		{
			public const new Guid IID = .(0xda1d98c5, 0x539f, 0x41b2, 0xbf, 0x6b, 0x11, 0x98, 0xa0, 0x3b, 0x6d, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProtectedResourceSession(in Guid riid, void** ppProtectedSession) mut => VT.GetProtectedResourceSession(ref this, riid, ppProtectedSession);

			[CRepr]
			public struct VTable : ID3D12VideoDecoderHeap.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDecoderHeap1 self, in Guid riid, void** ppProtectedSession) GetProtectedResourceSession;
			}
		}
		[CRepr]
		public struct ID3D12VideoProcessor1 : ID3D12VideoProcessor
		{
			public const new Guid IID = .(0xf3cfe615, 0x553f, 0x425c, 0x86, 0xd8, 0xee, 0x8c, 0x1b, 0x1f, 0xb0, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProtectedResourceSession(in Guid riid, void** ppProtectedSession) mut => VT.GetProtectedResourceSession(ref this, riid, ppProtectedSession);

			[CRepr]
			public struct VTable : ID3D12VideoProcessor.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoProcessor1 self, in Guid riid, void** ppProtectedSession) GetProtectedResourceSession;
			}
		}
		[CRepr]
		public struct ID3D12VideoExtensionCommand : ID3D12Pageable
		{
			public const new Guid IID = .(0x554e41e8, 0xae8e, 0x4a8c, 0xb7, 0xd2, 0x5b, 0x4f, 0x27, 0x4a, 0x30, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public D3D12_VIDEO_EXTENSION_COMMAND_DESC GetDesc() mut => VT.GetDesc(ref this);
			public HRESULT GetProtectedResourceSession(in Guid riid, void** ppProtectedSession) mut => VT.GetProtectedResourceSession(ref this, riid, ppProtectedSession);

			[CRepr]
			public struct VTable : ID3D12Pageable.VTable
			{
				public new function [CallingConvention(.Stdcall)] D3D12_VIDEO_EXTENSION_COMMAND_DESC(ref ID3D12VideoExtensionCommand self) GetDesc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoExtensionCommand self, in Guid riid, void** ppProtectedSession) GetProtectedResourceSession;
			}
		}
		[CRepr]
		public struct ID3D12VideoDevice2 : ID3D12VideoDevice1
		{
			public const new Guid IID = .(0xf019ac49, 0xf838, 0x4a95, 0x9b, 0x17, 0x57, 0x94, 0x37, 0xc8, 0xf5, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateVideoDecoder1(in D3D12_VIDEO_DECODER_DESC pDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, in Guid riid, void** ppVideoDecoder) mut => VT.CreateVideoDecoder1(ref this, pDesc, pProtectedResourceSession, riid, ppVideoDecoder);
			public HRESULT CreateVideoDecoderHeap1(in D3D12_VIDEO_DECODER_HEAP_DESC pVideoDecoderHeapDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, in Guid riid, void** ppVideoDecoderHeap) mut => VT.CreateVideoDecoderHeap1(ref this, pVideoDecoderHeapDesc, pProtectedResourceSession, riid, ppVideoDecoderHeap);
			public HRESULT CreateVideoProcessor1(uint32 NodeMask, in D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC pOutputStreamDesc, uint32 NumInputStreamDescs, D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC* pInputStreamDescs, ID3D12ProtectedResourceSession* pProtectedResourceSession, in Guid riid, void** ppVideoProcessor) mut => VT.CreateVideoProcessor1(ref this, NodeMask, pOutputStreamDesc, NumInputStreamDescs, pInputStreamDescs, pProtectedResourceSession, riid, ppVideoProcessor);
			public HRESULT CreateVideoExtensionCommand(in D3D12_VIDEO_EXTENSION_COMMAND_DESC pDesc, void* pCreationParameters, uint CreationParametersDataSizeInBytes, ID3D12ProtectedResourceSession* pProtectedResourceSession, in Guid riid, void** ppVideoExtensionCommand) mut => VT.CreateVideoExtensionCommand(ref this, pDesc, pCreationParameters, CreationParametersDataSizeInBytes, pProtectedResourceSession, riid, ppVideoExtensionCommand);
			public HRESULT ExecuteExtensionCommand(ref ID3D12VideoExtensionCommand pExtensionCommand, void* pExecutionParameters, uint ExecutionParametersSizeInBytes, void* pOutputData, uint OutputDataSizeInBytes) mut => VT.ExecuteExtensionCommand(ref this, ref pExtensionCommand, pExecutionParameters, ExecutionParametersSizeInBytes, pOutputData, OutputDataSizeInBytes);

			[CRepr]
			public struct VTable : ID3D12VideoDevice1.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDevice2 self, in D3D12_VIDEO_DECODER_DESC pDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, in Guid riid, void** ppVideoDecoder) CreateVideoDecoder1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDevice2 self, in D3D12_VIDEO_DECODER_HEAP_DESC pVideoDecoderHeapDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, in Guid riid, void** ppVideoDecoderHeap) CreateVideoDecoderHeap1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDevice2 self, uint32 NodeMask, in D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC pOutputStreamDesc, uint32 NumInputStreamDescs, D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC* pInputStreamDescs, ID3D12ProtectedResourceSession* pProtectedResourceSession, in Guid riid, void** ppVideoProcessor) CreateVideoProcessor1;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDevice2 self, in D3D12_VIDEO_EXTENSION_COMMAND_DESC pDesc, void* pCreationParameters, uint CreationParametersDataSizeInBytes, ID3D12ProtectedResourceSession* pProtectedResourceSession, in Guid riid, void** ppVideoExtensionCommand) CreateVideoExtensionCommand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDevice2 self, ref ID3D12VideoExtensionCommand pExtensionCommand, void* pExecutionParameters, uint ExecutionParametersSizeInBytes, void* pOutputData, uint OutputDataSizeInBytes) ExecuteExtensionCommand;
			}
		}
		[CRepr]
		public struct ID3D12VideoDecodeCommandList2 : ID3D12VideoDecodeCommandList1
		{
			public const new Guid IID = .(0x6e120880, 0xc114, 0x4153, 0x80, 0x36, 0xd2, 0x47, 0x05, 0x1e, 0x17, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetProtectedResourceSession(ID3D12ProtectedResourceSession* pProtectedResourceSession) mut => VT.SetProtectedResourceSession(ref this, pProtectedResourceSession);
			public void InitializeExtensionCommand(ref ID3D12VideoExtensionCommand pExtensionCommand, void* pInitializationParameters, uint InitializationParametersSizeInBytes) mut => VT.InitializeExtensionCommand(ref this, ref pExtensionCommand, pInitializationParameters, InitializationParametersSizeInBytes);
			public void ExecuteExtensionCommand(ref ID3D12VideoExtensionCommand pExtensionCommand, void* pExecutionParameters, uint ExecutionParametersSizeInBytes) mut => VT.ExecuteExtensionCommand(ref this, ref pExtensionCommand, pExecutionParameters, ExecutionParametersSizeInBytes);

			[CRepr]
			public struct VTable : ID3D12VideoDecodeCommandList1.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList2 self, ID3D12ProtectedResourceSession* pProtectedResourceSession) SetProtectedResourceSession;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList2 self, ref ID3D12VideoExtensionCommand pExtensionCommand, void* pInitializationParameters, uint InitializationParametersSizeInBytes) InitializeExtensionCommand;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoDecodeCommandList2 self, ref ID3D12VideoExtensionCommand pExtensionCommand, void* pExecutionParameters, uint ExecutionParametersSizeInBytes) ExecuteExtensionCommand;
			}
		}
		[CRepr]
		public struct ID3D12VideoProcessCommandList2 : ID3D12VideoProcessCommandList1
		{
			public const new Guid IID = .(0xdb525ae4, 0x6ad6, 0x473c, 0xba, 0xa7, 0x59, 0xb2, 0xe3, 0x70, 0x82, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetProtectedResourceSession(ID3D12ProtectedResourceSession* pProtectedResourceSession) mut => VT.SetProtectedResourceSession(ref this, pProtectedResourceSession);
			public void InitializeExtensionCommand(ref ID3D12VideoExtensionCommand pExtensionCommand, void* pInitializationParameters, uint InitializationParametersSizeInBytes) mut => VT.InitializeExtensionCommand(ref this, ref pExtensionCommand, pInitializationParameters, InitializationParametersSizeInBytes);
			public void ExecuteExtensionCommand(ref ID3D12VideoExtensionCommand pExtensionCommand, void* pExecutionParameters, uint ExecutionParametersSizeInBytes) mut => VT.ExecuteExtensionCommand(ref this, ref pExtensionCommand, pExecutionParameters, ExecutionParametersSizeInBytes);

			[CRepr]
			public struct VTable : ID3D12VideoProcessCommandList1.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList2 self, ID3D12ProtectedResourceSession* pProtectedResourceSession) SetProtectedResourceSession;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList2 self, ref ID3D12VideoExtensionCommand pExtensionCommand, void* pInitializationParameters, uint InitializationParametersSizeInBytes) InitializeExtensionCommand;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoProcessCommandList2 self, ref ID3D12VideoExtensionCommand pExtensionCommand, void* pExecutionParameters, uint ExecutionParametersSizeInBytes) ExecuteExtensionCommand;
			}
		}
		[CRepr]
		public struct ID3D12VideoEncodeCommandList1 : ID3D12VideoEncodeCommandList
		{
			public const new Guid IID = .(0x94971eca, 0x2bdb, 0x4769, 0x88, 0xcf, 0x36, 0x75, 0xea, 0x75, 0x7e, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public void InitializeExtensionCommand(ref ID3D12VideoExtensionCommand pExtensionCommand, void* pInitializationParameters, uint InitializationParametersSizeInBytes) mut => VT.InitializeExtensionCommand(ref this, ref pExtensionCommand, pInitializationParameters, InitializationParametersSizeInBytes);
			public void ExecuteExtensionCommand(ref ID3D12VideoExtensionCommand pExtensionCommand, void* pExecutionParameters, uint ExecutionParametersSizeInBytes) mut => VT.ExecuteExtensionCommand(ref this, ref pExtensionCommand, pExecutionParameters, ExecutionParametersSizeInBytes);

			[CRepr]
			public struct VTable : ID3D12VideoEncodeCommandList.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList1 self, ref ID3D12VideoExtensionCommand pExtensionCommand, void* pInitializationParameters, uint InitializationParametersSizeInBytes) InitializeExtensionCommand;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList1 self, ref ID3D12VideoExtensionCommand pExtensionCommand, void* pExecutionParameters, uint ExecutionParametersSizeInBytes) ExecuteExtensionCommand;
			}
		}
		[CRepr]
		public struct ID3D12VideoEncoder : ID3D12Pageable
		{
			public const new Guid IID = .(0x2e0d212d, 0x8df9, 0x44a6, 0xa7, 0x70, 0xbb, 0x28, 0x9b, 0x18, 0x27, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetNodeMask() mut => VT.GetNodeMask(ref this);
			public D3D12_VIDEO_ENCODER_FLAGS GetEncoderFlags() mut => VT.GetEncoderFlags(ref this);
			public D3D12_VIDEO_ENCODER_CODEC GetCodec() mut => VT.GetCodec(ref this);
			public HRESULT GetCodecProfile(D3D12_VIDEO_ENCODER_PROFILE_DESC dstProfile) mut => VT.GetCodecProfile(ref this, dstProfile);
			public HRESULT GetCodecConfiguration(D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION dstCodecConfig) mut => VT.GetCodecConfiguration(ref this, dstCodecConfig);
			public DXGI_FORMAT GetInputFormat() mut => VT.GetInputFormat(ref this);
			public D3D12_VIDEO_ENCODER_MOTION_ESTIMATION_PRECISION_MODE GetMaxMotionEstimationPrecision() mut => VT.GetMaxMotionEstimationPrecision(ref this);

			[CRepr]
			public struct VTable : ID3D12Pageable.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref ID3D12VideoEncoder self) GetNodeMask;
				public new function [CallingConvention(.Stdcall)] D3D12_VIDEO_ENCODER_FLAGS(ref ID3D12VideoEncoder self) GetEncoderFlags;
				public new function [CallingConvention(.Stdcall)] D3D12_VIDEO_ENCODER_CODEC(ref ID3D12VideoEncoder self) GetCodec;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoEncoder self, D3D12_VIDEO_ENCODER_PROFILE_DESC dstProfile) GetCodecProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoEncoder self, D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION dstCodecConfig) GetCodecConfiguration;
				public new function [CallingConvention(.Stdcall)] DXGI_FORMAT(ref ID3D12VideoEncoder self) GetInputFormat;
				public new function [CallingConvention(.Stdcall)] D3D12_VIDEO_ENCODER_MOTION_ESTIMATION_PRECISION_MODE(ref ID3D12VideoEncoder self) GetMaxMotionEstimationPrecision;
			}
		}
		[CRepr]
		public struct ID3D12VideoEncoderHeap : ID3D12Pageable
		{
			public const new Guid IID = .(0x22b35d96, 0x876a, 0x44c0, 0xb2, 0x5e, 0xfb, 0x8c, 0x9c, 0x7f, 0x1c, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetNodeMask() mut => VT.GetNodeMask(ref this);
			public D3D12_VIDEO_ENCODER_HEAP_FLAGS GetEncoderHeapFlags() mut => VT.GetEncoderHeapFlags(ref this);
			public D3D12_VIDEO_ENCODER_CODEC GetCodec() mut => VT.GetCodec(ref this);
			public HRESULT GetCodecProfile(D3D12_VIDEO_ENCODER_PROFILE_DESC dstProfile) mut => VT.GetCodecProfile(ref this, dstProfile);
			public HRESULT GetCodecLevel(D3D12_VIDEO_ENCODER_LEVEL_SETTING dstLevel) mut => VT.GetCodecLevel(ref this, dstLevel);
			public uint32 GetResolutionListCount() mut => VT.GetResolutionListCount(ref this);
			public HRESULT GetResolutionList(uint32 ResolutionsListCount, D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC* pResolutionList) mut => VT.GetResolutionList(ref this, ResolutionsListCount, pResolutionList);

			[CRepr]
			public struct VTable : ID3D12Pageable.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref ID3D12VideoEncoderHeap self) GetNodeMask;
				public new function [CallingConvention(.Stdcall)] D3D12_VIDEO_ENCODER_HEAP_FLAGS(ref ID3D12VideoEncoderHeap self) GetEncoderHeapFlags;
				public new function [CallingConvention(.Stdcall)] D3D12_VIDEO_ENCODER_CODEC(ref ID3D12VideoEncoderHeap self) GetCodec;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoEncoderHeap self, D3D12_VIDEO_ENCODER_PROFILE_DESC dstProfile) GetCodecProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoEncoderHeap self, D3D12_VIDEO_ENCODER_LEVEL_SETTING dstLevel) GetCodecLevel;
				public new function [CallingConvention(.Stdcall)] uint32(ref ID3D12VideoEncoderHeap self) GetResolutionListCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoEncoderHeap self, uint32 ResolutionsListCount, D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC* pResolutionList) GetResolutionList;
			}
		}
		[CRepr]
		public struct ID3D12VideoDevice3 : ID3D12VideoDevice2
		{
			public const new Guid IID = .(0x4243adb4, 0x3a32, 0x4666, 0x97, 0x3c, 0x0c, 0xcc, 0x56, 0x25, 0xdc, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateVideoEncoder(in D3D12_VIDEO_ENCODER_DESC pDesc, in Guid riid, void** ppVideoEncoder) mut => VT.CreateVideoEncoder(ref this, pDesc, riid, ppVideoEncoder);
			public HRESULT CreateVideoEncoderHeap(in D3D12_VIDEO_ENCODER_HEAP_DESC pDesc, in Guid riid, void** ppVideoEncoderHeap) mut => VT.CreateVideoEncoderHeap(ref this, pDesc, riid, ppVideoEncoderHeap);

			[CRepr]
			public struct VTable : ID3D12VideoDevice2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDevice3 self, in D3D12_VIDEO_ENCODER_DESC pDesc, in Guid riid, void** ppVideoEncoder) CreateVideoEncoder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ID3D12VideoDevice3 self, in D3D12_VIDEO_ENCODER_HEAP_DESC pDesc, in Guid riid, void** ppVideoEncoderHeap) CreateVideoEncoderHeap;
			}
		}
		[CRepr]
		public struct ID3D12VideoEncodeCommandList2 : ID3D12VideoEncodeCommandList1
		{
			public const new Guid IID = .(0x895491e2, 0xe701, 0x46a9, 0x9a, 0x1f, 0x8d, 0x34, 0x80, 0xed, 0x86, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public void EncodeFrame(ref ID3D12VideoEncoder pEncoder, ref ID3D12VideoEncoderHeap pHeap, in D3D12_VIDEO_ENCODER_ENCODEFRAME_INPUT_ARGUMENTS pInputArguments, in D3D12_VIDEO_ENCODER_ENCODEFRAME_OUTPUT_ARGUMENTS pOutputArguments) mut => VT.EncodeFrame(ref this, ref pEncoder, ref pHeap, pInputArguments, pOutputArguments);
			public void ResolveEncoderOutputMetadata(in D3D12_VIDEO_ENCODER_RESOLVE_METADATA_INPUT_ARGUMENTS pInputArguments, in D3D12_VIDEO_ENCODER_RESOLVE_METADATA_OUTPUT_ARGUMENTS pOutputArguments) mut => VT.ResolveEncoderOutputMetadata(ref this, pInputArguments, pOutputArguments);

			[CRepr]
			public struct VTable : ID3D12VideoEncodeCommandList1.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList2 self, ref ID3D12VideoEncoder pEncoder, ref ID3D12VideoEncoderHeap pHeap, in D3D12_VIDEO_ENCODER_ENCODEFRAME_INPUT_ARGUMENTS pInputArguments, in D3D12_VIDEO_ENCODER_ENCODEFRAME_OUTPUT_ARGUMENTS pOutputArguments) EncodeFrame;
				public new function [CallingConvention(.Stdcall)] void(ref ID3D12VideoEncodeCommandList2 self, in D3D12_VIDEO_ENCODER_RESOLVE_METADATA_INPUT_ARGUMENTS pInputArguments, in D3D12_VIDEO_ENCODER_RESOLVE_METADATA_OUTPUT_ARGUMENTS pOutputArguments) ResolveEncoderOutputMetadata;
			}
		}
		[CRepr]
		public struct IWMValidate : IUnknown
		{
			public const new Guid IID = .(0xcee3def2, 0x3808, 0x414d, 0xbe, 0x66, 0xfa, 0xfd, 0x47, 0x22, 0x10, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetIdentifier(Guid guidValidationID) mut => VT.SetIdentifier(ref this, guidValidationID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMValidate self, Guid guidValidationID) SetIdentifier;
			}
		}
		[CRepr]
		public struct IValidateBinding : IUnknown
		{
			public const new Guid IID = .(0x04a578b2, 0xe778, 0x422a, 0xa8, 0x05, 0xb3, 0xee, 0x54, 0xd9, 0x0b, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdentifier(Guid guidLicensorID, uint8* pbEphemeron, uint32 cbEphemeron, uint8** ppbBlobValidationID, out uint32 pcbBlobSize) mut => VT.GetIdentifier(ref this, guidLicensorID, pbEphemeron, cbEphemeron, ppbBlobValidationID, out pcbBlobSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValidateBinding self, Guid guidLicensorID, uint8* pbEphemeron, uint32 cbEphemeron, uint8** ppbBlobValidationID, out uint32 pcbBlobSize) GetIdentifier;
			}
		}
		[CRepr]
		public struct IWMVideoDecoderHurryup : IUnknown
		{
			public const new Guid IID = .(0x352bb3bd, 0x2d4d, 0x4323, 0x9e, 0x71, 0xdc, 0xdc, 0xfb, 0xd5, 0x3c, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetHurryup(int32 lHurryup) mut => VT.SetHurryup(ref this, lHurryup);
			public HRESULT GetHurryup(out int32 plHurryup) mut => VT.GetHurryup(ref this, out plHurryup);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMVideoDecoderHurryup self, int32 lHurryup) SetHurryup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMVideoDecoderHurryup self, out int32 plHurryup) GetHurryup;
			}
		}
		[CRepr]
		public struct IWMVideoForceKeyFrame : IUnknown
		{
			public const new Guid IID = .(0x9f8496be, 0x5b9a, 0x41b9, 0xa9, 0xe8, 0xf2, 0x1c, 0xd8, 0x05, 0x96, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetKeyFrame() mut => VT.SetKeyFrame(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMVideoForceKeyFrame self) SetKeyFrame;
			}
		}
		[CRepr]
		public struct IWMCodecStrings : IUnknown
		{
			public const new Guid IID = .(0xa7b2504b, 0xe58a, 0x47fb, 0x95, 0x8b, 0xca, 0xc7, 0x16, 0x5a, 0x05, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out DMO_MEDIA_TYPE pmt, uint32 cchLength, char16* szName, out uint32 pcchLength) mut => VT.GetName(ref this, out pmt, cchLength, szName, out pcchLength);
			public HRESULT GetDescription(out DMO_MEDIA_TYPE pmt, uint32 cchLength, char16* szDescription, out uint32 pcchLength) mut => VT.GetDescription(ref this, out pmt, cchLength, szDescription, out pcchLength);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecStrings self, out DMO_MEDIA_TYPE pmt, uint32 cchLength, char16* szName, out uint32 pcchLength) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecStrings self, out DMO_MEDIA_TYPE pmt, uint32 cchLength, char16* szDescription, out uint32 pcchLength) GetDescription;
			}
		}
		[CRepr]
		public struct IWMCodecProps : IUnknown
		{
			public const new Guid IID = .(0x2573e11a, 0xf01a, 0x4fdd, 0xa9, 0x8d, 0x63, 0xb8, 0xe0, 0xba, 0x95, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFormatProp(out DMO_MEDIA_TYPE pmt, PWSTR pszName, out WMT_PROP_DATATYPE pType, out uint8 pValue, out uint32 pdwSize) mut => VT.GetFormatProp(ref this, out pmt, pszName, out pType, out pValue, out pdwSize);
			public HRESULT GetCodecProp(uint32 dwFormat, PWSTR pszName, out WMT_PROP_DATATYPE pType, out uint8 pValue, out uint32 pdwSize) mut => VT.GetCodecProp(ref this, dwFormat, pszName, out pType, out pValue, out pdwSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecProps self, out DMO_MEDIA_TYPE pmt, PWSTR pszName, out WMT_PROP_DATATYPE pType, out uint8 pValue, out uint32 pdwSize) GetFormatProp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecProps self, uint32 dwFormat, PWSTR pszName, out WMT_PROP_DATATYPE pType, out uint8 pValue, out uint32 pdwSize) GetCodecProp;
			}
		}
		[CRepr]
		public struct IWMCodecLeakyBucket : IUnknown
		{
			public const new Guid IID = .(0xa81ba647, 0x6227, 0x43b7, 0xb2, 0x31, 0xc7, 0xb1, 0x51, 0x35, 0xdd, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBufferSizeBits(uint32 ulBufferSize) mut => VT.SetBufferSizeBits(ref this, ulBufferSize);
			public HRESULT GetBufferSizeBits(out uint32 pulBufferSize) mut => VT.GetBufferSizeBits(ref this, out pulBufferSize);
			public HRESULT SetBufferFullnessBits(uint32 ulBufferFullness) mut => VT.SetBufferFullnessBits(ref this, ulBufferFullness);
			public HRESULT GetBufferFullnessBits(out uint32 pulBufferFullness) mut => VT.GetBufferFullnessBits(ref this, out pulBufferFullness);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecLeakyBucket self, uint32 ulBufferSize) SetBufferSizeBits;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecLeakyBucket self, out uint32 pulBufferSize) GetBufferSizeBits;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecLeakyBucket self, uint32 ulBufferFullness) SetBufferFullnessBits;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecLeakyBucket self, out uint32 pulBufferFullness) GetBufferFullnessBits;
			}
		}
		[CRepr]
		public struct IWMCodecOutputTimestamp : IUnknown
		{
			public const new Guid IID = .(0xb72adf95, 0x7adc, 0x4a72, 0xbc, 0x05, 0x57, 0x7d, 0x8e, 0xa6, 0xbf, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNextOutputTime(out int64 prtTime) mut => VT.GetNextOutputTime(ref this, out prtTime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecOutputTimestamp self, out int64 prtTime) GetNextOutputTime;
			}
		}
		[CRepr]
		public struct IWMVideoDecoderReconBuffer : IUnknown
		{
			public const new Guid IID = .(0x45bda2ac, 0x88e2, 0x4923, 0x98, 0xba, 0x39, 0x49, 0x08, 0x07, 0x11, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetReconstructedVideoFrameSize(out uint32 pdwSize) mut => VT.GetReconstructedVideoFrameSize(ref this, out pdwSize);
			public HRESULT GetReconstructedVideoFrame(ref IMediaBuffer pBuf) mut => VT.GetReconstructedVideoFrame(ref this, ref pBuf);
			public HRESULT SetReconstructedVideoFrame(ref IMediaBuffer pBuf) mut => VT.SetReconstructedVideoFrame(ref this, ref pBuf);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMVideoDecoderReconBuffer self, out uint32 pdwSize) GetReconstructedVideoFrameSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMVideoDecoderReconBuffer self, ref IMediaBuffer pBuf) GetReconstructedVideoFrame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMVideoDecoderReconBuffer self, ref IMediaBuffer pBuf) SetReconstructedVideoFrame;
			}
		}
		[CRepr]
		public struct IWMCodecPrivateData : IUnknown
		{
			public const new Guid IID = .(0x73f0be8e, 0x57f7, 0x4f01, 0xaa, 0x66, 0x9f, 0x57, 0x34, 0x0c, 0xfe, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPartialOutputType(out DMO_MEDIA_TYPE pmt) mut => VT.SetPartialOutputType(ref this, out pmt);
			public HRESULT GetPrivateData(out uint8 pbData, out uint32 pcbData) mut => VT.GetPrivateData(ref this, out pbData, out pcbData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecPrivateData self, out DMO_MEDIA_TYPE pmt) SetPartialOutputType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecPrivateData self, out uint8 pbData, out uint32 pcbData) GetPrivateData;
			}
		}
		[CRepr]
		public struct IWMSampleExtensionSupport : IUnknown
		{
			public const new Guid IID = .(0x9bca9884, 0x0604, 0x4c2a, 0x87, 0xda, 0x79, 0x3f, 0xf4, 0xd5, 0x86, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetUseSampleExtensions(BOOL fUseExtensions) mut => VT.SetUseSampleExtensions(ref this, fUseExtensions);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSampleExtensionSupport self, BOOL fUseExtensions) SetUseSampleExtensions;
			}
		}
		[CRepr]
		public struct IWMResamplerProps : IUnknown
		{
			public const new Guid IID = .(0xe7e9984f, 0xf09f, 0x4da4, 0x90, 0x3f, 0x6e, 0x2e, 0x0e, 0xfe, 0x56, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetHalfFilterLength(int32 lhalfFilterLen) mut => VT.SetHalfFilterLength(ref this, lhalfFilterLen);
			public HRESULT SetUserChannelMtx(out float userChannelMtx) mut => VT.SetUserChannelMtx(ref this, out userChannelMtx);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMResamplerProps self, int32 lhalfFilterLen) SetHalfFilterLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMResamplerProps self, out float userChannelMtx) SetUserChannelMtx;
			}
		}
		[CRepr]
		public struct IWMResizerProps : IUnknown
		{
			public const new Guid IID = .(0x57665d4c, 0x0414, 0x4faa, 0x90, 0x5b, 0x10, 0xe5, 0x46, 0xf8, 0x1c, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetResizerQuality(int32 lquality) mut => VT.SetResizerQuality(ref this, lquality);
			public HRESULT SetInterlaceMode(int32 lmode) mut => VT.SetInterlaceMode(ref this, lmode);
			public HRESULT SetClipRegion(int32 lClipOriXSrc, int32 lClipOriYSrc, int32 lClipWidthSrc, int32 lClipHeightSrc) mut => VT.SetClipRegion(ref this, lClipOriXSrc, lClipOriYSrc, lClipWidthSrc, lClipHeightSrc);
			public HRESULT SetFullCropRegion(int32 lClipOriXSrc, int32 lClipOriYSrc, int32 lClipWidthSrc, int32 lClipHeightSrc, int32 lClipOriXDst, int32 lClipOriYDst, int32 lClipWidthDst, int32 lClipHeightDst) mut => VT.SetFullCropRegion(ref this, lClipOriXSrc, lClipOriYSrc, lClipWidthSrc, lClipHeightSrc, lClipOriXDst, lClipOriYDst, lClipWidthDst, lClipHeightDst);
			public HRESULT GetFullCropRegion(out int32 lClipOriXSrc, out int32 lClipOriYSrc, out int32 lClipWidthSrc, out int32 lClipHeightSrc, out int32 lClipOriXDst, out int32 lClipOriYDst, out int32 lClipWidthDst, out int32 lClipHeightDst) mut => VT.GetFullCropRegion(ref this, out lClipOriXSrc, out lClipOriYSrc, out lClipWidthSrc, out lClipHeightSrc, out lClipOriXDst, out lClipOriYDst, out lClipWidthDst, out lClipHeightDst);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMResizerProps self, int32 lquality) SetResizerQuality;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMResizerProps self, int32 lmode) SetInterlaceMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMResizerProps self, int32 lClipOriXSrc, int32 lClipOriYSrc, int32 lClipWidthSrc, int32 lClipHeightSrc) SetClipRegion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMResizerProps self, int32 lClipOriXSrc, int32 lClipOriYSrc, int32 lClipWidthSrc, int32 lClipHeightSrc, int32 lClipOriXDst, int32 lClipOriYDst, int32 lClipWidthDst, int32 lClipHeightDst) SetFullCropRegion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMResizerProps self, out int32 lClipOriXSrc, out int32 lClipOriYSrc, out int32 lClipWidthSrc, out int32 lClipHeightSrc, out int32 lClipOriXDst, out int32 lClipOriYDst, out int32 lClipWidthDst, out int32 lClipHeightDst) GetFullCropRegion;
			}
		}
		[CRepr]
		public struct IWMColorLegalizerProps : IUnknown
		{
			public const new Guid IID = .(0x776c93b3, 0xb72d, 0x4508, 0xb6, 0xd0, 0x20, 0x87, 0x85, 0xf5, 0x53, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetColorLegalizerQuality(int32 lquality) mut => VT.SetColorLegalizerQuality(ref this, lquality);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMColorLegalizerProps self, int32 lquality) SetColorLegalizerQuality;
			}
		}
		[CRepr]
		public struct IWMInterlaceProps : IUnknown
		{
			public const new Guid IID = .(0x7b12e5d1, 0xbd22, 0x48ea, 0xbc, 0x06, 0x98, 0xe8, 0x93, 0x22, 0x1c, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProcessType(int32 iProcessType) mut => VT.SetProcessType(ref this, iProcessType);
			public HRESULT SetInitInverseTeleCinePattern(int32 iInitPattern) mut => VT.SetInitInverseTeleCinePattern(ref this, iInitPattern);
			public HRESULT SetLastFrame() mut => VT.SetLastFrame(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMInterlaceProps self, int32 iProcessType) SetProcessType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMInterlaceProps self, int32 iInitPattern) SetInitInverseTeleCinePattern;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMInterlaceProps self) SetLastFrame;
			}
		}
		[CRepr]
		public struct IWMFrameInterpProps : IUnknown
		{
			public const new Guid IID = .(0x4c06bb9b, 0x626c, 0x4614, 0x83, 0x29, 0xcc, 0x6a, 0x21, 0xb9, 0x3f, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFrameRateIn(int32 lFrameRate, int32 lScale) mut => VT.SetFrameRateIn(ref this, lFrameRate, lScale);
			public HRESULT SetFrameRateOut(int32 lFrameRate, int32 lScale) mut => VT.SetFrameRateOut(ref this, lFrameRate, lScale);
			public HRESULT SetFrameInterpEnabled(BOOL bFIEnabled) mut => VT.SetFrameInterpEnabled(ref this, bFIEnabled);
			public HRESULT SetComplexityLevel(int32 iComplexity) mut => VT.SetComplexityLevel(ref this, iComplexity);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMFrameInterpProps self, int32 lFrameRate, int32 lScale) SetFrameRateIn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMFrameInterpProps self, int32 lFrameRate, int32 lScale) SetFrameRateOut;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMFrameInterpProps self, BOOL bFIEnabled) SetFrameInterpEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMFrameInterpProps self, int32 iComplexity) SetComplexityLevel;
			}
		}
		[CRepr]
		public struct IWMColorConvProps : IUnknown
		{
			public const new Guid IID = .(0xe6a49e22, 0xc099, 0x421d, 0xaa, 0xd3, 0xc0, 0x61, 0xfb, 0x4a, 0xe8, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMode(int32 lMode) mut => VT.SetMode(ref this, lMode);
			public HRESULT SetFullCroppingParam(int32 lSrcCropLeft, int32 lSrcCropTop, int32 lDstCropLeft, int32 lDstCropTop, int32 lCropWidth, int32 lCropHeight) mut => VT.SetFullCroppingParam(ref this, lSrcCropLeft, lSrcCropTop, lDstCropLeft, lDstCropTop, lCropWidth, lCropHeight);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMColorConvProps self, int32 lMode) SetMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMColorConvProps self, int32 lSrcCropLeft, int32 lSrcCropTop, int32 lDstCropLeft, int32 lDstCropTop, int32 lCropWidth, int32 lCropHeight) SetFullCroppingParam;
			}
		}
		[CRepr]
		public struct ITocEntry : IUnknown
		{
			public const new Guid IID = .(0xf22f5e06, 0x585c, 0x4def, 0x85, 0x23, 0x65, 0x55, 0xcf, 0xbc, 0x0c, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTitle(PWSTR pwszTitle) mut => VT.SetTitle(ref this, pwszTitle);
			public HRESULT GetTitle(out uint16 pwTitleSize, char16* pwszTitle) mut => VT.GetTitle(ref this, out pwTitleSize, pwszTitle);
			public HRESULT SetDescriptor(out TOC_ENTRY_DESCRIPTOR pDescriptor) mut => VT.SetDescriptor(ref this, out pDescriptor);
			public HRESULT GetDescriptor(out TOC_ENTRY_DESCRIPTOR pDescriptor) mut => VT.GetDescriptor(ref this, out pDescriptor);
			public HRESULT SetSubEntries(uint32 dwNumSubEntries, out uint16 pwSubEntryIndices) mut => VT.SetSubEntries(ref this, dwNumSubEntries, out pwSubEntryIndices);
			public HRESULT GetSubEntries(out uint32 pdwNumSubEntries, out uint16 pwSubEntryIndices) mut => VT.GetSubEntries(ref this, out pdwNumSubEntries, out pwSubEntryIndices);
			public HRESULT SetDescriptionData(uint32 dwDescriptionDataSize, out uint8 pbtDescriptionData, out Guid pguidType) mut => VT.SetDescriptionData(ref this, dwDescriptionDataSize, out pbtDescriptionData, out pguidType);
			public HRESULT GetDescriptionData(out uint32 pdwDescriptionDataSize, out uint8 pbtDescriptionData, out Guid pGuidType) mut => VT.GetDescriptionData(ref this, out pdwDescriptionDataSize, out pbtDescriptionData, out pGuidType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocEntry self, PWSTR pwszTitle) SetTitle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocEntry self, out uint16 pwTitleSize, char16* pwszTitle) GetTitle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocEntry self, out TOC_ENTRY_DESCRIPTOR pDescriptor) SetDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocEntry self, out TOC_ENTRY_DESCRIPTOR pDescriptor) GetDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocEntry self, uint32 dwNumSubEntries, out uint16 pwSubEntryIndices) SetSubEntries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocEntry self, out uint32 pdwNumSubEntries, out uint16 pwSubEntryIndices) GetSubEntries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocEntry self, uint32 dwDescriptionDataSize, out uint8 pbtDescriptionData, out Guid pguidType) SetDescriptionData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocEntry self, out uint32 pdwDescriptionDataSize, out uint8 pbtDescriptionData, out Guid pGuidType) GetDescriptionData;
			}
		}
		[CRepr]
		public struct ITocEntryList : IUnknown
		{
			public const new Guid IID = .(0x3a8cccbd, 0x0efd, 0x43a3, 0xb8, 0x38, 0xf3, 0x8a, 0x55, 0x2b, 0xa2, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEntryCount(out uint32 pdwEntryCount) mut => VT.GetEntryCount(ref this, out pdwEntryCount);
			public HRESULT GetEntryByIndex(uint32 dwEntryIndex, out ITocEntry* ppEntry) mut => VT.GetEntryByIndex(ref this, dwEntryIndex, out ppEntry);
			public HRESULT AddEntry(ref ITocEntry pEntry, out uint32 pdwEntryIndex) mut => VT.AddEntry(ref this, ref pEntry, out pdwEntryIndex);
			public HRESULT AddEntryByIndex(uint32 dwEntryIndex, ref ITocEntry pEntry) mut => VT.AddEntryByIndex(ref this, dwEntryIndex, ref pEntry);
			public HRESULT RemoveEntryByIndex(uint32 dwEntryIndex) mut => VT.RemoveEntryByIndex(ref this, dwEntryIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocEntryList self, out uint32 pdwEntryCount) GetEntryCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocEntryList self, uint32 dwEntryIndex, out ITocEntry* ppEntry) GetEntryByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocEntryList self, ref ITocEntry pEntry, out uint32 pdwEntryIndex) AddEntry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocEntryList self, uint32 dwEntryIndex, ref ITocEntry pEntry) AddEntryByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocEntryList self, uint32 dwEntryIndex) RemoveEntryByIndex;
			}
		}
		[CRepr]
		public struct IToc : IUnknown
		{
			public const new Guid IID = .(0xd6f05441, 0xa919, 0x423b, 0x91, 0xa0, 0x89, 0xd5, 0xb4, 0xa8, 0xab, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDescriptor(out TOC_DESCRIPTOR pDescriptor) mut => VT.SetDescriptor(ref this, out pDescriptor);
			public HRESULT GetDescriptor(out TOC_DESCRIPTOR pDescriptor) mut => VT.GetDescriptor(ref this, out pDescriptor);
			public HRESULT SetDescription(PWSTR pwszDescription) mut => VT.SetDescription(ref this, pwszDescription);
			public HRESULT GetDescription(out uint16 pwDescriptionSize, char16* pwszDescription) mut => VT.GetDescription(ref this, out pwDescriptionSize, pwszDescription);
			public HRESULT SetContext(uint32 dwContextSize, out uint8 pbtContext) mut => VT.SetContext(ref this, dwContextSize, out pbtContext);
			public HRESULT GetContext(out uint32 pdwContextSize, out uint8 pbtContext) mut => VT.GetContext(ref this, out pdwContextSize, out pbtContext);
			public HRESULT GetEntryListCount(out uint16 pwCount) mut => VT.GetEntryListCount(ref this, out pwCount);
			public HRESULT GetEntryListByIndex(uint16 wEntryListIndex, out ITocEntryList* ppEntryList) mut => VT.GetEntryListByIndex(ref this, wEntryListIndex, out ppEntryList);
			public HRESULT AddEntryList(ref ITocEntryList pEntryList, out uint16 pwEntryListIndex) mut => VT.AddEntryList(ref this, ref pEntryList, out pwEntryListIndex);
			public HRESULT AddEntryListByIndex(uint16 wEntryListIndex, ref ITocEntryList pEntryList) mut => VT.AddEntryListByIndex(ref this, wEntryListIndex, ref pEntryList);
			public HRESULT RemoveEntryListByIndex(uint16 wEntryListIndex) mut => VT.RemoveEntryListByIndex(ref this, wEntryListIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToc self, out TOC_DESCRIPTOR pDescriptor) SetDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToc self, out TOC_DESCRIPTOR pDescriptor) GetDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToc self, PWSTR pwszDescription) SetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToc self, out uint16 pwDescriptionSize, char16* pwszDescription) GetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToc self, uint32 dwContextSize, out uint8 pbtContext) SetContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToc self, out uint32 pdwContextSize, out uint8 pbtContext) GetContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToc self, out uint16 pwCount) GetEntryListCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToc self, uint16 wEntryListIndex, out ITocEntryList* ppEntryList) GetEntryListByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToc self, ref ITocEntryList pEntryList, out uint16 pwEntryListIndex) AddEntryList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToc self, uint16 wEntryListIndex, ref ITocEntryList pEntryList) AddEntryListByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToc self, uint16 wEntryListIndex) RemoveEntryListByIndex;
			}
		}
		[CRepr]
		public struct ITocCollection : IUnknown
		{
			public const new Guid IID = .(0x23fee831, 0xae96, 0x42df, 0xb1, 0x70, 0x25, 0xa0, 0x48, 0x47, 0xa3, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEntryCount(out uint32 pdwEntryCount) mut => VT.GetEntryCount(ref this, out pdwEntryCount);
			public HRESULT GetEntryByIndex(uint32 dwEntryIndex, out IToc* ppToc) mut => VT.GetEntryByIndex(ref this, dwEntryIndex, out ppToc);
			public HRESULT AddEntry(ref IToc pToc, out uint32 pdwEntryIndex) mut => VT.AddEntry(ref this, ref pToc, out pdwEntryIndex);
			public HRESULT AddEntryByIndex(uint32 dwEntryIndex, ref IToc pToc) mut => VT.AddEntryByIndex(ref this, dwEntryIndex, ref pToc);
			public HRESULT RemoveEntryByIndex(uint32 dwEntryIndex) mut => VT.RemoveEntryByIndex(ref this, dwEntryIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocCollection self, out uint32 pdwEntryCount) GetEntryCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocCollection self, uint32 dwEntryIndex, out IToc* ppToc) GetEntryByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocCollection self, ref IToc pToc, out uint32 pdwEntryIndex) AddEntry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocCollection self, uint32 dwEntryIndex, ref IToc pToc) AddEntryByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocCollection self, uint32 dwEntryIndex) RemoveEntryByIndex;
			}
		}
		[CRepr]
		public struct ITocParser : IUnknown
		{
			public const new Guid IID = .(0xecfb9a55, 0x9298, 0x4f49, 0x88, 0x7f, 0x0b, 0x36, 0x20, 0x65, 0x99, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(PWSTR pwszFileName) mut => VT.Init(ref this, pwszFileName);
			public HRESULT GetTocCount(TOC_POS_TYPE enumTocPosType, out uint32 pdwTocCount) mut => VT.GetTocCount(ref this, enumTocPosType, out pdwTocCount);
			public HRESULT GetTocByIndex(TOC_POS_TYPE enumTocPosType, uint32 dwTocIndex, out IToc* ppToc) mut => VT.GetTocByIndex(ref this, enumTocPosType, dwTocIndex, out ppToc);
			public HRESULT GetTocByType(TOC_POS_TYPE enumTocPosType, Guid guidTocType, out ITocCollection* ppTocs) mut => VT.GetTocByType(ref this, enumTocPosType, guidTocType, out ppTocs);
			public HRESULT AddToc(TOC_POS_TYPE enumTocPosType, ref IToc pToc, out uint32 pdwTocIndex) mut => VT.AddToc(ref this, enumTocPosType, ref pToc, out pdwTocIndex);
			public HRESULT RemoveTocByIndex(TOC_POS_TYPE enumTocPosType, uint32 dwTocIndex) mut => VT.RemoveTocByIndex(ref this, enumTocPosType, dwTocIndex);
			public HRESULT RemoveTocByType(TOC_POS_TYPE enumTocPosType, Guid guidTocType) mut => VT.RemoveTocByType(ref this, enumTocPosType, guidTocType);
			public HRESULT Commit() mut => VT.Commit(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocParser self, PWSTR pwszFileName) Init;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocParser self, TOC_POS_TYPE enumTocPosType, out uint32 pdwTocCount) GetTocCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocParser self, TOC_POS_TYPE enumTocPosType, uint32 dwTocIndex, out IToc* ppToc) GetTocByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocParser self, TOC_POS_TYPE enumTocPosType, Guid guidTocType, out ITocCollection* ppTocs) GetTocByType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocParser self, TOC_POS_TYPE enumTocPosType, ref IToc pToc, out uint32 pdwTocIndex) AddToc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocParser self, TOC_POS_TYPE enumTocPosType, uint32 dwTocIndex) RemoveTocByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocParser self, TOC_POS_TYPE enumTocPosType, Guid guidTocType) RemoveTocByType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITocParser self) Commit;
			}
		}
		[CRepr]
		public struct IFileIo : IUnknown
		{
			public const new Guid IID = .(0x11993196, 0x1244, 0x4840, 0xab, 0x44, 0x48, 0x09, 0x75, 0xc4, 0xff, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(FILE_ACCESSMODE eAccessMode, FILE_OPENMODE eOpenMode, PWSTR pwszFileName) mut => VT.Initialize(ref this, eAccessMode, eOpenMode, pwszFileName);
			public HRESULT GetLength(out uint64 pqwLength) mut => VT.GetLength(ref this, out pqwLength);
			public HRESULT SetLength(uint64 qwLength) mut => VT.SetLength(ref this, qwLength);
			public HRESULT GetCurrentPosition(out uint64 pqwPosition) mut => VT.GetCurrentPosition(ref this, out pqwPosition);
			public HRESULT SetCurrentPosition(uint64 qwPosition) mut => VT.SetCurrentPosition(ref this, qwPosition);
			public HRESULT IsEndOfStream(out BOOL pbEndOfStream) mut => VT.IsEndOfStream(ref this, out pbEndOfStream);
			public HRESULT Read(out uint8 pbt, uint32 ul, out uint32 pulRead) mut => VT.Read(ref this, out pbt, ul, out pulRead);
			public HRESULT Write(out uint8 pbt, uint32 ul, out uint32 pulWritten) mut => VT.Write(ref this, out pbt, ul, out pulWritten);
			public HRESULT Seek(SEEK_ORIGIN eSeekOrigin, uint64 qwSeekOffset, uint32 dwSeekFlags, out uint64 pqwCurrentPosition) mut => VT.Seek(ref this, eSeekOrigin, qwSeekOffset, dwSeekFlags, out pqwCurrentPosition);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIo self, FILE_ACCESSMODE eAccessMode, FILE_OPENMODE eOpenMode, PWSTR pwszFileName) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIo self, out uint64 pqwLength) GetLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIo self, uint64 qwLength) SetLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIo self, out uint64 pqwPosition) GetCurrentPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIo self, uint64 qwPosition) SetCurrentPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIo self, out BOOL pbEndOfStream) IsEndOfStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIo self, out uint8 pbt, uint32 ul, out uint32 pulRead) Read;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIo self, out uint8 pbt, uint32 ul, out uint32 pulWritten) Write;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIo self, SEEK_ORIGIN eSeekOrigin, uint64 qwSeekOffset, uint32 dwSeekFlags, out uint64 pqwCurrentPosition) Seek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIo self) Close;
			}
		}
		[CRepr]
		public struct IFileClient : IUnknown
		{
			public const new Guid IID = .(0xbfccd196, 0x1244, 0x4840, 0xab, 0x44, 0x48, 0x09, 0x75, 0xc4, 0xff, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObjectDiskSize(out uint64 pqwSize) mut => VT.GetObjectDiskSize(ref this, out pqwSize);
			public HRESULT Write(ref IFileIo pFio) mut => VT.Write(ref this, ref pFio);
			public HRESULT Read(ref IFileIo pFio) mut => VT.Read(ref this, ref pFio);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileClient self, out uint64 pqwSize) GetObjectDiskSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileClient self, ref IFileIo pFio) Write;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileClient self, ref IFileIo pFio) Read;
			}
		}
		[CRepr]
		public struct IClusterDetector : IUnknown
		{
			public const new Guid IID = .(0x3f07f7b7, 0xc680, 0x41d9, 0x94, 0x23, 0x91, 0x51, 0x07, 0xec, 0x9f, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(uint16 wBaseEntryLevel, uint16 wClusterEntryLevel) mut => VT.Initialize(ref this, wBaseEntryLevel, wClusterEntryLevel);
			public HRESULT Detect(uint32 dwMaxNumClusters, float fMinClusterDuration, float fMaxClusterDuration, ref IToc pSrcToc, out IToc* ppDstToc) mut => VT.Detect(ref this, dwMaxNumClusters, fMinClusterDuration, fMaxClusterDuration, ref pSrcToc, out ppDstToc);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IClusterDetector self, uint16 wBaseEntryLevel, uint16 wClusterEntryLevel) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IClusterDetector self, uint32 dwMaxNumClusters, float fMinClusterDuration, float fMaxClusterDuration, ref IToc pSrcToc, out IToc* ppDstToc) Detect;
			}
		}
		[CRepr]
		public struct IDXVAHD_Device : IUnknown
		{
			public const new Guid IID = .(0x95f12dfd, 0xd77e, 0x49be, 0x81, 0x5f, 0x57, 0xd5, 0x79, 0x63, 0x4d, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateVideoSurface(uint32 Width, uint32 Height, D3DFORMAT Format, D3DPOOL Pool, uint32 Usage, DXVAHD_SURFACE_TYPE Type, uint32 NumSurfaces, IDirect3DSurface9** ppSurfaces, HANDLE* pSharedHandle) mut => VT.CreateVideoSurface(ref this, Width, Height, Format, Pool, Usage, Type, NumSurfaces, ppSurfaces, pSharedHandle);
			public HRESULT GetVideoProcessorDeviceCaps(out DXVAHD_VPDEVCAPS pCaps) mut => VT.GetVideoProcessorDeviceCaps(ref this, out pCaps);
			public HRESULT GetVideoProcessorOutputFormats(uint32 Count, D3DFORMAT* pFormats) mut => VT.GetVideoProcessorOutputFormats(ref this, Count, pFormats);
			public HRESULT GetVideoProcessorInputFormats(uint32 Count, D3DFORMAT* pFormats) mut => VT.GetVideoProcessorInputFormats(ref this, Count, pFormats);
			public HRESULT GetVideoProcessorCaps(uint32 Count, DXVAHD_VPCAPS* pCaps) mut => VT.GetVideoProcessorCaps(ref this, Count, pCaps);
			public HRESULT GetVideoProcessorCustomRates(in Guid pVPGuid, uint32 Count, DXVAHD_CUSTOM_RATE_DATA* pRates) mut => VT.GetVideoProcessorCustomRates(ref this, pVPGuid, Count, pRates);
			public HRESULT GetVideoProcessorFilterRange(DXVAHD_FILTER Filter, out DXVAHD_FILTER_RANGE_DATA pRange) mut => VT.GetVideoProcessorFilterRange(ref this, Filter, out pRange);
			public HRESULT CreateVideoProcessor(in Guid pVPGuid, out IDXVAHD_VideoProcessor* ppVideoProcessor) mut => VT.CreateVideoProcessor(ref this, pVPGuid, out ppVideoProcessor);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXVAHD_Device self, uint32 Width, uint32 Height, D3DFORMAT Format, D3DPOOL Pool, uint32 Usage, DXVAHD_SURFACE_TYPE Type, uint32 NumSurfaces, IDirect3DSurface9** ppSurfaces, HANDLE* pSharedHandle) CreateVideoSurface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXVAHD_Device self, out DXVAHD_VPDEVCAPS pCaps) GetVideoProcessorDeviceCaps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXVAHD_Device self, uint32 Count, D3DFORMAT* pFormats) GetVideoProcessorOutputFormats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXVAHD_Device self, uint32 Count, D3DFORMAT* pFormats) GetVideoProcessorInputFormats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXVAHD_Device self, uint32 Count, DXVAHD_VPCAPS* pCaps) GetVideoProcessorCaps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXVAHD_Device self, in Guid pVPGuid, uint32 Count, DXVAHD_CUSTOM_RATE_DATA* pRates) GetVideoProcessorCustomRates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXVAHD_Device self, DXVAHD_FILTER Filter, out DXVAHD_FILTER_RANGE_DATA pRange) GetVideoProcessorFilterRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXVAHD_Device self, in Guid pVPGuid, out IDXVAHD_VideoProcessor* ppVideoProcessor) CreateVideoProcessor;
			}
		}
		[CRepr]
		public struct IDXVAHD_VideoProcessor : IUnknown
		{
			public const new Guid IID = .(0x95f4edf4, 0x6e03, 0x4cd7, 0xbe, 0x1b, 0x30, 0x75, 0xd6, 0x65, 0xaa, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetVideoProcessBltState(DXVAHD_BLT_STATE State, uint32 DataSize, void* pData) mut => VT.SetVideoProcessBltState(ref this, State, DataSize, pData);
			public HRESULT GetVideoProcessBltState(DXVAHD_BLT_STATE State, uint32 DataSize, void* pData) mut => VT.GetVideoProcessBltState(ref this, State, DataSize, pData);
			public HRESULT SetVideoProcessStreamState(uint32 StreamNumber, DXVAHD_STREAM_STATE State, uint32 DataSize, void* pData) mut => VT.SetVideoProcessStreamState(ref this, StreamNumber, State, DataSize, pData);
			public HRESULT GetVideoProcessStreamState(uint32 StreamNumber, DXVAHD_STREAM_STATE State, uint32 DataSize, void* pData) mut => VT.GetVideoProcessStreamState(ref this, StreamNumber, State, DataSize, pData);
			public HRESULT VideoProcessBltHD(ref IDirect3DSurface9 pOutputSurface, uint32 OutputFrame, uint32 StreamCount, DXVAHD_STREAM_DATA* pStreams) mut => VT.VideoProcessBltHD(ref this, ref pOutputSurface, OutputFrame, StreamCount, pStreams);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXVAHD_VideoProcessor self, DXVAHD_BLT_STATE State, uint32 DataSize, void* pData) SetVideoProcessBltState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXVAHD_VideoProcessor self, DXVAHD_BLT_STATE State, uint32 DataSize, void* pData) GetVideoProcessBltState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXVAHD_VideoProcessor self, uint32 StreamNumber, DXVAHD_STREAM_STATE State, uint32 DataSize, void* pData) SetVideoProcessStreamState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXVAHD_VideoProcessor self, uint32 StreamNumber, DXVAHD_STREAM_STATE State, uint32 DataSize, void* pData) GetVideoProcessStreamState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXVAHD_VideoProcessor self, ref IDirect3DSurface9 pOutputSurface, uint32 OutputFrame, uint32 StreamCount, DXVAHD_STREAM_DATA* pStreams) VideoProcessBltHD;
			}
		}
		[CRepr]
		public struct IDirect3DDeviceManager9 : IUnknown
		{
			public const new Guid IID = .(0xa0cade0f, 0x06d5, 0x4cf4, 0xa1, 0xc7, 0xf3, 0xcd, 0xd7, 0x25, 0xaa, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ResetDevice(ref IDirect3DDevice9 pDevice, uint32 resetToken) mut => VT.ResetDevice(ref this, ref pDevice, resetToken);
			public HRESULT OpenDeviceHandle(out HANDLE phDevice) mut => VT.OpenDeviceHandle(ref this, out phDevice);
			public HRESULT CloseDeviceHandle(HANDLE hDevice) mut => VT.CloseDeviceHandle(ref this, hDevice);
			public HRESULT TestDevice(HANDLE hDevice) mut => VT.TestDevice(ref this, hDevice);
			public HRESULT LockDevice(HANDLE hDevice, out IDirect3DDevice9* ppDevice, BOOL fBlock) mut => VT.LockDevice(ref this, hDevice, out ppDevice, fBlock);
			public HRESULT UnlockDevice(HANDLE hDevice, BOOL fSaveState) mut => VT.UnlockDevice(ref this, hDevice, fSaveState);
			public HRESULT GetVideoService(HANDLE hDevice, in Guid riid, void** ppService) mut => VT.GetVideoService(ref this, hDevice, riid, ppService);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDeviceManager9 self, ref IDirect3DDevice9 pDevice, uint32 resetToken) ResetDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDeviceManager9 self, out HANDLE phDevice) OpenDeviceHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDeviceManager9 self, HANDLE hDevice) CloseDeviceHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDeviceManager9 self, HANDLE hDevice) TestDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDeviceManager9 self, HANDLE hDevice, out IDirect3DDevice9* ppDevice, BOOL fBlock) LockDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDeviceManager9 self, HANDLE hDevice, BOOL fSaveState) UnlockDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDeviceManager9 self, HANDLE hDevice, in Guid riid, void** ppService) GetVideoService;
			}
		}
		[CRepr]
		public struct IDirectXVideoAccelerationService : IUnknown
		{
			public const new Guid IID = .(0xfc51a550, 0xd5e7, 0x11d9, 0xaf, 0x55, 0x00, 0x05, 0x4e, 0x43, 0xff, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSurface(uint32 Width, uint32 Height, uint32 BackBuffers, D3DFORMAT Format, D3DPOOL Pool, uint32 Usage, DXVA2_VideoRenderTargetType DxvaType, out IDirect3DSurface9* ppSurface, HANDLE* pSharedHandle) mut => VT.CreateSurface(ref this, Width, Height, BackBuffers, Format, Pool, Usage, DxvaType, out ppSurface, pSharedHandle);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoAccelerationService self, uint32 Width, uint32 Height, uint32 BackBuffers, D3DFORMAT Format, D3DPOOL Pool, uint32 Usage, DXVA2_VideoRenderTargetType DxvaType, out IDirect3DSurface9* ppSurface, HANDLE* pSharedHandle) CreateSurface;
			}
		}
		[CRepr]
		public struct IDirectXVideoDecoderService : IDirectXVideoAccelerationService
		{
			public const new Guid IID = .(0xfc51a551, 0xd5e7, 0x11d9, 0xaf, 0x55, 0x00, 0x05, 0x4e, 0x43, 0xff, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDecoderDeviceGuids(out uint32 pCount, Guid** pGuids) mut => VT.GetDecoderDeviceGuids(ref this, out pCount, pGuids);
			public HRESULT GetDecoderRenderTargets(in Guid Guid, out uint32 pCount, D3DFORMAT** pFormats) mut => VT.GetDecoderRenderTargets(ref this, Guid, out pCount, pFormats);
			public HRESULT GetDecoderConfigurations(in Guid Guid, in DXVA2_VideoDesc pVideoDesc, void* pReserved, out uint32 pCount, DXVA2_ConfigPictureDecode** ppConfigs) mut => VT.GetDecoderConfigurations(ref this, Guid, pVideoDesc, pReserved, out pCount, ppConfigs);
			public HRESULT CreateVideoDecoder(in Guid Guid, in DXVA2_VideoDesc pVideoDesc, in DXVA2_ConfigPictureDecode pConfig, IDirect3DSurface9** ppDecoderRenderTargets, uint32 NumRenderTargets, out IDirectXVideoDecoder* ppDecode) mut => VT.CreateVideoDecoder(ref this, Guid, pVideoDesc, pConfig, ppDecoderRenderTargets, NumRenderTargets, out ppDecode);

			[CRepr]
			public struct VTable : IDirectXVideoAccelerationService.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoDecoderService self, out uint32 pCount, Guid** pGuids) GetDecoderDeviceGuids;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoDecoderService self, in Guid Guid, out uint32 pCount, D3DFORMAT** pFormats) GetDecoderRenderTargets;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoDecoderService self, in Guid Guid, in DXVA2_VideoDesc pVideoDesc, void* pReserved, out uint32 pCount, DXVA2_ConfigPictureDecode** ppConfigs) GetDecoderConfigurations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoDecoderService self, in Guid Guid, in DXVA2_VideoDesc pVideoDesc, in DXVA2_ConfigPictureDecode pConfig, IDirect3DSurface9** ppDecoderRenderTargets, uint32 NumRenderTargets, out IDirectXVideoDecoder* ppDecode) CreateVideoDecoder;
			}
		}
		[CRepr]
		public struct IDirectXVideoProcessorService : IDirectXVideoAccelerationService
		{
			public const new Guid IID = .(0xfc51a552, 0xd5e7, 0x11d9, 0xaf, 0x55, 0x00, 0x05, 0x4e, 0x43, 0xff, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterVideoProcessorSoftwareDevice(void* pCallbacks) mut => VT.RegisterVideoProcessorSoftwareDevice(ref this, pCallbacks);
			public HRESULT GetVideoProcessorDeviceGuids(in DXVA2_VideoDesc pVideoDesc, out uint32 pCount, Guid** pGuids) mut => VT.GetVideoProcessorDeviceGuids(ref this, pVideoDesc, out pCount, pGuids);
			public HRESULT GetVideoProcessorRenderTargets(in Guid VideoProcDeviceGuid, in DXVA2_VideoDesc pVideoDesc, out uint32 pCount, D3DFORMAT** pFormats) mut => VT.GetVideoProcessorRenderTargets(ref this, VideoProcDeviceGuid, pVideoDesc, out pCount, pFormats);
			public HRESULT GetVideoProcessorSubStreamFormats(in Guid VideoProcDeviceGuid, in DXVA2_VideoDesc pVideoDesc, D3DFORMAT RenderTargetFormat, out uint32 pCount, D3DFORMAT** pFormats) mut => VT.GetVideoProcessorSubStreamFormats(ref this, VideoProcDeviceGuid, pVideoDesc, RenderTargetFormat, out pCount, pFormats);
			public HRESULT GetVideoProcessorCaps(in Guid VideoProcDeviceGuid, in DXVA2_VideoDesc pVideoDesc, D3DFORMAT RenderTargetFormat, out DXVA2_VideoProcessorCaps pCaps) mut => VT.GetVideoProcessorCaps(ref this, VideoProcDeviceGuid, pVideoDesc, RenderTargetFormat, out pCaps);
			public HRESULT GetProcAmpRange(in Guid VideoProcDeviceGuid, in DXVA2_VideoDesc pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 ProcAmpCap, out DXVA2_ValueRange pRange) mut => VT.GetProcAmpRange(ref this, VideoProcDeviceGuid, pVideoDesc, RenderTargetFormat, ProcAmpCap, out pRange);
			public HRESULT GetFilterPropertyRange(in Guid VideoProcDeviceGuid, in DXVA2_VideoDesc pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 FilterSetting, out DXVA2_ValueRange pRange) mut => VT.GetFilterPropertyRange(ref this, VideoProcDeviceGuid, pVideoDesc, RenderTargetFormat, FilterSetting, out pRange);
			public HRESULT CreateVideoProcessor(in Guid VideoProcDeviceGuid, in DXVA2_VideoDesc pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 MaxNumSubStreams, out IDirectXVideoProcessor* ppVidProcess) mut => VT.CreateVideoProcessor(ref this, VideoProcDeviceGuid, pVideoDesc, RenderTargetFormat, MaxNumSubStreams, out ppVidProcess);

			[CRepr]
			public struct VTable : IDirectXVideoAccelerationService.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessorService self, void* pCallbacks) RegisterVideoProcessorSoftwareDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessorService self, in DXVA2_VideoDesc pVideoDesc, out uint32 pCount, Guid** pGuids) GetVideoProcessorDeviceGuids;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessorService self, in Guid VideoProcDeviceGuid, in DXVA2_VideoDesc pVideoDesc, out uint32 pCount, D3DFORMAT** pFormats) GetVideoProcessorRenderTargets;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessorService self, in Guid VideoProcDeviceGuid, in DXVA2_VideoDesc pVideoDesc, D3DFORMAT RenderTargetFormat, out uint32 pCount, D3DFORMAT** pFormats) GetVideoProcessorSubStreamFormats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessorService self, in Guid VideoProcDeviceGuid, in DXVA2_VideoDesc pVideoDesc, D3DFORMAT RenderTargetFormat, out DXVA2_VideoProcessorCaps pCaps) GetVideoProcessorCaps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessorService self, in Guid VideoProcDeviceGuid, in DXVA2_VideoDesc pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 ProcAmpCap, out DXVA2_ValueRange pRange) GetProcAmpRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessorService self, in Guid VideoProcDeviceGuid, in DXVA2_VideoDesc pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 FilterSetting, out DXVA2_ValueRange pRange) GetFilterPropertyRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessorService self, in Guid VideoProcDeviceGuid, in DXVA2_VideoDesc pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 MaxNumSubStreams, out IDirectXVideoProcessor* ppVidProcess) CreateVideoProcessor;
			}
		}
		[CRepr]
		public struct IDirectXVideoDecoder : IUnknown
		{
			public const new Guid IID = .(0xf2b0810a, 0xfd00, 0x43c9, 0x91, 0x8c, 0xdf, 0x94, 0xe2, 0xd8, 0xef, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVideoDecoderService(out IDirectXVideoDecoderService* ppService) mut => VT.GetVideoDecoderService(ref this, out ppService);
			public HRESULT GetCreationParameters(Guid* pDeviceGuid, DXVA2_VideoDesc* pVideoDesc, DXVA2_ConfigPictureDecode* pConfig, IDirect3DSurface9*** pDecoderRenderTargets, uint32* pNumSurfaces) mut => VT.GetCreationParameters(ref this, pDeviceGuid, pVideoDesc, pConfig, pDecoderRenderTargets, pNumSurfaces);
			public HRESULT GetBuffer(DXVA2_BufferfType BufferType, void** ppBuffer, out uint32 pBufferSize) mut => VT.GetBuffer(ref this, BufferType, ppBuffer, out pBufferSize);
			public HRESULT ReleaseBuffer(uint32 BufferType) mut => VT.ReleaseBuffer(ref this, BufferType);
			public HRESULT BeginFrame(ref IDirect3DSurface9 pRenderTarget, void* pvPVPData) mut => VT.BeginFrame(ref this, ref pRenderTarget, pvPVPData);
			public HRESULT EndFrame(HANDLE* pHandleComplete) mut => VT.EndFrame(ref this, pHandleComplete);
			public HRESULT Execute(in DXVA2_DecodeExecuteParams pExecuteParams) mut => VT.Execute(ref this, pExecuteParams);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoDecoder self, out IDirectXVideoDecoderService* ppService) GetVideoDecoderService;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoDecoder self, Guid* pDeviceGuid, DXVA2_VideoDesc* pVideoDesc, DXVA2_ConfigPictureDecode* pConfig, IDirect3DSurface9*** pDecoderRenderTargets, uint32* pNumSurfaces) GetCreationParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoDecoder self, DXVA2_BufferfType BufferType, void** ppBuffer, out uint32 pBufferSize) GetBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoDecoder self, uint32 BufferType) ReleaseBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoDecoder self, ref IDirect3DSurface9 pRenderTarget, void* pvPVPData) BeginFrame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoDecoder self, HANDLE* pHandleComplete) EndFrame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoDecoder self, in DXVA2_DecodeExecuteParams pExecuteParams) Execute;
			}
		}
		[CRepr]
		public struct IDirectXVideoProcessor : IUnknown
		{
			public const new Guid IID = .(0x8c3a39f0, 0x916e, 0x4690, 0x80, 0x4f, 0x4c, 0x80, 0x01, 0x35, 0x5d, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVideoProcessorService(out IDirectXVideoProcessorService* ppService) mut => VT.GetVideoProcessorService(ref this, out ppService);
			public HRESULT GetCreationParameters(Guid* pDeviceGuid, DXVA2_VideoDesc* pVideoDesc, D3DFORMAT* pRenderTargetFormat, uint32* pMaxNumSubStreams) mut => VT.GetCreationParameters(ref this, pDeviceGuid, pVideoDesc, pRenderTargetFormat, pMaxNumSubStreams);
			public HRESULT GetVideoProcessorCaps(out DXVA2_VideoProcessorCaps pCaps) mut => VT.GetVideoProcessorCaps(ref this, out pCaps);
			public HRESULT GetProcAmpRange(uint32 ProcAmpCap, out DXVA2_ValueRange pRange) mut => VT.GetProcAmpRange(ref this, ProcAmpCap, out pRange);
			public HRESULT GetFilterPropertyRange(uint32 FilterSetting, out DXVA2_ValueRange pRange) mut => VT.GetFilterPropertyRange(ref this, FilterSetting, out pRange);
			public HRESULT VideoProcessBlt(ref IDirect3DSurface9 pRenderTarget, in DXVA2_VideoProcessBltParams pBltParams, DXVA2_VideoSample* pSamples, uint32 NumSamples, HANDLE* pHandleComplete) mut => VT.VideoProcessBlt(ref this, ref pRenderTarget, pBltParams, pSamples, NumSamples, pHandleComplete);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessor self, out IDirectXVideoProcessorService* ppService) GetVideoProcessorService;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessor self, Guid* pDeviceGuid, DXVA2_VideoDesc* pVideoDesc, D3DFORMAT* pRenderTargetFormat, uint32* pMaxNumSubStreams) GetCreationParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessor self, out DXVA2_VideoProcessorCaps pCaps) GetVideoProcessorCaps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessor self, uint32 ProcAmpCap, out DXVA2_ValueRange pRange) GetProcAmpRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessor self, uint32 FilterSetting, out DXVA2_ValueRange pRange) GetFilterPropertyRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoProcessor self, ref IDirect3DSurface9 pRenderTarget, in DXVA2_VideoProcessBltParams pBltParams, DXVA2_VideoSample* pSamples, uint32 NumSamples, HANDLE* pHandleComplete) VideoProcessBlt;
			}
		}
		[CRepr]
		public struct IDirectXVideoMemoryConfiguration : IUnknown
		{
			public const new Guid IID = .(0xb7f916dd, 0xdb3b, 0x49c1, 0x84, 0xd7, 0xe4, 0x5e, 0xf9, 0x9e, 0xc7, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAvailableSurfaceTypeByIndex(uint32 dwTypeIndex, out DXVA2_SurfaceType pdwType) mut => VT.GetAvailableSurfaceTypeByIndex(ref this, dwTypeIndex, out pdwType);
			public HRESULT SetSurfaceType(DXVA2_SurfaceType dwType) mut => VT.SetSurfaceType(ref this, dwType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoMemoryConfiguration self, uint32 dwTypeIndex, out DXVA2_SurfaceType pdwType) GetAvailableSurfaceTypeByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectXVideoMemoryConfiguration self, DXVA2_SurfaceType dwType) SetSurfaceType;
			}
		}
		[CRepr]
		public struct IOPMVideoOutput : IUnknown
		{
			public const new Guid IID = .(0x0a15159d, 0x41c7, 0x4456, 0x93, 0xe1, 0x28, 0x4c, 0xd6, 0x1d, 0x4e, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartInitialization(out OPM_RANDOM_NUMBER prnRandomNumber, out uint8* ppbCertificate, out uint32 pulCertificateLength) mut => VT.StartInitialization(ref this, out prnRandomNumber, out ppbCertificate, out pulCertificateLength);
			public HRESULT FinishInitialization(in OPM_ENCRYPTED_INITIALIZATION_PARAMETERS pParameters) mut => VT.FinishInitialization(ref this, pParameters);
			public HRESULT GetInformation(in OPM_GET_INFO_PARAMETERS pParameters, out OPM_REQUESTED_INFORMATION pRequestedInformation) mut => VT.GetInformation(ref this, pParameters, out pRequestedInformation);
			public HRESULT COPPCompatibleGetInformation(in OPM_COPP_COMPATIBLE_GET_INFO_PARAMETERS pParameters, out OPM_REQUESTED_INFORMATION pRequestedInformation) mut => VT.COPPCompatibleGetInformation(ref this, pParameters, out pRequestedInformation);
			public HRESULT Configure(in OPM_CONFIGURE_PARAMETERS pParameters, uint32 ulAdditionalParametersSize, uint8* pbAdditionalParameters) mut => VT.Configure(ref this, pParameters, ulAdditionalParametersSize, pbAdditionalParameters);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOPMVideoOutput self, out OPM_RANDOM_NUMBER prnRandomNumber, out uint8* ppbCertificate, out uint32 pulCertificateLength) StartInitialization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOPMVideoOutput self, in OPM_ENCRYPTED_INITIALIZATION_PARAMETERS pParameters) FinishInitialization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOPMVideoOutput self, in OPM_GET_INFO_PARAMETERS pParameters, out OPM_REQUESTED_INFORMATION pRequestedInformation) GetInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOPMVideoOutput self, in OPM_COPP_COMPATIBLE_GET_INFO_PARAMETERS pParameters, out OPM_REQUESTED_INFORMATION pRequestedInformation) COPPCompatibleGetInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOPMVideoOutput self, in OPM_CONFIGURE_PARAMETERS pParameters, uint32 ulAdditionalParametersSize, uint8* pbAdditionalParameters) Configure;
			}
		}
		[CRepr]
		public struct IMFAttributes : IUnknown
		{
			public const new Guid IID = .(0x2cd2d921, 0xc447, 0x44a7, 0xa1, 0x3c, 0x4a, 0xda, 0xbf, 0xc2, 0x47, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItem(in Guid guidKey, PROPVARIANT* pValue) mut => VT.GetItem(ref this, guidKey, pValue);
			public HRESULT GetItemType(in Guid guidKey, out MF_ATTRIBUTE_TYPE pType) mut => VT.GetItemType(ref this, guidKey, out pType);
			public HRESULT CompareItem(in Guid guidKey, in PROPVARIANT Value, out BOOL pbResult) mut => VT.CompareItem(ref this, guidKey, Value, out pbResult);
			public HRESULT Compare(IMFAttributes* pTheirs, MF_ATTRIBUTES_MATCH_TYPE MatchType, out BOOL pbResult) mut => VT.Compare(ref this, pTheirs, MatchType, out pbResult);
			public HRESULT GetUINT32(in Guid guidKey, out uint32 punValue) mut => VT.GetUINT32(ref this, guidKey, out punValue);
			public HRESULT GetUINT64(in Guid guidKey, out uint64 punValue) mut => VT.GetUINT64(ref this, guidKey, out punValue);
			public HRESULT GetDouble(in Guid guidKey, out double pfValue) mut => VT.GetDouble(ref this, guidKey, out pfValue);
			public HRESULT GetGUID(in Guid guidKey, out Guid pguidValue) mut => VT.GetGUID(ref this, guidKey, out pguidValue);
			public HRESULT GetStringLength(in Guid guidKey, out uint32 pcchLength) mut => VT.GetStringLength(ref this, guidKey, out pcchLength);
			public HRESULT GetString(in Guid guidKey, char16* pwszValue, uint32 cchBufSize, uint32* pcchLength) mut => VT.GetString(ref this, guidKey, pwszValue, cchBufSize, pcchLength);
			public HRESULT GetAllocatedString(in Guid guidKey, out PWSTR ppwszValue, out uint32 pcchLength) mut => VT.GetAllocatedString(ref this, guidKey, out ppwszValue, out pcchLength);
			public HRESULT GetBlobSize(in Guid guidKey, out uint32 pcbBlobSize) mut => VT.GetBlobSize(ref this, guidKey, out pcbBlobSize);
			public HRESULT GetBlob(in Guid guidKey, uint8* pBuf, uint32 cbBufSize, uint32* pcbBlobSize) mut => VT.GetBlob(ref this, guidKey, pBuf, cbBufSize, pcbBlobSize);
			public HRESULT GetAllocatedBlob(in Guid guidKey, uint8** ppBuf, out uint32 pcbSize) mut => VT.GetAllocatedBlob(ref this, guidKey, ppBuf, out pcbSize);
			public HRESULT GetUnknown(in Guid guidKey, in Guid riid, void** ppv) mut => VT.GetUnknown(ref this, guidKey, riid, ppv);
			public HRESULT SetItem(in Guid guidKey, in PROPVARIANT Value) mut => VT.SetItem(ref this, guidKey, Value);
			public HRESULT DeleteItem(in Guid guidKey) mut => VT.DeleteItem(ref this, guidKey);
			public HRESULT DeleteAllItems() mut => VT.DeleteAllItems(ref this);
			public HRESULT SetUINT32(in Guid guidKey, uint32 unValue) mut => VT.SetUINT32(ref this, guidKey, unValue);
			public HRESULT SetUINT64(in Guid guidKey, uint64 unValue) mut => VT.SetUINT64(ref this, guidKey, unValue);
			public HRESULT SetDouble(in Guid guidKey, double fValue) mut => VT.SetDouble(ref this, guidKey, fValue);
			public HRESULT SetGUID(in Guid guidKey, in Guid guidValue) mut => VT.SetGUID(ref this, guidKey, guidValue);
			public HRESULT SetString(in Guid guidKey, PWSTR wszValue) mut => VT.SetString(ref this, guidKey, wszValue);
			public HRESULT SetBlob(in Guid guidKey, uint8* pBuf, uint32 cbBufSize) mut => VT.SetBlob(ref this, guidKey, pBuf, cbBufSize);
			public HRESULT SetUnknown(in Guid guidKey, ref IUnknown pUnknown) mut => VT.SetUnknown(ref this, guidKey, ref pUnknown);
			public HRESULT LockStore() mut => VT.LockStore(ref this);
			public HRESULT UnlockStore() mut => VT.UnlockStore(ref this);
			public HRESULT GetCount(out uint32 pcItems) mut => VT.GetCount(ref this, out pcItems);
			public HRESULT GetItemByIndex(uint32 unIndex, out Guid pguidKey, PROPVARIANT* pValue) mut => VT.GetItemByIndex(ref this, unIndex, out pguidKey, pValue);
			public HRESULT CopyAllItems(ref IMFAttributes pDest) mut => VT.CopyAllItems(ref this, ref pDest);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, PROPVARIANT* pValue) GetItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, out MF_ATTRIBUTE_TYPE pType) GetItemType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, in PROPVARIANT Value, out BOOL pbResult) CompareItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, IMFAttributes* pTheirs, MF_ATTRIBUTES_MATCH_TYPE MatchType, out BOOL pbResult) Compare;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, out uint32 punValue) GetUINT32;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, out uint64 punValue) GetUINT64;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, out double pfValue) GetDouble;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, out Guid pguidValue) GetGUID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, out uint32 pcchLength) GetStringLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, char16* pwszValue, uint32 cchBufSize, uint32* pcchLength) GetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, out PWSTR ppwszValue, out uint32 pcchLength) GetAllocatedString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, out uint32 pcbBlobSize) GetBlobSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, uint8* pBuf, uint32 cbBufSize, uint32* pcbBlobSize) GetBlob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, uint8** ppBuf, out uint32 pcbSize) GetAllocatedBlob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, in Guid riid, void** ppv) GetUnknown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, in PROPVARIANT Value) SetItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey) DeleteItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self) DeleteAllItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, uint32 unValue) SetUINT32;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, uint64 unValue) SetUINT64;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, double fValue) SetDouble;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, in Guid guidValue) SetGUID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, PWSTR wszValue) SetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, uint8* pBuf, uint32 cbBufSize) SetBlob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, in Guid guidKey, ref IUnknown pUnknown) SetUnknown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self) LockStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self) UnlockStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, out uint32 pcItems) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, uint32 unIndex, out Guid pguidKey, PROPVARIANT* pValue) GetItemByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAttributes self, ref IMFAttributes pDest) CopyAllItems;
			}
		}
		[CRepr]
		public struct IMFMediaBuffer : IUnknown
		{
			public const new Guid IID = .(0x045fa593, 0x8799, 0x42b8, 0xbc, 0x8d, 0x89, 0x68, 0xc6, 0x45, 0x35, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Lock(out uint8* ppbBuffer, uint32* pcbMaxLength, uint32* pcbCurrentLength) mut => VT.Lock(ref this, out ppbBuffer, pcbMaxLength, pcbCurrentLength);
			public HRESULT Unlock() mut => VT.Unlock(ref this);
			public HRESULT GetCurrentLength(out uint32 pcbCurrentLength) mut => VT.GetCurrentLength(ref this, out pcbCurrentLength);
			public HRESULT SetCurrentLength(uint32 cbCurrentLength) mut => VT.SetCurrentLength(ref this, cbCurrentLength);
			public HRESULT GetMaxLength(out uint32 pcbMaxLength) mut => VT.GetMaxLength(ref this, out pcbMaxLength);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaBuffer self, out uint8* ppbBuffer, uint32* pcbMaxLength, uint32* pcbCurrentLength) Lock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaBuffer self) Unlock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaBuffer self, out uint32 pcbCurrentLength) GetCurrentLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaBuffer self, uint32 cbCurrentLength) SetCurrentLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaBuffer self, out uint32 pcbMaxLength) GetMaxLength;
			}
		}
		[CRepr]
		public struct IMFSample : IMFAttributes
		{
			public const new Guid IID = .(0xc40a00f2, 0xb93a, 0x4d80, 0xae, 0x8c, 0x5a, 0x1c, 0x63, 0x4f, 0x58, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSampleFlags(out uint32 pdwSampleFlags) mut => VT.GetSampleFlags(ref this, out pdwSampleFlags);
			public HRESULT SetSampleFlags(uint32 dwSampleFlags) mut => VT.SetSampleFlags(ref this, dwSampleFlags);
			public HRESULT GetSampleTime(out int64 phnsSampleTime) mut => VT.GetSampleTime(ref this, out phnsSampleTime);
			public HRESULT SetSampleTime(int64 hnsSampleTime) mut => VT.SetSampleTime(ref this, hnsSampleTime);
			public HRESULT GetSampleDuration(out int64 phnsSampleDuration) mut => VT.GetSampleDuration(ref this, out phnsSampleDuration);
			public HRESULT SetSampleDuration(int64 hnsSampleDuration) mut => VT.SetSampleDuration(ref this, hnsSampleDuration);
			public HRESULT GetBufferCount(out uint32 pdwBufferCount) mut => VT.GetBufferCount(ref this, out pdwBufferCount);
			public HRESULT GetBufferByIndex(uint32 dwIndex, out IMFMediaBuffer* ppBuffer) mut => VT.GetBufferByIndex(ref this, dwIndex, out ppBuffer);
			public HRESULT ConvertToContiguousBuffer(out IMFMediaBuffer* ppBuffer) mut => VT.ConvertToContiguousBuffer(ref this, out ppBuffer);
			public HRESULT AddBuffer(ref IMFMediaBuffer pBuffer) mut => VT.AddBuffer(ref this, ref pBuffer);
			public HRESULT RemoveBufferByIndex(uint32 dwIndex) mut => VT.RemoveBufferByIndex(ref this, dwIndex);
			public HRESULT RemoveAllBuffers() mut => VT.RemoveAllBuffers(ref this);
			public HRESULT GetTotalLength(out uint32 pcbTotalLength) mut => VT.GetTotalLength(ref this, out pcbTotalLength);
			public HRESULT CopyToBuffer(ref IMFMediaBuffer pBuffer) mut => VT.CopyToBuffer(ref this, ref pBuffer);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self, out uint32 pdwSampleFlags) GetSampleFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self, uint32 dwSampleFlags) SetSampleFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self, out int64 phnsSampleTime) GetSampleTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self, int64 hnsSampleTime) SetSampleTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self, out int64 phnsSampleDuration) GetSampleDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self, int64 hnsSampleDuration) SetSampleDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self, out uint32 pdwBufferCount) GetBufferCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self, uint32 dwIndex, out IMFMediaBuffer* ppBuffer) GetBufferByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self, out IMFMediaBuffer* ppBuffer) ConvertToContiguousBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self, ref IMFMediaBuffer pBuffer) AddBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self, uint32 dwIndex) RemoveBufferByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self) RemoveAllBuffers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self, out uint32 pcbTotalLength) GetTotalLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSample self, ref IMFMediaBuffer pBuffer) CopyToBuffer;
			}
		}
		[CRepr]
		public struct IMF2DBuffer : IUnknown
		{
			public const new Guid IID = .(0x7dc9d5f9, 0x9ed9, 0x44ec, 0x9b, 0xbf, 0x06, 0x00, 0xbb, 0x58, 0x9f, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Lock2D(out uint8* ppbScanline0, out int32 plPitch) mut => VT.Lock2D(ref this, out ppbScanline0, out plPitch);
			public HRESULT Unlock2D() mut => VT.Unlock2D(ref this);
			public HRESULT GetScanline0AndPitch(out uint8* pbScanline0, out int32 plPitch) mut => VT.GetScanline0AndPitch(ref this, out pbScanline0, out plPitch);
			public HRESULT IsContiguousFormat(out BOOL pfIsContiguous) mut => VT.IsContiguousFormat(ref this, out pfIsContiguous);
			public HRESULT GetContiguousLength(out uint32 pcbLength) mut => VT.GetContiguousLength(ref this, out pcbLength);
			public HRESULT ContiguousCopyTo(out uint8 pbDestBuffer, uint32 cbDestBuffer) mut => VT.ContiguousCopyTo(ref this, out pbDestBuffer, cbDestBuffer);
			public HRESULT ContiguousCopyFrom(in uint8 pbSrcBuffer, uint32 cbSrcBuffer) mut => VT.ContiguousCopyFrom(ref this, pbSrcBuffer, cbSrcBuffer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMF2DBuffer self, out uint8* ppbScanline0, out int32 plPitch) Lock2D;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMF2DBuffer self) Unlock2D;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMF2DBuffer self, out uint8* pbScanline0, out int32 plPitch) GetScanline0AndPitch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMF2DBuffer self, out BOOL pfIsContiguous) IsContiguousFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMF2DBuffer self, out uint32 pcbLength) GetContiguousLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMF2DBuffer self, out uint8 pbDestBuffer, uint32 cbDestBuffer) ContiguousCopyTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMF2DBuffer self, in uint8 pbSrcBuffer, uint32 cbSrcBuffer) ContiguousCopyFrom;
			}
		}
		[CRepr]
		public struct IMF2DBuffer2 : IMF2DBuffer
		{
			public const new Guid IID = .(0x33ae5ea6, 0x4316, 0x436f, 0x8d, 0xdd, 0xd7, 0x3d, 0x22, 0xf8, 0x29, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Lock2DSize(MF2DBuffer_LockFlags lockFlags, out uint8* ppbScanline0, out int32 plPitch, out uint8* ppbBufferStart, out uint32 pcbBufferLength) mut => VT.Lock2DSize(ref this, lockFlags, out ppbScanline0, out plPitch, out ppbBufferStart, out pcbBufferLength);
			public HRESULT Copy2DTo(ref IMF2DBuffer2 pDestBuffer) mut => VT.Copy2DTo(ref this, ref pDestBuffer);

			[CRepr]
			public struct VTable : IMF2DBuffer.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMF2DBuffer2 self, MF2DBuffer_LockFlags lockFlags, out uint8* ppbScanline0, out int32 plPitch, out uint8* ppbBufferStart, out uint32 pcbBufferLength) Lock2DSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMF2DBuffer2 self, ref IMF2DBuffer2 pDestBuffer) Copy2DTo;
			}
		}
		[CRepr]
		public struct IMFDXGIBuffer : IUnknown
		{
			public const new Guid IID = .(0xe7174cfa, 0x1c9e, 0x48b1, 0x88, 0x66, 0x62, 0x62, 0x26, 0xbf, 0xc2, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResource(in Guid riid, void** ppvObject) mut => VT.GetResource(ref this, riid, ppvObject);
			public HRESULT GetSubresourceIndex(out uint32 puSubresource) mut => VT.GetSubresourceIndex(ref this, out puSubresource);
			public HRESULT GetUnknown(in Guid guid, in Guid riid, void** ppvObject) mut => VT.GetUnknown(ref this, guid, riid, ppvObject);
			public HRESULT SetUnknown(in Guid guid, IUnknown* pUnkData) mut => VT.SetUnknown(ref this, guid, pUnkData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDXGIBuffer self, in Guid riid, void** ppvObject) GetResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDXGIBuffer self, out uint32 puSubresource) GetSubresourceIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDXGIBuffer self, in Guid guid, in Guid riid, void** ppvObject) GetUnknown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDXGIBuffer self, in Guid guid, IUnknown* pUnkData) SetUnknown;
			}
		}
		[CRepr]
		public struct IMFMediaType : IMFAttributes
		{
			public const new Guid IID = .(0x44ae0fa8, 0xea31, 0x4109, 0x8d, 0x2e, 0x4c, 0xae, 0x49, 0x97, 0xc5, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMajorType(out Guid pguidMajorType) mut => VT.GetMajorType(ref this, out pguidMajorType);
			public HRESULT IsCompressedFormat(out BOOL pfCompressed) mut => VT.IsCompressedFormat(ref this, out pfCompressed);
			public HRESULT IsEqual(ref IMFMediaType pIMediaType, out uint32 pdwFlags) mut => VT.IsEqual(ref this, ref pIMediaType, out pdwFlags);
			public HRESULT GetRepresentation(Guid guidRepresentation, void** ppvRepresentation) mut => VT.GetRepresentation(ref this, guidRepresentation, ppvRepresentation);
			public HRESULT FreeRepresentation(Guid guidRepresentation, void* pvRepresentation) mut => VT.FreeRepresentation(ref this, guidRepresentation, pvRepresentation);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaType self, out Guid pguidMajorType) GetMajorType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaType self, out BOOL pfCompressed) IsCompressedFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaType self, ref IMFMediaType pIMediaType, out uint32 pdwFlags) IsEqual;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaType self, Guid guidRepresentation, void** ppvRepresentation) GetRepresentation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaType self, Guid guidRepresentation, void* pvRepresentation) FreeRepresentation;
			}
		}
		[CRepr]
		public struct IMFAudioMediaType : IMFMediaType
		{
			public const new Guid IID = .(0x26a0adc3, 0xce26, 0x4672, 0x93, 0x04, 0x69, 0x55, 0x2e, 0xdd, 0x3f, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public WAVEFORMATEX* GetAudioFormat() mut => VT.GetAudioFormat(ref this);

			[CRepr]
			public struct VTable : IMFMediaType.VTable
			{
				public new function [CallingConvention(.Stdcall)] WAVEFORMATEX*(ref IMFAudioMediaType self) GetAudioFormat;
			}
		}
		[CRepr]
		public struct IMFVideoMediaType : IMFMediaType
		{
			public const new Guid IID = .(0xb99f381f, 0xa8f9, 0x47a2, 0xa5, 0xaf, 0xca, 0x3a, 0x22, 0x5a, 0x38, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public MFVIDEOFORMAT* GetVideoFormat() mut => VT.GetVideoFormat(ref this);
			public HRESULT GetVideoRepresentation(Guid guidRepresentation, void** ppvRepresentation, int32 lStride) mut => VT.GetVideoRepresentation(ref this, guidRepresentation, ppvRepresentation, lStride);

			[CRepr]
			public struct VTable : IMFMediaType.VTable
			{
				public new function [CallingConvention(.Stdcall)] MFVIDEOFORMAT*(ref IMFVideoMediaType self) GetVideoFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoMediaType self, Guid guidRepresentation, void** ppvRepresentation, int32 lStride) GetVideoRepresentation;
			}
		}
		[CRepr]
		public struct IMFAsyncResult : IUnknown
		{
			public const new Guid IID = .(0xac6b7889, 0x0740, 0x4d51, 0x86, 0x19, 0x90, 0x59, 0x94, 0xa5, 0x5c, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetState(out IUnknown* ppunkState) mut => VT.GetState(ref this, out ppunkState);
			public HRESULT GetStatus() mut => VT.GetStatus(ref this);
			public HRESULT SetStatus(HRESULT hrStatus) mut => VT.SetStatus(ref this, hrStatus);
			public HRESULT GetObject(out IUnknown* ppObject) mut => VT.GetObject(ref this, out ppObject);
			public IUnknown* GetStateNoAddRef() mut => VT.GetStateNoAddRef(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAsyncResult self, out IUnknown* ppunkState) GetState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAsyncResult self) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAsyncResult self, HRESULT hrStatus) SetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAsyncResult self, out IUnknown* ppObject) GetObject;
				public new function [CallingConvention(.Stdcall)] IUnknown*(ref IMFAsyncResult self) GetStateNoAddRef;
			}
		}
		[CRepr]
		public struct IMFAsyncCallback : IUnknown
		{
			public const new Guid IID = .(0xa27003cf, 0x2354, 0x4f2a, 0x8d, 0x6a, 0xab, 0x7c, 0xff, 0x15, 0x43, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetParameters(out uint32 pdwFlags, out uint32 pdwQueue) mut => VT.GetParameters(ref this, out pdwFlags, out pdwQueue);
			public HRESULT Invoke(ref IMFAsyncResult pAsyncResult) mut => VT.Invoke(ref this, ref pAsyncResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAsyncCallback self, out uint32 pdwFlags, out uint32 pdwQueue) GetParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAsyncCallback self, ref IMFAsyncResult pAsyncResult) Invoke;
			}
		}
		[CRepr]
		public struct IMFAsyncCallbackLogging : IMFAsyncCallback
		{
			public const new Guid IID = .(0xc7a4dca1, 0xf5f0, 0x47b6, 0xb9, 0x2b, 0xbf, 0x01, 0x06, 0xd2, 0x57, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public void* GetObjectPointer() mut => VT.GetObjectPointer(ref this);
			public uint32 GetObjectTag() mut => VT.GetObjectTag(ref this);

			[CRepr]
			public struct VTable : IMFAsyncCallback.VTable
			{
				public new function [CallingConvention(.Stdcall)] void*(ref IMFAsyncCallbackLogging self) GetObjectPointer;
				public new function [CallingConvention(.Stdcall)] uint32(ref IMFAsyncCallbackLogging self) GetObjectTag;
			}
		}
		[CRepr]
		public struct IMFMediaEvent : IMFAttributes
		{
			public const new Guid IID = .(0xdf598932, 0xf10c, 0x4e39, 0xbb, 0xa2, 0xc3, 0x08, 0xf1, 0x01, 0xda, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(out uint32 pmet) mut => VT.ComGetType(ref this, out pmet);
			public HRESULT GetExtendedType(out Guid pguidExtendedType) mut => VT.GetExtendedType(ref this, out pguidExtendedType);
			public HRESULT GetStatus(out HRESULT phrStatus) mut => VT.GetStatus(ref this, out phrStatus);
			public HRESULT GetValue(out PROPVARIANT pvValue) mut => VT.GetValue(ref this, out pvValue);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEvent self, out uint32 pmet) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEvent self, out Guid pguidExtendedType) GetExtendedType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEvent self, out HRESULT phrStatus) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEvent self, out PROPVARIANT pvValue) GetValue;
			}
		}
		[CRepr]
		public struct IMFMediaEventGenerator : IUnknown
		{
			public const new Guid IID = .(0x2cd0bd52, 0xbcd5, 0x4b89, 0xb6, 0x2c, 0xea, 0xdc, 0x0c, 0x03, 0x1e, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEvent(MEDIA_EVENT_GENERATOR_GET_EVENT_FLAGS dwFlags, out IMFMediaEvent* ppEvent) mut => VT.GetEvent(ref this, dwFlags, out ppEvent);
			public HRESULT BeginGetEvent(ref IMFAsyncCallback pCallback, ref IUnknown punkState) mut => VT.BeginGetEvent(ref this, ref pCallback, ref punkState);
			public HRESULT EndGetEvent(ref IMFAsyncResult pResult, out IMFMediaEvent* ppEvent) mut => VT.EndGetEvent(ref this, ref pResult, out ppEvent);
			public HRESULT QueueEvent(uint32 met, in Guid guidExtendedType, HRESULT hrStatus, in PROPVARIANT pvValue) mut => VT.QueueEvent(ref this, met, guidExtendedType, hrStatus, pvValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEventGenerator self, MEDIA_EVENT_GENERATOR_GET_EVENT_FLAGS dwFlags, out IMFMediaEvent* ppEvent) GetEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEventGenerator self, ref IMFAsyncCallback pCallback, ref IUnknown punkState) BeginGetEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEventGenerator self, ref IMFAsyncResult pResult, out IMFMediaEvent* ppEvent) EndGetEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEventGenerator self, uint32 met, in Guid guidExtendedType, HRESULT hrStatus, in PROPVARIANT pvValue) QueueEvent;
			}
		}
		[CRepr]
		public struct IMFRemoteAsyncCallback : IUnknown
		{
			public const new Guid IID = .(0xa27003d0, 0x2354, 0x4f2a, 0x8d, 0x6a, 0xab, 0x7c, 0xff, 0x15, 0x43, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Invoke(HRESULT hr, ref IUnknown pRemoteResult) mut => VT.Invoke(ref this, hr, ref pRemoteResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRemoteAsyncCallback self, HRESULT hr, ref IUnknown pRemoteResult) Invoke;
			}
		}
		[CRepr]
		public struct IMFByteStream : IUnknown
		{
			public const new Guid IID = .(0xad4c1b00, 0x4bf7, 0x422f, 0x91, 0x75, 0x75, 0x66, 0x93, 0xd9, 0x13, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCapabilities(out uint32 pdwCapabilities) mut => VT.GetCapabilities(ref this, out pdwCapabilities);
			public HRESULT GetLength(out uint64 pqwLength) mut => VT.GetLength(ref this, out pqwLength);
			public HRESULT SetLength(uint64 qwLength) mut => VT.SetLength(ref this, qwLength);
			public HRESULT GetCurrentPosition(out uint64 pqwPosition) mut => VT.GetCurrentPosition(ref this, out pqwPosition);
			public HRESULT SetCurrentPosition(uint64 qwPosition) mut => VT.SetCurrentPosition(ref this, qwPosition);
			public HRESULT IsEndOfStream(out BOOL pfEndOfStream) mut => VT.IsEndOfStream(ref this, out pfEndOfStream);
			public HRESULT Read(uint8* pb, uint32 cb, out uint32 pcbRead) mut => VT.Read(ref this, pb, cb, out pcbRead);
			public HRESULT BeginRead(out uint8 pb, uint32 cb, ref IMFAsyncCallback pCallback, ref IUnknown punkState) mut => VT.BeginRead(ref this, out pb, cb, ref pCallback, ref punkState);
			public HRESULT EndRead(ref IMFAsyncResult pResult, out uint32 pcbRead) mut => VT.EndRead(ref this, ref pResult, out pcbRead);
			public HRESULT Write(uint8* pb, uint32 cb, out uint32 pcbWritten) mut => VT.Write(ref this, pb, cb, out pcbWritten);
			public HRESULT BeginWrite(in uint8 pb, uint32 cb, ref IMFAsyncCallback pCallback, ref IUnknown punkState) mut => VT.BeginWrite(ref this, pb, cb, ref pCallback, ref punkState);
			public HRESULT EndWrite(ref IMFAsyncResult pResult, out uint32 pcbWritten) mut => VT.EndWrite(ref this, ref pResult, out pcbWritten);
			public HRESULT Seek(MFBYTESTREAM_SEEK_ORIGIN SeekOrigin, int64 llSeekOffset, uint32 dwSeekFlags, out uint64 pqwCurrentPosition) mut => VT.Seek(ref this, SeekOrigin, llSeekOffset, dwSeekFlags, out pqwCurrentPosition);
			public HRESULT Flush() mut => VT.Flush(ref this);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self, out uint32 pdwCapabilities) GetCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self, out uint64 pqwLength) GetLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self, uint64 qwLength) SetLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self, out uint64 pqwPosition) GetCurrentPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self, uint64 qwPosition) SetCurrentPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self, out BOOL pfEndOfStream) IsEndOfStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self, uint8* pb, uint32 cb, out uint32 pcbRead) Read;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self, out uint8 pb, uint32 cb, ref IMFAsyncCallback pCallback, ref IUnknown punkState) BeginRead;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self, ref IMFAsyncResult pResult, out uint32 pcbRead) EndRead;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self, uint8* pb, uint32 cb, out uint32 pcbWritten) Write;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self, in uint8 pb, uint32 cb, ref IMFAsyncCallback pCallback, ref IUnknown punkState) BeginWrite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self, ref IMFAsyncResult pResult, out uint32 pcbWritten) EndWrite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self, MFBYTESTREAM_SEEK_ORIGIN SeekOrigin, int64 llSeekOffset, uint32 dwSeekFlags, out uint64 pqwCurrentPosition) Seek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self) Flush;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStream self) Close;
			}
		}
		[CRepr]
		public struct IMFByteStreamProxyClassFactory : IUnknown
		{
			public const new Guid IID = .(0xa6b43f84, 0x5c0a, 0x42e8, 0xa4, 0x4d, 0xb1, 0x85, 0x7a, 0x76, 0x99, 0x2f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateByteStreamProxy(ref IMFByteStream pByteStream, ref IMFAttributes pAttributes, in Guid riid, void** ppvObject) mut => VT.CreateByteStreamProxy(ref this, ref pByteStream, ref pAttributes, riid, ppvObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamProxyClassFactory self, ref IMFByteStream pByteStream, ref IMFAttributes pAttributes, in Guid riid, void** ppvObject) CreateByteStreamProxy;
			}
		}
		[CRepr]
		public struct IMFSampleOutputStream : IUnknown
		{
			public const new Guid IID = .(0x8feed468, 0x6f7e, 0x440d, 0x86, 0x9a, 0x49, 0xbd, 0xd2, 0x83, 0xad, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginWriteSample(ref IMFSample pSample, ref IMFAsyncCallback pCallback, ref IUnknown punkState) mut => VT.BeginWriteSample(ref this, ref pSample, ref pCallback, ref punkState);
			public HRESULT EndWriteSample(ref IMFAsyncResult pResult) mut => VT.EndWriteSample(ref this, ref pResult);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleOutputStream self, ref IMFSample pSample, ref IMFAsyncCallback pCallback, ref IUnknown punkState) BeginWriteSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleOutputStream self, ref IMFAsyncResult pResult) EndWriteSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleOutputStream self) Close;
			}
		}
		[CRepr]
		public struct IMFCollection : IUnknown
		{
			public const new Guid IID = .(0x5bc8a76b, 0x869a, 0x46a3, 0x9b, 0x03, 0xfa, 0x21, 0x8a, 0x66, 0xae, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetElementCount(out uint32 pcElements) mut => VT.GetElementCount(ref this, out pcElements);
			public HRESULT GetElement(uint32 dwElementIndex, out IUnknown* ppUnkElement) mut => VT.GetElement(ref this, dwElementIndex, out ppUnkElement);
			public HRESULT AddElement(ref IUnknown pUnkElement) mut => VT.AddElement(ref this, ref pUnkElement);
			public HRESULT RemoveElement(uint32 dwElementIndex, out IUnknown* ppUnkElement) mut => VT.RemoveElement(ref this, dwElementIndex, out ppUnkElement);
			public HRESULT InsertElementAt(uint32 dwIndex, ref IUnknown pUnknown) mut => VT.InsertElementAt(ref this, dwIndex, ref pUnknown);
			public HRESULT RemoveAllElements() mut => VT.RemoveAllElements(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCollection self, out uint32 pcElements) GetElementCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCollection self, uint32 dwElementIndex, out IUnknown* ppUnkElement) GetElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCollection self, ref IUnknown pUnkElement) AddElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCollection self, uint32 dwElementIndex, out IUnknown* ppUnkElement) RemoveElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCollection self, uint32 dwIndex, ref IUnknown pUnknown) InsertElementAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCollection self) RemoveAllElements;
			}
		}
		[CRepr]
		public struct IMFMediaEventQueue : IUnknown
		{
			public const new Guid IID = .(0x36f846fc, 0x2256, 0x48b6, 0xb5, 0x8e, 0xe2, 0xb6, 0x38, 0x31, 0x65, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEvent(uint32 dwFlags, out IMFMediaEvent* ppEvent) mut => VT.GetEvent(ref this, dwFlags, out ppEvent);
			public HRESULT BeginGetEvent(ref IMFAsyncCallback pCallback, ref IUnknown punkState) mut => VT.BeginGetEvent(ref this, ref pCallback, ref punkState);
			public HRESULT EndGetEvent(ref IMFAsyncResult pResult, out IMFMediaEvent* ppEvent) mut => VT.EndGetEvent(ref this, ref pResult, out ppEvent);
			public HRESULT QueueEvent(ref IMFMediaEvent pEvent) mut => VT.QueueEvent(ref this, ref pEvent);
			public HRESULT QueueEventParamVar(uint32 met, in Guid guidExtendedType, HRESULT hrStatus, in PROPVARIANT pvValue) mut => VT.QueueEventParamVar(ref this, met, guidExtendedType, hrStatus, pvValue);
			public HRESULT QueueEventParamUnk(uint32 met, in Guid guidExtendedType, HRESULT hrStatus, ref IUnknown pUnk) mut => VT.QueueEventParamUnk(ref this, met, guidExtendedType, hrStatus, ref pUnk);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEventQueue self, uint32 dwFlags, out IMFMediaEvent* ppEvent) GetEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEventQueue self, ref IMFAsyncCallback pCallback, ref IUnknown punkState) BeginGetEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEventQueue self, ref IMFAsyncResult pResult, out IMFMediaEvent* ppEvent) EndGetEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEventQueue self, ref IMFMediaEvent pEvent) QueueEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEventQueue self, uint32 met, in Guid guidExtendedType, HRESULT hrStatus, in PROPVARIANT pvValue) QueueEventParamVar;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEventQueue self, uint32 met, in Guid guidExtendedType, HRESULT hrStatus, ref IUnknown pUnk) QueueEventParamUnk;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEventQueue self) Shutdown;
			}
		}
		[CRepr]
		public struct IMFActivate : IMFAttributes
		{
			public const new Guid IID = .(0x7fee9e9a, 0x4a89, 0x47a6, 0x89, 0x9c, 0xb6, 0xa5, 0x3a, 0x70, 0xfb, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateObject(in Guid riid, void** ppv) mut => VT.ActivateObject(ref this, riid, ppv);
			public HRESULT ShutdownObject() mut => VT.ShutdownObject(ref this);
			public HRESULT DetachObject() mut => VT.DetachObject(ref this);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFActivate self, in Guid riid, void** ppv) ActivateObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFActivate self) ShutdownObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFActivate self) DetachObject;
			}
		}
		[CRepr]
		public struct IMFPluginControl : IUnknown
		{
			public const new Guid IID = .(0x5c6c44bf, 0x1db6, 0x435b, 0x92, 0x49, 0xe8, 0xcd, 0x10, 0xfd, 0xec, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPreferredClsid(uint32 pluginType, PWSTR selector, out Guid clsid) mut => VT.GetPreferredClsid(ref this, pluginType, selector, out clsid);
			public HRESULT GetPreferredClsidByIndex(uint32 pluginType, uint32 index, out PWSTR selector, out Guid clsid) mut => VT.GetPreferredClsidByIndex(ref this, pluginType, index, out selector, out clsid);
			public HRESULT SetPreferredClsid(uint32 pluginType, PWSTR selector, Guid* clsid) mut => VT.SetPreferredClsid(ref this, pluginType, selector, clsid);
			public HRESULT IsDisabled(uint32 pluginType, in Guid clsid) mut => VT.IsDisabled(ref this, pluginType, clsid);
			public HRESULT GetDisabledByIndex(uint32 pluginType, uint32 index, out Guid clsid) mut => VT.GetDisabledByIndex(ref this, pluginType, index, out clsid);
			public HRESULT SetDisabled(uint32 pluginType, in Guid clsid, BOOL disabled) mut => VT.SetDisabled(ref this, pluginType, clsid, disabled);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPluginControl self, uint32 pluginType, PWSTR selector, out Guid clsid) GetPreferredClsid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPluginControl self, uint32 pluginType, uint32 index, out PWSTR selector, out Guid clsid) GetPreferredClsidByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPluginControl self, uint32 pluginType, PWSTR selector, Guid* clsid) SetPreferredClsid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPluginControl self, uint32 pluginType, in Guid clsid) IsDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPluginControl self, uint32 pluginType, uint32 index, out Guid clsid) GetDisabledByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPluginControl self, uint32 pluginType, in Guid clsid, BOOL disabled) SetDisabled;
			}
		}
		[CRepr]
		public struct IMFPluginControl2 : IMFPluginControl
		{
			public const new Guid IID = .(0xc6982083, 0x3ddc, 0x45cb, 0xaf, 0x5e, 0x0f, 0x7a, 0x8c, 0xe4, 0xde, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPolicy(MF_PLUGIN_CONTROL_POLICY policy) mut => VT.SetPolicy(ref this, policy);

			[CRepr]
			public struct VTable : IMFPluginControl.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPluginControl2 self, MF_PLUGIN_CONTROL_POLICY policy) SetPolicy;
			}
		}
		[CRepr]
		public struct IMFDXGIDeviceManager : IUnknown
		{
			public const new Guid IID = .(0xeb533d5d, 0x2db6, 0x40f8, 0x97, 0xa9, 0x49, 0x46, 0x92, 0x01, 0x4f, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CloseDeviceHandle(HANDLE hDevice) mut => VT.CloseDeviceHandle(ref this, hDevice);
			public HRESULT GetVideoService(HANDLE hDevice, in Guid riid, void** ppService) mut => VT.GetVideoService(ref this, hDevice, riid, ppService);
			public HRESULT LockDevice(HANDLE hDevice, in Guid riid, void** ppUnkDevice, BOOL fBlock) mut => VT.LockDevice(ref this, hDevice, riid, ppUnkDevice, fBlock);
			public HRESULT OpenDeviceHandle(out HANDLE phDevice) mut => VT.OpenDeviceHandle(ref this, out phDevice);
			public HRESULT ResetDevice(ref IUnknown pUnkDevice, uint32 resetToken) mut => VT.ResetDevice(ref this, ref pUnkDevice, resetToken);
			public HRESULT TestDevice(HANDLE hDevice) mut => VT.TestDevice(ref this, hDevice);
			public HRESULT UnlockDevice(HANDLE hDevice, BOOL fSaveState) mut => VT.UnlockDevice(ref this, hDevice, fSaveState);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDXGIDeviceManager self, HANDLE hDevice) CloseDeviceHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDXGIDeviceManager self, HANDLE hDevice, in Guid riid, void** ppService) GetVideoService;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDXGIDeviceManager self, HANDLE hDevice, in Guid riid, void** ppUnkDevice, BOOL fBlock) LockDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDXGIDeviceManager self, out HANDLE phDevice) OpenDeviceHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDXGIDeviceManager self, ref IUnknown pUnkDevice, uint32 resetToken) ResetDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDXGIDeviceManager self, HANDLE hDevice) TestDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDXGIDeviceManager self, HANDLE hDevice, BOOL fSaveState) UnlockDevice;
			}
		}
		[CRepr]
		public struct IMFMuxStreamAttributesManager : IUnknown
		{
			public const new Guid IID = .(0xce8bd576, 0xe440, 0x43b3, 0xbe, 0x34, 0x1e, 0x53, 0xf5, 0x65, 0xf7, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamCount(out uint32 pdwMuxStreamCount) mut => VT.GetStreamCount(ref this, out pdwMuxStreamCount);
			public HRESULT GetAttributes(uint32 dwMuxStreamIndex, out IMFAttributes* ppStreamAttributes) mut => VT.GetAttributes(ref this, dwMuxStreamIndex, out ppStreamAttributes);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMuxStreamAttributesManager self, out uint32 pdwMuxStreamCount) GetStreamCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMuxStreamAttributesManager self, uint32 dwMuxStreamIndex, out IMFAttributes* ppStreamAttributes) GetAttributes;
			}
		}
		[CRepr]
		public struct IMFMuxStreamMediaTypeManager : IUnknown
		{
			public const new Guid IID = .(0x505a2c72, 0x42f7, 0x4690, 0xae, 0xab, 0x8f, 0x51, 0x3d, 0x0f, 0xfd, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamCount(out uint32 pdwMuxStreamCount) mut => VT.GetStreamCount(ref this, out pdwMuxStreamCount);
			public HRESULT GetMediaType(uint32 dwMuxStreamIndex, out IMFMediaType* ppMediaType) mut => VT.GetMediaType(ref this, dwMuxStreamIndex, out ppMediaType);
			public HRESULT GetStreamConfigurationCount(out uint32 pdwCount) mut => VT.GetStreamConfigurationCount(ref this, out pdwCount);
			public HRESULT AddStreamConfiguration(uint64 ullStreamMask) mut => VT.AddStreamConfiguration(ref this, ullStreamMask);
			public HRESULT RemoveStreamConfiguration(uint64 ullStreamMask) mut => VT.RemoveStreamConfiguration(ref this, ullStreamMask);
			public HRESULT GetStreamConfiguration(uint32 ulIndex, out uint64 pullStreamMask) mut => VT.GetStreamConfiguration(ref this, ulIndex, out pullStreamMask);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMuxStreamMediaTypeManager self, out uint32 pdwMuxStreamCount) GetStreamCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMuxStreamMediaTypeManager self, uint32 dwMuxStreamIndex, out IMFMediaType* ppMediaType) GetMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMuxStreamMediaTypeManager self, out uint32 pdwCount) GetStreamConfigurationCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMuxStreamMediaTypeManager self, uint64 ullStreamMask) AddStreamConfiguration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMuxStreamMediaTypeManager self, uint64 ullStreamMask) RemoveStreamConfiguration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMuxStreamMediaTypeManager self, uint32 ulIndex, out uint64 pullStreamMask) GetStreamConfiguration;
			}
		}
		[CRepr]
		public struct IMFMuxStreamSampleManager : IUnknown
		{
			public const new Guid IID = .(0x74abbc19, 0xb1cc, 0x4e41, 0xbb, 0x8b, 0x9d, 0x9b, 0x86, 0xa8, 0xf6, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamCount(out uint32 pdwMuxStreamCount) mut => VT.GetStreamCount(ref this, out pdwMuxStreamCount);
			public HRESULT GetSample(uint32 dwMuxStreamIndex, out IMFSample* ppSample) mut => VT.GetSample(ref this, dwMuxStreamIndex, out ppSample);
			public uint64 GetStreamConfiguration() mut => VT.GetStreamConfiguration(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMuxStreamSampleManager self, out uint32 pdwMuxStreamCount) GetStreamCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMuxStreamSampleManager self, uint32 dwMuxStreamIndex, out IMFSample* ppSample) GetSample;
				public new function [CallingConvention(.Stdcall)] uint64(ref IMFMuxStreamSampleManager self) GetStreamConfiguration;
			}
		}
		[CRepr]
		public struct IMFSecureBuffer : IUnknown
		{
			public const new Guid IID = .(0xc1209904, 0xe584, 0x4752, 0xa2, 0xd6, 0x7f, 0x21, 0x69, 0x3f, 0x8b, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdentifier(out Guid pGuidIdentifier) mut => VT.GetIdentifier(ref this, out pGuidIdentifier);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSecureBuffer self, out Guid pGuidIdentifier) GetIdentifier;
			}
		}
		[CRepr]
		public struct IMFTransform : IUnknown
		{
			public const new Guid IID = .(0xbf94c121, 0x5b05, 0x4e6f, 0x80, 0x00, 0xba, 0x59, 0x89, 0x61, 0x41, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamLimits(out uint32 pdwInputMinimum, out uint32 pdwInputMaximum, out uint32 pdwOutputMinimum, out uint32 pdwOutputMaximum) mut => VT.GetStreamLimits(ref this, out pdwInputMinimum, out pdwInputMaximum, out pdwOutputMinimum, out pdwOutputMaximum);
			public HRESULT GetStreamCount(out uint32 pcInputStreams, out uint32 pcOutputStreams) mut => VT.GetStreamCount(ref this, out pcInputStreams, out pcOutputStreams);
			public HRESULT GetStreamIDs(uint32 dwInputIDArraySize, uint32* pdwInputIDs, uint32 dwOutputIDArraySize, uint32* pdwOutputIDs) mut => VT.GetStreamIDs(ref this, dwInputIDArraySize, pdwInputIDs, dwOutputIDArraySize, pdwOutputIDs);
			public HRESULT GetInputStreamInfo(uint32 dwInputStreamID, out MFT_INPUT_STREAM_INFO pStreamInfo) mut => VT.GetInputStreamInfo(ref this, dwInputStreamID, out pStreamInfo);
			public HRESULT GetOutputStreamInfo(uint32 dwOutputStreamID, out MFT_OUTPUT_STREAM_INFO pStreamInfo) mut => VT.GetOutputStreamInfo(ref this, dwOutputStreamID, out pStreamInfo);
			public HRESULT GetAttributes(out IMFAttributes* pAttributes) mut => VT.GetAttributes(ref this, out pAttributes);
			public HRESULT GetInputStreamAttributes(uint32 dwInputStreamID, out IMFAttributes* pAttributes) mut => VT.GetInputStreamAttributes(ref this, dwInputStreamID, out pAttributes);
			public HRESULT GetOutputStreamAttributes(uint32 dwOutputStreamID, out IMFAttributes* pAttributes) mut => VT.GetOutputStreamAttributes(ref this, dwOutputStreamID, out pAttributes);
			public HRESULT DeleteInputStream(uint32 dwStreamID) mut => VT.DeleteInputStream(ref this, dwStreamID);
			public HRESULT AddInputStreams(uint32 cStreams, ref uint32 adwStreamIDs) mut => VT.AddInputStreams(ref this, cStreams, ref adwStreamIDs);
			public HRESULT GetInputAvailableType(uint32 dwInputStreamID, uint32 dwTypeIndex, out IMFMediaType* ppType) mut => VT.GetInputAvailableType(ref this, dwInputStreamID, dwTypeIndex, out ppType);
			public HRESULT GetOutputAvailableType(uint32 dwOutputStreamID, uint32 dwTypeIndex, out IMFMediaType* ppType) mut => VT.GetOutputAvailableType(ref this, dwOutputStreamID, dwTypeIndex, out ppType);
			public HRESULT SetInputType(uint32 dwInputStreamID, ref IMFMediaType pType, uint32 dwFlags) mut => VT.SetInputType(ref this, dwInputStreamID, ref pType, dwFlags);
			public HRESULT SetOutputType(uint32 dwOutputStreamID, ref IMFMediaType pType, uint32 dwFlags) mut => VT.SetOutputType(ref this, dwOutputStreamID, ref pType, dwFlags);
			public HRESULT GetInputCurrentType(uint32 dwInputStreamID, out IMFMediaType* ppType) mut => VT.GetInputCurrentType(ref this, dwInputStreamID, out ppType);
			public HRESULT GetOutputCurrentType(uint32 dwOutputStreamID, out IMFMediaType* ppType) mut => VT.GetOutputCurrentType(ref this, dwOutputStreamID, out ppType);
			public HRESULT GetInputStatus(uint32 dwInputStreamID, out uint32 pdwFlags) mut => VT.GetInputStatus(ref this, dwInputStreamID, out pdwFlags);
			public HRESULT GetOutputStatus(out uint32 pdwFlags) mut => VT.GetOutputStatus(ref this, out pdwFlags);
			public HRESULT SetOutputBounds(int64 hnsLowerBound, int64 hnsUpperBound) mut => VT.SetOutputBounds(ref this, hnsLowerBound, hnsUpperBound);
			public HRESULT ProcessEvent(uint32 dwInputStreamID, ref IMFMediaEvent pEvent) mut => VT.ProcessEvent(ref this, dwInputStreamID, ref pEvent);
			public HRESULT ProcessMessage(MFT_MESSAGE_TYPE eMessage, uint ulParam) mut => VT.ProcessMessage(ref this, eMessage, ulParam);
			public HRESULT ProcessInput(uint32 dwInputStreamID, ref IMFSample pSample, uint32 dwFlags) mut => VT.ProcessInput(ref this, dwInputStreamID, ref pSample, dwFlags);
			public HRESULT ProcessOutput(uint32 dwFlags, uint32 cOutputBufferCount, MFT_OUTPUT_DATA_BUFFER* pOutputSamples, out uint32 pdwStatus) mut => VT.ProcessOutput(ref this, dwFlags, cOutputBufferCount, pOutputSamples, out pdwStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, out uint32 pdwInputMinimum, out uint32 pdwInputMaximum, out uint32 pdwOutputMinimum, out uint32 pdwOutputMaximum) GetStreamLimits;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, out uint32 pcInputStreams, out uint32 pcOutputStreams) GetStreamCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwInputIDArraySize, uint32* pdwInputIDs, uint32 dwOutputIDArraySize, uint32* pdwOutputIDs) GetStreamIDs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwInputStreamID, out MFT_INPUT_STREAM_INFO pStreamInfo) GetInputStreamInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwOutputStreamID, out MFT_OUTPUT_STREAM_INFO pStreamInfo) GetOutputStreamInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, out IMFAttributes* pAttributes) GetAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwInputStreamID, out IMFAttributes* pAttributes) GetInputStreamAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwOutputStreamID, out IMFAttributes* pAttributes) GetOutputStreamAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwStreamID) DeleteInputStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 cStreams, ref uint32 adwStreamIDs) AddInputStreams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwInputStreamID, uint32 dwTypeIndex, out IMFMediaType* ppType) GetInputAvailableType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwOutputStreamID, uint32 dwTypeIndex, out IMFMediaType* ppType) GetOutputAvailableType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwInputStreamID, ref IMFMediaType pType, uint32 dwFlags) SetInputType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwOutputStreamID, ref IMFMediaType pType, uint32 dwFlags) SetOutputType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwInputStreamID, out IMFMediaType* ppType) GetInputCurrentType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwOutputStreamID, out IMFMediaType* ppType) GetOutputCurrentType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwInputStreamID, out uint32 pdwFlags) GetInputStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, out uint32 pdwFlags) GetOutputStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, int64 hnsLowerBound, int64 hnsUpperBound) SetOutputBounds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwInputStreamID, ref IMFMediaEvent pEvent) ProcessEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, MFT_MESSAGE_TYPE eMessage, uint ulParam) ProcessMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwInputStreamID, ref IMFSample pSample, uint32 dwFlags) ProcessInput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTransform self, uint32 dwFlags, uint32 cOutputBufferCount, MFT_OUTPUT_DATA_BUFFER* pOutputSamples, out uint32 pdwStatus) ProcessOutput;
			}
		}
		[CRepr]
		public struct IMFMediaSession : IMFMediaEventGenerator
		{
			public const new Guid IID = .(0x90377834, 0x21d0, 0x4dee, 0x82, 0x14, 0xba, 0x2e, 0x3e, 0x6c, 0x11, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTopology(uint32 dwSetTopologyFlags, ref IMFTopology pTopology) mut => VT.SetTopology(ref this, dwSetTopologyFlags, ref pTopology);
			public HRESULT ClearTopologies() mut => VT.ClearTopologies(ref this);
			public HRESULT Start(in Guid pguidTimeFormat, in PROPVARIANT pvarStartPosition) mut => VT.Start(ref this, pguidTimeFormat, pvarStartPosition);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Stop() mut => VT.Stop(ref this);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);
			public HRESULT GetClock(out IMFClock* ppClock) mut => VT.GetClock(ref this, out ppClock);
			public HRESULT GetSessionCapabilities(out uint32 pdwCaps) mut => VT.GetSessionCapabilities(ref this, out pdwCaps);
			public HRESULT GetFullTopology(uint32 dwGetFullTopologyFlags, uint64 TopoId, out IMFTopology* ppFullTopology) mut => VT.GetFullTopology(ref this, dwGetFullTopologyFlags, TopoId, out ppFullTopology);

			[CRepr]
			public struct VTable : IMFMediaEventGenerator.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSession self, uint32 dwSetTopologyFlags, ref IMFTopology pTopology) SetTopology;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSession self) ClearTopologies;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSession self, in Guid pguidTimeFormat, in PROPVARIANT pvarStartPosition) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSession self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSession self) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSession self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSession self) Shutdown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSession self, out IMFClock* ppClock) GetClock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSession self, out uint32 pdwCaps) GetSessionCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSession self, uint32 dwGetFullTopologyFlags, uint64 TopoId, out IMFTopology* ppFullTopology) GetFullTopology;
			}
		}
		[CRepr]
		public struct IMFSourceResolver : IUnknown
		{
			public const new Guid IID = .(0xfbe5a32d, 0xa497, 0x4b61, 0xbb, 0x85, 0x97, 0xb1, 0xa8, 0x48, 0xa6, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateObjectFromURL(PWSTR pwszURL, uint32 dwFlags, ref IPropertyStore pProps, out MF_OBJECT_TYPE pObjectType, out IUnknown* ppObject) mut => VT.CreateObjectFromURL(ref this, pwszURL, dwFlags, ref pProps, out pObjectType, out ppObject);
			public HRESULT CreateObjectFromByteStream(ref IMFByteStream pByteStream, PWSTR pwszURL, uint32 dwFlags, ref IPropertyStore pProps, out MF_OBJECT_TYPE pObjectType, out IUnknown* ppObject) mut => VT.CreateObjectFromByteStream(ref this, ref pByteStream, pwszURL, dwFlags, ref pProps, out pObjectType, out ppObject);
			public HRESULT BeginCreateObjectFromURL(PWSTR pwszURL, uint32 dwFlags, ref IPropertyStore pProps, IUnknown** ppIUnknownCancelCookie, ref IMFAsyncCallback pCallback, ref IUnknown punkState) mut => VT.BeginCreateObjectFromURL(ref this, pwszURL, dwFlags, ref pProps, ppIUnknownCancelCookie, ref pCallback, ref punkState);
			public HRESULT EndCreateObjectFromURL(ref IMFAsyncResult pResult, out MF_OBJECT_TYPE pObjectType, out IUnknown* ppObject) mut => VT.EndCreateObjectFromURL(ref this, ref pResult, out pObjectType, out ppObject);
			public HRESULT BeginCreateObjectFromByteStream(ref IMFByteStream pByteStream, PWSTR pwszURL, uint32 dwFlags, ref IPropertyStore pProps, IUnknown** ppIUnknownCancelCookie, ref IMFAsyncCallback pCallback, ref IUnknown punkState) mut => VT.BeginCreateObjectFromByteStream(ref this, ref pByteStream, pwszURL, dwFlags, ref pProps, ppIUnknownCancelCookie, ref pCallback, ref punkState);
			public HRESULT EndCreateObjectFromByteStream(ref IMFAsyncResult pResult, out MF_OBJECT_TYPE pObjectType, out IUnknown* ppObject) mut => VT.EndCreateObjectFromByteStream(ref this, ref pResult, out pObjectType, out ppObject);
			public HRESULT CancelObjectCreation(ref IUnknown pIUnknownCancelCookie) mut => VT.CancelObjectCreation(ref this, ref pIUnknownCancelCookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceResolver self, PWSTR pwszURL, uint32 dwFlags, ref IPropertyStore pProps, out MF_OBJECT_TYPE pObjectType, out IUnknown* ppObject) CreateObjectFromURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceResolver self, ref IMFByteStream pByteStream, PWSTR pwszURL, uint32 dwFlags, ref IPropertyStore pProps, out MF_OBJECT_TYPE pObjectType, out IUnknown* ppObject) CreateObjectFromByteStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceResolver self, PWSTR pwszURL, uint32 dwFlags, ref IPropertyStore pProps, IUnknown** ppIUnknownCancelCookie, ref IMFAsyncCallback pCallback, ref IUnknown punkState) BeginCreateObjectFromURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceResolver self, ref IMFAsyncResult pResult, out MF_OBJECT_TYPE pObjectType, out IUnknown* ppObject) EndCreateObjectFromURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceResolver self, ref IMFByteStream pByteStream, PWSTR pwszURL, uint32 dwFlags, ref IPropertyStore pProps, IUnknown** ppIUnknownCancelCookie, ref IMFAsyncCallback pCallback, ref IUnknown punkState) BeginCreateObjectFromByteStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceResolver self, ref IMFAsyncResult pResult, out MF_OBJECT_TYPE pObjectType, out IUnknown* ppObject) EndCreateObjectFromByteStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceResolver self, ref IUnknown pIUnknownCancelCookie) CancelObjectCreation;
			}
		}
		[CRepr]
		public struct IMFMediaSource : IMFMediaEventGenerator
		{
			public const new Guid IID = .(0x279a808d, 0xaec7, 0x40c8, 0x9c, 0x6b, 0xa6, 0xb4, 0x92, 0xc7, 0x8a, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCharacteristics(out uint32 pdwCharacteristics) mut => VT.GetCharacteristics(ref this, out pdwCharacteristics);
			public HRESULT CreatePresentationDescriptor(out IMFPresentationDescriptor* ppPresentationDescriptor) mut => VT.CreatePresentationDescriptor(ref this, out ppPresentationDescriptor);
			public HRESULT Start(ref IMFPresentationDescriptor pPresentationDescriptor, in Guid pguidTimeFormat, in PROPVARIANT pvarStartPosition) mut => VT.Start(ref this, ref pPresentationDescriptor, pguidTimeFormat, pvarStartPosition);
			public HRESULT Stop() mut => VT.Stop(ref this);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IMFMediaEventGenerator.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSource self, out uint32 pdwCharacteristics) GetCharacteristics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSource self, out IMFPresentationDescriptor* ppPresentationDescriptor) CreatePresentationDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSource self, ref IMFPresentationDescriptor pPresentationDescriptor, in Guid pguidTimeFormat, in PROPVARIANT pvarStartPosition) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSource self) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSource self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSource self) Shutdown;
			}
		}
		[CRepr]
		public struct IMFMediaSourceEx : IMFMediaSource
		{
			public const new Guid IID = .(0x3c9b2eb9, 0x86d5, 0x4514, 0xa3, 0x94, 0xf5, 0x66, 0x64, 0xf9, 0xf0, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSourceAttributes(out IMFAttributes* ppAttributes) mut => VT.GetSourceAttributes(ref this, out ppAttributes);
			public HRESULT GetStreamAttributes(uint32 dwStreamIdentifier, out IMFAttributes* ppAttributes) mut => VT.GetStreamAttributes(ref this, dwStreamIdentifier, out ppAttributes);
			public HRESULT SetD3DManager(ref IUnknown pManager) mut => VT.SetD3DManager(ref this, ref pManager);

			[CRepr]
			public struct VTable : IMFMediaSource.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSourceEx self, out IMFAttributes* ppAttributes) GetSourceAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSourceEx self, uint32 dwStreamIdentifier, out IMFAttributes* ppAttributes) GetStreamAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSourceEx self, ref IUnknown pManager) SetD3DManager;
			}
		}
		[CRepr]
		public struct IMFClockConsumer : IUnknown
		{
			public const new Guid IID = .(0x6ef2a662, 0x47c0, 0x4666, 0xb1, 0x3d, 0xcb, 0xb7, 0x17, 0xf2, 0xfa, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPresentationClock(ref IMFPresentationClock pPresentationClock) mut => VT.SetPresentationClock(ref this, ref pPresentationClock);
			public HRESULT GetPresentationClock(out IMFPresentationClock* ppPresentationClock) mut => VT.GetPresentationClock(ref this, out ppPresentationClock);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFClockConsumer self, ref IMFPresentationClock pPresentationClock) SetPresentationClock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFClockConsumer self, out IMFPresentationClock* ppPresentationClock) GetPresentationClock;
			}
		}
		[CRepr]
		public struct IMFMediaStream : IMFMediaEventGenerator
		{
			public const new Guid IID = .(0xd182108f, 0x4ec6, 0x443f, 0xaa, 0x42, 0xa7, 0x11, 0x06, 0xec, 0x82, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMediaSource(out IMFMediaSource* ppMediaSource) mut => VT.GetMediaSource(ref this, out ppMediaSource);
			public HRESULT GetStreamDescriptor(out IMFStreamDescriptor* ppStreamDescriptor) mut => VT.GetStreamDescriptor(ref this, out ppStreamDescriptor);
			public HRESULT RequestSample(ref IUnknown pToken) mut => VT.RequestSample(ref this, ref pToken);

			[CRepr]
			public struct VTable : IMFMediaEventGenerator.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaStream self, out IMFMediaSource* ppMediaSource) GetMediaSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaStream self, out IMFStreamDescriptor* ppStreamDescriptor) GetStreamDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaStream self, ref IUnknown pToken) RequestSample;
			}
		}
		[CRepr]
		public struct IMFMediaSink : IUnknown
		{
			public const new Guid IID = .(0x6ef2a660, 0x47c0, 0x4666, 0xb1, 0x3d, 0xcb, 0xb7, 0x17, 0xf2, 0xfa, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCharacteristics(out uint32 pdwCharacteristics) mut => VT.GetCharacteristics(ref this, out pdwCharacteristics);
			public HRESULT AddStreamSink(uint32 dwStreamSinkIdentifier, ref IMFMediaType pMediaType, out IMFStreamSink* ppStreamSink) mut => VT.AddStreamSink(ref this, dwStreamSinkIdentifier, ref pMediaType, out ppStreamSink);
			public HRESULT RemoveStreamSink(uint32 dwStreamSinkIdentifier) mut => VT.RemoveStreamSink(ref this, dwStreamSinkIdentifier);
			public HRESULT GetStreamSinkCount(out uint32 pcStreamSinkCount) mut => VT.GetStreamSinkCount(ref this, out pcStreamSinkCount);
			public HRESULT GetStreamSinkByIndex(uint32 dwIndex, out IMFStreamSink* ppStreamSink) mut => VT.GetStreamSinkByIndex(ref this, dwIndex, out ppStreamSink);
			public HRESULT GetStreamSinkById(uint32 dwStreamSinkIdentifier, out IMFStreamSink* ppStreamSink) mut => VT.GetStreamSinkById(ref this, dwStreamSinkIdentifier, out ppStreamSink);
			public HRESULT SetPresentationClock(ref IMFPresentationClock pPresentationClock) mut => VT.SetPresentationClock(ref this, ref pPresentationClock);
			public HRESULT GetPresentationClock(out IMFPresentationClock* ppPresentationClock) mut => VT.GetPresentationClock(ref this, out ppPresentationClock);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSink self, out uint32 pdwCharacteristics) GetCharacteristics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSink self, uint32 dwStreamSinkIdentifier, ref IMFMediaType pMediaType, out IMFStreamSink* ppStreamSink) AddStreamSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSink self, uint32 dwStreamSinkIdentifier) RemoveStreamSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSink self, out uint32 pcStreamSinkCount) GetStreamSinkCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSink self, uint32 dwIndex, out IMFStreamSink* ppStreamSink) GetStreamSinkByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSink self, uint32 dwStreamSinkIdentifier, out IMFStreamSink* ppStreamSink) GetStreamSinkById;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSink self, ref IMFPresentationClock pPresentationClock) SetPresentationClock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSink self, out IMFPresentationClock* ppPresentationClock) GetPresentationClock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSink self) Shutdown;
			}
		}
		[CRepr]
		public struct IMFStreamSink : IMFMediaEventGenerator
		{
			public const new Guid IID = .(0x0a97b3cf, 0x8e7c, 0x4a3d, 0x8f, 0x8c, 0x0c, 0x84, 0x3d, 0xc2, 0x47, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMediaSink(out IMFMediaSink* ppMediaSink) mut => VT.GetMediaSink(ref this, out ppMediaSink);
			public HRESULT GetIdentifier(out uint32 pdwIdentifier) mut => VT.GetIdentifier(ref this, out pdwIdentifier);
			public HRESULT GetMediaTypeHandler(out IMFMediaTypeHandler* ppHandler) mut => VT.GetMediaTypeHandler(ref this, out ppHandler);
			public HRESULT ProcessSample(ref IMFSample pSample) mut => VT.ProcessSample(ref this, ref pSample);
			public HRESULT PlaceMarker(MFSTREAMSINK_MARKER_TYPE eMarkerType, in PROPVARIANT pvarMarkerValue, in PROPVARIANT pvarContextValue) mut => VT.PlaceMarker(ref this, eMarkerType, pvarMarkerValue, pvarContextValue);
			public HRESULT Flush() mut => VT.Flush(ref this);

			[CRepr]
			public struct VTable : IMFMediaEventGenerator.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFStreamSink self, out IMFMediaSink* ppMediaSink) GetMediaSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFStreamSink self, out uint32 pdwIdentifier) GetIdentifier;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFStreamSink self, out IMFMediaTypeHandler* ppHandler) GetMediaTypeHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFStreamSink self, ref IMFSample pSample) ProcessSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFStreamSink self, MFSTREAMSINK_MARKER_TYPE eMarkerType, in PROPVARIANT pvarMarkerValue, in PROPVARIANT pvarContextValue) PlaceMarker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFStreamSink self) Flush;
			}
		}
		[CRepr]
		public struct IMFVideoSampleAllocator : IUnknown
		{
			public const new Guid IID = .(0x86cbc910, 0xe533, 0x4751, 0x8e, 0x3b, 0xf1, 0x9b, 0x5b, 0x80, 0x6a, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDirectXManager(ref IUnknown pManager) mut => VT.SetDirectXManager(ref this, ref pManager);
			public HRESULT UninitializeSampleAllocator() mut => VT.UninitializeSampleAllocator(ref this);
			public HRESULT InitializeSampleAllocator(uint32 cRequestedFrames, ref IMFMediaType pMediaType) mut => VT.InitializeSampleAllocator(ref this, cRequestedFrames, ref pMediaType);
			public HRESULT AllocateSample(out IMFSample* ppSample) mut => VT.AllocateSample(ref this, out ppSample);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoSampleAllocator self, ref IUnknown pManager) SetDirectXManager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoSampleAllocator self) UninitializeSampleAllocator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoSampleAllocator self, uint32 cRequestedFrames, ref IMFMediaType pMediaType) InitializeSampleAllocator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoSampleAllocator self, out IMFSample* ppSample) AllocateSample;
			}
		}
		[CRepr]
		public struct IMFVideoSampleAllocatorNotify : IUnknown
		{
			public const new Guid IID = .(0xa792cdbe, 0xc374, 0x4e89, 0x83, 0x35, 0x27, 0x8e, 0x7b, 0x99, 0x56, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyRelease() mut => VT.NotifyRelease(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoSampleAllocatorNotify self) NotifyRelease;
			}
		}
		[CRepr]
		public struct IMFVideoSampleAllocatorNotifyEx : IMFVideoSampleAllocatorNotify
		{
			public const new Guid IID = .(0x3978aa1a, 0x6d5b, 0x4b7f, 0xa3, 0x40, 0x90, 0x89, 0x91, 0x89, 0xae, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyPrune(ref IMFSample __MIDL__IMFVideoSampleAllocatorNotifyEx0000) mut => VT.NotifyPrune(ref this, ref __MIDL__IMFVideoSampleAllocatorNotifyEx0000);

			[CRepr]
			public struct VTable : IMFVideoSampleAllocatorNotify.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoSampleAllocatorNotifyEx self, ref IMFSample __MIDL__IMFVideoSampleAllocatorNotifyEx0000) NotifyPrune;
			}
		}
		[CRepr]
		public struct IMFVideoSampleAllocatorCallback : IUnknown
		{
			public const new Guid IID = .(0x992388b4, 0x3372, 0x4f67, 0x8b, 0x6f, 0xc8, 0x4c, 0x07, 0x1f, 0x47, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCallback(ref IMFVideoSampleAllocatorNotify pNotify) mut => VT.SetCallback(ref this, ref pNotify);
			public HRESULT GetFreeSampleCount(out int32 plSamples) mut => VT.GetFreeSampleCount(ref this, out plSamples);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoSampleAllocatorCallback self, ref IMFVideoSampleAllocatorNotify pNotify) SetCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoSampleAllocatorCallback self, out int32 plSamples) GetFreeSampleCount;
			}
		}
		[CRepr]
		public struct IMFVideoSampleAllocatorEx : IMFVideoSampleAllocator
		{
			public const new Guid IID = .(0x545b3a48, 0x3283, 0x4f62, 0x86, 0x6f, 0xa6, 0x2d, 0x8f, 0x59, 0x8f, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeSampleAllocatorEx(uint32 cInitialSamples, uint32 cMaximumSamples, IMFAttributes* pAttributes, ref IMFMediaType pMediaType) mut => VT.InitializeSampleAllocatorEx(ref this, cInitialSamples, cMaximumSamples, pAttributes, ref pMediaType);

			[CRepr]
			public struct VTable : IMFVideoSampleAllocator.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoSampleAllocatorEx self, uint32 cInitialSamples, uint32 cMaximumSamples, IMFAttributes* pAttributes, ref IMFMediaType pMediaType) InitializeSampleAllocatorEx;
			}
		}
		[CRepr]
		public struct IMFDXGIDeviceManagerSource : IUnknown
		{
			public const new Guid IID = .(0x20bc074b, 0x7a8d, 0x4609, 0x8c, 0x3b, 0x64, 0xa0, 0xa3, 0xb5, 0xd7, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetManager(out IMFDXGIDeviceManager* ppManager) mut => VT.GetManager(ref this, out ppManager);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDXGIDeviceManagerSource self, out IMFDXGIDeviceManager* ppManager) GetManager;
			}
		}
		[CRepr]
		public struct IMFVideoProcessorControl : IUnknown
		{
			public const new Guid IID = .(0xa3f675d5, 0x6119, 0x4f7f, 0xa1, 0x00, 0x1d, 0x8b, 0x28, 0x0f, 0x0e, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBorderColor(MFARGB* pBorderColor) mut => VT.SetBorderColor(ref this, pBorderColor);
			public HRESULT SetSourceRectangle(RECT* pSrcRect) mut => VT.SetSourceRectangle(ref this, pSrcRect);
			public HRESULT SetDestinationRectangle(RECT* pDstRect) mut => VT.SetDestinationRectangle(ref this, pDstRect);
			public HRESULT SetMirror(MF_VIDEO_PROCESSOR_MIRROR eMirror) mut => VT.SetMirror(ref this, eMirror);
			public HRESULT SetRotation(MF_VIDEO_PROCESSOR_ROTATION eRotation) mut => VT.SetRotation(ref this, eRotation);
			public HRESULT SetConstrictionSize(SIZE* pConstrictionSize) mut => VT.SetConstrictionSize(ref this, pConstrictionSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessorControl self, MFARGB* pBorderColor) SetBorderColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessorControl self, RECT* pSrcRect) SetSourceRectangle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessorControl self, RECT* pDstRect) SetDestinationRectangle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessorControl self, MF_VIDEO_PROCESSOR_MIRROR eMirror) SetMirror;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessorControl self, MF_VIDEO_PROCESSOR_ROTATION eRotation) SetRotation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessorControl self, SIZE* pConstrictionSize) SetConstrictionSize;
			}
		}
		[CRepr]
		public struct IMFVideoProcessorControl2 : IMFVideoProcessorControl
		{
			public const new Guid IID = .(0xbde633d3, 0xe1dc, 0x4a7f, 0xa6, 0x93, 0xbb, 0xae, 0x39, 0x9c, 0x4a, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRotationOverride(uint32 uiRotation) mut => VT.SetRotationOverride(ref this, uiRotation);
			public HRESULT EnableHardwareEffects(BOOL fEnabled) mut => VT.EnableHardwareEffects(ref this, fEnabled);
			public HRESULT GetSupportedHardwareEffects(out uint32 puiSupport) mut => VT.GetSupportedHardwareEffects(ref this, out puiSupport);

			[CRepr]
			public struct VTable : IMFVideoProcessorControl.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessorControl2 self, uint32 uiRotation) SetRotationOverride;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessorControl2 self, BOOL fEnabled) EnableHardwareEffects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessorControl2 self, out uint32 puiSupport) GetSupportedHardwareEffects;
			}
		}
		[CRepr]
		public struct IMFVideoProcessorControl3 : IMFVideoProcessorControl2
		{
			public const new Guid IID = .(0x2424b3f2, 0xeb23, 0x40f1, 0x91, 0xaa, 0x74, 0xbd, 0xde, 0xea, 0x08, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNaturalOutputType(out IMFMediaType* ppType) mut => VT.GetNaturalOutputType(ref this, out ppType);
			public HRESULT EnableSphericalVideoProcessing(BOOL fEnable, MFVideoSphericalFormat eFormat, MFVideoSphericalProjectionMode eProjectionMode) mut => VT.EnableSphericalVideoProcessing(ref this, fEnable, eFormat, eProjectionMode);
			public HRESULT SetSphericalVideoProperties(float X, float Y, float Z, float W, float fieldOfView) mut => VT.SetSphericalVideoProperties(ref this, X, Y, Z, W, fieldOfView);
			public HRESULT SetOutputDevice(ref IUnknown pOutputDevice) mut => VT.SetOutputDevice(ref this, ref pOutputDevice);

			[CRepr]
			public struct VTable : IMFVideoProcessorControl2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessorControl3 self, out IMFMediaType* ppType) GetNaturalOutputType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessorControl3 self, BOOL fEnable, MFVideoSphericalFormat eFormat, MFVideoSphericalProjectionMode eProjectionMode) EnableSphericalVideoProcessing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessorControl3 self, float X, float Y, float Z, float W, float fieldOfView) SetSphericalVideoProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessorControl3 self, ref IUnknown pOutputDevice) SetOutputDevice;
			}
		}
		[CRepr]
		public struct IMFVideoRendererEffectControl : IUnknown
		{
			public const new Guid IID = .(0x604d33d7, 0xcf23, 0x41d5, 0x82, 0x24, 0x5b, 0xbb, 0xb1, 0xa8, 0x74, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnAppServiceConnectionEstablished(ref IUnknown pAppServiceConnection) mut => VT.OnAppServiceConnectionEstablished(ref this, ref pAppServiceConnection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoRendererEffectControl self, ref IUnknown pAppServiceConnection) OnAppServiceConnectionEstablished;
			}
		}
		[CRepr]
		public struct IMFTopology : IMFAttributes
		{
			public const new Guid IID = .(0x83cf873a, 0xf6da, 0x4bc8, 0x82, 0x3f, 0xba, 0xcf, 0xd5, 0x5d, 0xc4, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTopologyID(out uint64 pID) mut => VT.GetTopologyID(ref this, out pID);
			public HRESULT AddNode(ref IMFTopologyNode pNode) mut => VT.AddNode(ref this, ref pNode);
			public HRESULT RemoveNode(ref IMFTopologyNode pNode) mut => VT.RemoveNode(ref this, ref pNode);
			public HRESULT GetNodeCount(out uint16 pwNodes) mut => VT.GetNodeCount(ref this, out pwNodes);
			public HRESULT GetNode(uint16 wIndex, out IMFTopologyNode* ppNode) mut => VT.GetNode(ref this, wIndex, out ppNode);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT CloneFrom(ref IMFTopology pTopology) mut => VT.CloneFrom(ref this, ref pTopology);
			public HRESULT GetNodeByID(uint64 qwTopoNodeID, out IMFTopologyNode* ppNode) mut => VT.GetNodeByID(ref this, qwTopoNodeID, out ppNode);
			public HRESULT GetSourceNodeCollection(out IMFCollection* ppCollection) mut => VT.GetSourceNodeCollection(ref this, out ppCollection);
			public HRESULT GetOutputNodeCollection(out IMFCollection* ppCollection) mut => VT.GetOutputNodeCollection(ref this, out ppCollection);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopology self, out uint64 pID) GetTopologyID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopology self, ref IMFTopologyNode pNode) AddNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopology self, ref IMFTopologyNode pNode) RemoveNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopology self, out uint16 pwNodes) GetNodeCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopology self, uint16 wIndex, out IMFTopologyNode* ppNode) GetNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopology self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopology self, ref IMFTopology pTopology) CloneFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopology self, uint64 qwTopoNodeID, out IMFTopologyNode* ppNode) GetNodeByID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopology self, out IMFCollection* ppCollection) GetSourceNodeCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopology self, out IMFCollection* ppCollection) GetOutputNodeCollection;
			}
		}
		[CRepr]
		public struct IMFTopologyNode : IMFAttributes
		{
			public const new Guid IID = .(0x83cf873a, 0xf6da, 0x4bc8, 0x82, 0x3f, 0xba, 0xcf, 0xd5, 0x5d, 0xc4, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetObject(ref IUnknown pObject) mut => VT.SetObject(ref this, ref pObject);
			public HRESULT GetObject(out IUnknown* ppObject) mut => VT.GetObject(ref this, out ppObject);
			public HRESULT GetNodeType(out MF_TOPOLOGY_TYPE pType) mut => VT.GetNodeType(ref this, out pType);
			public HRESULT GetTopoNodeID(out uint64 pID) mut => VT.GetTopoNodeID(ref this, out pID);
			public HRESULT SetTopoNodeID(uint64 ullTopoID) mut => VT.SetTopoNodeID(ref this, ullTopoID);
			public HRESULT GetInputCount(out uint32 pcInputs) mut => VT.GetInputCount(ref this, out pcInputs);
			public HRESULT GetOutputCount(out uint32 pcOutputs) mut => VT.GetOutputCount(ref this, out pcOutputs);
			public HRESULT ConnectOutput(uint32 dwOutputIndex, ref IMFTopologyNode pDownstreamNode, uint32 dwInputIndexOnDownstreamNode) mut => VT.ConnectOutput(ref this, dwOutputIndex, ref pDownstreamNode, dwInputIndexOnDownstreamNode);
			public HRESULT DisconnectOutput(uint32 dwOutputIndex) mut => VT.DisconnectOutput(ref this, dwOutputIndex);
			public HRESULT GetInput(uint32 dwInputIndex, out IMFTopologyNode* ppUpstreamNode, out uint32 pdwOutputIndexOnUpstreamNode) mut => VT.GetInput(ref this, dwInputIndex, out ppUpstreamNode, out pdwOutputIndexOnUpstreamNode);
			public HRESULT GetOutput(uint32 dwOutputIndex, out IMFTopologyNode* ppDownstreamNode, out uint32 pdwInputIndexOnDownstreamNode) mut => VT.GetOutput(ref this, dwOutputIndex, out ppDownstreamNode, out pdwInputIndexOnDownstreamNode);
			public HRESULT SetOutputPrefType(uint32 dwOutputIndex, ref IMFMediaType pType) mut => VT.SetOutputPrefType(ref this, dwOutputIndex, ref pType);
			public HRESULT GetOutputPrefType(uint32 dwOutputIndex, out IMFMediaType* ppType) mut => VT.GetOutputPrefType(ref this, dwOutputIndex, out ppType);
			public HRESULT SetInputPrefType(uint32 dwInputIndex, ref IMFMediaType pType) mut => VT.SetInputPrefType(ref this, dwInputIndex, ref pType);
			public HRESULT GetInputPrefType(uint32 dwInputIndex, out IMFMediaType* ppType) mut => VT.GetInputPrefType(ref this, dwInputIndex, out ppType);
			public HRESULT CloneFrom(ref IMFTopologyNode pNode) mut => VT.CloneFrom(ref this, ref pNode);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, ref IUnknown pObject) SetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, out IUnknown* ppObject) GetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, out MF_TOPOLOGY_TYPE pType) GetNodeType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, out uint64 pID) GetTopoNodeID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, uint64 ullTopoID) SetTopoNodeID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, out uint32 pcInputs) GetInputCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, out uint32 pcOutputs) GetOutputCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, uint32 dwOutputIndex, ref IMFTopologyNode pDownstreamNode, uint32 dwInputIndexOnDownstreamNode) ConnectOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, uint32 dwOutputIndex) DisconnectOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, uint32 dwInputIndex, out IMFTopologyNode* ppUpstreamNode, out uint32 pdwOutputIndexOnUpstreamNode) GetInput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, uint32 dwOutputIndex, out IMFTopologyNode* ppDownstreamNode, out uint32 pdwInputIndexOnDownstreamNode) GetOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, uint32 dwOutputIndex, ref IMFMediaType pType) SetOutputPrefType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, uint32 dwOutputIndex, out IMFMediaType* ppType) GetOutputPrefType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, uint32 dwInputIndex, ref IMFMediaType pType) SetInputPrefType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, uint32 dwInputIndex, out IMFMediaType* ppType) GetInputPrefType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNode self, ref IMFTopologyNode pNode) CloneFrom;
			}
		}
		[CRepr]
		public struct IMFGetService : IUnknown
		{
			public const new Guid IID = .(0xfa993888, 0x4383, 0x415a, 0xa9, 0x30, 0xdd, 0x47, 0x2a, 0x8c, 0xf6, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetService(in Guid guidService, in Guid riid, void** ppvObject) mut => VT.GetService(ref this, guidService, riid, ppvObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFGetService self, in Guid guidService, in Guid riid, void** ppvObject) GetService;
			}
		}
		[CRepr]
		public struct IMFClock : IUnknown
		{
			public const new Guid IID = .(0x2eb1e945, 0x18b8, 0x4139, 0x9b, 0x1a, 0xd5, 0xd5, 0x84, 0x81, 0x85, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClockCharacteristics(out uint32 pdwCharacteristics) mut => VT.GetClockCharacteristics(ref this, out pdwCharacteristics);
			public HRESULT GetCorrelatedTime(uint32 dwReserved, out int64 pllClockTime, out int64 phnsSystemTime) mut => VT.GetCorrelatedTime(ref this, dwReserved, out pllClockTime, out phnsSystemTime);
			public HRESULT GetContinuityKey(out uint32 pdwContinuityKey) mut => VT.GetContinuityKey(ref this, out pdwContinuityKey);
			public HRESULT GetState(uint32 dwReserved, out MFCLOCK_STATE peClockState) mut => VT.GetState(ref this, dwReserved, out peClockState);
			public HRESULT GetProperties(out MFCLOCK_PROPERTIES pClockProperties) mut => VT.GetProperties(ref this, out pClockProperties);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFClock self, out uint32 pdwCharacteristics) GetClockCharacteristics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFClock self, uint32 dwReserved, out int64 pllClockTime, out int64 phnsSystemTime) GetCorrelatedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFClock self, out uint32 pdwContinuityKey) GetContinuityKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFClock self, uint32 dwReserved, out MFCLOCK_STATE peClockState) GetState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFClock self, out MFCLOCK_PROPERTIES pClockProperties) GetProperties;
			}
		}
		[CRepr]
		public struct IMFPresentationClock : IMFClock
		{
			public const new Guid IID = .(0x868ce85c, 0x8ea9, 0x4f55, 0xab, 0x82, 0xb0, 0x09, 0xa9, 0x10, 0xa8, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTimeSource(ref IMFPresentationTimeSource pTimeSource) mut => VT.SetTimeSource(ref this, ref pTimeSource);
			public HRESULT GetTimeSource(out IMFPresentationTimeSource* ppTimeSource) mut => VT.GetTimeSource(ref this, out ppTimeSource);
			public HRESULT GetTime(out int64 phnsClockTime) mut => VT.GetTime(ref this, out phnsClockTime);
			public HRESULT AddClockStateSink(ref IMFClockStateSink pStateSink) mut => VT.AddClockStateSink(ref this, ref pStateSink);
			public HRESULT RemoveClockStateSink(ref IMFClockStateSink pStateSink) mut => VT.RemoveClockStateSink(ref this, ref pStateSink);
			public HRESULT Start(int64 llClockStartOffset) mut => VT.Start(ref this, llClockStartOffset);
			public HRESULT Stop() mut => VT.Stop(ref this);
			public HRESULT Pause() mut => VT.Pause(ref this);

			[CRepr]
			public struct VTable : IMFClock.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationClock self, ref IMFPresentationTimeSource pTimeSource) SetTimeSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationClock self, out IMFPresentationTimeSource* ppTimeSource) GetTimeSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationClock self, out int64 phnsClockTime) GetTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationClock self, ref IMFClockStateSink pStateSink) AddClockStateSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationClock self, ref IMFClockStateSink pStateSink) RemoveClockStateSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationClock self, int64 llClockStartOffset) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationClock self) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationClock self) Pause;
			}
		}
		[CRepr]
		public struct IMFPresentationTimeSource : IMFClock
		{
			public const new Guid IID = .(0x7ff12cce, 0xf76f, 0x41c2, 0x86, 0x3b, 0x16, 0x66, 0xc8, 0xe5, 0xe1, 0x39);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUnderlyingClock(out IMFClock* ppClock) mut => VT.GetUnderlyingClock(ref this, out ppClock);

			[CRepr]
			public struct VTable : IMFClock.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationTimeSource self, out IMFClock* ppClock) GetUnderlyingClock;
			}
		}
		[CRepr]
		public struct IMFClockStateSink : IUnknown
		{
			public const new Guid IID = .(0xf6696e82, 0x74f7, 0x4f3d, 0xa1, 0x78, 0x8a, 0x5e, 0x09, 0xc3, 0x65, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnClockStart(int64 hnsSystemTime, int64 llClockStartOffset) mut => VT.OnClockStart(ref this, hnsSystemTime, llClockStartOffset);
			public HRESULT OnClockStop(int64 hnsSystemTime) mut => VT.OnClockStop(ref this, hnsSystemTime);
			public HRESULT OnClockPause(int64 hnsSystemTime) mut => VT.OnClockPause(ref this, hnsSystemTime);
			public HRESULT OnClockRestart(int64 hnsSystemTime) mut => VT.OnClockRestart(ref this, hnsSystemTime);
			public HRESULT OnClockSetRate(int64 hnsSystemTime, float flRate) mut => VT.OnClockSetRate(ref this, hnsSystemTime, flRate);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFClockStateSink self, int64 hnsSystemTime, int64 llClockStartOffset) OnClockStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFClockStateSink self, int64 hnsSystemTime) OnClockStop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFClockStateSink self, int64 hnsSystemTime) OnClockPause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFClockStateSink self, int64 hnsSystemTime) OnClockRestart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFClockStateSink self, int64 hnsSystemTime, float flRate) OnClockSetRate;
			}
		}
		[CRepr]
		public struct IMFPresentationDescriptor : IMFAttributes
		{
			public const new Guid IID = .(0x03cb2711, 0x24d7, 0x4db6, 0xa1, 0x7f, 0xf3, 0xa7, 0xa4, 0x79, 0xa5, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamDescriptorCount(out uint32 pdwDescriptorCount) mut => VT.GetStreamDescriptorCount(ref this, out pdwDescriptorCount);
			public HRESULT GetStreamDescriptorByIndex(uint32 dwIndex, out BOOL pfSelected, out IMFStreamDescriptor* ppDescriptor) mut => VT.GetStreamDescriptorByIndex(ref this, dwIndex, out pfSelected, out ppDescriptor);
			public HRESULT SelectStream(uint32 dwDescriptorIndex) mut => VT.SelectStream(ref this, dwDescriptorIndex);
			public HRESULT DeselectStream(uint32 dwDescriptorIndex) mut => VT.DeselectStream(ref this, dwDescriptorIndex);
			public HRESULT Clone(out IMFPresentationDescriptor* ppPresentationDescriptor) mut => VT.Clone(ref this, out ppPresentationDescriptor);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationDescriptor self, out uint32 pdwDescriptorCount) GetStreamDescriptorCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationDescriptor self, uint32 dwIndex, out BOOL pfSelected, out IMFStreamDescriptor* ppDescriptor) GetStreamDescriptorByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationDescriptor self, uint32 dwDescriptorIndex) SelectStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationDescriptor self, uint32 dwDescriptorIndex) DeselectStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPresentationDescriptor self, out IMFPresentationDescriptor* ppPresentationDescriptor) Clone;
			}
		}
		[CRepr]
		public struct IMFStreamDescriptor : IMFAttributes
		{
			public const new Guid IID = .(0x56c03d9c, 0x9dbb, 0x45f5, 0xab, 0x4b, 0xd8, 0x0f, 0x47, 0xc0, 0x59, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamIdentifier(out uint32 pdwStreamIdentifier) mut => VT.GetStreamIdentifier(ref this, out pdwStreamIdentifier);
			public HRESULT GetMediaTypeHandler(out IMFMediaTypeHandler* ppMediaTypeHandler) mut => VT.GetMediaTypeHandler(ref this, out ppMediaTypeHandler);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFStreamDescriptor self, out uint32 pdwStreamIdentifier) GetStreamIdentifier;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFStreamDescriptor self, out IMFMediaTypeHandler* ppMediaTypeHandler) GetMediaTypeHandler;
			}
		}
		[CRepr]
		public struct IMFMediaTypeHandler : IUnknown
		{
			public const new Guid IID = .(0xe93dcf6c, 0x4b07, 0x4e1e, 0x81, 0x23, 0xaa, 0x16, 0xed, 0x6e, 0xad, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsMediaTypeSupported(ref IMFMediaType pMediaType, IMFMediaType** ppMediaType) mut => VT.IsMediaTypeSupported(ref this, ref pMediaType, ppMediaType);
			public HRESULT GetMediaTypeCount(out uint32 pdwTypeCount) mut => VT.GetMediaTypeCount(ref this, out pdwTypeCount);
			public HRESULT GetMediaTypeByIndex(uint32 dwIndex, out IMFMediaType* ppType) mut => VT.GetMediaTypeByIndex(ref this, dwIndex, out ppType);
			public HRESULT SetCurrentMediaType(ref IMFMediaType pMediaType) mut => VT.SetCurrentMediaType(ref this, ref pMediaType);
			public HRESULT GetCurrentMediaType(out IMFMediaType* ppMediaType) mut => VT.GetCurrentMediaType(ref this, out ppMediaType);
			public HRESULT GetMajorType(out Guid pguidMajorType) mut => VT.GetMajorType(ref this, out pguidMajorType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaTypeHandler self, ref IMFMediaType pMediaType, IMFMediaType** ppMediaType) IsMediaTypeSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaTypeHandler self, out uint32 pdwTypeCount) GetMediaTypeCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaTypeHandler self, uint32 dwIndex, out IMFMediaType* ppType) GetMediaTypeByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaTypeHandler self, ref IMFMediaType pMediaType) SetCurrentMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaTypeHandler self, out IMFMediaType* ppMediaType) GetCurrentMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaTypeHandler self, out Guid pguidMajorType) GetMajorType;
			}
		}
		[CRepr]
		public struct IMFTimer : IUnknown
		{
			public const new Guid IID = .(0xe56e4cbd, 0x8f70, 0x49d8, 0xa0, 0xf8, 0xed, 0xb3, 0xd6, 0xab, 0x9b, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTimer(uint32 dwFlags, int64 llClockTime, ref IMFAsyncCallback pCallback, ref IUnknown punkState, out IUnknown* ppunkKey) mut => VT.SetTimer(ref this, dwFlags, llClockTime, ref pCallback, ref punkState, out ppunkKey);
			public HRESULT CancelTimer(ref IUnknown punkKey) mut => VT.CancelTimer(ref this, ref punkKey);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimer self, uint32 dwFlags, int64 llClockTime, ref IMFAsyncCallback pCallback, ref IUnknown punkState, out IUnknown* ppunkKey) SetTimer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimer self, ref IUnknown punkKey) CancelTimer;
			}
		}
		[CRepr]
		public struct IMFShutdown : IUnknown
		{
			public const new Guid IID = .(0x97ec2ea4, 0x0e42, 0x4937, 0x97, 0xac, 0x9d, 0x6d, 0x32, 0x88, 0x24, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);
			public HRESULT GetShutdownStatus(out MFSHUTDOWN_STATUS pStatus) mut => VT.GetShutdownStatus(ref this, out pStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFShutdown self) Shutdown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFShutdown self, out MFSHUTDOWN_STATUS pStatus) GetShutdownStatus;
			}
		}
		[CRepr]
		public struct IMFTopoLoader : IUnknown
		{
			public const new Guid IID = .(0xde9a6157, 0xf660, 0x4643, 0xb5, 0x6a, 0xdf, 0x9f, 0x79, 0x98, 0xc7, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Load(ref IMFTopology pInputTopo, out IMFTopology* ppOutputTopo, ref IMFTopology pCurrentTopo) mut => VT.Load(ref this, ref pInputTopo, out ppOutputTopo, ref pCurrentTopo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopoLoader self, ref IMFTopology pInputTopo, out IMFTopology* ppOutputTopo, ref IMFTopology pCurrentTopo) Load;
			}
		}
		[CRepr]
		public struct IMFContentProtectionManager : IUnknown
		{
			public const new Guid IID = .(0xacf92459, 0x6a61, 0x42bd, 0xb5, 0x7c, 0xb4, 0x3e, 0x51, 0x20, 0x3c, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginEnableContent(ref IMFActivate pEnablerActivate, ref IMFTopology pTopo, ref IMFAsyncCallback pCallback, ref IUnknown punkState) mut => VT.BeginEnableContent(ref this, ref pEnablerActivate, ref pTopo, ref pCallback, ref punkState);
			public HRESULT EndEnableContent(ref IMFAsyncResult pResult) mut => VT.EndEnableContent(ref this, ref pResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentProtectionManager self, ref IMFActivate pEnablerActivate, ref IMFTopology pTopo, ref IMFAsyncCallback pCallback, ref IUnknown punkState) BeginEnableContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentProtectionManager self, ref IMFAsyncResult pResult) EndEnableContent;
			}
		}
		[CRepr]
		public struct IMFContentEnabler : IUnknown
		{
			public const new Guid IID = .(0xd3c4ef59, 0x49ce, 0x4381, 0x90, 0x71, 0xd5, 0xbc, 0xd0, 0x44, 0xc7, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEnableType(out Guid pType) mut => VT.GetEnableType(ref this, out pType);
			public HRESULT GetEnableURL(PWSTR* ppwszURL, out uint32 pcchURL, out MF_URL_TRUST_STATUS pTrustStatus) mut => VT.GetEnableURL(ref this, ppwszURL, out pcchURL, out pTrustStatus);
			public HRESULT GetEnableData(uint8** ppbData, out uint32 pcbData) mut => VT.GetEnableData(ref this, ppbData, out pcbData);
			public HRESULT IsAutomaticSupported(out BOOL pfAutomatic) mut => VT.IsAutomaticSupported(ref this, out pfAutomatic);
			public HRESULT AutomaticEnable() mut => VT.AutomaticEnable(ref this);
			public HRESULT MonitorEnable() mut => VT.MonitorEnable(ref this);
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentEnabler self, out Guid pType) GetEnableType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentEnabler self, PWSTR* ppwszURL, out uint32 pcchURL, out MF_URL_TRUST_STATUS pTrustStatus) GetEnableURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentEnabler self, uint8** ppbData, out uint32 pcbData) GetEnableData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentEnabler self, out BOOL pfAutomatic) IsAutomaticSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentEnabler self) AutomaticEnable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentEnabler self) MonitorEnable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentEnabler self) Cancel;
			}
		}
		[CRepr]
		public struct IMFMetadata : IUnknown
		{
			public const new Guid IID = .(0xf88cfb8c, 0xef16, 0x4991, 0xb4, 0x50, 0xcb, 0x8c, 0x69, 0xe5, 0x17, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetLanguage(PWSTR pwszRFC1766) mut => VT.SetLanguage(ref this, pwszRFC1766);
			public HRESULT GetLanguage(out PWSTR ppwszRFC1766) mut => VT.GetLanguage(ref this, out ppwszRFC1766);
			public HRESULT GetAllLanguages(out PROPVARIANT ppvLanguages) mut => VT.GetAllLanguages(ref this, out ppvLanguages);
			public HRESULT SetProperty(PWSTR pwszName, in PROPVARIANT ppvValue) mut => VT.SetProperty(ref this, pwszName, ppvValue);
			public HRESULT GetProperty(PWSTR pwszName, out PROPVARIANT ppvValue) mut => VT.GetProperty(ref this, pwszName, out ppvValue);
			public HRESULT DeleteProperty(PWSTR pwszName) mut => VT.DeleteProperty(ref this, pwszName);
			public HRESULT GetAllPropertyNames(out PROPVARIANT ppvNames) mut => VT.GetAllPropertyNames(ref this, out ppvNames);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMetadata self, PWSTR pwszRFC1766) SetLanguage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMetadata self, out PWSTR ppwszRFC1766) GetLanguage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMetadata self, out PROPVARIANT ppvLanguages) GetAllLanguages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMetadata self, PWSTR pwszName, in PROPVARIANT ppvValue) SetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMetadata self, PWSTR pwszName, out PROPVARIANT ppvValue) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMetadata self, PWSTR pwszName) DeleteProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMetadata self, out PROPVARIANT ppvNames) GetAllPropertyNames;
			}
		}
		[CRepr]
		public struct IMFMetadataProvider : IUnknown
		{
			public const new Guid IID = .(0x56181d2d, 0xe221, 0x4adb, 0xb1, 0xc8, 0x3c, 0xee, 0x6a, 0x53, 0xf7, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMFMetadata(ref IMFPresentationDescriptor pPresentationDescriptor, uint32 dwStreamIdentifier, uint32 dwFlags, out IMFMetadata* ppMFMetadata) mut => VT.GetMFMetadata(ref this, ref pPresentationDescriptor, dwStreamIdentifier, dwFlags, out ppMFMetadata);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMetadataProvider self, ref IMFPresentationDescriptor pPresentationDescriptor, uint32 dwStreamIdentifier, uint32 dwFlags, out IMFMetadata* ppMFMetadata) GetMFMetadata;
			}
		}
		[CRepr]
		public struct IMFRateSupport : IUnknown
		{
			public const new Guid IID = .(0x0a9ccdbc, 0xd797, 0x4563, 0x96, 0x67, 0x94, 0xec, 0x5d, 0x79, 0x29, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSlowestRate(MFRATE_DIRECTION eDirection, BOOL fThin, out float pflRate) mut => VT.GetSlowestRate(ref this, eDirection, fThin, out pflRate);
			public HRESULT GetFastestRate(MFRATE_DIRECTION eDirection, BOOL fThin, out float pflRate) mut => VT.GetFastestRate(ref this, eDirection, fThin, out pflRate);
			public HRESULT IsRateSupported(BOOL fThin, float flRate, out float pflNearestSupportedRate) mut => VT.IsRateSupported(ref this, fThin, flRate, out pflNearestSupportedRate);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRateSupport self, MFRATE_DIRECTION eDirection, BOOL fThin, out float pflRate) GetSlowestRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRateSupport self, MFRATE_DIRECTION eDirection, BOOL fThin, out float pflRate) GetFastestRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRateSupport self, BOOL fThin, float flRate, out float pflNearestSupportedRate) IsRateSupported;
			}
		}
		[CRepr]
		public struct IMFRateControl : IUnknown
		{
			public const new Guid IID = .(0x88ddcd21, 0x03c3, 0x4275, 0x91, 0xed, 0x55, 0xee, 0x39, 0x29, 0x32, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRate(BOOL fThin, float flRate) mut => VT.SetRate(ref this, fThin, flRate);
			public HRESULT GetRate(out BOOL pfThin, out float pflRate) mut => VT.GetRate(ref this, out pfThin, out pflRate);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRateControl self, BOOL fThin, float flRate) SetRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRateControl self, out BOOL pfThin, out float pflRate) GetRate;
			}
		}
		[CRepr]
		public struct IMFTimecodeTranslate : IUnknown
		{
			public const new Guid IID = .(0xab9d8661, 0xf7e8, 0x4ef4, 0x98, 0x61, 0x89, 0xf3, 0x34, 0xf9, 0x4e, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginConvertTimecodeToHNS(in PROPVARIANT pPropVarTimecode, ref IMFAsyncCallback pCallback, ref IUnknown punkState) mut => VT.BeginConvertTimecodeToHNS(ref this, pPropVarTimecode, ref pCallback, ref punkState);
			public HRESULT EndConvertTimecodeToHNS(ref IMFAsyncResult pResult, out int64 phnsTime) mut => VT.EndConvertTimecodeToHNS(ref this, ref pResult, out phnsTime);
			public HRESULT BeginConvertHNSToTimecode(int64 hnsTime, ref IMFAsyncCallback pCallback, ref IUnknown punkState) mut => VT.BeginConvertHNSToTimecode(ref this, hnsTime, ref pCallback, ref punkState);
			public HRESULT EndConvertHNSToTimecode(ref IMFAsyncResult pResult, out PROPVARIANT pPropVarTimecode) mut => VT.EndConvertHNSToTimecode(ref this, ref pResult, out pPropVarTimecode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimecodeTranslate self, in PROPVARIANT pPropVarTimecode, ref IMFAsyncCallback pCallback, ref IUnknown punkState) BeginConvertTimecodeToHNS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimecodeTranslate self, ref IMFAsyncResult pResult, out int64 phnsTime) EndConvertTimecodeToHNS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimecodeTranslate self, int64 hnsTime, ref IMFAsyncCallback pCallback, ref IUnknown punkState) BeginConvertHNSToTimecode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimecodeTranslate self, ref IMFAsyncResult pResult, out PROPVARIANT pPropVarTimecode) EndConvertHNSToTimecode;
			}
		}
		[CRepr]
		public struct IMFSeekInfo : IUnknown
		{
			public const new Guid IID = .(0x26afea53, 0xd9ed, 0x42b5, 0xab, 0x80, 0xe6, 0x4f, 0x9e, 0xe3, 0x47, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNearestKeyFrames(in Guid pguidTimeFormat, in PROPVARIANT pvarStartPosition, out PROPVARIANT pvarPreviousKeyFrame, out PROPVARIANT pvarNextKeyFrame) mut => VT.GetNearestKeyFrames(ref this, pguidTimeFormat, pvarStartPosition, out pvarPreviousKeyFrame, out pvarNextKeyFrame);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSeekInfo self, in Guid pguidTimeFormat, in PROPVARIANT pvarStartPosition, out PROPVARIANT pvarPreviousKeyFrame, out PROPVARIANT pvarNextKeyFrame) GetNearestKeyFrames;
			}
		}
		[CRepr]
		public struct IMFSimpleAudioVolume : IUnknown
		{
			public const new Guid IID = .(0x089edf13, 0xcf71, 0x4338, 0x8d, 0x13, 0x9e, 0x56, 0x9d, 0xbd, 0xc3, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMasterVolume(float fLevel) mut => VT.SetMasterVolume(ref this, fLevel);
			public HRESULT GetMasterVolume(out float pfLevel) mut => VT.GetMasterVolume(ref this, out pfLevel);
			public HRESULT SetMute(BOOL bMute) mut => VT.SetMute(ref this, bMute);
			public HRESULT GetMute(out BOOL pbMute) mut => VT.GetMute(ref this, out pbMute);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSimpleAudioVolume self, float fLevel) SetMasterVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSimpleAudioVolume self, out float pfLevel) GetMasterVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSimpleAudioVolume self, BOOL bMute) SetMute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSimpleAudioVolume self, out BOOL pbMute) GetMute;
			}
		}
		[CRepr]
		public struct IMFAudioStreamVolume : IUnknown
		{
			public const new Guid IID = .(0x76b1bbdb, 0x4ec8, 0x4f36, 0xb1, 0x06, 0x70, 0xa9, 0x31, 0x6d, 0xf5, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetChannelCount(out uint32 pdwCount) mut => VT.GetChannelCount(ref this, out pdwCount);
			public HRESULT SetChannelVolume(uint32 dwIndex, float fLevel) mut => VT.SetChannelVolume(ref this, dwIndex, fLevel);
			public HRESULT GetChannelVolume(uint32 dwIndex, out float pfLevel) mut => VT.GetChannelVolume(ref this, dwIndex, out pfLevel);
			public HRESULT SetAllVolumes(uint32 dwCount, float* pfVolumes) mut => VT.SetAllVolumes(ref this, dwCount, pfVolumes);
			public HRESULT GetAllVolumes(uint32 dwCount, float* pfVolumes) mut => VT.GetAllVolumes(ref this, dwCount, pfVolumes);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAudioStreamVolume self, out uint32 pdwCount) GetChannelCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAudioStreamVolume self, uint32 dwIndex, float fLevel) SetChannelVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAudioStreamVolume self, uint32 dwIndex, out float pfLevel) GetChannelVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAudioStreamVolume self, uint32 dwCount, float* pfVolumes) SetAllVolumes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAudioStreamVolume self, uint32 dwCount, float* pfVolumes) GetAllVolumes;
			}
		}
		[CRepr]
		public struct IMFAudioPolicy : IUnknown
		{
			public const new Guid IID = .(0xa0638c2b, 0x6465, 0x4395, 0x9a, 0xe7, 0xa3, 0x21, 0xa9, 0xfd, 0x28, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetGroupingParam(in Guid rguidClass) mut => VT.SetGroupingParam(ref this, rguidClass);
			public HRESULT GetGroupingParam(out Guid pguidClass) mut => VT.GetGroupingParam(ref this, out pguidClass);
			public HRESULT SetDisplayName(PWSTR pszName) mut => VT.SetDisplayName(ref this, pszName);
			public HRESULT GetDisplayName(out PWSTR pszName) mut => VT.GetDisplayName(ref this, out pszName);
			public HRESULT SetIconPath(PWSTR pszPath) mut => VT.SetIconPath(ref this, pszPath);
			public HRESULT GetIconPath(out PWSTR pszPath) mut => VT.GetIconPath(ref this, out pszPath);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAudioPolicy self, in Guid rguidClass) SetGroupingParam;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAudioPolicy self, out Guid pguidClass) GetGroupingParam;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAudioPolicy self, PWSTR pszName) SetDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAudioPolicy self, out PWSTR pszName) GetDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAudioPolicy self, PWSTR pszPath) SetIconPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFAudioPolicy self, out PWSTR pszPath) GetIconPath;
			}
		}
		[CRepr]
		public struct IMFSampleGrabberSinkCallback : IMFClockStateSink
		{
			public const new Guid IID = .(0x8c7b80bf, 0xee42, 0x4b59, 0xb1, 0xdf, 0x55, 0x66, 0x8e, 0x1b, 0xdc, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSetPresentationClock(ref IMFPresentationClock pPresentationClock) mut => VT.OnSetPresentationClock(ref this, ref pPresentationClock);
			public HRESULT OnProcessSample(in Guid guidMajorMediaType, uint32 dwSampleFlags, int64 llSampleTime, int64 llSampleDuration, in uint8 pSampleBuffer, uint32 dwSampleSize) mut => VT.OnProcessSample(ref this, guidMajorMediaType, dwSampleFlags, llSampleTime, llSampleDuration, pSampleBuffer, dwSampleSize);
			public HRESULT OnShutdown() mut => VT.OnShutdown(ref this);

			[CRepr]
			public struct VTable : IMFClockStateSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleGrabberSinkCallback self, ref IMFPresentationClock pPresentationClock) OnSetPresentationClock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleGrabberSinkCallback self, in Guid guidMajorMediaType, uint32 dwSampleFlags, int64 llSampleTime, int64 llSampleDuration, in uint8 pSampleBuffer, uint32 dwSampleSize) OnProcessSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleGrabberSinkCallback self) OnShutdown;
			}
		}
		[CRepr]
		public struct IMFSampleGrabberSinkCallback2 : IMFSampleGrabberSinkCallback
		{
			public const new Guid IID = .(0xca86aa50, 0xc46e, 0x429e, 0xab, 0x27, 0x16, 0xd6, 0xac, 0x68, 0x44, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnProcessSampleEx(in Guid guidMajorMediaType, uint32 dwSampleFlags, int64 llSampleTime, int64 llSampleDuration, in uint8 pSampleBuffer, uint32 dwSampleSize, ref IMFAttributes pAttributes) mut => VT.OnProcessSampleEx(ref this, guidMajorMediaType, dwSampleFlags, llSampleTime, llSampleDuration, pSampleBuffer, dwSampleSize, ref pAttributes);

			[CRepr]
			public struct VTable : IMFSampleGrabberSinkCallback.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleGrabberSinkCallback2 self, in Guid guidMajorMediaType, uint32 dwSampleFlags, int64 llSampleTime, int64 llSampleDuration, in uint8 pSampleBuffer, uint32 dwSampleSize, ref IMFAttributes pAttributes) OnProcessSampleEx;
			}
		}
		[CRepr]
		public struct IMFWorkQueueServices : IUnknown
		{
			public const new Guid IID = .(0x35fe1bb8, 0xa3a9, 0x40fe, 0xbb, 0xec, 0xeb, 0x56, 0x9c, 0x9c, 0xcc, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginRegisterTopologyWorkQueuesWithMMCSS(ref IMFAsyncCallback pCallback, ref IUnknown pState) mut => VT.BeginRegisterTopologyWorkQueuesWithMMCSS(ref this, ref pCallback, ref pState);
			public HRESULT EndRegisterTopologyWorkQueuesWithMMCSS(ref IMFAsyncResult pResult) mut => VT.EndRegisterTopologyWorkQueuesWithMMCSS(ref this, ref pResult);
			public HRESULT BeginUnregisterTopologyWorkQueuesWithMMCSS(ref IMFAsyncCallback pCallback, ref IUnknown pState) mut => VT.BeginUnregisterTopologyWorkQueuesWithMMCSS(ref this, ref pCallback, ref pState);
			public HRESULT EndUnregisterTopologyWorkQueuesWithMMCSS(ref IMFAsyncResult pResult) mut => VT.EndUnregisterTopologyWorkQueuesWithMMCSS(ref this, ref pResult);
			public HRESULT GetTopologyWorkQueueMMCSSClass(uint32 dwTopologyWorkQueueId, char16* pwszClass, out uint32 pcchClass) mut => VT.GetTopologyWorkQueueMMCSSClass(ref this, dwTopologyWorkQueueId, pwszClass, out pcchClass);
			public HRESULT GetTopologyWorkQueueMMCSSTaskId(uint32 dwTopologyWorkQueueId, out uint32 pdwTaskId) mut => VT.GetTopologyWorkQueueMMCSSTaskId(ref this, dwTopologyWorkQueueId, out pdwTaskId);
			public HRESULT BeginRegisterPlatformWorkQueueWithMMCSS(uint32 dwPlatformWorkQueue, PWSTR wszClass, uint32 dwTaskId, ref IMFAsyncCallback pCallback, ref IUnknown pState) mut => VT.BeginRegisterPlatformWorkQueueWithMMCSS(ref this, dwPlatformWorkQueue, wszClass, dwTaskId, ref pCallback, ref pState);
			public HRESULT EndRegisterPlatformWorkQueueWithMMCSS(ref IMFAsyncResult pResult, out uint32 pdwTaskId) mut => VT.EndRegisterPlatformWorkQueueWithMMCSS(ref this, ref pResult, out pdwTaskId);
			public HRESULT BeginUnregisterPlatformWorkQueueWithMMCSS(uint32 dwPlatformWorkQueue, ref IMFAsyncCallback pCallback, ref IUnknown pState) mut => VT.BeginUnregisterPlatformWorkQueueWithMMCSS(ref this, dwPlatformWorkQueue, ref pCallback, ref pState);
			public HRESULT EndUnregisterPlatformWorkQueueWithMMCSS(ref IMFAsyncResult pResult) mut => VT.EndUnregisterPlatformWorkQueueWithMMCSS(ref this, ref pResult);
			public HRESULT GetPlaftormWorkQueueMMCSSClass(uint32 dwPlatformWorkQueueId, char16* pwszClass, out uint32 pcchClass) mut => VT.GetPlaftormWorkQueueMMCSSClass(ref this, dwPlatformWorkQueueId, pwszClass, out pcchClass);
			public HRESULT GetPlatformWorkQueueMMCSSTaskId(uint32 dwPlatformWorkQueueId, out uint32 pdwTaskId) mut => VT.GetPlatformWorkQueueMMCSSTaskId(ref this, dwPlatformWorkQueueId, out pdwTaskId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServices self, ref IMFAsyncCallback pCallback, ref IUnknown pState) BeginRegisterTopologyWorkQueuesWithMMCSS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServices self, ref IMFAsyncResult pResult) EndRegisterTopologyWorkQueuesWithMMCSS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServices self, ref IMFAsyncCallback pCallback, ref IUnknown pState) BeginUnregisterTopologyWorkQueuesWithMMCSS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServices self, ref IMFAsyncResult pResult) EndUnregisterTopologyWorkQueuesWithMMCSS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServices self, uint32 dwTopologyWorkQueueId, char16* pwszClass, out uint32 pcchClass) GetTopologyWorkQueueMMCSSClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServices self, uint32 dwTopologyWorkQueueId, out uint32 pdwTaskId) GetTopologyWorkQueueMMCSSTaskId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServices self, uint32 dwPlatformWorkQueue, PWSTR wszClass, uint32 dwTaskId, ref IMFAsyncCallback pCallback, ref IUnknown pState) BeginRegisterPlatformWorkQueueWithMMCSS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServices self, ref IMFAsyncResult pResult, out uint32 pdwTaskId) EndRegisterPlatformWorkQueueWithMMCSS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServices self, uint32 dwPlatformWorkQueue, ref IMFAsyncCallback pCallback, ref IUnknown pState) BeginUnregisterPlatformWorkQueueWithMMCSS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServices self, ref IMFAsyncResult pResult) EndUnregisterPlatformWorkQueueWithMMCSS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServices self, uint32 dwPlatformWorkQueueId, char16* pwszClass, out uint32 pcchClass) GetPlaftormWorkQueueMMCSSClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServices self, uint32 dwPlatformWorkQueueId, out uint32 pdwTaskId) GetPlatformWorkQueueMMCSSTaskId;
			}
		}
		[CRepr]
		public struct IMFWorkQueueServicesEx : IMFWorkQueueServices
		{
			public const new Guid IID = .(0x96bf961b, 0x40fe, 0x42f1, 0xba, 0x9d, 0x32, 0x02, 0x38, 0xb4, 0x97, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTopologyWorkQueueMMCSSPriority(uint32 dwTopologyWorkQueueId, out int32 plPriority) mut => VT.GetTopologyWorkQueueMMCSSPriority(ref this, dwTopologyWorkQueueId, out plPriority);
			public HRESULT BeginRegisterPlatformWorkQueueWithMMCSSEx(uint32 dwPlatformWorkQueue, PWSTR wszClass, uint32 dwTaskId, int32 lPriority, ref IMFAsyncCallback pCallback, ref IUnknown pState) mut => VT.BeginRegisterPlatformWorkQueueWithMMCSSEx(ref this, dwPlatformWorkQueue, wszClass, dwTaskId, lPriority, ref pCallback, ref pState);
			public HRESULT GetPlatformWorkQueueMMCSSPriority(uint32 dwPlatformWorkQueueId, out int32 plPriority) mut => VT.GetPlatformWorkQueueMMCSSPriority(ref this, dwPlatformWorkQueueId, out plPriority);

			[CRepr]
			public struct VTable : IMFWorkQueueServices.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServicesEx self, uint32 dwTopologyWorkQueueId, out int32 plPriority) GetTopologyWorkQueueMMCSSPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServicesEx self, uint32 dwPlatformWorkQueue, PWSTR wszClass, uint32 dwTaskId, int32 lPriority, ref IMFAsyncCallback pCallback, ref IUnknown pState) BeginRegisterPlatformWorkQueueWithMMCSSEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFWorkQueueServicesEx self, uint32 dwPlatformWorkQueueId, out int32 plPriority) GetPlatformWorkQueueMMCSSPriority;
			}
		}
		[CRepr]
		public struct IMFQualityManager : IUnknown
		{
			public const new Guid IID = .(0x8d009d86, 0x5b9f, 0x4115, 0xb1, 0xfc, 0x9f, 0x80, 0xd5, 0x2a, 0xb8, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyTopology(ref IMFTopology pTopology) mut => VT.NotifyTopology(ref this, ref pTopology);
			public HRESULT NotifyPresentationClock(ref IMFPresentationClock pClock) mut => VT.NotifyPresentationClock(ref this, ref pClock);
			public HRESULT NotifyProcessInput(ref IMFTopologyNode pNode, int32 lInputIndex, ref IMFSample pSample) mut => VT.NotifyProcessInput(ref this, ref pNode, lInputIndex, ref pSample);
			public HRESULT NotifyProcessOutput(ref IMFTopologyNode pNode, int32 lOutputIndex, ref IMFSample pSample) mut => VT.NotifyProcessOutput(ref this, ref pNode, lOutputIndex, ref pSample);
			public HRESULT NotifyQualityEvent(ref IUnknown pObject, ref IMFMediaEvent pEvent) mut => VT.NotifyQualityEvent(ref this, ref pObject, ref pEvent);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityManager self, ref IMFTopology pTopology) NotifyTopology;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityManager self, ref IMFPresentationClock pClock) NotifyPresentationClock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityManager self, ref IMFTopologyNode pNode, int32 lInputIndex, ref IMFSample pSample) NotifyProcessInput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityManager self, ref IMFTopologyNode pNode, int32 lOutputIndex, ref IMFSample pSample) NotifyProcessOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityManager self, ref IUnknown pObject, ref IMFMediaEvent pEvent) NotifyQualityEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityManager self) Shutdown;
			}
		}
		[CRepr]
		public struct IMFQualityAdvise : IUnknown
		{
			public const new Guid IID = .(0xec15e2e9, 0xe36b, 0x4f7c, 0x87, 0x58, 0x77, 0xd4, 0x52, 0xef, 0x4c, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDropMode(MF_QUALITY_DROP_MODE eDropMode) mut => VT.SetDropMode(ref this, eDropMode);
			public HRESULT SetQualityLevel(MF_QUALITY_LEVEL eQualityLevel) mut => VT.SetQualityLevel(ref this, eQualityLevel);
			public HRESULT GetDropMode(out MF_QUALITY_DROP_MODE peDropMode) mut => VT.GetDropMode(ref this, out peDropMode);
			public HRESULT GetQualityLevel(out MF_QUALITY_LEVEL peQualityLevel) mut => VT.GetQualityLevel(ref this, out peQualityLevel);
			public HRESULT DropTime(int64 hnsAmountToDrop) mut => VT.DropTime(ref this, hnsAmountToDrop);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityAdvise self, MF_QUALITY_DROP_MODE eDropMode) SetDropMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityAdvise self, MF_QUALITY_LEVEL eQualityLevel) SetQualityLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityAdvise self, out MF_QUALITY_DROP_MODE peDropMode) GetDropMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityAdvise self, out MF_QUALITY_LEVEL peQualityLevel) GetQualityLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityAdvise self, int64 hnsAmountToDrop) DropTime;
			}
		}
		[CRepr]
		public struct IMFQualityAdvise2 : IMFQualityAdvise
		{
			public const new Guid IID = .(0xf3706f0d, 0x8ea2, 0x4886, 0x80, 0x00, 0x71, 0x55, 0xe9, 0xec, 0x2e, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyQualityEvent(ref IMFMediaEvent pEvent, out uint32 pdwFlags) mut => VT.NotifyQualityEvent(ref this, ref pEvent, out pdwFlags);

			[CRepr]
			public struct VTable : IMFQualityAdvise.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityAdvise2 self, ref IMFMediaEvent pEvent, out uint32 pdwFlags) NotifyQualityEvent;
			}
		}
		[CRepr]
		public struct IMFQualityAdviseLimits : IUnknown
		{
			public const new Guid IID = .(0xdfcd8e4d, 0x30b5, 0x4567, 0xac, 0xaa, 0x8e, 0xb5, 0xb7, 0x85, 0x3d, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMaximumDropMode(out MF_QUALITY_DROP_MODE peDropMode) mut => VT.GetMaximumDropMode(ref this, out peDropMode);
			public HRESULT GetMinimumQualityLevel(out MF_QUALITY_LEVEL peQualityLevel) mut => VT.GetMinimumQualityLevel(ref this, out peQualityLevel);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityAdviseLimits self, out MF_QUALITY_DROP_MODE peDropMode) GetMaximumDropMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFQualityAdviseLimits self, out MF_QUALITY_LEVEL peQualityLevel) GetMinimumQualityLevel;
			}
		}
		[CRepr]
		public struct IMFRealTimeClient : IUnknown
		{
			public const new Guid IID = .(0x2347d60b, 0x3fb5, 0x480c, 0x88, 0x03, 0x8d, 0xf3, 0xad, 0xcd, 0x3e, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterThreads(uint32 dwTaskIndex, PWSTR wszClass) mut => VT.RegisterThreads(ref this, dwTaskIndex, wszClass);
			public HRESULT UnregisterThreads() mut => VT.UnregisterThreads(ref this);
			public HRESULT SetWorkQueue(uint32 dwWorkQueueId) mut => VT.SetWorkQueue(ref this, dwWorkQueueId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRealTimeClient self, uint32 dwTaskIndex, PWSTR wszClass) RegisterThreads;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRealTimeClient self) UnregisterThreads;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRealTimeClient self, uint32 dwWorkQueueId) SetWorkQueue;
			}
		}
		[CRepr]
		public struct IMFRealTimeClientEx : IUnknown
		{
			public const new Guid IID = .(0x03910848, 0xab16, 0x4611, 0xb1, 0x00, 0x17, 0xb8, 0x8a, 0xe2, 0xf2, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterThreadsEx(out uint32 pdwTaskIndex, PWSTR wszClassName, int32 lBasePriority) mut => VT.RegisterThreadsEx(ref this, out pdwTaskIndex, wszClassName, lBasePriority);
			public HRESULT UnregisterThreads() mut => VT.UnregisterThreads(ref this);
			public HRESULT SetWorkQueueEx(uint32 dwMultithreadedWorkQueueId, int32 lWorkItemBasePriority) mut => VT.SetWorkQueueEx(ref this, dwMultithreadedWorkQueueId, lWorkItemBasePriority);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRealTimeClientEx self, out uint32 pdwTaskIndex, PWSTR wszClassName, int32 lBasePriority) RegisterThreadsEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRealTimeClientEx self) UnregisterThreads;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRealTimeClientEx self, uint32 dwMultithreadedWorkQueueId, int32 lWorkItemBasePriority) SetWorkQueueEx;
			}
		}
		[CRepr]
		public struct IMFSequencerSource : IUnknown
		{
			public const new Guid IID = .(0x197cd219, 0x19cb, 0x4de1, 0xa6, 0x4c, 0xac, 0xf2, 0xed, 0xcb, 0xe5, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AppendTopology(ref IMFTopology pTopology, uint32 dwFlags, out uint32 pdwId) mut => VT.AppendTopology(ref this, ref pTopology, dwFlags, out pdwId);
			public HRESULT DeleteTopology(uint32 dwId) mut => VT.DeleteTopology(ref this, dwId);
			public HRESULT GetPresentationContext(ref IMFPresentationDescriptor pPD, uint32* pId, IMFTopology** ppTopology) mut => VT.GetPresentationContext(ref this, ref pPD, pId, ppTopology);
			public HRESULT UpdateTopology(uint32 dwId, ref IMFTopology pTopology) mut => VT.UpdateTopology(ref this, dwId, ref pTopology);
			public HRESULT UpdateTopologyFlags(uint32 dwId, uint32 dwFlags) mut => VT.UpdateTopologyFlags(ref this, dwId, dwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSequencerSource self, ref IMFTopology pTopology, uint32 dwFlags, out uint32 pdwId) AppendTopology;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSequencerSource self, uint32 dwId) DeleteTopology;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSequencerSource self, ref IMFPresentationDescriptor pPD, uint32* pId, IMFTopology** ppTopology) GetPresentationContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSequencerSource self, uint32 dwId, ref IMFTopology pTopology) UpdateTopology;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSequencerSource self, uint32 dwId, uint32 dwFlags) UpdateTopologyFlags;
			}
		}
		[CRepr]
		public struct IMFMediaSourceTopologyProvider : IUnknown
		{
			public const new Guid IID = .(0x0e1d6009, 0xc9f3, 0x442d, 0x8c, 0x51, 0xa4, 0x2d, 0x2d, 0x49, 0x45, 0x2f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMediaSourceTopology(ref IMFPresentationDescriptor pPresentationDescriptor, out IMFTopology* ppTopology) mut => VT.GetMediaSourceTopology(ref this, ref pPresentationDescriptor, out ppTopology);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSourceTopologyProvider self, ref IMFPresentationDescriptor pPresentationDescriptor, out IMFTopology* ppTopology) GetMediaSourceTopology;
			}
		}
		[CRepr]
		public struct IMFMediaSourcePresentationProvider : IUnknown
		{
			public const new Guid IID = .(0x0e1d600a, 0xc9f3, 0x442d, 0x8c, 0x51, 0xa4, 0x2d, 0x2d, 0x49, 0x45, 0x2f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ForceEndOfPresentation(ref IMFPresentationDescriptor pPresentationDescriptor) mut => VT.ForceEndOfPresentation(ref this, ref pPresentationDescriptor);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSourcePresentationProvider self, ref IMFPresentationDescriptor pPresentationDescriptor) ForceEndOfPresentation;
			}
		}
		[CRepr]
		public struct IMFTopologyNodeAttributeEditor : IUnknown
		{
			public const new Guid IID = .(0x676aa6dd, 0x238a, 0x410d, 0xbb, 0x99, 0x65, 0x66, 0x8d, 0x01, 0x60, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateNodeAttributes(uint64 TopoId, uint32 cUpdates, MFTOPONODE_ATTRIBUTE_UPDATE* pUpdates) mut => VT.UpdateNodeAttributes(ref this, TopoId, cUpdates, pUpdates);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyNodeAttributeEditor self, uint64 TopoId, uint32 cUpdates, MFTOPONODE_ATTRIBUTE_UPDATE* pUpdates) UpdateNodeAttributes;
			}
		}
		[CRepr]
		public struct IMFByteStreamBuffering : IUnknown
		{
			public const new Guid IID = .(0x6d66d782, 0x1d4f, 0x4db7, 0x8c, 0x63, 0xcb, 0x8c, 0x77, 0xf1, 0xef, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBufferingParams(ref MFBYTESTREAM_BUFFERING_PARAMS pParams) mut => VT.SetBufferingParams(ref this, ref pParams);
			public HRESULT EnableBuffering(BOOL fEnable) mut => VT.EnableBuffering(ref this, fEnable);
			public HRESULT StopBuffering() mut => VT.StopBuffering(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamBuffering self, ref MFBYTESTREAM_BUFFERING_PARAMS pParams) SetBufferingParams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamBuffering self, BOOL fEnable) EnableBuffering;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamBuffering self) StopBuffering;
			}
		}
		[CRepr]
		public struct IMFByteStreamCacheControl : IUnknown
		{
			public const new Guid IID = .(0xf5042ea4, 0x7a96, 0x4a75, 0xaa, 0x7b, 0x2b, 0xe1, 0xef, 0x7f, 0x88, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StopBackgroundTransfer() mut => VT.StopBackgroundTransfer(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamCacheControl self) StopBackgroundTransfer;
			}
		}
		[CRepr]
		public struct IMFByteStreamTimeSeek : IUnknown
		{
			public const new Guid IID = .(0x64976bfa, 0xfb61, 0x4041, 0x90, 0x69, 0x8c, 0x9a, 0x5f, 0x65, 0x9b, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsTimeSeekSupported(out BOOL pfTimeSeekIsSupported) mut => VT.IsTimeSeekSupported(ref this, out pfTimeSeekIsSupported);
			public HRESULT TimeSeek(uint64 qwTimePosition) mut => VT.TimeSeek(ref this, qwTimePosition);
			public HRESULT GetTimeSeekResult(out uint64 pqwStartTime, out uint64 pqwStopTime, out uint64 pqwDuration) mut => VT.GetTimeSeekResult(ref this, out pqwStartTime, out pqwStopTime, out pqwDuration);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamTimeSeek self, out BOOL pfTimeSeekIsSupported) IsTimeSeekSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamTimeSeek self, uint64 qwTimePosition) TimeSeek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamTimeSeek self, out uint64 pqwStartTime, out uint64 pqwStopTime, out uint64 pqwDuration) GetTimeSeekResult;
			}
		}
		[CRepr]
		public struct IMFByteStreamCacheControl2 : IMFByteStreamCacheControl
		{
			public const new Guid IID = .(0x71ce469c, 0xf34b, 0x49ea, 0xa5, 0x6b, 0x2d, 0x2a, 0x10, 0xe5, 0x11, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetByteRanges(out uint32 pcRanges, MF_BYTE_STREAM_CACHE_RANGE** ppRanges) mut => VT.GetByteRanges(ref this, out pcRanges, ppRanges);
			public HRESULT SetCacheLimit(uint64 qwBytes) mut => VT.SetCacheLimit(ref this, qwBytes);
			public HRESULT IsBackgroundTransferActive(out BOOL pfActive) mut => VT.IsBackgroundTransferActive(ref this, out pfActive);

			[CRepr]
			public struct VTable : IMFByteStreamCacheControl.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamCacheControl2 self, out uint32 pcRanges, MF_BYTE_STREAM_CACHE_RANGE** ppRanges) GetByteRanges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamCacheControl2 self, uint64 qwBytes) SetCacheLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamCacheControl2 self, out BOOL pfActive) IsBackgroundTransferActive;
			}
		}
		[CRepr]
		public struct IMFNetCredential : IUnknown
		{
			public const new Guid IID = .(0x5b87ef6a, 0x7ed8, 0x434f, 0xba, 0x0e, 0x18, 0x4f, 0xac, 0x16, 0x28, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetUser(ref uint8 pbData, uint32 cbData, BOOL fDataIsEncrypted) mut => VT.SetUser(ref this, ref pbData, cbData, fDataIsEncrypted);
			public HRESULT SetPassword(ref uint8 pbData, uint32 cbData, BOOL fDataIsEncrypted) mut => VT.SetPassword(ref this, ref pbData, cbData, fDataIsEncrypted);
			public HRESULT GetUser(uint8* pbData, out uint32 pcbData, BOOL fEncryptData) mut => VT.GetUser(ref this, pbData, out pcbData, fEncryptData);
			public HRESULT GetPassword(uint8* pbData, out uint32 pcbData, BOOL fEncryptData) mut => VT.GetPassword(ref this, pbData, out pcbData, fEncryptData);
			public HRESULT LoggedOnUser(out BOOL pfLoggedOnUser) mut => VT.LoggedOnUser(ref this, out pfLoggedOnUser);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCredential self, ref uint8 pbData, uint32 cbData, BOOL fDataIsEncrypted) SetUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCredential self, ref uint8 pbData, uint32 cbData, BOOL fDataIsEncrypted) SetPassword;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCredential self, uint8* pbData, out uint32 pcbData, BOOL fEncryptData) GetUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCredential self, uint8* pbData, out uint32 pcbData, BOOL fEncryptData) GetPassword;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCredential self, out BOOL pfLoggedOnUser) LoggedOnUser;
			}
		}
		[CRepr]
		public struct IMFNetCredentialManager : IUnknown
		{
			public const new Guid IID = .(0x5b87ef6b, 0x7ed8, 0x434f, 0xba, 0x0e, 0x18, 0x4f, 0xac, 0x16, 0x28, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginGetCredentials(ref MFNetCredentialManagerGetParam pParam, ref IMFAsyncCallback pCallback, ref IUnknown pState) mut => VT.BeginGetCredentials(ref this, ref pParam, ref pCallback, ref pState);
			public HRESULT EndGetCredentials(ref IMFAsyncResult pResult, out IMFNetCredential* ppCred) mut => VT.EndGetCredentials(ref this, ref pResult, out ppCred);
			public HRESULT SetGood(ref IMFNetCredential pCred, BOOL fGood) mut => VT.SetGood(ref this, ref pCred, fGood);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCredentialManager self, ref MFNetCredentialManagerGetParam pParam, ref IMFAsyncCallback pCallback, ref IUnknown pState) BeginGetCredentials;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCredentialManager self, ref IMFAsyncResult pResult, out IMFNetCredential* ppCred) EndGetCredentials;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCredentialManager self, ref IMFNetCredential pCred, BOOL fGood) SetGood;
			}
		}
		[CRepr]
		public struct IMFNetCredentialCache : IUnknown
		{
			public const new Guid IID = .(0x5b87ef6c, 0x7ed8, 0x434f, 0xba, 0x0e, 0x18, 0x4f, 0xac, 0x16, 0x28, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCredential(PWSTR pszUrl, PWSTR pszRealm, uint32 dwAuthenticationFlags, out IMFNetCredential* ppCred, out uint32 pdwRequirementsFlags) mut => VT.GetCredential(ref this, pszUrl, pszRealm, dwAuthenticationFlags, out ppCred, out pdwRequirementsFlags);
			public HRESULT SetGood(ref IMFNetCredential pCred, BOOL fGood) mut => VT.SetGood(ref this, ref pCred, fGood);
			public HRESULT SetUserOptions(ref IMFNetCredential pCred, uint32 dwOptionsFlags) mut => VT.SetUserOptions(ref this, ref pCred, dwOptionsFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCredentialCache self, PWSTR pszUrl, PWSTR pszRealm, uint32 dwAuthenticationFlags, out IMFNetCredential* ppCred, out uint32 pdwRequirementsFlags) GetCredential;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCredentialCache self, ref IMFNetCredential pCred, BOOL fGood) SetGood;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCredentialCache self, ref IMFNetCredential pCred, uint32 dwOptionsFlags) SetUserOptions;
			}
		}
		[CRepr]
		public struct IMFSSLCertificateManager : IUnknown
		{
			public const new Guid IID = .(0x61f7d887, 0x1230, 0x4a8b, 0xae, 0xba, 0x8a, 0xd4, 0x34, 0xd1, 0xa6, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClientCertificate(PWSTR pszURL, out uint8* ppbData, out uint32 pcbData) mut => VT.GetClientCertificate(ref this, pszURL, out ppbData, out pcbData);
			public HRESULT BeginGetClientCertificate(PWSTR pszURL, ref IMFAsyncCallback pCallback, ref IUnknown pState) mut => VT.BeginGetClientCertificate(ref this, pszURL, ref pCallback, ref pState);
			public HRESULT EndGetClientCertificate(ref IMFAsyncResult pResult, out uint8* ppbData, out uint32 pcbData) mut => VT.EndGetClientCertificate(ref this, ref pResult, out ppbData, out pcbData);
			public HRESULT GetCertificatePolicy(PWSTR pszURL, out BOOL pfOverrideAutomaticCheck, out BOOL pfClientCertificateAvailable) mut => VT.GetCertificatePolicy(ref this, pszURL, out pfOverrideAutomaticCheck, out pfClientCertificateAvailable);
			public HRESULT OnServerCertificate(PWSTR pszURL, ref uint8 pbData, uint32 cbData, out BOOL pfIsGood) mut => VT.OnServerCertificate(ref this, pszURL, ref pbData, cbData, out pfIsGood);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSSLCertificateManager self, PWSTR pszURL, out uint8* ppbData, out uint32 pcbData) GetClientCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSSLCertificateManager self, PWSTR pszURL, ref IMFAsyncCallback pCallback, ref IUnknown pState) BeginGetClientCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSSLCertificateManager self, ref IMFAsyncResult pResult, out uint8* ppbData, out uint32 pcbData) EndGetClientCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSSLCertificateManager self, PWSTR pszURL, out BOOL pfOverrideAutomaticCheck, out BOOL pfClientCertificateAvailable) GetCertificatePolicy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSSLCertificateManager self, PWSTR pszURL, ref uint8 pbData, uint32 cbData, out BOOL pfIsGood) OnServerCertificate;
			}
		}
		[CRepr]
		public struct IMFNetResourceFilter : IUnknown
		{
			public const new Guid IID = .(0x091878a3, 0xbf11, 0x4a5c, 0xbc, 0x9f, 0x33, 0x99, 0x5b, 0x06, 0xef, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnRedirect(PWSTR pszUrl, out int16 pvbCancel) mut => VT.OnRedirect(ref this, pszUrl, out pvbCancel);
			public HRESULT OnSendingRequest(PWSTR pszUrl) mut => VT.OnSendingRequest(ref this, pszUrl);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetResourceFilter self, PWSTR pszUrl, out int16 pvbCancel) OnRedirect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetResourceFilter self, PWSTR pszUrl) OnSendingRequest;
			}
		}
		[CRepr]
		public struct IMFSourceOpenMonitor : IUnknown
		{
			public const new Guid IID = .(0x059054b3, 0x027c, 0x494c, 0xa2, 0x7d, 0x91, 0x13, 0x29, 0x1c, 0xf8, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSourceEvent(ref IMFMediaEvent pEvent) mut => VT.OnSourceEvent(ref this, ref pEvent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceOpenMonitor self, ref IMFMediaEvent pEvent) OnSourceEvent;
			}
		}
		[CRepr]
		public struct IMFNetProxyLocator : IUnknown
		{
			public const new Guid IID = .(0xe9cd0383, 0xa268, 0x4bb4, 0x82, 0xde, 0x65, 0x8d, 0x53, 0x57, 0x4d, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindFirstProxy(PWSTR pszHost, PWSTR pszUrl, BOOL fReserved) mut => VT.FindFirstProxy(ref this, pszHost, pszUrl, fReserved);
			public HRESULT FindNextProxy() mut => VT.FindNextProxy(ref this);
			public HRESULT RegisterProxyResult(HRESULT hrOp) mut => VT.RegisterProxyResult(ref this, hrOp);
			public HRESULT GetCurrentProxy(char16* pszStr, out uint32 pcchStr) mut => VT.GetCurrentProxy(ref this, pszStr, out pcchStr);
			public HRESULT Clone(out IMFNetProxyLocator* ppProxyLocator) mut => VT.Clone(ref this, out ppProxyLocator);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetProxyLocator self, PWSTR pszHost, PWSTR pszUrl, BOOL fReserved) FindFirstProxy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetProxyLocator self) FindNextProxy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetProxyLocator self, HRESULT hrOp) RegisterProxyResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetProxyLocator self, char16* pszStr, out uint32 pcchStr) GetCurrentProxy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetProxyLocator self, out IMFNetProxyLocator* ppProxyLocator) Clone;
			}
		}
		[CRepr]
		public struct IMFNetProxyLocatorFactory : IUnknown
		{
			public const new Guid IID = .(0xe9cd0384, 0xa268, 0x4bb4, 0x82, 0xde, 0x65, 0x8d, 0x53, 0x57, 0x4d, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateProxyLocator(PWSTR pszProtocol, out IMFNetProxyLocator* ppProxyLocator) mut => VT.CreateProxyLocator(ref this, pszProtocol, out ppProxyLocator);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetProxyLocatorFactory self, PWSTR pszProtocol, out IMFNetProxyLocator* ppProxyLocator) CreateProxyLocator;
			}
		}
		[CRepr]
		public struct IMFSaveJob : IUnknown
		{
			public const new Guid IID = .(0xe9931663, 0x80bf, 0x4c6e, 0x98, 0xaf, 0x5d, 0xcf, 0x58, 0x74, 0x7d, 0x1f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginSave(ref IMFByteStream pStream, ref IMFAsyncCallback pCallback, ref IUnknown pState) mut => VT.BeginSave(ref this, ref pStream, ref pCallback, ref pState);
			public HRESULT EndSave(ref IMFAsyncResult pResult) mut => VT.EndSave(ref this, ref pResult);
			public HRESULT CancelSave() mut => VT.CancelSave(ref this);
			public HRESULT GetProgress(out uint32 pdwPercentComplete) mut => VT.GetProgress(ref this, out pdwPercentComplete);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSaveJob self, ref IMFByteStream pStream, ref IMFAsyncCallback pCallback, ref IUnknown pState) BeginSave;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSaveJob self, ref IMFAsyncResult pResult) EndSave;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSaveJob self) CancelSave;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSaveJob self, out uint32 pdwPercentComplete) GetProgress;
			}
		}
		[CRepr]
		public struct IMFNetSchemeHandlerConfig : IUnknown
		{
			public const new Guid IID = .(0x7be19e73, 0xc9bf, 0x468a, 0xac, 0x5a, 0xa5, 0xe8, 0x65, 0x3b, 0xec, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNumberOfSupportedProtocols(out uint32 pcProtocols) mut => VT.GetNumberOfSupportedProtocols(ref this, out pcProtocols);
			public HRESULT GetSupportedProtocolType(uint32 nProtocolIndex, out MFNETSOURCE_PROTOCOL_TYPE pnProtocolType) mut => VT.GetSupportedProtocolType(ref this, nProtocolIndex, out pnProtocolType);
			public HRESULT ResetProtocolRolloverSettings() mut => VT.ResetProtocolRolloverSettings(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetSchemeHandlerConfig self, out uint32 pcProtocols) GetNumberOfSupportedProtocols;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetSchemeHandlerConfig self, uint32 nProtocolIndex, out MFNETSOURCE_PROTOCOL_TYPE pnProtocolType) GetSupportedProtocolType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetSchemeHandlerConfig self) ResetProtocolRolloverSettings;
			}
		}
		[CRepr]
		public struct IMFSchemeHandler : IUnknown
		{
			public const new Guid IID = .(0x6d4c7b74, 0x52a0, 0x4bb7, 0xb0, 0xdb, 0x55, 0xf2, 0x9f, 0x47, 0xa6, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginCreateObject(PWSTR pwszURL, uint32 dwFlags, ref IPropertyStore pProps, IUnknown** ppIUnknownCancelCookie, ref IMFAsyncCallback pCallback, ref IUnknown punkState) mut => VT.BeginCreateObject(ref this, pwszURL, dwFlags, ref pProps, ppIUnknownCancelCookie, ref pCallback, ref punkState);
			public HRESULT EndCreateObject(ref IMFAsyncResult pResult, out MF_OBJECT_TYPE pObjectType, out IUnknown* ppObject) mut => VT.EndCreateObject(ref this, ref pResult, out pObjectType, out ppObject);
			public HRESULT CancelObjectCreation(ref IUnknown pIUnknownCancelCookie) mut => VT.CancelObjectCreation(ref this, ref pIUnknownCancelCookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSchemeHandler self, PWSTR pwszURL, uint32 dwFlags, ref IPropertyStore pProps, IUnknown** ppIUnknownCancelCookie, ref IMFAsyncCallback pCallback, ref IUnknown punkState) BeginCreateObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSchemeHandler self, ref IMFAsyncResult pResult, out MF_OBJECT_TYPE pObjectType, out IUnknown* ppObject) EndCreateObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSchemeHandler self, ref IUnknown pIUnknownCancelCookie) CancelObjectCreation;
			}
		}
		[CRepr]
		public struct IMFByteStreamHandler : IUnknown
		{
			public const new Guid IID = .(0xbb420aa4, 0x765b, 0x4a1f, 0x91, 0xfe, 0xd6, 0xa8, 0xa1, 0x43, 0x92, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginCreateObject(ref IMFByteStream pByteStream, PWSTR pwszURL, uint32 dwFlags, ref IPropertyStore pProps, IUnknown** ppIUnknownCancelCookie, ref IMFAsyncCallback pCallback, ref IUnknown punkState) mut => VT.BeginCreateObject(ref this, ref pByteStream, pwszURL, dwFlags, ref pProps, ppIUnknownCancelCookie, ref pCallback, ref punkState);
			public HRESULT EndCreateObject(ref IMFAsyncResult pResult, out MF_OBJECT_TYPE pObjectType, out IUnknown* ppObject) mut => VT.EndCreateObject(ref this, ref pResult, out pObjectType, out ppObject);
			public HRESULT CancelObjectCreation(ref IUnknown pIUnknownCancelCookie) mut => VT.CancelObjectCreation(ref this, ref pIUnknownCancelCookie);
			public HRESULT GetMaxNumberOfBytesRequiredForResolution(out uint64 pqwBytes) mut => VT.GetMaxNumberOfBytesRequiredForResolution(ref this, out pqwBytes);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamHandler self, ref IMFByteStream pByteStream, PWSTR pwszURL, uint32 dwFlags, ref IPropertyStore pProps, IUnknown** ppIUnknownCancelCookie, ref IMFAsyncCallback pCallback, ref IUnknown punkState) BeginCreateObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamHandler self, ref IMFAsyncResult pResult, out MF_OBJECT_TYPE pObjectType, out IUnknown* ppObject) EndCreateObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamHandler self, ref IUnknown pIUnknownCancelCookie) CancelObjectCreation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFByteStreamHandler self, out uint64 pqwBytes) GetMaxNumberOfBytesRequiredForResolution;
			}
		}
		[CRepr]
		public struct IMFTrustedInput : IUnknown
		{
			public const new Guid IID = .(0x542612c4, 0xa1b8, 0x4632, 0xb5, 0x21, 0xde, 0x11, 0xea, 0x64, 0xa0, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInputTrustAuthority(uint32 dwStreamID, in Guid riid, out IUnknown* ppunkObject) mut => VT.GetInputTrustAuthority(ref this, dwStreamID, riid, out ppunkObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTrustedInput self, uint32 dwStreamID, in Guid riid, out IUnknown* ppunkObject) GetInputTrustAuthority;
			}
		}
		[CRepr]
		public struct IMFInputTrustAuthority : IUnknown
		{
			public const new Guid IID = .(0xd19f8e98, 0xb126, 0x4446, 0x89, 0x0c, 0x5d, 0xcb, 0x7a, 0xd7, 0x14, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDecrypter(in Guid riid, void** ppv) mut => VT.GetDecrypter(ref this, riid, ppv);
			public HRESULT RequestAccess(MFPOLICYMANAGER_ACTION Action, out IMFActivate* ppContentEnablerActivate) mut => VT.RequestAccess(ref this, Action, out ppContentEnablerActivate);
			public HRESULT GetPolicy(MFPOLICYMANAGER_ACTION Action, out IMFOutputPolicy* ppPolicy) mut => VT.GetPolicy(ref this, Action, out ppPolicy);
			public HRESULT BindAccess(ref MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS pParam) mut => VT.BindAccess(ref this, ref pParam);
			public HRESULT UpdateAccess(ref MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS pParam) mut => VT.UpdateAccess(ref this, ref pParam);
			public HRESULT Reset() mut => VT.Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFInputTrustAuthority self, in Guid riid, void** ppv) GetDecrypter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFInputTrustAuthority self, MFPOLICYMANAGER_ACTION Action, out IMFActivate* ppContentEnablerActivate) RequestAccess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFInputTrustAuthority self, MFPOLICYMANAGER_ACTION Action, out IMFOutputPolicy* ppPolicy) GetPolicy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFInputTrustAuthority self, ref MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS pParam) BindAccess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFInputTrustAuthority self, ref MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS pParam) UpdateAccess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFInputTrustAuthority self) Reset;
			}
		}
		[CRepr]
		public struct IMFTrustedOutput : IUnknown
		{
			public const new Guid IID = .(0xd19f8e95, 0xb126, 0x4446, 0x89, 0x0c, 0x5d, 0xcb, 0x7a, 0xd7, 0x14, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOutputTrustAuthorityCount(out uint32 pcOutputTrustAuthorities) mut => VT.GetOutputTrustAuthorityCount(ref this, out pcOutputTrustAuthorities);
			public HRESULT GetOutputTrustAuthorityByIndex(uint32 dwIndex, out IMFOutputTrustAuthority* ppauthority) mut => VT.GetOutputTrustAuthorityByIndex(ref this, dwIndex, out ppauthority);
			public HRESULT IsFinal(out BOOL pfIsFinal) mut => VT.IsFinal(ref this, out pfIsFinal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTrustedOutput self, out uint32 pcOutputTrustAuthorities) GetOutputTrustAuthorityCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTrustedOutput self, uint32 dwIndex, out IMFOutputTrustAuthority* ppauthority) GetOutputTrustAuthorityByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTrustedOutput self, out BOOL pfIsFinal) IsFinal;
			}
		}
		[CRepr]
		public struct IMFOutputTrustAuthority : IUnknown
		{
			public const new Guid IID = .(0xd19f8e94, 0xb126, 0x4446, 0x89, 0x0c, 0x5d, 0xcb, 0x7a, 0xd7, 0x14, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAction(out MFPOLICYMANAGER_ACTION pAction) mut => VT.GetAction(ref this, out pAction);
			public HRESULT SetPolicy(IMFOutputPolicy** ppPolicy, uint32 nPolicy, uint8** ppbTicket, uint32* pcbTicket) mut => VT.SetPolicy(ref this, ppPolicy, nPolicy, ppbTicket, pcbTicket);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFOutputTrustAuthority self, out MFPOLICYMANAGER_ACTION pAction) GetAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFOutputTrustAuthority self, IMFOutputPolicy** ppPolicy, uint32 nPolicy, uint8** ppbTicket, uint32* pcbTicket) SetPolicy;
			}
		}
		[CRepr]
		public struct IMFOutputPolicy : IMFAttributes
		{
			public const new Guid IID = .(0x7f00f10a, 0xdaed, 0x41af, 0xab, 0x26, 0x5f, 0xdf, 0xa4, 0xdf, 0xba, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GenerateRequiredSchemas(uint32 dwAttributes, Guid guidOutputSubType, ref Guid rgGuidProtectionSchemasSupported, uint32 cProtectionSchemasSupported, out IMFCollection* ppRequiredProtectionSchemas) mut => VT.GenerateRequiredSchemas(ref this, dwAttributes, guidOutputSubType, ref rgGuidProtectionSchemasSupported, cProtectionSchemasSupported, out ppRequiredProtectionSchemas);
			public HRESULT GetOriginatorID(out Guid pguidOriginatorID) mut => VT.GetOriginatorID(ref this, out pguidOriginatorID);
			public HRESULT GetMinimumGRLVersion(out uint32 pdwMinimumGRLVersion) mut => VT.GetMinimumGRLVersion(ref this, out pdwMinimumGRLVersion);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFOutputPolicy self, uint32 dwAttributes, Guid guidOutputSubType, ref Guid rgGuidProtectionSchemasSupported, uint32 cProtectionSchemasSupported, out IMFCollection* ppRequiredProtectionSchemas) GenerateRequiredSchemas;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFOutputPolicy self, out Guid pguidOriginatorID) GetOriginatorID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFOutputPolicy self, out uint32 pdwMinimumGRLVersion) GetMinimumGRLVersion;
			}
		}
		[CRepr]
		public struct IMFOutputSchema : IMFAttributes
		{
			public const new Guid IID = .(0x7be0fc5b, 0xabd9, 0x44fb, 0xa5, 0xc8, 0xf5, 0x01, 0x36, 0xe7, 0x15, 0x99);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSchemaType(out Guid pguidSchemaType) mut => VT.GetSchemaType(ref this, out pguidSchemaType);
			public HRESULT GetConfigurationData(out uint32 pdwVal) mut => VT.GetConfigurationData(ref this, out pdwVal);
			public HRESULT GetOriginatorID(out Guid pguidOriginatorID) mut => VT.GetOriginatorID(ref this, out pguidOriginatorID);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFOutputSchema self, out Guid pguidSchemaType) GetSchemaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFOutputSchema self, out uint32 pdwVal) GetConfigurationData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFOutputSchema self, out Guid pguidOriginatorID) GetOriginatorID;
			}
		}
		[CRepr]
		public struct IMFSecureChannel : IUnknown
		{
			public const new Guid IID = .(0xd0ae555d, 0x3b12, 0x4d97, 0xb0, 0x60, 0x09, 0x90, 0xbc, 0x5a, 0xeb, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCertificate(out uint8* ppCert, out uint32 pcbCert) mut => VT.GetCertificate(ref this, out ppCert, out pcbCert);
			public HRESULT SetupSession(ref uint8 pbEncryptedSessionKey, uint32 cbSessionKey) mut => VT.SetupSession(ref this, ref pbEncryptedSessionKey, cbSessionKey);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSecureChannel self, out uint8* ppCert, out uint32 pcbCert) GetCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSecureChannel self, ref uint8 pbEncryptedSessionKey, uint32 cbSessionKey) SetupSession;
			}
		}
		[CRepr]
		public struct IMFSampleProtection : IUnknown
		{
			public const new Guid IID = .(0x8e36395f, 0xc7b9, 0x43c4, 0xa5, 0x4d, 0x51, 0x2b, 0x4a, 0xf6, 0x3c, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInputProtectionVersion(out uint32 pdwVersion) mut => VT.GetInputProtectionVersion(ref this, out pdwVersion);
			public HRESULT GetOutputProtectionVersion(out uint32 pdwVersion) mut => VT.GetOutputProtectionVersion(ref this, out pdwVersion);
			public HRESULT GetProtectionCertificate(uint32 dwVersion, out uint8* ppCert, out uint32 pcbCert) mut => VT.GetProtectionCertificate(ref this, dwVersion, out ppCert, out pcbCert);
			public HRESULT InitOutputProtection(uint32 dwVersion, uint32 dwOutputId, ref uint8 pbCert, uint32 cbCert, out uint8* ppbSeed, out uint32 pcbSeed) mut => VT.InitOutputProtection(ref this, dwVersion, dwOutputId, ref pbCert, cbCert, out ppbSeed, out pcbSeed);
			public HRESULT InitInputProtection(uint32 dwVersion, uint32 dwInputId, ref uint8 pbSeed, uint32 cbSeed) mut => VT.InitInputProtection(ref this, dwVersion, dwInputId, ref pbSeed, cbSeed);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleProtection self, out uint32 pdwVersion) GetInputProtectionVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleProtection self, out uint32 pdwVersion) GetOutputProtectionVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleProtection self, uint32 dwVersion, out uint8* ppCert, out uint32 pcbCert) GetProtectionCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleProtection self, uint32 dwVersion, uint32 dwOutputId, ref uint8 pbCert, uint32 cbCert, out uint8* ppbSeed, out uint32 pcbSeed) InitOutputProtection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleProtection self, uint32 dwVersion, uint32 dwInputId, ref uint8 pbSeed, uint32 cbSeed) InitInputProtection;
			}
		}
		[CRepr]
		public struct IMFMediaSinkPreroll : IUnknown
		{
			public const new Guid IID = .(0x5dfd4b2a, 0x7674, 0x4110, 0xa4, 0xe6, 0x8a, 0x68, 0xfd, 0x5f, 0x36, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyPreroll(int64 hnsUpcomingStartTime) mut => VT.NotifyPreroll(ref this, hnsUpcomingStartTime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSinkPreroll self, int64 hnsUpcomingStartTime) NotifyPreroll;
			}
		}
		[CRepr]
		public struct IMFFinalizableMediaSink : IMFMediaSink
		{
			public const new Guid IID = .(0xeaecb74a, 0x9a50, 0x42ce, 0x95, 0x41, 0x6a, 0x7f, 0x57, 0xaa, 0x4a, 0xd7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginFinalize(ref IMFAsyncCallback pCallback, ref IUnknown punkState) mut => VT.BeginFinalize(ref this, ref pCallback, ref punkState);
			public HRESULT EndFinalize(ref IMFAsyncResult pResult) mut => VT.EndFinalize(ref this, ref pResult);

			[CRepr]
			public struct VTable : IMFMediaSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFFinalizableMediaSink self, ref IMFAsyncCallback pCallback, ref IUnknown punkState) BeginFinalize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFFinalizableMediaSink self, ref IMFAsyncResult pResult) EndFinalize;
			}
		}
		[CRepr]
		public struct IMFStreamingSinkConfig : IUnknown
		{
			public const new Guid IID = .(0x9db7aa41, 0x3cc5, 0x40d4, 0x85, 0x09, 0x55, 0x58, 0x04, 0xad, 0x34, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartStreaming(BOOL fSeekOffsetIsByteOffset, uint64 qwSeekOffset) mut => VT.StartStreaming(ref this, fSeekOffsetIsByteOffset, qwSeekOffset);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFStreamingSinkConfig self, BOOL fSeekOffsetIsByteOffset, uint64 qwSeekOffset) StartStreaming;
			}
		}
		[CRepr]
		public struct IMFRemoteProxy : IUnknown
		{
			public const new Guid IID = .(0x994e23ad, 0x1cc2, 0x493c, 0xb9, 0xfa, 0x46, 0xf1, 0xcb, 0x04, 0x0f, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRemoteObject(in Guid riid, void** ppv) mut => VT.GetRemoteObject(ref this, riid, ppv);
			public HRESULT GetRemoteHost(in Guid riid, void** ppv) mut => VT.GetRemoteHost(ref this, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRemoteProxy self, in Guid riid, void** ppv) GetRemoteObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRemoteProxy self, in Guid riid, void** ppv) GetRemoteHost;
			}
		}
		[CRepr]
		public struct IMFObjectReferenceStream : IUnknown
		{
			public const new Guid IID = .(0x09ef5be3, 0xc8a7, 0x469e, 0x8b, 0x70, 0x73, 0xbf, 0x25, 0xbb, 0x19, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SaveReference(in Guid riid, ref IUnknown pUnk) mut => VT.SaveReference(ref this, riid, ref pUnk);
			public HRESULT LoadReference(in Guid riid, void** ppv) mut => VT.LoadReference(ref this, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFObjectReferenceStream self, in Guid riid, ref IUnknown pUnk) SaveReference;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFObjectReferenceStream self, in Guid riid, void** ppv) LoadReference;
			}
		}
		[CRepr]
		public struct IMFPMPHost : IUnknown
		{
			public const new Guid IID = .(0xf70ca1a9, 0xfdc7, 0x4782, 0xb9, 0x94, 0xad, 0xff, 0xb1, 0xc9, 0x86, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LockProcess() mut => VT.LockProcess(ref this);
			public HRESULT UnlockProcess() mut => VT.UnlockProcess(ref this);
			public HRESULT CreateObjectByCLSID(in Guid clsid, ref IStream pStream, in Guid riid, void** ppv) mut => VT.CreateObjectByCLSID(ref this, clsid, ref pStream, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMPHost self) LockProcess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMPHost self) UnlockProcess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMPHost self, in Guid clsid, ref IStream pStream, in Guid riid, void** ppv) CreateObjectByCLSID;
			}
		}
		[CRepr]
		public struct IMFPMPClient : IUnknown
		{
			public const new Guid IID = .(0x6c4e655d, 0xead8, 0x4421, 0xb6, 0xb9, 0x54, 0xdc, 0xdb, 0xbd, 0xf8, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPMPHost(ref IMFPMPHost pPMPHost) mut => VT.SetPMPHost(ref this, ref pPMPHost);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMPClient self, ref IMFPMPHost pPMPHost) SetPMPHost;
			}
		}
		[CRepr]
		public struct IMFPMPServer : IUnknown
		{
			public const new Guid IID = .(0x994e23af, 0x1cc2, 0x493c, 0xb9, 0xfa, 0x46, 0xf1, 0xcb, 0x04, 0x0f, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LockProcess() mut => VT.LockProcess(ref this);
			public HRESULT UnlockProcess() mut => VT.UnlockProcess(ref this);
			public HRESULT CreateObjectByCLSID(in Guid clsid, in Guid riid, void** ppObject) mut => VT.CreateObjectByCLSID(ref this, clsid, riid, ppObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMPServer self) LockProcess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMPServer self) UnlockProcess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMPServer self, in Guid clsid, in Guid riid, void** ppObject) CreateObjectByCLSID;
			}
		}
		[CRepr]
		public struct IMFRemoteDesktopPlugin : IUnknown
		{
			public const new Guid IID = .(0x1cde6309, 0xcae0, 0x4940, 0x90, 0x7e, 0xc1, 0xec, 0x9c, 0x3d, 0x1d, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateTopology(out IMFTopology pTopology) mut => VT.UpdateTopology(ref this, out pTopology);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRemoteDesktopPlugin self, out IMFTopology pTopology) UpdateTopology;
			}
		}
		[CRepr]
		public struct IMFSAMIStyle : IUnknown
		{
			public const new Guid IID = .(0xa7e025dd, 0x5303, 0x4a62, 0x89, 0xd6, 0xe7, 0x47, 0xe1, 0xef, 0xac, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStyleCount(out uint32 pdwCount) mut => VT.GetStyleCount(ref this, out pdwCount);
			public HRESULT GetStyles(out PROPVARIANT pPropVarStyleArray) mut => VT.GetStyles(ref this, out pPropVarStyleArray);
			public HRESULT SetSelectedStyle(PWSTR pwszStyle) mut => VT.SetSelectedStyle(ref this, pwszStyle);
			public HRESULT GetSelectedStyle(out PWSTR ppwszStyle) mut => VT.GetSelectedStyle(ref this, out ppwszStyle);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSAMIStyle self, out uint32 pdwCount) GetStyleCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSAMIStyle self, out PROPVARIANT pPropVarStyleArray) GetStyles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSAMIStyle self, PWSTR pwszStyle) SetSelectedStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSAMIStyle self, out PWSTR ppwszStyle) GetSelectedStyle;
			}
		}
		[CRepr]
		public struct IMFTranscodeProfile : IUnknown
		{
			public const new Guid IID = .(0x4adfdba3, 0x7ab0, 0x4953, 0xa6, 0x2b, 0x46, 0x1e, 0x7f, 0xf3, 0xda, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAudioAttributes(IMFAttributes* pAttrs) mut => VT.SetAudioAttributes(ref this, pAttrs);
			public HRESULT GetAudioAttributes(IMFAttributes** ppAttrs) mut => VT.GetAudioAttributes(ref this, ppAttrs);
			public HRESULT SetVideoAttributes(IMFAttributes* pAttrs) mut => VT.SetVideoAttributes(ref this, pAttrs);
			public HRESULT GetVideoAttributes(IMFAttributes** ppAttrs) mut => VT.GetVideoAttributes(ref this, ppAttrs);
			public HRESULT SetContainerAttributes(IMFAttributes* pAttrs) mut => VT.SetContainerAttributes(ref this, pAttrs);
			public HRESULT GetContainerAttributes(IMFAttributes** ppAttrs) mut => VT.GetContainerAttributes(ref this, ppAttrs);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTranscodeProfile self, IMFAttributes* pAttrs) SetAudioAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTranscodeProfile self, IMFAttributes** ppAttrs) GetAudioAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTranscodeProfile self, IMFAttributes* pAttrs) SetVideoAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTranscodeProfile self, IMFAttributes** ppAttrs) GetVideoAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTranscodeProfile self, IMFAttributes* pAttrs) SetContainerAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTranscodeProfile self, IMFAttributes** ppAttrs) GetContainerAttributes;
			}
		}
		[CRepr]
		public struct IMFTranscodeSinkInfoProvider : IUnknown
		{
			public const new Guid IID = .(0x8cffcd2e, 0x5a03, 0x4a3a, 0xaf, 0xf7, 0xed, 0xcd, 0x10, 0x7c, 0x62, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOutputFile(PWSTR pwszFileName) mut => VT.SetOutputFile(ref this, pwszFileName);
			public HRESULT SetOutputByteStream(ref IMFActivate pByteStreamActivate) mut => VT.SetOutputByteStream(ref this, ref pByteStreamActivate);
			public HRESULT SetProfile(ref IMFTranscodeProfile pProfile) mut => VT.SetProfile(ref this, ref pProfile);
			public HRESULT GetSinkInfo(out MF_TRANSCODE_SINK_INFO pSinkInfo) mut => VT.GetSinkInfo(ref this, out pSinkInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTranscodeSinkInfoProvider self, PWSTR pwszFileName) SetOutputFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTranscodeSinkInfoProvider self, ref IMFActivate pByteStreamActivate) SetOutputByteStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTranscodeSinkInfoProvider self, ref IMFTranscodeProfile pProfile) SetProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTranscodeSinkInfoProvider self, out MF_TRANSCODE_SINK_INFO pSinkInfo) GetSinkInfo;
			}
		}
		[CRepr]
		public struct IMFFieldOfUseMFTUnlock : IUnknown
		{
			public const new Guid IID = .(0x508e71d3, 0xec66, 0x4fc3, 0x87, 0x75, 0xb4, 0xb9, 0xed, 0x6b, 0xa8, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Unlock(ref IUnknown pUnkMFT) mut => VT.Unlock(ref this, ref pUnkMFT);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFFieldOfUseMFTUnlock self, ref IUnknown pUnkMFT) Unlock;
			}
		}
		[CRepr]
		public struct IMFLocalMFTRegistration : IUnknown
		{
			public const new Guid IID = .(0x149c4d73, 0xb4be, 0x4f8d, 0x8b, 0x87, 0x07, 0x9e, 0x92, 0x6b, 0x6a, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterMFTs(MFT_REGISTRATION_INFO* pMFTs, uint32 cMFTs) mut => VT.RegisterMFTs(ref this, pMFTs, cMFTs);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFLocalMFTRegistration self, MFT_REGISTRATION_INFO* pMFTs, uint32 cMFTs) RegisterMFTs;
			}
		}
		[CRepr]
		public struct IMFCapturePhotoConfirmation : IUnknown
		{
			public const new Guid IID = .(0x19f68549, 0xca8a, 0x4706, 0xa4, 0xef, 0x48, 0x1d, 0xbc, 0x95, 0xe1, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPhotoConfirmationCallback(ref IMFAsyncCallback pNotificationCallback) mut => VT.SetPhotoConfirmationCallback(ref this, ref pNotificationCallback);
			public HRESULT SetPixelFormat(Guid subtype) mut => VT.SetPixelFormat(ref this, subtype);
			public HRESULT GetPixelFormat(out Guid subtype) mut => VT.GetPixelFormat(ref this, out subtype);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePhotoConfirmation self, ref IMFAsyncCallback pNotificationCallback) SetPhotoConfirmationCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePhotoConfirmation self, Guid subtype) SetPixelFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePhotoConfirmation self, out Guid subtype) GetPixelFormat;
			}
		}
		[CRepr]
		public struct IMFPMPHostApp : IUnknown
		{
			public const new Guid IID = .(0x84d2054a, 0x3aa1, 0x4728, 0xa3, 0xb0, 0x44, 0x0a, 0x41, 0x8c, 0xf4, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LockProcess() mut => VT.LockProcess(ref this);
			public HRESULT UnlockProcess() mut => VT.UnlockProcess(ref this);
			public HRESULT ActivateClassById(PWSTR id, ref IStream pStream, in Guid riid, void** ppv) mut => VT.ActivateClassById(ref this, id, ref pStream, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMPHostApp self) LockProcess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMPHostApp self) UnlockProcess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMPHostApp self, PWSTR id, ref IStream pStream, in Guid riid, void** ppv) ActivateClassById;
			}
		}
		[CRepr]
		public struct IMFPMPClientApp : IUnknown
		{
			public const new Guid IID = .(0xc004f646, 0xbe2c, 0x48f3, 0x93, 0xa2, 0xa0, 0x98, 0x3e, 0xba, 0x11, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPMPHost(ref IMFPMPHostApp pPMPHost) mut => VT.SetPMPHost(ref this, ref pPMPHost);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMPClientApp self, ref IMFPMPHostApp pPMPHost) SetPMPHost;
			}
		}
		[CRepr]
		public struct IMFMediaStreamSourceSampleRequest : IUnknown
		{
			public const new Guid IID = .(0x380b9af9, 0xa85b, 0x4e78, 0xa2, 0xaf, 0xea, 0x5c, 0xe6, 0x45, 0xc6, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSample(ref IMFSample value) mut => VT.SetSample(ref this, ref value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaStreamSourceSampleRequest self, ref IMFSample value) SetSample;
			}
		}
		[CRepr]
		public struct IMFTrackedSample : IUnknown
		{
			public const new Guid IID = .(0x245bf8e9, 0x0755, 0x40f7, 0x88, 0xa5, 0xae, 0x0f, 0x18, 0xd5, 0x5e, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAllocator(ref IMFAsyncCallback pSampleAllocator, ref IUnknown pUnkState) mut => VT.SetAllocator(ref this, ref pSampleAllocator, ref pUnkState);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTrackedSample self, ref IMFAsyncCallback pSampleAllocator, ref IUnknown pUnkState) SetAllocator;
			}
		}
		[CRepr]
		public struct IMFProtectedEnvironmentAccess : IUnknown
		{
			public const new Guid IID = .(0xef5dc845, 0xf0d9, 0x4ec9, 0xb0, 0x0c, 0xcb, 0x51, 0x83, 0xd3, 0x84, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Call(uint32 inputLength, in uint8 input, uint32 outputLength, out uint8 output) mut => VT.Call(ref this, inputLength, input, outputLength, out output);
			public HRESULT ReadGRL(out uint32 outputLength, out uint8* output) mut => VT.ReadGRL(ref this, out outputLength, out output);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFProtectedEnvironmentAccess self, uint32 inputLength, in uint8 input, uint32 outputLength, out uint8 output) Call;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFProtectedEnvironmentAccess self, out uint32 outputLength, out uint8* output) ReadGRL;
			}
		}
		[CRepr]
		public struct IMFSignedLibrary : IUnknown
		{
			public const new Guid IID = .(0x4a724bca, 0xff6a, 0x4c07, 0x8e, 0x0d, 0x7a, 0x35, 0x84, 0x21, 0xcf, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProcedureAddress(PSTR name, void** address) mut => VT.GetProcedureAddress(ref this, name, address);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSignedLibrary self, PSTR name, void** address) GetProcedureAddress;
			}
		}
		[CRepr]
		public struct IMFSystemId : IUnknown
		{
			public const new Guid IID = .(0xfff4af3a, 0x1fc1, 0x4ef9, 0xa2, 0x9b, 0xd2, 0x6c, 0x49, 0xe2, 0xf3, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetData(out uint32 size, out uint8* data) mut => VT.GetData(ref this, out size, out data);
			public HRESULT Setup(uint32 stage, uint32 cbIn, in uint8 pbIn, out uint32 pcbOut, out uint8* ppbOut) mut => VT.Setup(ref this, stage, cbIn, pbIn, out pcbOut, out ppbOut);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSystemId self, out uint32 size, out uint8* data) GetData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSystemId self, uint32 stage, uint32 cbIn, in uint8 pbIn, out uint32 pcbOut, out uint8* ppbOut) Setup;
			}
		}
		[CRepr]
		public struct IMFContentProtectionDevice : IUnknown
		{
			public const new Guid IID = .(0xe6257174, 0xa060, 0x4c9a, 0xa0, 0x88, 0x3b, 0x1b, 0x47, 0x1c, 0xad, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InvokeFunction(uint32 FunctionId, uint32 InputBufferByteCount, in uint8 InputBuffer, out uint32 OutputBufferByteCount, out uint8 OutputBuffer) mut => VT.InvokeFunction(ref this, FunctionId, InputBufferByteCount, InputBuffer, out OutputBufferByteCount, out OutputBuffer);
			public HRESULT GetPrivateDataByteCount(out uint32 PrivateInputByteCount, out uint32 PrivateOutputByteCount) mut => VT.GetPrivateDataByteCount(ref this, out PrivateInputByteCount, out PrivateOutputByteCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentProtectionDevice self, uint32 FunctionId, uint32 InputBufferByteCount, in uint8 InputBuffer, out uint32 OutputBufferByteCount, out uint8 OutputBuffer) InvokeFunction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentProtectionDevice self, out uint32 PrivateInputByteCount, out uint32 PrivateOutputByteCount) GetPrivateDataByteCount;
			}
		}
		[CRepr]
		public struct IMFContentDecryptorContext : IUnknown
		{
			public const new Guid IID = .(0x7ec4b1bd, 0x43fb, 0x4763, 0x85, 0xd2, 0x64, 0xfc, 0xb5, 0xc5, 0xf4, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeHardwareKey(uint32 InputPrivateDataByteCount, void* InputPrivateData, out uint64 OutputPrivateData) mut => VT.InitializeHardwareKey(ref this, InputPrivateDataByteCount, InputPrivateData, out OutputPrivateData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptorContext self, uint32 InputPrivateDataByteCount, void* InputPrivateData, out uint64 OutputPrivateData) InitializeHardwareKey;
			}
		}
		[CRepr]
		public struct IMFNetCrossOriginSupport : IUnknown
		{
			public const new Guid IID = .(0xbc2b7d44, 0xa72d, 0x49d5, 0x83, 0x76, 0x14, 0x80, 0xde, 0xe5, 0x8b, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCrossOriginPolicy(out MF_CROSS_ORIGIN_POLICY pPolicy) mut => VT.GetCrossOriginPolicy(ref this, out pPolicy);
			public HRESULT GetSourceOrigin(out PWSTR wszSourceOrigin) mut => VT.GetSourceOrigin(ref this, out wszSourceOrigin);
			public HRESULT IsSameOrigin(PWSTR wszURL, out BOOL pfIsSameOrigin) mut => VT.IsSameOrigin(ref this, wszURL, out pfIsSameOrigin);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCrossOriginSupport self, out MF_CROSS_ORIGIN_POLICY pPolicy) GetCrossOriginPolicy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCrossOriginSupport self, out PWSTR wszSourceOrigin) GetSourceOrigin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFNetCrossOriginSupport self, PWSTR wszURL, out BOOL pfIsSameOrigin) IsSameOrigin;
			}
		}
		[CRepr]
		public struct IMFHttpDownloadRequest : IUnknown
		{
			public const new Guid IID = .(0xf779fddf, 0x26e7, 0x4270, 0x8a, 0x8b, 0xb9, 0x83, 0xd1, 0x85, 0x9d, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddHeader(PWSTR szHeader) mut => VT.AddHeader(ref this, szHeader);
			public HRESULT BeginSendRequest(uint8* pbPayload, uint32 cbPayload, ref IMFAsyncCallback pCallback, IUnknown* punkState) mut => VT.BeginSendRequest(ref this, pbPayload, cbPayload, ref pCallback, punkState);
			public HRESULT EndSendRequest(ref IMFAsyncResult pResult) mut => VT.EndSendRequest(ref this, ref pResult);
			public HRESULT BeginReceiveResponse(ref IMFAsyncCallback pCallback, IUnknown* punkState) mut => VT.BeginReceiveResponse(ref this, ref pCallback, punkState);
			public HRESULT EndReceiveResponse(ref IMFAsyncResult pResult) mut => VT.EndReceiveResponse(ref this, ref pResult);
			public HRESULT BeginReadPayload(uint8* pb, uint32 cb, ref IMFAsyncCallback pCallback, IUnknown* punkState) mut => VT.BeginReadPayload(ref this, pb, cb, ref pCallback, punkState);
			public HRESULT EndReadPayload(ref IMFAsyncResult pResult, out uint64 pqwOffset, out uint32 pcbRead) mut => VT.EndReadPayload(ref this, ref pResult, out pqwOffset, out pcbRead);
			public HRESULT QueryHeader(PWSTR szHeaderName, uint32 dwIndex, out PWSTR ppszHeaderValue) mut => VT.QueryHeader(ref this, szHeaderName, dwIndex, out ppszHeaderValue);
			public HRESULT GetURL(out PWSTR ppszURL) mut => VT.GetURL(ref this, out ppszURL);
			public HRESULT HasNullSourceOrigin(out BOOL pfNullSourceOrigin) mut => VT.HasNullSourceOrigin(ref this, out pfNullSourceOrigin);
			public HRESULT GetTimeSeekResult(out uint64 pqwStartTime, out uint64 pqwStopTime, out uint64 pqwDuration) mut => VT.GetTimeSeekResult(ref this, out pqwStartTime, out pqwStopTime, out pqwDuration);
			public HRESULT GetHttpStatus(out uint32 pdwHttpStatus) mut => VT.GetHttpStatus(ref this, out pdwHttpStatus);
			public HRESULT GetAtEndOfPayload(out BOOL pfAtEndOfPayload) mut => VT.GetAtEndOfPayload(ref this, out pfAtEndOfPayload);
			public HRESULT GetTotalLength(out uint64 pqwTotalLength) mut => VT.GetTotalLength(ref this, out pqwTotalLength);
			public HRESULT GetRangeEndOffset(out uint64 pqwRangeEnd) mut => VT.GetRangeEndOffset(ref this, out pqwRangeEnd);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, PWSTR szHeader) AddHeader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, uint8* pbPayload, uint32 cbPayload, ref IMFAsyncCallback pCallback, IUnknown* punkState) BeginSendRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, ref IMFAsyncResult pResult) EndSendRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, ref IMFAsyncCallback pCallback, IUnknown* punkState) BeginReceiveResponse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, ref IMFAsyncResult pResult) EndReceiveResponse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, uint8* pb, uint32 cb, ref IMFAsyncCallback pCallback, IUnknown* punkState) BeginReadPayload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, ref IMFAsyncResult pResult, out uint64 pqwOffset, out uint32 pcbRead) EndReadPayload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, PWSTR szHeaderName, uint32 dwIndex, out PWSTR ppszHeaderValue) QueryHeader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, out PWSTR ppszURL) GetURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, out BOOL pfNullSourceOrigin) HasNullSourceOrigin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, out uint64 pqwStartTime, out uint64 pqwStopTime, out uint64 pqwDuration) GetTimeSeekResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, out uint32 pdwHttpStatus) GetHttpStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, out BOOL pfAtEndOfPayload) GetAtEndOfPayload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, out uint64 pqwTotalLength) GetTotalLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self, out uint64 pqwRangeEnd) GetRangeEndOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadRequest self) Close;
			}
		}
		[CRepr]
		public struct IMFHttpDownloadSession : IUnknown
		{
			public const new Guid IID = .(0x71fa9a2c, 0x53ce, 0x4662, 0xa1, 0x32, 0x1a, 0x7e, 0x8c, 0xbf, 0x62, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetServer(PWSTR szServerName, uint32 nPort) mut => VT.SetServer(ref this, szServerName, nPort);
			public HRESULT CreateRequest(PWSTR szObjectName, BOOL fBypassProxyCache, BOOL fSecure, PWSTR szVerb, PWSTR szReferrer, out IMFHttpDownloadRequest* ppRequest) mut => VT.CreateRequest(ref this, szObjectName, fBypassProxyCache, fSecure, szVerb, szReferrer, out ppRequest);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadSession self, PWSTR szServerName, uint32 nPort) SetServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadSession self, PWSTR szObjectName, BOOL fBypassProxyCache, BOOL fSecure, PWSTR szVerb, PWSTR szReferrer, out IMFHttpDownloadRequest* ppRequest) CreateRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadSession self) Close;
			}
		}
		[CRepr]
		public struct IMFHttpDownloadSessionProvider : IUnknown
		{
			public const new Guid IID = .(0x1b4cf4b9, 0x3a16, 0x4115, 0x83, 0x9d, 0x03, 0xcc, 0x5c, 0x99, 0xdf, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateHttpDownloadSession(PWSTR wszScheme, out IMFHttpDownloadSession* ppDownloadSession) mut => VT.CreateHttpDownloadSession(ref this, wszScheme, out ppDownloadSession);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHttpDownloadSessionProvider self, PWSTR wszScheme, out IMFHttpDownloadSession* ppDownloadSession) CreateHttpDownloadSession;
			}
		}
		[CRepr]
		public struct IMFMediaSource2 : IMFMediaSourceEx
		{
			public const new Guid IID = .(0xfbb03414, 0xd13b, 0x4786, 0x83, 0x19, 0x5a, 0xc5, 0x1f, 0xc0, 0xa1, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMediaType(uint32 dwStreamID, ref IMFMediaType pMediaType) mut => VT.SetMediaType(ref this, dwStreamID, ref pMediaType);

			[CRepr]
			public struct VTable : IMFMediaSourceEx.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSource2 self, uint32 dwStreamID, ref IMFMediaType pMediaType) SetMediaType;
			}
		}
		[CRepr]
		public struct IMFMediaStream2 : IMFMediaStream
		{
			public const new Guid IID = .(0xc5bc37d6, 0x75c7, 0x46a1, 0xa1, 0x32, 0x81, 0xb5, 0xf7, 0x23, 0xc2, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetStreamState(MF_STREAM_STATE value) mut => VT.SetStreamState(ref this, value);
			public HRESULT GetStreamState(out MF_STREAM_STATE value) mut => VT.GetStreamState(ref this, out value);

			[CRepr]
			public struct VTable : IMFMediaStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaStream2 self, MF_STREAM_STATE value) SetStreamState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaStream2 self, out MF_STREAM_STATE value) GetStreamState;
			}
		}
		[CRepr]
		public struct IMFSensorDevice : IUnknown
		{
			public const new Guid IID = .(0xfb9f48f2, 0x2a18, 0x4e28, 0x97, 0x30, 0x78, 0x6f, 0x30, 0xf0, 0x4d, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceId(out uint64 pDeviceId) mut => VT.GetDeviceId(ref this, out pDeviceId);
			public HRESULT GetDeviceType(out MFSensorDeviceType pType) mut => VT.GetDeviceType(ref this, out pType);
			public HRESULT ComGetFlags(out uint64 pFlags) mut => VT.ComGetFlags(ref this, out pFlags);
			public HRESULT GetSymbolicLink(char16* SymbolicLink, int32 cchSymbolicLink, out int32 pcchWritten) mut => VT.GetSymbolicLink(ref this, SymbolicLink, cchSymbolicLink, out pcchWritten);
			public HRESULT GetDeviceAttributes(IMFAttributes** ppAttributes) mut => VT.GetDeviceAttributes(ref this, ppAttributes);
			public HRESULT GetStreamAttributesCount(MFSensorStreamType eType, out uint32 pdwCount) mut => VT.GetStreamAttributesCount(ref this, eType, out pdwCount);
			public HRESULT GetStreamAttributes(MFSensorStreamType eType, uint32 dwIndex, out IMFAttributes* ppAttributes) mut => VT.GetStreamAttributes(ref this, eType, dwIndex, out ppAttributes);
			public HRESULT SetSensorDeviceMode(MFSensorDeviceMode eMode) mut => VT.SetSensorDeviceMode(ref this, eMode);
			public HRESULT GetSensorDeviceMode(out MFSensorDeviceMode peMode) mut => VT.GetSensorDeviceMode(ref this, out peMode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorDevice self, out uint64 pDeviceId) GetDeviceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorDevice self, out MFSensorDeviceType pType) GetDeviceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorDevice self, out uint64 pFlags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorDevice self, char16* SymbolicLink, int32 cchSymbolicLink, out int32 pcchWritten) GetSymbolicLink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorDevice self, IMFAttributes** ppAttributes) GetDeviceAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorDevice self, MFSensorStreamType eType, out uint32 pdwCount) GetStreamAttributesCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorDevice self, MFSensorStreamType eType, uint32 dwIndex, out IMFAttributes* ppAttributes) GetStreamAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorDevice self, MFSensorDeviceMode eMode) SetSensorDeviceMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorDevice self, out MFSensorDeviceMode peMode) GetSensorDeviceMode;
			}
		}
		[CRepr]
		public struct IMFSensorGroup : IUnknown
		{
			public const new Guid IID = .(0x4110243a, 0x9757, 0x461f, 0x89, 0xf1, 0xf2, 0x23, 0x45, 0xbc, 0xab, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSymbolicLink(char16* SymbolicLink, int32 cchSymbolicLink, out int32 pcchWritten) mut => VT.GetSymbolicLink(ref this, SymbolicLink, cchSymbolicLink, out pcchWritten);
			public HRESULT ComGetFlags(out uint64 pFlags) mut => VT.ComGetFlags(ref this, out pFlags);
			public HRESULT GetSensorGroupAttributes(IMFAttributes** ppAttributes) mut => VT.GetSensorGroupAttributes(ref this, ppAttributes);
			public HRESULT GetSensorDeviceCount(out uint32 pdwCount) mut => VT.GetSensorDeviceCount(ref this, out pdwCount);
			public HRESULT GetSensorDevice(uint32 dwIndex, out IMFSensorDevice* ppDevice) mut => VT.GetSensorDevice(ref this, dwIndex, out ppDevice);
			public HRESULT SetDefaultSensorDeviceIndex(uint32 dwIndex) mut => VT.SetDefaultSensorDeviceIndex(ref this, dwIndex);
			public HRESULT GetDefaultSensorDeviceIndex(out uint32 pdwIndex) mut => VT.GetDefaultSensorDeviceIndex(ref this, out pdwIndex);
			public HRESULT CreateMediaSource(out IMFMediaSource* ppSource) mut => VT.CreateMediaSource(ref this, out ppSource);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorGroup self, char16* SymbolicLink, int32 cchSymbolicLink, out int32 pcchWritten) GetSymbolicLink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorGroup self, out uint64 pFlags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorGroup self, IMFAttributes** ppAttributes) GetSensorGroupAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorGroup self, out uint32 pdwCount) GetSensorDeviceCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorGroup self, uint32 dwIndex, out IMFSensorDevice* ppDevice) GetSensorDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorGroup self, uint32 dwIndex) SetDefaultSensorDeviceIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorGroup self, out uint32 pdwIndex) GetDefaultSensorDeviceIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorGroup self, out IMFMediaSource* ppSource) CreateMediaSource;
			}
		}
		[CRepr]
		public struct IMFSensorStream : IMFAttributes
		{
			public const new Guid IID = .(0xe9a42171, 0xc56e, 0x498a, 0x8b, 0x39, 0xed, 0xa5, 0xa0, 0x70, 0xb7, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMediaTypeCount(out uint32 pdwCount) mut => VT.GetMediaTypeCount(ref this, out pdwCount);
			public HRESULT GetMediaType(uint32 dwIndex, out IMFMediaType* ppMediaType) mut => VT.GetMediaType(ref this, dwIndex, out ppMediaType);
			public HRESULT CloneSensorStream(out IMFSensorStream* ppStream) mut => VT.CloneSensorStream(ref this, out ppStream);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorStream self, out uint32 pdwCount) GetMediaTypeCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorStream self, uint32 dwIndex, out IMFMediaType* ppMediaType) GetMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorStream self, out IMFSensorStream* ppStream) CloneSensorStream;
			}
		}
		[CRepr]
		public struct IMFSensorTransformFactory : IUnknown
		{
			public const new Guid IID = .(0xeed9c2ee, 0x66b4, 0x4f18, 0xa6, 0x97, 0xac, 0x7d, 0x39, 0x60, 0x21, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFactoryAttributes(out IMFAttributes* ppAttributes) mut => VT.GetFactoryAttributes(ref this, out ppAttributes);
			public HRESULT InitializeFactory(uint32 dwMaxTransformCount, ref IMFCollection pSensorDevices, IMFAttributes* pAttributes) mut => VT.InitializeFactory(ref this, dwMaxTransformCount, ref pSensorDevices, pAttributes);
			public HRESULT GetTransformCount(out uint32 pdwCount) mut => VT.GetTransformCount(ref this, out pdwCount);
			public HRESULT GetTransformInformation(uint32 TransformIndex, out Guid pguidTransformId, IMFAttributes** ppAttributes, out IMFCollection* ppStreamInformation) mut => VT.GetTransformInformation(ref this, TransformIndex, out pguidTransformId, ppAttributes, out ppStreamInformation);
			public HRESULT CreateTransform(in Guid guidSensorTransformID, IMFAttributes* pAttributes, out IMFDeviceTransform* ppDeviceMFT) mut => VT.CreateTransform(ref this, guidSensorTransformID, pAttributes, out ppDeviceMFT);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorTransformFactory self, out IMFAttributes* ppAttributes) GetFactoryAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorTransformFactory self, uint32 dwMaxTransformCount, ref IMFCollection pSensorDevices, IMFAttributes* pAttributes) InitializeFactory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorTransformFactory self, out uint32 pdwCount) GetTransformCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorTransformFactory self, uint32 TransformIndex, out Guid pguidTransformId, IMFAttributes** ppAttributes, out IMFCollection* ppStreamInformation) GetTransformInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorTransformFactory self, in Guid guidSensorTransformID, IMFAttributes* pAttributes, out IMFDeviceTransform* ppDeviceMFT) CreateTransform;
			}
		}
		[CRepr]
		public struct IMFSensorProfile : IUnknown
		{
			public const new Guid IID = .(0x22f765d1, 0x8dab, 0x4107, 0x84, 0x6d, 0x56, 0xba, 0xf7, 0x22, 0x15, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProfileId(out SENSORPROFILEID pId) mut => VT.GetProfileId(ref this, out pId);
			public HRESULT AddProfileFilter(uint32 StreamId, PWSTR wzFilterSetString) mut => VT.AddProfileFilter(ref this, StreamId, wzFilterSetString);
			public HRESULT IsMediaTypeSupported(uint32 StreamId, ref IMFMediaType pMediaType, out BOOL pfSupported) mut => VT.IsMediaTypeSupported(ref this, StreamId, ref pMediaType, out pfSupported);
			public HRESULT AddBlockedControl(PWSTR wzBlockedControl) mut => VT.AddBlockedControl(ref this, wzBlockedControl);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorProfile self, out SENSORPROFILEID pId) GetProfileId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorProfile self, uint32 StreamId, PWSTR wzFilterSetString) AddProfileFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorProfile self, uint32 StreamId, ref IMFMediaType pMediaType, out BOOL pfSupported) IsMediaTypeSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorProfile self, PWSTR wzBlockedControl) AddBlockedControl;
			}
		}
		[CRepr]
		public struct IMFSensorProfileCollection : IUnknown
		{
			public const new Guid IID = .(0xc95ea55b, 0x0187, 0x48be, 0x93, 0x53, 0x8d, 0x25, 0x07, 0x66, 0x23, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetProfileCount() mut => VT.GetProfileCount(ref this);
			public HRESULT GetProfile(uint32 Index, out IMFSensorProfile* ppProfile) mut => VT.GetProfile(ref this, Index, out ppProfile);
			public HRESULT AddProfile(ref IMFSensorProfile pProfile) mut => VT.AddProfile(ref this, ref pProfile);
			public HRESULT FindProfile(ref SENSORPROFILEID ProfileId, out IMFSensorProfile* ppProfile) mut => VT.FindProfile(ref this, ref ProfileId, out ppProfile);
			public void RemoveProfileByIndex(uint32 Index) mut => VT.RemoveProfileByIndex(ref this, Index);
			public void RemoveProfile(ref SENSORPROFILEID ProfileId) mut => VT.RemoveProfile(ref this, ref ProfileId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IMFSensorProfileCollection self) GetProfileCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorProfileCollection self, uint32 Index, out IMFSensorProfile* ppProfile) GetProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorProfileCollection self, ref IMFSensorProfile pProfile) AddProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorProfileCollection self, ref SENSORPROFILEID ProfileId, out IMFSensorProfile* ppProfile) FindProfile;
				public new function [CallingConvention(.Stdcall)] void(ref IMFSensorProfileCollection self, uint32 Index) RemoveProfileByIndex;
				public new function [CallingConvention(.Stdcall)] void(ref IMFSensorProfileCollection self, ref SENSORPROFILEID ProfileId) RemoveProfile;
			}
		}
		[CRepr]
		public struct IMFSensorProcessActivity : IUnknown
		{
			public const new Guid IID = .(0x39dc7f4a, 0xb141, 0x4719, 0x81, 0x3c, 0xa7, 0xf4, 0x61, 0x62, 0xa2, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProcessId(out uint32 pPID) mut => VT.GetProcessId(ref this, out pPID);
			public HRESULT GetStreamingState(out BOOL pfStreaming) mut => VT.GetStreamingState(ref this, out pfStreaming);
			public HRESULT GetStreamingMode(out MFSensorDeviceMode pMode) mut => VT.GetStreamingMode(ref this, out pMode);
			public HRESULT GetReportTime(out FILETIME pft) mut => VT.GetReportTime(ref this, out pft);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorProcessActivity self, out uint32 pPID) GetProcessId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorProcessActivity self, out BOOL pfStreaming) GetStreamingState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorProcessActivity self, out MFSensorDeviceMode pMode) GetStreamingMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorProcessActivity self, out FILETIME pft) GetReportTime;
			}
		}
		[CRepr]
		public struct IMFSensorActivityReport : IUnknown
		{
			public const new Guid IID = .(0x3e8c4be1, 0xa8c2, 0x4528, 0x90, 0xde, 0x28, 0x51, 0xbd, 0xe5, 0xfe, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFriendlyName(char16* FriendlyName, uint32 cchFriendlyName, out uint32 pcchWritten) mut => VT.GetFriendlyName(ref this, FriendlyName, cchFriendlyName, out pcchWritten);
			public HRESULT GetSymbolicLink(char16* SymbolicLink, uint32 cchSymbolicLink, out uint32 pcchWritten) mut => VT.GetSymbolicLink(ref this, SymbolicLink, cchSymbolicLink, out pcchWritten);
			public HRESULT GetProcessCount(out uint32 pcCount) mut => VT.GetProcessCount(ref this, out pcCount);
			public HRESULT GetProcessActivity(uint32 Index, out IMFSensorProcessActivity* ppProcessActivity) mut => VT.GetProcessActivity(ref this, Index, out ppProcessActivity);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorActivityReport self, char16* FriendlyName, uint32 cchFriendlyName, out uint32 pcchWritten) GetFriendlyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorActivityReport self, char16* SymbolicLink, uint32 cchSymbolicLink, out uint32 pcchWritten) GetSymbolicLink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorActivityReport self, out uint32 pcCount) GetProcessCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorActivityReport self, uint32 Index, out IMFSensorProcessActivity* ppProcessActivity) GetProcessActivity;
			}
		}
		[CRepr]
		public struct IMFSensorActivitiesReport : IUnknown
		{
			public const new Guid IID = .(0x683f7a5e, 0x4a19, 0x43cd, 0xb1, 0xa9, 0xdb, 0xf4, 0xab, 0x3f, 0x77, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(out uint32 pcCount) mut => VT.GetCount(ref this, out pcCount);
			public HRESULT GetActivityReport(uint32 Index, out IMFSensorActivityReport* sensorActivityReport) mut => VT.GetActivityReport(ref this, Index, out sensorActivityReport);
			public HRESULT GetActivityReportByDeviceName(PWSTR SymbolicName, out IMFSensorActivityReport* sensorActivityReport) mut => VT.GetActivityReportByDeviceName(ref this, SymbolicName, out sensorActivityReport);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorActivitiesReport self, out uint32 pcCount) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorActivitiesReport self, uint32 Index, out IMFSensorActivityReport* sensorActivityReport) GetActivityReport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorActivitiesReport self, PWSTR SymbolicName, out IMFSensorActivityReport* sensorActivityReport) GetActivityReportByDeviceName;
			}
		}
		[CRepr]
		public struct IMFSensorActivitiesReportCallback : IUnknown
		{
			public const new Guid IID = .(0xde5072ee, 0xdbe3, 0x46dc, 0x8a, 0x87, 0xb6, 0xf6, 0x31, 0x19, 0x47, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnActivitiesReport(ref IMFSensorActivitiesReport sensorActivitiesReport) mut => VT.OnActivitiesReport(ref this, ref sensorActivitiesReport);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorActivitiesReportCallback self, ref IMFSensorActivitiesReport sensorActivitiesReport) OnActivitiesReport;
			}
		}
		[CRepr]
		public struct IMFSensorActivityMonitor : IUnknown
		{
			public const new Guid IID = .(0xd0cef145, 0xb3f4, 0x4340, 0xa2, 0xe5, 0x7a, 0x50, 0x80, 0xca, 0x05, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start() mut => VT.Start(ref this);
			public HRESULT Stop() mut => VT.Stop(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorActivityMonitor self) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSensorActivityMonitor self) Stop;
			}
		}
		[CRepr]
		public struct IMFExtendedCameraIntrinsicModel : IUnknown
		{
			public const new Guid IID = .(0x5c595e64, 0x4630, 0x4231, 0x85, 0x5a, 0x12, 0x84, 0x2f, 0x73, 0x32, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetModel(out MFExtendedCameraIntrinsic_IntrinsicModel pIntrinsicModel) mut => VT.GetModel(ref this, out pIntrinsicModel);
			public HRESULT SetModel(in MFExtendedCameraIntrinsic_IntrinsicModel pIntrinsicModel) mut => VT.SetModel(ref this, pIntrinsicModel);
			public HRESULT GetDistortionModelType(out MFCameraIntrinsic_DistortionModelType pDistortionModelType) mut => VT.GetDistortionModelType(ref this, out pDistortionModelType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraIntrinsicModel self, out MFExtendedCameraIntrinsic_IntrinsicModel pIntrinsicModel) GetModel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraIntrinsicModel self, in MFExtendedCameraIntrinsic_IntrinsicModel pIntrinsicModel) SetModel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraIntrinsicModel self, out MFCameraIntrinsic_DistortionModelType pDistortionModelType) GetDistortionModelType;
			}
		}
		[CRepr]
		public struct IMFExtendedCameraIntrinsicsDistortionModel6KT : IUnknown
		{
			public const new Guid IID = .(0x74c2653b, 0x5f55, 0x4eb1, 0x9f, 0x0f, 0x18, 0xb8, 0xf6, 0x8b, 0x7d, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDistortionModel(out MFCameraIntrinsic_DistortionModel6KT pDistortionModel) mut => VT.GetDistortionModel(ref this, out pDistortionModel);
			public HRESULT SetDistortionModel(in MFCameraIntrinsic_DistortionModel6KT pDistortionModel) mut => VT.SetDistortionModel(ref this, pDistortionModel);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraIntrinsicsDistortionModel6KT self, out MFCameraIntrinsic_DistortionModel6KT pDistortionModel) GetDistortionModel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraIntrinsicsDistortionModel6KT self, in MFCameraIntrinsic_DistortionModel6KT pDistortionModel) SetDistortionModel;
			}
		}
		[CRepr]
		public struct IMFExtendedCameraIntrinsicsDistortionModelArcTan : IUnknown
		{
			public const new Guid IID = .(0x812d5f95, 0xb572, 0x45dc, 0xba, 0xfc, 0xae, 0x24, 0x19, 0x9d, 0xdd, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDistortionModel(out MFCameraIntrinsic_DistortionModelArcTan pDistortionModel) mut => VT.GetDistortionModel(ref this, out pDistortionModel);
			public HRESULT SetDistortionModel(in MFCameraIntrinsic_DistortionModelArcTan pDistortionModel) mut => VT.SetDistortionModel(ref this, pDistortionModel);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraIntrinsicsDistortionModelArcTan self, out MFCameraIntrinsic_DistortionModelArcTan pDistortionModel) GetDistortionModel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraIntrinsicsDistortionModelArcTan self, in MFCameraIntrinsic_DistortionModelArcTan pDistortionModel) SetDistortionModel;
			}
		}
		[CRepr]
		public struct IMFExtendedCameraIntrinsics : IUnknown
		{
			public const new Guid IID = .(0x687f6dac, 0x6987, 0x4750, 0xa1, 0x6a, 0x73, 0x4d, 0x1e, 0x7a, 0x10, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromBuffer(ref uint8 pbBuffer, uint32 dwBufferSize) mut => VT.InitializeFromBuffer(ref this, ref pbBuffer, dwBufferSize);
			public HRESULT GetBufferSize(out uint32 pdwBufferSize) mut => VT.GetBufferSize(ref this, out pdwBufferSize);
			public HRESULT SerializeToBuffer(out uint8 pbBuffer, out uint32 pdwBufferSize) mut => VT.SerializeToBuffer(ref this, out pbBuffer, out pdwBufferSize);
			public HRESULT GetIntrinsicModelCount(out uint32 pdwCount) mut => VT.GetIntrinsicModelCount(ref this, out pdwCount);
			public HRESULT GetIntrinsicModelByIndex(uint32 dwIndex, out IMFExtendedCameraIntrinsicModel* ppIntrinsicModel) mut => VT.GetIntrinsicModelByIndex(ref this, dwIndex, out ppIntrinsicModel);
			public HRESULT AddIntrinsicModel(ref IMFExtendedCameraIntrinsicModel pIntrinsicModel) mut => VT.AddIntrinsicModel(ref this, ref pIntrinsicModel);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraIntrinsics self, ref uint8 pbBuffer, uint32 dwBufferSize) InitializeFromBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraIntrinsics self, out uint32 pdwBufferSize) GetBufferSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraIntrinsics self, out uint8 pbBuffer, out uint32 pdwBufferSize) SerializeToBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraIntrinsics self, out uint32 pdwCount) GetIntrinsicModelCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraIntrinsics self, uint32 dwIndex, out IMFExtendedCameraIntrinsicModel* ppIntrinsicModel) GetIntrinsicModelByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraIntrinsics self, ref IMFExtendedCameraIntrinsicModel pIntrinsicModel) AddIntrinsicModel;
			}
		}
		[CRepr]
		public struct IMFExtendedCameraControl : IUnknown
		{
			public const new Guid IID = .(0x38e33520, 0xfca1, 0x4845, 0xa2, 0x7a, 0x68, 0xb7, 0xc6, 0xab, 0x37, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint64 GetCapabilities() mut => VT.GetCapabilities(ref this);
			public HRESULT SetFlags(uint64 ulFlags) mut => VT.SetFlags(ref this, ulFlags);
			public uint64 ComGetFlags() mut => VT.ComGetFlags(ref this);
			public HRESULT LockPayload(out uint8* ppPayload, out uint32 pulPayload) mut => VT.LockPayload(ref this, out ppPayload, out pulPayload);
			public HRESULT UnlockPayload() mut => VT.UnlockPayload(ref this);
			public HRESULT CommitSettings() mut => VT.CommitSettings(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint64(ref IMFExtendedCameraControl self) GetCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraControl self, uint64 ulFlags) SetFlags;
				public new function [CallingConvention(.Stdcall)] uint64(ref IMFExtendedCameraControl self) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraControl self, out uint8* ppPayload, out uint32 pulPayload) LockPayload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraControl self) UnlockPayload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraControl self) CommitSettings;
			}
		}
		[CRepr]
		public struct IMFExtendedCameraController : IUnknown
		{
			public const new Guid IID = .(0xb91ebfee, 0xca03, 0x4af4, 0x8a, 0x82, 0xa3, 0x17, 0x52, 0xf4, 0xa0, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetExtendedCameraControl(uint32 dwStreamIndex, uint32 ulPropertyId, out IMFExtendedCameraControl* ppControl) mut => VT.GetExtendedCameraControl(ref this, dwStreamIndex, ulPropertyId, out ppControl);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedCameraController self, uint32 dwStreamIndex, uint32 ulPropertyId, out IMFExtendedCameraControl* ppControl) GetExtendedCameraControl;
			}
		}
		[CRepr]
		public struct IMFRelativePanelReport : IUnknown
		{
			public const new Guid IID = .(0xf25362ea, 0x2c0e, 0x447f, 0x81, 0xe2, 0x75, 0x59, 0x14, 0xcd, 0xc0, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRelativePanel(out uint32 panel) mut => VT.GetRelativePanel(ref this, out panel);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRelativePanelReport self, out uint32 panel) GetRelativePanel;
			}
		}
		[CRepr]
		public struct IMFRelativePanelWatcher : IMFShutdown
		{
			public const new Guid IID = .(0x421af7f6, 0x573e, 0x4ad0, 0x8f, 0xda, 0x2e, 0x57, 0xce, 0xdb, 0x18, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginGetReport(ref IMFAsyncCallback pCallback, IUnknown* pState) mut => VT.BeginGetReport(ref this, ref pCallback, pState);
			public HRESULT EndGetReport(ref IMFAsyncResult pResult, out IMFRelativePanelReport* ppRelativePanelReport) mut => VT.EndGetReport(ref this, ref pResult, out ppRelativePanelReport);
			public HRESULT GetReport(out IMFRelativePanelReport* ppRelativePanelReport) mut => VT.GetReport(ref this, out ppRelativePanelReport);

			[CRepr]
			public struct VTable : IMFShutdown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRelativePanelWatcher self, ref IMFAsyncCallback pCallback, IUnknown* pState) BeginGetReport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRelativePanelWatcher self, ref IMFAsyncResult pResult, out IMFRelativePanelReport* ppRelativePanelReport) EndGetReport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFRelativePanelWatcher self, out IMFRelativePanelReport* ppRelativePanelReport) GetReport;
			}
		}
		[CRepr]
		public struct IMFCameraOcclusionStateReport : IUnknown
		{
			public const new Guid IID = .(0x1640b2cf, 0x74da, 0x4462, 0xa4, 0x3b, 0xb7, 0x6d, 0x3b, 0xdc, 0x14, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOcclusionState(out uint32 occlusionState) mut => VT.GetOcclusionState(ref this, out occlusionState);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCameraOcclusionStateReport self, out uint32 occlusionState) GetOcclusionState;
			}
		}
		[CRepr]
		public struct IMFCameraOcclusionStateReportCallback : IUnknown
		{
			public const new Guid IID = .(0x6e5841c7, 0x3889, 0x4019, 0x90, 0x35, 0x78, 0x3f, 0xb1, 0x9b, 0x59, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnOcclusionStateReport(ref IMFCameraOcclusionStateReport occlusionStateReport) mut => VT.OnOcclusionStateReport(ref this, ref occlusionStateReport);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCameraOcclusionStateReportCallback self, ref IMFCameraOcclusionStateReport occlusionStateReport) OnOcclusionStateReport;
			}
		}
		[CRepr]
		public struct IMFCameraOcclusionStateMonitor : IUnknown
		{
			public const new Guid IID = .(0xcc692f46, 0xc697, 0x47e2, 0xa7, 0x2d, 0x7b, 0x06, 0x46, 0x17, 0x74, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start() mut => VT.Start(ref this);
			public HRESULT Stop() mut => VT.Stop(ref this);
			public uint32 GetSupportedStates() mut => VT.GetSupportedStates(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCameraOcclusionStateMonitor self) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCameraOcclusionStateMonitor self) Stop;
				public new function [CallingConvention(.Stdcall)] uint32(ref IMFCameraOcclusionStateMonitor self) GetSupportedStates;
			}
		}
		[CRepr]
		public struct IMFVideoCaptureSampleAllocator : IMFVideoSampleAllocator
		{
			public const new Guid IID = .(0x725b77c7, 0xca9f, 0x4fe5, 0x9d, 0x72, 0x99, 0x46, 0xbf, 0x9b, 0x3c, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeCaptureSampleAllocator(uint32 cbSampleSize, uint32 cbCaptureMetadataSize, uint32 cbAlignment, uint32 cMinimumSamples, IMFAttributes* pAttributes, ref IMFMediaType pMediaType) mut => VT.InitializeCaptureSampleAllocator(ref this, cbSampleSize, cbCaptureMetadataSize, cbAlignment, cMinimumSamples, pAttributes, ref pMediaType);

			[CRepr]
			public struct VTable : IMFVideoSampleAllocator.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoCaptureSampleAllocator self, uint32 cbSampleSize, uint32 cbCaptureMetadataSize, uint32 cbAlignment, uint32 cMinimumSamples, IMFAttributes* pAttributes, ref IMFMediaType pMediaType) InitializeCaptureSampleAllocator;
			}
		}
		[CRepr]
		public struct IMFSampleAllocatorControl : IUnknown
		{
			public const new Guid IID = .(0xda62b958, 0x3a38, 0x4a97, 0xbd, 0x27, 0x14, 0x9c, 0x64, 0x0c, 0x07, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDefaultAllocator(uint32 dwOutputStreamID, ref IUnknown pAllocator) mut => VT.SetDefaultAllocator(ref this, dwOutputStreamID, ref pAllocator);
			public HRESULT GetAllocatorUsage(uint32 dwOutputStreamID, out uint32 pdwInputStreamID, out MFSampleAllocatorUsage peUsage) mut => VT.GetAllocatorUsage(ref this, dwOutputStreamID, out pdwInputStreamID, out peUsage);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleAllocatorControl self, uint32 dwOutputStreamID, ref IUnknown pAllocator) SetDefaultAllocator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSampleAllocatorControl self, uint32 dwOutputStreamID, out uint32 pdwInputStreamID, out MFSampleAllocatorUsage peUsage) GetAllocatorUsage;
			}
		}
		[CRepr]
		public struct IMFASFContentInfo : IUnknown
		{
			public const new Guid IID = .(0xb1dca5cd, 0xd5da, 0x4451, 0x8e, 0x9e, 0xdb, 0x5c, 0x59, 0x91, 0x4e, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHeaderSize(ref IMFMediaBuffer pIStartOfContent, out uint64 cbHeaderSize) mut => VT.GetHeaderSize(ref this, ref pIStartOfContent, out cbHeaderSize);
			public HRESULT ParseHeader(ref IMFMediaBuffer pIHeaderBuffer, uint64 cbOffsetWithinHeader) mut => VT.ParseHeader(ref this, ref pIHeaderBuffer, cbOffsetWithinHeader);
			public HRESULT GenerateHeader(out IMFMediaBuffer pIHeader, out uint32 pcbHeader) mut => VT.GenerateHeader(ref this, out pIHeader, out pcbHeader);
			public HRESULT GetProfile(out IMFASFProfile* ppIProfile) mut => VT.GetProfile(ref this, out ppIProfile);
			public HRESULT SetProfile(ref IMFASFProfile pIProfile) mut => VT.SetProfile(ref this, ref pIProfile);
			public HRESULT GeneratePresentationDescriptor(out IMFPresentationDescriptor* ppIPresentationDescriptor) mut => VT.GeneratePresentationDescriptor(ref this, out ppIPresentationDescriptor);
			public HRESULT GetEncodingConfigurationPropertyStore(uint16 wStreamNumber, out IPropertyStore* ppIStore) mut => VT.GetEncodingConfigurationPropertyStore(ref this, wStreamNumber, out ppIStore);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFContentInfo self, ref IMFMediaBuffer pIStartOfContent, out uint64 cbHeaderSize) GetHeaderSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFContentInfo self, ref IMFMediaBuffer pIHeaderBuffer, uint64 cbOffsetWithinHeader) ParseHeader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFContentInfo self, out IMFMediaBuffer pIHeader, out uint32 pcbHeader) GenerateHeader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFContentInfo self, out IMFASFProfile* ppIProfile) GetProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFContentInfo self, ref IMFASFProfile pIProfile) SetProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFContentInfo self, out IMFPresentationDescriptor* ppIPresentationDescriptor) GeneratePresentationDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFContentInfo self, uint16 wStreamNumber, out IPropertyStore* ppIStore) GetEncodingConfigurationPropertyStore;
			}
		}
		[CRepr]
		public struct IMFASFProfile : IMFAttributes
		{
			public const new Guid IID = .(0xd267bf6a, 0x028b, 0x4e0d, 0x90, 0x3d, 0x43, 0xf0, 0xef, 0x82, 0xd0, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamCount(out uint32 pcStreams) mut => VT.GetStreamCount(ref this, out pcStreams);
			public HRESULT GetStream(uint32 dwStreamIndex, out uint16 pwStreamNumber, out IMFASFStreamConfig* ppIStream) mut => VT.GetStream(ref this, dwStreamIndex, out pwStreamNumber, out ppIStream);
			public HRESULT GetStreamByNumber(uint16 wStreamNumber, out IMFASFStreamConfig* ppIStream) mut => VT.GetStreamByNumber(ref this, wStreamNumber, out ppIStream);
			public HRESULT SetStream(ref IMFASFStreamConfig pIStream) mut => VT.SetStream(ref this, ref pIStream);
			public HRESULT RemoveStream(uint16 wStreamNumber) mut => VT.RemoveStream(ref this, wStreamNumber);
			public HRESULT CreateStream(ref IMFMediaType pIMediaType, out IMFASFStreamConfig* ppIStream) mut => VT.CreateStream(ref this, ref pIMediaType, out ppIStream);
			public HRESULT GetMutualExclusionCount(out uint32 pcMutexs) mut => VT.GetMutualExclusionCount(ref this, out pcMutexs);
			public HRESULT GetMutualExclusion(uint32 dwMutexIndex, out IMFASFMutualExclusion* ppIMutex) mut => VT.GetMutualExclusion(ref this, dwMutexIndex, out ppIMutex);
			public HRESULT AddMutualExclusion(ref IMFASFMutualExclusion pIMutex) mut => VT.AddMutualExclusion(ref this, ref pIMutex);
			public HRESULT RemoveMutualExclusion(uint32 dwMutexIndex) mut => VT.RemoveMutualExclusion(ref this, dwMutexIndex);
			public HRESULT CreateMutualExclusion(out IMFASFMutualExclusion* ppIMutex) mut => VT.CreateMutualExclusion(ref this, out ppIMutex);
			public HRESULT GetStreamPrioritization(out IMFASFStreamPrioritization* ppIStreamPrioritization) mut => VT.GetStreamPrioritization(ref this, out ppIStreamPrioritization);
			public HRESULT AddStreamPrioritization(ref IMFASFStreamPrioritization pIStreamPrioritization) mut => VT.AddStreamPrioritization(ref this, ref pIStreamPrioritization);
			public HRESULT RemoveStreamPrioritization() mut => VT.RemoveStreamPrioritization(ref this);
			public HRESULT CreateStreamPrioritization(out IMFASFStreamPrioritization* ppIStreamPrioritization) mut => VT.CreateStreamPrioritization(ref this, out ppIStreamPrioritization);
			public HRESULT Clone(out IMFASFProfile* ppIProfile) mut => VT.Clone(ref this, out ppIProfile);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, out uint32 pcStreams) GetStreamCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, uint32 dwStreamIndex, out uint16 pwStreamNumber, out IMFASFStreamConfig* ppIStream) GetStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, uint16 wStreamNumber, out IMFASFStreamConfig* ppIStream) GetStreamByNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, ref IMFASFStreamConfig pIStream) SetStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, uint16 wStreamNumber) RemoveStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, ref IMFMediaType pIMediaType, out IMFASFStreamConfig* ppIStream) CreateStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, out uint32 pcMutexs) GetMutualExclusionCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, uint32 dwMutexIndex, out IMFASFMutualExclusion* ppIMutex) GetMutualExclusion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, ref IMFASFMutualExclusion pIMutex) AddMutualExclusion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, uint32 dwMutexIndex) RemoveMutualExclusion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, out IMFASFMutualExclusion* ppIMutex) CreateMutualExclusion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, out IMFASFStreamPrioritization* ppIStreamPrioritization) GetStreamPrioritization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, ref IMFASFStreamPrioritization pIStreamPrioritization) AddStreamPrioritization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self) RemoveStreamPrioritization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, out IMFASFStreamPrioritization* ppIStreamPrioritization) CreateStreamPrioritization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFProfile self, out IMFASFProfile* ppIProfile) Clone;
			}
		}
		[CRepr]
		public struct IMFASFStreamConfig : IMFAttributes
		{
			public const new Guid IID = .(0x9e8ae8d2, 0xdbbd, 0x4200, 0x9a, 0xca, 0x06, 0xe6, 0xdf, 0x48, 0x49, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamType(out Guid pguidStreamType) mut => VT.GetStreamType(ref this, out pguidStreamType);
			public uint16 GetStreamNumber() mut => VT.GetStreamNumber(ref this);
			public HRESULT SetStreamNumber(uint16 wStreamNum) mut => VT.SetStreamNumber(ref this, wStreamNum);
			public HRESULT GetMediaType(out IMFMediaType* ppIMediaType) mut => VT.GetMediaType(ref this, out ppIMediaType);
			public HRESULT SetMediaType(ref IMFMediaType pIMediaType) mut => VT.SetMediaType(ref this, ref pIMediaType);
			public HRESULT GetPayloadExtensionCount(out uint16 pcPayloadExtensions) mut => VT.GetPayloadExtensionCount(ref this, out pcPayloadExtensions);
			public HRESULT GetPayloadExtension(uint16 wPayloadExtensionNumber, out Guid pguidExtensionSystemID, out uint16 pcbExtensionDataSize, out uint8 pbExtensionSystemInfo, out uint32 pcbExtensionSystemInfo) mut => VT.GetPayloadExtension(ref this, wPayloadExtensionNumber, out pguidExtensionSystemID, out pcbExtensionDataSize, out pbExtensionSystemInfo, out pcbExtensionSystemInfo);
			public HRESULT AddPayloadExtension(Guid guidExtensionSystemID, uint16 cbExtensionDataSize, uint8* pbExtensionSystemInfo, uint32 cbExtensionSystemInfo) mut => VT.AddPayloadExtension(ref this, guidExtensionSystemID, cbExtensionDataSize, pbExtensionSystemInfo, cbExtensionSystemInfo);
			public HRESULT RemoveAllPayloadExtensions() mut => VT.RemoveAllPayloadExtensions(ref this);
			public HRESULT Clone(out IMFASFStreamConfig* ppIStreamConfig) mut => VT.Clone(ref this, out ppIStreamConfig);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamConfig self, out Guid pguidStreamType) GetStreamType;
				public new function [CallingConvention(.Stdcall)] uint16(ref IMFASFStreamConfig self) GetStreamNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamConfig self, uint16 wStreamNum) SetStreamNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamConfig self, out IMFMediaType* ppIMediaType) GetMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamConfig self, ref IMFMediaType pIMediaType) SetMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamConfig self, out uint16 pcPayloadExtensions) GetPayloadExtensionCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamConfig self, uint16 wPayloadExtensionNumber, out Guid pguidExtensionSystemID, out uint16 pcbExtensionDataSize, out uint8 pbExtensionSystemInfo, out uint32 pcbExtensionSystemInfo) GetPayloadExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamConfig self, Guid guidExtensionSystemID, uint16 cbExtensionDataSize, uint8* pbExtensionSystemInfo, uint32 cbExtensionSystemInfo) AddPayloadExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamConfig self) RemoveAllPayloadExtensions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamConfig self, out IMFASFStreamConfig* ppIStreamConfig) Clone;
			}
		}
		[CRepr]
		public struct IMFASFMutualExclusion : IUnknown
		{
			public const new Guid IID = .(0x12558291, 0xe399, 0x11d5, 0xbc, 0x2a, 0x00, 0xb0, 0xd0, 0xf3, 0xf4, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(out Guid pguidType) mut => VT.ComGetType(ref this, out pguidType);
			public HRESULT SetType(in Guid guidType) mut => VT.SetType(ref this, guidType);
			public HRESULT GetRecordCount(out uint32 pdwRecordCount) mut => VT.GetRecordCount(ref this, out pdwRecordCount);
			public HRESULT GetStreamsForRecord(uint32 dwRecordNumber, out uint16 pwStreamNumArray, out uint32 pcStreams) mut => VT.GetStreamsForRecord(ref this, dwRecordNumber, out pwStreamNumArray, out pcStreams);
			public HRESULT AddStreamForRecord(uint32 dwRecordNumber, uint16 wStreamNumber) mut => VT.AddStreamForRecord(ref this, dwRecordNumber, wStreamNumber);
			public HRESULT RemoveStreamFromRecord(uint32 dwRecordNumber, uint16 wStreamNumber) mut => VT.RemoveStreamFromRecord(ref this, dwRecordNumber, wStreamNumber);
			public HRESULT RemoveRecord(uint32 dwRecordNumber) mut => VT.RemoveRecord(ref this, dwRecordNumber);
			public HRESULT AddRecord(out uint32 pdwRecordNumber) mut => VT.AddRecord(ref this, out pdwRecordNumber);
			public HRESULT Clone(out IMFASFMutualExclusion* ppIMutex) mut => VT.Clone(ref this, out ppIMutex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMutualExclusion self, out Guid pguidType) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMutualExclusion self, in Guid guidType) SetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMutualExclusion self, out uint32 pdwRecordCount) GetRecordCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMutualExclusion self, uint32 dwRecordNumber, out uint16 pwStreamNumArray, out uint32 pcStreams) GetStreamsForRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMutualExclusion self, uint32 dwRecordNumber, uint16 wStreamNumber) AddStreamForRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMutualExclusion self, uint32 dwRecordNumber, uint16 wStreamNumber) RemoveStreamFromRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMutualExclusion self, uint32 dwRecordNumber) RemoveRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMutualExclusion self, out uint32 pdwRecordNumber) AddRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMutualExclusion self, out IMFASFMutualExclusion* ppIMutex) Clone;
			}
		}
		[CRepr]
		public struct IMFASFStreamPrioritization : IUnknown
		{
			public const new Guid IID = .(0x699bdc27, 0xbbaf, 0x49ff, 0x8e, 0x38, 0x9c, 0x39, 0xc9, 0xb5, 0xe0, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamCount(out uint32 pdwStreamCount) mut => VT.GetStreamCount(ref this, out pdwStreamCount);
			public HRESULT GetStream(uint32 dwStreamIndex, out uint16 pwStreamNumber, out uint16 pwStreamFlags) mut => VT.GetStream(ref this, dwStreamIndex, out pwStreamNumber, out pwStreamFlags);
			public HRESULT AddStream(uint16 wStreamNumber, uint16 wStreamFlags) mut => VT.AddStream(ref this, wStreamNumber, wStreamFlags);
			public HRESULT RemoveStream(uint32 dwStreamIndex) mut => VT.RemoveStream(ref this, dwStreamIndex);
			public HRESULT Clone(out IMFASFStreamPrioritization* ppIStreamPrioritization) mut => VT.Clone(ref this, out ppIStreamPrioritization);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamPrioritization self, out uint32 pdwStreamCount) GetStreamCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamPrioritization self, uint32 dwStreamIndex, out uint16 pwStreamNumber, out uint16 pwStreamFlags) GetStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamPrioritization self, uint16 wStreamNumber, uint16 wStreamFlags) AddStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamPrioritization self, uint32 dwStreamIndex) RemoveStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamPrioritization self, out IMFASFStreamPrioritization* ppIStreamPrioritization) Clone;
			}
		}
		[CRepr]
		public struct IMFASFIndexer : IUnknown
		{
			public const new Guid IID = .(0x53590f48, 0xdc3b, 0x4297, 0x81, 0x3f, 0x78, 0x77, 0x61, 0xad, 0x7b, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFlags(uint32 dwFlags) mut => VT.SetFlags(ref this, dwFlags);
			public HRESULT ComGetFlags(out uint32 pdwFlags) mut => VT.ComGetFlags(ref this, out pdwFlags);
			public HRESULT Initialize(ref IMFASFContentInfo pIContentInfo) mut => VT.Initialize(ref this, ref pIContentInfo);
			public HRESULT GetIndexPosition(ref IMFASFContentInfo pIContentInfo, out uint64 pcbIndexOffset) mut => VT.GetIndexPosition(ref this, ref pIContentInfo, out pcbIndexOffset);
			public HRESULT SetIndexByteStreams(ref IMFByteStream* ppIByteStreams, uint32 cByteStreams) mut => VT.SetIndexByteStreams(ref this, ref ppIByteStreams, cByteStreams);
			public HRESULT GetIndexByteStreamCount(out uint32 pcByteStreams) mut => VT.GetIndexByteStreamCount(ref this, out pcByteStreams);
			public HRESULT GetIndexStatus(ref ASF_INDEX_IDENTIFIER pIndexIdentifier, out BOOL pfIsIndexed, out uint8 pbIndexDescriptor, out uint32 pcbIndexDescriptor) mut => VT.GetIndexStatus(ref this, ref pIndexIdentifier, out pfIsIndexed, out pbIndexDescriptor, out pcbIndexDescriptor);
			public HRESULT SetIndexStatus(ref uint8 pbIndexDescriptor, uint32 cbIndexDescriptor, BOOL fGenerateIndex) mut => VT.SetIndexStatus(ref this, ref pbIndexDescriptor, cbIndexDescriptor, fGenerateIndex);
			public HRESULT GetSeekPositionForValue(in PROPVARIANT pvarValue, ref ASF_INDEX_IDENTIFIER pIndexIdentifier, out uint64 pcbOffsetWithinData, out int64 phnsApproxTime, out uint32 pdwPayloadNumberOfStreamWithinPacket) mut => VT.GetSeekPositionForValue(ref this, pvarValue, ref pIndexIdentifier, out pcbOffsetWithinData, out phnsApproxTime, out pdwPayloadNumberOfStreamWithinPacket);
			public HRESULT GenerateIndexEntries(ref IMFSample pIASFPacketSample) mut => VT.GenerateIndexEntries(ref this, ref pIASFPacketSample);
			public HRESULT CommitIndex(ref IMFASFContentInfo pIContentInfo) mut => VT.CommitIndex(ref this, ref pIContentInfo);
			public HRESULT GetIndexWriteSpace(out uint64 pcbIndexWriteSpace) mut => VT.GetIndexWriteSpace(ref this, out pcbIndexWriteSpace);
			public HRESULT GetCompletedIndex(ref IMFMediaBuffer pIIndexBuffer, uint64 cbOffsetWithinIndex) mut => VT.GetCompletedIndex(ref this, ref pIIndexBuffer, cbOffsetWithinIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFIndexer self, uint32 dwFlags) SetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFIndexer self, out uint32 pdwFlags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFIndexer self, ref IMFASFContentInfo pIContentInfo) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFIndexer self, ref IMFASFContentInfo pIContentInfo, out uint64 pcbIndexOffset) GetIndexPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFIndexer self, ref IMFByteStream* ppIByteStreams, uint32 cByteStreams) SetIndexByteStreams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFIndexer self, out uint32 pcByteStreams) GetIndexByteStreamCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFIndexer self, ref ASF_INDEX_IDENTIFIER pIndexIdentifier, out BOOL pfIsIndexed, out uint8 pbIndexDescriptor, out uint32 pcbIndexDescriptor) GetIndexStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFIndexer self, ref uint8 pbIndexDescriptor, uint32 cbIndexDescriptor, BOOL fGenerateIndex) SetIndexStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFIndexer self, in PROPVARIANT pvarValue, ref ASF_INDEX_IDENTIFIER pIndexIdentifier, out uint64 pcbOffsetWithinData, out int64 phnsApproxTime, out uint32 pdwPayloadNumberOfStreamWithinPacket) GetSeekPositionForValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFIndexer self, ref IMFSample pIASFPacketSample) GenerateIndexEntries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFIndexer self, ref IMFASFContentInfo pIContentInfo) CommitIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFIndexer self, out uint64 pcbIndexWriteSpace) GetIndexWriteSpace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFIndexer self, ref IMFMediaBuffer pIIndexBuffer, uint64 cbOffsetWithinIndex) GetCompletedIndex;
			}
		}
		[CRepr]
		public struct IMFASFSplitter : IUnknown
		{
			public const new Guid IID = .(0x12558295, 0xe399, 0x11d5, 0xbc, 0x2a, 0x00, 0xb0, 0xd0, 0xf3, 0xf4, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IMFASFContentInfo pIContentInfo) mut => VT.Initialize(ref this, ref pIContentInfo);
			public HRESULT SetFlags(uint32 dwFlags) mut => VT.SetFlags(ref this, dwFlags);
			public HRESULT ComGetFlags(out uint32 pdwFlags) mut => VT.ComGetFlags(ref this, out pdwFlags);
			public HRESULT SelectStreams(ref uint16 pwStreamNumbers, uint16 wNumStreams) mut => VT.SelectStreams(ref this, ref pwStreamNumbers, wNumStreams);
			public HRESULT GetSelectedStreams(out uint16 pwStreamNumbers, out uint16 pwNumStreams) mut => VT.GetSelectedStreams(ref this, out pwStreamNumbers, out pwNumStreams);
			public HRESULT ParseData(ref IMFMediaBuffer pIBuffer, uint32 cbBufferOffset, uint32 cbLength) mut => VT.ParseData(ref this, ref pIBuffer, cbBufferOffset, cbLength);
			public HRESULT GetNextSample(out ASF_STATUSFLAGS pdwStatusFlags, out uint16 pwStreamNumber, out IMFSample* ppISample) mut => VT.GetNextSample(ref this, out pdwStatusFlags, out pwStreamNumber, out ppISample);
			public HRESULT Flush() mut => VT.Flush(ref this);
			public HRESULT GetLastSendTime(out uint32 pdwLastSendTime) mut => VT.GetLastSendTime(ref this, out pdwLastSendTime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFSplitter self, ref IMFASFContentInfo pIContentInfo) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFSplitter self, uint32 dwFlags) SetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFSplitter self, out uint32 pdwFlags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFSplitter self, ref uint16 pwStreamNumbers, uint16 wNumStreams) SelectStreams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFSplitter self, out uint16 pwStreamNumbers, out uint16 pwNumStreams) GetSelectedStreams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFSplitter self, ref IMFMediaBuffer pIBuffer, uint32 cbBufferOffset, uint32 cbLength) ParseData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFSplitter self, out ASF_STATUSFLAGS pdwStatusFlags, out uint16 pwStreamNumber, out IMFSample* ppISample) GetNextSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFSplitter self) Flush;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFSplitter self, out uint32 pdwLastSendTime) GetLastSendTime;
			}
		}
		[CRepr]
		public struct IMFASFMultiplexer : IUnknown
		{
			public const new Guid IID = .(0x57bdd80a, 0x9b38, 0x4838, 0xb7, 0x37, 0xc5, 0x8f, 0x67, 0x0d, 0x7d, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IMFASFContentInfo pIContentInfo) mut => VT.Initialize(ref this, ref pIContentInfo);
			public HRESULT SetFlags(uint32 dwFlags) mut => VT.SetFlags(ref this, dwFlags);
			public HRESULT ComGetFlags(out uint32 pdwFlags) mut => VT.ComGetFlags(ref this, out pdwFlags);
			public HRESULT ProcessSample(uint16 wStreamNumber, ref IMFSample pISample, int64 hnsTimestampAdjust) mut => VT.ProcessSample(ref this, wStreamNumber, ref pISample, hnsTimestampAdjust);
			public HRESULT GetNextPacket(out uint32 pdwStatusFlags, out IMFSample* ppIPacket) mut => VT.GetNextPacket(ref this, out pdwStatusFlags, out ppIPacket);
			public HRESULT Flush() mut => VT.Flush(ref this);
			public HRESULT End(out IMFASFContentInfo pIContentInfo) mut => VT.End(ref this, out pIContentInfo);
			public HRESULT GetStatistics(uint16 wStreamNumber, out ASF_MUX_STATISTICS pMuxStats) mut => VT.GetStatistics(ref this, wStreamNumber, out pMuxStats);
			public HRESULT SetSyncTolerance(uint32 msSyncTolerance) mut => VT.SetSyncTolerance(ref this, msSyncTolerance);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMultiplexer self, ref IMFASFContentInfo pIContentInfo) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMultiplexer self, uint32 dwFlags) SetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMultiplexer self, out uint32 pdwFlags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMultiplexer self, uint16 wStreamNumber, ref IMFSample pISample, int64 hnsTimestampAdjust) ProcessSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMultiplexer self, out uint32 pdwStatusFlags, out IMFSample* ppIPacket) GetNextPacket;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMultiplexer self) Flush;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMultiplexer self, out IMFASFContentInfo pIContentInfo) End;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMultiplexer self, uint16 wStreamNumber, out ASF_MUX_STATISTICS pMuxStats) GetStatistics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFMultiplexer self, uint32 msSyncTolerance) SetSyncTolerance;
			}
		}
		[CRepr]
		public struct IMFASFStreamSelector : IUnknown
		{
			public const new Guid IID = .(0xd01bad4a, 0x4fa0, 0x4a60, 0x93, 0x49, 0xc2, 0x7e, 0x62, 0xda, 0x9d, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamCount(out uint32 pcStreams) mut => VT.GetStreamCount(ref this, out pcStreams);
			public HRESULT GetOutputCount(out uint32 pcOutputs) mut => VT.GetOutputCount(ref this, out pcOutputs);
			public HRESULT GetOutputStreamCount(uint32 dwOutputNum, out uint32 pcStreams) mut => VT.GetOutputStreamCount(ref this, dwOutputNum, out pcStreams);
			public HRESULT GetOutputStreamNumbers(uint32 dwOutputNum, out uint16 rgwStreamNumbers) mut => VT.GetOutputStreamNumbers(ref this, dwOutputNum, out rgwStreamNumbers);
			public HRESULT GetOutputFromStream(uint16 wStreamNum, out uint32 pdwOutput) mut => VT.GetOutputFromStream(ref this, wStreamNum, out pdwOutput);
			public HRESULT GetOutputOverride(uint32 dwOutputNum, out ASF_SELECTION_STATUS pSelection) mut => VT.GetOutputOverride(ref this, dwOutputNum, out pSelection);
			public HRESULT SetOutputOverride(uint32 dwOutputNum, ASF_SELECTION_STATUS Selection) mut => VT.SetOutputOverride(ref this, dwOutputNum, Selection);
			public HRESULT GetOutputMutexCount(uint32 dwOutputNum, out uint32 pcMutexes) mut => VT.GetOutputMutexCount(ref this, dwOutputNum, out pcMutexes);
			public HRESULT GetOutputMutex(uint32 dwOutputNum, uint32 dwMutexNum, out IUnknown* ppMutex) mut => VT.GetOutputMutex(ref this, dwOutputNum, dwMutexNum, out ppMutex);
			public HRESULT SetOutputMutexSelection(uint32 dwOutputNum, uint32 dwMutexNum, uint16 wSelectedRecord) mut => VT.SetOutputMutexSelection(ref this, dwOutputNum, dwMutexNum, wSelectedRecord);
			public HRESULT GetBandwidthStepCount(out uint32 pcStepCount) mut => VT.GetBandwidthStepCount(ref this, out pcStepCount);
			public HRESULT GetBandwidthStep(uint32 dwStepNum, out uint32 pdwBitrate, out uint16 rgwStreamNumbers, out ASF_SELECTION_STATUS rgSelections) mut => VT.GetBandwidthStep(ref this, dwStepNum, out pdwBitrate, out rgwStreamNumbers, out rgSelections);
			public HRESULT BitrateToStepNumber(uint32 dwBitrate, out uint32 pdwStepNum) mut => VT.BitrateToStepNumber(ref this, dwBitrate, out pdwStepNum);
			public HRESULT SetStreamSelectorFlags(uint32 dwStreamSelectorFlags) mut => VT.SetStreamSelectorFlags(ref this, dwStreamSelectorFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, out uint32 pcStreams) GetStreamCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, out uint32 pcOutputs) GetOutputCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, uint32 dwOutputNum, out uint32 pcStreams) GetOutputStreamCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, uint32 dwOutputNum, out uint16 rgwStreamNumbers) GetOutputStreamNumbers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, uint16 wStreamNum, out uint32 pdwOutput) GetOutputFromStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, uint32 dwOutputNum, out ASF_SELECTION_STATUS pSelection) GetOutputOverride;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, uint32 dwOutputNum, ASF_SELECTION_STATUS Selection) SetOutputOverride;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, uint32 dwOutputNum, out uint32 pcMutexes) GetOutputMutexCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, uint32 dwOutputNum, uint32 dwMutexNum, out IUnknown* ppMutex) GetOutputMutex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, uint32 dwOutputNum, uint32 dwMutexNum, uint16 wSelectedRecord) SetOutputMutexSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, out uint32 pcStepCount) GetBandwidthStepCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, uint32 dwStepNum, out uint32 pdwBitrate, out uint16 rgwStreamNumbers, out ASF_SELECTION_STATUS rgSelections) GetBandwidthStep;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, uint32 dwBitrate, out uint32 pdwStepNum) BitrateToStepNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFASFStreamSelector self, uint32 dwStreamSelectorFlags) SetStreamSelectorFlags;
			}
		}
		[CRepr]
		public struct IMFDRMNetHelper : IUnknown
		{
			public const new Guid IID = .(0x3d1ff0ea, 0x679a, 0x4190, 0x8d, 0x46, 0x7f, 0xa6, 0x9e, 0x8c, 0x7e, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ProcessLicenseRequest(uint8* pLicenseRequest, uint32 cbLicenseRequest, uint8** ppLicenseResponse, out uint32 pcbLicenseResponse, out BSTR pbstrKID) mut => VT.ProcessLicenseRequest(ref this, pLicenseRequest, cbLicenseRequest, ppLicenseResponse, out pcbLicenseResponse, out pbstrKID);
			public HRESULT GetChainedLicenseResponse(uint8** ppLicenseResponse, out uint32 pcbLicenseResponse) mut => VT.GetChainedLicenseResponse(ref this, ppLicenseResponse, out pcbLicenseResponse);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDRMNetHelper self, uint8* pLicenseRequest, uint32 cbLicenseRequest, uint8** ppLicenseResponse, out uint32 pcbLicenseResponse, out BSTR pbstrKID) ProcessLicenseRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDRMNetHelper self, uint8** ppLicenseResponse, out uint32 pcbLicenseResponse) GetChainedLicenseResponse;
			}
		}
		[CRepr]
		public struct IMFCaptureEngineOnEventCallback : IUnknown
		{
			public const new Guid IID = .(0xaeda51c0, 0x9025, 0x4983, 0x90, 0x12, 0xde, 0x59, 0x7b, 0x88, 0xb0, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnEvent(ref IMFMediaEvent pEvent) mut => VT.OnEvent(ref this, ref pEvent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureEngineOnEventCallback self, ref IMFMediaEvent pEvent) OnEvent;
			}
		}
		[CRepr]
		public struct IMFCaptureEngineOnSampleCallback : IUnknown
		{
			public const new Guid IID = .(0x52150b82, 0xab39, 0x4467, 0x98, 0x0f, 0xe4, 0x8b, 0xf0, 0x82, 0x2e, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSample(IMFSample* pSample) mut => VT.OnSample(ref this, pSample);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureEngineOnSampleCallback self, IMFSample* pSample) OnSample;
			}
		}
		[CRepr]
		public struct IMFCaptureSink : IUnknown
		{
			public const new Guid IID = .(0x72d6135b, 0x35e9, 0x412c, 0xb9, 0x26, 0xfd, 0x52, 0x65, 0xf2, 0xa8, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOutputMediaType(uint32 dwSinkStreamIndex, IMFMediaType** ppMediaType) mut => VT.GetOutputMediaType(ref this, dwSinkStreamIndex, ppMediaType);
			public HRESULT GetService(uint32 dwSinkStreamIndex, in Guid rguidService, in Guid riid, IUnknown** ppUnknown) mut => VT.GetService(ref this, dwSinkStreamIndex, rguidService, riid, ppUnknown);
			public HRESULT AddStream(uint32 dwSourceStreamIndex, ref IMFMediaType pMediaType, IMFAttributes* pAttributes, uint32* pdwSinkStreamIndex) mut => VT.AddStream(ref this, dwSourceStreamIndex, ref pMediaType, pAttributes, pdwSinkStreamIndex);
			public HRESULT Prepare() mut => VT.Prepare(ref this);
			public HRESULT RemoveAllStreams() mut => VT.RemoveAllStreams(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSink self, uint32 dwSinkStreamIndex, IMFMediaType** ppMediaType) GetOutputMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSink self, uint32 dwSinkStreamIndex, in Guid rguidService, in Guid riid, IUnknown** ppUnknown) GetService;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSink self, uint32 dwSourceStreamIndex, ref IMFMediaType pMediaType, IMFAttributes* pAttributes, uint32* pdwSinkStreamIndex) AddStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSink self) Prepare;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSink self) RemoveAllStreams;
			}
		}
		[CRepr]
		public struct IMFCaptureRecordSink : IMFCaptureSink
		{
			public const new Guid IID = .(0x3323b55a, 0xf92a, 0x4fe2, 0x8e, 0xdc, 0xe9, 0xbf, 0xc0, 0x63, 0x4d, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOutputByteStream(ref IMFByteStream pByteStream, in Guid guidContainerType) mut => VT.SetOutputByteStream(ref this, ref pByteStream, guidContainerType);
			public HRESULT SetOutputFileName(PWSTR fileName) mut => VT.SetOutputFileName(ref this, fileName);
			public HRESULT SetSampleCallback(uint32 dwStreamSinkIndex, ref IMFCaptureEngineOnSampleCallback pCallback) mut => VT.SetSampleCallback(ref this, dwStreamSinkIndex, ref pCallback);
			public HRESULT SetCustomSink(ref IMFMediaSink pMediaSink) mut => VT.SetCustomSink(ref this, ref pMediaSink);
			public HRESULT GetRotation(uint32 dwStreamIndex, out uint32 pdwRotationValue) mut => VT.GetRotation(ref this, dwStreamIndex, out pdwRotationValue);
			public HRESULT SetRotation(uint32 dwStreamIndex, uint32 dwRotationValue) mut => VT.SetRotation(ref this, dwStreamIndex, dwRotationValue);

			[CRepr]
			public struct VTable : IMFCaptureSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureRecordSink self, ref IMFByteStream pByteStream, in Guid guidContainerType) SetOutputByteStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureRecordSink self, PWSTR fileName) SetOutputFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureRecordSink self, uint32 dwStreamSinkIndex, ref IMFCaptureEngineOnSampleCallback pCallback) SetSampleCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureRecordSink self, ref IMFMediaSink pMediaSink) SetCustomSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureRecordSink self, uint32 dwStreamIndex, out uint32 pdwRotationValue) GetRotation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureRecordSink self, uint32 dwStreamIndex, uint32 dwRotationValue) SetRotation;
			}
		}
		[CRepr]
		public struct IMFCapturePreviewSink : IMFCaptureSink
		{
			public const new Guid IID = .(0x77346cfd, 0x5b49, 0x4d73, 0xac, 0xe0, 0x5b, 0x52, 0xa8, 0x59, 0xf2, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRenderHandle(HANDLE handle) mut => VT.SetRenderHandle(ref this, handle);
			public HRESULT SetRenderSurface(ref IUnknown pSurface) mut => VT.SetRenderSurface(ref this, ref pSurface);
			public HRESULT UpdateVideo(MFVideoNormalizedRect* pSrc, RECT* pDst, uint32* pBorderClr) mut => VT.UpdateVideo(ref this, pSrc, pDst, pBorderClr);
			public HRESULT SetSampleCallback(uint32 dwStreamSinkIndex, ref IMFCaptureEngineOnSampleCallback pCallback) mut => VT.SetSampleCallback(ref this, dwStreamSinkIndex, ref pCallback);
			public HRESULT GetMirrorState(out BOOL pfMirrorState) mut => VT.GetMirrorState(ref this, out pfMirrorState);
			public HRESULT SetMirrorState(BOOL fMirrorState) mut => VT.SetMirrorState(ref this, fMirrorState);
			public HRESULT GetRotation(uint32 dwStreamIndex, out uint32 pdwRotationValue) mut => VT.GetRotation(ref this, dwStreamIndex, out pdwRotationValue);
			public HRESULT SetRotation(uint32 dwStreamIndex, uint32 dwRotationValue) mut => VT.SetRotation(ref this, dwStreamIndex, dwRotationValue);
			public HRESULT SetCustomSink(ref IMFMediaSink pMediaSink) mut => VT.SetCustomSink(ref this, ref pMediaSink);

			[CRepr]
			public struct VTable : IMFCaptureSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePreviewSink self, HANDLE handle) SetRenderHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePreviewSink self, ref IUnknown pSurface) SetRenderSurface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePreviewSink self, MFVideoNormalizedRect* pSrc, RECT* pDst, uint32* pBorderClr) UpdateVideo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePreviewSink self, uint32 dwStreamSinkIndex, ref IMFCaptureEngineOnSampleCallback pCallback) SetSampleCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePreviewSink self, out BOOL pfMirrorState) GetMirrorState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePreviewSink self, BOOL fMirrorState) SetMirrorState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePreviewSink self, uint32 dwStreamIndex, out uint32 pdwRotationValue) GetRotation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePreviewSink self, uint32 dwStreamIndex, uint32 dwRotationValue) SetRotation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePreviewSink self, ref IMFMediaSink pMediaSink) SetCustomSink;
			}
		}
		[CRepr]
		public struct IMFCapturePhotoSink : IMFCaptureSink
		{
			public const new Guid IID = .(0xd2d43cc8, 0x48bb, 0x4aa7, 0x95, 0xdb, 0x10, 0xc0, 0x69, 0x77, 0xe7, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOutputFileName(PWSTR fileName) mut => VT.SetOutputFileName(ref this, fileName);
			public HRESULT SetSampleCallback(ref IMFCaptureEngineOnSampleCallback pCallback) mut => VT.SetSampleCallback(ref this, ref pCallback);
			public HRESULT SetOutputByteStream(ref IMFByteStream pByteStream) mut => VT.SetOutputByteStream(ref this, ref pByteStream);

			[CRepr]
			public struct VTable : IMFCaptureSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePhotoSink self, PWSTR fileName) SetOutputFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePhotoSink self, ref IMFCaptureEngineOnSampleCallback pCallback) SetSampleCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCapturePhotoSink self, ref IMFByteStream pByteStream) SetOutputByteStream;
			}
		}
		[CRepr]
		public struct IMFCaptureSource : IUnknown
		{
			public const new Guid IID = .(0x439a42a8, 0x0d2c, 0x4505, 0xbe, 0x83, 0xf7, 0x9b, 0x2a, 0x05, 0xd5, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCaptureDeviceSource(MF_CAPTURE_ENGINE_DEVICE_TYPE mfCaptureEngineDeviceType, IMFMediaSource** ppMediaSource) mut => VT.GetCaptureDeviceSource(ref this, mfCaptureEngineDeviceType, ppMediaSource);
			public HRESULT GetCaptureDeviceActivate(MF_CAPTURE_ENGINE_DEVICE_TYPE mfCaptureEngineDeviceType, IMFActivate** ppActivate) mut => VT.GetCaptureDeviceActivate(ref this, mfCaptureEngineDeviceType, ppActivate);
			public HRESULT GetService(in Guid rguidService, in Guid riid, IUnknown** ppUnknown) mut => VT.GetService(ref this, rguidService, riid, ppUnknown);
			public HRESULT AddEffect(uint32 dwSourceStreamIndex, ref IUnknown pUnknown) mut => VT.AddEffect(ref this, dwSourceStreamIndex, ref pUnknown);
			public HRESULT RemoveEffect(uint32 dwSourceStreamIndex, ref IUnknown pUnknown) mut => VT.RemoveEffect(ref this, dwSourceStreamIndex, ref pUnknown);
			public HRESULT RemoveAllEffects(uint32 dwSourceStreamIndex) mut => VT.RemoveAllEffects(ref this, dwSourceStreamIndex);
			public HRESULT GetAvailableDeviceMediaType(uint32 dwSourceStreamIndex, uint32 dwMediaTypeIndex, IMFMediaType** ppMediaType) mut => VT.GetAvailableDeviceMediaType(ref this, dwSourceStreamIndex, dwMediaTypeIndex, ppMediaType);
			public HRESULT SetCurrentDeviceMediaType(uint32 dwSourceStreamIndex, ref IMFMediaType pMediaType) mut => VT.SetCurrentDeviceMediaType(ref this, dwSourceStreamIndex, ref pMediaType);
			public HRESULT GetCurrentDeviceMediaType(uint32 dwSourceStreamIndex, out IMFMediaType* ppMediaType) mut => VT.GetCurrentDeviceMediaType(ref this, dwSourceStreamIndex, out ppMediaType);
			public HRESULT GetDeviceStreamCount(out uint32 pdwStreamCount) mut => VT.GetDeviceStreamCount(ref this, out pdwStreamCount);
			public HRESULT GetDeviceStreamCategory(uint32 dwSourceStreamIndex, out MF_CAPTURE_ENGINE_STREAM_CATEGORY pStreamCategory) mut => VT.GetDeviceStreamCategory(ref this, dwSourceStreamIndex, out pStreamCategory);
			public HRESULT GetMirrorState(uint32 dwStreamIndex, out BOOL pfMirrorState) mut => VT.GetMirrorState(ref this, dwStreamIndex, out pfMirrorState);
			public HRESULT SetMirrorState(uint32 dwStreamIndex, BOOL fMirrorState) mut => VT.SetMirrorState(ref this, dwStreamIndex, fMirrorState);
			public HRESULT GetStreamIndexFromFriendlyName(uint32 uifriendlyName, out uint32 pdwActualStreamIndex) mut => VT.GetStreamIndexFromFriendlyName(ref this, uifriendlyName, out pdwActualStreamIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, MF_CAPTURE_ENGINE_DEVICE_TYPE mfCaptureEngineDeviceType, IMFMediaSource** ppMediaSource) GetCaptureDeviceSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, MF_CAPTURE_ENGINE_DEVICE_TYPE mfCaptureEngineDeviceType, IMFActivate** ppActivate) GetCaptureDeviceActivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, in Guid rguidService, in Guid riid, IUnknown** ppUnknown) GetService;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, uint32 dwSourceStreamIndex, ref IUnknown pUnknown) AddEffect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, uint32 dwSourceStreamIndex, ref IUnknown pUnknown) RemoveEffect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, uint32 dwSourceStreamIndex) RemoveAllEffects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, uint32 dwSourceStreamIndex, uint32 dwMediaTypeIndex, IMFMediaType** ppMediaType) GetAvailableDeviceMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, uint32 dwSourceStreamIndex, ref IMFMediaType pMediaType) SetCurrentDeviceMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, uint32 dwSourceStreamIndex, out IMFMediaType* ppMediaType) GetCurrentDeviceMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, out uint32 pdwStreamCount) GetDeviceStreamCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, uint32 dwSourceStreamIndex, out MF_CAPTURE_ENGINE_STREAM_CATEGORY pStreamCategory) GetDeviceStreamCategory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, uint32 dwStreamIndex, out BOOL pfMirrorState) GetMirrorState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, uint32 dwStreamIndex, BOOL fMirrorState) SetMirrorState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSource self, uint32 uifriendlyName, out uint32 pdwActualStreamIndex) GetStreamIndexFromFriendlyName;
			}
		}
		[CRepr]
		public struct IMFCaptureEngine : IUnknown
		{
			public const new Guid IID = .(0xa6bba433, 0x176b, 0x48b2, 0xb3, 0x75, 0x53, 0xaa, 0x03, 0x47, 0x32, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IMFCaptureEngineOnEventCallback pEventCallback, IMFAttributes* pAttributes, IUnknown* pAudioSource, IUnknown* pVideoSource) mut => VT.Initialize(ref this, ref pEventCallback, pAttributes, pAudioSource, pVideoSource);
			public HRESULT StartPreview() mut => VT.StartPreview(ref this);
			public HRESULT StopPreview() mut => VT.StopPreview(ref this);
			public HRESULT StartRecord() mut => VT.StartRecord(ref this);
			public HRESULT StopRecord(BOOL bFinalize, BOOL bFlushUnprocessedSamples) mut => VT.StopRecord(ref this, bFinalize, bFlushUnprocessedSamples);
			public HRESULT TakePhoto() mut => VT.TakePhoto(ref this);
			public HRESULT GetSink(MF_CAPTURE_ENGINE_SINK_TYPE mfCaptureEngineSinkType, out IMFCaptureSink* ppSink) mut => VT.GetSink(ref this, mfCaptureEngineSinkType, out ppSink);
			public HRESULT GetSource(out IMFCaptureSource* ppSource) mut => VT.GetSource(ref this, out ppSource);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureEngine self, ref IMFCaptureEngineOnEventCallback pEventCallback, IMFAttributes* pAttributes, IUnknown* pAudioSource, IUnknown* pVideoSource) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureEngine self) StartPreview;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureEngine self) StopPreview;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureEngine self) StartRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureEngine self, BOOL bFinalize, BOOL bFlushUnprocessedSamples) StopRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureEngine self) TakePhoto;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureEngine self, MF_CAPTURE_ENGINE_SINK_TYPE mfCaptureEngineSinkType, out IMFCaptureSink* ppSink) GetSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureEngine self, out IMFCaptureSource* ppSource) GetSource;
			}
		}
		[CRepr]
		public struct IMFCaptureEngineClassFactory : IUnknown
		{
			public const new Guid IID = .(0x8f02d140, 0x56fc, 0x4302, 0xa7, 0x05, 0x3a, 0x97, 0xc7, 0x8b, 0xe7, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstance(in Guid clsid, in Guid riid, void** ppvObject) mut => VT.CreateInstance(ref this, clsid, riid, ppvObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureEngineClassFactory self, in Guid clsid, in Guid riid, void** ppvObject) CreateInstance;
			}
		}
		[CRepr]
		public struct IMFCaptureEngineOnSampleCallback2 : IMFCaptureEngineOnSampleCallback
		{
			public const new Guid IID = .(0xe37ceed7, 0x340f, 0x4514, 0x9f, 0x4d, 0x9c, 0x2a, 0xe0, 0x26, 0x10, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSynchronizedEvent(ref IMFMediaEvent pEvent) mut => VT.OnSynchronizedEvent(ref this, ref pEvent);

			[CRepr]
			public struct VTable : IMFCaptureEngineOnSampleCallback.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureEngineOnSampleCallback2 self, ref IMFMediaEvent pEvent) OnSynchronizedEvent;
			}
		}
		[CRepr]
		public struct IMFCaptureSink2 : IMFCaptureSink
		{
			public const new Guid IID = .(0xf9e4219e, 0x6197, 0x4b5e, 0xb8, 0x88, 0xbe, 0xe3, 0x10, 0xab, 0x2c, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOutputMediaType(uint32 dwStreamIndex, ref IMFMediaType pMediaType, IMFAttributes* pEncodingAttributes) mut => VT.SetOutputMediaType(ref this, dwStreamIndex, ref pMediaType, pEncodingAttributes);

			[CRepr]
			public struct VTable : IMFCaptureSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCaptureSink2 self, uint32 dwStreamIndex, ref IMFMediaType pMediaType, IMFAttributes* pEncodingAttributes) SetOutputMediaType;
			}
		}
		[CRepr]
		public struct IMFD3D12SynchronizationObjectCommands : IUnknown
		{
			public const new Guid IID = .(0x09d0f835, 0x92ff, 0x4e53, 0x8e, 0xfa, 0x40, 0xfa, 0xa5, 0x51, 0xf2, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnqueueResourceReady(ref ID3D12CommandQueue pProducerCommandQueue) mut => VT.EnqueueResourceReady(ref this, ref pProducerCommandQueue);
			public HRESULT EnqueueResourceReadyWait(ref ID3D12CommandQueue pConsumerCommandQueue) mut => VT.EnqueueResourceReadyWait(ref this, ref pConsumerCommandQueue);
			public HRESULT SignalEventOnResourceReady(HANDLE hEvent) mut => VT.SignalEventOnResourceReady(ref this, hEvent);
			public HRESULT EnqueueResourceRelease(ref ID3D12CommandQueue pConsumerCommandQueue) mut => VT.EnqueueResourceRelease(ref this, ref pConsumerCommandQueue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFD3D12SynchronizationObjectCommands self, ref ID3D12CommandQueue pProducerCommandQueue) EnqueueResourceReady;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFD3D12SynchronizationObjectCommands self, ref ID3D12CommandQueue pConsumerCommandQueue) EnqueueResourceReadyWait;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFD3D12SynchronizationObjectCommands self, HANDLE hEvent) SignalEventOnResourceReady;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFD3D12SynchronizationObjectCommands self, ref ID3D12CommandQueue pConsumerCommandQueue) EnqueueResourceRelease;
			}
		}
		[CRepr]
		public struct IMFD3D12SynchronizationObject : IUnknown
		{
			public const new Guid IID = .(0x802302b0, 0x82de, 0x45e1, 0xb4, 0x21, 0xf1, 0x9e, 0xe5, 0xbd, 0xaf, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SignalEventOnFinalResourceRelease(HANDLE hEvent) mut => VT.SignalEventOnFinalResourceRelease(ref this, hEvent);
			public HRESULT Reset() mut => VT.Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFD3D12SynchronizationObject self, HANDLE hEvent) SignalEventOnFinalResourceRelease;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFD3D12SynchronizationObject self) Reset;
			}
		}
		[CRepr]
		public struct MFASYNCRESULT : IMFAsyncResult
		{
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IMFAsyncResult.VTable {}
		}
		[CRepr]
		public struct IMFMediaError : IUnknown
		{
			public const new Guid IID = .(0xfc0e10d2, 0xab2a, 0x4501, 0xa9, 0x51, 0x06, 0xbb, 0x10, 0x75, 0x18, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint16 GetErrorCode() mut => VT.GetErrorCode(ref this);
			public HRESULT GetExtendedErrorCode() mut => VT.GetExtendedErrorCode(ref this);
			public HRESULT SetErrorCode(MF_MEDIA_ENGINE_ERR error) mut => VT.SetErrorCode(ref this, error);
			public HRESULT SetExtendedErrorCode(HRESULT error) mut => VT.SetExtendedErrorCode(ref this, error);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint16(ref IMFMediaError self) GetErrorCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaError self) GetExtendedErrorCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaError self, MF_MEDIA_ENGINE_ERR error) SetErrorCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaError self, HRESULT error) SetExtendedErrorCode;
			}
		}
		[CRepr]
		public struct IMFMediaTimeRange : IUnknown
		{
			public const new Guid IID = .(0xdb71a2fc, 0x078a, 0x414e, 0x9d, 0xf9, 0x8c, 0x25, 0x31, 0xb0, 0xaa, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetLength() mut => VT.GetLength(ref this);
			public HRESULT GetStart(uint32 index, out double pStart) mut => VT.GetStart(ref this, index, out pStart);
			public HRESULT GetEnd(uint32 index, out double pEnd) mut => VT.GetEnd(ref this, index, out pEnd);
			public BOOL ContainsTime(double time) mut => VT.ContainsTime(ref this, time);
			public HRESULT AddRange(double startTime, double endTime) mut => VT.AddRange(ref this, startTime, endTime);
			public HRESULT Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IMFMediaTimeRange self) GetLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaTimeRange self, uint32 index, out double pStart) GetStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaTimeRange self, uint32 index, out double pEnd) GetEnd;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFMediaTimeRange self, double time) ContainsTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaTimeRange self, double startTime, double endTime) AddRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaTimeRange self) Clear;
			}
		}
		[CRepr]
		public struct IMFMediaEngineNotify : IUnknown
		{
			public const new Guid IID = .(0xfee7c112, 0xe776, 0x42b5, 0x9b, 0xbf, 0x00, 0x48, 0x52, 0x4e, 0x2b, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EventNotify(uint32 event, uint param1, uint32 param2) mut => VT.EventNotify(ref this, event, param1, param2);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineNotify self, uint32 event, uint param1, uint32 param2) EventNotify;
			}
		}
		[CRepr]
		public struct IMFMediaEngineSrcElements : IUnknown
		{
			public const new Guid IID = .(0x7a5e5354, 0xb114, 0x4c72, 0xb9, 0x91, 0x31, 0x31, 0xd7, 0x50, 0x32, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetLength() mut => VT.GetLength(ref this);
			public HRESULT GetURL(uint32 index, out BSTR pURL) mut => VT.GetURL(ref this, index, out pURL);
			public HRESULT ComGetType(uint32 index, out BSTR pType) mut => VT.ComGetType(ref this, index, out pType);
			public HRESULT GetMedia(uint32 index, out BSTR pMedia) mut => VT.GetMedia(ref this, index, out pMedia);
			public HRESULT AddElement(BSTR pURL, BSTR pType, BSTR pMedia) mut => VT.AddElement(ref this, pURL, pType, pMedia);
			public HRESULT RemoveAllElements() mut => VT.RemoveAllElements(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IMFMediaEngineSrcElements self) GetLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineSrcElements self, uint32 index, out BSTR pURL) GetURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineSrcElements self, uint32 index, out BSTR pType) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineSrcElements self, uint32 index, out BSTR pMedia) GetMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineSrcElements self, BSTR pURL, BSTR pType, BSTR pMedia) AddElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineSrcElements self) RemoveAllElements;
			}
		}
		[CRepr]
		public struct IMFMediaEngine : IUnknown
		{
			public const new Guid IID = .(0x98a1b0bb, 0x03eb, 0x4935, 0xae, 0x7c, 0x93, 0xc1, 0xfa, 0x0e, 0x1c, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetError(out IMFMediaError* ppError) mut => VT.GetError(ref this, out ppError);
			public HRESULT SetErrorCode(MF_MEDIA_ENGINE_ERR error) mut => VT.SetErrorCode(ref this, error);
			public HRESULT SetSourceElements(ref IMFMediaEngineSrcElements pSrcElements) mut => VT.SetSourceElements(ref this, ref pSrcElements);
			public HRESULT SetSource(BSTR pUrl) mut => VT.SetSource(ref this, pUrl);
			public HRESULT GetCurrentSource(out BSTR ppUrl) mut => VT.GetCurrentSource(ref this, out ppUrl);
			public uint16 GetNetworkState() mut => VT.GetNetworkState(ref this);
			public MF_MEDIA_ENGINE_PRELOAD GetPreload() mut => VT.GetPreload(ref this);
			public HRESULT SetPreload(MF_MEDIA_ENGINE_PRELOAD Preload) mut => VT.SetPreload(ref this, Preload);
			public HRESULT GetBuffered(out IMFMediaTimeRange* ppBuffered) mut => VT.GetBuffered(ref this, out ppBuffered);
			public HRESULT Load() mut => VT.Load(ref this);
			public HRESULT CanPlayType(BSTR type, out MF_MEDIA_ENGINE_CANPLAY pAnswer) mut => VT.CanPlayType(ref this, type, out pAnswer);
			public uint16 GetReadyState() mut => VT.GetReadyState(ref this);
			public BOOL IsSeeking() mut => VT.IsSeeking(ref this);
			public double GetCurrentTime() mut => VT.GetCurrentTime(ref this);
			public HRESULT SetCurrentTime(double seekTime) mut => VT.SetCurrentTime(ref this, seekTime);
			public double GetStartTime() mut => VT.GetStartTime(ref this);
			public double GetDuration() mut => VT.GetDuration(ref this);
			public BOOL IsPaused() mut => VT.IsPaused(ref this);
			public double GetDefaultPlaybackRate() mut => VT.GetDefaultPlaybackRate(ref this);
			public HRESULT SetDefaultPlaybackRate(double Rate) mut => VT.SetDefaultPlaybackRate(ref this, Rate);
			public double GetPlaybackRate() mut => VT.GetPlaybackRate(ref this);
			public HRESULT SetPlaybackRate(double Rate) mut => VT.SetPlaybackRate(ref this, Rate);
			public HRESULT GetPlayed(out IMFMediaTimeRange* ppPlayed) mut => VT.GetPlayed(ref this, out ppPlayed);
			public HRESULT GetSeekable(out IMFMediaTimeRange* ppSeekable) mut => VT.GetSeekable(ref this, out ppSeekable);
			public BOOL IsEnded() mut => VT.IsEnded(ref this);
			public BOOL GetAutoPlay() mut => VT.GetAutoPlay(ref this);
			public HRESULT SetAutoPlay(BOOL AutoPlay) mut => VT.SetAutoPlay(ref this, AutoPlay);
			public BOOL GetLoop() mut => VT.GetLoop(ref this);
			public HRESULT SetLoop(BOOL Loop) mut => VT.SetLoop(ref this, Loop);
			public HRESULT Play() mut => VT.Play(ref this);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public BOOL GetMuted() mut => VT.GetMuted(ref this);
			public HRESULT SetMuted(BOOL Muted) mut => VT.SetMuted(ref this, Muted);
			public double GetVolume() mut => VT.GetVolume(ref this);
			public HRESULT SetVolume(double Volume) mut => VT.SetVolume(ref this, Volume);
			public BOOL HasVideo() mut => VT.HasVideo(ref this);
			public BOOL HasAudio() mut => VT.HasAudio(ref this);
			public HRESULT GetNativeVideoSize(uint32* cx, uint32* cy) mut => VT.GetNativeVideoSize(ref this, cx, cy);
			public HRESULT GetVideoAspectRatio(uint32* cx, uint32* cy) mut => VT.GetVideoAspectRatio(ref this, cx, cy);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);
			public HRESULT TransferVideoFrame(ref IUnknown pDstSurf, MFVideoNormalizedRect* pSrc, in RECT pDst, MFARGB* pBorderClr) mut => VT.TransferVideoFrame(ref this, ref pDstSurf, pSrc, pDst, pBorderClr);
			public HRESULT OnVideoStreamTick(out int64 pPts) mut => VT.OnVideoStreamTick(ref this, out pPts);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, out IMFMediaError* ppError) GetError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, MF_MEDIA_ENGINE_ERR error) SetErrorCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, ref IMFMediaEngineSrcElements pSrcElements) SetSourceElements;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, BSTR pUrl) SetSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, out BSTR ppUrl) GetCurrentSource;
				public new function [CallingConvention(.Stdcall)] uint16(ref IMFMediaEngine self) GetNetworkState;
				public new function [CallingConvention(.Stdcall)] MF_MEDIA_ENGINE_PRELOAD(ref IMFMediaEngine self) GetPreload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, MF_MEDIA_ENGINE_PRELOAD Preload) SetPreload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, out IMFMediaTimeRange* ppBuffered) GetBuffered;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, BSTR type, out MF_MEDIA_ENGINE_CANPLAY pAnswer) CanPlayType;
				public new function [CallingConvention(.Stdcall)] uint16(ref IMFMediaEngine self) GetReadyState;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFMediaEngine self) IsSeeking;
				public new function [CallingConvention(.Stdcall)] double(ref IMFMediaEngine self) GetCurrentTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, double seekTime) SetCurrentTime;
				public new function [CallingConvention(.Stdcall)] double(ref IMFMediaEngine self) GetStartTime;
				public new function [CallingConvention(.Stdcall)] double(ref IMFMediaEngine self) GetDuration;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFMediaEngine self) IsPaused;
				public new function [CallingConvention(.Stdcall)] double(ref IMFMediaEngine self) GetDefaultPlaybackRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, double Rate) SetDefaultPlaybackRate;
				public new function [CallingConvention(.Stdcall)] double(ref IMFMediaEngine self) GetPlaybackRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, double Rate) SetPlaybackRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, out IMFMediaTimeRange* ppPlayed) GetPlayed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, out IMFMediaTimeRange* ppSeekable) GetSeekable;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFMediaEngine self) IsEnded;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFMediaEngine self) GetAutoPlay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, BOOL AutoPlay) SetAutoPlay;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFMediaEngine self) GetLoop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, BOOL Loop) SetLoop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self) Play;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self) Pause;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFMediaEngine self) GetMuted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, BOOL Muted) SetMuted;
				public new function [CallingConvention(.Stdcall)] double(ref IMFMediaEngine self) GetVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, double Volume) SetVolume;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFMediaEngine self) HasVideo;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFMediaEngine self) HasAudio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, uint32* cx, uint32* cy) GetNativeVideoSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, uint32* cx, uint32* cy) GetVideoAspectRatio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self) Shutdown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, ref IUnknown pDstSurf, MFVideoNormalizedRect* pSrc, in RECT pDst, MFARGB* pBorderClr) TransferVideoFrame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngine self, out int64 pPts) OnVideoStreamTick;
			}
		}
		[CRepr]
		public struct IMFMediaEngineEx : IMFMediaEngine
		{
			public const new Guid IID = .(0x83015ead, 0xb1e6, 0x40d0, 0xa9, 0x8a, 0x37, 0x14, 0x5f, 0xfe, 0x1a, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSourceFromByteStream(ref IMFByteStream pByteStream, BSTR pURL) mut => VT.SetSourceFromByteStream(ref this, ref pByteStream, pURL);
			public HRESULT GetStatistics(MF_MEDIA_ENGINE_STATISTIC StatisticID, out PROPVARIANT pStatistic) mut => VT.GetStatistics(ref this, StatisticID, out pStatistic);
			public HRESULT UpdateVideoStream(MFVideoNormalizedRect* pSrc, RECT* pDst, MFARGB* pBorderClr) mut => VT.UpdateVideoStream(ref this, pSrc, pDst, pBorderClr);
			public double GetBalance() mut => VT.GetBalance(ref this);
			public HRESULT SetBalance(double balance) mut => VT.SetBalance(ref this, balance);
			public BOOL IsPlaybackRateSupported(double rate) mut => VT.IsPlaybackRateSupported(ref this, rate);
			public HRESULT FrameStep(BOOL Forward) mut => VT.FrameStep(ref this, Forward);
			public HRESULT GetResourceCharacteristics(out uint32 pCharacteristics) mut => VT.GetResourceCharacteristics(ref this, out pCharacteristics);
			public HRESULT GetPresentationAttribute(in Guid guidMFAttribute, out PROPVARIANT pvValue) mut => VT.GetPresentationAttribute(ref this, guidMFAttribute, out pvValue);
			public HRESULT GetNumberOfStreams(out uint32 pdwStreamCount) mut => VT.GetNumberOfStreams(ref this, out pdwStreamCount);
			public HRESULT GetStreamAttribute(uint32 dwStreamIndex, in Guid guidMFAttribute, out PROPVARIANT pvValue) mut => VT.GetStreamAttribute(ref this, dwStreamIndex, guidMFAttribute, out pvValue);
			public HRESULT GetStreamSelection(uint32 dwStreamIndex, out BOOL pEnabled) mut => VT.GetStreamSelection(ref this, dwStreamIndex, out pEnabled);
			public HRESULT SetStreamSelection(uint32 dwStreamIndex, BOOL Enabled) mut => VT.SetStreamSelection(ref this, dwStreamIndex, Enabled);
			public HRESULT ApplyStreamSelections() mut => VT.ApplyStreamSelections(ref this);
			public HRESULT IsProtected(out BOOL pProtected) mut => VT.IsProtected(ref this, out pProtected);
			public HRESULT InsertVideoEffect(ref IUnknown pEffect, BOOL fOptional) mut => VT.InsertVideoEffect(ref this, ref pEffect, fOptional);
			public HRESULT InsertAudioEffect(ref IUnknown pEffect, BOOL fOptional) mut => VT.InsertAudioEffect(ref this, ref pEffect, fOptional);
			public HRESULT RemoveAllEffects() mut => VT.RemoveAllEffects(ref this);
			public HRESULT SetTimelineMarkerTimer(double timeToFire) mut => VT.SetTimelineMarkerTimer(ref this, timeToFire);
			public HRESULT GetTimelineMarkerTimer(out double pTimeToFire) mut => VT.GetTimelineMarkerTimer(ref this, out pTimeToFire);
			public HRESULT CancelTimelineMarkerTimer() mut => VT.CancelTimelineMarkerTimer(ref this);
			public BOOL IsStereo3D() mut => VT.IsStereo3D(ref this);
			public HRESULT GetStereo3DFramePackingMode(out MF_MEDIA_ENGINE_S3D_PACKING_MODE packMode) mut => VT.GetStereo3DFramePackingMode(ref this, out packMode);
			public HRESULT SetStereo3DFramePackingMode(MF_MEDIA_ENGINE_S3D_PACKING_MODE packMode) mut => VT.SetStereo3DFramePackingMode(ref this, packMode);
			public HRESULT GetStereo3DRenderMode(out MF3DVideoOutputType outputType) mut => VT.GetStereo3DRenderMode(ref this, out outputType);
			public HRESULT SetStereo3DRenderMode(MF3DVideoOutputType outputType) mut => VT.SetStereo3DRenderMode(ref this, outputType);
			public HRESULT EnableWindowlessSwapchainMode(BOOL fEnable) mut => VT.EnableWindowlessSwapchainMode(ref this, fEnable);
			public HRESULT GetVideoSwapchainHandle(out HANDLE phSwapchain) mut => VT.GetVideoSwapchainHandle(ref this, out phSwapchain);
			public HRESULT EnableHorizontalMirrorMode(BOOL fEnable) mut => VT.EnableHorizontalMirrorMode(ref this, fEnable);
			public HRESULT GetAudioStreamCategory(out uint32 pCategory) mut => VT.GetAudioStreamCategory(ref this, out pCategory);
			public HRESULT SetAudioStreamCategory(uint32 category) mut => VT.SetAudioStreamCategory(ref this, category);
			public HRESULT GetAudioEndpointRole(out uint32 pRole) mut => VT.GetAudioEndpointRole(ref this, out pRole);
			public HRESULT SetAudioEndpointRole(uint32 role) mut => VT.SetAudioEndpointRole(ref this, role);
			public HRESULT GetRealTimeMode(out BOOL pfEnabled) mut => VT.GetRealTimeMode(ref this, out pfEnabled);
			public HRESULT SetRealTimeMode(BOOL fEnable) mut => VT.SetRealTimeMode(ref this, fEnable);
			public HRESULT SetCurrentTimeEx(double seekTime, MF_MEDIA_ENGINE_SEEK_MODE seekMode) mut => VT.SetCurrentTimeEx(ref this, seekTime, seekMode);
			public HRESULT EnableTimeUpdateTimer(BOOL fEnableTimer) mut => VT.EnableTimeUpdateTimer(ref this, fEnableTimer);

			[CRepr]
			public struct VTable : IMFMediaEngine.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, ref IMFByteStream pByteStream, BSTR pURL) SetSourceFromByteStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, MF_MEDIA_ENGINE_STATISTIC StatisticID, out PROPVARIANT pStatistic) GetStatistics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, MFVideoNormalizedRect* pSrc, RECT* pDst, MFARGB* pBorderClr) UpdateVideoStream;
				public new function [CallingConvention(.Stdcall)] double(ref IMFMediaEngineEx self) GetBalance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, double balance) SetBalance;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFMediaEngineEx self, double rate) IsPlaybackRateSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, BOOL Forward) FrameStep;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, out uint32 pCharacteristics) GetResourceCharacteristics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, in Guid guidMFAttribute, out PROPVARIANT pvValue) GetPresentationAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, out uint32 pdwStreamCount) GetNumberOfStreams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, uint32 dwStreamIndex, in Guid guidMFAttribute, out PROPVARIANT pvValue) GetStreamAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, uint32 dwStreamIndex, out BOOL pEnabled) GetStreamSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, uint32 dwStreamIndex, BOOL Enabled) SetStreamSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self) ApplyStreamSelections;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, out BOOL pProtected) IsProtected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, ref IUnknown pEffect, BOOL fOptional) InsertVideoEffect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, ref IUnknown pEffect, BOOL fOptional) InsertAudioEffect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self) RemoveAllEffects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, double timeToFire) SetTimelineMarkerTimer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, out double pTimeToFire) GetTimelineMarkerTimer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self) CancelTimelineMarkerTimer;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFMediaEngineEx self) IsStereo3D;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, out MF_MEDIA_ENGINE_S3D_PACKING_MODE packMode) GetStereo3DFramePackingMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, MF_MEDIA_ENGINE_S3D_PACKING_MODE packMode) SetStereo3DFramePackingMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, out MF3DVideoOutputType outputType) GetStereo3DRenderMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, MF3DVideoOutputType outputType) SetStereo3DRenderMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, BOOL fEnable) EnableWindowlessSwapchainMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, out HANDLE phSwapchain) GetVideoSwapchainHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, BOOL fEnable) EnableHorizontalMirrorMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, out uint32 pCategory) GetAudioStreamCategory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, uint32 category) SetAudioStreamCategory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, out uint32 pRole) GetAudioEndpointRole;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, uint32 role) SetAudioEndpointRole;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, out BOOL pfEnabled) GetRealTimeMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, BOOL fEnable) SetRealTimeMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, double seekTime, MF_MEDIA_ENGINE_SEEK_MODE seekMode) SetCurrentTimeEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEx self, BOOL fEnableTimer) EnableTimeUpdateTimer;
			}
		}
		[CRepr]
		public struct IMFMediaEngineAudioEndpointId : IUnknown
		{
			public const new Guid IID = .(0x7a3bac98, 0x0e76, 0x49fb, 0x8c, 0x20, 0x8a, 0x86, 0xfd, 0x98, 0xea, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAudioEndpointId(PWSTR pszEndpointId) mut => VT.SetAudioEndpointId(ref this, pszEndpointId);
			public HRESULT GetAudioEndpointId(out PWSTR ppszEndpointId) mut => VT.GetAudioEndpointId(ref this, out ppszEndpointId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineAudioEndpointId self, PWSTR pszEndpointId) SetAudioEndpointId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineAudioEndpointId self, out PWSTR ppszEndpointId) GetAudioEndpointId;
			}
		}
		[CRepr]
		public struct IMFMediaEngineExtension : IUnknown
		{
			public const new Guid IID = .(0x2f69d622, 0x20b5, 0x41e9, 0xaf, 0xdf, 0x89, 0xce, 0xd1, 0xdd, 0xa0, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CanPlayType(BOOL AudioOnly, BSTR MimeType, out MF_MEDIA_ENGINE_CANPLAY pAnswer) mut => VT.CanPlayType(ref this, AudioOnly, MimeType, out pAnswer);
			public HRESULT BeginCreateObject(BSTR bstrURL, IMFByteStream* pByteStream, MF_OBJECT_TYPE type, out IUnknown* ppIUnknownCancelCookie, ref IMFAsyncCallback pCallback, IUnknown* punkState) mut => VT.BeginCreateObject(ref this, bstrURL, pByteStream, type, out ppIUnknownCancelCookie, ref pCallback, punkState);
			public HRESULT CancelObjectCreation(ref IUnknown pIUnknownCancelCookie) mut => VT.CancelObjectCreation(ref this, ref pIUnknownCancelCookie);
			public HRESULT EndCreateObject(ref IMFAsyncResult pResult, out IUnknown* ppObject) mut => VT.EndCreateObject(ref this, ref pResult, out ppObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineExtension self, BOOL AudioOnly, BSTR MimeType, out MF_MEDIA_ENGINE_CANPLAY pAnswer) CanPlayType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineExtension self, BSTR bstrURL, IMFByteStream* pByteStream, MF_OBJECT_TYPE type, out IUnknown* ppIUnknownCancelCookie, ref IMFAsyncCallback pCallback, IUnknown* punkState) BeginCreateObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineExtension self, ref IUnknown pIUnknownCancelCookie) CancelObjectCreation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineExtension self, ref IMFAsyncResult pResult, out IUnknown* ppObject) EndCreateObject;
			}
		}
		[CRepr]
		public struct IMFMediaEngineProtectedContent : IUnknown
		{
			public const new Guid IID = .(0x9f8021e8, 0x9c8c, 0x487e, 0xbb, 0x5c, 0x79, 0xaa, 0x47, 0x79, 0x93, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShareResources(ref IUnknown pUnkDeviceContext) mut => VT.ShareResources(ref this, ref pUnkDeviceContext);
			public HRESULT GetRequiredProtections(out uint32 pFrameProtectionFlags) mut => VT.GetRequiredProtections(ref this, out pFrameProtectionFlags);
			public HRESULT SetOPMWindow(HWND hwnd) mut => VT.SetOPMWindow(ref this, hwnd);
			public HRESULT TransferVideoFrame(ref IUnknown pDstSurf, MFVideoNormalizedRect* pSrc, in RECT pDst, MFARGB* pBorderClr, out uint32 pFrameProtectionFlags) mut => VT.TransferVideoFrame(ref this, ref pDstSurf, pSrc, pDst, pBorderClr, out pFrameProtectionFlags);
			public HRESULT SetContentProtectionManager(IMFContentProtectionManager* pCPM) mut => VT.SetContentProtectionManager(ref this, pCPM);
			public HRESULT SetApplicationCertificate(in uint8 pbBlob, uint32 cbBlob) mut => VT.SetApplicationCertificate(ref this, pbBlob, cbBlob);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineProtectedContent self, ref IUnknown pUnkDeviceContext) ShareResources;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineProtectedContent self, out uint32 pFrameProtectionFlags) GetRequiredProtections;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineProtectedContent self, HWND hwnd) SetOPMWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineProtectedContent self, ref IUnknown pDstSurf, MFVideoNormalizedRect* pSrc, in RECT pDst, MFARGB* pBorderClr, out uint32 pFrameProtectionFlags) TransferVideoFrame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineProtectedContent self, IMFContentProtectionManager* pCPM) SetContentProtectionManager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineProtectedContent self, in uint8 pbBlob, uint32 cbBlob) SetApplicationCertificate;
			}
		}
		[CRepr]
		public struct IAudioSourceProvider : IUnknown
		{
			public const new Guid IID = .(0xebbaf249, 0xafc2, 0x4582, 0x91, 0xc6, 0xb6, 0x0d, 0xf2, 0xe8, 0x49, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ProvideInput(uint32 dwSampleCount, out uint32 pdwChannelCount, float* pInterleavedAudioData) mut => VT.ProvideInput(ref this, dwSampleCount, out pdwChannelCount, pInterleavedAudioData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSourceProvider self, uint32 dwSampleCount, out uint32 pdwChannelCount, float* pInterleavedAudioData) ProvideInput;
			}
		}
		[CRepr]
		public struct IMFMediaEngineWebSupport : IUnknown
		{
			public const new Guid IID = .(0xba2743a1, 0x07e0, 0x48ef, 0x84, 0xb6, 0x9a, 0x2e, 0xd0, 0x23, 0xca, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public BOOL ShouldDelayTheLoadEvent() mut => VT.ShouldDelayTheLoadEvent(ref this);
			public HRESULT ConnectWebAudio(uint32 dwSampleRate, out IAudioSourceProvider* ppSourceProvider) mut => VT.ConnectWebAudio(ref this, dwSampleRate, out ppSourceProvider);
			public HRESULT DisconnectWebAudio() mut => VT.DisconnectWebAudio(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFMediaEngineWebSupport self) ShouldDelayTheLoadEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineWebSupport self, uint32 dwSampleRate, out IAudioSourceProvider* ppSourceProvider) ConnectWebAudio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineWebSupport self) DisconnectWebAudio;
			}
		}
		[CRepr]
		public struct IMFMediaSourceExtensionNotify : IUnknown
		{
			public const new Guid IID = .(0xa7901327, 0x05dd, 0x4469, 0xa7, 0xb7, 0x0e, 0x01, 0x97, 0x9e, 0x36, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnSourceOpen() mut => VT.OnSourceOpen(ref this);
			public void OnSourceEnded() mut => VT.OnSourceEnded(ref this);
			public void OnSourceClose() mut => VT.OnSourceClose(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IMFMediaSourceExtensionNotify self) OnSourceOpen;
				public new function [CallingConvention(.Stdcall)] void(ref IMFMediaSourceExtensionNotify self) OnSourceEnded;
				public new function [CallingConvention(.Stdcall)] void(ref IMFMediaSourceExtensionNotify self) OnSourceClose;
			}
		}
		[CRepr]
		public struct IMFBufferListNotify : IUnknown
		{
			public const new Guid IID = .(0x24cd47f7, 0x81d8, 0x4785, 0xad, 0xb2, 0xaf, 0x69, 0x7a, 0x96, 0x3c, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnAddSourceBuffer() mut => VT.OnAddSourceBuffer(ref this);
			public void OnRemoveSourceBuffer() mut => VT.OnRemoveSourceBuffer(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IMFBufferListNotify self) OnAddSourceBuffer;
				public new function [CallingConvention(.Stdcall)] void(ref IMFBufferListNotify self) OnRemoveSourceBuffer;
			}
		}
		[CRepr]
		public struct IMFSourceBufferNotify : IUnknown
		{
			public const new Guid IID = .(0x87e47623, 0x2ceb, 0x45d6, 0x9b, 0x88, 0xd8, 0x52, 0x0c, 0x4d, 0xcb, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnUpdateStart() mut => VT.OnUpdateStart(ref this);
			public void OnAbort() mut => VT.OnAbort(ref this);
			public void OnError(HRESULT hr) mut => VT.OnError(ref this, hr);
			public void OnUpdate() mut => VT.OnUpdate(ref this);
			public void OnUpdateEnd() mut => VT.OnUpdateEnd(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IMFSourceBufferNotify self) OnUpdateStart;
				public new function [CallingConvention(.Stdcall)] void(ref IMFSourceBufferNotify self) OnAbort;
				public new function [CallingConvention(.Stdcall)] void(ref IMFSourceBufferNotify self, HRESULT hr) OnError;
				public new function [CallingConvention(.Stdcall)] void(ref IMFSourceBufferNotify self) OnUpdate;
				public new function [CallingConvention(.Stdcall)] void(ref IMFSourceBufferNotify self) OnUpdateEnd;
			}
		}
		[CRepr]
		public struct IMFSourceBuffer : IUnknown
		{
			public const new Guid IID = .(0xe2cd3a4b, 0xaf25, 0x4d3d, 0x91, 0x10, 0xda, 0x0e, 0x6f, 0x8e, 0xe8, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public BOOL GetUpdating() mut => VT.GetUpdating(ref this);
			public HRESULT GetBuffered(out IMFMediaTimeRange* ppBuffered) mut => VT.GetBuffered(ref this, out ppBuffered);
			public double GetTimeStampOffset() mut => VT.GetTimeStampOffset(ref this);
			public HRESULT SetTimeStampOffset(double offset) mut => VT.SetTimeStampOffset(ref this, offset);
			public double GetAppendWindowStart() mut => VT.GetAppendWindowStart(ref this);
			public HRESULT SetAppendWindowStart(double time) mut => VT.SetAppendWindowStart(ref this, time);
			public double GetAppendWindowEnd() mut => VT.GetAppendWindowEnd(ref this);
			public HRESULT SetAppendWindowEnd(double time) mut => VT.SetAppendWindowEnd(ref this, time);
			public HRESULT Append(in uint8 pData, uint32 len) mut => VT.Append(ref this, pData, len);
			public HRESULT AppendByteStream(ref IMFByteStream pStream, uint64* pMaxLen) mut => VT.AppendByteStream(ref this, ref pStream, pMaxLen);
			public HRESULT Abort() mut => VT.Abort(ref this);
			public HRESULT Remove(double start, double end) mut => VT.Remove(ref this, start, end);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFSourceBuffer self) GetUpdating;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceBuffer self, out IMFMediaTimeRange* ppBuffered) GetBuffered;
				public new function [CallingConvention(.Stdcall)] double(ref IMFSourceBuffer self) GetTimeStampOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceBuffer self, double offset) SetTimeStampOffset;
				public new function [CallingConvention(.Stdcall)] double(ref IMFSourceBuffer self) GetAppendWindowStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceBuffer self, double time) SetAppendWindowStart;
				public new function [CallingConvention(.Stdcall)] double(ref IMFSourceBuffer self) GetAppendWindowEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceBuffer self, double time) SetAppendWindowEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceBuffer self, in uint8 pData, uint32 len) Append;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceBuffer self, ref IMFByteStream pStream, uint64* pMaxLen) AppendByteStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceBuffer self) Abort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceBuffer self, double start, double end) Remove;
			}
		}
		[CRepr]
		public struct IMFSourceBufferAppendMode : IUnknown
		{
			public const new Guid IID = .(0x19666fb4, 0xbabe, 0x4c55, 0xbc, 0x03, 0x0a, 0x07, 0x4d, 0xa3, 0x7e, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public MF_MSE_APPEND_MODE GetAppendMode() mut => VT.GetAppendMode(ref this);
			public HRESULT SetAppendMode(MF_MSE_APPEND_MODE mode) mut => VT.SetAppendMode(ref this, mode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] MF_MSE_APPEND_MODE(ref IMFSourceBufferAppendMode self) GetAppendMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceBufferAppendMode self, MF_MSE_APPEND_MODE mode) SetAppendMode;
			}
		}
		[CRepr]
		public struct IMFSourceBufferList : IUnknown
		{
			public const new Guid IID = .(0x249981f8, 0x8325, 0x41f3, 0xb8, 0x0c, 0x3b, 0x9e, 0x3a, 0xad, 0x0c, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetLength() mut => VT.GetLength(ref this);
			public IMFSourceBuffer* GetSourceBuffer(uint32 index) mut => VT.GetSourceBuffer(ref this, index);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IMFSourceBufferList self) GetLength;
				public new function [CallingConvention(.Stdcall)] IMFSourceBuffer*(ref IMFSourceBufferList self, uint32 index) GetSourceBuffer;
			}
		}
		[CRepr]
		public struct IMFMediaSourceExtension : IUnknown
		{
			public const new Guid IID = .(0xe467b94e, 0xa713, 0x4562, 0xa8, 0x02, 0x81, 0x6a, 0x42, 0xe9, 0x00, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public IMFSourceBufferList* GetSourceBuffers() mut => VT.GetSourceBuffers(ref this);
			public IMFSourceBufferList* GetActiveSourceBuffers() mut => VT.GetActiveSourceBuffers(ref this);
			public MF_MSE_READY GetReadyState() mut => VT.GetReadyState(ref this);
			public double GetDuration() mut => VT.GetDuration(ref this);
			public HRESULT SetDuration(double duration) mut => VT.SetDuration(ref this, duration);
			public HRESULT AddSourceBuffer(BSTR type, ref IMFSourceBufferNotify pNotify, out IMFSourceBuffer* ppSourceBuffer) mut => VT.AddSourceBuffer(ref this, type, ref pNotify, out ppSourceBuffer);
			public HRESULT RemoveSourceBuffer(ref IMFSourceBuffer pSourceBuffer) mut => VT.RemoveSourceBuffer(ref this, ref pSourceBuffer);
			public HRESULT SetEndOfStream(MF_MSE_ERROR error) mut => VT.SetEndOfStream(ref this, error);
			public BOOL IsTypeSupported(BSTR type) mut => VT.IsTypeSupported(ref this, type);
			public IMFSourceBuffer* GetSourceBuffer(uint32 dwStreamIndex) mut => VT.GetSourceBuffer(ref this, dwStreamIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] IMFSourceBufferList*(ref IMFMediaSourceExtension self) GetSourceBuffers;
				public new function [CallingConvention(.Stdcall)] IMFSourceBufferList*(ref IMFMediaSourceExtension self) GetActiveSourceBuffers;
				public new function [CallingConvention(.Stdcall)] MF_MSE_READY(ref IMFMediaSourceExtension self) GetReadyState;
				public new function [CallingConvention(.Stdcall)] double(ref IMFMediaSourceExtension self) GetDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSourceExtension self, double duration) SetDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSourceExtension self, BSTR type, ref IMFSourceBufferNotify pNotify, out IMFSourceBuffer* ppSourceBuffer) AddSourceBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSourceExtension self, ref IMFSourceBuffer pSourceBuffer) RemoveSourceBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSourceExtension self, MF_MSE_ERROR error) SetEndOfStream;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFMediaSourceExtension self, BSTR type) IsTypeSupported;
				public new function [CallingConvention(.Stdcall)] IMFSourceBuffer*(ref IMFMediaSourceExtension self, uint32 dwStreamIndex) GetSourceBuffer;
			}
		}
		[CRepr]
		public struct IMFMediaSourceExtensionLiveSeekableRange : IUnknown
		{
			public const new Guid IID = .(0x5d1abfd6, 0x450a, 0x4d92, 0x9e, 0xfc, 0xd6, 0xb6, 0xcb, 0xc1, 0xf4, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetLiveSeekableRange(double start, double end) mut => VT.SetLiveSeekableRange(ref this, start, end);
			public HRESULT ClearLiveSeekableRange() mut => VT.ClearLiveSeekableRange(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSourceExtensionLiveSeekableRange self, double start, double end) SetLiveSeekableRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSourceExtensionLiveSeekableRange self) ClearLiveSeekableRange;
			}
		}
		[CRepr]
		public struct IMFMediaEngineEME : IUnknown
		{
			public const new Guid IID = .(0x50dc93e4, 0xba4f, 0x4275, 0xae, 0x66, 0x83, 0xe8, 0x36, 0xe5, 0x74, 0x69);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Keys(IMFMediaKeys** keys) mut => VT.get_Keys(ref this, keys);
			public HRESULT SetMediaKeys(IMFMediaKeys* keys) mut => VT.SetMediaKeys(ref this, keys);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEME self, IMFMediaKeys** keys) get_Keys;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineEME self, IMFMediaKeys* keys) SetMediaKeys;
			}
		}
		[CRepr]
		public struct IMFMediaEngineSrcElementsEx : IMFMediaEngineSrcElements
		{
			public const new Guid IID = .(0x654a6bb3, 0xe1a3, 0x424a, 0x99, 0x08, 0x53, 0xa4, 0x3a, 0x0d, 0xfd, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddElementEx(BSTR pURL, BSTR pType, BSTR pMedia, BSTR keySystem) mut => VT.AddElementEx(ref this, pURL, pType, pMedia, keySystem);
			public HRESULT GetKeySystem(uint32 index, BSTR* pType) mut => VT.GetKeySystem(ref this, index, pType);

			[CRepr]
			public struct VTable : IMFMediaEngineSrcElements.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineSrcElementsEx self, BSTR pURL, BSTR pType, BSTR pMedia, BSTR keySystem) AddElementEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineSrcElementsEx self, uint32 index, BSTR* pType) GetKeySystem;
			}
		}
		[CRepr]
		public struct IMFMediaEngineNeedKeyNotify : IUnknown
		{
			public const new Guid IID = .(0x46a30204, 0xa696, 0x4b18, 0x88, 0x04, 0x24, 0x6b, 0x8f, 0x03, 0x1b, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public void NeedKey(uint8* initData, uint32 cb) mut => VT.NeedKey(ref this, initData, cb);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IMFMediaEngineNeedKeyNotify self, uint8* initData, uint32 cb) NeedKey;
			}
		}
		[CRepr]
		public struct IMFMediaKeys : IUnknown
		{
			public const new Guid IID = .(0x5cb31c05, 0x61ff, 0x418f, 0xaf, 0xda, 0xca, 0xaf, 0x41, 0x42, 0x1a, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSession(BSTR mimeType, uint8* initData, uint32 cb, uint8* customData, uint32 cbCustomData, ref IMFMediaKeySessionNotify notify, out IMFMediaKeySession* ppSession) mut => VT.CreateSession(ref this, mimeType, initData, cb, customData, cbCustomData, ref notify, out ppSession);
			public HRESULT get_KeySystem(out BSTR keySystem) mut => VT.get_KeySystem(ref this, out keySystem);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);
			public HRESULT GetSuspendNotify(out IMFCdmSuspendNotify* notify) mut => VT.GetSuspendNotify(ref this, out notify);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeys self, BSTR mimeType, uint8* initData, uint32 cb, uint8* customData, uint32 cbCustomData, ref IMFMediaKeySessionNotify notify, out IMFMediaKeySession* ppSession) CreateSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeys self, out BSTR keySystem) get_KeySystem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeys self) Shutdown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeys self, out IMFCdmSuspendNotify* notify) GetSuspendNotify;
			}
		}
		[CRepr]
		public struct IMFMediaKeySession : IUnknown
		{
			public const new Guid IID = .(0x24fa67d5, 0xd1d0, 0x4dc5, 0x99, 0x5c, 0xc0, 0xef, 0xdc, 0x19, 0x1f, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetError(out uint16 code, out uint32 systemCode) mut => VT.GetError(ref this, out code, out systemCode);
			public HRESULT get_KeySystem(out BSTR keySystem) mut => VT.get_KeySystem(ref this, out keySystem);
			public HRESULT get_SessionId(out BSTR sessionId) mut => VT.get_SessionId(ref this, out sessionId);
			public HRESULT Update(in uint8 key, uint32 cb) mut => VT.Update(ref this, key, cb);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySession self, out uint16 code, out uint32 systemCode) GetError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySession self, out BSTR keySystem) get_KeySystem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySession self, out BSTR sessionId) get_SessionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySession self, in uint8 key, uint32 cb) Update;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySession self) Close;
			}
		}
		[CRepr]
		public struct IMFMediaKeySessionNotify : IUnknown
		{
			public const new Guid IID = .(0x6a0083f9, 0x8947, 0x4c1d, 0x9c, 0xe0, 0xcd, 0xee, 0x22, 0xb2, 0x31, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public void KeyMessage(BSTR destinationURL, in uint8 message, uint32 cb) mut => VT.KeyMessage(ref this, destinationURL, message, cb);
			public void KeyAdded() mut => VT.KeyAdded(ref this);
			public void KeyError(uint16 code, uint32 systemCode) mut => VT.KeyError(ref this, code, systemCode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IMFMediaKeySessionNotify self, BSTR destinationURL, in uint8 message, uint32 cb) KeyMessage;
				public new function [CallingConvention(.Stdcall)] void(ref IMFMediaKeySessionNotify self) KeyAdded;
				public new function [CallingConvention(.Stdcall)] void(ref IMFMediaKeySessionNotify self, uint16 code, uint32 systemCode) KeyError;
			}
		}
		[CRepr]
		public struct IMFCdmSuspendNotify : IUnknown
		{
			public const new Guid IID = .(0x7a5645d2, 0x43bd, 0x47fd, 0x87, 0xb7, 0xdc, 0xd2, 0x4c, 0xc7, 0xd6, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin() mut => VT.Begin(ref this);
			public HRESULT End() mut => VT.End(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCdmSuspendNotify self) Begin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCdmSuspendNotify self) End;
			}
		}
		[CRepr]
		public struct IMFHDCPStatus : IUnknown
		{
			public const new Guid IID = .(0xde400f54, 0x5bf1, 0x40cf, 0x89, 0x64, 0x0b, 0xea, 0x13, 0x6b, 0x1e, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Query(out MF_HDCP_STATUS pStatus, out BOOL pfStatus) mut => VT.Query(ref this, out pStatus, out pfStatus);
			public HRESULT Set(MF_HDCP_STATUS status) mut => VT.Set(ref this, status);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHDCPStatus self, out MF_HDCP_STATUS pStatus, out BOOL pfStatus) Query;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFHDCPStatus self, MF_HDCP_STATUS status) Set;
			}
		}
		[CRepr]
		public struct IMFMediaEngineOPMInfo : IUnknown
		{
			public const new Guid IID = .(0x765763e6, 0x6c01, 0x4b01, 0xbb, 0x0f, 0xb8, 0x29, 0xf6, 0x0e, 0xd2, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOPMInfo(out MF_MEDIA_ENGINE_OPM_STATUS pStatus, out BOOL pConstricted) mut => VT.GetOPMInfo(ref this, out pStatus, out pConstricted);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineOPMInfo self, out MF_MEDIA_ENGINE_OPM_STATUS pStatus, out BOOL pConstricted) GetOPMInfo;
			}
		}
		[CRepr]
		public struct IMFMediaEngineClassFactory : IUnknown
		{
			public const new Guid IID = .(0x4d645ace, 0x26aa, 0x4688, 0x9b, 0xe1, 0xdf, 0x35, 0x16, 0x99, 0x0b, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstance(uint32 dwFlags, ref IMFAttributes pAttr, out IMFMediaEngine* ppPlayer) mut => VT.CreateInstance(ref this, dwFlags, ref pAttr, out ppPlayer);
			public HRESULT CreateTimeRange(out IMFMediaTimeRange* ppTimeRange) mut => VT.CreateTimeRange(ref this, out ppTimeRange);
			public HRESULT CreateError(out IMFMediaError* ppError) mut => VT.CreateError(ref this, out ppError);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineClassFactory self, uint32 dwFlags, ref IMFAttributes pAttr, out IMFMediaEngine* ppPlayer) CreateInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineClassFactory self, out IMFMediaTimeRange* ppTimeRange) CreateTimeRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineClassFactory self, out IMFMediaError* ppError) CreateError;
			}
		}
		[CRepr]
		public struct IMFMediaEngineClassFactoryEx : IMFMediaEngineClassFactory
		{
			public const new Guid IID = .(0xc56156c6, 0xea5b, 0x48a5, 0x9d, 0xf8, 0xfb, 0xe0, 0x35, 0xd0, 0x92, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateMediaSourceExtension(uint32 dwFlags, ref IMFAttributes pAttr, out IMFMediaSourceExtension* ppMSE) mut => VT.CreateMediaSourceExtension(ref this, dwFlags, ref pAttr, out ppMSE);
			public HRESULT CreateMediaKeys(BSTR keySystem, BSTR cdmStorePath, out IMFMediaKeys* ppKeys) mut => VT.CreateMediaKeys(ref this, keySystem, cdmStorePath, out ppKeys);
			public HRESULT IsTypeSupported(BSTR type, BSTR keySystem, out BOOL isSupported) mut => VT.IsTypeSupported(ref this, type, keySystem, out isSupported);

			[CRepr]
			public struct VTable : IMFMediaEngineClassFactory.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineClassFactoryEx self, uint32 dwFlags, ref IMFAttributes pAttr, out IMFMediaSourceExtension* ppMSE) CreateMediaSourceExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineClassFactoryEx self, BSTR keySystem, BSTR cdmStorePath, out IMFMediaKeys* ppKeys) CreateMediaKeys;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineClassFactoryEx self, BSTR type, BSTR keySystem, out BOOL isSupported) IsTypeSupported;
			}
		}
		[CRepr]
		public struct IMFMediaEngineClassFactory2 : IUnknown
		{
			public const new Guid IID = .(0x09083cef, 0x867f, 0x4bf6, 0x87, 0x76, 0xde, 0xe3, 0xa7, 0xb4, 0x2f, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateMediaKeys2(BSTR keySystem, BSTR defaultCdmStorePath, BSTR inprivateCdmStorePath, out IMFMediaKeys* ppKeys) mut => VT.CreateMediaKeys2(ref this, keySystem, defaultCdmStorePath, inprivateCdmStorePath, out ppKeys);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineClassFactory2 self, BSTR keySystem, BSTR defaultCdmStorePath, BSTR inprivateCdmStorePath, out IMFMediaKeys* ppKeys) CreateMediaKeys2;
			}
		}
		[CRepr]
		public struct IMFExtendedDRMTypeSupport : IUnknown
		{
			public const new Guid IID = .(0x332ec562, 0x3758, 0x468d, 0xa7, 0x84, 0xe3, 0x8f, 0x23, 0x55, 0x21, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsTypeSupportedEx(BSTR type, BSTR keySystem, out MF_MEDIA_ENGINE_CANPLAY pAnswer) mut => VT.IsTypeSupportedEx(ref this, type, keySystem, out pAnswer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFExtendedDRMTypeSupport self, BSTR type, BSTR keySystem, out MF_MEDIA_ENGINE_CANPLAY pAnswer) IsTypeSupportedEx;
			}
		}
		[CRepr]
		public struct IMFMediaEngineSupportsSourceTransfer : IUnknown
		{
			public const new Guid IID = .(0xa724b056, 0x1b2e, 0x4642, 0xa6, 0xf3, 0xdb, 0x94, 0x20, 0xc5, 0x29, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShouldTransferSource(out BOOL pfShouldTransfer) mut => VT.ShouldTransferSource(ref this, out pfShouldTransfer);
			public HRESULT DetachMediaSource(out IMFByteStream* ppByteStream, out IMFMediaSource* ppMediaSource, out IMFMediaSourceExtension* ppMSE) mut => VT.DetachMediaSource(ref this, out ppByteStream, out ppMediaSource, out ppMSE);
			public HRESULT AttachMediaSource(IMFByteStream* pByteStream, ref IMFMediaSource pMediaSource, IMFMediaSourceExtension* pMSE) mut => VT.AttachMediaSource(ref this, pByteStream, ref pMediaSource, pMSE);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineSupportsSourceTransfer self, out BOOL pfShouldTransfer) ShouldTransferSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineSupportsSourceTransfer self, out IMFByteStream* ppByteStream, out IMFMediaSource* ppMediaSource, out IMFMediaSourceExtension* ppMSE) DetachMediaSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineSupportsSourceTransfer self, IMFByteStream* pByteStream, ref IMFMediaSource pMediaSource, IMFMediaSourceExtension* pMSE) AttachMediaSource;
			}
		}
		[CRepr]
		public struct IMFMediaEngineTransferSource : IUnknown
		{
			public const new Guid IID = .(0x24230452, 0xfe54, 0x40cc, 0x94, 0xf3, 0xfc, 0xc3, 0x94, 0xc3, 0x40, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TransferSourceToMediaEngine(ref IMFMediaEngine destination) mut => VT.TransferSourceToMediaEngine(ref this, ref destination);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineTransferSource self, ref IMFMediaEngine destination) TransferSourceToMediaEngine;
			}
		}
		[CRepr]
		public struct IMFTimedText : IUnknown
		{
			public const new Guid IID = .(0x1f2a94c9, 0xa3df, 0x430d, 0x9d, 0x0f, 0xac, 0xd8, 0x5d, 0xdc, 0x29, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterNotifications(IMFTimedTextNotify* notify) mut => VT.RegisterNotifications(ref this, notify);
			public HRESULT SelectTrack(uint32 trackId, BOOL selected) mut => VT.SelectTrack(ref this, trackId, selected);
			public HRESULT AddDataSource(ref IMFByteStream byteStream, PWSTR label, PWSTR language, MF_TIMED_TEXT_TRACK_KIND kind, BOOL isDefault, out uint32 trackId) mut => VT.AddDataSource(ref this, ref byteStream, label, language, kind, isDefault, out trackId);
			public HRESULT AddDataSourceFromUrl(PWSTR url, PWSTR label, PWSTR language, MF_TIMED_TEXT_TRACK_KIND kind, BOOL isDefault, out uint32 trackId) mut => VT.AddDataSourceFromUrl(ref this, url, label, language, kind, isDefault, out trackId);
			public HRESULT AddTrack(PWSTR label, PWSTR language, MF_TIMED_TEXT_TRACK_KIND kind, out IMFTimedTextTrack* track) mut => VT.AddTrack(ref this, label, language, kind, out track);
			public HRESULT RemoveTrack(ref IMFTimedTextTrack track) mut => VT.RemoveTrack(ref this, ref track);
			public HRESULT GetCueTimeOffset(out double offset) mut => VT.GetCueTimeOffset(ref this, out offset);
			public HRESULT SetCueTimeOffset(double offset) mut => VT.SetCueTimeOffset(ref this, offset);
			public HRESULT GetTracks(out IMFTimedTextTrackList* tracks) mut => VT.GetTracks(ref this, out tracks);
			public HRESULT GetActiveTracks(out IMFTimedTextTrackList* activeTracks) mut => VT.GetActiveTracks(ref this, out activeTracks);
			public HRESULT GetTextTracks(out IMFTimedTextTrackList* textTracks) mut => VT.GetTextTracks(ref this, out textTracks);
			public HRESULT GetMetadataTracks(out IMFTimedTextTrackList* metadataTracks) mut => VT.GetMetadataTracks(ref this, out metadataTracks);
			public HRESULT SetInBandEnabled(BOOL enabled) mut => VT.SetInBandEnabled(ref this, enabled);
			public BOOL IsInBandEnabled() mut => VT.IsInBandEnabled(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedText self, IMFTimedTextNotify* notify) RegisterNotifications;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedText self, uint32 trackId, BOOL selected) SelectTrack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedText self, ref IMFByteStream byteStream, PWSTR label, PWSTR language, MF_TIMED_TEXT_TRACK_KIND kind, BOOL isDefault, out uint32 trackId) AddDataSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedText self, PWSTR url, PWSTR label, PWSTR language, MF_TIMED_TEXT_TRACK_KIND kind, BOOL isDefault, out uint32 trackId) AddDataSourceFromUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedText self, PWSTR label, PWSTR language, MF_TIMED_TEXT_TRACK_KIND kind, out IMFTimedTextTrack* track) AddTrack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedText self, ref IMFTimedTextTrack track) RemoveTrack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedText self, out double offset) GetCueTimeOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedText self, double offset) SetCueTimeOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedText self, out IMFTimedTextTrackList* tracks) GetTracks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedText self, out IMFTimedTextTrackList* activeTracks) GetActiveTracks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedText self, out IMFTimedTextTrackList* textTracks) GetTextTracks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedText self, out IMFTimedTextTrackList* metadataTracks) GetMetadataTracks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedText self, BOOL enabled) SetInBandEnabled;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFTimedText self) IsInBandEnabled;
			}
		}
		[CRepr]
		public struct IMFTimedTextNotify : IUnknown
		{
			public const new Guid IID = .(0xdf6b87b6, 0xce12, 0x45db, 0xab, 0xa7, 0x43, 0x2f, 0xe0, 0x54, 0xe5, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public void TrackAdded(uint32 trackId) mut => VT.TrackAdded(ref this, trackId);
			public void TrackRemoved(uint32 trackId) mut => VT.TrackRemoved(ref this, trackId);
			public void TrackSelected(uint32 trackId, BOOL selected) mut => VT.TrackSelected(ref this, trackId, selected);
			public void TrackReadyStateChanged(uint32 trackId) mut => VT.TrackReadyStateChanged(ref this, trackId);
			public void Error(MF_TIMED_TEXT_ERROR_CODE errorCode, HRESULT extendedErrorCode, uint32 sourceTrackId) mut => VT.Error(ref this, errorCode, extendedErrorCode, sourceTrackId);
			public void Cue(MF_TIMED_TEXT_CUE_EVENT cueEvent, double currentTime, IMFTimedTextCue* cue) mut => VT.Cue(ref this, cueEvent, currentTime, cue);
			public void Reset() mut => VT.Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IMFTimedTextNotify self, uint32 trackId) TrackAdded;
				public new function [CallingConvention(.Stdcall)] void(ref IMFTimedTextNotify self, uint32 trackId) TrackRemoved;
				public new function [CallingConvention(.Stdcall)] void(ref IMFTimedTextNotify self, uint32 trackId, BOOL selected) TrackSelected;
				public new function [CallingConvention(.Stdcall)] void(ref IMFTimedTextNotify self, uint32 trackId) TrackReadyStateChanged;
				public new function [CallingConvention(.Stdcall)] void(ref IMFTimedTextNotify self, MF_TIMED_TEXT_ERROR_CODE errorCode, HRESULT extendedErrorCode, uint32 sourceTrackId) Error;
				public new function [CallingConvention(.Stdcall)] void(ref IMFTimedTextNotify self, MF_TIMED_TEXT_CUE_EVENT cueEvent, double currentTime, IMFTimedTextCue* cue) Cue;
				public new function [CallingConvention(.Stdcall)] void(ref IMFTimedTextNotify self) Reset;
			}
		}
		[CRepr]
		public struct IMFTimedTextTrack : IUnknown
		{
			public const new Guid IID = .(0x8822c32d, 0x654e, 0x4233, 0xbf, 0x21, 0xd7, 0xf2, 0xe6, 0x7d, 0x30, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetId() mut => VT.GetId(ref this);
			public HRESULT GetLabel(out PWSTR label) mut => VT.GetLabel(ref this, out label);
			public HRESULT SetLabel(PWSTR label) mut => VT.SetLabel(ref this, label);
			public HRESULT GetLanguage(out PWSTR language) mut => VT.GetLanguage(ref this, out language);
			public MF_TIMED_TEXT_TRACK_KIND GetTrackKind() mut => VT.GetTrackKind(ref this);
			public BOOL IsInBand() mut => VT.IsInBand(ref this);
			public HRESULT GetInBandMetadataTrackDispatchType(out PWSTR dispatchType) mut => VT.GetInBandMetadataTrackDispatchType(ref this, out dispatchType);
			public BOOL IsActive() mut => VT.IsActive(ref this);
			public MF_TIMED_TEXT_ERROR_CODE GetErrorCode() mut => VT.GetErrorCode(ref this);
			public HRESULT GetExtendedErrorCode() mut => VT.GetExtendedErrorCode(ref this);
			public HRESULT GetDataFormat(out Guid format) mut => VT.GetDataFormat(ref this, out format);
			public MF_TIMED_TEXT_TRACK_READY_STATE GetReadyState() mut => VT.GetReadyState(ref this);
			public HRESULT GetCueList(out IMFTimedTextCueList* cues) mut => VT.GetCueList(ref this, out cues);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IMFTimedTextTrack self) GetId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextTrack self, out PWSTR label) GetLabel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextTrack self, PWSTR label) SetLabel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextTrack self, out PWSTR language) GetLanguage;
				public new function [CallingConvention(.Stdcall)] MF_TIMED_TEXT_TRACK_KIND(ref IMFTimedTextTrack self) GetTrackKind;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFTimedTextTrack self) IsInBand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextTrack self, out PWSTR dispatchType) GetInBandMetadataTrackDispatchType;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFTimedTextTrack self) IsActive;
				public new function [CallingConvention(.Stdcall)] MF_TIMED_TEXT_ERROR_CODE(ref IMFTimedTextTrack self) GetErrorCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextTrack self) GetExtendedErrorCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextTrack self, out Guid format) GetDataFormat;
				public new function [CallingConvention(.Stdcall)] MF_TIMED_TEXT_TRACK_READY_STATE(ref IMFTimedTextTrack self) GetReadyState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextTrack self, out IMFTimedTextCueList* cues) GetCueList;
			}
		}
		[CRepr]
		public struct IMFTimedTextTrackList : IUnknown
		{
			public const new Guid IID = .(0x23ff334c, 0x442c, 0x445f, 0xbc, 0xcc, 0xed, 0xc4, 0x38, 0xaa, 0x11, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetLength() mut => VT.GetLength(ref this);
			public HRESULT GetTrack(uint32 index, out IMFTimedTextTrack* track) mut => VT.GetTrack(ref this, index, out track);
			public HRESULT GetTrackById(uint32 trackId, out IMFTimedTextTrack* track) mut => VT.GetTrackById(ref this, trackId, out track);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IMFTimedTextTrackList self) GetLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextTrackList self, uint32 index, out IMFTimedTextTrack* track) GetTrack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextTrackList self, uint32 trackId, out IMFTimedTextTrack* track) GetTrackById;
			}
		}
		[CRepr]
		public struct IMFTimedTextCue : IUnknown
		{
			public const new Guid IID = .(0x1e560447, 0x9a2b, 0x43e1, 0xa9, 0x4c, 0xb0, 0xaa, 0xab, 0xfb, 0xfb, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetId() mut => VT.GetId(ref this);
			public HRESULT GetOriginalId(out PWSTR originalId) mut => VT.GetOriginalId(ref this, out originalId);
			public MF_TIMED_TEXT_TRACK_KIND GetCueKind() mut => VT.GetCueKind(ref this);
			public double GetStartTime() mut => VT.GetStartTime(ref this);
			public double GetDuration() mut => VT.GetDuration(ref this);
			public uint32 GetTrackId() mut => VT.GetTrackId(ref this);
			public HRESULT GetData(IMFTimedTextBinary** data) mut => VT.GetData(ref this, data);
			public HRESULT GetRegion(IMFTimedTextRegion** region) mut => VT.GetRegion(ref this, region);
			public HRESULT GetStyle(IMFTimedTextStyle** style) mut => VT.GetStyle(ref this, style);
			public uint32 GetLineCount() mut => VT.GetLineCount(ref this);
			public HRESULT GetLine(uint32 index, out IMFTimedTextFormattedText* line) mut => VT.GetLine(ref this, index, out line);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IMFTimedTextCue self) GetId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextCue self, out PWSTR originalId) GetOriginalId;
				public new function [CallingConvention(.Stdcall)] MF_TIMED_TEXT_TRACK_KIND(ref IMFTimedTextCue self) GetCueKind;
				public new function [CallingConvention(.Stdcall)] double(ref IMFTimedTextCue self) GetStartTime;
				public new function [CallingConvention(.Stdcall)] double(ref IMFTimedTextCue self) GetDuration;
				public new function [CallingConvention(.Stdcall)] uint32(ref IMFTimedTextCue self) GetTrackId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextCue self, IMFTimedTextBinary** data) GetData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextCue self, IMFTimedTextRegion** region) GetRegion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextCue self, IMFTimedTextStyle** style) GetStyle;
				public new function [CallingConvention(.Stdcall)] uint32(ref IMFTimedTextCue self) GetLineCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextCue self, uint32 index, out IMFTimedTextFormattedText* line) GetLine;
			}
		}
		[CRepr]
		public struct IMFTimedTextFormattedText : IUnknown
		{
			public const new Guid IID = .(0xe13af3c1, 0x4d47, 0x4354, 0xb1, 0xf5, 0xe8, 0x3a, 0xe0, 0xec, 0xae, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetText(PWSTR* text) mut => VT.GetText(ref this, text);
			public uint32 GetSubformattingCount() mut => VT.GetSubformattingCount(ref this);
			public HRESULT GetSubformatting(uint32 index, out uint32 firstChar, out uint32 charLength, IMFTimedTextStyle** style) mut => VT.GetSubformatting(ref this, index, out firstChar, out charLength, style);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextFormattedText self, PWSTR* text) GetText;
				public new function [CallingConvention(.Stdcall)] uint32(ref IMFTimedTextFormattedText self) GetSubformattingCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextFormattedText self, uint32 index, out uint32 firstChar, out uint32 charLength, IMFTimedTextStyle** style) GetSubformatting;
			}
		}
		[CRepr]
		public struct IMFTimedTextStyle : IUnknown
		{
			public const new Guid IID = .(0x09b2455d, 0xb834, 0x4f01, 0xa3, 0x47, 0x90, 0x52, 0xe2, 0x1c, 0x45, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out PWSTR name) mut => VT.GetName(ref this, out name);
			public BOOL IsExternal() mut => VT.IsExternal(ref this);
			public HRESULT GetFontFamily(out PWSTR fontFamily) mut => VT.GetFontFamily(ref this, out fontFamily);
			public HRESULT GetFontSize(out double fontSize, out MF_TIMED_TEXT_UNIT_TYPE unitType) mut => VT.GetFontSize(ref this, out fontSize, out unitType);
			public HRESULT GetColor(out MFARGB color) mut => VT.GetColor(ref this, out color);
			public HRESULT GetBackgroundColor(out MFARGB bgColor) mut => VT.GetBackgroundColor(ref this, out bgColor);
			public HRESULT GetShowBackgroundAlways(out BOOL showBackgroundAlways) mut => VT.GetShowBackgroundAlways(ref this, out showBackgroundAlways);
			public HRESULT GetFontStyle(out MF_TIMED_TEXT_FONT_STYLE fontStyle) mut => VT.GetFontStyle(ref this, out fontStyle);
			public HRESULT GetBold(out BOOL bold) mut => VT.GetBold(ref this, out bold);
			public HRESULT GetRightToLeft(out BOOL rightToLeft) mut => VT.GetRightToLeft(ref this, out rightToLeft);
			public HRESULT GetTextAlignment(out MF_TIMED_TEXT_ALIGNMENT textAlign) mut => VT.GetTextAlignment(ref this, out textAlign);
			public HRESULT GetTextDecoration(out uint32 textDecoration) mut => VT.GetTextDecoration(ref this, out textDecoration);
			public HRESULT GetTextOutline(out MFARGB color, out double thickness, out double blurRadius, out MF_TIMED_TEXT_UNIT_TYPE unitType) mut => VT.GetTextOutline(ref this, out color, out thickness, out blurRadius, out unitType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle self, out PWSTR name) GetName;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFTimedTextStyle self) IsExternal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle self, out PWSTR fontFamily) GetFontFamily;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle self, out double fontSize, out MF_TIMED_TEXT_UNIT_TYPE unitType) GetFontSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle self, out MFARGB color) GetColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle self, out MFARGB bgColor) GetBackgroundColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle self, out BOOL showBackgroundAlways) GetShowBackgroundAlways;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle self, out MF_TIMED_TEXT_FONT_STYLE fontStyle) GetFontStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle self, out BOOL bold) GetBold;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle self, out BOOL rightToLeft) GetRightToLeft;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle self, out MF_TIMED_TEXT_ALIGNMENT textAlign) GetTextAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle self, out uint32 textDecoration) GetTextDecoration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle self, out MFARGB color, out double thickness, out double blurRadius, out MF_TIMED_TEXT_UNIT_TYPE unitType) GetTextOutline;
			}
		}
		[CRepr]
		public struct IMFTimedTextRegion : IUnknown
		{
			public const new Guid IID = .(0xc8d22afc, 0xbc47, 0x4bdf, 0x9b, 0x04, 0x78, 0x7e, 0x49, 0xce, 0x3f, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out PWSTR name) mut => VT.GetName(ref this, out name);
			public HRESULT GetPosition(out double pX, out double pY, out MF_TIMED_TEXT_UNIT_TYPE unitType) mut => VT.GetPosition(ref this, out pX, out pY, out unitType);
			public HRESULT GetExtent(out double pWidth, out double pHeight, out MF_TIMED_TEXT_UNIT_TYPE unitType) mut => VT.GetExtent(ref this, out pWidth, out pHeight, out unitType);
			public HRESULT GetBackgroundColor(out MFARGB bgColor) mut => VT.GetBackgroundColor(ref this, out bgColor);
			public HRESULT GetWritingMode(out MF_TIMED_TEXT_WRITING_MODE writingMode) mut => VT.GetWritingMode(ref this, out writingMode);
			public HRESULT GetDisplayAlignment(out MF_TIMED_TEXT_DISPLAY_ALIGNMENT displayAlign) mut => VT.GetDisplayAlignment(ref this, out displayAlign);
			public HRESULT GetLineHeight(out double pLineHeight, out MF_TIMED_TEXT_UNIT_TYPE unitType) mut => VT.GetLineHeight(ref this, out pLineHeight, out unitType);
			public HRESULT GetClipOverflow(out BOOL clipOverflow) mut => VT.GetClipOverflow(ref this, out clipOverflow);
			public HRESULT GetPadding(out double before, out double start, out double after, out double end, out MF_TIMED_TEXT_UNIT_TYPE unitType) mut => VT.GetPadding(ref this, out before, out start, out after, out end, out unitType);
			public HRESULT GetWrap(out BOOL wrap) mut => VT.GetWrap(ref this, out wrap);
			public HRESULT GetZIndex(out int32 zIndex) mut => VT.GetZIndex(ref this, out zIndex);
			public HRESULT GetScrollMode(out MF_TIMED_TEXT_SCROLL_MODE scrollMode) mut => VT.GetScrollMode(ref this, out scrollMode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRegion self, out PWSTR name) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRegion self, out double pX, out double pY, out MF_TIMED_TEXT_UNIT_TYPE unitType) GetPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRegion self, out double pWidth, out double pHeight, out MF_TIMED_TEXT_UNIT_TYPE unitType) GetExtent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRegion self, out MFARGB bgColor) GetBackgroundColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRegion self, out MF_TIMED_TEXT_WRITING_MODE writingMode) GetWritingMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRegion self, out MF_TIMED_TEXT_DISPLAY_ALIGNMENT displayAlign) GetDisplayAlignment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRegion self, out double pLineHeight, out MF_TIMED_TEXT_UNIT_TYPE unitType) GetLineHeight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRegion self, out BOOL clipOverflow) GetClipOverflow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRegion self, out double before, out double start, out double after, out double end, out MF_TIMED_TEXT_UNIT_TYPE unitType) GetPadding;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRegion self, out BOOL wrap) GetWrap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRegion self, out int32 zIndex) GetZIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRegion self, out MF_TIMED_TEXT_SCROLL_MODE scrollMode) GetScrollMode;
			}
		}
		[CRepr]
		public struct IMFTimedTextBinary : IUnknown
		{
			public const new Guid IID = .(0x4ae3a412, 0x0545, 0x43c4, 0xbf, 0x6f, 0x6b, 0x97, 0xa5, 0xc6, 0xc4, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetData(out uint8* data, out uint32 length) mut => VT.GetData(ref this, out data, out length);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextBinary self, out uint8* data, out uint32 length) GetData;
			}
		}
		[CRepr]
		public struct IMFTimedTextCueList : IUnknown
		{
			public const new Guid IID = .(0xad128745, 0x211b, 0x40a0, 0x99, 0x81, 0xfe, 0x65, 0xf1, 0x66, 0xd0, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetLength() mut => VT.GetLength(ref this);
			public HRESULT GetCueByIndex(uint32 index, out IMFTimedTextCue* cue) mut => VT.GetCueByIndex(ref this, index, out cue);
			public HRESULT GetCueById(uint32 id, out IMFTimedTextCue* cue) mut => VT.GetCueById(ref this, id, out cue);
			public HRESULT GetCueByOriginalId(PWSTR originalId, out IMFTimedTextCue* cue) mut => VT.GetCueByOriginalId(ref this, originalId, out cue);
			public HRESULT AddTextCue(double start, double duration, PWSTR text, IMFTimedTextCue** cue) mut => VT.AddTextCue(ref this, start, duration, text, cue);
			public HRESULT AddDataCue(double start, double duration, in uint8 data, uint32 dataSize, IMFTimedTextCue** cue) mut => VT.AddDataCue(ref this, start, duration, data, dataSize, cue);
			public HRESULT RemoveCue(ref IMFTimedTextCue cue) mut => VT.RemoveCue(ref this, ref cue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IMFTimedTextCueList self) GetLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextCueList self, uint32 index, out IMFTimedTextCue* cue) GetCueByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextCueList self, uint32 id, out IMFTimedTextCue* cue) GetCueById;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextCueList self, PWSTR originalId, out IMFTimedTextCue* cue) GetCueByOriginalId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextCueList self, double start, double duration, PWSTR text, IMFTimedTextCue** cue) AddTextCue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextCueList self, double start, double duration, in uint8 data, uint32 dataSize, IMFTimedTextCue** cue) AddDataCue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextCueList self, ref IMFTimedTextCue cue) RemoveCue;
			}
		}
		[CRepr]
		public struct IMFTimedTextRuby : IUnknown
		{
			public const new Guid IID = .(0x76c6a6f5, 0x4955, 0x4de5, 0xb2, 0x7b, 0x14, 0xb7, 0x34, 0xcc, 0x14, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRubyText(out PWSTR rubyText) mut => VT.GetRubyText(ref this, out rubyText);
			public HRESULT GetRubyPosition(out MF_TIMED_TEXT_RUBY_POSITION value) mut => VT.GetRubyPosition(ref this, out value);
			public HRESULT GetRubyAlign(out MF_TIMED_TEXT_RUBY_ALIGN value) mut => VT.GetRubyAlign(ref this, out value);
			public HRESULT GetRubyReserve(out MF_TIMED_TEXT_RUBY_RESERVE value) mut => VT.GetRubyReserve(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRuby self, out PWSTR rubyText) GetRubyText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRuby self, out MF_TIMED_TEXT_RUBY_POSITION value) GetRubyPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRuby self, out MF_TIMED_TEXT_RUBY_ALIGN value) GetRubyAlign;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextRuby self, out MF_TIMED_TEXT_RUBY_RESERVE value) GetRubyReserve;
			}
		}
		[CRepr]
		public struct IMFTimedTextBouten : IUnknown
		{
			public const new Guid IID = .(0x3c5f3e8a, 0x90c0, 0x464e, 0x81, 0x36, 0x89, 0x8d, 0x29, 0x75, 0xf8, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBoutenType(out MF_TIMED_TEXT_BOUTEN_TYPE value) mut => VT.GetBoutenType(ref this, out value);
			public HRESULT GetBoutenColor(out MFARGB value) mut => VT.GetBoutenColor(ref this, out value);
			public HRESULT GetBoutenPosition(out MF_TIMED_TEXT_BOUTEN_POSITION value) mut => VT.GetBoutenPosition(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextBouten self, out MF_TIMED_TEXT_BOUTEN_TYPE value) GetBoutenType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextBouten self, out MFARGB value) GetBoutenColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextBouten self, out MF_TIMED_TEXT_BOUTEN_POSITION value) GetBoutenPosition;
			}
		}
		[CRepr]
		public struct IMFTimedTextStyle2 : IUnknown
		{
			public const new Guid IID = .(0xdb639199, 0xc809, 0x4c89, 0xbf, 0xca, 0xd0, 0xbb, 0xb9, 0x72, 0x9d, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRuby(IMFTimedTextRuby** ruby) mut => VT.GetRuby(ref this, ruby);
			public HRESULT GetBouten(IMFTimedTextBouten** bouten) mut => VT.GetBouten(ref this, bouten);
			public HRESULT IsTextCombined(out BOOL value) mut => VT.IsTextCombined(ref this, out value);
			public HRESULT GetFontAngleInDegrees(out double value) mut => VT.GetFontAngleInDegrees(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle2 self, IMFTimedTextRuby** ruby) GetRuby;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle2 self, IMFTimedTextBouten** bouten) GetBouten;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle2 self, out BOOL value) IsTextCombined;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTimedTextStyle2 self, out double value) GetFontAngleInDegrees;
			}
		}
		[CRepr]
		public struct IMFMediaEngineEMENotify : IUnknown
		{
			public const new Guid IID = .(0x9e184d15, 0xcdb7, 0x4f86, 0xb4, 0x9e, 0x56, 0x66, 0x89, 0xf4, 0xa6, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public void Encrypted(uint8* pbInitData, uint32 cb, BSTR bstrInitDataType) mut => VT.Encrypted(ref this, pbInitData, cb, bstrInitDataType);
			public void WaitingForKey() mut => VT.WaitingForKey(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IMFMediaEngineEMENotify self, uint8* pbInitData, uint32 cb, BSTR bstrInitDataType) Encrypted;
				public new function [CallingConvention(.Stdcall)] void(ref IMFMediaEngineEMENotify self) WaitingForKey;
			}
		}
		[CRepr]
		public struct IMFMediaKeySessionNotify2 : IMFMediaKeySessionNotify
		{
			public const new Guid IID = .(0xc3a9e92a, 0xda88, 0x46b0, 0xa1, 0x10, 0x6c, 0xf9, 0x53, 0x02, 0x6c, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public void KeyMessage2(MF_MEDIAKEYSESSION_MESSAGETYPE eMessageType, BSTR destinationURL, in uint8 pbMessage, uint32 cbMessage) mut => VT.KeyMessage2(ref this, eMessageType, destinationURL, pbMessage, cbMessage);
			public void KeyStatusChange() mut => VT.KeyStatusChange(ref this);

			[CRepr]
			public struct VTable : IMFMediaKeySessionNotify.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IMFMediaKeySessionNotify2 self, MF_MEDIAKEYSESSION_MESSAGETYPE eMessageType, BSTR destinationURL, in uint8 pbMessage, uint32 cbMessage) KeyMessage2;
				public new function [CallingConvention(.Stdcall)] void(ref IMFMediaKeySessionNotify2 self) KeyStatusChange;
			}
		}
		[CRepr]
		public struct IMFMediaKeySystemAccess : IUnknown
		{
			public const new Guid IID = .(0xaec63fda, 0x7a97, 0x4944, 0xb3, 0x5c, 0x6c, 0x6d, 0xf8, 0x08, 0x5c, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateMediaKeys(IPropertyStore* pCdmCustomConfig, out IMFMediaKeys2* ppKeys) mut => VT.CreateMediaKeys(ref this, pCdmCustomConfig, out ppKeys);
			public HRESULT get_SupportedConfiguration(out IPropertyStore* ppSupportedConfiguration) mut => VT.get_SupportedConfiguration(ref this, out ppSupportedConfiguration);
			public HRESULT get_KeySystem(out BSTR pKeySystem) mut => VT.get_KeySystem(ref this, out pKeySystem);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySystemAccess self, IPropertyStore* pCdmCustomConfig, out IMFMediaKeys2* ppKeys) CreateMediaKeys;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySystemAccess self, out IPropertyStore* ppSupportedConfiguration) get_SupportedConfiguration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySystemAccess self, out BSTR pKeySystem) get_KeySystem;
			}
		}
		[CRepr]
		public struct IMFMediaEngineClassFactory3 : IUnknown
		{
			public const new Guid IID = .(0x3787614f, 0x65f7, 0x4003, 0xb6, 0x73, 0xea, 0xd8, 0x29, 0x3a, 0x0e, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateMediaKeySystemAccess(BSTR keySystem, IPropertyStore** ppSupportedConfigurationsArray, uint32 uSize, out IMFMediaKeySystemAccess* ppKeyAccess) mut => VT.CreateMediaKeySystemAccess(ref this, keySystem, ppSupportedConfigurationsArray, uSize, out ppKeyAccess);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineClassFactory3 self, BSTR keySystem, IPropertyStore** ppSupportedConfigurationsArray, uint32 uSize, out IMFMediaKeySystemAccess* ppKeyAccess) CreateMediaKeySystemAccess;
			}
		}
		[CRepr]
		public struct IMFMediaKeys2 : IMFMediaKeys
		{
			public const new Guid IID = .(0x45892507, 0xad66, 0x4de2, 0x83, 0xa2, 0xac, 0xbb, 0x13, 0xcd, 0x8d, 0x43);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSession2(MF_MEDIAKEYSESSION_TYPE eSessionType, ref IMFMediaKeySessionNotify2 pMFMediaKeySessionNotify2, out IMFMediaKeySession2* ppSession) mut => VT.CreateSession2(ref this, eSessionType, ref pMFMediaKeySessionNotify2, out ppSession);
			public HRESULT SetServerCertificate(uint8* pbServerCertificate, uint32 cb) mut => VT.SetServerCertificate(ref this, pbServerCertificate, cb);
			public HRESULT GetDOMException(HRESULT systemCode, out HRESULT code) mut => VT.GetDOMException(ref this, systemCode, out code);

			[CRepr]
			public struct VTable : IMFMediaKeys.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeys2 self, MF_MEDIAKEYSESSION_TYPE eSessionType, ref IMFMediaKeySessionNotify2 pMFMediaKeySessionNotify2, out IMFMediaKeySession2* ppSession) CreateSession2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeys2 self, uint8* pbServerCertificate, uint32 cb) SetServerCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeys2 self, HRESULT systemCode, out HRESULT code) GetDOMException;
			}
		}
		[CRepr]
		public struct IMFMediaKeySession2 : IMFMediaKeySession
		{
			public const new Guid IID = .(0xe9707e05, 0x6d55, 0x4636, 0xb1, 0x85, 0x3d, 0xe2, 0x12, 0x10, 0xbd, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_KeyStatuses(out MFMediaKeyStatus* pKeyStatusesArray, out uint32 puSize) mut => VT.get_KeyStatuses(ref this, out pKeyStatusesArray, out puSize);
			public HRESULT Load(BSTR bstrSessionId, out BOOL pfLoaded) mut => VT.Load(ref this, bstrSessionId, out pfLoaded);
			public HRESULT GenerateRequest(BSTR initDataType, in uint8 pbInitData, uint32 cb) mut => VT.GenerateRequest(ref this, initDataType, pbInitData, cb);
			public HRESULT get_Expiration(out double dblExpiration) mut => VT.get_Expiration(ref this, out dblExpiration);
			public HRESULT Remove() mut => VT.Remove(ref this);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IMFMediaKeySession.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySession2 self, out MFMediaKeyStatus* pKeyStatusesArray, out uint32 puSize) get_KeyStatuses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySession2 self, BSTR bstrSessionId, out BOOL pfLoaded) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySession2 self, BSTR initDataType, in uint8 pbInitData, uint32 cb) GenerateRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySession2 self, out double dblExpiration) get_Expiration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySession2 self) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaKeySession2 self) Shutdown;
			}
		}
		[CRepr]
		public struct IMFMediaEngineClassFactory4 : IUnknown
		{
			public const new Guid IID = .(0xfbe256c1, 0x43cf, 0x4a9b, 0x8c, 0xb8, 0xce, 0x86, 0x32, 0xa3, 0x41, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateContentDecryptionModuleFactory(PWSTR keySystem, in Guid riid, void** ppvObject) mut => VT.CreateContentDecryptionModuleFactory(ref this, keySystem, riid, ppvObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaEngineClassFactory4 self, PWSTR keySystem, in Guid riid, void** ppvObject) CreateContentDecryptionModuleFactory;
			}
		}
		[CRepr]
		public struct IMFDLNASinkInit : IUnknown
		{
			public const new Guid IID = .(0x0c012799, 0x1b61, 0x4c10, 0xbd, 0xa9, 0x04, 0x44, 0x5b, 0xe5, 0xf5, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IMFByteStream pByteStream, BOOL fPal) mut => VT.Initialize(ref this, ref pByteStream, fPal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDLNASinkInit self, ref IMFByteStream pByteStream, BOOL fPal) Initialize;
			}
		}
		[CRepr]
		public struct IMFReadWriteClassFactory : IUnknown
		{
			public const new Guid IID = .(0xe7fe2e12, 0x661c, 0x40da, 0x92, 0xf9, 0x4f, 0x00, 0x2a, 0xb6, 0x76, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstanceFromURL(in Guid clsid, PWSTR pwszURL, IMFAttributes* pAttributes, in Guid riid, void** ppvObject) mut => VT.CreateInstanceFromURL(ref this, clsid, pwszURL, pAttributes, riid, ppvObject);
			public HRESULT CreateInstanceFromObject(in Guid clsid, ref IUnknown punkObject, IMFAttributes* pAttributes, in Guid riid, void** ppvObject) mut => VT.CreateInstanceFromObject(ref this, clsid, ref punkObject, pAttributes, riid, ppvObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFReadWriteClassFactory self, in Guid clsid, PWSTR pwszURL, IMFAttributes* pAttributes, in Guid riid, void** ppvObject) CreateInstanceFromURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFReadWriteClassFactory self, in Guid clsid, ref IUnknown punkObject, IMFAttributes* pAttributes, in Guid riid, void** ppvObject) CreateInstanceFromObject;
			}
		}
		[CRepr]
		public struct IMFSourceReader : IUnknown
		{
			public const new Guid IID = .(0x70ae66f2, 0xc809, 0x4e4f, 0x89, 0x15, 0xbd, 0xcb, 0x40, 0x6b, 0x79, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamSelection(uint32 dwStreamIndex, out BOOL pfSelected) mut => VT.GetStreamSelection(ref this, dwStreamIndex, out pfSelected);
			public HRESULT SetStreamSelection(uint32 dwStreamIndex, BOOL fSelected) mut => VT.SetStreamSelection(ref this, dwStreamIndex, fSelected);
			public HRESULT GetNativeMediaType(uint32 dwStreamIndex, uint32 dwMediaTypeIndex, out IMFMediaType* ppMediaType) mut => VT.GetNativeMediaType(ref this, dwStreamIndex, dwMediaTypeIndex, out ppMediaType);
			public HRESULT GetCurrentMediaType(uint32 dwStreamIndex, out IMFMediaType* ppMediaType) mut => VT.GetCurrentMediaType(ref this, dwStreamIndex, out ppMediaType);
			public HRESULT SetCurrentMediaType(uint32 dwStreamIndex, out uint32 pdwReserved, ref IMFMediaType pMediaType) mut => VT.SetCurrentMediaType(ref this, dwStreamIndex, out pdwReserved, ref pMediaType);
			public HRESULT SetCurrentPosition(in Guid guidTimeFormat, in PROPVARIANT varPosition) mut => VT.SetCurrentPosition(ref this, guidTimeFormat, varPosition);
			public HRESULT ReadSample(uint32 dwStreamIndex, uint32 dwControlFlags, uint32* pdwActualStreamIndex, uint32* pdwStreamFlags, int64* pllTimestamp, IMFSample** ppSample) mut => VT.ReadSample(ref this, dwStreamIndex, dwControlFlags, pdwActualStreamIndex, pdwStreamFlags, pllTimestamp, ppSample);
			public HRESULT Flush(uint32 dwStreamIndex) mut => VT.Flush(ref this, dwStreamIndex);
			public HRESULT GetServiceForStream(uint32 dwStreamIndex, in Guid guidService, in Guid riid, void** ppvObject) mut => VT.GetServiceForStream(ref this, dwStreamIndex, guidService, riid, ppvObject);
			public HRESULT GetPresentationAttribute(uint32 dwStreamIndex, in Guid guidAttribute, out PROPVARIANT pvarAttribute) mut => VT.GetPresentationAttribute(ref this, dwStreamIndex, guidAttribute, out pvarAttribute);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReader self, uint32 dwStreamIndex, out BOOL pfSelected) GetStreamSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReader self, uint32 dwStreamIndex, BOOL fSelected) SetStreamSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReader self, uint32 dwStreamIndex, uint32 dwMediaTypeIndex, out IMFMediaType* ppMediaType) GetNativeMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReader self, uint32 dwStreamIndex, out IMFMediaType* ppMediaType) GetCurrentMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReader self, uint32 dwStreamIndex, out uint32 pdwReserved, ref IMFMediaType pMediaType) SetCurrentMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReader self, in Guid guidTimeFormat, in PROPVARIANT varPosition) SetCurrentPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReader self, uint32 dwStreamIndex, uint32 dwControlFlags, uint32* pdwActualStreamIndex, uint32* pdwStreamFlags, int64* pllTimestamp, IMFSample** ppSample) ReadSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReader self, uint32 dwStreamIndex) Flush;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReader self, uint32 dwStreamIndex, in Guid guidService, in Guid riid, void** ppvObject) GetServiceForStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReader self, uint32 dwStreamIndex, in Guid guidAttribute, out PROPVARIANT pvarAttribute) GetPresentationAttribute;
			}
		}
		[CRepr]
		public struct IMFSourceReaderEx : IMFSourceReader
		{
			public const new Guid IID = .(0x7b981cf0, 0x560e, 0x4116, 0x98, 0x75, 0xb0, 0x99, 0x89, 0x5f, 0x23, 0xd7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetNativeMediaType(uint32 dwStreamIndex, IMFMediaType* pMediaType, out uint32 pdwStreamFlags) mut => VT.SetNativeMediaType(ref this, dwStreamIndex, pMediaType, out pdwStreamFlags);
			public HRESULT AddTransformForStream(uint32 dwStreamIndex, ref IUnknown pTransformOrActivate) mut => VT.AddTransformForStream(ref this, dwStreamIndex, ref pTransformOrActivate);
			public HRESULT RemoveAllTransformsForStream(uint32 dwStreamIndex) mut => VT.RemoveAllTransformsForStream(ref this, dwStreamIndex);
			public HRESULT GetTransformForStream(uint32 dwStreamIndex, uint32 dwTransformIndex, Guid* pGuidCategory, out IMFTransform* ppTransform) mut => VT.GetTransformForStream(ref this, dwStreamIndex, dwTransformIndex, pGuidCategory, out ppTransform);

			[CRepr]
			public struct VTable : IMFSourceReader.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReaderEx self, uint32 dwStreamIndex, IMFMediaType* pMediaType, out uint32 pdwStreamFlags) SetNativeMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReaderEx self, uint32 dwStreamIndex, ref IUnknown pTransformOrActivate) AddTransformForStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReaderEx self, uint32 dwStreamIndex) RemoveAllTransformsForStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReaderEx self, uint32 dwStreamIndex, uint32 dwTransformIndex, Guid* pGuidCategory, out IMFTransform* ppTransform) GetTransformForStream;
			}
		}
		[CRepr]
		public struct IMFSourceReaderCallback : IUnknown
		{
			public const new Guid IID = .(0xdeec8d99, 0xfa1d, 0x4d82, 0x84, 0xc2, 0x2c, 0x89, 0x69, 0x94, 0x48, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnReadSample(HRESULT hrStatus, uint32 dwStreamIndex, uint32 dwStreamFlags, int64 llTimestamp, IMFSample* pSample) mut => VT.OnReadSample(ref this, hrStatus, dwStreamIndex, dwStreamFlags, llTimestamp, pSample);
			public HRESULT OnFlush(uint32 dwStreamIndex) mut => VT.OnFlush(ref this, dwStreamIndex);
			public HRESULT OnEvent(uint32 dwStreamIndex, ref IMFMediaEvent pEvent) mut => VT.OnEvent(ref this, dwStreamIndex, ref pEvent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReaderCallback self, HRESULT hrStatus, uint32 dwStreamIndex, uint32 dwStreamFlags, int64 llTimestamp, IMFSample* pSample) OnReadSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReaderCallback self, uint32 dwStreamIndex) OnFlush;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReaderCallback self, uint32 dwStreamIndex, ref IMFMediaEvent pEvent) OnEvent;
			}
		}
		[CRepr]
		public struct IMFSourceReaderCallback2 : IMFSourceReaderCallback
		{
			public const new Guid IID = .(0xcf839fe6, 0x8c2a, 0x4dd2, 0xb6, 0xea, 0xc2, 0x2d, 0x69, 0x61, 0xaf, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTransformChange() mut => VT.OnTransformChange(ref this);
			public HRESULT OnStreamError(uint32 dwStreamIndex, HRESULT hrStatus) mut => VT.OnStreamError(ref this, dwStreamIndex, hrStatus);

			[CRepr]
			public struct VTable : IMFSourceReaderCallback.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReaderCallback2 self) OnTransformChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSourceReaderCallback2 self, uint32 dwStreamIndex, HRESULT hrStatus) OnStreamError;
			}
		}
		[CRepr]
		public struct IMFSinkWriter : IUnknown
		{
			public const new Guid IID = .(0x3137f1cd, 0xfe5e, 0x4805, 0xa5, 0xd8, 0xfb, 0x47, 0x74, 0x48, 0xcb, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddStream(ref IMFMediaType pTargetMediaType, out uint32 pdwStreamIndex) mut => VT.AddStream(ref this, ref pTargetMediaType, out pdwStreamIndex);
			public HRESULT SetInputMediaType(uint32 dwStreamIndex, ref IMFMediaType pInputMediaType, IMFAttributes* pEncodingParameters) mut => VT.SetInputMediaType(ref this, dwStreamIndex, ref pInputMediaType, pEncodingParameters);
			public HRESULT BeginWriting() mut => VT.BeginWriting(ref this);
			public HRESULT WriteSample(uint32 dwStreamIndex, ref IMFSample pSample) mut => VT.WriteSample(ref this, dwStreamIndex, ref pSample);
			public HRESULT SendStreamTick(uint32 dwStreamIndex, int64 llTimestamp) mut => VT.SendStreamTick(ref this, dwStreamIndex, llTimestamp);
			public HRESULT PlaceMarker(uint32 dwStreamIndex, void* pvContext) mut => VT.PlaceMarker(ref this, dwStreamIndex, pvContext);
			public HRESULT NotifyEndOfSegment(uint32 dwStreamIndex) mut => VT.NotifyEndOfSegment(ref this, dwStreamIndex);
			public HRESULT Flush(uint32 dwStreamIndex) mut => VT.Flush(ref this, dwStreamIndex);
			public HRESULT Finalize() mut => VT.Finalize(ref this);
			public HRESULT GetServiceForStream(uint32 dwStreamIndex, in Guid guidService, in Guid riid, void** ppvObject) mut => VT.GetServiceForStream(ref this, dwStreamIndex, guidService, riid, ppvObject);
			public HRESULT GetStatistics(uint32 dwStreamIndex, out MF_SINK_WRITER_STATISTICS pStats) mut => VT.GetStatistics(ref this, dwStreamIndex, out pStats);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriter self, ref IMFMediaType pTargetMediaType, out uint32 pdwStreamIndex) AddStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriter self, uint32 dwStreamIndex, ref IMFMediaType pInputMediaType, IMFAttributes* pEncodingParameters) SetInputMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriter self) BeginWriting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriter self, uint32 dwStreamIndex, ref IMFSample pSample) WriteSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriter self, uint32 dwStreamIndex, int64 llTimestamp) SendStreamTick;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriter self, uint32 dwStreamIndex, void* pvContext) PlaceMarker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriter self, uint32 dwStreamIndex) NotifyEndOfSegment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriter self, uint32 dwStreamIndex) Flush;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriter self) Finalize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriter self, uint32 dwStreamIndex, in Guid guidService, in Guid riid, void** ppvObject) GetServiceForStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriter self, uint32 dwStreamIndex, out MF_SINK_WRITER_STATISTICS pStats) GetStatistics;
			}
		}
		[CRepr]
		public struct IMFSinkWriterEx : IMFSinkWriter
		{
			public const new Guid IID = .(0x588d72ab, 0x5bc1, 0x496a, 0x87, 0x14, 0xb7, 0x06, 0x17, 0x14, 0x1b, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTransformForStream(uint32 dwStreamIndex, uint32 dwTransformIndex, Guid* pGuidCategory, out IMFTransform* ppTransform) mut => VT.GetTransformForStream(ref this, dwStreamIndex, dwTransformIndex, pGuidCategory, out ppTransform);

			[CRepr]
			public struct VTable : IMFSinkWriter.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriterEx self, uint32 dwStreamIndex, uint32 dwTransformIndex, Guid* pGuidCategory, out IMFTransform* ppTransform) GetTransformForStream;
			}
		}
		[CRepr]
		public struct IMFSinkWriterEncoderConfig : IUnknown
		{
			public const new Guid IID = .(0x17c3779e, 0x3cde, 0x4ede, 0x8c, 0x60, 0x38, 0x99, 0xf5, 0xf5, 0x3a, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTargetMediaType(uint32 dwStreamIndex, ref IMFMediaType pTargetMediaType, IMFAttributes* pEncodingParameters) mut => VT.SetTargetMediaType(ref this, dwStreamIndex, ref pTargetMediaType, pEncodingParameters);
			public HRESULT PlaceEncodingParameters(uint32 dwStreamIndex, ref IMFAttributes pEncodingParameters) mut => VT.PlaceEncodingParameters(ref this, dwStreamIndex, ref pEncodingParameters);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriterEncoderConfig self, uint32 dwStreamIndex, ref IMFMediaType pTargetMediaType, IMFAttributes* pEncodingParameters) SetTargetMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriterEncoderConfig self, uint32 dwStreamIndex, ref IMFAttributes pEncodingParameters) PlaceEncodingParameters;
			}
		}
		[CRepr]
		public struct IMFSinkWriterCallback : IUnknown
		{
			public const new Guid IID = .(0x666f76de, 0x33d2, 0x41b9, 0xa4, 0x58, 0x29, 0xed, 0x0a, 0x97, 0x2c, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnFinalize(HRESULT hrStatus) mut => VT.OnFinalize(ref this, hrStatus);
			public HRESULT OnMarker(uint32 dwStreamIndex, void* pvContext) mut => VT.OnMarker(ref this, dwStreamIndex, pvContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriterCallback self, HRESULT hrStatus) OnFinalize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriterCallback self, uint32 dwStreamIndex, void* pvContext) OnMarker;
			}
		}
		[CRepr]
		public struct IMFSinkWriterCallback2 : IMFSinkWriterCallback
		{
			public const new Guid IID = .(0x2456bd58, 0xc067, 0x4513, 0x84, 0xfe, 0x8d, 0x0c, 0x88, 0xff, 0xdc, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTransformChange() mut => VT.OnTransformChange(ref this);
			public HRESULT OnStreamError(uint32 dwStreamIndex, HRESULT hrStatus) mut => VT.OnStreamError(ref this, dwStreamIndex, hrStatus);

			[CRepr]
			public struct VTable : IMFSinkWriterCallback.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriterCallback2 self) OnTransformChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSinkWriterCallback2 self, uint32 dwStreamIndex, HRESULT hrStatus) OnStreamError;
			}
		}
		[CRepr]
		public struct IMFVideoPositionMapper : IUnknown
		{
			public const new Guid IID = .(0x1f6a9f17, 0xe70b, 0x4e24, 0x8a, 0xe4, 0x0b, 0x2c, 0x3b, 0xa7, 0xa4, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MapOutputCoordinateToInputStream(float xOut, float yOut, uint32 dwOutputStreamIndex, uint32 dwInputStreamIndex, out float pxIn, out float pyIn) mut => VT.MapOutputCoordinateToInputStream(ref this, xOut, yOut, dwOutputStreamIndex, dwInputStreamIndex, out pxIn, out pyIn);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoPositionMapper self, float xOut, float yOut, uint32 dwOutputStreamIndex, uint32 dwInputStreamIndex, out float pxIn, out float pyIn) MapOutputCoordinateToInputStream;
			}
		}
		[CRepr]
		public struct IMFVideoDeviceID : IUnknown
		{
			public const new Guid IID = .(0xa38d9567, 0x5a9c, 0x4f3c, 0xb2, 0x93, 0x8e, 0xb4, 0x15, 0xb2, 0x79, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceID(out Guid pDeviceID) mut => VT.GetDeviceID(ref this, out pDeviceID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDeviceID self, out Guid pDeviceID) GetDeviceID;
			}
		}
		[CRepr]
		public struct IMFVideoDisplayControl : IUnknown
		{
			public const new Guid IID = .(0xa490b1e4, 0xab84, 0x4d31, 0xa1, 0xb2, 0x18, 0x1e, 0x03, 0xb1, 0x07, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNativeVideoSize(out SIZE pszVideo, out SIZE pszARVideo) mut => VT.GetNativeVideoSize(ref this, out pszVideo, out pszARVideo);
			public HRESULT GetIdealVideoSize(out SIZE pszMin, out SIZE pszMax) mut => VT.GetIdealVideoSize(ref this, out pszMin, out pszMax);
			public HRESULT SetVideoPosition(in MFVideoNormalizedRect pnrcSource, in RECT prcDest) mut => VT.SetVideoPosition(ref this, pnrcSource, prcDest);
			public HRESULT GetVideoPosition(out MFVideoNormalizedRect pnrcSource, out RECT prcDest) mut => VT.GetVideoPosition(ref this, out pnrcSource, out prcDest);
			public HRESULT SetAspectRatioMode(uint32 dwAspectRatioMode) mut => VT.SetAspectRatioMode(ref this, dwAspectRatioMode);
			public HRESULT GetAspectRatioMode(out uint32 pdwAspectRatioMode) mut => VT.GetAspectRatioMode(ref this, out pdwAspectRatioMode);
			public HRESULT SetVideoWindow(HWND hwndVideo) mut => VT.SetVideoWindow(ref this, hwndVideo);
			public HRESULT GetVideoWindow(out HWND phwndVideo) mut => VT.GetVideoWindow(ref this, out phwndVideo);
			public HRESULT RepaintVideo() mut => VT.RepaintVideo(ref this);
			public HRESULT GetCurrentImage(out BITMAPINFOHEADER pBih, uint8** pDib, out uint32 pcbDib, out int64 pTimeStamp) mut => VT.GetCurrentImage(ref this, out pBih, pDib, out pcbDib, out pTimeStamp);
			public HRESULT SetBorderColor(uint32 Clr) mut => VT.SetBorderColor(ref this, Clr);
			public HRESULT GetBorderColor(out uint32 pClr) mut => VT.GetBorderColor(ref this, out pClr);
			public HRESULT SetRenderingPrefs(uint32 dwRenderFlags) mut => VT.SetRenderingPrefs(ref this, dwRenderFlags);
			public HRESULT GetRenderingPrefs(out uint32 pdwRenderFlags) mut => VT.GetRenderingPrefs(ref this, out pdwRenderFlags);
			public HRESULT SetFullscreen(BOOL fFullscreen) mut => VT.SetFullscreen(ref this, fFullscreen);
			public HRESULT GetFullscreen(out BOOL pfFullscreen) mut => VT.GetFullscreen(ref this, out pfFullscreen);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, out SIZE pszVideo, out SIZE pszARVideo) GetNativeVideoSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, out SIZE pszMin, out SIZE pszMax) GetIdealVideoSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, in MFVideoNormalizedRect pnrcSource, in RECT prcDest) SetVideoPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, out MFVideoNormalizedRect pnrcSource, out RECT prcDest) GetVideoPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, uint32 dwAspectRatioMode) SetAspectRatioMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, out uint32 pdwAspectRatioMode) GetAspectRatioMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, HWND hwndVideo) SetVideoWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, out HWND phwndVideo) GetVideoWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self) RepaintVideo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, out BITMAPINFOHEADER pBih, uint8** pDib, out uint32 pcbDib, out int64 pTimeStamp) GetCurrentImage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, uint32 Clr) SetBorderColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, out uint32 pClr) GetBorderColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, uint32 dwRenderFlags) SetRenderingPrefs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, out uint32 pdwRenderFlags) GetRenderingPrefs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, BOOL fFullscreen) SetFullscreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoDisplayControl self, out BOOL pfFullscreen) GetFullscreen;
			}
		}
		[CRepr]
		public struct IMFVideoPresenter : IMFClockStateSink
		{
			public const new Guid IID = .(0x29aff080, 0x182a, 0x4a5d, 0xaf, 0x3b, 0x44, 0x8f, 0x3a, 0x63, 0x46, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ProcessMessage(MFVP_MESSAGE_TYPE eMessage, uint ulParam) mut => VT.ProcessMessage(ref this, eMessage, ulParam);
			public HRESULT GetCurrentMediaType(out IMFVideoMediaType* ppMediaType) mut => VT.GetCurrentMediaType(ref this, out ppMediaType);

			[CRepr]
			public struct VTable : IMFClockStateSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoPresenter self, MFVP_MESSAGE_TYPE eMessage, uint ulParam) ProcessMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoPresenter self, out IMFVideoMediaType* ppMediaType) GetCurrentMediaType;
			}
		}
		[CRepr]
		public struct IMFDesiredSample : IUnknown
		{
			public const new Guid IID = .(0x56c294d0, 0x753e, 0x4260, 0x8d, 0x61, 0xa3, 0xd8, 0x82, 0x0b, 0x1d, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDesiredSampleTimeAndDuration(out int64 phnsSampleTime, out int64 phnsSampleDuration) mut => VT.GetDesiredSampleTimeAndDuration(ref this, out phnsSampleTime, out phnsSampleDuration);
			public void SetDesiredSampleTimeAndDuration(int64 hnsSampleTime, int64 hnsSampleDuration) mut => VT.SetDesiredSampleTimeAndDuration(ref this, hnsSampleTime, hnsSampleDuration);
			public void Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFDesiredSample self, out int64 phnsSampleTime, out int64 phnsSampleDuration) GetDesiredSampleTimeAndDuration;
				public new function [CallingConvention(.Stdcall)] void(ref IMFDesiredSample self, int64 hnsSampleTime, int64 hnsSampleDuration) SetDesiredSampleTimeAndDuration;
				public new function [CallingConvention(.Stdcall)] void(ref IMFDesiredSample self) Clear;
			}
		}
		[CRepr]
		public struct IMFVideoMixerControl : IUnknown
		{
			public const new Guid IID = .(0xa5c6c53f, 0xc202, 0x4aa5, 0x96, 0x95, 0x17, 0x5b, 0xa8, 0xc5, 0x08, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetStreamZOrder(uint32 dwStreamID, uint32 dwZ) mut => VT.SetStreamZOrder(ref this, dwStreamID, dwZ);
			public HRESULT GetStreamZOrder(uint32 dwStreamID, out uint32 pdwZ) mut => VT.GetStreamZOrder(ref this, dwStreamID, out pdwZ);
			public HRESULT SetStreamOutputRect(uint32 dwStreamID, in MFVideoNormalizedRect pnrcOutput) mut => VT.SetStreamOutputRect(ref this, dwStreamID, pnrcOutput);
			public HRESULT GetStreamOutputRect(uint32 dwStreamID, out MFVideoNormalizedRect pnrcOutput) mut => VT.GetStreamOutputRect(ref this, dwStreamID, out pnrcOutput);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoMixerControl self, uint32 dwStreamID, uint32 dwZ) SetStreamZOrder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoMixerControl self, uint32 dwStreamID, out uint32 pdwZ) GetStreamZOrder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoMixerControl self, uint32 dwStreamID, in MFVideoNormalizedRect pnrcOutput) SetStreamOutputRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoMixerControl self, uint32 dwStreamID, out MFVideoNormalizedRect pnrcOutput) GetStreamOutputRect;
			}
		}
		[CRepr]
		public struct IMFVideoMixerControl2 : IMFVideoMixerControl
		{
			public const new Guid IID = .(0x8459616d, 0x966e, 0x4930, 0xb6, 0x58, 0x54, 0xfa, 0x7e, 0x5a, 0x16, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMixingPrefs(uint32 dwMixFlags) mut => VT.SetMixingPrefs(ref this, dwMixFlags);
			public HRESULT GetMixingPrefs(out uint32 pdwMixFlags) mut => VT.GetMixingPrefs(ref this, out pdwMixFlags);

			[CRepr]
			public struct VTable : IMFVideoMixerControl.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoMixerControl2 self, uint32 dwMixFlags) SetMixingPrefs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoMixerControl2 self, out uint32 pdwMixFlags) GetMixingPrefs;
			}
		}
		[CRepr]
		public struct IMFVideoRenderer : IUnknown
		{
			public const new Guid IID = .(0xdfdfd197, 0xa9ca, 0x43d8, 0xb3, 0x41, 0x6a, 0xf3, 0x50, 0x37, 0x92, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeRenderer(IMFTransform* pVideoMixer, IMFVideoPresenter* pVideoPresenter) mut => VT.InitializeRenderer(ref this, pVideoMixer, pVideoPresenter);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoRenderer self, IMFTransform* pVideoMixer, IMFVideoPresenter* pVideoPresenter) InitializeRenderer;
			}
		}
		[CRepr]
		public struct IEVRFilterConfig : IUnknown
		{
			public const new Guid IID = .(0x83e91e85, 0x82c1, 0x4ea7, 0x80, 0x1d, 0x85, 0xdc, 0x50, 0xb7, 0x50, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetNumberOfStreams(uint32 dwMaxStreams) mut => VT.SetNumberOfStreams(ref this, dwMaxStreams);
			public HRESULT GetNumberOfStreams(out uint32 pdwMaxStreams) mut => VT.GetNumberOfStreams(ref this, out pdwMaxStreams);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEVRFilterConfig self, uint32 dwMaxStreams) SetNumberOfStreams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEVRFilterConfig self, out uint32 pdwMaxStreams) GetNumberOfStreams;
			}
		}
		[CRepr]
		public struct IEVRFilterConfigEx : IEVRFilterConfig
		{
			public const new Guid IID = .(0xaea36028, 0x796d, 0x454f, 0xbe, 0xee, 0xb4, 0x80, 0x71, 0xe2, 0x43, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetConfigPrefs(uint32 dwConfigFlags) mut => VT.SetConfigPrefs(ref this, dwConfigFlags);
			public HRESULT GetConfigPrefs(out uint32 pdwConfigFlags) mut => VT.GetConfigPrefs(ref this, out pdwConfigFlags);

			[CRepr]
			public struct VTable : IEVRFilterConfig.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEVRFilterConfigEx self, uint32 dwConfigFlags) SetConfigPrefs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEVRFilterConfigEx self, out uint32 pdwConfigFlags) GetConfigPrefs;
			}
		}
		[CRepr]
		public struct IMFTopologyServiceLookup : IUnknown
		{
			public const new Guid IID = .(0xfa993889, 0x4383, 0x415a, 0xa9, 0x30, 0xdd, 0x47, 0x2a, 0x8c, 0xf6, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LookupService(MF_SERVICE_LOOKUP_TYPE Type, uint32 dwIndex, in Guid guidService, in Guid riid, void** ppvObjects, out uint32 pnObjects) mut => VT.LookupService(ref this, Type, dwIndex, guidService, riid, ppvObjects, out pnObjects);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyServiceLookup self, MF_SERVICE_LOOKUP_TYPE Type, uint32 dwIndex, in Guid guidService, in Guid riid, void** ppvObjects, out uint32 pnObjects) LookupService;
			}
		}
		[CRepr]
		public struct IMFTopologyServiceLookupClient : IUnknown
		{
			public const new Guid IID = .(0xfa99388a, 0x4383, 0x415a, 0xa9, 0x30, 0xdd, 0x47, 0x2a, 0x8c, 0xf6, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitServicePointers(ref IMFTopologyServiceLookup pLookup) mut => VT.InitServicePointers(ref this, ref pLookup);
			public HRESULT ReleaseServicePointers() mut => VT.ReleaseServicePointers(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyServiceLookupClient self, ref IMFTopologyServiceLookup pLookup) InitServicePointers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFTopologyServiceLookupClient self) ReleaseServicePointers;
			}
		}
		[CRepr]
		public struct IEVRTrustedVideoPlugin : IUnknown
		{
			public const new Guid IID = .(0x83a4ce40, 0x7710, 0x494b, 0xa8, 0x93, 0xa4, 0x72, 0x04, 0x9a, 0xf6, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsInTrustedVideoMode(out BOOL pYes) mut => VT.IsInTrustedVideoMode(ref this, out pYes);
			public HRESULT CanConstrict(out BOOL pYes) mut => VT.CanConstrict(ref this, out pYes);
			public HRESULT SetConstriction(uint32 dwKPix) mut => VT.SetConstriction(ref this, dwKPix);
			public HRESULT DisableImageExport(BOOL bDisable) mut => VT.DisableImageExport(ref this, bDisable);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEVRTrustedVideoPlugin self, out BOOL pYes) IsInTrustedVideoMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEVRTrustedVideoPlugin self, out BOOL pYes) CanConstrict;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEVRTrustedVideoPlugin self, uint32 dwKPix) SetConstriction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEVRTrustedVideoPlugin self, BOOL bDisable) DisableImageExport;
			}
		}
		[CRepr]
		public struct IMFPMediaPlayer : IUnknown
		{
			public const new Guid IID = .(0xa714590a, 0x58af, 0x430a, 0x85, 0xbf, 0x44, 0xf5, 0xec, 0x83, 0x8d, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Play() mut => VT.Play(ref this);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Stop() mut => VT.Stop(ref this);
			public HRESULT FrameStep() mut => VT.FrameStep(ref this);
			public HRESULT SetPosition(in Guid guidPositionType, in PROPVARIANT pvPositionValue) mut => VT.SetPosition(ref this, guidPositionType, pvPositionValue);
			public HRESULT GetPosition(in Guid guidPositionType, out PROPVARIANT pvPositionValue) mut => VT.GetPosition(ref this, guidPositionType, out pvPositionValue);
			public HRESULT GetDuration(in Guid guidPositionType, out PROPVARIANT pvDurationValue) mut => VT.GetDuration(ref this, guidPositionType, out pvDurationValue);
			public HRESULT SetRate(float flRate) mut => VT.SetRate(ref this, flRate);
			public HRESULT GetRate(out float pflRate) mut => VT.GetRate(ref this, out pflRate);
			public HRESULT GetSupportedRates(BOOL fForwardDirection, out float pflSlowestRate, out float pflFastestRate) mut => VT.GetSupportedRates(ref this, fForwardDirection, out pflSlowestRate, out pflFastestRate);
			public HRESULT GetState(out MFP_MEDIAPLAYER_STATE peState) mut => VT.GetState(ref this, out peState);
			public HRESULT CreateMediaItemFromURL(PWSTR pwszURL, BOOL fSync, uint dwUserData, IMFPMediaItem** ppMediaItem) mut => VT.CreateMediaItemFromURL(ref this, pwszURL, fSync, dwUserData, ppMediaItem);
			public HRESULT CreateMediaItemFromObject(ref IUnknown pIUnknownObj, BOOL fSync, uint dwUserData, IMFPMediaItem** ppMediaItem) mut => VT.CreateMediaItemFromObject(ref this, ref pIUnknownObj, fSync, dwUserData, ppMediaItem);
			public HRESULT SetMediaItem(ref IMFPMediaItem pIMFPMediaItem) mut => VT.SetMediaItem(ref this, ref pIMFPMediaItem);
			public HRESULT ClearMediaItem() mut => VT.ClearMediaItem(ref this);
			public HRESULT GetMediaItem(out IMFPMediaItem* ppIMFPMediaItem) mut => VT.GetMediaItem(ref this, out ppIMFPMediaItem);
			public HRESULT GetVolume(out float pflVolume) mut => VT.GetVolume(ref this, out pflVolume);
			public HRESULT SetVolume(float flVolume) mut => VT.SetVolume(ref this, flVolume);
			public HRESULT GetBalance(out float pflBalance) mut => VT.GetBalance(ref this, out pflBalance);
			public HRESULT SetBalance(float flBalance) mut => VT.SetBalance(ref this, flBalance);
			public HRESULT GetMute(out BOOL pfMute) mut => VT.GetMute(ref this, out pfMute);
			public HRESULT SetMute(BOOL fMute) mut => VT.SetMute(ref this, fMute);
			public HRESULT GetNativeVideoSize(SIZE* pszVideo, SIZE* pszARVideo) mut => VT.GetNativeVideoSize(ref this, pszVideo, pszARVideo);
			public HRESULT GetIdealVideoSize(SIZE* pszMin, SIZE* pszMax) mut => VT.GetIdealVideoSize(ref this, pszMin, pszMax);
			public HRESULT SetVideoSourceRect(in MFVideoNormalizedRect pnrcSource) mut => VT.SetVideoSourceRect(ref this, pnrcSource);
			public HRESULT GetVideoSourceRect(out MFVideoNormalizedRect pnrcSource) mut => VT.GetVideoSourceRect(ref this, out pnrcSource);
			public HRESULT SetAspectRatioMode(uint32 dwAspectRatioMode) mut => VT.SetAspectRatioMode(ref this, dwAspectRatioMode);
			public HRESULT GetAspectRatioMode(out uint32 pdwAspectRatioMode) mut => VT.GetAspectRatioMode(ref this, out pdwAspectRatioMode);
			public HRESULT GetVideoWindow(out HWND phwndVideo) mut => VT.GetVideoWindow(ref this, out phwndVideo);
			public HRESULT UpdateVideo() mut => VT.UpdateVideo(ref this);
			public HRESULT SetBorderColor(uint32 Clr) mut => VT.SetBorderColor(ref this, Clr);
			public HRESULT GetBorderColor(out uint32 pClr) mut => VT.GetBorderColor(ref this, out pClr);
			public HRESULT InsertEffect(ref IUnknown pEffect, BOOL fOptional) mut => VT.InsertEffect(ref this, ref pEffect, fOptional);
			public HRESULT RemoveEffect(ref IUnknown pEffect) mut => VT.RemoveEffect(ref this, ref pEffect);
			public HRESULT RemoveAllEffects() mut => VT.RemoveAllEffects(ref this);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self) Play;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self) FrameStep;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, in Guid guidPositionType, in PROPVARIANT pvPositionValue) SetPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, in Guid guidPositionType, out PROPVARIANT pvPositionValue) GetPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, in Guid guidPositionType, out PROPVARIANT pvDurationValue) GetDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, float flRate) SetRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, out float pflRate) GetRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, BOOL fForwardDirection, out float pflSlowestRate, out float pflFastestRate) GetSupportedRates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, out MFP_MEDIAPLAYER_STATE peState) GetState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, PWSTR pwszURL, BOOL fSync, uint dwUserData, IMFPMediaItem** ppMediaItem) CreateMediaItemFromURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, ref IUnknown pIUnknownObj, BOOL fSync, uint dwUserData, IMFPMediaItem** ppMediaItem) CreateMediaItemFromObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, ref IMFPMediaItem pIMFPMediaItem) SetMediaItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self) ClearMediaItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, out IMFPMediaItem* ppIMFPMediaItem) GetMediaItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, out float pflVolume) GetVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, float flVolume) SetVolume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, out float pflBalance) GetBalance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, float flBalance) SetBalance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, out BOOL pfMute) GetMute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, BOOL fMute) SetMute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, SIZE* pszVideo, SIZE* pszARVideo) GetNativeVideoSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, SIZE* pszMin, SIZE* pszMax) GetIdealVideoSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, in MFVideoNormalizedRect pnrcSource) SetVideoSourceRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, out MFVideoNormalizedRect pnrcSource) GetVideoSourceRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, uint32 dwAspectRatioMode) SetAspectRatioMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, out uint32 pdwAspectRatioMode) GetAspectRatioMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, out HWND phwndVideo) GetVideoWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self) UpdateVideo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, uint32 Clr) SetBorderColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, out uint32 pClr) GetBorderColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, ref IUnknown pEffect, BOOL fOptional) InsertEffect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self, ref IUnknown pEffect) RemoveEffect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self) RemoveAllEffects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaPlayer self) Shutdown;
			}
		}
		[CRepr]
		public struct IMFPMediaItem : IUnknown
		{
			public const new Guid IID = .(0x90eb3e6b, 0xecbf, 0x45cc, 0xb1, 0xda, 0xc6, 0xfe, 0x3e, 0xa7, 0x0d, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMediaPlayer(out IMFPMediaPlayer* ppMediaPlayer) mut => VT.GetMediaPlayer(ref this, out ppMediaPlayer);
			public HRESULT GetURL(out PWSTR ppwszURL) mut => VT.GetURL(ref this, out ppwszURL);
			public HRESULT GetObject(out IUnknown* ppIUnknown) mut => VT.GetObject(ref this, out ppIUnknown);
			public HRESULT GetUserData(out uint pdwUserData) mut => VT.GetUserData(ref this, out pdwUserData);
			public HRESULT SetUserData(uint dwUserData) mut => VT.SetUserData(ref this, dwUserData);
			public HRESULT GetStartStopPosition(Guid* pguidStartPositionType, PROPVARIANT* pvStartValue, Guid* pguidStopPositionType, PROPVARIANT* pvStopValue) mut => VT.GetStartStopPosition(ref this, pguidStartPositionType, pvStartValue, pguidStopPositionType, pvStopValue);
			public HRESULT SetStartStopPosition(Guid* pguidStartPositionType, PROPVARIANT* pvStartValue, Guid* pguidStopPositionType, PROPVARIANT* pvStopValue) mut => VT.SetStartStopPosition(ref this, pguidStartPositionType, pvStartValue, pguidStopPositionType, pvStopValue);
			public HRESULT HasVideo(BOOL* pfHasVideo, BOOL* pfSelected) mut => VT.HasVideo(ref this, pfHasVideo, pfSelected);
			public HRESULT HasAudio(BOOL* pfHasAudio, BOOL* pfSelected) mut => VT.HasAudio(ref this, pfHasAudio, pfSelected);
			public HRESULT IsProtected(out BOOL pfProtected) mut => VT.IsProtected(ref this, out pfProtected);
			public HRESULT GetDuration(in Guid guidPositionType, out PROPVARIANT pvDurationValue) mut => VT.GetDuration(ref this, guidPositionType, out pvDurationValue);
			public HRESULT GetNumberOfStreams(out uint32 pdwStreamCount) mut => VT.GetNumberOfStreams(ref this, out pdwStreamCount);
			public HRESULT GetStreamSelection(uint32 dwStreamIndex, out BOOL pfEnabled) mut => VT.GetStreamSelection(ref this, dwStreamIndex, out pfEnabled);
			public HRESULT SetStreamSelection(uint32 dwStreamIndex, BOOL fEnabled) mut => VT.SetStreamSelection(ref this, dwStreamIndex, fEnabled);
			public HRESULT GetStreamAttribute(uint32 dwStreamIndex, in Guid guidMFAttribute, out PROPVARIANT pvValue) mut => VT.GetStreamAttribute(ref this, dwStreamIndex, guidMFAttribute, out pvValue);
			public HRESULT GetPresentationAttribute(in Guid guidMFAttribute, out PROPVARIANT pvValue) mut => VT.GetPresentationAttribute(ref this, guidMFAttribute, out pvValue);
			public HRESULT GetCharacteristics(out uint32 pCharacteristics) mut => VT.GetCharacteristics(ref this, out pCharacteristics);
			public HRESULT SetStreamSink(uint32 dwStreamIndex, IUnknown* pMediaSink) mut => VT.SetStreamSink(ref this, dwStreamIndex, pMediaSink);
			public HRESULT GetMetadata(out IPropertyStore* ppMetadataStore) mut => VT.GetMetadata(ref this, out ppMetadataStore);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, out IMFPMediaPlayer* ppMediaPlayer) GetMediaPlayer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, out PWSTR ppwszURL) GetURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, out IUnknown* ppIUnknown) GetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, out uint pdwUserData) GetUserData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, uint dwUserData) SetUserData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, Guid* pguidStartPositionType, PROPVARIANT* pvStartValue, Guid* pguidStopPositionType, PROPVARIANT* pvStopValue) GetStartStopPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, Guid* pguidStartPositionType, PROPVARIANT* pvStartValue, Guid* pguidStopPositionType, PROPVARIANT* pvStopValue) SetStartStopPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, BOOL* pfHasVideo, BOOL* pfSelected) HasVideo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, BOOL* pfHasAudio, BOOL* pfSelected) HasAudio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, out BOOL pfProtected) IsProtected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, in Guid guidPositionType, out PROPVARIANT pvDurationValue) GetDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, out uint32 pdwStreamCount) GetNumberOfStreams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, uint32 dwStreamIndex, out BOOL pfEnabled) GetStreamSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, uint32 dwStreamIndex, BOOL fEnabled) SetStreamSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, uint32 dwStreamIndex, in Guid guidMFAttribute, out PROPVARIANT pvValue) GetStreamAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, in Guid guidMFAttribute, out PROPVARIANT pvValue) GetPresentationAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, out uint32 pCharacteristics) GetCharacteristics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, uint32 dwStreamIndex, IUnknown* pMediaSink) SetStreamSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFPMediaItem self, out IPropertyStore* ppMetadataStore) GetMetadata;
			}
		}
		[CRepr]
		public struct IMFPMediaPlayerCallback : IUnknown
		{
			public const new Guid IID = .(0x766c8ffb, 0x5fdb, 0x4fea, 0xa2, 0x8d, 0xb9, 0x12, 0x99, 0x6f, 0x51, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnMediaPlayerEvent(ref MFP_EVENT_HEADER pEventHeader) mut => VT.OnMediaPlayerEvent(ref this, ref pEventHeader);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IMFPMediaPlayerCallback self, ref MFP_EVENT_HEADER pEventHeader) OnMediaPlayerEvent;
			}
		}
		[CRepr]
		public struct IMFSharingEngineClassFactory : IUnknown
		{
			public const new Guid IID = .(0x2ba61f92, 0x8305, 0x413b, 0x97, 0x33, 0xfa, 0xf1, 0x5f, 0x25, 0x93, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstance(uint32 dwFlags, IMFAttributes* pAttr, out IUnknown* ppEngine) mut => VT.CreateInstance(ref this, dwFlags, pAttr, out ppEngine);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSharingEngineClassFactory self, uint32 dwFlags, IMFAttributes* pAttr, out IUnknown* ppEngine) CreateInstance;
			}
		}
		[CRepr]
		public struct IMFMediaSharingEngine : IMFMediaEngine
		{
			public const new Guid IID = .(0x8d3ce1bf, 0x2367, 0x40e0, 0x9e, 0xee, 0x40, 0xd3, 0x77, 0xcc, 0x1b, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDevice(out DEVICE_INFO pDevice) mut => VT.GetDevice(ref this, out pDevice);

			[CRepr]
			public struct VTable : IMFMediaEngine.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSharingEngine self, out DEVICE_INFO pDevice) GetDevice;
			}
		}
		[CRepr]
		public struct IMFMediaSharingEngineClassFactory : IUnknown
		{
			public const new Guid IID = .(0x524d2bc4, 0xb2b1, 0x4fe5, 0x8f, 0xac, 0xfa, 0x4e, 0x45, 0x12, 0xb4, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstance(uint32 dwFlags, ref IMFAttributes pAttr, out IMFMediaSharingEngine* ppEngine) mut => VT.CreateInstance(ref this, dwFlags, ref pAttr, out ppEngine);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFMediaSharingEngineClassFactory self, uint32 dwFlags, ref IMFAttributes pAttr, out IMFMediaSharingEngine* ppEngine) CreateInstance;
			}
		}
		[CRepr]
		public struct IMFImageSharingEngine : IUnknown
		{
			public const new Guid IID = .(0xcfa0ae8e, 0x7e1c, 0x44d2, 0xae, 0x68, 0xfc, 0x4c, 0x14, 0x8a, 0x63, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSource(ref IUnknown pStream) mut => VT.SetSource(ref this, ref pStream);
			public HRESULT GetDevice(out DEVICE_INFO pDevice) mut => VT.GetDevice(ref this, out pDevice);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFImageSharingEngine self, ref IUnknown pStream) SetSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFImageSharingEngine self, out DEVICE_INFO pDevice) GetDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFImageSharingEngine self) Shutdown;
			}
		}
		[CRepr]
		public struct IMFImageSharingEngineClassFactory : IUnknown
		{
			public const new Guid IID = .(0x1fc55727, 0xa7fb, 0x4fc8, 0x83, 0xae, 0x8a, 0xf0, 0x24, 0x99, 0x0a, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstanceFromUDN(BSTR pUniqueDeviceName, out IMFImageSharingEngine* ppEngine) mut => VT.CreateInstanceFromUDN(ref this, pUniqueDeviceName, out ppEngine);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFImageSharingEngineClassFactory self, BSTR pUniqueDeviceName, out IMFImageSharingEngine* ppEngine) CreateInstanceFromUDN;
			}
		}
		[CRepr]
		public struct IPlayToControl : IUnknown
		{
			public const new Guid IID = .(0x607574eb, 0xf4b6, 0x45c1, 0xb0, 0x8c, 0xcb, 0x71, 0x51, 0x22, 0x90, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect(ref IMFSharingEngineClassFactory pFactory) mut => VT.Connect(ref this, ref pFactory);
			public HRESULT Disconnect() mut => VT.Disconnect(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPlayToControl self, ref IMFSharingEngineClassFactory pFactory) Connect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPlayToControl self) Disconnect;
			}
		}
		[CRepr]
		public struct IPlayToControlWithCapabilities : IPlayToControl
		{
			public const new Guid IID = .(0xaa9dd80f, 0xc50a, 0x4220, 0x91, 0xc1, 0x33, 0x22, 0x87, 0xf8, 0x2a, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCapabilities(out PLAYTO_SOURCE_CREATEFLAGS pCapabilities) mut => VT.GetCapabilities(ref this, out pCapabilities);

			[CRepr]
			public struct VTable : IPlayToControl.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPlayToControlWithCapabilities self, out PLAYTO_SOURCE_CREATEFLAGS pCapabilities) GetCapabilities;
			}
		}
		[CRepr]
		public struct IPlayToSourceClassFactory : IUnknown
		{
			public const new Guid IID = .(0x842b32a3, 0x9b9b, 0x4d1c, 0xb3, 0xf3, 0x49, 0x19, 0x32, 0x48, 0xa5, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstance(uint32 dwFlags, ref IPlayToControl pControl, out IInspectable* ppSource) mut => VT.CreateInstance(ref this, dwFlags, ref pControl, out ppSource);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPlayToSourceClassFactory self, uint32 dwFlags, ref IPlayToControl pControl, out IInspectable* ppSource) CreateInstance;
			}
		}
		[CRepr]
		public struct IEVRVideoStreamControl : IUnknown
		{
			public const new Guid IID = .(0xd0cfe38b, 0x93e7, 0x4772, 0x89, 0x57, 0x04, 0x00, 0xc4, 0x9a, 0x44, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetStreamActiveState(BOOL fActive) mut => VT.SetStreamActiveState(ref this, fActive);
			public HRESULT GetStreamActiveState(out BOOL lpfActive) mut => VT.GetStreamActiveState(ref this, out lpfActive);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEVRVideoStreamControl self, BOOL fActive) SetStreamActiveState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEVRVideoStreamControl self, out BOOL lpfActive) GetStreamActiveState;
			}
		}
		[CRepr]
		public struct IMFVideoProcessor : IUnknown
		{
			public const new Guid IID = .(0x6ab0000c, 0xfece, 0x4d1f, 0xa2, 0xac, 0xa9, 0x57, 0x35, 0x30, 0x65, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAvailableVideoProcessorModes(out uint32 lpdwNumProcessingModes, Guid** ppVideoProcessingModes) mut => VT.GetAvailableVideoProcessorModes(ref this, out lpdwNumProcessingModes, ppVideoProcessingModes);
			public HRESULT GetVideoProcessorCaps(ref Guid lpVideoProcessorMode, out DXVA2_VideoProcessorCaps lpVideoProcessorCaps) mut => VT.GetVideoProcessorCaps(ref this, ref lpVideoProcessorMode, out lpVideoProcessorCaps);
			public HRESULT GetVideoProcessorMode(out Guid lpMode) mut => VT.GetVideoProcessorMode(ref this, out lpMode);
			public HRESULT SetVideoProcessorMode(ref Guid lpMode) mut => VT.SetVideoProcessorMode(ref this, ref lpMode);
			public HRESULT GetProcAmpRange(uint32 dwProperty, out DXVA2_ValueRange pPropRange) mut => VT.GetProcAmpRange(ref this, dwProperty, out pPropRange);
			public HRESULT GetProcAmpValues(uint32 dwFlags, out DXVA2_ProcAmpValues Values) mut => VT.GetProcAmpValues(ref this, dwFlags, out Values);
			public HRESULT SetProcAmpValues(uint32 dwFlags, ref DXVA2_ProcAmpValues pValues) mut => VT.SetProcAmpValues(ref this, dwFlags, ref pValues);
			public HRESULT GetFilteringRange(uint32 dwProperty, out DXVA2_ValueRange pPropRange) mut => VT.GetFilteringRange(ref this, dwProperty, out pPropRange);
			public HRESULT GetFilteringValue(uint32 dwProperty, out DXVA2_Fixed32 pValue) mut => VT.GetFilteringValue(ref this, dwProperty, out pValue);
			public HRESULT SetFilteringValue(uint32 dwProperty, ref DXVA2_Fixed32 pValue) mut => VT.SetFilteringValue(ref this, dwProperty, ref pValue);
			public HRESULT GetBackgroundColor(out uint32 lpClrBkg) mut => VT.GetBackgroundColor(ref this, out lpClrBkg);
			public HRESULT SetBackgroundColor(uint32 ClrBkg) mut => VT.SetBackgroundColor(ref this, ClrBkg);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessor self, out uint32 lpdwNumProcessingModes, Guid** ppVideoProcessingModes) GetAvailableVideoProcessorModes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessor self, ref Guid lpVideoProcessorMode, out DXVA2_VideoProcessorCaps lpVideoProcessorCaps) GetVideoProcessorCaps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessor self, out Guid lpMode) GetVideoProcessorMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessor self, ref Guid lpMode) SetVideoProcessorMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessor self, uint32 dwProperty, out DXVA2_ValueRange pPropRange) GetProcAmpRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessor self, uint32 dwFlags, out DXVA2_ProcAmpValues Values) GetProcAmpValues;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessor self, uint32 dwFlags, ref DXVA2_ProcAmpValues pValues) SetProcAmpValues;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessor self, uint32 dwProperty, out DXVA2_ValueRange pPropRange) GetFilteringRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessor self, uint32 dwProperty, out DXVA2_Fixed32 pValue) GetFilteringValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessor self, uint32 dwProperty, ref DXVA2_Fixed32 pValue) SetFilteringValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessor self, out uint32 lpClrBkg) GetBackgroundColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoProcessor self, uint32 ClrBkg) SetBackgroundColor;
			}
		}
		[CRepr]
		public struct IMFVideoMixerBitmap : IUnknown
		{
			public const new Guid IID = .(0x814c7b20, 0x0fdb, 0x4eec, 0xaf, 0x8f, 0xf9, 0x57, 0xc8, 0xf6, 0x9e, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAlphaBitmap(in MFVideoAlphaBitmap pBmpParms) mut => VT.SetAlphaBitmap(ref this, pBmpParms);
			public HRESULT ClearAlphaBitmap() mut => VT.ClearAlphaBitmap(ref this);
			public HRESULT UpdateAlphaBitmapParameters(in MFVideoAlphaBitmapParams pBmpParms) mut => VT.UpdateAlphaBitmapParameters(ref this, pBmpParms);
			public HRESULT GetAlphaBitmapParameters(out MFVideoAlphaBitmapParams pBmpParms) mut => VT.GetAlphaBitmapParameters(ref this, out pBmpParms);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoMixerBitmap self, in MFVideoAlphaBitmap pBmpParms) SetAlphaBitmap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoMixerBitmap self) ClearAlphaBitmap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoMixerBitmap self, in MFVideoAlphaBitmapParams pBmpParms) UpdateAlphaBitmapParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVideoMixerBitmap self, out MFVideoAlphaBitmapParams pBmpParms) GetAlphaBitmapParameters;
			}
		}
		[CRepr]
		public struct IAdvancedMediaCaptureInitializationSettings : IUnknown
		{
			public const new Guid IID = .(0x3de21209, 0x8ba6, 0x4f2a, 0xa5, 0x77, 0x28, 0x19, 0xb5, 0x6f, 0xf1, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDirectxDeviceManager(ref IMFDXGIDeviceManager value) mut => VT.SetDirectxDeviceManager(ref this, ref value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAdvancedMediaCaptureInitializationSettings self, ref IMFDXGIDeviceManager value) SetDirectxDeviceManager;
			}
		}
		[CRepr]
		public struct IAdvancedMediaCaptureSettings : IUnknown
		{
			public const new Guid IID = .(0x24e0485f, 0xa33e, 0x4aa1, 0xb5, 0x64, 0x60, 0x19, 0xb1, 0xd1, 0x4f, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDirectxDeviceManager(out IMFDXGIDeviceManager* value) mut => VT.GetDirectxDeviceManager(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAdvancedMediaCaptureSettings self, out IMFDXGIDeviceManager* value) GetDirectxDeviceManager;
			}
		}
		[CRepr]
		public struct IAdvancedMediaCapture : IUnknown
		{
			public const new Guid IID = .(0xd0751585, 0xd216, 0x4344, 0xb5, 0xbf, 0x46, 0x3b, 0x68, 0xf9, 0x77, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAdvancedMediaCaptureSettings(out IAdvancedMediaCaptureSettings* value) mut => VT.GetAdvancedMediaCaptureSettings(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAdvancedMediaCapture self, out IAdvancedMediaCaptureSettings* value) GetAdvancedMediaCaptureSettings;
			}
		}
		[CRepr]
		public struct IMFSpatialAudioObjectBuffer : IMFMediaBuffer
		{
			public const new Guid IID = .(0xd396ec8c, 0x605e, 0x4249, 0x97, 0x8d, 0x72, 0xad, 0x1c, 0x31, 0x28, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetID(uint32 u32ID) mut => VT.SetID(ref this, u32ID);
			public HRESULT GetID(out uint32 pu32ID) mut => VT.GetID(ref this, out pu32ID);
			public HRESULT SetType(AudioObjectType type) mut => VT.SetType(ref this, type);
			public HRESULT ComGetType(out AudioObjectType pType) mut => VT.ComGetType(ref this, out pType);
			public HRESULT GetMetadataItems(out ISpatialAudioMetadataItems* ppMetadataItems) mut => VT.GetMetadataItems(ref this, out ppMetadataItems);

			[CRepr]
			public struct VTable : IMFMediaBuffer.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSpatialAudioObjectBuffer self, uint32 u32ID) SetID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSpatialAudioObjectBuffer self, out uint32 pu32ID) GetID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSpatialAudioObjectBuffer self, AudioObjectType type) SetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSpatialAudioObjectBuffer self, out AudioObjectType pType) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSpatialAudioObjectBuffer self, out ISpatialAudioMetadataItems* ppMetadataItems) GetMetadataItems;
			}
		}
		[CRepr]
		public struct IMFSpatialAudioSample : IMFSample
		{
			public const new Guid IID = .(0xabf28a9b, 0x3393, 0x4290, 0xba, 0x79, 0x5f, 0xfc, 0x46, 0xd9, 0x86, 0xb2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObjectCount(out uint32 pdwObjectCount) mut => VT.GetObjectCount(ref this, out pdwObjectCount);
			public HRESULT AddSpatialAudioObject(ref IMFSpatialAudioObjectBuffer pAudioObjBuffer) mut => VT.AddSpatialAudioObject(ref this, ref pAudioObjBuffer);
			public HRESULT GetSpatialAudioObjectByIndex(uint32 dwIndex, out IMFSpatialAudioObjectBuffer* ppAudioObjBuffer) mut => VT.GetSpatialAudioObjectByIndex(ref this, dwIndex, out ppAudioObjBuffer);

			[CRepr]
			public struct VTable : IMFSample.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSpatialAudioSample self, out uint32 pdwObjectCount) GetObjectCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSpatialAudioSample self, ref IMFSpatialAudioObjectBuffer pAudioObjBuffer) AddSpatialAudioObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFSpatialAudioSample self, uint32 dwIndex, out IMFSpatialAudioObjectBuffer* ppAudioObjBuffer) GetSpatialAudioObjectByIndex;
			}
		}
		[CRepr]
		public struct IMFContentDecryptionModuleSession : IUnknown
		{
			public const new Guid IID = .(0x4e233efd, 0x1dd2, 0x49e8, 0xb5, 0x77, 0xd6, 0x3e, 0xee, 0x4c, 0x0d, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSessionId(out PWSTR sessionId) mut => VT.GetSessionId(ref this, out sessionId);
			public HRESULT GetExpiration(out double expiration) mut => VT.GetExpiration(ref this, out expiration);
			public HRESULT GetKeyStatuses(MFMediaKeyStatus** keyStatuses, out uint32 numKeyStatuses) mut => VT.GetKeyStatuses(ref this, keyStatuses, out numKeyStatuses);
			public HRESULT Load(PWSTR sessionId, out BOOL loaded) mut => VT.Load(ref this, sessionId, out loaded);
			public HRESULT GenerateRequest(PWSTR initDataType, uint8* initData, uint32 initDataSize) mut => VT.GenerateRequest(ref this, initDataType, initData, initDataSize);
			public HRESULT Update(uint8* response, uint32 responseSize) mut => VT.Update(ref this, response, responseSize);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT Remove() mut => VT.Remove(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleSession self, out PWSTR sessionId) GetSessionId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleSession self, out double expiration) GetExpiration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleSession self, MFMediaKeyStatus** keyStatuses, out uint32 numKeyStatuses) GetKeyStatuses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleSession self, PWSTR sessionId, out BOOL loaded) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleSession self, PWSTR initDataType, uint8* initData, uint32 initDataSize) GenerateRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleSession self, uint8* response, uint32 responseSize) Update;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleSession self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleSession self) Remove;
			}
		}
		[CRepr]
		public struct IMFContentDecryptionModuleSessionCallbacks : IUnknown
		{
			public const new Guid IID = .(0x3f96ee40, 0xad81, 0x4096, 0x84, 0x70, 0x59, 0xa4, 0xb7, 0x70, 0xf8, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT KeyMessage(MF_MEDIAKEYSESSION_MESSAGETYPE messageType, uint8* message, uint32 messageSize, PWSTR destinationURL) mut => VT.KeyMessage(ref this, messageType, message, messageSize, destinationURL);
			public HRESULT KeyStatusChanged() mut => VT.KeyStatusChanged(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleSessionCallbacks self, MF_MEDIAKEYSESSION_MESSAGETYPE messageType, uint8* message, uint32 messageSize, PWSTR destinationURL) KeyMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleSessionCallbacks self) KeyStatusChanged;
			}
		}
		[CRepr]
		public struct IMFContentDecryptionModule : IUnknown
		{
			public const new Guid IID = .(0x87be986c, 0x10be, 0x4943, 0xbf, 0x48, 0x4b, 0x54, 0xce, 0x19, 0x83, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetContentEnabler(ref IMFContentEnabler contentEnabler, ref IMFAsyncResult result) mut => VT.SetContentEnabler(ref this, ref contentEnabler, ref result);
			public HRESULT GetSuspendNotify(out IMFCdmSuspendNotify* notify) mut => VT.GetSuspendNotify(ref this, out notify);
			public HRESULT SetPMPHostApp(ref IMFPMPHostApp pmpHostApp) mut => VT.SetPMPHostApp(ref this, ref pmpHostApp);
			public HRESULT CreateSession(MF_MEDIAKEYSESSION_TYPE sessionType, ref IMFContentDecryptionModuleSessionCallbacks callbacks, out IMFContentDecryptionModuleSession* session) mut => VT.CreateSession(ref this, sessionType, ref callbacks, out session);
			public HRESULT SetServerCertificate(uint8* certificate, uint32 certificateSize) mut => VT.SetServerCertificate(ref this, certificate, certificateSize);
			public HRESULT CreateTrustedInput(uint8* contentInitData, uint32 contentInitDataSize, out IMFTrustedInput* trustedInput) mut => VT.CreateTrustedInput(ref this, contentInitData, contentInitDataSize, out trustedInput);
			public HRESULT GetProtectionSystemIds(Guid** systemIds, out uint32 count) mut => VT.GetProtectionSystemIds(ref this, systemIds, out count);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModule self, ref IMFContentEnabler contentEnabler, ref IMFAsyncResult result) SetContentEnabler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModule self, out IMFCdmSuspendNotify* notify) GetSuspendNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModule self, ref IMFPMPHostApp pmpHostApp) SetPMPHostApp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModule self, MF_MEDIAKEYSESSION_TYPE sessionType, ref IMFContentDecryptionModuleSessionCallbacks callbacks, out IMFContentDecryptionModuleSession* session) CreateSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModule self, uint8* certificate, uint32 certificateSize) SetServerCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModule self, uint8* contentInitData, uint32 contentInitDataSize, out IMFTrustedInput* trustedInput) CreateTrustedInput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModule self, Guid** systemIds, out uint32 count) GetProtectionSystemIds;
			}
		}
		[CRepr]
		public struct IMFContentDecryptionModuleAccess : IUnknown
		{
			public const new Guid IID = .(0xa853d1f4, 0xe2a0, 0x4303, 0x9e, 0xdc, 0xf1, 0xa6, 0x8e, 0xe4, 0x31, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateContentDecryptionModule(ref IPropertyStore contentDecryptionModuleProperties, out IMFContentDecryptionModule* contentDecryptionModule) mut => VT.CreateContentDecryptionModule(ref this, ref contentDecryptionModuleProperties, out contentDecryptionModule);
			public HRESULT GetConfiguration(out IPropertyStore* configuration) mut => VT.GetConfiguration(ref this, out configuration);
			public HRESULT GetKeySystem(out PWSTR keySystem) mut => VT.GetKeySystem(ref this, out keySystem);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleAccess self, ref IPropertyStore contentDecryptionModuleProperties, out IMFContentDecryptionModule* contentDecryptionModule) CreateContentDecryptionModule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleAccess self, out IPropertyStore* configuration) GetConfiguration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleAccess self, out PWSTR keySystem) GetKeySystem;
			}
		}
		[CRepr]
		public struct IMFContentDecryptionModuleFactory : IUnknown
		{
			public const new Guid IID = .(0x7d5abf16, 0x4cbb, 0x4e08, 0xb9, 0x77, 0x9b, 0xa5, 0x90, 0x49, 0x94, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public BOOL IsTypeSupported(PWSTR keySystem, PWSTR contentType) mut => VT.IsTypeSupported(ref this, keySystem, contentType);
			public HRESULT CreateContentDecryptionModuleAccess(PWSTR keySystem, IPropertyStore** configurations, uint32 numConfigurations, out IMFContentDecryptionModuleAccess* contentDecryptionModuleAccess) mut => VT.CreateContentDecryptionModuleAccess(ref this, keySystem, configurations, numConfigurations, out contentDecryptionModuleAccess);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] BOOL(ref IMFContentDecryptionModuleFactory self, PWSTR keySystem, PWSTR contentType) IsTypeSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFContentDecryptionModuleFactory self, PWSTR keySystem, IPropertyStore** configurations, uint32 numConfigurations, out IMFContentDecryptionModuleAccess* contentDecryptionModuleAccess) CreateContentDecryptionModuleAccess;
			}
		}
		[CRepr]
		public struct IMFCameraSyncObject : IUnknown
		{
			public const new Guid IID = .(0x6338b23a, 0x3042, 0x49d2, 0xa3, 0xea, 0xec, 0x0f, 0xed, 0x81, 0x54, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WaitOnSignal(uint32 timeOutInMs) mut => VT.WaitOnSignal(ref this, timeOutInMs);
			public void Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFCameraSyncObject self, uint32 timeOutInMs) WaitOnSignal;
				public new function [CallingConvention(.Stdcall)] void(ref IMFCameraSyncObject self) Shutdown;
			}
		}
		[CRepr]
		public struct IMFVirtualCamera : IMFAttributes
		{
			public const new Guid IID = .(0x1c08a864, 0xef6c, 0x4c75, 0xaf, 0x59, 0x5f, 0x2d, 0x68, 0xda, 0x95, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddDeviceSourceInfo(PWSTR DeviceSourceInfo) mut => VT.AddDeviceSourceInfo(ref this, DeviceSourceInfo);
			public HRESULT AddProperty(in DEVPROPKEY pKey, uint32 Type, in uint8 pbData, uint32 cbData) mut => VT.AddProperty(ref this, pKey, Type, pbData, cbData);
			public HRESULT AddRegistryEntry(PWSTR EntryName, PWSTR SubkeyPath, uint32 dwRegType, in uint8 pbData, uint32 cbData) mut => VT.AddRegistryEntry(ref this, EntryName, SubkeyPath, dwRegType, pbData, cbData);
			public HRESULT Start(IMFAsyncCallback* pCallback) mut => VT.Start(ref this, pCallback);
			public HRESULT Stop() mut => VT.Stop(ref this);
			public HRESULT Remove() mut => VT.Remove(ref this);
			public HRESULT GetMediaSource(out IMFMediaSource* ppMediaSource) mut => VT.GetMediaSource(ref this, out ppMediaSource);
			public HRESULT SendCameraProperty(in Guid propertySet, uint32 propertyId, uint32 propertyFlags, void* propertyPayload, uint32 propertyPayloadLength, void* data, uint32 dataLength, out uint32 dataWritten) mut => VT.SendCameraProperty(ref this, propertySet, propertyId, propertyFlags, propertyPayload, propertyPayloadLength, data, dataLength, out dataWritten);
			public HRESULT CreateSyncEvent(in Guid kseventSet, uint32 kseventId, uint32 kseventFlags, HANDLE eventHandle, out IMFCameraSyncObject* cameraSyncObject) mut => VT.CreateSyncEvent(ref this, kseventSet, kseventId, kseventFlags, eventHandle, out cameraSyncObject);
			public HRESULT CreateSyncSemaphore(in Guid kseventSet, uint32 kseventId, uint32 kseventFlags, HANDLE semaphoreHandle, int32 semaphoreAdjustment, out IMFCameraSyncObject* cameraSyncObject) mut => VT.CreateSyncSemaphore(ref this, kseventSet, kseventId, kseventFlags, semaphoreHandle, semaphoreAdjustment, out cameraSyncObject);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IMFAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVirtualCamera self, PWSTR DeviceSourceInfo) AddDeviceSourceInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVirtualCamera self, in DEVPROPKEY pKey, uint32 Type, in uint8 pbData, uint32 cbData) AddProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVirtualCamera self, PWSTR EntryName, PWSTR SubkeyPath, uint32 dwRegType, in uint8 pbData, uint32 cbData) AddRegistryEntry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVirtualCamera self, IMFAsyncCallback* pCallback) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVirtualCamera self) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVirtualCamera self) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVirtualCamera self, out IMFMediaSource* ppMediaSource) GetMediaSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVirtualCamera self, in Guid propertySet, uint32 propertyId, uint32 propertyFlags, void* propertyPayload, uint32 propertyPayloadLength, void* data, uint32 dataLength, out uint32 dataWritten) SendCameraProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVirtualCamera self, in Guid kseventSet, uint32 kseventId, uint32 kseventFlags, HANDLE eventHandle, out IMFCameraSyncObject* cameraSyncObject) CreateSyncEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVirtualCamera self, in Guid kseventSet, uint32 kseventId, uint32 kseventFlags, HANDLE semaphoreHandle, int32 semaphoreAdjustment, out IMFCameraSyncObject* cameraSyncObject) CreateSyncSemaphore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMFVirtualCamera self) Shutdown;
			}
		}
		
		// --- Functions ---
		
		[Import("dxva2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DXVAHD_CreateDevice(ref IDirect3DDevice9Ex pD3DDevice, in DXVAHD_CONTENT_DESC pContentDesc, DXVAHD_DEVICE_USAGE Usage, PDXVAHDSW_Plugin pPlugin, out IDXVAHD_Device* ppDevice);
		[Import("dxva2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DXVA2CreateDirect3DDeviceManager9(out uint32 pResetToken, out IDirect3DDeviceManager9* ppDeviceManager);
		[Import("dxva2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DXVA2CreateVideoService(ref IDirect3DDevice9 pDD, in Guid riid, void** ppService);
		[Import("dxva2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OPMGetVideoOutputsFromHMONITOR(HMONITOR hMonitor, OPM_VIDEO_OUTPUT_SEMANTICS vos, out uint32 pulNumVideoOutputs, out IOPMVideoOutput** pppOPMVideoOutputArray);
		[Import("dxva2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OPMGetVideoOutputForTarget(ref LUID pAdapterLuid, uint32 VidPnTarget, OPM_VIDEO_OUTPUT_SEMANTICS vos, out IOPMVideoOutput* ppOPMVideoOutput);
		[Import("dxva2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OPMGetVideoOutputsFromIDirect3DDevice9Object(ref IDirect3DDevice9 pDirect3DDevice9, OPM_VIDEO_OUTPUT_SEMANTICS vos, out uint32 pulNumVideoOutputs, out IOPMVideoOutput** pppOPMVideoOutputArray);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFSerializeAttributesToStream(ref IMFAttributes pAttr, uint32 dwOptions, ref IStream pStm);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFDeserializeAttributesFromStream(ref IMFAttributes pAttr, uint32 dwOptions, ref IStream pStm);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTransformActivate(out IMFActivate* ppActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaSession(ref IMFAttributes pConfiguration, out IMFMediaSession* ppMediaSession);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreatePMPMediaSession(uint32 dwCreationFlags, ref IMFAttributes pConfiguration, out IMFMediaSession* ppMediaSession, IMFActivate** ppEnablerActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSourceResolver(out IMFSourceResolver* ppISourceResolver);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreatePropertyStore(out IPropertyStore* ppStore);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetSupportedSchemes(out PROPVARIANT pPropVarSchemeArray);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetSupportedMimeTypes(out PROPVARIANT pPropVarMimeTypeArray);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTopology(out IMFTopology* ppTopo);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTopologyNode(MF_TOPOLOGY_TYPE NodeType, out IMFTopologyNode* ppNode);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetTopoNodeCurrentType(ref IMFTopologyNode pNode, uint32 dwStreamIndex, BOOL fOutput, out IMFMediaType* ppType);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetService(ref IUnknown punkObject, in Guid guidService, in Guid riid, void** ppvObject);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int64 MFGetSystemTime();
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreatePresentationClock(out IMFPresentationClock* ppPresentationClock);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSystemTimeSource(out IMFPresentationTimeSource* ppSystemTimeSource);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreatePresentationDescriptor(uint32 cStreamDescriptors, IMFStreamDescriptor** apStreamDescriptors, out IMFPresentationDescriptor* ppPresentationDescriptor);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFRequireProtectedEnvironment(ref IMFPresentationDescriptor pPresentationDescriptor);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFSerializePresentationDescriptor(ref IMFPresentationDescriptor pPD, out uint32 pcbData, out uint8* ppbData);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFDeserializePresentationDescriptor(uint32 cbData, uint8* pbData, out IMFPresentationDescriptor* ppPD);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateStreamDescriptor(uint32 dwStreamIdentifier, uint32 cMediaTypes, IMFMediaType** apMediaTypes, out IMFStreamDescriptor* ppDescriptor);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSimpleTypeHandler(out IMFMediaTypeHandler* ppHandler);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFShutdownObject(ref IUnknown pUnk);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAudioRenderer(ref IMFAttributes pAudioAttributes, out IMFMediaSink* ppSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAudioRendererActivate(out IMFActivate* ppActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoRendererActivate(HWND hwndVideo, out IMFActivate* ppActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMPEG4MediaSink(ref IMFByteStream pIByteStream, IMFMediaType* pVideoMediaType, IMFMediaType* pAudioMediaType, out IMFMediaSink* ppIMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreate3GPMediaSink(ref IMFByteStream pIByteStream, IMFMediaType* pVideoMediaType, IMFMediaType* pAudioMediaType, out IMFMediaSink* ppIMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMP3MediaSink(ref IMFByteStream pTargetByteStream, out IMFMediaSink* ppMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAC3MediaSink(ref IMFByteStream pTargetByteStream, ref IMFMediaType pAudioMediaType, out IMFMediaSink* ppMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateADTSMediaSink(ref IMFByteStream pTargetByteStream, ref IMFMediaType pAudioMediaType, out IMFMediaSink* ppMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMuxSink(Guid guidOutputSubType, IMFAttributes* pOutputAttributes, IMFByteStream* pOutputByteStream, out IMFMediaSink* ppMuxSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateFMPEG4MediaSink(ref IMFByteStream pIByteStream, IMFMediaType* pVideoMediaType, IMFMediaType* pAudioMediaType, out IMFMediaSink* ppIMediaSink);
		[Import("mfsrcsnk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAVIMediaSink(ref IMFByteStream pIByteStream, ref IMFMediaType pVideoMediaType, IMFMediaType* pAudioMediaType, out IMFMediaSink* ppIMediaSink);
		[Import("mfsrcsnk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateWAVEMediaSink(ref IMFByteStream pTargetByteStream, ref IMFMediaType pAudioMediaType, out IMFMediaSink* ppMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTopoLoader(out IMFTopoLoader* ppObj);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSampleGrabberSinkActivate(ref IMFMediaType pIMFMediaType, ref IMFSampleGrabberSinkCallback pIMFSampleGrabberSinkCallback, out IMFActivate* ppIActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateStandardQualityManager(out IMFQualityManager* ppQualityManager);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSequencerSource(ref IUnknown pReserved, out IMFSequencerSource* ppSequencerSource);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSequencerSegmentOffset(uint32 dwId, int64 hnsOffset, out PROPVARIANT pvarSegmentOffset);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAggregateSource(ref IMFCollection pSourceCollection, out IMFMediaSource* ppAggSource);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateCredentialCache(out IMFNetCredentialCache* ppCache);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateProxyLocator(PWSTR pszProtocol, ref IPropertyStore pProxyConfig, out IMFNetProxyLocator* ppProxyLocator);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateNetSchemePlugin(in Guid riid, void** ppvHandler);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreatePMPServer(uint32 dwCreationFlags, out IMFPMPServer* ppPMPServer);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateRemoteDesktopPlugin(out IMFRemoteDesktopPlugin* ppPlugin);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateNamedPropertyStore(out INamedPropertyStore* ppStore);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSampleCopierMFT(out IMFTransform* ppCopierMFT);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTranscodeProfile(out IMFTranscodeProfile* ppTranscodeProfile);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTranscodeTopology(ref IMFMediaSource pSrc, PWSTR pwszOutputFilePath, ref IMFTranscodeProfile pProfile, out IMFTopology* ppTranscodeTopo);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTranscodeTopologyFromByteStream(ref IMFMediaSource pSrc, ref IMFByteStream pOutputStream, ref IMFTranscodeProfile pProfile, out IMFTopology* ppTranscodeTopo);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTranscodeGetAudioOutputAvailableTypes(in Guid guidSubType, uint32 dwMFTFlags, IMFAttributes* pCodecConfig, out IMFCollection* ppAvailableTypes);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTranscodeSinkActivate(out IMFActivate* ppActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTrackedSample(out IMFTrackedSample* ppMFSample);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMFByteStreamOnStream(ref IStream pStream, out IMFByteStream* ppByteStream);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateStreamOnMFByteStream(ref IMFByteStream pByteStream, out IStream* ppStream);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMFByteStreamOnStreamEx(ref IUnknown punkStream, out IMFByteStream* ppByteStream);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateStreamOnMFByteStreamEx(ref IMFByteStream pByteStream, in Guid riid, void** ppv);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaTypeFromProperties(ref IUnknown punkStream, out IMFMediaType* ppMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreatePropertiesFromMediaType(ref IMFMediaType pMediaType, in Guid riid, void** ppv);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFEnumDeviceSources(ref IMFAttributes pAttributes, out IMFActivate** pppSourceActivate, out uint32 pcSourceActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateDeviceSource(ref IMFAttributes pAttributes, out IMFMediaSource* ppSource);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateDeviceSourceActivate(ref IMFAttributes pAttributes, out IMFActivate* ppActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateProtectedEnvironmentAccess(out IMFProtectedEnvironmentAccess* ppAccess);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFLoadSignedLibrary(PWSTR pszName, out IMFSignedLibrary* ppLib);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetSystemId(out IMFSystemId* ppId);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetLocalId(in uint8 verifier, uint32 size, out PWSTR id);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateContentProtectionDevice(in Guid ProtectionSystemId, out IMFContentProtectionDevice* ContentProtectionDevice);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFIsContentProtectionDeviceSupported(in Guid ProtectionSystemId, out BOOL isSupported);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateContentDecryptorContext(in Guid guidMediaProtectionSystemId, IMFDXGIDeviceManager* pD3DManager, ref IMFContentProtectionDevice pContentProtectionDevice, out IMFContentDecryptorContext* ppContentDecryptorContext);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSensorGroup(PWSTR SensorGroupSymbolicLink, out IMFSensorGroup* ppSensorGroup);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSensorStream(uint32 StreamId, IMFAttributes* pAttributes, ref IMFCollection pMediaTypeCollection, out IMFSensorStream* ppStream);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSensorProfile(in Guid ProfileType, uint32 ProfileIndex, PWSTR Constraints, out IMFSensorProfile* ppProfile);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSensorProfileCollection(out IMFSensorProfileCollection* ppSensorProfile);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSensorActivityMonitor(ref IMFSensorActivitiesReportCallback pCallback, out IMFSensorActivityMonitor* ppActivityMonitor);
		[Import("mfcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateExtendedCameraIntrinsics(out IMFExtendedCameraIntrinsics* ppExtendedCameraIntrinsics);
		[Import("mfcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateExtendedCameraIntrinsicModel(MFCameraIntrinsic_DistortionModelType distortionModelType, out IMFExtendedCameraIntrinsicModel* ppExtendedCameraIntrinsicModel);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateRelativePanelWatcher(PWSTR videoDeviceId, PWSTR displayMonitorDeviceId, out IMFRelativePanelWatcher* ppRelativePanelWatcher);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateCameraOcclusionStateMonitor(PWSTR symbolicLink, ref IMFCameraOcclusionStateReportCallback callback, out IMFCameraOcclusionStateMonitor* occlusionStateMonitor);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFContentInfo(out IMFASFContentInfo* ppIContentInfo);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFIndexer(out IMFASFIndexer* ppIIndexer);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFIndexerByteStream(ref IMFByteStream pIContentByteStream, uint64 cbIndexStartOffset, out IMFByteStream* pIIndexByteStream);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFSplitter(out IMFASFSplitter* ppISplitter);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFProfile(out IMFASFProfile* ppIProfile);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFProfileFromPresentationDescriptor(ref IMFPresentationDescriptor pIPD, out IMFASFProfile* ppIProfile);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreatePresentationDescriptorFromASFProfile(ref IMFASFProfile pIProfile, out IMFPresentationDescriptor* ppIPD);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFMultiplexer(out IMFASFMultiplexer* ppIMultiplexer);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFStreamSelector(ref IMFASFProfile pIASFProfile, out IMFASFStreamSelector* ppSelector);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFMediaSink(ref IMFByteStream pIByteStream, out IMFMediaSink* ppIMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFMediaSinkActivate(PWSTR pwszFileName, ref IMFASFContentInfo pContentInfo, out IMFActivate* ppIActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateWMVEncoderActivate(ref IMFMediaType pMediaType, ref IPropertyStore pEncodingConfigurationProperties, out IMFActivate* ppActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateWMAEncoderActivate(ref IMFMediaType pMediaType, ref IPropertyStore pEncodingConfigurationProperties, out IMFActivate* ppActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFStreamingMediaSink(ref IMFByteStream pIByteStream, out IMFMediaSink* ppIMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFStreamingMediaSinkActivate(ref IMFActivate pByteStreamActivate, ref IMFASFContentInfo pContentInfo, out IMFActivate* ppIActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateD3D12SynchronizationObject(ref ID3D12Device pDevice, in Guid riid, void** ppvSyncObject);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFStartup(uint32 Version, uint32 dwFlags);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFShutdown();
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFLockPlatform();
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFUnlockPlatform();
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFPutWorkItem(uint32 dwQueue, ref IMFAsyncCallback pCallback, ref IUnknown pState);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFPutWorkItem2(uint32 dwQueue, int32 Priority, ref IMFAsyncCallback pCallback, IUnknown* pState);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFPutWorkItemEx(uint32 dwQueue, ref IMFAsyncResult pResult);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFPutWorkItemEx2(uint32 dwQueue, int32 Priority, ref IMFAsyncResult pResult);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFPutWaitingWorkItem(HANDLE hEvent, int32 Priority, ref IMFAsyncResult pResult, uint64* pKey);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFAllocateSerialWorkQueue(uint32 dwWorkQueue, out uint32 pdwWorkQueue);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFScheduleWorkItemEx(ref IMFAsyncResult pResult, int64 Timeout, uint64* pKey);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFScheduleWorkItem(ref IMFAsyncCallback pCallback, ref IUnknown pState, int64 Timeout, uint64* pKey);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCancelWorkItem(uint64 Key);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetTimerPeriodicity(out uint32 Periodicity);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFAddPeriodicCallback(MFPERIODICCALLBACK Callback, ref IUnknown pContext, uint32* pdwKey);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFRemovePeriodicCallback(uint32 dwKey);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFAllocateWorkQueueEx(MFASYNC_WORKQUEUE_TYPE WorkQueueType, out uint32 pdwWorkQueue);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFAllocateWorkQueue(out uint32 pdwWorkQueue);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFLockWorkQueue(uint32 dwWorkQueue);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFUnlockWorkQueue(uint32 dwWorkQueue);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFBeginRegisterWorkQueueWithMMCSS(uint32 dwWorkQueueId, PWSTR wszClass, uint32 dwTaskId, ref IMFAsyncCallback pDoneCallback, ref IUnknown pDoneState);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFBeginRegisterWorkQueueWithMMCSSEx(uint32 dwWorkQueueId, PWSTR wszClass, uint32 dwTaskId, int32 lPriority, ref IMFAsyncCallback pDoneCallback, ref IUnknown pDoneState);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFEndRegisterWorkQueueWithMMCSS(ref IMFAsyncResult pResult, out uint32 pdwTaskId);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFBeginUnregisterWorkQueueWithMMCSS(uint32 dwWorkQueueId, ref IMFAsyncCallback pDoneCallback, ref IUnknown pDoneState);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFEndUnregisterWorkQueueWithMMCSS(ref IMFAsyncResult pResult);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetWorkQueueMMCSSClass(uint32 dwWorkQueueId, char16* pwszClass, out uint32 pcchClass);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetWorkQueueMMCSSTaskId(uint32 dwWorkQueueId, out uint32 pdwTaskId);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFRegisterPlatformWithMMCSS(PWSTR wszClass, out uint32 pdwTaskId, int32 lPriority);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFUnregisterPlatformFromMMCSS();
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFLockSharedWorkQueue(PWSTR wszClass, int32 BasePriority, out uint32 pdwTaskId, out uint32 pID);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetWorkQueueMMCSSPriority(uint32 dwWorkQueueId, out int32 lPriority);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAsyncResult(ref IUnknown punkObject, ref IMFAsyncCallback pCallback, ref IUnknown punkState, out IMFAsyncResult* ppAsyncResult);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInvokeCallback(ref IMFAsyncResult pAsyncResult);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateFile(MF_FILE_ACCESSMODE AccessMode, MF_FILE_OPENMODE OpenMode, MF_FILE_FLAGS fFlags, PWSTR pwszFileURL, out IMFByteStream* ppIByteStream);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTempFile(MF_FILE_ACCESSMODE AccessMode, MF_FILE_OPENMODE OpenMode, MF_FILE_FLAGS fFlags, out IMFByteStream* ppIByteStream);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFBeginCreateFile(MF_FILE_ACCESSMODE AccessMode, MF_FILE_OPENMODE OpenMode, MF_FILE_FLAGS fFlags, PWSTR pwszFilePath, ref IMFAsyncCallback pCallback, ref IUnknown pState, out IUnknown* ppCancelCookie);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFEndCreateFile(ref IMFAsyncResult pResult, out IMFByteStream* ppFile);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCancelCreateFile(ref IUnknown pCancelCookie);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMemoryBuffer(uint32 cbMaxLength, out IMFMediaBuffer* ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaBufferWrapper(ref IMFMediaBuffer pBuffer, uint32 cbOffset, uint32 dwLength, out IMFMediaBuffer* ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateLegacyMediaBufferOnMFMediaBuffer(IMFSample* pSample, ref IMFMediaBuffer pMFMediaBuffer, uint32 cbOffset, out IMediaBuffer* ppMediaBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern DXGI_FORMAT MFMapDX9FormatToDXGIFormat(uint32 dx9);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MFMapDXGIFormatToDX9Format(DXGI_FORMAT dx11);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFLockDXGIDeviceManager(uint32* pResetToken, out IMFDXGIDeviceManager* ppManager);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFUnlockDXGIDeviceManager();
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateDXSurfaceBuffer(in Guid riid, ref IUnknown punkSurface, BOOL fBottomUpWhenLinear, out IMFMediaBuffer* ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateWICBitmapBuffer(in Guid riid, ref IUnknown punkSurface, out IMFMediaBuffer* ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateDXGISurfaceBuffer(in Guid riid, ref IUnknown punkSurface, uint32 uSubresourceIndex, BOOL fBottomUpWhenLinear, out IMFMediaBuffer* ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoSampleAllocatorEx(in Guid riid, void** ppSampleAllocator);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateDXGIDeviceManager(out uint32 resetToken, out IMFDXGIDeviceManager* ppDeviceManager);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAlignedMemoryBuffer(uint32 cbMaxLength, uint32 cbAligment, out IMFMediaBuffer* ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaEvent(uint32 met, in Guid guidExtendedType, HRESULT hrStatus, PROPVARIANT* pvValue, out IMFMediaEvent* ppEvent);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateEventQueue(out IMFMediaEventQueue* ppMediaEventQueue);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSample(out IMFSample* ppIMFSample);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAttributes(out IMFAttributes* ppMFAttributes, uint32 cInitialSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitAttributesFromBlob(ref IMFAttributes pAttributes, in uint8 pBuf, uint32 cbBufSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetAttributesAsBlobSize(ref IMFAttributes pAttributes, out uint32 pcbBufSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetAttributesAsBlob(ref IMFAttributes pAttributes, out uint8 pBuf, uint32 cbBufSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTRegister(Guid clsidMFT, Guid guidCategory, PWSTR pszName, uint32 Flags, uint32 cInputTypes, MFT_REGISTER_TYPE_INFO* pInputTypes, uint32 cOutputTypes, MFT_REGISTER_TYPE_INFO* pOutputTypes, IMFAttributes* pAttributes);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTUnregister(Guid clsidMFT);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTRegisterLocal(ref IClassFactory pClassFactory, in Guid guidCategory, PWSTR pszName, uint32 Flags, uint32 cInputTypes, MFT_REGISTER_TYPE_INFO* pInputTypes, uint32 cOutputTypes, MFT_REGISTER_TYPE_INFO* pOutputTypes);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTUnregisterLocal(IClassFactory* pClassFactory);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTRegisterLocalByCLSID(in Guid clisdMFT, in Guid guidCategory, PWSTR pszName, uint32 Flags, uint32 cInputTypes, MFT_REGISTER_TYPE_INFO* pInputTypes, uint32 cOutputTypes, MFT_REGISTER_TYPE_INFO* pOutputTypes);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTUnregisterLocalByCLSID(Guid clsidMFT);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTEnum(Guid guidCategory, uint32 Flags, MFT_REGISTER_TYPE_INFO* pInputType, MFT_REGISTER_TYPE_INFO* pOutputType, IMFAttributes* pAttributes, out Guid* ppclsidMFT, out uint32 pcMFTs);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTEnumEx(Guid guidCategory, uint32 Flags, MFT_REGISTER_TYPE_INFO* pInputType, MFT_REGISTER_TYPE_INFO* pOutputType, out IMFActivate** pppMFTActivate, out uint32 pnumMFTActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTEnum2(Guid guidCategory, uint32 Flags, MFT_REGISTER_TYPE_INFO* pInputType, MFT_REGISTER_TYPE_INFO* pOutputType, IMFAttributes* pAttributes, out IMFActivate** pppMFTActivate, out uint32 pnumMFTActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTGetInfo(Guid clsidMFT, PWSTR* pszName, MFT_REGISTER_TYPE_INFO** ppInputTypes, uint32* pcInputTypes, MFT_REGISTER_TYPE_INFO** ppOutputTypes, uint32* pcOutputTypes, IMFAttributes** ppAttributes);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetPluginControl(out IMFPluginControl* ppPluginControl);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetMFTMerit(out IUnknown pMFT, uint32 cbVerifier, in uint8 verifier, out uint32 merit);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFRegisterLocalSchemeHandler(PWSTR szScheme, ref IMFActivate pActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFRegisterLocalByteStreamHandler(PWSTR szFileExtension, PWSTR szMimeType, ref IMFActivate pActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMFByteStreamWrapper(ref IMFByteStream pStream, out IMFByteStream* ppStreamWrapper);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaExtensionActivate(PWSTR szActivatableClassId, IUnknown* pConfiguration, in Guid riid, void** ppvObject);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMuxStreamAttributes(ref IMFCollection pAttributesToMux, out IMFAttributes* ppMuxAttribs);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMuxStreamMediaType(ref IMFCollection pMediaTypesToMux, out IMFMediaType* ppMuxMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMuxStreamSample(ref IMFCollection pSamplesToMux, out IMFSample* ppMuxSample);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFValidateMediaTypeSize(Guid FormatType, uint8* pBlock, uint32 cbSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaType(out IMFMediaType* ppMFType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMFVideoFormatFromMFMediaType(ref IMFMediaType pMFType, out MFVIDEOFORMAT* ppMFVF, uint32* pcbSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateWaveFormatExFromMFMediaType(ref IMFMediaType pMFType, out WAVEFORMATEX* ppWF, uint32* pcbSize, uint32 Flags);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromVideoInfoHeader(ref IMFMediaType pMFType, in VIDEOINFOHEADER pVIH, uint32 cbBufSize, Guid* pSubtype);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromVideoInfoHeader2(ref IMFMediaType pMFType, in VIDEOINFOHEADER2 pVIH2, uint32 cbBufSize, Guid* pSubtype);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromMPEG1VideoInfo(ref IMFMediaType pMFType, in MPEG1VIDEOINFO pMP1VI, uint32 cbBufSize, Guid* pSubtype);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromMPEG2VideoInfo(ref IMFMediaType pMFType, in MPEG2VIDEOINFO pMP2VI, uint32 cbBufSize, Guid* pSubtype);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCalculateBitmapImageSize(in BITMAPINFOHEADER pBMIH, uint32 cbBufSize, out uint32 pcbImageSize, BOOL* pbKnown);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCalculateImageSize(in Guid guidSubtype, uint32 unWidth, uint32 unHeight, out uint32 pcbImageSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFFrameRateToAverageTimePerFrame(uint32 unNumerator, uint32 unDenominator, out uint64 punAverageTimePerFrame);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFAverageTimePerFrameToFrameRate(uint64 unAverageTimePerFrame, out uint32 punNumerator, out uint32 punDenominator);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromMFVideoFormat(ref IMFMediaType pMFType, in MFVIDEOFORMAT pMFVF, uint32 cbBufSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromWaveFormatEx(ref IMFMediaType pMFType, in WAVEFORMATEX pWaveFormat, uint32 cbBufSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromAMMediaType(ref IMFMediaType pMFType, in AM_MEDIA_TYPE pAMType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitAMMediaTypeFromMFMediaType(ref IMFMediaType pMFType, Guid guidFormatBlockType, out AM_MEDIA_TYPE pAMType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAMMediaTypeFromMFMediaType(ref IMFMediaType pMFType, Guid guidFormatBlockType, out AM_MEDIA_TYPE* ppAMType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MFCompareFullToPartialMediaType(ref IMFMediaType pMFTypeFull, ref IMFMediaType pMFTypePartial);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFWrapMediaType(ref IMFMediaType pOrig, in Guid MajorType, in Guid SubType, out IMFMediaType* ppWrap);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFUnwrapMediaType(ref IMFMediaType pWrap, out IMFMediaType* ppOrig);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoMediaType(in MFVIDEOFORMAT pVideoFormat, out IMFVideoMediaType* ppIVideoMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoMediaTypeFromSubtype(in Guid pAMSubtype, out IMFVideoMediaType* ppIVideoMediaType);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MFIsFormatYUV(uint32 Format);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoMediaTypeFromBitMapInfoHeader(in BITMAPINFOHEADER pbmihBitMapInfoHeader, uint32 dwPixelAspectRatioX, uint32 dwPixelAspectRatioY, MFVideoInterlaceMode InterlaceMode, uint64 VideoFlags, uint64 qwFramesPerSecondNumerator, uint64 qwFramesPerSecondDenominator, uint32 dwMaxBitRate, out IMFVideoMediaType* ppIVideoMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetStrideForBitmapInfoHeader(uint32 format, uint32 dwWidth, out int32 pStride);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetPlaneSize(uint32 format, uint32 dwWidth, uint32 dwHeight, out uint32 pdwPlaneSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoMediaTypeFromBitMapInfoHeaderEx(in BITMAPINFOHEADER pbmihBitMapInfoHeader, uint32 cbBitMapInfoHeader, uint32 dwPixelAspectRatioX, uint32 dwPixelAspectRatioY, MFVideoInterlaceMode InterlaceMode, uint64 VideoFlags, uint32 dwFramesPerSecondNumerator, uint32 dwFramesPerSecondDenominator, uint32 dwMaxBitRate, out IMFVideoMediaType* ppIVideoMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaTypeFromRepresentation(Guid guidRepresentation, void* pvRepresentation, out IMFMediaType* ppIMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAudioMediaType(in WAVEFORMATEX pAudioFormat, out IMFAudioMediaType* ppIAudioMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MFGetUncompressedVideoFormat(in MFVIDEOFORMAT pVideoFormat);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitVideoFormat(ref MFVIDEOFORMAT pVideoFormat, MFStandardVideoFormat type);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitVideoFormat_RGB(ref MFVIDEOFORMAT pVideoFormat, uint32 dwWidth, uint32 dwHeight, uint32 D3Dfmt);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFConvertColorInfoToDXVA(out uint32 pdwToDXVA, in MFVIDEOFORMAT pFromFormat);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFConvertColorInfoFromDXVA(out MFVIDEOFORMAT pToFormat, uint32 dwFromDXVA);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCopyImage(out uint8 pDest, int32 lDestStride, in uint8 pSrc, int32 lSrcStride, uint32 dwWidthInBytes, uint32 dwLines);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFConvertFromFP16Array(float* pDest, uint16* pSrc, uint32 dwCount);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFConvertToFP16Array(uint16* pDest, float* pSrc, uint32 dwCount);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreate2DMediaBuffer(uint32 dwWidth, uint32 dwHeight, uint32 dwFourCC, BOOL fBottomUp, out IMFMediaBuffer* ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaBufferFromMediaType(ref IMFMediaType pMediaType, int64 llDuration, uint32 dwMinLength, uint32 dwMinAlignment, out IMFMediaBuffer* ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateCollection(out IMFCollection* ppIMFCollection);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* MFHeapAlloc(uint nSize, uint32 dwFlags, PSTR pszFile, int32 line, EAllocationType eat);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void MFHeapFree(void* pv);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int64 MFllMulDiv(int64 a, int64 b, int64 c, int64 d);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetContentProtectionSystemCLSID(in Guid guidProtectionSystemID, out Guid pclsid);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCombineSamples(ref IMFSample pSample, ref IMFSample pSampleToAdd, uint32 dwMaxMergedDurationInMS, out BOOL pMerged);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFSplitSample(ref IMFSample pSample, IMFSample** pOutputSamples, uint32 dwOutputSampleMaxCount, out uint32 pdwOutputSampleCount);
		[Import("mfreadwrite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSourceReaderFromURL(PWSTR pwszURL, IMFAttributes* pAttributes, out IMFSourceReader* ppSourceReader);
		[Import("mfreadwrite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSourceReaderFromByteStream(ref IMFByteStream pByteStream, IMFAttributes* pAttributes, out IMFSourceReader* ppSourceReader);
		[Import("mfreadwrite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSourceReaderFromMediaSource(ref IMFMediaSource pMediaSource, IMFAttributes* pAttributes, out IMFSourceReader* ppSourceReader);
		[Import("mfreadwrite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSinkWriterFromURL(PWSTR pwszOutputURL, IMFByteStream* pByteStream, IMFAttributes* pAttributes, out IMFSinkWriter* ppSinkWriter);
		[Import("mfreadwrite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSinkWriterFromMediaSink(ref IMFMediaSink pMediaSink, IMFAttributes* pAttributes, out IMFSinkWriter* ppSinkWriter);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoPresenter(IUnknown* pOwner, in Guid riidDevice, in Guid riid, void** ppVideoPresenter);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoMixer(IUnknown* pOwner, in Guid riidDevice, in Guid riid, void** ppv);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoMixerAndPresenter(IUnknown* pMixerOwner, IUnknown* pPresenterOwner, in Guid riidMixer, void** ppvVideoMixer, in Guid riidPresenter, void** ppvVideoPresenter);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoRenderer(in Guid riidRenderer, void** ppVideoRenderer);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoSampleFromSurface(ref IUnknown pUnkSurface, out IMFSample* ppSample);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoSampleAllocator(in Guid riid, void** ppSampleAllocator);
		[Import("mfplay.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFPCreateMediaPlayer(PWSTR pwszURL, BOOL fStartPlayback, MFP_CREATION_OPTIONS creationOptions, IMFPMediaPlayerCallback* pCallback, HWND hWnd, IMFPMediaPlayer** ppMediaPlayer);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateEncryptedMediaExtensionsStoreActivate(ref IMFPMPHostApp pmpHost, ref IStream objectStream, PWSTR classId, out IMFActivate* activate);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVirtualCamera(__MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0001 type, __MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0002 lifetime, __MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0003 access, PWSTR friendlyName, PWSTR sourceId, Guid* categories, uint32 categoryCount, out IMFVirtualCamera* virtualCamera);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFIsVirtualCameraTypeSupported(__MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0001 type, out BOOL supported);
		[Import("opmxbox.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OPMXboxEnableHDCP(OPM_HDCP_TYPE HDCPType);
		[Import("opmxbox.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OPMXboxGetHDCPStatus(out OPM_HDCP_STATUS pHDCPStatus);
		[Import("opmxbox.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OPMXboxGetHDCPStatusAndType(out OPM_HDCP_STATUS pHDCPStatus, out OPM_HDCP_TYPE pHDCPType);
	}
}
