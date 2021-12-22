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
		
		[AllowDuplicates]
		public enum MEDIA_EVENT_GENERATOR_GET_EVENT_FLAGS : uint32
		{
			MF_EVENT_FLAG_NONE = 0,
			MF_EVENT_FLAG_NO_WAIT = 1,
		}
		[AllowDuplicates]
		public enum MF_Plugin_Type : int32
		{
			MF_Plugin_Type_MFT = 0,
			MF_Plugin_Type_MediaSource = 1,
			MF_Plugin_Type_MFT_MatchOutputType = 2,
			MF_Plugin_Type_Other = -1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_FIELD_TYPE : int32
		{
			D3D12_VIDEO_FIELD_TYPE_NONE = 0,
			D3D12_VIDEO_FIELD_TYPE_INTERLACED_TOP_FIELD_FIRST = 1,
			D3D12_VIDEO_FIELD_TYPE_INTERLACED_BOTTOM_FIELD_FIRST = 2,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_FRAME_STEREO_FORMAT : int32
		{
			D3D12_VIDEO_FRAME_STEREO_FORMAT_NONE = 0,
			D3D12_VIDEO_FRAME_STEREO_FORMAT_MONO = 1,
			D3D12_VIDEO_FRAME_STEREO_FORMAT_HORIZONTAL = 2,
			D3D12_VIDEO_FRAME_STEREO_FORMAT_VERTICAL = 3,
			D3D12_VIDEO_FRAME_STEREO_FORMAT_SEPARATE = 4,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_FRAME_CODED_INTERLACE_TYPE : int32
		{
			D3D12_VIDEO_FRAME_CODED_INTERLACE_TYPE_NONE = 0,
			D3D12_VIDEO_FRAME_CODED_INTERLACE_TYPE_FIELD_BASED = 1,
		}
		[AllowDuplicates]
		public enum D3D12_FEATURE_VIDEO : int32
		{
			D3D12_FEATURE_VIDEO_DECODE_SUPPORT = 0,
			D3D12_FEATURE_VIDEO_DECODE_PROFILES = 1,
			D3D12_FEATURE_VIDEO_DECODE_FORMATS = 2,
			D3D12_FEATURE_VIDEO_DECODE_CONVERSION_SUPPORT = 3,
			D3D12_FEATURE_VIDEO_PROCESS_SUPPORT = 5,
			D3D12_FEATURE_VIDEO_PROCESS_MAX_INPUT_STREAMS = 6,
			D3D12_FEATURE_VIDEO_PROCESS_REFERENCE_INFO = 7,
			D3D12_FEATURE_VIDEO_DECODER_HEAP_SIZE = 8,
			D3D12_FEATURE_VIDEO_PROCESSOR_SIZE = 9,
			D3D12_FEATURE_VIDEO_DECODE_PROFILE_COUNT = 10,
			D3D12_FEATURE_VIDEO_DECODE_FORMAT_COUNT = 11,
			D3D12_FEATURE_VIDEO_ARCHITECTURE = 17,
			D3D12_FEATURE_VIDEO_DECODE_HISTOGRAM = 18,
			D3D12_FEATURE_VIDEO_FEATURE_AREA_SUPPORT = 19,
			D3D12_FEATURE_VIDEO_MOTION_ESTIMATOR = 20,
			D3D12_FEATURE_VIDEO_MOTION_ESTIMATOR_SIZE = 21,
			D3D12_FEATURE_VIDEO_EXTENSION_COMMAND_COUNT = 22,
			D3D12_FEATURE_VIDEO_EXTENSION_COMMANDS = 23,
			D3D12_FEATURE_VIDEO_EXTENSION_COMMAND_PARAMETER_COUNT = 24,
			D3D12_FEATURE_VIDEO_EXTENSION_COMMAND_PARAMETERS = 25,
			D3D12_FEATURE_VIDEO_EXTENSION_COMMAND_SUPPORT = 26,
			D3D12_FEATURE_VIDEO_EXTENSION_COMMAND_SIZE = 27,
			D3D12_FEATURE_VIDEO_DECODE_PROTECTED_RESOURCES = 28,
			D3D12_FEATURE_VIDEO_PROCESS_PROTECTED_RESOURCES = 29,
			D3D12_FEATURE_VIDEO_MOTION_ESTIMATOR_PROTECTED_RESOURCES = 30,
			D3D12_FEATURE_VIDEO_DECODER_HEAP_SIZE1 = 31,
			D3D12_FEATURE_VIDEO_PROCESSOR_SIZE1 = 32,
		}
		[AllowDuplicates]
		public enum D3D12_BITSTREAM_ENCRYPTION_TYPE : int32
		{
			D3D12_BITSTREAM_ENCRYPTION_TYPE_NONE = 0,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_PROCESS_FILTER : int32
		{
			D3D12_VIDEO_PROCESS_FILTER_BRIGHTNESS = 0,
			D3D12_VIDEO_PROCESS_FILTER_CONTRAST = 1,
			D3D12_VIDEO_PROCESS_FILTER_HUE = 2,
			D3D12_VIDEO_PROCESS_FILTER_SATURATION = 3,
			D3D12_VIDEO_PROCESS_FILTER_NOISE_REDUCTION = 4,
			D3D12_VIDEO_PROCESS_FILTER_EDGE_ENHANCEMENT = 5,
			D3D12_VIDEO_PROCESS_FILTER_ANAMORPHIC_SCALING = 6,
			D3D12_VIDEO_PROCESS_FILTER_STEREO_ADJUSTMENT = 7,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_PROCESS_FILTER_FLAGS : uint32
		{
			D3D12_VIDEO_PROCESS_FILTER_FLAG_NONE = 0,
			D3D12_VIDEO_PROCESS_FILTER_FLAG_BRIGHTNESS = 1,
			D3D12_VIDEO_PROCESS_FILTER_FLAG_CONTRAST = 2,
			D3D12_VIDEO_PROCESS_FILTER_FLAG_HUE = 4,
			D3D12_VIDEO_PROCESS_FILTER_FLAG_SATURATION = 8,
			D3D12_VIDEO_PROCESS_FILTER_FLAG_NOISE_REDUCTION = 16,
			D3D12_VIDEO_PROCESS_FILTER_FLAG_EDGE_ENHANCEMENT = 32,
			D3D12_VIDEO_PROCESS_FILTER_FLAG_ANAMORPHIC_SCALING = 64,
			D3D12_VIDEO_PROCESS_FILTER_FLAG_STEREO_ADJUSTMENT = 128,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_PROCESS_DEINTERLACE_FLAGS : uint32
		{
			D3D12_VIDEO_PROCESS_DEINTERLACE_FLAG_NONE = 0,
			D3D12_VIDEO_PROCESS_DEINTERLACE_FLAG_BOB = 1,
			D3D12_VIDEO_PROCESS_DEINTERLACE_FLAG_CUSTOM = 2147483648,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_PROCESS_ALPHA_FILL_MODE : int32
		{
			D3D12_VIDEO_PROCESS_ALPHA_FILL_MODE_OPAQUE = 0,
			D3D12_VIDEO_PROCESS_ALPHA_FILL_MODE_BACKGROUND = 1,
			D3D12_VIDEO_PROCESS_ALPHA_FILL_MODE_DESTINATION = 2,
			D3D12_VIDEO_PROCESS_ALPHA_FILL_MODE_SOURCE_STREAM = 3,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_DECODE_TIER : int32
		{
			D3D12_VIDEO_DECODE_TIER_NOT_SUPPORTED = 0,
			D3D12_VIDEO_DECODE_TIER_1 = 1,
			D3D12_VIDEO_DECODE_TIER_2 = 2,
			D3D12_VIDEO_DECODE_TIER_3 = 3,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_DECODE_SUPPORT_FLAGS : uint32
		{
			D3D12_VIDEO_DECODE_SUPPORT_FLAG_NONE = 0,
			D3D12_VIDEO_DECODE_SUPPORT_FLAG_SUPPORTED = 1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_DECODE_CONFIGURATION_FLAGS : uint32
		{
			D3D12_VIDEO_DECODE_CONFIGURATION_FLAG_NONE = 0,
			D3D12_VIDEO_DECODE_CONFIGURATION_FLAG_HEIGHT_ALIGNMENT_MULTIPLE_32_REQUIRED = 1,
			D3D12_VIDEO_DECODE_CONFIGURATION_FLAG_POST_PROCESSING_SUPPORTED = 2,
			D3D12_VIDEO_DECODE_CONFIGURATION_FLAG_REFERENCE_ONLY_ALLOCATIONS_REQUIRED = 4,
			D3D12_VIDEO_DECODE_CONFIGURATION_FLAG_ALLOW_RESOLUTION_CHANGE_ON_NON_KEY_FRAME = 8,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_DECODE_STATUS : int32
		{
			D3D12_VIDEO_DECODE_STATUS_OK = 0,
			D3D12_VIDEO_DECODE_STATUS_CONTINUE = 1,
			D3D12_VIDEO_DECODE_STATUS_CONTINUE_SKIP_DISPLAY = 2,
			D3D12_VIDEO_DECODE_STATUS_RESTART = 3,
			D3D12_VIDEO_DECODE_STATUS_RATE_EXCEEDED = 4,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_DECODE_ARGUMENT_TYPE : int32
		{
			D3D12_VIDEO_DECODE_ARGUMENT_TYPE_PICTURE_PARAMETERS = 0,
			D3D12_VIDEO_DECODE_ARGUMENT_TYPE_INVERSE_QUANTIZATION_MATRIX = 1,
			D3D12_VIDEO_DECODE_ARGUMENT_TYPE_SLICE_CONTROL = 2,
			D3D12_VIDEO_DECODE_ARGUMENT_TYPE_MAX_VALID = 3,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT : int32
		{
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_Y = 0,
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_U = 1,
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_V = 2,
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_R = 0,
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_G = 1,
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_B = 2,
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_A = 3,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_FLAGS : uint32
		{
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_FLAG_NONE = 0,
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_FLAG_Y = 1,
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_FLAG_U = 2,
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_FLAG_V = 4,
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_FLAG_R = 1,
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_FLAG_G = 2,
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_FLAG_B = 4,
			D3D12_VIDEO_DECODE_HISTOGRAM_COMPONENT_FLAG_A = 8,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_DECODE_CONVERSION_SUPPORT_FLAGS : uint32
		{
			D3D12_VIDEO_DECODE_CONVERSION_SUPPORT_FLAG_NONE = 0,
			D3D12_VIDEO_DECODE_CONVERSION_SUPPORT_FLAG_SUPPORTED = 1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_SCALE_SUPPORT_FLAGS : uint32
		{
			D3D12_VIDEO_SCALE_SUPPORT_FLAG_NONE = 0,
			D3D12_VIDEO_SCALE_SUPPORT_FLAG_POW2_ONLY = 1,
			D3D12_VIDEO_SCALE_SUPPORT_FLAG_EVEN_DIMENSIONS_ONLY = 2,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_PROCESS_FEATURE_FLAGS : uint32
		{
			D3D12_VIDEO_PROCESS_FEATURE_FLAG_NONE = 0,
			D3D12_VIDEO_PROCESS_FEATURE_FLAG_ALPHA_FILL = 1,
			D3D12_VIDEO_PROCESS_FEATURE_FLAG_LUMA_KEY = 2,
			D3D12_VIDEO_PROCESS_FEATURE_FLAG_STEREO = 4,
			D3D12_VIDEO_PROCESS_FEATURE_FLAG_ROTATION = 8,
			D3D12_VIDEO_PROCESS_FEATURE_FLAG_FLIP = 16,
			D3D12_VIDEO_PROCESS_FEATURE_FLAG_ALPHA_BLENDING = 32,
			D3D12_VIDEO_PROCESS_FEATURE_FLAG_PIXEL_ASPECT_RATIO = 64,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_PROCESS_AUTO_PROCESSING_FLAGS : uint32
		{
			D3D12_VIDEO_PROCESS_AUTO_PROCESSING_FLAG_NONE = 0,
			D3D12_VIDEO_PROCESS_AUTO_PROCESSING_FLAG_DENOISE = 1,
			D3D12_VIDEO_PROCESS_AUTO_PROCESSING_FLAG_DERINGING = 2,
			D3D12_VIDEO_PROCESS_AUTO_PROCESSING_FLAG_EDGE_ENHANCEMENT = 4,
			D3D12_VIDEO_PROCESS_AUTO_PROCESSING_FLAG_COLOR_CORRECTION = 8,
			D3D12_VIDEO_PROCESS_AUTO_PROCESSING_FLAG_FLESH_TONE_MAPPING = 16,
			D3D12_VIDEO_PROCESS_AUTO_PROCESSING_FLAG_IMAGE_STABILIZATION = 32,
			D3D12_VIDEO_PROCESS_AUTO_PROCESSING_FLAG_SUPER_RESOLUTION = 64,
			D3D12_VIDEO_PROCESS_AUTO_PROCESSING_FLAG_ANAMORPHIC_SCALING = 128,
			D3D12_VIDEO_PROCESS_AUTO_PROCESSING_FLAG_CUSTOM = 2147483648,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_PROCESS_ORIENTATION : int32
		{
			D3D12_VIDEO_PROCESS_ORIENTATION_DEFAULT = 0,
			D3D12_VIDEO_PROCESS_ORIENTATION_FLIP_HORIZONTAL = 1,
			D3D12_VIDEO_PROCESS_ORIENTATION_CLOCKWISE_90 = 2,
			D3D12_VIDEO_PROCESS_ORIENTATION_CLOCKWISE_90_FLIP_HORIZONTAL = 3,
			D3D12_VIDEO_PROCESS_ORIENTATION_CLOCKWISE_180 = 4,
			D3D12_VIDEO_PROCESS_ORIENTATION_FLIP_VERTICAL = 5,
			D3D12_VIDEO_PROCESS_ORIENTATION_CLOCKWISE_270 = 6,
			D3D12_VIDEO_PROCESS_ORIENTATION_CLOCKWISE_270_FLIP_HORIZONTAL = 7,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_PROCESS_INPUT_STREAM_FLAGS : uint32
		{
			D3D12_VIDEO_PROCESS_INPUT_STREAM_FLAG_NONE = 0,
			D3D12_VIDEO_PROCESS_INPUT_STREAM_FLAG_FRAME_DISCONTINUITY = 1,
			D3D12_VIDEO_PROCESS_INPUT_STREAM_FLAG_FRAME_REPEAT = 2,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_PROCESS_SUPPORT_FLAGS : uint32
		{
			D3D12_VIDEO_PROCESS_SUPPORT_FLAG_NONE = 0,
			D3D12_VIDEO_PROCESS_SUPPORT_FLAG_SUPPORTED = 1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_MOTION_ESTIMATOR_SEARCH_BLOCK_SIZE : int32
		{
			D3D12_VIDEO_MOTION_ESTIMATOR_SEARCH_BLOCK_SIZE_8X8 = 0,
			D3D12_VIDEO_MOTION_ESTIMATOR_SEARCH_BLOCK_SIZE_16X16 = 1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_MOTION_ESTIMATOR_SEARCH_BLOCK_SIZE_FLAGS : uint32
		{
			D3D12_VIDEO_MOTION_ESTIMATOR_SEARCH_BLOCK_SIZE_FLAG_NONE = 0,
			D3D12_VIDEO_MOTION_ESTIMATOR_SEARCH_BLOCK_SIZE_FLAG_8X8 = 1,
			D3D12_VIDEO_MOTION_ESTIMATOR_SEARCH_BLOCK_SIZE_FLAG_16X16 = 2,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_MOTION_ESTIMATOR_VECTOR_PRECISION : int32
		{
			D3D12_VIDEO_MOTION_ESTIMATOR_VECTOR_PRECISION_QUARTER_PEL = 0,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_MOTION_ESTIMATOR_VECTOR_PRECISION_FLAGS : uint32
		{
			D3D12_VIDEO_MOTION_ESTIMATOR_VECTOR_PRECISION_FLAG_NONE = 0,
			D3D12_VIDEO_MOTION_ESTIMATOR_VECTOR_PRECISION_FLAG_QUARTER_PEL = 1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_PROTECTED_RESOURCE_SUPPORT_FLAGS : uint32
		{
			D3D12_VIDEO_PROTECTED_RESOURCE_SUPPORT_FLAG_NONE = 0,
			D3D12_VIDEO_PROTECTED_RESOURCE_SUPPORT_FLAG_SUPPORTED = 1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_STAGE : int32
		{
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_STAGE_CREATION = 0,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_STAGE_INITIALIZATION = 1,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_STAGE_EXECUTION = 2,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_STAGE_CAPS_INPUT = 3,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_STAGE_CAPS_OUTPUT = 4,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_STAGE_DEVICE_EXECUTE_INPUT = 5,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_STAGE_DEVICE_EXECUTE_OUTPUT = 6,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE : int32
		{
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE_UINT8 = 0,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE_UINT16 = 1,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE_UINT32 = 2,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE_UINT64 = 3,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE_SINT8 = 4,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE_SINT16 = 5,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE_SINT32 = 6,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE_SINT64 = 7,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE_FLOAT = 8,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE_DOUBLE = 9,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_TYPE_RESOURCE = 10,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_FLAGS : uint32
		{
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_FLAG_NONE = 0,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_FLAG_READ = 1,
			D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_FLAG_WRITE = 2,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_RATE_CONTROL_MODE : int32
		{
			D3D12_VIDEO_ENCODER_RATE_CONTROL_MODE_ABSOLUTE_QP_MAP = 0,
			D3D12_VIDEO_ENCODER_RATE_CONTROL_MODE_CQP = 1,
			D3D12_VIDEO_ENCODER_RATE_CONTROL_MODE_CBR = 2,
			D3D12_VIDEO_ENCODER_RATE_CONTROL_MODE_VBR = 3,
			D3D12_VIDEO_ENCODER_RATE_CONTROL_MODE_QVBR = 4,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_RATE_CONTROL_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_RATE_CONTROL_FLAG_NONE = 0,
			D3D12_VIDEO_ENCODER_RATE_CONTROL_FLAG_ENABLE_DELTA_QP = 1,
			D3D12_VIDEO_ENCODER_RATE_CONTROL_FLAG_ENABLE_FRAME_ANALYSIS = 2,
			D3D12_VIDEO_ENCODER_RATE_CONTROL_FLAG_ENABLE_QP_RANGE = 4,
			D3D12_VIDEO_ENCODER_RATE_CONTROL_FLAG_ENABLE_INITIAL_QP = 8,
			D3D12_VIDEO_ENCODER_RATE_CONTROL_FLAG_ENABLE_MAX_FRAME_SIZE = 16,
			D3D12_VIDEO_ENCODER_RATE_CONTROL_FLAG_ENABLE_VBV_SIZES = 32,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_CODEC : int32
		{
			D3D12_VIDEO_ENCODER_CODEC_H264 = 0,
			D3D12_VIDEO_ENCODER_CODEC_HEVC = 1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_PROFILE_H264 : int32
		{
			D3D12_VIDEO_ENCODER_PROFILE_H264_MAIN = 0,
			D3D12_VIDEO_ENCODER_PROFILE_H264_HIGH = 1,
			D3D12_VIDEO_ENCODER_PROFILE_H264_HIGH_10 = 2,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_PROFILE_HEVC : int32
		{
			D3D12_VIDEO_ENCODER_PROFILE_HEVC_MAIN = 0,
			D3D12_VIDEO_ENCODER_PROFILE_HEVC_MAIN10 = 1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_LEVELS_H264 : int32
		{
			D3D12_VIDEO_ENCODER_LEVELS_H264_1 = 0,
			D3D12_VIDEO_ENCODER_LEVELS_H264_1b = 1,
			D3D12_VIDEO_ENCODER_LEVELS_H264_11 = 2,
			D3D12_VIDEO_ENCODER_LEVELS_H264_12 = 3,
			D3D12_VIDEO_ENCODER_LEVELS_H264_13 = 4,
			D3D12_VIDEO_ENCODER_LEVELS_H264_2 = 5,
			D3D12_VIDEO_ENCODER_LEVELS_H264_21 = 6,
			D3D12_VIDEO_ENCODER_LEVELS_H264_22 = 7,
			D3D12_VIDEO_ENCODER_LEVELS_H264_3 = 8,
			D3D12_VIDEO_ENCODER_LEVELS_H264_31 = 9,
			D3D12_VIDEO_ENCODER_LEVELS_H264_32 = 10,
			D3D12_VIDEO_ENCODER_LEVELS_H264_4 = 11,
			D3D12_VIDEO_ENCODER_LEVELS_H264_41 = 12,
			D3D12_VIDEO_ENCODER_LEVELS_H264_42 = 13,
			D3D12_VIDEO_ENCODER_LEVELS_H264_5 = 14,
			D3D12_VIDEO_ENCODER_LEVELS_H264_51 = 15,
			D3D12_VIDEO_ENCODER_LEVELS_H264_52 = 16,
			D3D12_VIDEO_ENCODER_LEVELS_H264_6 = 17,
			D3D12_VIDEO_ENCODER_LEVELS_H264_61 = 18,
			D3D12_VIDEO_ENCODER_LEVELS_H264_62 = 19,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_TIER_HEVC : int32
		{
			D3D12_VIDEO_ENCODER_TIER_HEVC_MAIN = 0,
			D3D12_VIDEO_ENCODER_TIER_HEVC_HIGH = 1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_LEVELS_HEVC : int32
		{
			D3D12_VIDEO_ENCODER_LEVELS_HEVC_1 = 0,
			D3D12_VIDEO_ENCODER_LEVELS_HEVC_2 = 1,
			D3D12_VIDEO_ENCODER_LEVELS_HEVC_21 = 2,
			D3D12_VIDEO_ENCODER_LEVELS_HEVC_3 = 3,
			D3D12_VIDEO_ENCODER_LEVELS_HEVC_31 = 4,
			D3D12_VIDEO_ENCODER_LEVELS_HEVC_4 = 5,
			D3D12_VIDEO_ENCODER_LEVELS_HEVC_41 = 6,
			D3D12_VIDEO_ENCODER_LEVELS_HEVC_5 = 7,
			D3D12_VIDEO_ENCODER_LEVELS_HEVC_51 = 8,
			D3D12_VIDEO_ENCODER_LEVELS_HEVC_52 = 9,
			D3D12_VIDEO_ENCODER_LEVELS_HEVC_6 = 10,
			D3D12_VIDEO_ENCODER_LEVELS_HEVC_61 = 11,
			D3D12_VIDEO_ENCODER_LEVELS_HEVC_62 = 12,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_INTRA_REFRESH_MODE : int32
		{
			D3D12_VIDEO_ENCODER_INTRA_REFRESH_MODE_NONE = 0,
			D3D12_VIDEO_ENCODER_INTRA_REFRESH_MODE_ROW_BASED = 1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_FRAME_SUBREGION_LAYOUT_MODE : int32
		{
			D3D12_VIDEO_ENCODER_FRAME_SUBREGION_LAYOUT_MODE_FULL_FRAME = 0,
			D3D12_VIDEO_ENCODER_FRAME_SUBREGION_LAYOUT_MODE_BYTES_PER_SUBREGION = 1,
			D3D12_VIDEO_ENCODER_FRAME_SUBREGION_LAYOUT_MODE_SQUARE_UNITS_PER_SUBREGION_ROW_UNALIGNED = 2,
			D3D12_VIDEO_ENCODER_FRAME_SUBREGION_LAYOUT_MODE_UNIFORM_PARTITIONING_ROWS_PER_SUBREGION = 3,
			D3D12_VIDEO_ENCODER_FRAME_SUBREGION_LAYOUT_MODE_UNIFORM_PARTITIONING_SUBREGIONS_PER_FRAME = 4,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_HEAP_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_HEAP_FLAG_NONE = 0,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264_FLAG_NONE = 0,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264_FLAG_CABAC_ENCODING_SUPPORT = 1,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264_FLAG_INTRA_SLICE_CONSTRAINED_ENCODING_SUPPORT = 2,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264_FLAG_BFRAME_LTR_COMBINED_SUPPORT = 4,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264_FLAG_ADAPTIVE_8x8_TRANSFORM_ENCODING_SUPPORT = 8,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264_FLAG_DIRECT_SPATIAL_ENCODING_SUPPORT = 16,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264_FLAG_DIRECT_TEMPORAL_ENCODING_SUPPORT = 32,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264_FLAG_CONSTRAINED_INTRAPREDICTION_SUPPORT = 64,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODES : int32
		{
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_0_ALL_LUMA_CHROMA_SLICE_BLOCK_EDGES_ALWAYS_FILTERED = 0,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_1_DISABLE_ALL_SLICE_BLOCK_EDGES = 1,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_2_DISABLE_SLICE_BOUNDARIES_BLOCKS = 2,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_3_USE_TWO_STAGE_DEBLOCKING = 3,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_4_DISABLE_CHROMA_BLOCK_EDGES = 4,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_5_DISABLE_CHROMA_BLOCK_EDGES_AND_LUMA_BOUNDARIES = 5,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_6_DISABLE_CHROMA_BLOCK_EDGES_AND_USE_LUMA_TWO_STAGE_DEBLOCKING = 6,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_FLAG_NONE = 0,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_FLAG_0_ALL_LUMA_CHROMA_SLICE_BLOCK_EDGES_ALWAYS_FILTERED = 1,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_FLAG_1_DISABLE_ALL_SLICE_BLOCK_EDGES = 2,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_FLAG_2_DISABLE_SLICE_BOUNDARIES_BLOCKS = 4,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_FLAG_3_USE_TWO_STAGE_DEBLOCKING = 8,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_FLAG_4_DISABLE_CHROMA_BLOCK_EDGES = 16,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_FLAG_5_DISABLE_CHROMA_BLOCK_EDGES_AND_LUMA_BOUNDARIES = 32,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_SLICES_DEBLOCKING_MODE_FLAG_6_DISABLE_CHROMA_BLOCK_EDGES_AND_USE_LUMA_TWO_STAGE_DEBLOCKING = 64,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC_FLAG_NONE = 0,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC_FLAG_BFRAME_LTR_COMBINED_SUPPORT = 1,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC_FLAG_INTRA_SLICE_CONSTRAINED_ENCODING_SUPPORT = 2,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC_FLAG_CONSTRAINED_INTRAPREDICTION_SUPPORT = 4,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC_FLAG_SAO_FILTER_SUPPORT = 8,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC_FLAG_ASYMETRIC_MOTION_PARTITION_SUPPORT = 16,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC_FLAG_ASYMETRIC_MOTION_PARTITION_REQUIRED = 32,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC_FLAG_TRANSFORM_SKIP_SUPPORT = 64,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC_FLAG_DISABLING_LOOP_FILTER_ACROSS_SLICES_SUPPORT = 128,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC_FLAG_P_FRAMES_IMPLEMENTED_AS_LOW_DELAY_B_FRAMES = 256,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_CUSIZE : int32
		{
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_CUSIZE_8x8 = 0,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_CUSIZE_16x16 = 1,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_CUSIZE_32x32 = 2,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_CUSIZE_64x64 = 3,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_TUSIZE : int32
		{
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_TUSIZE_4x4 = 0,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_TUSIZE_8x8 = 1,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_TUSIZE_16x16 = 2,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_TUSIZE_32x32 = 3,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_SUPPORT_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_NONE = 0,
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_GENERAL_SUPPORT_OK = 1,
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_RATE_CONTROL_RECONFIGURATION_AVAILABLE = 2,
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_RESOLUTION_RECONFIGURATION_AVAILABLE = 4,
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_RATE_CONTROL_VBV_SIZE_CONFIG_AVAILABLE = 8,
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_RATE_CONTROL_FRAME_ANALYSIS_AVAILABLE = 16,
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_RECONSTRUCTED_FRAMES_REQUIRE_TEXTURE_ARRAYS = 32,
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_RATE_CONTROL_DELTA_QP_AVAILABLE = 64,
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_SUBREGION_LAYOUT_RECONFIGURATION_AVAILABLE = 128,
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_RATE_CONTROL_ADJUSTABLE_QP_RANGE_AVAILABLE = 256,
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_RATE_CONTROL_INITIAL_QP_AVAILABLE = 512,
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_RATE_CONTROL_MAX_FRAME_SIZE_AVAILABLE = 1024,
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_SEQUENCE_GOP_RECONFIGURATION_AVAILABLE = 2048,
			D3D12_VIDEO_ENCODER_SUPPORT_FLAG_MOTION_ESTIMATION_PRECISION_MODE_LIMIT_AVAILABLE = 4096,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_FLAG_NONE = 0,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_FLAG_USE_CONSTRAINED_INTRAPREDICTION = 1,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_FLAG_USE_ADAPTIVE_8x8_TRANSFORM = 2,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_FLAG_ENABLE_CABAC_ENCODING = 4,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_FLAG_ALLOW_REQUEST_INTRA_CONSTRAINED_SLICES = 8,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_DIRECT_MODES : int32
		{
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_DIRECT_MODES_DISABLED = 0,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_DIRECT_MODES_TEMPORAL = 1,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264_DIRECT_MODES_SPATIAL = 2,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_FLAG_NONE = 0,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_FLAG_DISABLE_LOOP_FILTER_ACROSS_SLICES = 1,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_FLAG_ALLOW_REQUEST_INTRA_CONSTRAINED_SLICES = 2,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_FLAG_ENABLE_SAO_FILTER = 4,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_FLAG_ENABLE_LONG_TERM_REFERENCES = 8,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_FLAG_USE_ASYMETRIC_MOTION_PARTITION = 16,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_FLAG_ENABLE_TRANSFORM_SKIPPING = 32,
			D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC_FLAG_USE_CONSTRAINED_INTRAPREDICTION = 64,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_MOTION_ESTIMATION_PRECISION_MODE : int32
		{
			D3D12_VIDEO_ENCODER_MOTION_ESTIMATION_PRECISION_MODE_MAXIMUM = 0,
			D3D12_VIDEO_ENCODER_MOTION_ESTIMATION_PRECISION_MODE_FULL_PIXEL = 1,
			D3D12_VIDEO_ENCODER_MOTION_ESTIMATION_PRECISION_MODE_HALF_PIXEL = 2,
			D3D12_VIDEO_ENCODER_MOTION_ESTIMATION_PRECISION_MODE_QUARTER_PIXEL = 3,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_VALIDATION_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_VALIDATION_FLAG_NONE = 0,
			D3D12_VIDEO_ENCODER_VALIDATION_FLAG_CODEC_NOT_SUPPORTED = 1,
			D3D12_VIDEO_ENCODER_VALIDATION_FLAG_INPUT_FORMAT_NOT_SUPPORTED = 8,
			D3D12_VIDEO_ENCODER_VALIDATION_FLAG_CODEC_CONFIGURATION_NOT_SUPPORTED = 16,
			D3D12_VIDEO_ENCODER_VALIDATION_FLAG_RATE_CONTROL_MODE_NOT_SUPPORTED = 32,
			D3D12_VIDEO_ENCODER_VALIDATION_FLAG_RATE_CONTROL_CONFIGURATION_NOT_SUPPORTED = 64,
			D3D12_VIDEO_ENCODER_VALIDATION_FLAG_INTRA_REFRESH_MODE_NOT_SUPPORTED = 128,
			D3D12_VIDEO_ENCODER_VALIDATION_FLAG_SUBREGION_LAYOUT_MODE_NOT_SUPPORTED = 256,
			D3D12_VIDEO_ENCODER_VALIDATION_FLAG_RESOLUTION_NOT_SUPPORTED_IN_LIST = 512,
			D3D12_VIDEO_ENCODER_VALIDATION_FLAG_GOP_STRUCTURE_NOT_SUPPORTED = 2048,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_FLAG_NONE = 0,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_FRAME_TYPE_H264 : int32
		{
			D3D12_VIDEO_ENCODER_FRAME_TYPE_H264_I_FRAME = 0,
			D3D12_VIDEO_ENCODER_FRAME_TYPE_H264_P_FRAME = 1,
			D3D12_VIDEO_ENCODER_FRAME_TYPE_H264_B_FRAME = 2,
			D3D12_VIDEO_ENCODER_FRAME_TYPE_H264_IDR_FRAME = 3,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_FLAG_NONE = 0,
			D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_FLAG_REQUEST_INTRA_CONSTRAINED_SLICES = 1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_FRAME_TYPE_HEVC : int32
		{
			D3D12_VIDEO_ENCODER_FRAME_TYPE_HEVC_I_FRAME = 0,
			D3D12_VIDEO_ENCODER_FRAME_TYPE_HEVC_P_FRAME = 1,
			D3D12_VIDEO_ENCODER_FRAME_TYPE_HEVC_B_FRAME = 2,
			D3D12_VIDEO_ENCODER_FRAME_TYPE_HEVC_IDR_FRAME = 3,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_HEVC_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_HEVC_FLAG_NONE = 0,
			D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_HEVC_FLAG_REQUEST_INTRA_CONSTRAINED_SLICES = 1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_PICTURE_CONTROL_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_PICTURE_CONTROL_FLAG_NONE = 0,
			D3D12_VIDEO_ENCODER_PICTURE_CONTROL_FLAG_USED_AS_REFERENCE_PICTURE = 1,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_SEQUENCE_CONTROL_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_SEQUENCE_CONTROL_FLAG_NONE = 0,
			D3D12_VIDEO_ENCODER_SEQUENCE_CONTROL_FLAG_RESOLUTION_CHANGE = 1,
			D3D12_VIDEO_ENCODER_SEQUENCE_CONTROL_FLAG_RATE_CONTROL_CHANGE = 2,
			D3D12_VIDEO_ENCODER_SEQUENCE_CONTROL_FLAG_SUBREGION_LAYOUT_CHANGE = 4,
			D3D12_VIDEO_ENCODER_SEQUENCE_CONTROL_FLAG_REQUEST_INTRA_REFRESH = 8,
			D3D12_VIDEO_ENCODER_SEQUENCE_CONTROL_FLAG_GOP_SEQUENCE_CHANGE = 16,
		}
		[AllowDuplicates]
		public enum D3D12_VIDEO_ENCODER_ENCODE_ERROR_FLAGS : uint32
		{
			D3D12_VIDEO_ENCODER_ENCODE_ERROR_FLAG_NO_ERROR = 0,
			D3D12_VIDEO_ENCODER_ENCODE_ERROR_FLAG_CODEC_PICTURE_CONTROL_NOT_SUPPORTED = 1,
			D3D12_VIDEO_ENCODER_ENCODE_ERROR_FLAG_SUBREGION_LAYOUT_CONFIGURATION_NOT_SUPPORTED = 2,
			D3D12_VIDEO_ENCODER_ENCODE_ERROR_FLAG_INVALID_REFERENCE_PICTURES = 4,
			D3D12_VIDEO_ENCODER_ENCODE_ERROR_FLAG_RECONFIGURATION_REQUEST_NOT_SUPPORTED = 8,
			D3D12_VIDEO_ENCODER_ENCODE_ERROR_FLAG_INVALID_METADATA_BUFFER_SOURCE = 16,
		}
		[AllowDuplicates]
		public enum WMT_PROP_DATATYPE : int32
		{
			WMT_PROP_TYPE_DWORD = 0,
			WMT_PROP_TYPE_STRING = 1,
			WMT_PROP_TYPE_BINARY = 2,
			WMT_PROP_TYPE_BOOL = 3,
			WMT_PROP_TYPE_QWORD = 4,
			WMT_PROP_TYPE_WORD = 5,
			WMT_PROP_TYPE_GUID = 6,
		}
		[AllowDuplicates]
		public enum WMV_DYNAMIC_FLAGS : int32
		{
			WMV_DYNAMIC_BITRATE = 1,
			WMV_DYNAMIC_RESOLUTION = 2,
			WMV_DYNAMIC_COMPLEXITY = 4,
		}
		[AllowDuplicates]
		public enum MF_AUVRHP_ROOMMODEL : int32
		{
			VRHP_SMALLROOM = 0,
			VRHP_MEDIUMROOM = 1,
			VRHP_BIGROOM = 2,
			VRHP_CUSTUMIZEDROOM = 3,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum AEC_VAD_MODE : int32
		{
			AEC_VAD_DISABLED = 0,
			AEC_VAD_NORMAL = 1,
			AEC_VAD_FOR_AGC = 2,
			AEC_VAD_FOR_SILENCE_SUPPRESSION = 3,
		}
		[AllowDuplicates]
		public enum AEC_INPUT_STREAM : int32
		{
			AEC_CAPTURE_STREAM = 0,
			AEC_REFERENCE_STREAM = 1,
		}
		[AllowDuplicates]
		public enum MIC_ARRAY_MODE : int32
		{
			MICARRAY_SINGLE_CHAN = 0,
			MICARRAY_SIMPLE_SUM = 256,
			MICARRAY_SINGLE_BEAM = 512,
			MICARRAY_FIXED_BEAM = 1024,
			MICARRAY_EXTERN_BEAM = 2048,
		}
		[AllowDuplicates]
		public enum MFVideoDSPMode : int32
		{
			MFVideoDSPMode_Passthrough = 1,
			MFVideoDSPMode_Stabilization = 4,
		}
		[AllowDuplicates]
		public enum TOC_POS_TYPE : int32
		{
			TOC_POS_INHEADER = 0,
			TOC_POS_TOPLEVELOBJECT = 1,
		}
		[AllowDuplicates]
		public enum FILE_OPENMODE : int32
		{
			OPENMODE_FAIL_IF_NOT_EXIST = 0,
			OPENMODE_FAIL_IF_EXIST = 1,
			OPENMODE_RESET_IF_EXIST = 2,
			OPENMODE_APPEND_IF_EXIST = 3,
			OPENMODE_DELETE_IF_EXIST = 4,
		}
		[AllowDuplicates]
		public enum SEEK_ORIGIN : int32
		{
			_msoBegin = 0,
			_msoCurrent = 1,
		}
		[AllowDuplicates]
		public enum FILE_ACCESSMODE : int32
		{
			ACCESSMODE_READ = 1,
			ACCESSMODE_WRITE = 2,
			ACCESSMODE_READWRITE = 3,
			ACCESSMODE_WRITE_EXCLUSIVE = 4,
		}
		[AllowDuplicates]
		public enum DXVA_SampleFormat : int32
		{
			DXVA_SampleFormatMask = 255,
			DXVA_SampleUnknown = 0,
			DXVA_SamplePreviousFrame = 1,
			DXVA_SampleProgressiveFrame = 2,
			DXVA_SampleFieldInterleavedEvenFirst = 3,
			DXVA_SampleFieldInterleavedOddFirst = 4,
			DXVA_SampleFieldSingleEven = 5,
			DXVA_SampleFieldSingleOdd = 6,
			DXVA_SampleSubStream = 7,
		}
		[AllowDuplicates]
		public enum DXVA_VideoTransferFunction : int32
		{
			DXVA_VideoTransFuncShift = 27,
			DXVA_VideoTransFuncMask = -134217728,
			DXVA_VideoTransFunc_Unknown = 0,
			DXVA_VideoTransFunc_10 = 1,
			DXVA_VideoTransFunc_18 = 2,
			DXVA_VideoTransFunc_20 = 3,
			DXVA_VideoTransFunc_22 = 4,
			DXVA_VideoTransFunc_22_709 = 5,
			DXVA_VideoTransFunc_22_240M = 6,
			DXVA_VideoTransFunc_22_8bit_sRGB = 7,
			DXVA_VideoTransFunc_28 = 8,
		}
		[AllowDuplicates]
		public enum DXVA_VideoPrimaries : int32
		{
			DXVA_VideoPrimariesShift = 22,
			DXVA_VideoPrimariesMask = 130023424,
			DXVA_VideoPrimaries_Unknown = 0,
			DXVA_VideoPrimaries_reserved = 1,
			DXVA_VideoPrimaries_BT709 = 2,
			DXVA_VideoPrimaries_BT470_2_SysM = 3,
			DXVA_VideoPrimaries_BT470_2_SysBG = 4,
			DXVA_VideoPrimaries_SMPTE170M = 5,
			DXVA_VideoPrimaries_SMPTE240M = 6,
			DXVA_VideoPrimaries_EBU3213 = 7,
			DXVA_VideoPrimaries_SMPTE_C = 8,
		}
		[AllowDuplicates]
		public enum DXVA_VideoLighting : int32
		{
			DXVA_VideoLightingShift = 18,
			DXVA_VideoLightingMask = 3932160,
			DXVA_VideoLighting_Unknown = 0,
			DXVA_VideoLighting_bright = 1,
			DXVA_VideoLighting_office = 2,
			DXVA_VideoLighting_dim = 3,
			DXVA_VideoLighting_dark = 4,
		}
		[AllowDuplicates]
		public enum DXVA_VideoTransferMatrix : int32
		{
			DXVA_VideoTransferMatrixShift = 15,
			DXVA_VideoTransferMatrixMask = 229376,
			DXVA_VideoTransferMatrix_Unknown = 0,
			DXVA_VideoTransferMatrix_BT709 = 1,
			DXVA_VideoTransferMatrix_BT601 = 2,
			DXVA_VideoTransferMatrix_SMPTE240M = 3,
		}
		[AllowDuplicates]
		public enum DXVA_NominalRange : int32
		{
			DXVA_NominalRangeShift = 12,
			DXVA_NominalRangeMask = 28672,
			DXVA_NominalRange_Unknown = 0,
			DXVA_NominalRange_Normal = 1,
			DXVA_NominalRange_Wide = 2,
			DXVA_NominalRange_0_255 = 1,
			DXVA_NominalRange_16_235 = 2,
			DXVA_NominalRange_48_208 = 3,
		}
		[AllowDuplicates]
		public enum DXVA_VideoChromaSubsampling : int32
		{
			DXVA_VideoChromaSubsamplingShift = 8,
			DXVA_VideoChromaSubsamplingMask = 3840,
			DXVA_VideoChromaSubsampling_Unknown = 0,
			DXVA_VideoChromaSubsampling_ProgressiveChroma = 8,
			DXVA_VideoChromaSubsampling_Horizontally_Cosited = 4,
			DXVA_VideoChromaSubsampling_Vertically_Cosited = 2,
			DXVA_VideoChromaSubsampling_Vertically_AlignedChromaPlanes = 1,
			DXVA_VideoChromaSubsampling_MPEG2 = 5,
			DXVA_VideoChromaSubsampling_MPEG1 = 1,
			DXVA_VideoChromaSubsampling_DV_PAL = 6,
			DXVA_VideoChromaSubsampling_Cosited = 7,
		}
		[AllowDuplicates]
		public enum DXVA_VideoProcessCaps : int32
		{
			DXVA_VideoProcess_None = 0,
			DXVA_VideoProcess_YUV2RGB = 1,
			DXVA_VideoProcess_StretchX = 2,
			DXVA_VideoProcess_StretchY = 4,
			DXVA_VideoProcess_AlphaBlend = 8,
			DXVA_VideoProcess_SubRects = 16,
			DXVA_VideoProcess_SubStreams = 32,
			DXVA_VideoProcess_SubStreamsExtended = 64,
			DXVA_VideoProcess_YUV2RGBExtended = 128,
			DXVA_VideoProcess_AlphaBlendExtended = 256,
		}
		[AllowDuplicates]
		public enum DXVA_DeinterlaceTech : int32
		{
			DXVA_DeinterlaceTech_Unknown = 0,
			DXVA_DeinterlaceTech_BOBLineReplicate = 1,
			DXVA_DeinterlaceTech_BOBVerticalStretch = 2,
			DXVA_DeinterlaceTech_BOBVerticalStretch4Tap = 256,
			DXVA_DeinterlaceTech_MedianFiltering = 4,
			DXVA_DeinterlaceTech_EdgeFiltering = 16,
			DXVA_DeinterlaceTech_FieldAdaptive = 32,
			DXVA_DeinterlaceTech_PixelAdaptive = 64,
			DXVA_DeinterlaceTech_MotionVectorSteered = 128,
		}
		[AllowDuplicates]
		public enum DXVA_SampleFlags : int32
		{
			DXVA_SampleFlagsMask = 15,
			DXVA_SampleFlag_Palette_Changed = 1,
			DXVA_SampleFlag_SrcRect_Changed = 2,
			DXVA_SampleFlag_DstRect_Changed = 4,
			DXVA_SampleFlag_ColorData_Changed = 8,
		}
		[AllowDuplicates]
		public enum DXVA_DestinationFlags : int32
		{
			DXVA_DestinationFlagMask = 15,
			DXVA_DestinationFlag_Background_Changed = 1,
			DXVA_DestinationFlag_TargetRect_Changed = 2,
			DXVA_DestinationFlag_ColorData_Changed = 4,
			DXVA_DestinationFlag_Alpha_Changed = 8,
		}
		[AllowDuplicates]
		public enum DXVA_ProcAmpControlProp : int32
		{
			DXVA_ProcAmp_None = 0,
			DXVA_ProcAmp_Brightness = 1,
			DXVA_ProcAmp_Contrast = 2,
			DXVA_ProcAmp_Hue = 4,
			DXVA_ProcAmp_Saturation = 8,
		}
		[AllowDuplicates]
		public enum eAVEncCommonRateControlMode : int32
		{
			eAVEncCommonRateControlMode_CBR = 0,
			eAVEncCommonRateControlMode_PeakConstrainedVBR = 1,
			eAVEncCommonRateControlMode_UnconstrainedVBR = 2,
			eAVEncCommonRateControlMode_Quality = 3,
			eAVEncCommonRateControlMode_LowDelayVBR = 4,
			eAVEncCommonRateControlMode_GlobalVBR = 5,
			eAVEncCommonRateControlMode_GlobalLowDelayVBR = 6,
		}
		[AllowDuplicates]
		public enum eAVEncCommonStreamEndHandling : int32
		{
			eAVEncCommonStreamEndHandling_DiscardPartial = 0,
			eAVEncCommonStreamEndHandling_EnsureComplete = 1,
		}
		[AllowDuplicates]
		public enum eAVEncVideoOutputFrameRateConversion : int32
		{
			eAVEncVideoOutputFrameRateConversion_Disable = 0,
			eAVEncVideoOutputFrameRateConversion_Enable = 1,
			eAVEncVideoOutputFrameRateConversion_Alias = 2,
		}
		[AllowDuplicates]
		public enum eAVDecVideoSoftwareDeinterlaceMode : int32
		{
			eAVDecVideoSoftwareDeinterlaceMode_NoDeinterlacing = 0,
			eAVDecVideoSoftwareDeinterlaceMode_ProgressiveDeinterlacing = 1,
			eAVDecVideoSoftwareDeinterlaceMode_BOBDeinterlacing = 2,
			eAVDecVideoSoftwareDeinterlaceMode_SmartBOBDeinterlacing = 3,
		}
		[AllowDuplicates]
		public enum eAVFastDecodeMode : int32
		{
			eVideoDecodeCompliant = 0,
			eVideoDecodeOptimalLF = 1,
			eVideoDecodeDisableLF = 2,
			eVideoDecodeFastest = 32,
		}
		[AllowDuplicates]
		public enum eAVDecVideoH264ErrorConcealment : int32
		{
			eErrorConcealmentTypeDrop = 0,
			eErrorConcealmentTypeBasic = 1,
			eErrorConcealmentTypeAdvanced = 2,
			eErrorConcealmentTypeDXVASetBlack = 3,
		}
		[AllowDuplicates]
		public enum eAVDecVideoMPEG2ErrorConcealment : int32
		{
			eErrorConcealmentOff = 0,
			eErrorConcealmentOn = 1,
		}
		[AllowDuplicates]
		public enum eAVDecVideoCodecType : int32
		{
			eAVDecVideoCodecType_NOTPLAYING = 0,
			eAVDecVideoCodecType_MPEG2 = 1,
			eAVDecVideoCodecType_H264 = 2,
		}
		[AllowDuplicates]
		public enum eAVDecVideoDXVAMode : int32
		{
			eAVDecVideoDXVAMode_NOTPLAYING = 0,
			eAVDecVideoDXVAMode_SW = 1,
			eAVDecVideoDXVAMode_MC = 2,
			eAVDecVideoDXVAMode_IDCT = 3,
			eAVDecVideoDXVAMode_VLD = 4,
		}
		[AllowDuplicates]
		public enum eAVDecVideoDXVABusEncryption : int32
		{
			eAVDecVideoDXVABusEncryption_NONE = 0,
			eAVDecVideoDXVABusEncryption_PRIVATE = 1,
			eAVDecVideoDXVABusEncryption_AES = 2,
		}
		[AllowDuplicates]
		public enum eAVEncVideoSourceScanType : int32
		{
			eAVEncVideoSourceScan_Automatic = 0,
			eAVEncVideoSourceScan_Interlaced = 1,
			eAVEncVideoSourceScan_Progressive = 2,
		}
		[AllowDuplicates]
		public enum eAVEncVideoOutputScanType : int32
		{
			eAVEncVideoOutputScan_Progressive = 0,
			eAVEncVideoOutputScan_Interlaced = 1,
			eAVEncVideoOutputScan_SameAsInput = 2,
			eAVEncVideoOutputScan_Automatic = 3,
		}
		[AllowDuplicates]
		public enum eAVEncVideoFilmContent : int32
		{
			eAVEncVideoFilmContent_VideoOnly = 0,
			eAVEncVideoFilmContent_FilmOnly = 1,
			eAVEncVideoFilmContent_Mixed = 2,
		}
		[AllowDuplicates]
		public enum eAVEncVideoChromaResolution : int32
		{
			eAVEncVideoChromaResolution_SameAsSource = 0,
			eAVEncVideoChromaResolution_444 = 1,
			eAVEncVideoChromaResolution_422 = 2,
			eAVEncVideoChromaResolution_420 = 3,
			eAVEncVideoChromaResolution_411 = 4,
		}
		[AllowDuplicates]
		public enum eAVEncVideoChromaSubsampling : int32
		{
			eAVEncVideoChromaSubsamplingFormat_SameAsSource = 0,
			eAVEncVideoChromaSubsamplingFormat_ProgressiveChroma = 8,
			eAVEncVideoChromaSubsamplingFormat_Horizontally_Cosited = 4,
			eAVEncVideoChromaSubsamplingFormat_Vertically_Cosited = 2,
			eAVEncVideoChromaSubsamplingFormat_Vertically_AlignedChromaPlanes = 1,
		}
		[AllowDuplicates]
		public enum eAVEncVideoColorPrimaries : int32
		{
			eAVEncVideoColorPrimaries_SameAsSource = 0,
			eAVEncVideoColorPrimaries_Reserved = 1,
			eAVEncVideoColorPrimaries_BT709 = 2,
			eAVEncVideoColorPrimaries_BT470_2_SysM = 3,
			eAVEncVideoColorPrimaries_BT470_2_SysBG = 4,
			eAVEncVideoColorPrimaries_SMPTE170M = 5,
			eAVEncVideoColorPrimaries_SMPTE240M = 6,
			eAVEncVideoColorPrimaries_EBU3231 = 7,
			eAVEncVideoColorPrimaries_SMPTE_C = 8,
		}
		[AllowDuplicates]
		public enum eAVEncVideoColorTransferFunction : int32
		{
			eAVEncVideoColorTransferFunction_SameAsSource = 0,
			eAVEncVideoColorTransferFunction_10 = 1,
			eAVEncVideoColorTransferFunction_18 = 2,
			eAVEncVideoColorTransferFunction_20 = 3,
			eAVEncVideoColorTransferFunction_22 = 4,
			eAVEncVideoColorTransferFunction_22_709 = 5,
			eAVEncVideoColorTransferFunction_22_240M = 6,
			eAVEncVideoColorTransferFunction_22_8bit_sRGB = 7,
			eAVEncVideoColorTransferFunction_28 = 8,
		}
		[AllowDuplicates]
		public enum eAVEncVideoColorTransferMatrix : int32
		{
			eAVEncVideoColorTransferMatrix_SameAsSource = 0,
			eAVEncVideoColorTransferMatrix_BT709 = 1,
			eAVEncVideoColorTransferMatrix_BT601 = 2,
			eAVEncVideoColorTransferMatrix_SMPTE240M = 3,
		}
		[AllowDuplicates]
		public enum eAVEncVideoColorLighting : int32
		{
			eAVEncVideoColorLighting_SameAsSource = 0,
			eAVEncVideoColorLighting_Unknown = 1,
			eAVEncVideoColorLighting_Bright = 2,
			eAVEncVideoColorLighting_Office = 3,
			eAVEncVideoColorLighting_Dim = 4,
			eAVEncVideoColorLighting_Dark = 5,
		}
		[AllowDuplicates]
		public enum eAVEncVideoColorNominalRange : int32
		{
			eAVEncVideoColorNominalRange_SameAsSource = 0,
			eAVEncVideoColorNominalRange_0_255 = 1,
			eAVEncVideoColorNominalRange_16_235 = 2,
			eAVEncVideoColorNominalRange_48_208 = 3,
		}
		[AllowDuplicates]
		public enum eAVEncInputVideoSystem : int32
		{
			eAVEncInputVideoSystem_Unspecified = 0,
			eAVEncInputVideoSystem_PAL = 1,
			eAVEncInputVideoSystem_NTSC = 2,
			eAVEncInputVideoSystem_SECAM = 3,
			eAVEncInputVideoSystem_MAC = 4,
			eAVEncInputVideoSystem_HDV = 5,
			eAVEncInputVideoSystem_Component = 6,
		}
		[AllowDuplicates]
		public enum eAVEncVideoContentType : int32
		{
			eAVEncVideoContentType_Unknown = 0,
			eAVEncVideoContentType_FixedCameraAngle = 1,
		}
		[AllowDuplicates]
		public enum eAVEncAdaptiveMode : int32
		{
			eAVEncAdaptiveMode_None = 0,
			eAVEncAdaptiveMode_Resolution = 1,
			eAVEncAdaptiveMode_FrameRate = 2,
		}
		[AllowDuplicates]
		public enum eAVScenarioInfo : int32
		{
			eAVScenarioInfo_Unknown = 0,
			eAVScenarioInfo_DisplayRemoting = 1,
			eAVScenarioInfo_VideoConference = 2,
			eAVScenarioInfo_Archive = 3,
			eAVScenarioInfo_LiveStreaming = 4,
			eAVScenarioInfo_CameraRecord = 5,
			eAVScenarioInfo_DisplayRemotingWithFeatureMap = 6,
		}
		[AllowDuplicates]
		public enum eVideoEncoderDisplayContentType : int32
		{
			eVideoEncoderDisplayContent_Unknown = 0,
			eVideoEncoderDisplayContent_FullScreenVideo = 1,
		}
		[AllowDuplicates]
		public enum eAVEncMuxOutput : int32
		{
			eAVEncMuxOutputAuto = 0,
			eAVEncMuxOutputPS = 1,
			eAVEncMuxOutputTS = 2,
		}
		[AllowDuplicates]
		public enum eAVEncAudioDualMono : int32
		{
			eAVEncAudioDualMono_SameAsInput = 0,
			eAVEncAudioDualMono_Off = 1,
			eAVEncAudioDualMono_On = 2,
		}
		[AllowDuplicates]
		public enum eAVEncAudioInputContent : int32
		{
			AVEncAudioInputContent_Unknown = 0,
			AVEncAudioInputContent_Voice = 1,
			AVEncAudioInputContent_Music = 2,
		}
		[AllowDuplicates]
		public enum eAVEncMPVProfile : int32
		{
			eAVEncMPVProfile_unknown = 0,
			eAVEncMPVProfile_Simple = 1,
			eAVEncMPVProfile_Main = 2,
			eAVEncMPVProfile_High = 3,
			eAVEncMPVProfile_422 = 4,
		}
		[AllowDuplicates]
		public enum eAVEncMPVLevel : int32
		{
			eAVEncMPVLevel_Low = 1,
			eAVEncMPVLevel_Main = 2,
			eAVEncMPVLevel_High1440 = 3,
			eAVEncMPVLevel_High = 4,
		}
		[AllowDuplicates]
		public enum eAVEncH263VProfile : int32
		{
			eAVEncH263VProfile_Base = 0,
			eAVEncH263VProfile_CompatibilityV2 = 1,
			eAVEncH263VProfile_CompatibilityV1 = 2,
			eAVEncH263VProfile_WirelessV2 = 3,
			eAVEncH263VProfile_WirelessV3 = 4,
			eAVEncH263VProfile_HighCompression = 5,
			eAVEncH263VProfile_Internet = 6,
			eAVEncH263VProfile_Interlace = 7,
			eAVEncH263VProfile_HighLatency = 8,
		}
		[AllowDuplicates]
		public enum eAVEncH264VProfile : int32
		{
			eAVEncH264VProfile_unknown = 0,
			eAVEncH264VProfile_Simple = 66,
			eAVEncH264VProfile_Base = 66,
			eAVEncH264VProfile_Main = 77,
			eAVEncH264VProfile_High = 100,
			eAVEncH264VProfile_422 = 122,
			eAVEncH264VProfile_High10 = 110,
			eAVEncH264VProfile_444 = 244,
			eAVEncH264VProfile_Extended = 88,
			eAVEncH264VProfile_ScalableBase = 83,
			eAVEncH264VProfile_ScalableHigh = 86,
			eAVEncH264VProfile_MultiviewHigh = 118,
			eAVEncH264VProfile_StereoHigh = 128,
			eAVEncH264VProfile_ConstrainedBase = 256,
			eAVEncH264VProfile_UCConstrainedHigh = 257,
			eAVEncH264VProfile_UCScalableConstrainedBase = 258,
			eAVEncH264VProfile_UCScalableConstrainedHigh = 259,
		}
		[AllowDuplicates]
		public enum eAVEncH265VProfile : int32
		{
			eAVEncH265VProfile_unknown = 0,
			eAVEncH265VProfile_Main_420_8 = 1,
			eAVEncH265VProfile_Main_420_10 = 2,
			eAVEncH265VProfile_Main_420_12 = 3,
			eAVEncH265VProfile_Main_422_10 = 4,
			eAVEncH265VProfile_Main_422_12 = 5,
			eAVEncH265VProfile_Main_444_8 = 6,
			eAVEncH265VProfile_Main_444_10 = 7,
			eAVEncH265VProfile_Main_444_12 = 8,
			eAVEncH265VProfile_Monochrome_12 = 9,
			eAVEncH265VProfile_Monochrome_16 = 10,
			eAVEncH265VProfile_MainIntra_420_8 = 11,
			eAVEncH265VProfile_MainIntra_420_10 = 12,
			eAVEncH265VProfile_MainIntra_420_12 = 13,
			eAVEncH265VProfile_MainIntra_422_10 = 14,
			eAVEncH265VProfile_MainIntra_422_12 = 15,
			eAVEncH265VProfile_MainIntra_444_8 = 16,
			eAVEncH265VProfile_MainIntra_444_10 = 17,
			eAVEncH265VProfile_MainIntra_444_12 = 18,
			eAVEncH265VProfile_MainIntra_444_16 = 19,
			eAVEncH265VProfile_MainStill_420_8 = 20,
			eAVEncH265VProfile_MainStill_444_8 = 21,
			eAVEncH265VProfile_MainStill_444_16 = 22,
		}
		[AllowDuplicates]
		public enum eAVEncVP9VProfile : int32
		{
			eAVEncVP9VProfile_unknown = 0,
			eAVEncVP9VProfile_420_8 = 1,
			eAVEncVP9VProfile_420_10 = 2,
			eAVEncVP9VProfile_420_12 = 3,
		}
		[AllowDuplicates]
		public enum eAVEncH263PictureType : int32
		{
			eAVEncH263PictureType_I = 0,
			eAVEncH263PictureType_P = 1,
			eAVEncH263PictureType_B = 2,
		}
		[AllowDuplicates]
		public enum eAVEncH264PictureType : int32
		{
			eAVEncH264PictureType_IDR = 0,
			eAVEncH264PictureType_P = 1,
			eAVEncH264PictureType_B = 2,
		}
		[AllowDuplicates]
		public enum eAVEncH263VLevel : int32
		{
			eAVEncH263VLevel1 = 10,
			eAVEncH263VLevel2 = 20,
			eAVEncH263VLevel3 = 30,
			eAVEncH263VLevel4 = 40,
			eAVEncH263VLevel4_5 = 45,
			eAVEncH263VLevel5 = 50,
			eAVEncH263VLevel6 = 60,
			eAVEncH263VLevel7 = 70,
		}
		[AllowDuplicates]
		public enum eAVEncH264VLevel : int32
		{
			eAVEncH264VLevel1 = 10,
			eAVEncH264VLevel1_b = 11,
			eAVEncH264VLevel1_1 = 11,
			eAVEncH264VLevel1_2 = 12,
			eAVEncH264VLevel1_3 = 13,
			eAVEncH264VLevel2 = 20,
			eAVEncH264VLevel2_1 = 21,
			eAVEncH264VLevel2_2 = 22,
			eAVEncH264VLevel3 = 30,
			eAVEncH264VLevel3_1 = 31,
			eAVEncH264VLevel3_2 = 32,
			eAVEncH264VLevel4 = 40,
			eAVEncH264VLevel4_1 = 41,
			eAVEncH264VLevel4_2 = 42,
			eAVEncH264VLevel5 = 50,
			eAVEncH264VLevel5_1 = 51,
			eAVEncH264VLevel5_2 = 52,
		}
		[AllowDuplicates]
		public enum eAVEncH265VLevel : int32
		{
			eAVEncH265VLevel1 = 30,
			eAVEncH265VLevel2 = 60,
			eAVEncH265VLevel2_1 = 63,
			eAVEncH265VLevel3 = 90,
			eAVEncH265VLevel3_1 = 93,
			eAVEncH265VLevel4 = 120,
			eAVEncH265VLevel4_1 = 123,
			eAVEncH265VLevel5 = 150,
			eAVEncH265VLevel5_1 = 153,
			eAVEncH265VLevel5_2 = 156,
			eAVEncH265VLevel6 = 180,
			eAVEncH265VLevel6_1 = 183,
			eAVEncH265VLevel6_2 = 186,
		}
		[AllowDuplicates]
		public enum eAVEncMPVFrameFieldMode : int32
		{
			eAVEncMPVFrameFieldMode_FieldMode = 0,
			eAVEncMPVFrameFieldMode_FrameMode = 1,
		}
		[AllowDuplicates]
		public enum eAVEncMPVSceneDetection : int32
		{
			eAVEncMPVSceneDetection_None = 0,
			eAVEncMPVSceneDetection_InsertIPicture = 1,
			eAVEncMPVSceneDetection_StartNewGOP = 2,
			eAVEncMPVSceneDetection_StartNewLocatableGOP = 3,
		}
		[AllowDuplicates]
		public enum eAVEncMPVScanPattern : int32
		{
			eAVEncMPVScanPattern_Auto = 0,
			eAVEncMPVScanPattern_ZigZagScan = 1,
			eAVEncMPVScanPattern_AlternateScan = 2,
		}
		[AllowDuplicates]
		public enum eAVEncMPVQScaleType : int32
		{
			eAVEncMPVQScaleType_Auto = 0,
			eAVEncMPVQScaleType_Linear = 1,
			eAVEncMPVQScaleType_NonLinear = 2,
		}
		[AllowDuplicates]
		public enum eAVEncMPVIntraVLCTable : int32
		{
			eAVEncMPVIntraVLCTable_Auto = 0,
			eAVEncMPVIntraVLCTable_MPEG1 = 1,
			eAVEncMPVIntraVLCTable_Alternate = 2,
		}
		[AllowDuplicates]
		public enum eAVEncMPALayer : int32
		{
			eAVEncMPALayer_1 = 1,
			eAVEncMPALayer_2 = 2,
			eAVEncMPALayer_3 = 3,
		}
		[AllowDuplicates]
		public enum eAVEncMPACodingMode : int32
		{
			eAVEncMPACodingMode_Mono = 0,
			eAVEncMPACodingMode_Stereo = 1,
			eAVEncMPACodingMode_DualChannel = 2,
			eAVEncMPACodingMode_JointStereo = 3,
			eAVEncMPACodingMode_Surround = 4,
		}
		[AllowDuplicates]
		public enum eAVEncMPAEmphasisType : int32
		{
			eAVEncMPAEmphasisType_None = 0,
			eAVEncMPAEmphasisType_50_15 = 1,
			eAVEncMPAEmphasisType_Reserved = 2,
			eAVEncMPAEmphasisType_CCITT_J17 = 3,
		}
		[AllowDuplicates]
		public enum eAVEncDDService : int32
		{
			eAVEncDDService_CM = 0,
			eAVEncDDService_ME = 1,
			eAVEncDDService_VI = 2,
			eAVEncDDService_HI = 3,
			eAVEncDDService_D = 4,
			eAVEncDDService_C = 5,
			eAVEncDDService_E = 6,
			eAVEncDDService_VO = 7,
		}
		[AllowDuplicates]
		public enum eAVEncDDProductionRoomType : int32
		{
			eAVEncDDProductionRoomType_NotIndicated = 0,
			eAVEncDDProductionRoomType_Large = 1,
			eAVEncDDProductionRoomType_Small = 2,
		}
		[AllowDuplicates]
		public enum eAVEncDDDynamicRangeCompressionControl : int32
		{
			eAVEncDDDynamicRangeCompressionControl_None = 0,
			eAVEncDDDynamicRangeCompressionControl_FilmStandard = 1,
			eAVEncDDDynamicRangeCompressionControl_FilmLight = 2,
			eAVEncDDDynamicRangeCompressionControl_MusicStandard = 3,
			eAVEncDDDynamicRangeCompressionControl_MusicLight = 4,
			eAVEncDDDynamicRangeCompressionControl_Speech = 5,
		}
		[AllowDuplicates]
		public enum eAVEncDDSurroundExMode : int32
		{
			eAVEncDDSurroundExMode_NotIndicated = 0,
			eAVEncDDSurroundExMode_No = 1,
			eAVEncDDSurroundExMode_Yes = 2,
		}
		[AllowDuplicates]
		public enum eAVEncDDPreferredStereoDownMixMode : int32
		{
			eAVEncDDPreferredStereoDownMixMode_LtRt = 0,
			eAVEncDDPreferredStereoDownMixMode_LoRo = 1,
		}
		[AllowDuplicates]
		public enum eAVEncDDAtoDConverterType : int32
		{
			eAVEncDDAtoDConverterType_Standard = 0,
			eAVEncDDAtoDConverterType_HDCD = 1,
		}
		[AllowDuplicates]
		public enum eAVEncDDHeadphoneMode : int32
		{
			eAVEncDDHeadphoneMode_NotIndicated = 0,
			eAVEncDDHeadphoneMode_NotEncoded = 1,
			eAVEncDDHeadphoneMode_Encoded = 2,
		}
		[AllowDuplicates]
		public enum eAVDecVideoInputScanType : int32
		{
			eAVDecVideoInputScan_Unknown = 0,
			eAVDecVideoInputScan_Progressive = 1,
			eAVDecVideoInputScan_Interlaced_UpperFieldFirst = 2,
			eAVDecVideoInputScan_Interlaced_LowerFieldFirst = 3,
		}
		[AllowDuplicates]
		public enum eAVDecVideoSWPowerLevel : int32
		{
			eAVDecVideoSWPowerLevel_BatteryLife = 0,
			eAVDecVideoSWPowerLevel_Balanced = 50,
			eAVDecVideoSWPowerLevel_VideoQuality = 100,
		}
		[AllowDuplicates]
		public enum eAVDecAACDownmixMode : int32
		{
			eAVDecAACUseISODownmix = 0,
			eAVDecAACUseARIBDownmix = 1,
		}
		[AllowDuplicates]
		public enum eAVDecHEAACDynamicRangeControl : int32
		{
			eAVDecHEAACDynamicRangeControl_OFF = 0,
			eAVDecHEAACDynamicRangeControl_ON = 1,
		}
		[AllowDuplicates]
		public enum eAVDecAudioDualMono : int32
		{
			eAVDecAudioDualMono_IsNotDualMono = 0,
			eAVDecAudioDualMono_IsDualMono = 1,
			eAVDecAudioDualMono_UnSpecified = 2,
		}
		[AllowDuplicates]
		public enum eAVDecAudioDualMonoReproMode : int32
		{
			eAVDecAudioDualMonoReproMode_STEREO = 0,
			eAVDecAudioDualMonoReproMode_LEFT_MONO = 1,
			eAVDecAudioDualMonoReproMode_RIGHT_MONO = 2,
			eAVDecAudioDualMonoReproMode_MIX_MONO = 3,
		}
		[AllowDuplicates]
		public enum eAVAudioChannelConfig : int32
		{
			eAVAudioChannelConfig_FRONT_LEFT = 1,
			eAVAudioChannelConfig_FRONT_RIGHT = 2,
			eAVAudioChannelConfig_FRONT_CENTER = 4,
			eAVAudioChannelConfig_LOW_FREQUENCY = 8,
			eAVAudioChannelConfig_BACK_LEFT = 16,
			eAVAudioChannelConfig_BACK_RIGHT = 32,
			eAVAudioChannelConfig_FRONT_LEFT_OF_CENTER = 64,
			eAVAudioChannelConfig_FRONT_RIGHT_OF_CENTER = 128,
			eAVAudioChannelConfig_BACK_CENTER = 256,
			eAVAudioChannelConfig_SIDE_LEFT = 512,
			eAVAudioChannelConfig_SIDE_RIGHT = 1024,
			eAVAudioChannelConfig_TOP_CENTER = 2048,
			eAVAudioChannelConfig_TOP_FRONT_LEFT = 4096,
			eAVAudioChannelConfig_TOP_FRONT_CENTER = 8192,
			eAVAudioChannelConfig_TOP_FRONT_RIGHT = 16384,
			eAVAudioChannelConfig_TOP_BACK_LEFT = 32768,
			eAVAudioChannelConfig_TOP_BACK_CENTER = 65536,
			eAVAudioChannelConfig_TOP_BACK_RIGHT = 131072,
		}
		[AllowDuplicates]
		public enum eAVDDSurroundMode : int32
		{
			eAVDDSurroundMode_NotIndicated = 0,
			eAVDDSurroundMode_No = 1,
			eAVDDSurroundMode_Yes = 2,
		}
		[AllowDuplicates]
		public enum eAVDecDDOperationalMode : int32
		{
			eAVDecDDOperationalMode_NONE = 0,
			eAVDecDDOperationalMode_LINE = 1,
			eAVDecDDOperationalMode_RF = 2,
			eAVDecDDOperationalMode_CUSTOM0 = 3,
			eAVDecDDOperationalMode_CUSTOM1 = 4,
			eAVDecDDOperationalMode_PORTABLE8 = 5,
			eAVDecDDOperationalMode_PORTABLE11 = 6,
			eAVDecDDOperationalMode_PORTABLE14 = 7,
		}
		[AllowDuplicates]
		public enum eAVDecDDMatrixDecodingMode : int32
		{
			eAVDecDDMatrixDecodingMode_OFF = 0,
			eAVDecDDMatrixDecodingMode_ON = 1,
			eAVDecDDMatrixDecodingMode_AUTO = 2,
		}
		[AllowDuplicates]
		public enum eAVDecDDStereoDownMixMode : int32
		{
			eAVDecDDStereoDownMixMode_Auto = 0,
			eAVDecDDStereoDownMixMode_LtRt = 1,
			eAVDecDDStereoDownMixMode_LoRo = 2,
		}
		[AllowDuplicates]
		public enum eAVDSPLoudnessEqualization : int32
		{
			eAVDSPLoudnessEqualization_OFF = 0,
			eAVDSPLoudnessEqualization_ON = 1,
			eAVDSPLoudnessEqualization_AUTO = 2,
		}
		[AllowDuplicates]
		public enum eAVDSPSpeakerFill : int32
		{
			eAVDSPSpeakerFill_OFF = 0,
			eAVDSPSpeakerFill_ON = 1,
			eAVDSPSpeakerFill_AUTO = 2,
		}
		[AllowDuplicates]
		public enum eAVEncChromaEncodeMode : int32
		{
			eAVEncChromaEncodeMode_420 = 0,
			eAVEncChromaEncodeMode_444 = 1,
			eAVEncChromaEncodeMode_444_v2 = 2,
		}
		[AllowDuplicates]
		public enum DXVAHD_FRAME_FORMAT : int32
		{
			DXVAHD_FRAME_FORMAT_PROGRESSIVE = 0,
			DXVAHD_FRAME_FORMAT_INTERLACED_TOP_FIELD_FIRST = 1,
			DXVAHD_FRAME_FORMAT_INTERLACED_BOTTOM_FIELD_FIRST = 2,
		}
		[AllowDuplicates]
		public enum DXVAHD_DEVICE_USAGE : int32
		{
			DXVAHD_DEVICE_USAGE_PLAYBACK_NORMAL = 0,
			DXVAHD_DEVICE_USAGE_OPTIMAL_SPEED = 1,
			DXVAHD_DEVICE_USAGE_OPTIMAL_QUALITY = 2,
		}
		[AllowDuplicates]
		public enum DXVAHD_SURFACE_TYPE : int32
		{
			DXVAHD_SURFACE_TYPE_VIDEO_INPUT = 0,
			DXVAHD_SURFACE_TYPE_VIDEO_INPUT_PRIVATE = 1,
			DXVAHD_SURFACE_TYPE_VIDEO_OUTPUT = 2,
		}
		[AllowDuplicates]
		public enum DXVAHD_DEVICE_TYPE : int32
		{
			DXVAHD_DEVICE_TYPE_HARDWARE = 0,
			DXVAHD_DEVICE_TYPE_SOFTWARE = 1,
			DXVAHD_DEVICE_TYPE_REFERENCE = 2,
			DXVAHD_DEVICE_TYPE_OTHER = 3,
		}
		[AllowDuplicates]
		public enum DXVAHD_DEVICE_CAPS : int32
		{
			DXVAHD_DEVICE_CAPS_LINEAR_SPACE = 1,
			DXVAHD_DEVICE_CAPS_xvYCC = 2,
			DXVAHD_DEVICE_CAPS_RGB_RANGE_CONVERSION = 4,
			DXVAHD_DEVICE_CAPS_YCbCr_MATRIX_CONVERSION = 8,
		}
		[AllowDuplicates]
		public enum DXVAHD_FEATURE_CAPS : int32
		{
			DXVAHD_FEATURE_CAPS_ALPHA_FILL = 1,
			DXVAHD_FEATURE_CAPS_CONSTRICTION = 2,
			DXVAHD_FEATURE_CAPS_LUMA_KEY = 4,
			DXVAHD_FEATURE_CAPS_ALPHA_PALETTE = 8,
		}
		[AllowDuplicates]
		public enum DXVAHD_FILTER_CAPS : int32
		{
			DXVAHD_FILTER_CAPS_BRIGHTNESS = 1,
			DXVAHD_FILTER_CAPS_CONTRAST = 2,
			DXVAHD_FILTER_CAPS_HUE = 4,
			DXVAHD_FILTER_CAPS_SATURATION = 8,
			DXVAHD_FILTER_CAPS_NOISE_REDUCTION = 16,
			DXVAHD_FILTER_CAPS_EDGE_ENHANCEMENT = 32,
			DXVAHD_FILTER_CAPS_ANAMORPHIC_SCALING = 64,
		}
		[AllowDuplicates]
		public enum DXVAHD_INPUT_FORMAT_CAPS : int32
		{
			DXVAHD_INPUT_FORMAT_CAPS_RGB_INTERLACED = 1,
			DXVAHD_INPUT_FORMAT_CAPS_RGB_PROCAMP = 2,
			DXVAHD_INPUT_FORMAT_CAPS_RGB_LUMA_KEY = 4,
			DXVAHD_INPUT_FORMAT_CAPS_PALETTE_INTERLACED = 8,
		}
		[AllowDuplicates]
		public enum DXVAHD_PROCESSOR_CAPS : int32
		{
			DXVAHD_PROCESSOR_CAPS_DEINTERLACE_BLEND = 1,
			DXVAHD_PROCESSOR_CAPS_DEINTERLACE_BOB = 2,
			DXVAHD_PROCESSOR_CAPS_DEINTERLACE_ADAPTIVE = 4,
			DXVAHD_PROCESSOR_CAPS_DEINTERLACE_MOTION_COMPENSATION = 8,
			DXVAHD_PROCESSOR_CAPS_INVERSE_TELECINE = 16,
			DXVAHD_PROCESSOR_CAPS_FRAME_RATE_CONVERSION = 32,
		}
		[AllowDuplicates]
		public enum DXVAHD_ITELECINE_CAPS : int32
		{
			DXVAHD_ITELECINE_CAPS_32 = 1,
			DXVAHD_ITELECINE_CAPS_22 = 2,
			DXVAHD_ITELECINE_CAPS_2224 = 4,
			DXVAHD_ITELECINE_CAPS_2332 = 8,
			DXVAHD_ITELECINE_CAPS_32322 = 16,
			DXVAHD_ITELECINE_CAPS_55 = 32,
			DXVAHD_ITELECINE_CAPS_64 = 64,
			DXVAHD_ITELECINE_CAPS_87 = 128,
			DXVAHD_ITELECINE_CAPS_222222222223 = 256,
			DXVAHD_ITELECINE_CAPS_OTHER = -2147483648,
		}
		[AllowDuplicates]
		public enum DXVAHD_FILTER : int32
		{
			DXVAHD_FILTER_BRIGHTNESS = 0,
			DXVAHD_FILTER_CONTRAST = 1,
			DXVAHD_FILTER_HUE = 2,
			DXVAHD_FILTER_SATURATION = 3,
			DXVAHD_FILTER_NOISE_REDUCTION = 4,
			DXVAHD_FILTER_EDGE_ENHANCEMENT = 5,
			DXVAHD_FILTER_ANAMORPHIC_SCALING = 6,
		}
		[AllowDuplicates]
		public enum DXVAHD_BLT_STATE : int32
		{
			DXVAHD_BLT_STATE_TARGET_RECT = 0,
			DXVAHD_BLT_STATE_BACKGROUND_COLOR = 1,
			DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE = 2,
			DXVAHD_BLT_STATE_ALPHA_FILL = 3,
			DXVAHD_BLT_STATE_CONSTRICTION = 4,
			DXVAHD_BLT_STATE_PRIVATE = 1000,
		}
		[AllowDuplicates]
		public enum DXVAHD_ALPHA_FILL_MODE : int32
		{
			DXVAHD_ALPHA_FILL_MODE_OPAQUE = 0,
			DXVAHD_ALPHA_FILL_MODE_BACKGROUND = 1,
			DXVAHD_ALPHA_FILL_MODE_DESTINATION = 2,
			DXVAHD_ALPHA_FILL_MODE_SOURCE_STREAM = 3,
		}
		[AllowDuplicates]
		public enum DXVAHD_STREAM_STATE : int32
		{
			DXVAHD_STREAM_STATE_D3DFORMAT = 0,
			DXVAHD_STREAM_STATE_FRAME_FORMAT = 1,
			DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE = 2,
			DXVAHD_STREAM_STATE_OUTPUT_RATE = 3,
			DXVAHD_STREAM_STATE_SOURCE_RECT = 4,
			DXVAHD_STREAM_STATE_DESTINATION_RECT = 5,
			DXVAHD_STREAM_STATE_ALPHA = 6,
			DXVAHD_STREAM_STATE_PALETTE = 7,
			DXVAHD_STREAM_STATE_LUMA_KEY = 8,
			DXVAHD_STREAM_STATE_ASPECT_RATIO = 9,
			DXVAHD_STREAM_STATE_FILTER_BRIGHTNESS = 100,
			DXVAHD_STREAM_STATE_FILTER_CONTRAST = 101,
			DXVAHD_STREAM_STATE_FILTER_HUE = 102,
			DXVAHD_STREAM_STATE_FILTER_SATURATION = 103,
			DXVAHD_STREAM_STATE_FILTER_NOISE_REDUCTION = 104,
			DXVAHD_STREAM_STATE_FILTER_EDGE_ENHANCEMENT = 105,
			DXVAHD_STREAM_STATE_FILTER_ANAMORPHIC_SCALING = 106,
			DXVAHD_STREAM_STATE_PRIVATE = 1000,
		}
		[AllowDuplicates]
		public enum DXVAHD_OUTPUT_RATE : int32
		{
			DXVAHD_OUTPUT_RATE_NORMAL = 0,
			DXVAHD_OUTPUT_RATE_HALF = 1,
			DXVAHD_OUTPUT_RATE_CUSTOM = 2,
		}
		[AllowDuplicates]
		public enum DXVA2_SampleFormat : int32
		{
			DXVA2_SampleFormatMask = 255,
			DXVA2_SampleUnknown = 0,
			DXVA2_SampleProgressiveFrame = 2,
			DXVA2_SampleFieldInterleavedEvenFirst = 3,
			DXVA2_SampleFieldInterleavedOddFirst = 4,
			DXVA2_SampleFieldSingleEven = 5,
			DXVA2_SampleFieldSingleOdd = 6,
			DXVA2_SampleSubStream = 7,
		}
		[AllowDuplicates]
		public enum DXVA2_VideoChromaSubSampling : int32
		{
			DXVA2_VideoChromaSubsamplingMask = 15,
			DXVA2_VideoChromaSubsampling_Unknown = 0,
			DXVA2_VideoChromaSubsampling_ProgressiveChroma = 8,
			DXVA2_VideoChromaSubsampling_Horizontally_Cosited = 4,
			DXVA2_VideoChromaSubsampling_Vertically_Cosited = 2,
			DXVA2_VideoChromaSubsampling_Vertically_AlignedChromaPlanes = 1,
			DXVA2_VideoChromaSubsampling_MPEG2 = 5,
			DXVA2_VideoChromaSubsampling_MPEG1 = 1,
			DXVA2_VideoChromaSubsampling_DV_PAL = 6,
			DXVA2_VideoChromaSubsampling_Cosited = 7,
		}
		[AllowDuplicates]
		public enum DXVA2_NominalRange : int32
		{
			DXVA2_NominalRangeMask = 7,
			DXVA2_NominalRange_Unknown = 0,
			DXVA2_NominalRange_Normal = 1,
			DXVA2_NominalRange_Wide = 2,
			DXVA2_NominalRange_0_255 = 1,
			DXVA2_NominalRange_16_235 = 2,
			DXVA2_NominalRange_48_208 = 3,
		}
		[AllowDuplicates]
		public enum DXVA2_VideoTransferMatrix : int32
		{
			DXVA2_VideoTransferMatrixMask = 7,
			DXVA2_VideoTransferMatrix_Unknown = 0,
			DXVA2_VideoTransferMatrix_BT709 = 1,
			DXVA2_VideoTransferMatrix_BT601 = 2,
			DXVA2_VideoTransferMatrix_SMPTE240M = 3,
		}
		[AllowDuplicates]
		public enum DXVA2_VideoLighting : int32
		{
			DXVA2_VideoLightingMask = 15,
			DXVA2_VideoLighting_Unknown = 0,
			DXVA2_VideoLighting_bright = 1,
			DXVA2_VideoLighting_office = 2,
			DXVA2_VideoLighting_dim = 3,
			DXVA2_VideoLighting_dark = 4,
		}
		[AllowDuplicates]
		public enum DXVA2_VideoPrimaries : int32
		{
			DXVA2_VideoPrimariesMask = 31,
			DXVA2_VideoPrimaries_Unknown = 0,
			DXVA2_VideoPrimaries_reserved = 1,
			DXVA2_VideoPrimaries_BT709 = 2,
			DXVA2_VideoPrimaries_BT470_2_SysM = 3,
			DXVA2_VideoPrimaries_BT470_2_SysBG = 4,
			DXVA2_VideoPrimaries_SMPTE170M = 5,
			DXVA2_VideoPrimaries_SMPTE240M = 6,
			DXVA2_VideoPrimaries_EBU3213 = 7,
			DXVA2_VideoPrimaries_SMPTE_C = 8,
		}
		[AllowDuplicates]
		public enum DXVA2_VideoTransferFunction : int32
		{
			DXVA2_VideoTransFuncMask = 31,
			DXVA2_VideoTransFunc_Unknown = 0,
			DXVA2_VideoTransFunc_10 = 1,
			DXVA2_VideoTransFunc_18 = 2,
			DXVA2_VideoTransFunc_20 = 3,
			DXVA2_VideoTransFunc_22 = 4,
			DXVA2_VideoTransFunc_709 = 5,
			DXVA2_VideoTransFunc_240M = 6,
			DXVA2_VideoTransFunc_sRGB = 7,
			DXVA2_VideoTransFunc_28 = 8,
		}
		[AllowDuplicates]
		public enum DXVA2_DeinterlaceTech : int32
		{
			DXVA2_DeinterlaceTech_Unknown = 0,
			DXVA2_DeinterlaceTech_BOBLineReplicate = 1,
			DXVA2_DeinterlaceTech_BOBVerticalStretch = 2,
			DXVA2_DeinterlaceTech_BOBVerticalStretch4Tap = 4,
			DXVA2_DeinterlaceTech_MedianFiltering = 8,
			DXVA2_DeinterlaceTech_EdgeFiltering = 16,
			DXVA2_DeinterlaceTech_FieldAdaptive = 32,
			DXVA2_DeinterlaceTech_PixelAdaptive = 64,
			DXVA2_DeinterlaceTech_MotionVectorSteered = 128,
			DXVA2_DeinterlaceTech_InverseTelecine = 256,
			DXVA2_DeinterlaceTech_Mask = 511,
		}
		[AllowDuplicates]
		public enum DXVA2_FilterType : int32
		{
			DXVA2_NoiseFilterLumaLevel = 1,
			DXVA2_NoiseFilterLumaThreshold = 2,
			DXVA2_NoiseFilterLumaRadius = 3,
			DXVA2_NoiseFilterChromaLevel = 4,
			DXVA2_NoiseFilterChromaThreshold = 5,
			DXVA2_NoiseFilterChromaRadius = 6,
			DXVA2_DetailFilterLumaLevel = 7,
			DXVA2_DetailFilterLumaThreshold = 8,
			DXVA2_DetailFilterLumaRadius = 9,
			DXVA2_DetailFilterChromaLevel = 10,
			DXVA2_DetailFilterChromaThreshold = 11,
			DXVA2_DetailFilterChromaRadius = 12,
		}
		[AllowDuplicates]
		public enum DXVA2_NoiseFilterTech : int32
		{
			DXVA2_NoiseFilterTech_Unsupported = 0,
			DXVA2_NoiseFilterTech_Unknown = 1,
			DXVA2_NoiseFilterTech_Median = 2,
			DXVA2_NoiseFilterTech_Temporal = 4,
			DXVA2_NoiseFilterTech_BlockNoise = 8,
			DXVA2_NoiseFilterTech_MosquitoNoise = 16,
			DXVA2_NoiseFilterTech_Mask = 31,
		}
		[AllowDuplicates]
		public enum DXVA2_DetailFilterTech : int32
		{
			DXVA2_DetailFilterTech_Unsupported = 0,
			DXVA2_DetailFilterTech_Unknown = 1,
			DXVA2_DetailFilterTech_Edge = 2,
			DXVA2_DetailFilterTech_Sharpening = 4,
			DXVA2_DetailFilterTech_Mask = 7,
		}
		[AllowDuplicates]
		public enum DXVA2_ProcAmp : int32
		{
			DXVA2_ProcAmp_None = 0,
			DXVA2_ProcAmp_Brightness = 1,
			DXVA2_ProcAmp_Contrast = 2,
			DXVA2_ProcAmp_Hue = 4,
			DXVA2_ProcAmp_Saturation = 8,
			DXVA2_ProcAmp_Mask = 15,
		}
		[AllowDuplicates]
		public enum DXVA2_VideoProcess : int32
		{
			DXVA2_VideoProcess_None = 0,
			DXVA2_VideoProcess_YUV2RGB = 1,
			DXVA2_VideoProcess_StretchX = 2,
			DXVA2_VideoProcess_StretchY = 4,
			DXVA2_VideoProcess_AlphaBlend = 8,
			DXVA2_VideoProcess_SubRects = 16,
			DXVA2_VideoProcess_SubStreams = 32,
			DXVA2_VideoProcess_SubStreamsExtended = 64,
			DXVA2_VideoProcess_YUV2RGBExtended = 128,
			DXVA2_VideoProcess_AlphaBlendExtended = 256,
			DXVA2_VideoProcess_Constriction = 512,
			DXVA2_VideoProcess_NoiseFilter = 1024,
			DXVA2_VideoProcess_DetailFilter = 2048,
			DXVA2_VideoProcess_PlanarAlpha = 4096,
			DXVA2_VideoProcess_LinearScaling = 8192,
			DXVA2_VideoProcess_GammaCompensated = 16384,
			DXVA2_VideoProcess_MaintainsOriginalFieldData = 32768,
			DXVA2_VideoProcess_Mask = 65535,
		}
		[AllowDuplicates]
		public enum DXVA2_VPDev : int32
		{
			DXVA2_VPDev_HardwareDevice = 1,
			DXVA2_VPDev_EmulatedDXVA1 = 2,
			DXVA2_VPDev_SoftwareDevice = 4,
			DXVA2_VPDev_Mask = 7,
		}
		[AllowDuplicates]
		public enum DXVA2_SampleData : int32
		{
			DXVA2_SampleData_RFF = 1,
			DXVA2_SampleData_TFF = 2,
			DXVA2_SampleData_RFF_TFF_Present = 4,
			DXVA2_SampleData_Mask = 65535,
		}
		[AllowDuplicates]
		public enum DXVA2_DestData : int32
		{
			DXVA2_DestData_RFF = 1,
			DXVA2_DestData_TFF = 2,
			DXVA2_DestData_RFF_TFF_Present = 4,
			DXVA2_DestData_Mask = 65535,
		}
		[AllowDuplicates]
		public enum DXVA2_BufferfType : int32
		{
			DXVA2_PictureParametersBufferType = 0,
			DXVA2_MacroBlockControlBufferType = 1,
			DXVA2_ResidualDifferenceBufferType = 2,
			DXVA2_DeblockingControlBufferType = 3,
			DXVA2_InverseQuantizationMatrixBufferType = 4,
			DXVA2_SliceControlBufferType = 5,
			DXVA2_BitStreamDateBufferType = 6,
			DXVA2_MotionVectorBuffer = 7,
			DXVA2_FilmGrainBuffer = 8,
		}
		[AllowDuplicates]
		public enum DXVA2_VideoRenderTargetType : int32
		{
			DXVA2_VideoDecoderRenderTarget = 0,
			DXVA2_VideoProcessorRenderTarget = 1,
			DXVA2_VideoSoftwareRenderTarget = 2,
		}
		[AllowDuplicates]
		public enum DXVA2_SurfaceType : int32
		{
			DXVA2_SurfaceType_DecoderRenderTarget = 0,
			DXVA2_SurfaceType_ProcessorRenderTarget = 1,
			DXVA2_SurfaceType_D3DRenderTargetTexture = 2,
		}
		[AllowDuplicates]
		public enum OPM_TYPE : int32
		{
			OPM_OMAC_SIZE = 16,
			OPM_128_BIT_RANDOM_NUMBER_SIZE = 16,
			OPM_ENCRYPTED_INITIALIZATION_PARAMETERS_SIZE = 256,
			OPM_CONFIGURE_SETTING_DATA_SIZE = 4056,
			OPM_GET_INFORMATION_PARAMETERS_SIZE = 4056,
			OPM_REQUESTED_INFORMATION_SIZE = 4076,
			OPM_HDCP_KEY_SELECTION_VECTOR_SIZE = 5,
			OPM_PROTECTION_TYPE_SIZE = 4,
			OPM_BUS_TYPE_MASK = 65535,
			OPM_BUS_IMPLEMENTATION_MODIFIER_MASK = 32767,
		}
		[AllowDuplicates]
		public enum OPM_VIDEO_OUTPUT_SEMANTICS : int32
		{
			OPM_VOS_COPP_SEMANTICS = 0,
			OPM_VOS_OPM_SEMANTICS = 1,
			OPM_VOS_OPM_INDIRECT_DISPLAY = 2,
		}
		[AllowDuplicates]
		public enum OPM_HDCP_FLAGS : uint32
		{
			OPM_HDCP_FLAG_NONE = 0,
			OPM_HDCP_FLAG_REPEATER = 1,
		}
		[AllowDuplicates]
		public enum OPM_STATUS : int32
		{
			OPM_STATUS_NORMAL = 0,
			OPM_STATUS_LINK_LOST = 1,
			OPM_STATUS_RENEGOTIATION_REQUIRED = 2,
			OPM_STATUS_TAMPERING_DETECTED = 4,
			OPM_STATUS_REVOKED_HDCP_DEVICE_ATTACHED = 8,
		}
		[AllowDuplicates]
		public enum PM_CONNECTOR_TYPE : int32
		{
			OPM_CONNECTOR_TYPE_OTHER = -1,
			OPM_CONNECTOR_TYPE_VGA = 0,
			OPM_CONNECTOR_TYPE_SVIDEO = 1,
			OPM_CONNECTOR_TYPE_COMPOSITE_VIDEO = 2,
			OPM_CONNECTOR_TYPE_COMPONENT_VIDEO = 3,
			OPM_CONNECTOR_TYPE_DVI = 4,
			OPM_CONNECTOR_TYPE_HDMI = 5,
			OPM_CONNECTOR_TYPE_LVDS = 6,
			OPM_CONNECTOR_TYPE_D_JPN = 8,
			OPM_CONNECTOR_TYPE_SDI = 9,
			OPM_CONNECTOR_TYPE_DISPLAYPORT_EXTERNAL = 10,
			OPM_CONNECTOR_TYPE_DISPLAYPORT_EMBEDDED = 11,
			OPM_CONNECTOR_TYPE_UDI_EXTERNAL = 12,
			OPM_CONNECTOR_TYPE_UDI_EMBEDDED = 13,
			OPM_CONNECTOR_TYPE_RESERVED = 14,
			OPM_CONNECTOR_TYPE_MIRACAST = 15,
			OPM_CONNECTOR_TYPE_TRANSPORT_AGNOSTIC_DIGITAL_MODE_A = 16,
			OPM_CONNECTOR_TYPE_TRANSPORT_AGNOSTIC_DIGITAL_MODE_B = 17,
			OPM_COPP_COMPATIBLE_CONNECTOR_TYPE_INTERNAL = -2147483648,
		}
		[AllowDuplicates]
		public enum OPM_DVI_CHARACTERISTIC : int32
		{
			OPM_DVI_CHARACTERISTIC_1_0 = 1,
			OPM_DVI_CHARACTERISTIC_1_1_OR_ABOVE = 2,
		}
		[AllowDuplicates]
		public enum OPM_OUTPUT_HARDWARE_PROTECTION : int32
		{
			OPM_OUTPUT_HARDWARE_PROTECTION_NOT_SUPPORTED = 0,
			OPM_OUTPUT_HARDWARE_PROTECTION_SUPPORTED = 1,
		}
		[AllowDuplicates]
		public enum OPM_BUS_TYPE : int32
		{
			OPM_BUS_TYPE_OTHER = 0,
			OPM_BUS_TYPE_PCI = 1,
			OPM_BUS_TYPE_PCIX = 2,
			OPM_BUS_TYPE_PCIEXPRESS = 3,
			OPM_BUS_TYPE_AGP = 4,
			OPM_BUS_IMPLEMENTATION_MODIFIER_INSIDE_OF_CHIPSET = 65536,
			OPM_BUS_IMPLEMENTATION_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_CHIP = 131072,
			OPM_BUS_IMPLEMENTATION_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_SOCKET = 196608,
			OPM_BUS_IMPLEMENTATION_MODIFIER_DAUGHTER_BOARD_CONNECTOR = 262144,
			OPM_BUS_IMPLEMENTATION_MODIFIER_DAUGHTER_BOARD_CONNECTOR_INSIDE_OF_NUAE = 327680,
			OPM_BUS_IMPLEMENTATION_MODIFIER_NON_STANDARD = -2147483648,
			OPM_COPP_COMPATIBLE_BUS_TYPE_INTEGRATED = -2147483648,
		}
		[AllowDuplicates]
		public enum OPM_DPCP_PROTECTION_LEVEL : int32
		{
			OPM_DPCP_OFF = 0,
			OPM_DPCP_ON = 1,
			OPM_DPCP_FORCE_ULONG = 2147483647,
		}
		[AllowDuplicates]
		public enum OPM_HDCP_PROTECTION_LEVEL : int32
		{
			OPM_HDCP_OFF = 0,
			OPM_HDCP_ON = 1,
			OPM_HDCP_FORCE_ULONG = 2147483647,
		}
		[AllowDuplicates]
		public enum OPM_TYPE_ENFORCEMENT_HDCP_PROTECTION_LEVEL : int32
		{
			OPM_TYPE_ENFORCEMENT_HDCP_OFF = 0,
			OPM_TYPE_ENFORCEMENT_HDCP_ON_WITH_NO_TYPE_RESTRICTION = 1,
			OPM_TYPE_ENFORCEMENT_HDCP_ON_WITH_TYPE1_RESTRICTION = 2,
			OPM_TYPE_ENFORCEMENT_HDCP_FORCE_ULONG = 2147483647,
		}
		[AllowDuplicates]
		public enum OPM_CGMSA : int32
		{
			OPM_CGMSA_OFF = 0,
			OPM_CGMSA_COPY_FREELY = 1,
			OPM_CGMSA_COPY_NO_MORE = 2,
			OPM_CGMSA_COPY_ONE_GENERATION = 3,
			OPM_CGMSA_COPY_NEVER = 4,
			OPM_CGMSA_REDISTRIBUTION_CONTROL_REQUIRED = 8,
		}
		[AllowDuplicates]
		public enum OPM_ACP_PROTECTION_LEVEL : int32
		{
			OPM_ACP_OFF = 0,
			OPM_ACP_LEVEL_ONE = 1,
			OPM_ACP_LEVEL_TWO = 2,
			OPM_ACP_LEVEL_THREE = 3,
			OPM_ACP_FORCE_ULONG = 2147483647,
		}
		[AllowDuplicates]
		public enum OPM_PROTECTION_TYPE : int32
		{
			OPM_PROTECTION_TYPE_OTHER = -2147483648,
			OPM_PROTECTION_TYPE_NONE = 0,
			OPM_PROTECTION_TYPE_COPP_COMPATIBLE_HDCP = 1,
			OPM_PROTECTION_TYPE_ACP = 2,
			OPM_PROTECTION_TYPE_CGMSA = 4,
			OPM_PROTECTION_TYPE_HDCP = 8,
			OPM_PROTECTION_TYPE_DPCP = 16,
			OPM_PROTECTION_TYPE_TYPE_ENFORCEMENT_HDCP = 32,
		}
		[AllowDuplicates]
		public enum OPM_PROTECTION_STANDARD_TYPE : uint32
		{
			OPM_PROTECTION_STANDARD_OTHER = 2147483648,
			OPM_PROTECTION_STANDARD_NONE = 0,
			OPM_PROTECTION_STANDARD_IEC61880_525I = 1,
			OPM_PROTECTION_STANDARD_IEC61880_2_525I = 2,
			OPM_PROTECTION_STANDARD_IEC62375_625P = 4,
			OPM_PROTECTION_STANDARD_EIA608B_525 = 8,
			OPM_PROTECTION_STANDARD_EN300294_625I = 16,
			OPM_PROTECTION_STANDARD_CEA805A_TYPEA_525P = 32,
			OPM_PROTECTION_STANDARD_CEA805A_TYPEA_750P = 64,
			OPM_PROTECTION_STANDARD_CEA805A_TYPEA_1125I = 128,
			OPM_PROTECTION_STANDARD_CEA805A_TYPEB_525P = 256,
			OPM_PROTECTION_STANDARD_CEA805A_TYPEB_750P = 512,
			OPM_PROTECTION_STANDARD_CEA805A_TYPEB_1125I = 1024,
			OPM_PROTECTION_STANDARD_ARIBTRB15_525I = 2048,
			OPM_PROTECTION_STANDARD_ARIBTRB15_525P = 4096,
			OPM_PROTECTION_STANDARD_ARIBTRB15_750P = 8192,
			OPM_PROTECTION_STANDARD_ARIBTRB15_1125I = 16384,
		}
		[AllowDuplicates]
		public enum OPM_IMAGE_ASPECT_RATIO_EN300294 : int32
		{
			OPM_ASPECT_RATIO_EN300294_FULL_FORMAT_4_BY_3 = 0,
			OPM_ASPECT_RATIO_EN300294_BOX_14_BY_9_CENTER = 1,
			OPM_ASPECT_RATIO_EN300294_BOX_14_BY_9_TOP = 2,
			OPM_ASPECT_RATIO_EN300294_BOX_16_BY_9_CENTER = 3,
			OPM_ASPECT_RATIO_EN300294_BOX_16_BY_9_TOP = 4,
			OPM_ASPECT_RATIO_EN300294_BOX_GT_16_BY_9_CENTER = 5,
			OPM_ASPECT_RATIO_EN300294_FULL_FORMAT_4_BY_3_PROTECTED_CENTER = 6,
			OPM_ASPECT_RATIO_EN300294_FULL_FORMAT_16_BY_9_ANAMORPHIC = 7,
			OPM_ASPECT_RATIO_FORCE_ULONG = 2147483647,
		}
		[AllowDuplicates]
		public enum KSMETHOD_OPMVIDEOOUTPUT : int32
		{
			KSMETHOD_OPMVIDEOOUTPUT_STARTINITIALIZATION = 0,
			KSMETHOD_OPMVIDEOOUTPUT_FINISHINITIALIZATION = 1,
			KSMETHOD_OPMVIDEOOUTPUT_GETINFORMATION = 2,
		}
		[AllowDuplicates]
		public enum MF_ATTRIBUTE_TYPE : int32
		{
			MF_ATTRIBUTE_UINT32 = 19,
			MF_ATTRIBUTE_UINT64 = 21,
			MF_ATTRIBUTE_DOUBLE = 5,
			MF_ATTRIBUTE_GUID = 72,
			MF_ATTRIBUTE_STRING = 31,
			MF_ATTRIBUTE_BLOB = 4113,
			MF_ATTRIBUTE_IUNKNOWN = 13,
		}
		[AllowDuplicates]
		public enum MF_ATTRIBUTES_MATCH_TYPE : int32
		{
			MF_ATTRIBUTES_MATCH_OUR_ITEMS = 0,
			MF_ATTRIBUTES_MATCH_THEIR_ITEMS = 1,
			MF_ATTRIBUTES_MATCH_ALL_ITEMS = 2,
			MF_ATTRIBUTES_MATCH_INTERSECTION = 3,
			MF_ATTRIBUTES_MATCH_SMALLER = 4,
		}
		[AllowDuplicates]
		public enum MF_ATTRIBUTE_SERIALIZE_OPTIONS : int32
		{
			MF_ATTRIBUTE_SERIALIZE_UNKNOWN_BYREF = 1,
		}
		[AllowDuplicates]
		public enum MF2DBuffer_LockFlags : int32
		{
			MF2DBuffer_LockFlags_LockTypeMask = 3,
			MF2DBuffer_LockFlags_Read = 1,
			MF2DBuffer_LockFlags_Write = 2,
			MF2DBuffer_LockFlags_ReadWrite = 3,
			MF2DBuffer_LockFlags_ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum MFVideoInterlaceMode : int32
		{
			MFVideoInterlace_Unknown = 0,
			MFVideoInterlace_Progressive = 2,
			MFVideoInterlace_FieldInterleavedUpperFirst = 3,
			MFVideoInterlace_FieldInterleavedLowerFirst = 4,
			MFVideoInterlace_FieldSingleUpper = 5,
			MFVideoInterlace_FieldSingleLower = 6,
			MFVideoInterlace_MixedInterlaceOrProgressive = 7,
			MFVideoInterlace_Last = 8,
			MFVideoInterlace_ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum MFVideoTransferFunction : int32
		{
			MFVideoTransFunc_Unknown = 0,
			MFVideoTransFunc_10 = 1,
			MFVideoTransFunc_18 = 2,
			MFVideoTransFunc_20 = 3,
			MFVideoTransFunc_22 = 4,
			MFVideoTransFunc_709 = 5,
			MFVideoTransFunc_240M = 6,
			MFVideoTransFunc_sRGB = 7,
			MFVideoTransFunc_28 = 8,
			MFVideoTransFunc_Log_100 = 9,
			MFVideoTransFunc_Log_316 = 10,
			MFVideoTransFunc_709_sym = 11,
			MFVideoTransFunc_2020_const = 12,
			MFVideoTransFunc_2020 = 13,
			MFVideoTransFunc_26 = 14,
			MFVideoTransFunc_2084 = 15,
			MFVideoTransFunc_HLG = 16,
			MFVideoTransFunc_10_rel = 17,
			MFVideoTransFunc_Last = 18,
			MFVideoTransFunc_ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum MFVideoPrimaries : int32
		{
			MFVideoPrimaries_Unknown = 0,
			MFVideoPrimaries_reserved = 1,
			MFVideoPrimaries_BT709 = 2,
			MFVideoPrimaries_BT470_2_SysM = 3,
			MFVideoPrimaries_BT470_2_SysBG = 4,
			MFVideoPrimaries_SMPTE170M = 5,
			MFVideoPrimaries_SMPTE240M = 6,
			MFVideoPrimaries_EBU3213 = 7,
			MFVideoPrimaries_SMPTE_C = 8,
			MFVideoPrimaries_BT2020 = 9,
			MFVideoPrimaries_XYZ = 10,
			MFVideoPrimaries_DCI_P3 = 11,
			MFVideoPrimaries_ACES = 12,
			MFVideoPrimaries_Last = 13,
			MFVideoPrimaries_ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum MFVideoLighting : int32
		{
			MFVideoLighting_Unknown = 0,
			MFVideoLighting_bright = 1,
			MFVideoLighting_office = 2,
			MFVideoLighting_dim = 3,
			MFVideoLighting_dark = 4,
			MFVideoLighting_Last = 5,
			MFVideoLighting_ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum MFVideoTransferMatrix : int32
		{
			MFVideoTransferMatrix_Unknown = 0,
			MFVideoTransferMatrix_BT709 = 1,
			MFVideoTransferMatrix_BT601 = 2,
			MFVideoTransferMatrix_SMPTE240M = 3,
			MFVideoTransferMatrix_BT2020_10 = 4,
			MFVideoTransferMatrix_BT2020_12 = 5,
			MFVideoTransferMatrix_Last = 6,
			MFVideoTransferMatrix_ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum MFVideoChromaSubsampling : int32
		{
			MFVideoChromaSubsampling_Unknown = 0,
			MFVideoChromaSubsampling_ProgressiveChroma = 8,
			MFVideoChromaSubsampling_Horizontally_Cosited = 4,
			MFVideoChromaSubsampling_Vertically_Cosited = 2,
			MFVideoChromaSubsampling_Vertically_AlignedChromaPlanes = 1,
			MFVideoChromaSubsampling_MPEG2 = 5,
			MFVideoChromaSubsampling_MPEG1 = 1,
			MFVideoChromaSubsampling_DV_PAL = 6,
			MFVideoChromaSubsampling_Cosited = 7,
			MFVideoChromaSubsampling_Last = 8,
			MFVideoChromaSubsampling_ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum MFNominalRange : int32
		{
			MFNominalRange_Unknown = 0,
			MFNominalRange_Normal = 1,
			MFNominalRange_Wide = 2,
			MFNominalRange_0_255 = 1,
			MFNominalRange_16_235 = 2,
			MFNominalRange_48_208 = 3,
			MFNominalRange_64_127 = 4,
			MFNominalRange_Last = 5,
			MFNominalRange_ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum MFVideoFlags : int32
		{
			MFVideoFlag_PAD_TO_Mask = 3,
			MFVideoFlag_PAD_TO_None = 0,
			MFVideoFlag_PAD_TO_4x3 = 1,
			MFVideoFlag_PAD_TO_16x9 = 2,
			MFVideoFlag_SrcContentHintMask = 28,
			MFVideoFlag_SrcContentHintNone = 0,
			MFVideoFlag_SrcContentHint16x9 = 4,
			MFVideoFlag_SrcContentHint235_1 = 8,
			MFVideoFlag_AnalogProtected = 32,
			MFVideoFlag_DigitallyProtected = 64,
			MFVideoFlag_ProgressiveContent = 128,
			MFVideoFlag_FieldRepeatCountMask = 1792,
			MFVideoFlag_FieldRepeatCountShift = 8,
			MFVideoFlag_ProgressiveSeqReset = 2048,
			MFVideoFlag_PanScanEnabled = 131072,
			MFVideoFlag_LowerFieldFirst = 262144,
			MFVideoFlag_BottomUpLinearRep = 524288,
			MFVideoFlags_DXVASurface = 1048576,
			MFVideoFlags_RenderTargetSurface = 4194304,
			MFVideoFlags_ForceQWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum MFStandardVideoFormat : int32
		{
			MFStdVideoFormat_reserved = 0,
			MFStdVideoFormat_NTSC = 1,
			MFStdVideoFormat_PAL = 2,
			MFStdVideoFormat_DVD_NTSC = 3,
			MFStdVideoFormat_DVD_PAL = 4,
			MFStdVideoFormat_DV_PAL = 5,
			MFStdVideoFormat_DV_NTSC = 6,
			MFStdVideoFormat_ATSC_SD480i = 7,
			MFStdVideoFormat_ATSC_HD1080i = 8,
			MFStdVideoFormat_ATSC_HD720p = 9,
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
		[AllowDuplicates]
		public enum MFBYTESTREAM_SEEK_ORIGIN : int32
		{
			msoBegin = 0,
			msoCurrent = 1,
		}
		[AllowDuplicates]
		public enum MF_FILE_ACCESSMODE : int32
		{
			MF_ACCESSMODE_READ = 1,
			MF_ACCESSMODE_WRITE = 2,
			MF_ACCESSMODE_READWRITE = 3,
		}
		[AllowDuplicates]
		public enum MF_FILE_OPENMODE : int32
		{
			MF_OPENMODE_FAIL_IF_NOT_EXIST = 0,
			MF_OPENMODE_FAIL_IF_EXIST = 1,
			MF_OPENMODE_RESET_IF_EXIST = 2,
			MF_OPENMODE_APPEND_IF_EXIST = 3,
			MF_OPENMODE_DELETE_IF_EXIST = 4,
		}
		[AllowDuplicates]
		public enum MF_FILE_FLAGS : int32
		{
			MF_FILEFLAGS_NONE = 0,
			MF_FILEFLAGS_NOBUFFERING = 1,
			MF_FILEFLAGS_ALLOW_WRITE_SHARING = 2,
		}
		[AllowDuplicates]
		public enum MF_PLUGIN_CONTROL_POLICY : int32
		{
			MF_PLUGIN_CONTROL_POLICY_USE_ALL_PLUGINS = 0,
			MF_PLUGIN_CONTROL_POLICY_USE_APPROVED_PLUGINS = 1,
			MF_PLUGIN_CONTROL_POLICY_USE_WEB_PLUGINS = 2,
			MF_PLUGIN_CONTROL_POLICY_USE_WEB_PLUGINS_EDGEMODE = 3,
		}
		[AllowDuplicates]
		public enum MF_STREAM_STATE : int32
		{
			MF_STREAM_STATE_STOPPED = 0,
			MF_STREAM_STATE_PAUSED = 1,
			MF_STREAM_STATE_RUNNING = 2,
		}
		[AllowDuplicates]
		public enum _MFT_INPUT_DATA_BUFFER_FLAGS : int32
		{
			MFT_INPUT_DATA_BUFFER_PLACEHOLDER = -1,
		}
		[AllowDuplicates]
		public enum _MFT_OUTPUT_DATA_BUFFER_FLAGS : int32
		{
			MFT_OUTPUT_DATA_BUFFER_INCOMPLETE = 16777216,
			MFT_OUTPUT_DATA_BUFFER_FORMAT_CHANGE = 256,
			MFT_OUTPUT_DATA_BUFFER_STREAM_END = 512,
			MFT_OUTPUT_DATA_BUFFER_NO_SAMPLE = 768,
		}
		[AllowDuplicates]
		public enum _MFT_INPUT_STATUS_FLAGS : int32
		{
			MFT_INPUT_STATUS_ACCEPT_DATA = 1,
		}
		[AllowDuplicates]
		public enum _MFT_OUTPUT_STATUS_FLAGS : int32
		{
			MFT_OUTPUT_STATUS_SAMPLE_READY = 1,
		}
		[AllowDuplicates]
		public enum _MFT_INPUT_STREAM_INFO_FLAGS : int32
		{
			MFT_INPUT_STREAM_WHOLE_SAMPLES = 1,
			MFT_INPUT_STREAM_SINGLE_SAMPLE_PER_BUFFER = 2,
			MFT_INPUT_STREAM_FIXED_SAMPLE_SIZE = 4,
			MFT_INPUT_STREAM_HOLDS_BUFFERS = 8,
			MFT_INPUT_STREAM_DOES_NOT_ADDREF = 256,
			MFT_INPUT_STREAM_REMOVABLE = 512,
			MFT_INPUT_STREAM_OPTIONAL = 1024,
			MFT_INPUT_STREAM_PROCESSES_IN_PLACE = 2048,
		}
		[AllowDuplicates]
		public enum _MFT_OUTPUT_STREAM_INFO_FLAGS : int32
		{
			MFT_OUTPUT_STREAM_WHOLE_SAMPLES = 1,
			MFT_OUTPUT_STREAM_SINGLE_SAMPLE_PER_BUFFER = 2,
			MFT_OUTPUT_STREAM_FIXED_SAMPLE_SIZE = 4,
			MFT_OUTPUT_STREAM_DISCARDABLE = 8,
			MFT_OUTPUT_STREAM_OPTIONAL = 16,
			MFT_OUTPUT_STREAM_PROVIDES_SAMPLES = 256,
			MFT_OUTPUT_STREAM_CAN_PROVIDE_SAMPLES = 512,
			MFT_OUTPUT_STREAM_LAZY_READ = 1024,
			MFT_OUTPUT_STREAM_REMOVABLE = 2048,
		}
		[AllowDuplicates]
		public enum _MFT_SET_TYPE_FLAGS : int32
		{
			MFT_SET_TYPE_TEST_ONLY = 1,
		}
		[AllowDuplicates]
		public enum _MFT_PROCESS_OUTPUT_FLAGS : int32
		{
			MFT_PROCESS_OUTPUT_DISCARD_WHEN_NO_BUFFER = 1,
			MFT_PROCESS_OUTPUT_REGENERATE_LAST_OUTPUT = 2,
		}
		[AllowDuplicates]
		public enum _MFT_PROCESS_OUTPUT_STATUS : int32
		{
			MFT_PROCESS_OUTPUT_STATUS_NEW_STREAMS = 256,
		}
		[AllowDuplicates]
		public enum MFT_DRAIN_TYPE : int32
		{
			MFT_DRAIN_PRODUCE_TAILS = 0,
			MFT_DRAIN_NO_TAILS = 1,
		}
		[AllowDuplicates]
		public enum MFT_MESSAGE_TYPE : int32
		{
			MFT_MESSAGE_COMMAND_FLUSH = 0,
			MFT_MESSAGE_COMMAND_DRAIN = 1,
			MFT_MESSAGE_SET_D3D_MANAGER = 2,
			MFT_MESSAGE_DROP_SAMPLES = 3,
			MFT_MESSAGE_COMMAND_TICK = 4,
			MFT_MESSAGE_NOTIFY_BEGIN_STREAMING = 268435456,
			MFT_MESSAGE_NOTIFY_END_STREAMING = 268435457,
			MFT_MESSAGE_NOTIFY_END_OF_STREAM = 268435458,
			MFT_MESSAGE_NOTIFY_START_OF_STREAM = 268435459,
			MFT_MESSAGE_NOTIFY_RELEASE_RESOURCES = 268435460,
			MFT_MESSAGE_NOTIFY_REACQUIRE_RESOURCES = 268435461,
			MFT_MESSAGE_NOTIFY_EVENT = 268435462,
			MFT_MESSAGE_COMMAND_SET_OUTPUT_STREAM_STATE = 268435463,
			MFT_MESSAGE_COMMAND_FLUSH_OUTPUT_STREAM = 268435464,
			MFT_MESSAGE_COMMAND_MARKER = 536870912,
		}
		[AllowDuplicates]
		public enum DeviceStreamState : int32
		{
			DeviceStreamState_Stop = 0,
			DeviceStreamState_Pause = 1,
			DeviceStreamState_Run = 2,
			DeviceStreamState_Disabled = 3,
		}
		[AllowDuplicates]
		public enum MF3DVideoOutputType : int32
		{
			MF3DVideoOutputType_BaseView = 0,
			MF3DVideoOutputType_Stereo = 1,
		}
		[AllowDuplicates]
		public enum MFT_AUDIO_DECODER_DEGRADATION_REASON : int32
		{
			MFT_AUDIO_DECODER_DEGRADATION_REASON_NONE = 0,
			MFT_AUDIO_DECODER_DEGRADATION_REASON_LICENSING_REQUIREMENT = 1,
		}
		[AllowDuplicates]
		public enum MFT_AUDIO_DECODER_DEGRADATION_TYPE : int32
		{
			MFT_AUDIO_DECODER_DEGRADATION_TYPE_NONE = 0,
			MFT_AUDIO_DECODER_DEGRADATION_TYPE_DOWNMIX2CHANNEL = 1,
			MFT_AUDIO_DECODER_DEGRADATION_TYPE_DOWNMIX6CHANNEL = 2,
			MFT_AUDIO_DECODER_DEGRADATION_TYPE_DOWNMIX8CHANNEL = 3,
		}
		[AllowDuplicates]
		public enum MFSESSION_SETTOPOLOGY_FLAGS : int32
		{
			MFSESSION_SETTOPOLOGY_IMMEDIATE = 1,
			MFSESSION_SETTOPOLOGY_NORESOLUTION = 2,
			MFSESSION_SETTOPOLOGY_CLEAR_CURRENT = 4,
		}
		[AllowDuplicates]
		public enum MFSESSION_GETFULLTOPOLOGY_FLAGS : int32
		{
			MFSESSION_GETFULLTOPOLOGY_CURRENT = 1,
		}
		[AllowDuplicates]
		public enum MFPMPSESSION_CREATION_FLAGS : int32
		{
			MFPMPSESSION_UNPROTECTED_PROCESS = 1,
			MFPMPSESSION_IN_PROCESS = 2,
		}
		[AllowDuplicates]
		public enum MF_OBJECT_TYPE : int32
		{
			MF_OBJECT_MEDIASOURCE = 0,
			MF_OBJECT_BYTESTREAM = 1,
			MF_OBJECT_INVALID = 2,
		}
		[AllowDuplicates]
		public enum MF_RESOLUTION_FLAGS : uint32
		{
			MF_RESOLUTION_MEDIASOURCE = 1,
			MF_RESOLUTION_BYTESTREAM = 2,
			MF_RESOLUTION_CONTENT_DOES_NOT_HAVE_TO_MATCH_EXTENSION_OR_MIME_TYPE = 16,
			MF_RESOLUTION_KEEP_BYTE_STREAM_ALIVE_ON_FAIL = 32,
			MF_RESOLUTION_DISABLE_LOCAL_PLUGINS = 64,
			MF_RESOLUTION_PLUGIN_CONTROL_POLICY_APPROVED_ONLY = 128,
			MF_RESOLUTION_PLUGIN_CONTROL_POLICY_WEB_ONLY = 256,
			MF_RESOLUTION_PLUGIN_CONTROL_POLICY_WEB_ONLY_EDGEMODE = 512,
			MF_RESOLUTION_ENABLE_STORE_PLUGINS = 1024,
			MF_RESOLUTION_READ = 65536,
			MF_RESOLUTION_WRITE = 131072,
		}
		[AllowDuplicates]
		public enum MF_CONNECT_METHOD : int32
		{
			MF_CONNECT_DIRECT = 0,
			MF_CONNECT_ALLOW_CONVERTER = 1,
			MF_CONNECT_ALLOW_DECODER = 3,
			MF_CONNECT_RESOLVE_INDEPENDENT_OUTPUTTYPES = 4,
			MF_CONNECT_AS_OPTIONAL = 65536,
			MF_CONNECT_AS_OPTIONAL_BRANCH = 131072,
		}
		[AllowDuplicates]
		public enum MF_TOPOLOGY_RESOLUTION_STATUS_FLAGS : int32
		{
			MF_TOPOLOGY_RESOLUTION_SUCCEEDED = 0,
			MF_OPTIONAL_NODE_REJECTED_MEDIA_TYPE = 1,
			MF_OPTIONAL_NODE_REJECTED_PROTECTED_PROCESS = 2,
		}
		[AllowDuplicates]
		public enum MFMEDIASOURCE_CHARACTERISTICS : int32
		{
			MFMEDIASOURCE_IS_LIVE = 1,
			MFMEDIASOURCE_CAN_SEEK = 2,
			MFMEDIASOURCE_CAN_PAUSE = 4,
			MFMEDIASOURCE_HAS_SLOW_SEEK = 8,
			MFMEDIASOURCE_HAS_MULTIPLE_PRESENTATIONS = 16,
			MFMEDIASOURCE_CAN_SKIPFORWARD = 32,
			MFMEDIASOURCE_CAN_SKIPBACKWARD = 64,
			MFMEDIASOURCE_DOES_NOT_USE_NETWORK = 128,
		}
		[AllowDuplicates]
		public enum MFSTREAMSINK_MARKER_TYPE : int32
		{
			MFSTREAMSINK_MARKER_DEFAULT = 0,
			MFSTREAMSINK_MARKER_ENDOFSEGMENT = 1,
			MFSTREAMSINK_MARKER_TICK = 2,
			MFSTREAMSINK_MARKER_EVENT = 3,
		}
		[AllowDuplicates]
		public enum MF_VIDEO_PROCESSOR_ROTATION : int32
		{
			ROTATION_NONE = 0,
			ROTATION_NORMAL = 1,
		}
		[AllowDuplicates]
		public enum MF_VIDEO_PROCESSOR_MIRROR : int32
		{
			MIRROR_NONE = 0,
			MIRROR_HORIZONTAL = 1,
			MIRROR_VERTICAL = 2,
		}
		[AllowDuplicates]
		public enum MFVideoSphericalFormat : int32
		{
			MFVideoSphericalFormat_Unsupported = 0,
			MFVideoSphericalFormat_Equirectangular = 1,
			MFVideoSphericalFormat_CubeMap = 2,
			MFVideoSphericalFormat_3DMesh = 3,
		}
		[AllowDuplicates]
		public enum MFVideoSphericalProjectionMode : int32
		{
			MFVideoSphericalProjectionMode_Spherical = 0,
			MFVideoSphericalProjectionMode_Flat = 1,
		}
		[AllowDuplicates]
		public enum MFTOPOLOGY_DXVA_MODE : int32
		{
			MFTOPOLOGY_DXVA_DEFAULT = 0,
			MFTOPOLOGY_DXVA_NONE = 1,
			MFTOPOLOGY_DXVA_FULL = 2,
		}
		[AllowDuplicates]
		public enum MFTOPOLOGY_HARDWARE_MODE : int32
		{
			MFTOPOLOGY_HWMODE_SOFTWARE_ONLY = 0,
			MFTOPOLOGY_HWMODE_USE_HARDWARE = 1,
			MFTOPOLOGY_HWMODE_USE_ONLY_HARDWARE = 2,
		}
		[AllowDuplicates]
		public enum MF_TOPOLOGY_TYPE : int32
		{
			MF_TOPOLOGY_OUTPUT_NODE = 0,
			MF_TOPOLOGY_SOURCESTREAM_NODE = 1,
			MF_TOPOLOGY_TRANSFORM_NODE = 2,
			MF_TOPOLOGY_TEE_NODE = 3,
			MF_TOPOLOGY_MAX = -1,
		}
		[AllowDuplicates]
		public enum MF_TOPONODE_FLUSH_MODE : int32
		{
			MF_TOPONODE_FLUSH_ALWAYS = 0,
			MF_TOPONODE_FLUSH_SEEK = 1,
			MF_TOPONODE_FLUSH_NEVER = 2,
		}
		[AllowDuplicates]
		public enum MF_TOPONODE_DRAIN_MODE : int32
		{
			MF_TOPONODE_DRAIN_DEFAULT = 0,
			MF_TOPONODE_DRAIN_ALWAYS = 1,
			MF_TOPONODE_DRAIN_NEVER = 2,
		}
		[AllowDuplicates]
		public enum MFCLOCK_CHARACTERISTICS_FLAGS : int32
		{
			MFCLOCK_CHARACTERISTICS_FLAG_FREQUENCY_10MHZ = 2,
			MFCLOCK_CHARACTERISTICS_FLAG_ALWAYS_RUNNING = 4,
			MFCLOCK_CHARACTERISTICS_FLAG_IS_SYSTEM_CLOCK = 8,
		}
		[AllowDuplicates]
		public enum MFCLOCK_STATE : int32
		{
			MFCLOCK_STATE_INVALID = 0,
			MFCLOCK_STATE_RUNNING = 1,
			MFCLOCK_STATE_STOPPED = 2,
			MFCLOCK_STATE_PAUSED = 3,
		}
		[AllowDuplicates]
		public enum MFCLOCK_RELATIONAL_FLAGS : int32
		{
			MFCLOCK_RELATIONAL_FLAG_JITTER_NEVER_AHEAD = 1,
		}
		[AllowDuplicates]
		public enum MFTIMER_FLAGS : int32
		{
			MFTIMER_RELATIVE = 1,
		}
		[AllowDuplicates]
		public enum MF_ACTIVATE_CUSTOM_MIXER : int32
		{
			MF_ACTIVATE_CUSTOM_MIXER_ALLOWFAIL = 1,
		}
		[AllowDuplicates]
		public enum MF_ACTIVATE_CUSTOM_PRESENTER : int32
		{
			MF_ACTIVATE_CUSTOM_PRESENTER_ALLOWFAIL = 1,
		}
		[AllowDuplicates]
		public enum MFSHUTDOWN_STATUS : int32
		{
			MFSHUTDOWN_INITIATED = 0,
			MFSHUTDOWN_COMPLETED = 1,
		}
		[AllowDuplicates]
		public enum MF_URL_TRUST_STATUS : int32
		{
			MF_LICENSE_URL_UNTRUSTED = 0,
			MF_LICENSE_URL_TRUSTED = 1,
			MF_LICENSE_URL_TAMPERED = 2,
		}
		[AllowDuplicates]
		public enum MFRATE_DIRECTION : int32
		{
			MFRATE_FORWARD = 0,
			MFRATE_REVERSE = 1,
		}
		[AllowDuplicates]
		public enum MF_QUALITY_DROP_MODE : int32
		{
			MF_DROP_MODE_NONE = 0,
			MF_DROP_MODE_1 = 1,
			MF_DROP_MODE_2 = 2,
			MF_DROP_MODE_3 = 3,
			MF_DROP_MODE_4 = 4,
			MF_DROP_MODE_5 = 5,
			MF_NUM_DROP_MODES = 6,
		}
		[AllowDuplicates]
		public enum MF_QUALITY_LEVEL : int32
		{
			MF_QUALITY_NORMAL = 0,
			MF_QUALITY_NORMAL_MINUS_1 = 1,
			MF_QUALITY_NORMAL_MINUS_2 = 2,
			MF_QUALITY_NORMAL_MINUS_3 = 3,
			MF_QUALITY_NORMAL_MINUS_4 = 4,
			MF_QUALITY_NORMAL_MINUS_5 = 5,
			MF_NUM_QUALITY_LEVELS = 6,
		}
		[AllowDuplicates]
		public enum MF_QUALITY_ADVISE_FLAGS : int32
		{
			MF_QUALITY_CANNOT_KEEP_UP = 1,
		}
		[AllowDuplicates]
		public enum MFSequencerTopologyFlags : int32
		{
			SequencerTopologyFlags_Last = 1,
		}
		[AllowDuplicates]
		public enum MFNetCredentialRequirements : int32
		{
			REQUIRE_PROMPT = 1,
			REQUIRE_SAVE_SELECTED = 2,
		}
		[AllowDuplicates]
		public enum MFNetCredentialOptions : int32
		{
			MFNET_CREDENTIAL_SAVE = 1,
			MFNET_CREDENTIAL_DONT_CACHE = 2,
			MFNET_CREDENTIAL_ALLOW_CLEAR_TEXT = 4,
		}
		[AllowDuplicates]
		public enum MFNetAuthenticationFlags : int32
		{
			MFNET_AUTHENTICATION_PROXY = 1,
			MFNET_AUTHENTICATION_CLEAR_TEXT = 2,
			MFNET_AUTHENTICATION_LOGGED_ON_USER = 4,
		}
		[AllowDuplicates]
		public enum MFNETSOURCE_PROTOCOL_TYPE : int32
		{
			MFNETSOURCE_UNDEFINED = 0,
			MFNETSOURCE_HTTP = 1,
			MFNETSOURCE_RTSP = 2,
			MFNETSOURCE_FILE = 3,
			MFNETSOURCE_MULTICAST = 4,
		}
		[AllowDuplicates]
		public enum MFNETSOURCE_TRANSPORT_TYPE : int32
		{
			MFNETSOURCE_UDP = 0,
			MFNETSOURCE_TCP = 1,
		}
		[AllowDuplicates]
		public enum MFNETSOURCE_CACHE_STATE : int32
		{
			MFNETSOURCE_CACHE_UNAVAILABLE = 0,
			MFNETSOURCE_CACHE_ACTIVE_WRITING = 1,
			MFNETSOURCE_CACHE_ACTIVE_COMPLETE = 2,
		}
		[AllowDuplicates]
		public enum MFNETSOURCE_STATISTICS_IDS : int32
		{
			MFNETSOURCE_RECVPACKETS_ID = 0,
			MFNETSOURCE_LOSTPACKETS_ID = 1,
			MFNETSOURCE_RESENDSREQUESTED_ID = 2,
			MFNETSOURCE_RESENDSRECEIVED_ID = 3,
			MFNETSOURCE_RECOVEREDBYECCPACKETS_ID = 4,
			MFNETSOURCE_RECOVEREDBYRTXPACKETS_ID = 5,
			MFNETSOURCE_OUTPACKETS_ID = 6,
			MFNETSOURCE_RECVRATE_ID = 7,
			MFNETSOURCE_AVGBANDWIDTHBPS_ID = 8,
			MFNETSOURCE_BYTESRECEIVED_ID = 9,
			MFNETSOURCE_PROTOCOL_ID = 10,
			MFNETSOURCE_TRANSPORT_ID = 11,
			MFNETSOURCE_CACHE_STATE_ID = 12,
			MFNETSOURCE_LINKBANDWIDTH_ID = 13,
			MFNETSOURCE_CONTENTBITRATE_ID = 14,
			MFNETSOURCE_SPEEDFACTOR_ID = 15,
			MFNETSOURCE_BUFFERSIZE_ID = 16,
			MFNETSOURCE_BUFFERPROGRESS_ID = 17,
			MFNETSOURCE_LASTBWSWITCHTS_ID = 18,
			MFNETSOURCE_SEEKRANGESTART_ID = 19,
			MFNETSOURCE_SEEKRANGEEND_ID = 20,
			MFNETSOURCE_BUFFERINGCOUNT_ID = 21,
			MFNETSOURCE_INCORRECTLYSIGNEDPACKETS_ID = 22,
			MFNETSOURCE_SIGNEDSESSION_ID = 23,
			MFNETSOURCE_MAXBITRATE_ID = 24,
			MFNETSOURCE_RECEPTION_QUALITY_ID = 25,
			MFNETSOURCE_RECOVEREDPACKETS_ID = 26,
			MFNETSOURCE_VBR_ID = 27,
			MFNETSOURCE_DOWNLOADPROGRESS_ID = 28,
			MFNETSOURCE_UNPREDEFINEDPROTOCOLNAME_ID = 29,
		}
		[AllowDuplicates]
		public enum MFNET_PROXYSETTINGS : int32
		{
			MFNET_PROXYSETTING_NONE = 0,
			MFNET_PROXYSETTING_MANUAL = 1,
			MFNET_PROXYSETTING_AUTO = 2,
			MFNET_PROXYSETTING_BROWSER = 3,
		}
		[AllowDuplicates]
		public enum MFPOLICYMANAGER_ACTION : int32
		{
			PEACTION_NO = 0,
			PEACTION_PLAY = 1,
			PEACTION_COPY = 2,
			PEACTION_EXPORT = 3,
			PEACTION_EXTRACT = 4,
			PEACTION_RESERVED1 = 5,
			PEACTION_RESERVED2 = 6,
			PEACTION_RESERVED3 = 7,
			PEACTION_LAST = 7,
		}
		[AllowDuplicates]
		public enum MF_OPM_CGMSA_PROTECTION_LEVEL : int32
		{
			MF_OPM_CGMSA_OFF = 0,
			MF_OPM_CGMSA_COPY_FREELY = 1,
			MF_OPM_CGMSA_COPY_NO_MORE = 2,
			MF_OPM_CGMSA_COPY_ONE_GENERATION = 3,
			MF_OPM_CGMSA_COPY_NEVER = 4,
			MF_OPM_CGMSA_REDISTRIBUTION_CONTROL_REQUIRED = 8,
		}
		[AllowDuplicates]
		public enum MF_OPM_ACP_PROTECTION_LEVEL : int32
		{
			MF_OPM_ACP_OFF = 0,
			MF_OPM_ACP_LEVEL_ONE = 1,
			MF_OPM_ACP_LEVEL_TWO = 2,
			MF_OPM_ACP_LEVEL_THREE = 3,
			MF_OPM_ACP_FORCE_ULONG = 2147483647,
		}
		[AllowDuplicates]
		public enum MFAudioConstriction : int32
		{
			MFaudioConstrictionOff = 0,
			MFaudioConstriction48_16 = 1,
			MFaudioConstriction44_16 = 2,
			MFaudioConstriction14_14 = 3,
			MFaudioConstrictionMute = 4,
		}
		[AllowDuplicates]
		public enum SAMPLE_PROTECTION_VERSION : int32
		{
			SAMPLE_PROTECTION_VERSION_NO = 0,
			SAMPLE_PROTECTION_VERSION_BASIC_LOKI = 1,
			SAMPLE_PROTECTION_VERSION_SCATTER = 2,
			SAMPLE_PROTECTION_VERSION_RC4 = 3,
			SAMPLE_PROTECTION_VERSION_AES128CTR = 4,
		}
		[AllowDuplicates]
		public enum MF_TRANSCODE_TOPOLOGYMODE_FLAGS : int32
		{
			MF_TRANSCODE_TOPOLOGYMODE_SOFTWARE_ONLY = 0,
			MF_TRANSCODE_TOPOLOGYMODE_HARDWARE_ALLOWED = 1,
		}
		[AllowDuplicates]
		public enum MF_TRANSCODE_ADJUST_PROFILE_FLAGS : int32
		{
			MF_TRANSCODE_ADJUST_PROFILE_DEFAULT = 0,
			MF_TRANSCODE_ADJUST_PROFILE_USE_SOURCE_ATTRIBUTES = 1,
		}
		[AllowDuplicates]
		public enum MF_VIDEO_PROCESSOR_ALGORITHM_TYPE : int32
		{
			MF_VIDEO_PROCESSOR_ALGORITHM_DEFAULT = 0,
			MF_VIDEO_PROCESSOR_ALGORITHM_MRF_CRF_444 = 1,
		}
		[AllowDuplicates]
		public enum MF_MEDIAKEYSESSION_TYPE : int32
		{
			MF_MEDIAKEYSESSION_TYPE_TEMPORARY = 0,
			MF_MEDIAKEYSESSION_TYPE_PERSISTENT_LICENSE = 1,
			MF_MEDIAKEYSESSION_TYPE_PERSISTENT_RELEASE_MESSAGE = 2,
			MF_MEDIAKEYSESSION_TYPE_PERSISTENT_USAGE_RECORD = 3,
		}
		[AllowDuplicates]
		public enum MF_MEDIAKEY_STATUS : int32
		{
			MF_MEDIAKEY_STATUS_USABLE = 0,
			MF_MEDIAKEY_STATUS_EXPIRED = 1,
			MF_MEDIAKEY_STATUS_OUTPUT_DOWNSCALED = 2,
			MF_MEDIAKEY_STATUS_OUTPUT_NOT_ALLOWED = 3,
			MF_MEDIAKEY_STATUS_STATUS_PENDING = 4,
			MF_MEDIAKEY_STATUS_INTERNAL_ERROR = 5,
			MF_MEDIAKEY_STATUS_RELEASED = 6,
			MF_MEDIAKEY_STATUS_OUTPUT_RESTRICTED = 7,
		}
		[AllowDuplicates]
		public enum MF_MEDIAKEYSESSION_MESSAGETYPE : int32
		{
			MF_MEDIAKEYSESSION_MESSAGETYPE_LICENSE_REQUEST = 0,
			MF_MEDIAKEYSESSION_MESSAGETYPE_LICENSE_RENEWAL = 1,
			MF_MEDIAKEYSESSION_MESSAGETYPE_LICENSE_RELEASE = 2,
			MF_MEDIAKEYSESSION_MESSAGETYPE_INDIVIDUALIZATION_REQUEST = 3,
		}
		[AllowDuplicates]
		public enum MF_CROSS_ORIGIN_POLICY : int32
		{
			MF_CROSS_ORIGIN_POLICY_NONE = 0,
			MF_CROSS_ORIGIN_POLICY_ANONYMOUS = 1,
			MF_CROSS_ORIGIN_POLICY_USE_CREDENTIALS = 2,
		}
		[AllowDuplicates]
		public enum MFSensorDeviceType : int32
		{
			MFSensorDeviceType_Unknown = 0,
			MFSensorDeviceType_Device = 1,
			MFSensorDeviceType_MediaSource = 2,
			MFSensorDeviceType_FrameProvider = 3,
			MFSensorDeviceType_SensorTransform = 4,
		}
		[AllowDuplicates]
		public enum MFSensorStreamType : int32
		{
			MFSensorStreamType_Unknown = 0,
			MFSensorStreamType_Input = 1,
			MFSensorStreamType_Output = 2,
		}
		[AllowDuplicates]
		public enum MFSensorDeviceMode : int32
		{
			MFSensorDeviceMode_Controller = 0,
			MFSensorDeviceMode_Shared = 1,
		}
		[AllowDuplicates]
		public enum MFCameraIntrinsic_DistortionModelType : int32
		{
			MFCameraIntrinsic_DistortionModelType_6KT = 0,
			MFCameraIntrinsic_DistortionModelType_ArcTan = 1,
		}
		[AllowDuplicates]
		public enum MFCameraOcclusionState : int32
		{
			MFCameraOcclusionState_Open = 0,
			MFCameraOcclusionState_OccludedByLid = 1,
			MFCameraOcclusionState_OccludedByCameraHardware = 2,
		}
		[AllowDuplicates]
		public enum MFSampleAllocatorUsage : int32
		{
			MFSampleAllocatorUsage_UsesProvidedAllocator = 0,
			MFSampleAllocatorUsage_UsesCustomAllocator = 1,
			MFSampleAllocatorUsage_DoesNotAllocate = 2,
		}
		[AllowDuplicates]
		public enum MFASF_INDEXER_FLAGS : int32
		{
			MFASF_INDEXER_WRITE_NEW_INDEX = 1,
			MFASF_INDEXER_READ_FOR_REVERSEPLAYBACK = 2,
			MFASF_INDEXER_WRITE_FOR_LIVEREAD = 4,
		}
		[AllowDuplicates]
		public enum MFASF_SPLITTERFLAGS : int32
		{
			MFASF_SPLITTER_REVERSE = 1,
			MFASF_SPLITTER_WMDRM = 2,
		}
		[AllowDuplicates]
		public enum ASF_STATUSFLAGS : int32
		{
			ASF_STATUSFLAGS_INCOMPLETE = 1,
			ASF_STATUSFLAGS_NONFATAL_ERROR = 2,
		}
		[AllowDuplicates]
		public enum MFASF_MULTIPLEXERFLAGS : int32
		{
			MFASF_MULTIPLEXER_AUTOADJUST_BITRATE = 1,
		}
		[AllowDuplicates]
		public enum MFASF_STREAMSELECTOR_FLAGS : int32
		{
			MFASF_STREAMSELECTOR_DISABLE_THINNING = 1,
			MFASF_STREAMSELECTOR_USE_AVERAGE_BITRATE = 2,
		}
		[AllowDuplicates]
		public enum ASF_SELECTION_STATUS : int32
		{
			ASF_STATUS_NOTSELECTED = 0,
			ASF_STATUS_CLEANPOINTSONLY = 1,
			ASF_STATUS_ALLDATAUNITS = 2,
		}
		[AllowDuplicates]
		public enum MFSINK_WMDRMACTION : int32
		{
			MFSINK_WMDRMACTION_UNDEFINED = 0,
			MFSINK_WMDRMACTION_ENCODE = 1,
			MFSINK_WMDRMACTION_TRANSCODE = 2,
			MFSINK_WMDRMACTION_TRANSCRYPT = 3,
			MFSINK_WMDRMACTION_LAST = 3,
		}
		[AllowDuplicates]
		public enum MF_CAPTURE_ENGINE_DEVICE_TYPE : int32
		{
			MF_CAPTURE_ENGINE_DEVICE_TYPE_AUDIO = 0,
			MF_CAPTURE_ENGINE_DEVICE_TYPE_VIDEO = 1,
		}
		[AllowDuplicates]
		public enum MF_CAPTURE_ENGINE_SINK_TYPE : int32
		{
			MF_CAPTURE_ENGINE_SINK_TYPE_RECORD = 0,
			MF_CAPTURE_ENGINE_SINK_TYPE_PREVIEW = 1,
			MF_CAPTURE_ENGINE_SINK_TYPE_PHOTO = 2,
		}
		[AllowDuplicates]
		public enum MF_CAPTURE_ENGINE_SOURCE : uint32
		{
			MF_CAPTURE_ENGINE_PREFERRED_SOURCE_STREAM_FOR_VIDEO_PREVIEW = 4294967290,
			MF_CAPTURE_ENGINE_PREFERRED_SOURCE_STREAM_FOR_VIDEO_RECORD = 4294967289,
			MF_CAPTURE_ENGINE_PREFERRED_SOURCE_STREAM_FOR_PHOTO = 4294967288,
			MF_CAPTURE_ENGINE_PREFERRED_SOURCE_STREAM_FOR_AUDIO = 4294967287,
			MF_CAPTURE_ENGINE_PREFERRED_SOURCE_STREAM_FOR_METADATA = 4294967286,
			MF_CAPTURE_ENGINE_MEDIASOURCE = 4294967295,
		}
		[AllowDuplicates]
		public enum MF_CAPTURE_ENGINE_STREAM_CATEGORY : int32
		{
			MF_CAPTURE_ENGINE_STREAM_CATEGORY_VIDEO_PREVIEW = 0,
			MF_CAPTURE_ENGINE_STREAM_CATEGORY_VIDEO_CAPTURE = 1,
			MF_CAPTURE_ENGINE_STREAM_CATEGORY_PHOTO_INDEPENDENT = 2,
			MF_CAPTURE_ENGINE_STREAM_CATEGORY_PHOTO_DEPENDENT = 3,
			MF_CAPTURE_ENGINE_STREAM_CATEGORY_AUDIO = 4,
			MF_CAPTURE_ENGINE_STREAM_CATEGORY_UNSUPPORTED = 5,
			MF_CAPTURE_ENGINE_STREAM_CATEGORY_METADATA = 6,
		}
		[AllowDuplicates]
		public enum MF_CAPTURE_ENGINE_MEDIA_CATEGORY_TYPE : int32
		{
			MF_CAPTURE_ENGINE_MEDIA_CATEGORY_TYPE_OTHER = 0,
			MF_CAPTURE_ENGINE_MEDIA_CATEGORY_TYPE_COMMUNICATIONS = 1,
			MF_CAPTURE_ENGINE_MEDIA_CATEGORY_TYPE_MEDIA = 2,
			MF_CAPTURE_ENGINE_MEDIA_CATEGORY_TYPE_GAMECHAT = 3,
			MF_CAPTURE_ENGINE_MEDIA_CATEGORY_TYPE_SPEECH = 4,
			MF_CAPTURE_ENGINE_MEDIA_CATEGORY_TYPE_FARFIELDSPEECH = 5,
			MF_CAPTURE_ENGINE_MEDIA_CATEGORY_TYPE_UNIFORMSPEECH = 6,
			MF_CAPTURE_ENGINE_MEDIA_CATEGORY_TYPE_VOICETYPING = 7,
		}
		[AllowDuplicates]
		public enum MF_CAPTURE_ENGINE_AUDIO_PROCESSING_MODE : int32
		{
			MF_CAPTURE_ENGINE_AUDIO_PROCESSING_DEFAULT = 0,
			MF_CAPTURE_ENGINE_AUDIO_PROCESSING_RAW = 1,
		}
		[AllowDuplicates]
		public enum MF_MT_D3D_RESOURCE_VERSION_ENUM : int32
		{
			MF_D3D11_RESOURCE = 0,
			MF_D3D12_RESOURCE = 1,
		}
		[AllowDuplicates]
		public enum MFASYNC_WORKQUEUE_TYPE : int32
		{
			MF_STANDARD_WORKQUEUE = 0,
			MF_WINDOW_WORKQUEUE = 1,
			MF_MULTITHREADED_WORKQUEUE = 2,
		}
		[AllowDuplicates]
		public enum MF_TOPOSTATUS : int32
		{
			MF_TOPOSTATUS_INVALID = 0,
			MF_TOPOSTATUS_READY = 100,
			MF_TOPOSTATUS_STARTED_SOURCE = 200,
			MF_TOPOSTATUS_DYNAMIC_CHANGED = 210,
			MF_TOPOSTATUS_SINK_SWITCHED = 300,
			MF_TOPOSTATUS_ENDED = 400,
		}
		[AllowDuplicates]
		public enum MFSampleEncryptionProtectionScheme : int32
		{
			MF_SAMPLE_ENCRYPTION_PROTECTION_SCHEME_NONE = 0,
			MF_SAMPLE_ENCRYPTION_PROTECTION_SCHEME_AES_CTR = 1,
			MF_SAMPLE_ENCRYPTION_PROTECTION_SCHEME_AES_CBC = 2,
		}
		[AllowDuplicates]
		public enum _MFT_ENUM_FLAG : int32
		{
			MFT_ENUM_FLAG_SYNCMFT = 1,
			MFT_ENUM_FLAG_ASYNCMFT = 2,
			MFT_ENUM_FLAG_HARDWARE = 4,
			MFT_ENUM_FLAG_FIELDOFUSE = 8,
			MFT_ENUM_FLAG_LOCALMFT = 16,
			MFT_ENUM_FLAG_TRANSCODE_ONLY = 32,
			MFT_ENUM_FLAG_SORTANDFILTER = 64,
			MFT_ENUM_FLAG_SORTANDFILTER_APPROVED_ONLY = 192,
			MFT_ENUM_FLAG_SORTANDFILTER_WEB_ONLY = 320,
			MFT_ENUM_FLAG_SORTANDFILTER_WEB_ONLY_EDGEMODE = 576,
			MFT_ENUM_FLAG_UNTRUSTED_STOREMFT = 1024,
			MFT_ENUM_FLAG_ALL = 63,
		}
		[AllowDuplicates]
		public enum MFFrameSourceTypes : int32
		{
			MFFrameSourceTypes_Color = 1,
			MFFrameSourceTypes_Infrared = 2,
			MFFrameSourceTypes_Depth = 4,
			MFFrameSourceTypes_Image = 8,
			MFFrameSourceTypes_Custom = 128,
		}
		[AllowDuplicates]
		public enum MFVideo3DFormat : int32
		{
			MFVideo3DSampleFormat_BaseView = 0,
			MFVideo3DSampleFormat_MultiView = 1,
			MFVideo3DSampleFormat_Packed_LeftRight = 2,
			MFVideo3DSampleFormat_Packed_TopBottom = 3,
		}
		[AllowDuplicates]
		public enum MFVideo3DSampleFormat : int32
		{
			MFSampleExtension_3DVideo_MultiView = 1,
			MFSampleExtension_3DVideo_Packed = 0,
		}
		[AllowDuplicates]
		public enum MFVideoRotationFormat : int32
		{
			MFVideoRotationFormat_0 = 0,
			MFVideoRotationFormat_90 = 90,
			MFVideoRotationFormat_180 = 180,
			MFVideoRotationFormat_270 = 270,
		}
		[AllowDuplicates]
		public enum MFDepthMeasurement : int32
		{
			DistanceToFocalPlane = 0,
			DistanceToOpticalCenter = 1,
		}
		[AllowDuplicates]
		public enum MF_CUSTOM_DECODE_UNIT_TYPE : int32
		{
			MF_DECODE_UNIT_NAL = 0,
			MF_DECODE_UNIT_SEI = 1,
		}
		[AllowDuplicates]
		public enum MFVideoDRMFlags : int32
		{
			MFVideoDRMFlag_None = 0,
			MFVideoDRMFlag_AnalogProtected = 1,
			MFVideoDRMFlag_DigitallyProtected = 2,
		}
		[AllowDuplicates]
		public enum MFVideoPadFlags : int32
		{
			MFVideoPadFlag_PAD_TO_None = 0,
			MFVideoPadFlag_PAD_TO_4x3 = 1,
			MFVideoPadFlag_PAD_TO_16x9 = 2,
		}
		[AllowDuplicates]
		public enum MFVideoSrcContentHintFlags : int32
		{
			MFVideoSrcContentHintFlag_None = 0,
			MFVideoSrcContentHintFlag_16x9 = 1,
			MFVideoSrcContentHintFlag_235_1 = 2,
		}
		[AllowDuplicates]
		public enum MFWaveFormatExConvertFlags : int32
		{
			MFWaveFormatExConvertFlag_Normal = 0,
			MFWaveFormatExConvertFlag_ForceExtensible = 1,
		}
		[AllowDuplicates]
		public enum EAllocationType : int32
		{
			eAllocationTypeDynamic = 0,
			eAllocationTypeRT = 1,
			eAllocationTypePageable = 2,
			eAllocationTypeIgnore = 3,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_ERR : int32
		{
			MF_MEDIA_ENGINE_ERR_NOERROR = 0,
			MF_MEDIA_ENGINE_ERR_ABORTED = 1,
			MF_MEDIA_ENGINE_ERR_NETWORK = 2,
			MF_MEDIA_ENGINE_ERR_DECODE = 3,
			MF_MEDIA_ENGINE_ERR_SRC_NOT_SUPPORTED = 4,
			MF_MEDIA_ENGINE_ERR_ENCRYPTED = 5,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_EVENT : int32
		{
			MF_MEDIA_ENGINE_EVENT_LOADSTART = 1,
			MF_MEDIA_ENGINE_EVENT_PROGRESS = 2,
			MF_MEDIA_ENGINE_EVENT_SUSPEND = 3,
			MF_MEDIA_ENGINE_EVENT_ABORT = 4,
			MF_MEDIA_ENGINE_EVENT_ERROR = 5,
			MF_MEDIA_ENGINE_EVENT_EMPTIED = 6,
			MF_MEDIA_ENGINE_EVENT_STALLED = 7,
			MF_MEDIA_ENGINE_EVENT_PLAY = 8,
			MF_MEDIA_ENGINE_EVENT_PAUSE = 9,
			MF_MEDIA_ENGINE_EVENT_LOADEDMETADATA = 10,
			MF_MEDIA_ENGINE_EVENT_LOADEDDATA = 11,
			MF_MEDIA_ENGINE_EVENT_WAITING = 12,
			MF_MEDIA_ENGINE_EVENT_PLAYING = 13,
			MF_MEDIA_ENGINE_EVENT_CANPLAY = 14,
			MF_MEDIA_ENGINE_EVENT_CANPLAYTHROUGH = 15,
			MF_MEDIA_ENGINE_EVENT_SEEKING = 16,
			MF_MEDIA_ENGINE_EVENT_SEEKED = 17,
			MF_MEDIA_ENGINE_EVENT_TIMEUPDATE = 18,
			MF_MEDIA_ENGINE_EVENT_ENDED = 19,
			MF_MEDIA_ENGINE_EVENT_RATECHANGE = 20,
			MF_MEDIA_ENGINE_EVENT_DURATIONCHANGE = 21,
			MF_MEDIA_ENGINE_EVENT_VOLUMECHANGE = 22,
			MF_MEDIA_ENGINE_EVENT_FORMATCHANGE = 1000,
			MF_MEDIA_ENGINE_EVENT_PURGEQUEUEDEVENTS = 1001,
			MF_MEDIA_ENGINE_EVENT_TIMELINE_MARKER = 1002,
			MF_MEDIA_ENGINE_EVENT_BALANCECHANGE = 1003,
			MF_MEDIA_ENGINE_EVENT_DOWNLOADCOMPLETE = 1004,
			MF_MEDIA_ENGINE_EVENT_BUFFERINGSTARTED = 1005,
			MF_MEDIA_ENGINE_EVENT_BUFFERINGENDED = 1006,
			MF_MEDIA_ENGINE_EVENT_FRAMESTEPCOMPLETED = 1007,
			MF_MEDIA_ENGINE_EVENT_NOTIFYSTABLESTATE = 1008,
			MF_MEDIA_ENGINE_EVENT_FIRSTFRAMEREADY = 1009,
			MF_MEDIA_ENGINE_EVENT_TRACKSCHANGE = 1010,
			MF_MEDIA_ENGINE_EVENT_OPMINFO = 1011,
			MF_MEDIA_ENGINE_EVENT_RESOURCELOST = 1012,
			MF_MEDIA_ENGINE_EVENT_DELAYLOADEVENT_CHANGED = 1013,
			MF_MEDIA_ENGINE_EVENT_STREAMRENDERINGERROR = 1014,
			MF_MEDIA_ENGINE_EVENT_SUPPORTEDRATES_CHANGED = 1015,
			MF_MEDIA_ENGINE_EVENT_AUDIOENDPOINTCHANGE = 1016,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_NETWORK : int32
		{
			MF_MEDIA_ENGINE_NETWORK_EMPTY = 0,
			MF_MEDIA_ENGINE_NETWORK_IDLE = 1,
			MF_MEDIA_ENGINE_NETWORK_LOADING = 2,
			MF_MEDIA_ENGINE_NETWORK_NO_SOURCE = 3,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_READY : int32
		{
			MF_MEDIA_ENGINE_READY_HAVE_NOTHING = 0,
			MF_MEDIA_ENGINE_READY_HAVE_METADATA = 1,
			MF_MEDIA_ENGINE_READY_HAVE_CURRENT_DATA = 2,
			MF_MEDIA_ENGINE_READY_HAVE_FUTURE_DATA = 3,
			MF_MEDIA_ENGINE_READY_HAVE_ENOUGH_DATA = 4,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_CANPLAY : int32
		{
			MF_MEDIA_ENGINE_CANPLAY_NOT_SUPPORTED = 0,
			MF_MEDIA_ENGINE_CANPLAY_MAYBE = 1,
			MF_MEDIA_ENGINE_CANPLAY_PROBABLY = 2,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_PRELOAD : int32
		{
			MF_MEDIA_ENGINE_PRELOAD_MISSING = 0,
			MF_MEDIA_ENGINE_PRELOAD_EMPTY = 1,
			MF_MEDIA_ENGINE_PRELOAD_NONE = 2,
			MF_MEDIA_ENGINE_PRELOAD_METADATA = 3,
			MF_MEDIA_ENGINE_PRELOAD_AUTOMATIC = 4,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_S3D_PACKING_MODE : int32
		{
			MF_MEDIA_ENGINE_S3D_PACKING_MODE_NONE = 0,
			MF_MEDIA_ENGINE_S3D_PACKING_MODE_SIDE_BY_SIDE = 1,
			MF_MEDIA_ENGINE_S3D_PACKING_MODE_TOP_BOTTOM = 2,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_STATISTIC : int32
		{
			MF_MEDIA_ENGINE_STATISTIC_FRAMES_RENDERED = 0,
			MF_MEDIA_ENGINE_STATISTIC_FRAMES_DROPPED = 1,
			MF_MEDIA_ENGINE_STATISTIC_BYTES_DOWNLOADED = 2,
			MF_MEDIA_ENGINE_STATISTIC_BUFFER_PROGRESS = 3,
			MF_MEDIA_ENGINE_STATISTIC_FRAMES_PER_SECOND = 4,
			MF_MEDIA_ENGINE_STATISTIC_PLAYBACK_JITTER = 5,
			MF_MEDIA_ENGINE_STATISTIC_FRAMES_CORRUPTED = 6,
			MF_MEDIA_ENGINE_STATISTIC_TOTAL_FRAME_DELAY = 7,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_SEEK_MODE : int32
		{
			MF_MEDIA_ENGINE_SEEK_MODE_NORMAL = 0,
			MF_MEDIA_ENGINE_SEEK_MODE_APPROXIMATE = 1,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_EXTENSION_TYPE : int32
		{
			MF_MEDIA_ENGINE_EXTENSION_TYPE_MEDIASOURCE = 0,
			MF_MEDIA_ENGINE_EXTENSION_TYPE_BYTESTREAM = 1,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_FRAME_PROTECTION_FLAGS : int32
		{
			MF_MEDIA_ENGINE_FRAME_PROTECTION_FLAG_PROTECTED = 1,
			MF_MEDIA_ENGINE_FRAME_PROTECTION_FLAG_REQUIRES_SURFACE_PROTECTION = 2,
			MF_MEDIA_ENGINE_FRAME_PROTECTION_FLAG_REQUIRES_ANTI_SCREEN_SCRAPE_PROTECTION = 4,
		}
		[AllowDuplicates]
		public enum MF_MSE_VP9_SUPPORT_TYPE : int32
		{
			MF_MSE_VP9_SUPPORT_DEFAULT = 0,
			MF_MSE_VP9_SUPPORT_ON = 1,
			MF_MSE_VP9_SUPPORT_OFF = 2,
		}
		[AllowDuplicates]
		public enum MF_MSE_OPUS_SUPPORT_TYPE : int32
		{
			MF_MSE_OPUS_SUPPORT_ON = 0,
			MF_MSE_OPUS_SUPPORT_OFF = 1,
		}
		[AllowDuplicates]
		public enum MF_MSE_APPEND_MODE : int32
		{
			MF_MSE_APPEND_MODE_SEGMENTS = 0,
			MF_MSE_APPEND_MODE_SEQUENCE = 1,
		}
		[AllowDuplicates]
		public enum MF_MSE_READY : int32
		{
			MF_MSE_READY_CLOSED = 1,
			MF_MSE_READY_OPEN = 2,
			MF_MSE_READY_ENDED = 3,
		}
		[AllowDuplicates]
		public enum MF_MSE_ERROR : int32
		{
			MF_MSE_ERROR_NOERROR = 0,
			MF_MSE_ERROR_NETWORK = 1,
			MF_MSE_ERROR_DECODE = 2,
			MF_MSE_ERROR_UNKNOWN_ERROR = 3,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_KEYERR : int32
		{
			MF_MEDIAENGINE_KEYERR_UNKNOWN = 1,
			MF_MEDIAENGINE_KEYERR_CLIENT = 2,
			MF_MEDIAENGINE_KEYERR_SERVICE = 3,
			MF_MEDIAENGINE_KEYERR_OUTPUT = 4,
			MF_MEDIAENGINE_KEYERR_HARDWARECHANGE = 5,
			MF_MEDIAENGINE_KEYERR_DOMAIN = 6,
		}
		[AllowDuplicates]
		public enum MF_HDCP_STATUS : int32
		{
			MF_HDCP_STATUS_ON = 0,
			MF_HDCP_STATUS_OFF = 1,
			MF_HDCP_STATUS_ON_WITH_TYPE_ENFORCEMENT = 2,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_OPM_STATUS : int32
		{
			MF_MEDIA_ENGINE_OPM_NOT_REQUESTED = 0,
			MF_MEDIA_ENGINE_OPM_ESTABLISHED = 1,
			MF_MEDIA_ENGINE_OPM_FAILED_VM = 2,
			MF_MEDIA_ENGINE_OPM_FAILED_BDA = 3,
			MF_MEDIA_ENGINE_OPM_FAILED_UNSIGNED_DRIVER = 4,
			MF_MEDIA_ENGINE_OPM_FAILED = 5,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_CREATEFLAGS : int32
		{
			MF_MEDIA_ENGINE_AUDIOONLY = 1,
			MF_MEDIA_ENGINE_WAITFORSTABLE_STATE = 2,
			MF_MEDIA_ENGINE_FORCEMUTE = 4,
			MF_MEDIA_ENGINE_REAL_TIME_MODE = 8,
			MF_MEDIA_ENGINE_DISABLE_LOCAL_PLUGINS = 16,
			MF_MEDIA_ENGINE_CREATEFLAGS_MASK = 31,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_PROTECTION_FLAGS : int32
		{
			MF_MEDIA_ENGINE_ENABLE_PROTECTED_CONTENT = 1,
			MF_MEDIA_ENGINE_USE_PMP_FOR_ALL_CONTENT = 2,
			MF_MEDIA_ENGINE_USE_UNPROTECTED_PMP = 4,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_TRACK_KIND : int32
		{
			MF_TIMED_TEXT_TRACK_KIND_UNKNOWN = 0,
			MF_TIMED_TEXT_TRACK_KIND_SUBTITLES = 1,
			MF_TIMED_TEXT_TRACK_KIND_CAPTIONS = 2,
			MF_TIMED_TEXT_TRACK_KIND_METADATA = 3,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_UNIT_TYPE : int32
		{
			MF_TIMED_TEXT_UNIT_TYPE_PIXELS = 0,
			MF_TIMED_TEXT_UNIT_TYPE_PERCENTAGE = 1,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_FONT_STYLE : int32
		{
			MF_TIMED_TEXT_FONT_STYLE_NORMAL = 0,
			MF_TIMED_TEXT_FONT_STYLE_OBLIQUE = 1,
			MF_TIMED_TEXT_FONT_STYLE_ITALIC = 2,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_ALIGNMENT : int32
		{
			MF_TIMED_TEXT_ALIGNMENT_START = 0,
			MF_TIMED_TEXT_ALIGNMENT_END = 1,
			MF_TIMED_TEXT_ALIGNMENT_CENTER = 2,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_DISPLAY_ALIGNMENT : int32
		{
			MF_TIMED_TEXT_DISPLAY_ALIGNMENT_BEFORE = 0,
			MF_TIMED_TEXT_DISPLAY_ALIGNMENT_AFTER = 1,
			MF_TIMED_TEXT_DISPLAY_ALIGNMENT_CENTER = 2,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_DECORATION : int32
		{
			MF_TIMED_TEXT_DECORATION_NONE = 0,
			MF_TIMED_TEXT_DECORATION_UNDERLINE = 1,
			MF_TIMED_TEXT_DECORATION_LINE_THROUGH = 2,
			MF_TIMED_TEXT_DECORATION_OVERLINE = 4,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_WRITING_MODE : int32
		{
			MF_TIMED_TEXT_WRITING_MODE_LRTB = 0,
			MF_TIMED_TEXT_WRITING_MODE_RLTB = 1,
			MF_TIMED_TEXT_WRITING_MODE_TBRL = 2,
			MF_TIMED_TEXT_WRITING_MODE_TBLR = 3,
			MF_TIMED_TEXT_WRITING_MODE_LR = 4,
			MF_TIMED_TEXT_WRITING_MODE_RL = 5,
			MF_TIMED_TEXT_WRITING_MODE_TB = 6,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_SCROLL_MODE : int32
		{
			MF_TIMED_TEXT_SCROLL_MODE_POP_ON = 0,
			MF_TIMED_TEXT_SCROLL_MODE_ROLL_UP = 1,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_ERROR_CODE : int32
		{
			MF_TIMED_TEXT_ERROR_CODE_NOERROR = 0,
			MF_TIMED_TEXT_ERROR_CODE_FATAL = 1,
			MF_TIMED_TEXT_ERROR_CODE_DATA_FORMAT = 2,
			MF_TIMED_TEXT_ERROR_CODE_NETWORK = 3,
			MF_TIMED_TEXT_ERROR_CODE_INTERNAL = 4,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_CUE_EVENT : int32
		{
			MF_TIMED_TEXT_CUE_EVENT_ACTIVE = 0,
			MF_TIMED_TEXT_CUE_EVENT_INACTIVE = 1,
			MF_TIMED_TEXT_CUE_EVENT_CLEAR = 2,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_TRACK_READY_STATE : int32
		{
			MF_TIMED_TEXT_TRACK_READY_STATE_NONE = 0,
			MF_TIMED_TEXT_TRACK_READY_STATE_LOADING = 1,
			MF_TIMED_TEXT_TRACK_READY_STATE_LOADED = 2,
			MF_TIMED_TEXT_TRACK_READY_STATE_ERROR = 3,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_RUBY_POSITION : int32
		{
			MF_TIMED_TEXT_RUBY_POSITION_BEFORE = 0,
			MF_TIMED_TEXT_RUBY_POSITION_AFTER = 1,
			MF_TIMED_TEXT_RUBY_POSITION_OUTSIDE = 2,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_RUBY_ALIGN : int32
		{
			MF_TIMED_TEXT_RUBY_ALIGN_CENTER = 0,
			MF_TIMED_TEXT_RUBY_ALIGN_START = 1,
			MF_TIMED_TEXT_RUBY_ALIGN_END = 2,
			MF_TIMED_TEXT_RUBY_ALIGN_SPACEAROUND = 3,
			MF_TIMED_TEXT_RUBY_ALIGN_SPACEBETWEEN = 4,
			MF_TIMED_TEXT_RUBY_ALIGN_WITHBASE = 5,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_RUBY_RESERVE : int32
		{
			MF_TIMED_TEXT_RUBY_RESERVE_NONE = 0,
			MF_TIMED_TEXT_RUBY_RESERVE_BEFORE = 1,
			MF_TIMED_TEXT_RUBY_RESERVE_AFTER = 2,
			MF_TIMED_TEXT_RUBY_RESERVE_BOTH = 3,
			MF_TIMED_TEXT_RUBY_RESERVE_OUTSIDE = 4,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_BOUTEN_TYPE : int32
		{
			MF_TIMED_TEXT_BOUTEN_TYPE_NONE = 0,
			MF_TIMED_TEXT_BOUTEN_TYPE_AUTO = 1,
			MF_TIMED_TEXT_BOUTEN_TYPE_FILLEDCIRCLE = 2,
			MF_TIMED_TEXT_BOUTEN_TYPE_OPENCIRCLE = 3,
			MF_TIMED_TEXT_BOUTEN_TYPE_FILLEDDOT = 4,
			MF_TIMED_TEXT_BOUTEN_TYPE_OPENDOT = 5,
			MF_TIMED_TEXT_BOUTEN_TYPE_FILLEDSESAME = 6,
			MF_TIMED_TEXT_BOUTEN_TYPE_OPENSESAME = 7,
		}
		[AllowDuplicates]
		public enum MF_TIMED_TEXT_BOUTEN_POSITION : int32
		{
			MF_TIMED_TEXT_BOUTEN_POSITION_BEFORE = 0,
			MF_TIMED_TEXT_BOUTEN_POSITION_AFTER = 1,
			MF_TIMED_TEXT_BOUTEN_POSITION_OUTSIDE = 2,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_ENGINE_STREAMTYPE_FAILED : int32
		{
			MF_MEDIA_ENGINE_STREAMTYPE_FAILED_UNKNOWN = 0,
			MF_MEDIA_ENGINE_STREAMTYPE_FAILED_AUDIO = 1,
			MF_MEDIA_ENGINE_STREAMTYPE_FAILED_VIDEO = 2,
		}
		[AllowDuplicates]
		public enum MF_MEDIAKEYS_REQUIREMENT : int32
		{
			MF_MEDIAKEYS_REQUIREMENT_REQUIRED = 1,
			MF_MEDIAKEYS_REQUIREMENT_OPTIONAL = 2,
			MF_MEDIAKEYS_REQUIREMENT_NOT_ALLOWED = 3,
		}
		[AllowDuplicates]
		public enum MF_SOURCE_READER_FLAG : int32
		{
			MF_SOURCE_READERF_ERROR = 1,
			MF_SOURCE_READERF_ENDOFSTREAM = 2,
			MF_SOURCE_READERF_NEWSTREAM = 4,
			MF_SOURCE_READERF_NATIVEMEDIATYPECHANGED = 16,
			MF_SOURCE_READERF_CURRENTMEDIATYPECHANGED = 32,
			MF_SOURCE_READERF_STREAMTICK = 256,
			MF_SOURCE_READERF_ALLEFFECTSREMOVED = 512,
		}
		[AllowDuplicates]
		public enum MF_SOURCE_READER_CONTROL_FLAG : int32
		{
			MF_SOURCE_READER_CONTROLF_DRAIN = 1,
		}
		[AllowDuplicates]
		public enum MF_SOURCE_READER_CONSTANTS : int32
		{
			MF_SOURCE_READER_INVALID_STREAM_INDEX = -1,
			MF_SOURCE_READER_ALL_STREAMS = -2,
			MF_SOURCE_READER_ANY_STREAM = -2,
			MF_SOURCE_READER_FIRST_AUDIO_STREAM = -3,
			MF_SOURCE_READER_FIRST_VIDEO_STREAM = -4,
			MF_SOURCE_READER_MEDIASOURCE = -1,
		}
		[AllowDuplicates]
		public enum MF_SOURCE_READER_CURRENT_TYPE_CONSTANTS : int32
		{
			MF_SOURCE_READER_CURRENT_TYPE_INDEX = -1,
		}
		[AllowDuplicates]
		public enum MF_SINK_WRITER_CONSTANTS : uint32
		{
			MF_SINK_WRITER_INVALID_STREAM_INDEX = 4294967295,
			MF_SINK_WRITER_ALL_STREAMS = 4294967294,
			MF_SINK_WRITER_MEDIASINK = 4294967295,
		}
		[AllowDuplicates]
		public enum MFVideoAspectRatioMode : int32
		{
			MFVideoARMode_None = 0,
			MFVideoARMode_PreservePicture = 1,
			MFVideoARMode_PreservePixel = 2,
			MFVideoARMode_NonLinearStretch = 4,
			MFVideoARMode_Mask = 7,
		}
		[AllowDuplicates]
		public enum MFVideoRenderPrefs : int32
		{
			MFVideoRenderPrefs_DoNotRenderBorder = 1,
			MFVideoRenderPrefs_DoNotClipToDevice = 2,
			MFVideoRenderPrefs_AllowOutputThrottling = 4,
			MFVideoRenderPrefs_ForceOutputThrottling = 8,
			MFVideoRenderPrefs_ForceBatching = 16,
			MFVideoRenderPrefs_AllowBatching = 32,
			MFVideoRenderPrefs_ForceScaling = 64,
			MFVideoRenderPrefs_AllowScaling = 128,
			MFVideoRenderPrefs_DoNotRepaintOnStop = 256,
			MFVideoRenderPrefs_Mask = 511,
		}
		[AllowDuplicates]
		public enum MFVP_MESSAGE_TYPE : int32
		{
			MFVP_MESSAGE_FLUSH = 0,
			MFVP_MESSAGE_INVALIDATEMEDIATYPE = 1,
			MFVP_MESSAGE_PROCESSINPUTNOTIFY = 2,
			MFVP_MESSAGE_BEGINSTREAMING = 3,
			MFVP_MESSAGE_ENDSTREAMING = 4,
			MFVP_MESSAGE_ENDOFSTREAM = 5,
			MFVP_MESSAGE_STEP = 6,
			MFVP_MESSAGE_CANCELSTEP = 7,
		}
		[AllowDuplicates]
		public enum MFVideoMixPrefs : int32
		{
			MFVideoMixPrefs_ForceHalfInterlace = 1,
			MFVideoMixPrefs_AllowDropToHalfInterlace = 2,
			MFVideoMixPrefs_AllowDropToBob = 4,
			MFVideoMixPrefs_ForceBob = 8,
			MFVideoMixPrefs_EnableRotation = 16,
			MFVideoMixPrefs_Mask = 31,
		}
		[AllowDuplicates]
		public enum EVRFilterConfigPrefs : int32
		{
			EVRFilterConfigPrefs_EnableQoS = 1,
			EVRFilterConfigPrefs_Mask = 1,
		}
		[AllowDuplicates]
		public enum MF_SERVICE_LOOKUP_TYPE : int32
		{
			MF_SERVICE_LOOKUP_UPSTREAM = 0,
			MF_SERVICE_LOOKUP_UPSTREAM_DIRECT = 1,
			MF_SERVICE_LOOKUP_DOWNSTREAM = 2,
			MF_SERVICE_LOOKUP_DOWNSTREAM_DIRECT = 3,
			MF_SERVICE_LOOKUP_ALL = 4,
			MF_SERVICE_LOOKUP_GLOBAL = 5,
		}
		[AllowDuplicates]
		public enum MFP_CREATION_OPTIONS : int32
		{
			MFP_OPTION_NONE = 0,
			MFP_OPTION_FREE_THREADED_CALLBACK = 1,
			MFP_OPTION_NO_MMCSS = 2,
			MFP_OPTION_NO_REMOTE_DESKTOP_OPTIMIZATION = 4,
		}
		[AllowDuplicates]
		public enum MFP_MEDIAPLAYER_STATE : int32
		{
			MFP_MEDIAPLAYER_STATE_EMPTY = 0,
			MFP_MEDIAPLAYER_STATE_STOPPED = 1,
			MFP_MEDIAPLAYER_STATE_PLAYING = 2,
			MFP_MEDIAPLAYER_STATE_PAUSED = 3,
			MFP_MEDIAPLAYER_STATE_SHUTDOWN = 4,
		}
		[AllowDuplicates]
		public enum _MFP_MEDIAITEM_CHARACTERISTICS : int32
		{
			MFP_MEDIAITEM_IS_LIVE = 1,
			MFP_MEDIAITEM_CAN_SEEK = 2,
			MFP_MEDIAITEM_CAN_PAUSE = 4,
			MFP_MEDIAITEM_HAS_SLOW_SEEK = 8,
		}
		[AllowDuplicates]
		public enum _MFP_CREDENTIAL_FLAGS : int32
		{
			MFP_CREDENTIAL_PROMPT = 1,
			MFP_CREDENTIAL_SAVE = 2,
			MFP_CREDENTIAL_DO_NOT_CACHE = 4,
			MFP_CREDENTIAL_CLEAR_TEXT = 8,
			MFP_CREDENTIAL_PROXY = 16,
			MFP_CREDENTIAL_LOGGED_ON_USER = 32,
		}
		[AllowDuplicates]
		public enum MFP_EVENT_TYPE : int32
		{
			MFP_EVENT_TYPE_PLAY = 0,
			MFP_EVENT_TYPE_PAUSE = 1,
			MFP_EVENT_TYPE_STOP = 2,
			MFP_EVENT_TYPE_POSITION_SET = 3,
			MFP_EVENT_TYPE_RATE_SET = 4,
			MFP_EVENT_TYPE_MEDIAITEM_CREATED = 5,
			MFP_EVENT_TYPE_MEDIAITEM_SET = 6,
			MFP_EVENT_TYPE_FRAME_STEP = 7,
			MFP_EVENT_TYPE_MEDIAITEM_CLEARED = 8,
			MFP_EVENT_TYPE_MF = 9,
			MFP_EVENT_TYPE_ERROR = 10,
			MFP_EVENT_TYPE_PLAYBACK_ENDED = 11,
			MFP_EVENT_TYPE_ACQUIRE_USER_CREDENTIAL = 12,
		}
		[AllowDuplicates]
		public enum MF_SHARING_ENGINE_EVENT : int32
		{
			MF_SHARING_ENGINE_EVENT_DISCONNECT = 2000,
			MF_SHARING_ENGINE_EVENT_LOCALRENDERINGSTARTED = 2001,
			MF_SHARING_ENGINE_EVENT_LOCALRENDERINGENDED = 2002,
			MF_SHARING_ENGINE_EVENT_STOPPED = 2003,
			MF_SHARING_ENGINE_EVENT_ERROR = 2501,
		}
		[AllowDuplicates]
		public enum MF_MEDIA_SHARING_ENGINE_EVENT : int32
		{
			MF_MEDIA_SHARING_ENGINE_EVENT_DISCONNECT = 2000,
		}
		[AllowDuplicates]
		public enum PLAYTO_SOURCE_CREATEFLAGS : int32
		{
			PLAYTO_SOURCE_NONE = 0,
			PLAYTO_SOURCE_IMAGE = 1,
			PLAYTO_SOURCE_AUDIO = 2,
			PLAYTO_SOURCE_VIDEO = 4,
			PLAYTO_SOURCE_PROTECTED = 8,
		}
		[AllowDuplicates]
		public enum MFVideoAlphaBitmapFlags : int32
		{
			MFVideoAlphaBitmap_EntireDDS = 1,
			MFVideoAlphaBitmap_SrcColorKey = 2,
			MFVideoAlphaBitmap_SrcRect = 4,
			MFVideoAlphaBitmap_DestRect = 8,
			MFVideoAlphaBitmap_FilterMode = 16,
			MFVideoAlphaBitmap_Alpha = 32,
			MFVideoAlphaBitmap_BitMask = 63,
		}
		[AllowDuplicates]
		public enum __MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0001 : int32
		{
			MFVirtualCameraType_SoftwareCameraSource = 0,
		}
		[AllowDuplicates]
		public enum __MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0002 : int32
		{
			MFVirtualCameraLifetime_Session = 0,
			MFVirtualCameraLifetime_System = 1,
		}
		[AllowDuplicates]
		public enum __MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0003 : int32
		{
			MFVirtualCameraAccess_CurrentUser = 0,
			MFVirtualCameraAccess_AllUsers = 1,
		}
		[AllowDuplicates]
		public enum OPM_HDCP_TYPE : int32
		{
			OPM_HDCP_TYPE_0 = 0,
			OPM_HDCP_TYPE_1 = 1,
		}
		[AllowDuplicates]
		public enum OPM_HDCP_STATUS : int32
		{
			OPM_HDCP_STATUS_ON = 0,
			OPM_HDCP_STATUS_OFF = 1,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT PDXVAHDSW_CreateDevice(IDirect3DDevice9Ex* pD3DDevice, HANDLE* phDevice);
		public function HRESULT PDXVAHDSW_ProposeVideoPrivateFormat(HANDLE hDevice, D3DFORMAT* pFormat);
		public function HRESULT PDXVAHDSW_GetVideoProcessorDeviceCaps(HANDLE hDevice, DXVAHD_CONTENT_DESC* pContentDesc, DXVAHD_DEVICE_USAGE Usage, DXVAHD_VPDEVCAPS* pCaps);
		public function HRESULT PDXVAHDSW_GetVideoProcessorOutputFormats(HANDLE hDevice, DXVAHD_CONTENT_DESC* pContentDesc, DXVAHD_DEVICE_USAGE Usage, uint32 Count, D3DFORMAT* pFormats);
		public function HRESULT PDXVAHDSW_GetVideoProcessorInputFormats(HANDLE hDevice, DXVAHD_CONTENT_DESC* pContentDesc, DXVAHD_DEVICE_USAGE Usage, uint32 Count, D3DFORMAT* pFormats);
		public function HRESULT PDXVAHDSW_GetVideoProcessorCaps(HANDLE hDevice, DXVAHD_CONTENT_DESC* pContentDesc, DXVAHD_DEVICE_USAGE Usage, uint32 Count, DXVAHD_VPCAPS* pCaps);
		public function HRESULT PDXVAHDSW_GetVideoProcessorCustomRates(HANDLE hDevice, Guid* pVPGuid, uint32 Count, DXVAHD_CUSTOM_RATE_DATA* pRates);
		public function HRESULT PDXVAHDSW_GetVideoProcessorFilterRange(HANDLE hDevice, DXVAHD_FILTER Filter, DXVAHD_FILTER_RANGE_DATA* pRange);
		public function HRESULT PDXVAHDSW_DestroyDevice(HANDLE hDevice);
		public function HRESULT PDXVAHDSW_CreateVideoProcessor(HANDLE hDevice, Guid* pVPGuid, HANDLE* phVideoProcessor);
		public function HRESULT PDXVAHDSW_SetVideoProcessBltState(HANDLE hVideoProcessor, DXVAHD_BLT_STATE State, uint32 DataSize, void* pData);
		public function HRESULT PDXVAHDSW_GetVideoProcessBltStatePrivate(HANDLE hVideoProcessor, DXVAHD_BLT_STATE_PRIVATE_DATA* pData);
		public function HRESULT PDXVAHDSW_SetVideoProcessStreamState(HANDLE hVideoProcessor, uint32 StreamNumber, DXVAHD_STREAM_STATE State, uint32 DataSize, void* pData);
		public function HRESULT PDXVAHDSW_GetVideoProcessStreamStatePrivate(HANDLE hVideoProcessor, uint32 StreamNumber, DXVAHD_STREAM_STATE_PRIVATE_DATA* pData);
		public function HRESULT PDXVAHDSW_VideoProcessBltHD(HANDLE hVideoProcessor, IDirect3DSurface9* pOutputSurface, uint32 OutputFrame, uint32 StreamCount, DXVAHD_STREAM_DATA* pStreams);
		public function HRESULT PDXVAHDSW_DestroyVideoProcessor(HANDLE hVideoProcessor);
		public function HRESULT PDXVAHDSW_Plugin(uint32 Size, void* pCallbacks);
		public function HRESULT PDXVAHD_CreateDevice(IDirect3DDevice9Ex* pD3DDevice, DXVAHD_CONTENT_DESC* pContentDesc, DXVAHD_DEVICE_USAGE Usage, PDXVAHDSW_Plugin pPlugin, IDXVAHD_Device** ppDevice);
		public function void MFPERIODICCALLBACK(IUnknown* pContext);
		
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
		[CRepr]
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
		[CRepr]
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
		[CRepr]
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
		[CRepr]
		public struct OPM_GET_INFO_PARAMETERS
		{
			public OPM_OMAC omac;
			public OPM_RANDOM_NUMBER rnRandomNumber;
			public Guid guidInformation;
			public uint32 ulSequenceNumber;
			public uint32 cbParametersSize;
			public uint8[4056] abParameters;
		}
		[CRepr]
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
		[CRepr]
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
		[CRepr]
		public struct OPM_REQUESTED_INFORMATION
		{
			public OPM_OMAC omac;
			public uint32 cbRequestedInformationSize;
			public uint8[4076] abRequestedInformation;
		}
		[CRepr]
		public struct OPM_STANDARD_INFORMATION
		{
			public OPM_RANDOM_NUMBER rnRandomNumber;
			public uint32 ulStatusFlags;
			public uint32 ulInformation;
			public uint32 ulReserved;
			public uint32 ulReserved2;
		}
		[CRepr]
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
		[CRepr]
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
		[CRepr]
		public struct OPM_OUTPUT_ID_DATA
		{
			public OPM_RANDOM_NUMBER rnRandomNumber;
			public uint32 ulStatusFlags;
			public uint64 OutputId;
		}
		[CRepr]
		public struct OPM_CONFIGURE_PARAMETERS
		{
			public OPM_OMAC omac;
			public Guid guidSetting;
			public uint32 ulSequenceNumber;
			public uint32 cbParametersSize;
			public uint8[4056] abParameters;
		}
		[CRepr]
		public struct OPM_SET_PROTECTION_LEVEL_PARAMETERS
		{
			public uint32 ulProtectionType;
			public uint32 ulProtectionLevel;
			public uint32 Reserved;
			public uint32 Reserved2;
		}
		[CRepr]
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
		[CRepr]
		public struct OPM_SET_HDCP_SRM_PARAMETERS
		{
			public uint32 ulSRMVersion;
		}
		[CRepr]
		public struct OPM_GET_CODEC_INFO_PARAMETERS
		{
			public uint32 cbVerifier;
			public uint8[4052] Verifier;
		}
		[CRepr]
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
			public MFPaletteEntry[] Palette;
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
		[CRepr]
		public struct ASF_FLAT_PICTURE
		{
			public uint8 bPictureType;
			public uint32 dwDataLen;
		}
		[CRepr]
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
			public MFINPUTTRUSTAUTHORITY_ACCESS_ACTION[] rgOutputActions;
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
			public RECT[] DirtyRects;
		}
		[CRepr]
		public struct MOVEREGION_INFO
		{
			public uint32 FrameNumber;
			public uint32 NumMoveRegions;
			public MOVE_RECT[] MoveRegions;
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
			public MFCameraExtrinsic_CalibratedTransform[] CalibratedTransforms;
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
			public MFPinholeCameraIntrinsic_IntrinsicModel[] IntrinsicModels;
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
			
			public function HRESULT(ICodecAPI *self, Guid* Api) IsSupported;
			public function HRESULT(ICodecAPI *self, Guid* Api) IsModifiable;
			public function HRESULT(ICodecAPI *self, Guid* Api, VARIANT* ValueMin, VARIANT* ValueMax, VARIANT* SteppingDelta) GetParameterRange;
			public function HRESULT(ICodecAPI *self, Guid* Api, VARIANT** Values, uint32* ValuesCount) GetParameterValues;
			public function HRESULT(ICodecAPI *self, Guid* Api, VARIANT* Value) GetDefaultValue;
			public function HRESULT(ICodecAPI *self, Guid* Api, VARIANT* Value) GetValue;
			public function HRESULT(ICodecAPI *self, Guid* Api, VARIANT* Value) SetValue;
			public function HRESULT(ICodecAPI *self, Guid* Api, int userData) RegisterForEvent;
			public function HRESULT(ICodecAPI *self, Guid* Api) UnregisterForEvent;
			public function HRESULT(ICodecAPI *self) SetAllDefaults;
			public function HRESULT(ICodecAPI *self, Guid* Api, VARIANT* Value, Guid** ChangedParam, uint32* ChangedParamCount) SetValueWithNotify;
			public function HRESULT(ICodecAPI *self, Guid** ChangedParam, uint32* ChangedParamCount) SetAllDefaultsWithNotify;
			public function HRESULT(ICodecAPI *self, IStream* __MIDL__ICodecAPI0000) GetAllSettings;
			public function HRESULT(ICodecAPI *self, IStream* __MIDL__ICodecAPI0001) SetAllSettings;
			public function HRESULT(ICodecAPI *self, IStream* __MIDL__ICodecAPI0002, Guid** ChangedParam, uint32* ChangedParamCount) SetAllSettingsWithNotify;
		}
		[CRepr]
		public struct IDirect3D9ExOverlayExtension : IUnknown
		{
			public const new Guid IID = .(0x187aeb13, 0xaaf5, 0x4c59, 0x87, 0x6d, 0xe0, 0x59, 0x08, 0x8c, 0x0d, 0xf8);
			
			public function HRESULT(IDirect3D9ExOverlayExtension *self, uint32 Adapter, D3DDEVTYPE DevType, uint32 OverlayWidth, uint32 OverlayHeight, D3DFORMAT OverlayFormat, D3DDISPLAYMODEEX* pDisplayMode, D3DDISPLAYROTATION DisplayRotation, D3DOVERLAYCAPS* pOverlayCaps) CheckDeviceOverlayType;
		}
		[CRepr]
		public struct IDirect3DDevice9Video : IUnknown
		{
			public const new Guid IID = .(0x26dc4561, 0xa1ee, 0x4ae7, 0x96, 0xda, 0x11, 0x8a, 0x36, 0xc0, 0xec, 0x95);
			
			public function HRESULT(IDirect3DDevice9Video *self, Guid* pCryptoType, Guid* pDecodeProfile, D3DCONTENTPROTECTIONCAPS* pCaps) GetContentProtectionCaps;
			public function HRESULT(IDirect3DDevice9Video *self, D3DAUTHENTICATEDCHANNELTYPE ChannelType, IDirect3DAuthenticatedChannel9** ppAuthenticatedChannel, HANDLE* pChannelHandle) CreateAuthenticatedChannel;
			public function HRESULT(IDirect3DDevice9Video *self, Guid* pCryptoType, Guid* pDecodeProfile, IDirect3DCryptoSession9** ppCryptoSession, HANDLE* pCryptoHandle) CreateCryptoSession;
		}
		[CRepr]
		public struct IDirect3DAuthenticatedChannel9 : IUnknown
		{
			public const new Guid IID = .(0xff24beee, 0xda21, 0x4beb, 0x98, 0xb5, 0xd2, 0xf8, 0x99, 0xf9, 0x8a, 0xf9);
			
			public function HRESULT(IDirect3DAuthenticatedChannel9 *self, uint32* pCertificateSize) GetCertificateSize;
			public function HRESULT(IDirect3DAuthenticatedChannel9 *self, uint32 CertifacteSize, uint8* ppCertificate) GetCertificate;
			public function HRESULT(IDirect3DAuthenticatedChannel9 *self, uint32 DataSize, void* pData) NegotiateKeyExchange;
			public function HRESULT(IDirect3DAuthenticatedChannel9 *self, uint32 InputSize, void* pInput, uint32 OutputSize, void* pOutput) Query;
			public function HRESULT(IDirect3DAuthenticatedChannel9 *self, uint32 InputSize, void* pInput, D3DAUTHENTICATEDCHANNEL_CONFIGURE_OUTPUT* pOutput) Configure;
		}
		[CRepr]
		public struct IDirect3DCryptoSession9 : IUnknown
		{
			public const new Guid IID = .(0xfa0ab799, 0x7a9c, 0x48ca, 0x8c, 0x5b, 0x23, 0x7e, 0x71, 0xa5, 0x44, 0x34);
			
			public function HRESULT(IDirect3DCryptoSession9 *self, uint32* pCertificateSize) GetCertificateSize;
			public function HRESULT(IDirect3DCryptoSession9 *self, uint32 CertifacteSize, uint8* ppCertificate) GetCertificate;
			public function HRESULT(IDirect3DCryptoSession9 *self, uint32 DataSize, void* pData) NegotiateKeyExchange;
			public function HRESULT(IDirect3DCryptoSession9 *self, IDirect3DSurface9* pSrcSurface, IDirect3DSurface9* pDstSurface, uint32 DstSurfaceSize, void* pIV) EncryptionBlt;
			public function HRESULT(IDirect3DCryptoSession9 *self, IDirect3DSurface9* pSrcSurface, IDirect3DSurface9* pDstSurface, uint32 SrcSurfaceSize, D3DENCRYPTED_BLOCK_INFO* pEncryptedBlockInfo, void* pContentKey, void* pIV) DecryptionBlt;
			public function HRESULT(IDirect3DCryptoSession9 *self, IDirect3DSurface9* pSrcSurface, uint32* pSurfacePitch) GetSurfacePitch;
			public function HRESULT(IDirect3DCryptoSession9 *self, void* pRandomNumber, uint32 RandomNumberSize) StartSessionKeyRefresh;
			public function HRESULT(IDirect3DCryptoSession9 *self) FinishSessionKeyRefresh;
			public function HRESULT(IDirect3DCryptoSession9 *self, void* pReadbackKey, uint32 KeySize) GetEncryptionBltKey;
		}
		[CRepr]
		public struct ID3D12VideoDecoderHeap : ID3D12Pageable
		{
			public const new Guid IID = .(0x0946b7c9, 0xebf6, 0x4047, 0xbb, 0x73, 0x86, 0x83, 0xe2, 0x7d, 0xbb, 0x1f);
			
			public function D3D12_VIDEO_DECODER_HEAP_DESC(ID3D12VideoDecoderHeap *self) GetDesc;
		}
		[CRepr]
		public struct ID3D12VideoDevice : IUnknown
		{
			public const new Guid IID = .(0x1f052807, 0x0b46, 0x4acc, 0x8a, 0x89, 0x36, 0x4f, 0x79, 0x37, 0x18, 0xa4);
			
			public function HRESULT(ID3D12VideoDevice *self, D3D12_FEATURE_VIDEO FeatureVideo, void* pFeatureSupportData, uint32 FeatureSupportDataSize) CheckFeatureSupport;
			public function HRESULT(ID3D12VideoDevice *self, D3D12_VIDEO_DECODER_DESC* pDesc, Guid* riid, void** ppVideoDecoder) CreateVideoDecoder;
			public function HRESULT(ID3D12VideoDevice *self, D3D12_VIDEO_DECODER_HEAP_DESC* pVideoDecoderHeapDesc, Guid* riid, void** ppVideoDecoderHeap) CreateVideoDecoderHeap;
			public function HRESULT(ID3D12VideoDevice *self, uint32 NodeMask, D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC* pOutputStreamDesc, uint32 NumInputStreamDescs, D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC* pInputStreamDescs, Guid* riid, void** ppVideoProcessor) CreateVideoProcessor;
		}
		[CRepr]
		public struct ID3D12VideoDecoder : ID3D12Pageable
		{
			public const new Guid IID = .(0xc59b6bdc, 0x7720, 0x4074, 0xa1, 0x36, 0x17, 0xa1, 0x56, 0x03, 0x74, 0x70);
			
			public function D3D12_VIDEO_DECODER_DESC(ID3D12VideoDecoder *self) GetDesc;
		}
		[CRepr]
		public struct ID3D12VideoProcessor : ID3D12Pageable
		{
			public const new Guid IID = .(0x304fdb32, 0xbede, 0x410a, 0x85, 0x45, 0x94, 0x3a, 0xc6, 0xa4, 0x61, 0x38);
			
			public function uint32(ID3D12VideoProcessor *self) GetNodeMask;
			public function uint32(ID3D12VideoProcessor *self) GetNumInputStreamDescs;
			public function HRESULT(ID3D12VideoProcessor *self, uint32 NumInputStreamDescs, D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC* pInputStreamDescs) GetInputStreamDescs;
			public function D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC(ID3D12VideoProcessor *self) GetOutputStreamDesc;
		}
		[CRepr]
		public struct ID3D12VideoDecodeCommandList : ID3D12CommandList
		{
			public const new Guid IID = .(0x3b60536e, 0xad29, 0x4e64, 0xa2, 0x69, 0xf8, 0x53, 0x83, 0x7e, 0x5e, 0x53);
			
			public function HRESULT(ID3D12VideoDecodeCommandList *self) Close;
			public function HRESULT(ID3D12VideoDecodeCommandList *self, ID3D12CommandAllocator* pAllocator) Reset;
			public function void(ID3D12VideoDecodeCommandList *self) ClearState;
			public function void(ID3D12VideoDecodeCommandList *self, uint32 NumBarriers, D3D12_RESOURCE_BARRIER* pBarriers) ResourceBarrier;
			public function void(ID3D12VideoDecodeCommandList *self, ID3D12Resource* pResource, D3D12_DISCARD_REGION* pRegion) DiscardResource;
			public function void(ID3D12VideoDecodeCommandList *self, ID3D12QueryHeap* pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) BeginQuery;
			public function void(ID3D12VideoDecodeCommandList *self, ID3D12QueryHeap* pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) EndQuery;
			public function void(ID3D12VideoDecodeCommandList *self, ID3D12QueryHeap* pQueryHeap, D3D12_QUERY_TYPE Type, uint32 StartIndex, uint32 NumQueries, ID3D12Resource* pDestinationBuffer, uint64 AlignedDestinationBufferOffset) ResolveQueryData;
			public function void(ID3D12VideoDecodeCommandList *self, ID3D12Resource* pBuffer, uint64 AlignedBufferOffset, D3D12_PREDICATION_OP Operation) SetPredication;
			public function void(ID3D12VideoDecodeCommandList *self, uint32 Metadata, void* pData, uint32 Size) SetMarker;
			public function void(ID3D12VideoDecodeCommandList *self, uint32 Metadata, void* pData, uint32 Size) BeginEvent;
			public function void(ID3D12VideoDecodeCommandList *self) EndEvent;
			public function void(ID3D12VideoDecodeCommandList *self, ID3D12VideoDecoder* pDecoder, D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS* pOutputArguments, D3D12_VIDEO_DECODE_INPUT_STREAM_ARGUMENTS* pInputArguments) DecodeFrame;
			public function void(ID3D12VideoDecodeCommandList *self, uint32 Count, D3D12_WRITEBUFFERIMMEDIATE_PARAMETER* pParams, D3D12_WRITEBUFFERIMMEDIATE_MODE* pModes) WriteBufferImmediate;
		}
		[CRepr]
		public struct ID3D12VideoProcessCommandList : ID3D12CommandList
		{
			public const new Guid IID = .(0xaeb2543a, 0x167f, 0x4682, 0xac, 0xc8, 0xd1, 0x59, 0xed, 0x4a, 0x62, 0x09);
			
			public function HRESULT(ID3D12VideoProcessCommandList *self) Close;
			public function HRESULT(ID3D12VideoProcessCommandList *self, ID3D12CommandAllocator* pAllocator) Reset;
			public function void(ID3D12VideoProcessCommandList *self) ClearState;
			public function void(ID3D12VideoProcessCommandList *self, uint32 NumBarriers, D3D12_RESOURCE_BARRIER* pBarriers) ResourceBarrier;
			public function void(ID3D12VideoProcessCommandList *self, ID3D12Resource* pResource, D3D12_DISCARD_REGION* pRegion) DiscardResource;
			public function void(ID3D12VideoProcessCommandList *self, ID3D12QueryHeap* pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) BeginQuery;
			public function void(ID3D12VideoProcessCommandList *self, ID3D12QueryHeap* pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) EndQuery;
			public function void(ID3D12VideoProcessCommandList *self, ID3D12QueryHeap* pQueryHeap, D3D12_QUERY_TYPE Type, uint32 StartIndex, uint32 NumQueries, ID3D12Resource* pDestinationBuffer, uint64 AlignedDestinationBufferOffset) ResolveQueryData;
			public function void(ID3D12VideoProcessCommandList *self, ID3D12Resource* pBuffer, uint64 AlignedBufferOffset, D3D12_PREDICATION_OP Operation) SetPredication;
			public function void(ID3D12VideoProcessCommandList *self, uint32 Metadata, void* pData, uint32 Size) SetMarker;
			public function void(ID3D12VideoProcessCommandList *self, uint32 Metadata, void* pData, uint32 Size) BeginEvent;
			public function void(ID3D12VideoProcessCommandList *self) EndEvent;
			public function void(ID3D12VideoProcessCommandList *self, ID3D12VideoProcessor* pVideoProcessor, D3D12_VIDEO_PROCESS_OUTPUT_STREAM_ARGUMENTS* pOutputArguments, uint32 NumInputStreams, D3D12_VIDEO_PROCESS_INPUT_STREAM_ARGUMENTS* pInputArguments) ProcessFrames;
			public function void(ID3D12VideoProcessCommandList *self, uint32 Count, D3D12_WRITEBUFFERIMMEDIATE_PARAMETER* pParams, D3D12_WRITEBUFFERIMMEDIATE_MODE* pModes) WriteBufferImmediate;
		}
		[CRepr]
		public struct ID3D12VideoDecodeCommandList1 : ID3D12VideoDecodeCommandList
		{
			public const new Guid IID = .(0xd52f011b, 0xb56e, 0x453c, 0xa0, 0x5a, 0xa7, 0xf3, 0x11, 0xc8, 0xf4, 0x72);
			
			public function void(ID3D12VideoDecodeCommandList1 *self, ID3D12VideoDecoder* pDecoder, D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS1* pOutputArguments, D3D12_VIDEO_DECODE_INPUT_STREAM_ARGUMENTS* pInputArguments) DecodeFrame1;
		}
		[CRepr]
		public struct ID3D12VideoProcessCommandList1 : ID3D12VideoProcessCommandList
		{
			public const new Guid IID = .(0x542c5c4d, 0x7596, 0x434f, 0x8c, 0x93, 0x4e, 0xfa, 0x67, 0x66, 0xf2, 0x67);
			
			public function void(ID3D12VideoProcessCommandList1 *self, ID3D12VideoProcessor* pVideoProcessor, D3D12_VIDEO_PROCESS_OUTPUT_STREAM_ARGUMENTS* pOutputArguments, uint32 NumInputStreams, D3D12_VIDEO_PROCESS_INPUT_STREAM_ARGUMENTS1* pInputArguments) ProcessFrames1;
		}
		[CRepr]
		public struct ID3D12VideoMotionEstimator : ID3D12Pageable
		{
			public const new Guid IID = .(0x33fdae0e, 0x098b, 0x428f, 0x87, 0xbb, 0x34, 0xb6, 0x95, 0xde, 0x08, 0xf8);
			
			public function D3D12_VIDEO_MOTION_ESTIMATOR_DESC(ID3D12VideoMotionEstimator *self) GetDesc;
			public function HRESULT(ID3D12VideoMotionEstimator *self, Guid* riid, void** ppProtectedSession) GetProtectedResourceSession;
		}
		[CRepr]
		public struct ID3D12VideoMotionVectorHeap : ID3D12Pageable
		{
			public const new Guid IID = .(0x5be17987, 0x743a, 0x4061, 0x83, 0x4b, 0x23, 0xd2, 0x2d, 0xae, 0xa5, 0x05);
			
			public function D3D12_VIDEO_MOTION_VECTOR_HEAP_DESC(ID3D12VideoMotionVectorHeap *self) GetDesc;
			public function HRESULT(ID3D12VideoMotionVectorHeap *self, Guid* riid, void** ppProtectedSession) GetProtectedResourceSession;
		}
		[CRepr]
		public struct ID3D12VideoDevice1 : ID3D12VideoDevice
		{
			public const new Guid IID = .(0x981611ad, 0xa144, 0x4c83, 0x98, 0x90, 0xf3, 0x0e, 0x26, 0xd6, 0x58, 0xab);
			
			public function HRESULT(ID3D12VideoDevice1 *self, D3D12_VIDEO_MOTION_ESTIMATOR_DESC* pDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, Guid* riid, void** ppVideoMotionEstimator) CreateVideoMotionEstimator;
			public function HRESULT(ID3D12VideoDevice1 *self, D3D12_VIDEO_MOTION_VECTOR_HEAP_DESC* pDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, Guid* riid, void** ppVideoMotionVectorHeap) CreateVideoMotionVectorHeap;
		}
		[CRepr]
		public struct ID3D12VideoEncodeCommandList : ID3D12CommandList
		{
			public const new Guid IID = .(0x8455293a, 0x0cbd, 0x4831, 0x9b, 0x39, 0xfb, 0xdb, 0xab, 0x72, 0x47, 0x23);
			
			public function HRESULT(ID3D12VideoEncodeCommandList *self) Close;
			public function HRESULT(ID3D12VideoEncodeCommandList *self, ID3D12CommandAllocator* pAllocator) Reset;
			public function void(ID3D12VideoEncodeCommandList *self) ClearState;
			public function void(ID3D12VideoEncodeCommandList *self, uint32 NumBarriers, D3D12_RESOURCE_BARRIER* pBarriers) ResourceBarrier;
			public function void(ID3D12VideoEncodeCommandList *self, ID3D12Resource* pResource, D3D12_DISCARD_REGION* pRegion) DiscardResource;
			public function void(ID3D12VideoEncodeCommandList *self, ID3D12QueryHeap* pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) BeginQuery;
			public function void(ID3D12VideoEncodeCommandList *self, ID3D12QueryHeap* pQueryHeap, D3D12_QUERY_TYPE Type, uint32 Index) EndQuery;
			public function void(ID3D12VideoEncodeCommandList *self, ID3D12QueryHeap* pQueryHeap, D3D12_QUERY_TYPE Type, uint32 StartIndex, uint32 NumQueries, ID3D12Resource* pDestinationBuffer, uint64 AlignedDestinationBufferOffset) ResolveQueryData;
			public function void(ID3D12VideoEncodeCommandList *self, ID3D12Resource* pBuffer, uint64 AlignedBufferOffset, D3D12_PREDICATION_OP Operation) SetPredication;
			public function void(ID3D12VideoEncodeCommandList *self, uint32 Metadata, void* pData, uint32 Size) SetMarker;
			public function void(ID3D12VideoEncodeCommandList *self, uint32 Metadata, void* pData, uint32 Size) BeginEvent;
			public function void(ID3D12VideoEncodeCommandList *self) EndEvent;
			public function void(ID3D12VideoEncodeCommandList *self, ID3D12VideoMotionEstimator* pMotionEstimator, D3D12_VIDEO_MOTION_ESTIMATOR_OUTPUT* pOutputArguments, D3D12_VIDEO_MOTION_ESTIMATOR_INPUT* pInputArguments) EstimateMotion;
			public function void(ID3D12VideoEncodeCommandList *self, D3D12_RESOLVE_VIDEO_MOTION_VECTOR_HEAP_OUTPUT* pOutputArguments, D3D12_RESOLVE_VIDEO_MOTION_VECTOR_HEAP_INPUT* pInputArguments) ResolveMotionVectorHeap;
			public function void(ID3D12VideoEncodeCommandList *self, uint32 Count, D3D12_WRITEBUFFERIMMEDIATE_PARAMETER* pParams, D3D12_WRITEBUFFERIMMEDIATE_MODE* pModes) WriteBufferImmediate;
			public function void(ID3D12VideoEncodeCommandList *self, ID3D12ProtectedResourceSession* pProtectedResourceSession) SetProtectedResourceSession;
		}
		[CRepr]
		public struct ID3D12VideoDecoder1 : ID3D12VideoDecoder
		{
			public const new Guid IID = .(0x79a2e5fb, 0xccd2, 0x469a, 0x9f, 0xde, 0x19, 0x5d, 0x10, 0x95, 0x1f, 0x7e);
			
			public function HRESULT(ID3D12VideoDecoder1 *self, Guid* riid, void** ppProtectedSession) GetProtectedResourceSession;
		}
		[CRepr]
		public struct ID3D12VideoDecoderHeap1 : ID3D12VideoDecoderHeap
		{
			public const new Guid IID = .(0xda1d98c5, 0x539f, 0x41b2, 0xbf, 0x6b, 0x11, 0x98, 0xa0, 0x3b, 0x6d, 0x26);
			
			public function HRESULT(ID3D12VideoDecoderHeap1 *self, Guid* riid, void** ppProtectedSession) GetProtectedResourceSession;
		}
		[CRepr]
		public struct ID3D12VideoProcessor1 : ID3D12VideoProcessor
		{
			public const new Guid IID = .(0xf3cfe615, 0x553f, 0x425c, 0x86, 0xd8, 0xee, 0x8c, 0x1b, 0x1f, 0xb0, 0x1c);
			
			public function HRESULT(ID3D12VideoProcessor1 *self, Guid* riid, void** ppProtectedSession) GetProtectedResourceSession;
		}
		[CRepr]
		public struct ID3D12VideoExtensionCommand : ID3D12Pageable
		{
			public const new Guid IID = .(0x554e41e8, 0xae8e, 0x4a8c, 0xb7, 0xd2, 0x5b, 0x4f, 0x27, 0x4a, 0x30, 0xe4);
			
			public function D3D12_VIDEO_EXTENSION_COMMAND_DESC(ID3D12VideoExtensionCommand *self) GetDesc;
			public function HRESULT(ID3D12VideoExtensionCommand *self, Guid* riid, void** ppProtectedSession) GetProtectedResourceSession;
		}
		[CRepr]
		public struct ID3D12VideoDevice2 : ID3D12VideoDevice1
		{
			public const new Guid IID = .(0xf019ac49, 0xf838, 0x4a95, 0x9b, 0x17, 0x57, 0x94, 0x37, 0xc8, 0xf5, 0x13);
			
			public function HRESULT(ID3D12VideoDevice2 *self, D3D12_VIDEO_DECODER_DESC* pDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, Guid* riid, void** ppVideoDecoder) CreateVideoDecoder1;
			public function HRESULT(ID3D12VideoDevice2 *self, D3D12_VIDEO_DECODER_HEAP_DESC* pVideoDecoderHeapDesc, ID3D12ProtectedResourceSession* pProtectedResourceSession, Guid* riid, void** ppVideoDecoderHeap) CreateVideoDecoderHeap1;
			public function HRESULT(ID3D12VideoDevice2 *self, uint32 NodeMask, D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC* pOutputStreamDesc, uint32 NumInputStreamDescs, D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC* pInputStreamDescs, ID3D12ProtectedResourceSession* pProtectedResourceSession, Guid* riid, void** ppVideoProcessor) CreateVideoProcessor1;
			public function HRESULT(ID3D12VideoDevice2 *self, D3D12_VIDEO_EXTENSION_COMMAND_DESC* pDesc, void* pCreationParameters, uint CreationParametersDataSizeInBytes, ID3D12ProtectedResourceSession* pProtectedResourceSession, Guid* riid, void** ppVideoExtensionCommand) CreateVideoExtensionCommand;
			public function HRESULT(ID3D12VideoDevice2 *self, ID3D12VideoExtensionCommand* pExtensionCommand, void* pExecutionParameters, uint ExecutionParametersSizeInBytes, void* pOutputData, uint OutputDataSizeInBytes) ExecuteExtensionCommand;
		}
		[CRepr]
		public struct ID3D12VideoDecodeCommandList2 : ID3D12VideoDecodeCommandList1
		{
			public const new Guid IID = .(0x6e120880, 0xc114, 0x4153, 0x80, 0x36, 0xd2, 0x47, 0x05, 0x1e, 0x17, 0x29);
			
			public function void(ID3D12VideoDecodeCommandList2 *self, ID3D12ProtectedResourceSession* pProtectedResourceSession) SetProtectedResourceSession;
			public function void(ID3D12VideoDecodeCommandList2 *self, ID3D12VideoExtensionCommand* pExtensionCommand, void* pInitializationParameters, uint InitializationParametersSizeInBytes) InitializeExtensionCommand;
			public function void(ID3D12VideoDecodeCommandList2 *self, ID3D12VideoExtensionCommand* pExtensionCommand, void* pExecutionParameters, uint ExecutionParametersSizeInBytes) ExecuteExtensionCommand;
		}
		[CRepr]
		public struct ID3D12VideoProcessCommandList2 : ID3D12VideoProcessCommandList1
		{
			public const new Guid IID = .(0xdb525ae4, 0x6ad6, 0x473c, 0xba, 0xa7, 0x59, 0xb2, 0xe3, 0x70, 0x82, 0xe4);
			
			public function void(ID3D12VideoProcessCommandList2 *self, ID3D12ProtectedResourceSession* pProtectedResourceSession) SetProtectedResourceSession;
			public function void(ID3D12VideoProcessCommandList2 *self, ID3D12VideoExtensionCommand* pExtensionCommand, void* pInitializationParameters, uint InitializationParametersSizeInBytes) InitializeExtensionCommand;
			public function void(ID3D12VideoProcessCommandList2 *self, ID3D12VideoExtensionCommand* pExtensionCommand, void* pExecutionParameters, uint ExecutionParametersSizeInBytes) ExecuteExtensionCommand;
		}
		[CRepr]
		public struct ID3D12VideoEncodeCommandList1 : ID3D12VideoEncodeCommandList
		{
			public const new Guid IID = .(0x94971eca, 0x2bdb, 0x4769, 0x88, 0xcf, 0x36, 0x75, 0xea, 0x75, 0x7e, 0xbc);
			
			public function void(ID3D12VideoEncodeCommandList1 *self, ID3D12VideoExtensionCommand* pExtensionCommand, void* pInitializationParameters, uint InitializationParametersSizeInBytes) InitializeExtensionCommand;
			public function void(ID3D12VideoEncodeCommandList1 *self, ID3D12VideoExtensionCommand* pExtensionCommand, void* pExecutionParameters, uint ExecutionParametersSizeInBytes) ExecuteExtensionCommand;
		}
		[CRepr]
		public struct ID3D12VideoEncoder : ID3D12Pageable
		{
			public const new Guid IID = .(0x2e0d212d, 0x8df9, 0x44a6, 0xa7, 0x70, 0xbb, 0x28, 0x9b, 0x18, 0x27, 0x37);
			
			public function uint32(ID3D12VideoEncoder *self) GetNodeMask;
			public function D3D12_VIDEO_ENCODER_FLAGS(ID3D12VideoEncoder *self) GetEncoderFlags;
			public function D3D12_VIDEO_ENCODER_CODEC(ID3D12VideoEncoder *self) GetCodec;
			public function HRESULT(ID3D12VideoEncoder *self, D3D12_VIDEO_ENCODER_PROFILE_DESC dstProfile) GetCodecProfile;
			public function HRESULT(ID3D12VideoEncoder *self, D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION dstCodecConfig) GetCodecConfiguration;
			public function DXGI_FORMAT(ID3D12VideoEncoder *self) GetInputFormat;
			public function D3D12_VIDEO_ENCODER_MOTION_ESTIMATION_PRECISION_MODE(ID3D12VideoEncoder *self) GetMaxMotionEstimationPrecision;
		}
		[CRepr]
		public struct ID3D12VideoEncoderHeap : ID3D12Pageable
		{
			public const new Guid IID = .(0x22b35d96, 0x876a, 0x44c0, 0xb2, 0x5e, 0xfb, 0x8c, 0x9c, 0x7f, 0x1c, 0x4a);
			
			public function uint32(ID3D12VideoEncoderHeap *self) GetNodeMask;
			public function D3D12_VIDEO_ENCODER_HEAP_FLAGS(ID3D12VideoEncoderHeap *self) GetEncoderHeapFlags;
			public function D3D12_VIDEO_ENCODER_CODEC(ID3D12VideoEncoderHeap *self) GetCodec;
			public function HRESULT(ID3D12VideoEncoderHeap *self, D3D12_VIDEO_ENCODER_PROFILE_DESC dstProfile) GetCodecProfile;
			public function HRESULT(ID3D12VideoEncoderHeap *self, D3D12_VIDEO_ENCODER_LEVEL_SETTING dstLevel) GetCodecLevel;
			public function uint32(ID3D12VideoEncoderHeap *self) GetResolutionListCount;
			public function HRESULT(ID3D12VideoEncoderHeap *self, uint32 ResolutionsListCount, D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC* pResolutionList) GetResolutionList;
		}
		[CRepr]
		public struct ID3D12VideoDevice3 : ID3D12VideoDevice2
		{
			public const new Guid IID = .(0x4243adb4, 0x3a32, 0x4666, 0x97, 0x3c, 0x0c, 0xcc, 0x56, 0x25, 0xdc, 0x44);
			
			public function HRESULT(ID3D12VideoDevice3 *self, D3D12_VIDEO_ENCODER_DESC* pDesc, Guid* riid, void** ppVideoEncoder) CreateVideoEncoder;
			public function HRESULT(ID3D12VideoDevice3 *self, D3D12_VIDEO_ENCODER_HEAP_DESC* pDesc, Guid* riid, void** ppVideoEncoderHeap) CreateVideoEncoderHeap;
		}
		[CRepr]
		public struct ID3D12VideoEncodeCommandList2 : ID3D12VideoEncodeCommandList1
		{
			public const new Guid IID = .(0x895491e2, 0xe701, 0x46a9, 0x9a, 0x1f, 0x8d, 0x34, 0x80, 0xed, 0x86, 0x7a);
			
			public function void(ID3D12VideoEncodeCommandList2 *self, ID3D12VideoEncoder* pEncoder, ID3D12VideoEncoderHeap* pHeap, D3D12_VIDEO_ENCODER_ENCODEFRAME_INPUT_ARGUMENTS* pInputArguments, D3D12_VIDEO_ENCODER_ENCODEFRAME_OUTPUT_ARGUMENTS* pOutputArguments) EncodeFrame;
			public function void(ID3D12VideoEncodeCommandList2 *self, D3D12_VIDEO_ENCODER_RESOLVE_METADATA_INPUT_ARGUMENTS* pInputArguments, D3D12_VIDEO_ENCODER_RESOLVE_METADATA_OUTPUT_ARGUMENTS* pOutputArguments) ResolveEncoderOutputMetadata;
		}
		[CRepr]
		public struct IWMValidate : IUnknown
		{
			public const new Guid IID = .(0xcee3def2, 0x3808, 0x414d, 0xbe, 0x66, 0xfa, 0xfd, 0x47, 0x22, 0x10, 0xbc);
			
			public function HRESULT(IWMValidate *self, Guid guidValidationID) SetIdentifier;
		}
		[CRepr]
		public struct IValidateBinding : IUnknown
		{
			public const new Guid IID = .(0x04a578b2, 0xe778, 0x422a, 0xa8, 0x05, 0xb3, 0xee, 0x54, 0xd9, 0x0b, 0xd9);
			
			public function HRESULT(IValidateBinding *self, Guid guidLicensorID, uint8* pbEphemeron, uint32 cbEphemeron, uint8** ppbBlobValidationID, uint32* pcbBlobSize) GetIdentifier;
		}
		[CRepr]
		public struct IWMVideoDecoderHurryup : IUnknown
		{
			public const new Guid IID = .(0x352bb3bd, 0x2d4d, 0x4323, 0x9e, 0x71, 0xdc, 0xdc, 0xfb, 0xd5, 0x3c, 0xa6);
			
			public function HRESULT(IWMVideoDecoderHurryup *self, int32 lHurryup) SetHurryup;
			public function HRESULT(IWMVideoDecoderHurryup *self, int32* plHurryup) GetHurryup;
		}
		[CRepr]
		public struct IWMVideoForceKeyFrame : IUnknown
		{
			public const new Guid IID = .(0x9f8496be, 0x5b9a, 0x41b9, 0xa9, 0xe8, 0xf2, 0x1c, 0xd8, 0x05, 0x96, 0xc2);
			
			public function HRESULT(IWMVideoForceKeyFrame *self) SetKeyFrame;
		}
		[CRepr]
		public struct IWMCodecStrings : IUnknown
		{
			public const new Guid IID = .(0xa7b2504b, 0xe58a, 0x47fb, 0x95, 0x8b, 0xca, 0xc7, 0x16, 0x5a, 0x05, 0x7d);
			
			public function HRESULT(IWMCodecStrings *self, DMO_MEDIA_TYPE* pmt, uint32 cchLength, char16* szName, uint32* pcchLength) GetName;
			public function HRESULT(IWMCodecStrings *self, DMO_MEDIA_TYPE* pmt, uint32 cchLength, char16* szDescription, uint32* pcchLength) GetDescription;
		}
		[CRepr]
		public struct IWMCodecProps : IUnknown
		{
			public const new Guid IID = .(0x2573e11a, 0xf01a, 0x4fdd, 0xa9, 0x8d, 0x63, 0xb8, 0xe0, 0xba, 0x95, 0x89);
			
			public function HRESULT(IWMCodecProps *self, DMO_MEDIA_TYPE* pmt, PWSTR pszName, WMT_PROP_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetFormatProp;
			public function HRESULT(IWMCodecProps *self, uint32 dwFormat, PWSTR pszName, WMT_PROP_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetCodecProp;
		}
		[CRepr]
		public struct IWMCodecLeakyBucket : IUnknown
		{
			public const new Guid IID = .(0xa81ba647, 0x6227, 0x43b7, 0xb2, 0x31, 0xc7, 0xb1, 0x51, 0x35, 0xdd, 0x7d);
			
			public function HRESULT(IWMCodecLeakyBucket *self, uint32 ulBufferSize) SetBufferSizeBits;
			public function HRESULT(IWMCodecLeakyBucket *self, uint32* pulBufferSize) GetBufferSizeBits;
			public function HRESULT(IWMCodecLeakyBucket *self, uint32 ulBufferFullness) SetBufferFullnessBits;
			public function HRESULT(IWMCodecLeakyBucket *self, uint32* pulBufferFullness) GetBufferFullnessBits;
		}
		[CRepr]
		public struct IWMCodecOutputTimestamp : IUnknown
		{
			public const new Guid IID = .(0xb72adf95, 0x7adc, 0x4a72, 0xbc, 0x05, 0x57, 0x7d, 0x8e, 0xa6, 0xbf, 0x68);
			
			public function HRESULT(IWMCodecOutputTimestamp *self, int64* prtTime) GetNextOutputTime;
		}
		[CRepr]
		public struct IWMVideoDecoderReconBuffer : IUnknown
		{
			public const new Guid IID = .(0x45bda2ac, 0x88e2, 0x4923, 0x98, 0xba, 0x39, 0x49, 0x08, 0x07, 0x11, 0xa3);
			
			public function HRESULT(IWMVideoDecoderReconBuffer *self, uint32* pdwSize) GetReconstructedVideoFrameSize;
			public function HRESULT(IWMVideoDecoderReconBuffer *self, IMediaBuffer* pBuf) GetReconstructedVideoFrame;
			public function HRESULT(IWMVideoDecoderReconBuffer *self, IMediaBuffer* pBuf) SetReconstructedVideoFrame;
		}
		[CRepr]
		public struct IWMCodecPrivateData : IUnknown
		{
			public const new Guid IID = .(0x73f0be8e, 0x57f7, 0x4f01, 0xaa, 0x66, 0x9f, 0x57, 0x34, 0x0c, 0xfe, 0x0e);
			
			public function HRESULT(IWMCodecPrivateData *self, DMO_MEDIA_TYPE* pmt) SetPartialOutputType;
			public function HRESULT(IWMCodecPrivateData *self, uint8* pbData, uint32* pcbData) GetPrivateData;
		}
		[CRepr]
		public struct IWMSampleExtensionSupport : IUnknown
		{
			public const new Guid IID = .(0x9bca9884, 0x0604, 0x4c2a, 0x87, 0xda, 0x79, 0x3f, 0xf4, 0xd5, 0x86, 0xc3);
			
			public function HRESULT(IWMSampleExtensionSupport *self, BOOL fUseExtensions) SetUseSampleExtensions;
		}
		[CRepr]
		public struct IWMResamplerProps : IUnknown
		{
			public const new Guid IID = .(0xe7e9984f, 0xf09f, 0x4da4, 0x90, 0x3f, 0x6e, 0x2e, 0x0e, 0xfe, 0x56, 0xb5);
			
			public function HRESULT(IWMResamplerProps *self, int32 lhalfFilterLen) SetHalfFilterLength;
			public function HRESULT(IWMResamplerProps *self, float* userChannelMtx) SetUserChannelMtx;
		}
		[CRepr]
		public struct IWMResizerProps : IUnknown
		{
			public const new Guid IID = .(0x57665d4c, 0x0414, 0x4faa, 0x90, 0x5b, 0x10, 0xe5, 0x46, 0xf8, 0x1c, 0x33);
			
			public function HRESULT(IWMResizerProps *self, int32 lquality) SetResizerQuality;
			public function HRESULT(IWMResizerProps *self, int32 lmode) SetInterlaceMode;
			public function HRESULT(IWMResizerProps *self, int32 lClipOriXSrc, int32 lClipOriYSrc, int32 lClipWidthSrc, int32 lClipHeightSrc) SetClipRegion;
			public function HRESULT(IWMResizerProps *self, int32 lClipOriXSrc, int32 lClipOriYSrc, int32 lClipWidthSrc, int32 lClipHeightSrc, int32 lClipOriXDst, int32 lClipOriYDst, int32 lClipWidthDst, int32 lClipHeightDst) SetFullCropRegion;
			public function HRESULT(IWMResizerProps *self, int32* lClipOriXSrc, int32* lClipOriYSrc, int32* lClipWidthSrc, int32* lClipHeightSrc, int32* lClipOriXDst, int32* lClipOriYDst, int32* lClipWidthDst, int32* lClipHeightDst) GetFullCropRegion;
		}
		[CRepr]
		public struct IWMColorLegalizerProps : IUnknown
		{
			public const new Guid IID = .(0x776c93b3, 0xb72d, 0x4508, 0xb6, 0xd0, 0x20, 0x87, 0x85, 0xf5, 0x53, 0xe7);
			
			public function HRESULT(IWMColorLegalizerProps *self, int32 lquality) SetColorLegalizerQuality;
		}
		[CRepr]
		public struct IWMInterlaceProps : IUnknown
		{
			public const new Guid IID = .(0x7b12e5d1, 0xbd22, 0x48ea, 0xbc, 0x06, 0x98, 0xe8, 0x93, 0x22, 0x1c, 0x89);
			
			public function HRESULT(IWMInterlaceProps *self, int32 iProcessType) SetProcessType;
			public function HRESULT(IWMInterlaceProps *self, int32 iInitPattern) SetInitInverseTeleCinePattern;
			public function HRESULT(IWMInterlaceProps *self) SetLastFrame;
		}
		[CRepr]
		public struct IWMFrameInterpProps : IUnknown
		{
			public const new Guid IID = .(0x4c06bb9b, 0x626c, 0x4614, 0x83, 0x29, 0xcc, 0x6a, 0x21, 0xb9, 0x3f, 0xa0);
			
			public function HRESULT(IWMFrameInterpProps *self, int32 lFrameRate, int32 lScale) SetFrameRateIn;
			public function HRESULT(IWMFrameInterpProps *self, int32 lFrameRate, int32 lScale) SetFrameRateOut;
			public function HRESULT(IWMFrameInterpProps *self, BOOL bFIEnabled) SetFrameInterpEnabled;
			public function HRESULT(IWMFrameInterpProps *self, int32 iComplexity) SetComplexityLevel;
		}
		[CRepr]
		public struct IWMColorConvProps : IUnknown
		{
			public const new Guid IID = .(0xe6a49e22, 0xc099, 0x421d, 0xaa, 0xd3, 0xc0, 0x61, 0xfb, 0x4a, 0xe8, 0x5b);
			
			public function HRESULT(IWMColorConvProps *self, int32 lMode) SetMode;
			public function HRESULT(IWMColorConvProps *self, int32 lSrcCropLeft, int32 lSrcCropTop, int32 lDstCropLeft, int32 lDstCropTop, int32 lCropWidth, int32 lCropHeight) SetFullCroppingParam;
		}
		[CRepr]
		public struct ITocEntry : IUnknown
		{
			public const new Guid IID = .(0xf22f5e06, 0x585c, 0x4def, 0x85, 0x23, 0x65, 0x55, 0xcf, 0xbc, 0x0c, 0xb3);
			
			public function HRESULT(ITocEntry *self, PWSTR pwszTitle) SetTitle;
			public function HRESULT(ITocEntry *self, uint16* pwTitleSize, char16* pwszTitle) GetTitle;
			public function HRESULT(ITocEntry *self, TOC_ENTRY_DESCRIPTOR* pDescriptor) SetDescriptor;
			public function HRESULT(ITocEntry *self, TOC_ENTRY_DESCRIPTOR* pDescriptor) GetDescriptor;
			public function HRESULT(ITocEntry *self, uint32 dwNumSubEntries, uint16* pwSubEntryIndices) SetSubEntries;
			public function HRESULT(ITocEntry *self, uint32* pdwNumSubEntries, uint16* pwSubEntryIndices) GetSubEntries;
			public function HRESULT(ITocEntry *self, uint32 dwDescriptionDataSize, uint8* pbtDescriptionData, Guid* pguidType) SetDescriptionData;
			public function HRESULT(ITocEntry *self, uint32* pdwDescriptionDataSize, uint8* pbtDescriptionData, Guid* pGuidType) GetDescriptionData;
		}
		[CRepr]
		public struct ITocEntryList : IUnknown
		{
			public const new Guid IID = .(0x3a8cccbd, 0x0efd, 0x43a3, 0xb8, 0x38, 0xf3, 0x8a, 0x55, 0x2b, 0xa2, 0x37);
			
			public function HRESULT(ITocEntryList *self, uint32* pdwEntryCount) GetEntryCount;
			public function HRESULT(ITocEntryList *self, uint32 dwEntryIndex, ITocEntry** ppEntry) GetEntryByIndex;
			public function HRESULT(ITocEntryList *self, ITocEntry* pEntry, uint32* pdwEntryIndex) AddEntry;
			public function HRESULT(ITocEntryList *self, uint32 dwEntryIndex, ITocEntry* pEntry) AddEntryByIndex;
			public function HRESULT(ITocEntryList *self, uint32 dwEntryIndex) RemoveEntryByIndex;
		}
		[CRepr]
		public struct IToc : IUnknown
		{
			public const new Guid IID = .(0xd6f05441, 0xa919, 0x423b, 0x91, 0xa0, 0x89, 0xd5, 0xb4, 0xa8, 0xab, 0x77);
			
			public function HRESULT(IToc *self, TOC_DESCRIPTOR* pDescriptor) SetDescriptor;
			public function HRESULT(IToc *self, TOC_DESCRIPTOR* pDescriptor) GetDescriptor;
			public function HRESULT(IToc *self, PWSTR pwszDescription) SetDescription;
			public function HRESULT(IToc *self, uint16* pwDescriptionSize, char16* pwszDescription) GetDescription;
			public function HRESULT(IToc *self, uint32 dwContextSize, uint8* pbtContext) SetContext;
			public function HRESULT(IToc *self, uint32* pdwContextSize, uint8* pbtContext) GetContext;
			public function HRESULT(IToc *self, uint16* pwCount) GetEntryListCount;
			public function HRESULT(IToc *self, uint16 wEntryListIndex, ITocEntryList** ppEntryList) GetEntryListByIndex;
			public function HRESULT(IToc *self, ITocEntryList* pEntryList, uint16* pwEntryListIndex) AddEntryList;
			public function HRESULT(IToc *self, uint16 wEntryListIndex, ITocEntryList* pEntryList) AddEntryListByIndex;
			public function HRESULT(IToc *self, uint16 wEntryListIndex) RemoveEntryListByIndex;
		}
		[CRepr]
		public struct ITocCollection : IUnknown
		{
			public const new Guid IID = .(0x23fee831, 0xae96, 0x42df, 0xb1, 0x70, 0x25, 0xa0, 0x48, 0x47, 0xa3, 0xca);
			
			public function HRESULT(ITocCollection *self, uint32* pdwEntryCount) GetEntryCount;
			public function HRESULT(ITocCollection *self, uint32 dwEntryIndex, IToc** ppToc) GetEntryByIndex;
			public function HRESULT(ITocCollection *self, IToc* pToc, uint32* pdwEntryIndex) AddEntry;
			public function HRESULT(ITocCollection *self, uint32 dwEntryIndex, IToc* pToc) AddEntryByIndex;
			public function HRESULT(ITocCollection *self, uint32 dwEntryIndex) RemoveEntryByIndex;
		}
		[CRepr]
		public struct ITocParser : IUnknown
		{
			public const new Guid IID = .(0xecfb9a55, 0x9298, 0x4f49, 0x88, 0x7f, 0x0b, 0x36, 0x20, 0x65, 0x99, 0xd2);
			
			public function HRESULT(ITocParser *self, PWSTR pwszFileName) Init;
			public function HRESULT(ITocParser *self, TOC_POS_TYPE enumTocPosType, uint32* pdwTocCount) GetTocCount;
			public function HRESULT(ITocParser *self, TOC_POS_TYPE enumTocPosType, uint32 dwTocIndex, IToc** ppToc) GetTocByIndex;
			public function HRESULT(ITocParser *self, TOC_POS_TYPE enumTocPosType, Guid guidTocType, ITocCollection** ppTocs) GetTocByType;
			public function HRESULT(ITocParser *self, TOC_POS_TYPE enumTocPosType, IToc* pToc, uint32* pdwTocIndex) AddToc;
			public function HRESULT(ITocParser *self, TOC_POS_TYPE enumTocPosType, uint32 dwTocIndex) RemoveTocByIndex;
			public function HRESULT(ITocParser *self, TOC_POS_TYPE enumTocPosType, Guid guidTocType) RemoveTocByType;
			public function HRESULT(ITocParser *self) Commit;
		}
		[CRepr]
		public struct IFileIo : IUnknown
		{
			public const new Guid IID = .(0x11993196, 0x1244, 0x4840, 0xab, 0x44, 0x48, 0x09, 0x75, 0xc4, 0xff, 0xe4);
			
			public function HRESULT(IFileIo *self, FILE_ACCESSMODE eAccessMode, FILE_OPENMODE eOpenMode, PWSTR pwszFileName) Initialize;
			public function HRESULT(IFileIo *self, uint64* pqwLength) GetLength;
			public function HRESULT(IFileIo *self, uint64 qwLength) SetLength;
			public function HRESULT(IFileIo *self, uint64* pqwPosition) GetCurrentPosition;
			public function HRESULT(IFileIo *self, uint64 qwPosition) SetCurrentPosition;
			public function HRESULT(IFileIo *self, BOOL* pbEndOfStream) IsEndOfStream;
			public function HRESULT(IFileIo *self, uint8* pbt, uint32 ul, uint32* pulRead) Read;
			public function HRESULT(IFileIo *self, uint8* pbt, uint32 ul, uint32* pulWritten) Write;
			public function HRESULT(IFileIo *self, SEEK_ORIGIN eSeekOrigin, uint64 qwSeekOffset, uint32 dwSeekFlags, uint64* pqwCurrentPosition) Seek;
			public function HRESULT(IFileIo *self) Close;
		}
		[CRepr]
		public struct IFileClient : IUnknown
		{
			public const new Guid IID = .(0xbfccd196, 0x1244, 0x4840, 0xab, 0x44, 0x48, 0x09, 0x75, 0xc4, 0xff, 0xe4);
			
			public function HRESULT(IFileClient *self, uint64* pqwSize) GetObjectDiskSize;
			public function HRESULT(IFileClient *self, IFileIo* pFio) Write;
			public function HRESULT(IFileClient *self, IFileIo* pFio) Read;
		}
		[CRepr]
		public struct IClusterDetector : IUnknown
		{
			public const new Guid IID = .(0x3f07f7b7, 0xc680, 0x41d9, 0x94, 0x23, 0x91, 0x51, 0x07, 0xec, 0x9f, 0xf9);
			
			public function HRESULT(IClusterDetector *self, uint16 wBaseEntryLevel, uint16 wClusterEntryLevel) Initialize;
			public function HRESULT(IClusterDetector *self, uint32 dwMaxNumClusters, float fMinClusterDuration, float fMaxClusterDuration, IToc* pSrcToc, IToc** ppDstToc) Detect;
		}
		[CRepr]
		public struct IDXVAHD_Device : IUnknown
		{
			public const new Guid IID = .(0x95f12dfd, 0xd77e, 0x49be, 0x81, 0x5f, 0x57, 0xd5, 0x79, 0x63, 0x4d, 0x6d);
			
			public function HRESULT(IDXVAHD_Device *self, uint32 Width, uint32 Height, D3DFORMAT Format, D3DPOOL Pool, uint32 Usage, DXVAHD_SURFACE_TYPE Type, uint32 NumSurfaces, IDirect3DSurface9** ppSurfaces, HANDLE* pSharedHandle) CreateVideoSurface;
			public function HRESULT(IDXVAHD_Device *self, DXVAHD_VPDEVCAPS* pCaps) GetVideoProcessorDeviceCaps;
			public function HRESULT(IDXVAHD_Device *self, uint32 Count, D3DFORMAT* pFormats) GetVideoProcessorOutputFormats;
			public function HRESULT(IDXVAHD_Device *self, uint32 Count, D3DFORMAT* pFormats) GetVideoProcessorInputFormats;
			public function HRESULT(IDXVAHD_Device *self, uint32 Count, DXVAHD_VPCAPS* pCaps) GetVideoProcessorCaps;
			public function HRESULT(IDXVAHD_Device *self, Guid* pVPGuid, uint32 Count, DXVAHD_CUSTOM_RATE_DATA* pRates) GetVideoProcessorCustomRates;
			public function HRESULT(IDXVAHD_Device *self, DXVAHD_FILTER Filter, DXVAHD_FILTER_RANGE_DATA* pRange) GetVideoProcessorFilterRange;
			public function HRESULT(IDXVAHD_Device *self, Guid* pVPGuid, IDXVAHD_VideoProcessor** ppVideoProcessor) CreateVideoProcessor;
		}
		[CRepr]
		public struct IDXVAHD_VideoProcessor : IUnknown
		{
			public const new Guid IID = .(0x95f4edf4, 0x6e03, 0x4cd7, 0xbe, 0x1b, 0x30, 0x75, 0xd6, 0x65, 0xaa, 0x52);
			
			public function HRESULT(IDXVAHD_VideoProcessor *self, DXVAHD_BLT_STATE State, uint32 DataSize, void* pData) SetVideoProcessBltState;
			public function HRESULT(IDXVAHD_VideoProcessor *self, DXVAHD_BLT_STATE State, uint32 DataSize, void* pData) GetVideoProcessBltState;
			public function HRESULT(IDXVAHD_VideoProcessor *self, uint32 StreamNumber, DXVAHD_STREAM_STATE State, uint32 DataSize, void* pData) SetVideoProcessStreamState;
			public function HRESULT(IDXVAHD_VideoProcessor *self, uint32 StreamNumber, DXVAHD_STREAM_STATE State, uint32 DataSize, void* pData) GetVideoProcessStreamState;
			public function HRESULT(IDXVAHD_VideoProcessor *self, IDirect3DSurface9* pOutputSurface, uint32 OutputFrame, uint32 StreamCount, DXVAHD_STREAM_DATA* pStreams) VideoProcessBltHD;
		}
		[CRepr]
		public struct IDirect3DDeviceManager9 : IUnknown
		{
			public const new Guid IID = .(0xa0cade0f, 0x06d5, 0x4cf4, 0xa1, 0xc7, 0xf3, 0xcd, 0xd7, 0x25, 0xaa, 0x75);
			
			public function HRESULT(IDirect3DDeviceManager9 *self, IDirect3DDevice9* pDevice, uint32 resetToken) ResetDevice;
			public function HRESULT(IDirect3DDeviceManager9 *self, HANDLE* phDevice) OpenDeviceHandle;
			public function HRESULT(IDirect3DDeviceManager9 *self, HANDLE hDevice) CloseDeviceHandle;
			public function HRESULT(IDirect3DDeviceManager9 *self, HANDLE hDevice) TestDevice;
			public function HRESULT(IDirect3DDeviceManager9 *self, HANDLE hDevice, IDirect3DDevice9** ppDevice, BOOL fBlock) LockDevice;
			public function HRESULT(IDirect3DDeviceManager9 *self, HANDLE hDevice, BOOL fSaveState) UnlockDevice;
			public function HRESULT(IDirect3DDeviceManager9 *self, HANDLE hDevice, Guid* riid, void** ppService) GetVideoService;
		}
		[CRepr]
		public struct IDirectXVideoAccelerationService : IUnknown
		{
			public const new Guid IID = .(0xfc51a550, 0xd5e7, 0x11d9, 0xaf, 0x55, 0x00, 0x05, 0x4e, 0x43, 0xff, 0x02);
			
			public function HRESULT(IDirectXVideoAccelerationService *self, uint32 Width, uint32 Height, uint32 BackBuffers, D3DFORMAT Format, D3DPOOL Pool, uint32 Usage, DXVA2_VideoRenderTargetType DxvaType, IDirect3DSurface9** ppSurface, HANDLE* pSharedHandle) CreateSurface;
		}
		[CRepr]
		public struct IDirectXVideoDecoderService : IDirectXVideoAccelerationService
		{
			public const new Guid IID = .(0xfc51a551, 0xd5e7, 0x11d9, 0xaf, 0x55, 0x00, 0x05, 0x4e, 0x43, 0xff, 0x02);
			
			public function HRESULT(IDirectXVideoDecoderService *self, uint32* pCount, Guid** pGuids) GetDecoderDeviceGuids;
			public function HRESULT(IDirectXVideoDecoderService *self, Guid* Guid, uint32* pCount, D3DFORMAT** pFormats) GetDecoderRenderTargets;
			public function HRESULT(IDirectXVideoDecoderService *self, Guid* Guid, DXVA2_VideoDesc* pVideoDesc, void* pReserved, uint32* pCount, DXVA2_ConfigPictureDecode** ppConfigs) GetDecoderConfigurations;
			public function HRESULT(IDirectXVideoDecoderService *self, Guid* Guid, DXVA2_VideoDesc* pVideoDesc, DXVA2_ConfigPictureDecode* pConfig, IDirect3DSurface9** ppDecoderRenderTargets, uint32 NumRenderTargets, IDirectXVideoDecoder** ppDecode) CreateVideoDecoder;
		}
		[CRepr]
		public struct IDirectXVideoProcessorService : IDirectXVideoAccelerationService
		{
			public const new Guid IID = .(0xfc51a552, 0xd5e7, 0x11d9, 0xaf, 0x55, 0x00, 0x05, 0x4e, 0x43, 0xff, 0x02);
			
			public function HRESULT(IDirectXVideoProcessorService *self, void* pCallbacks) RegisterVideoProcessorSoftwareDevice;
			public function HRESULT(IDirectXVideoProcessorService *self, DXVA2_VideoDesc* pVideoDesc, uint32* pCount, Guid** pGuids) GetVideoProcessorDeviceGuids;
			public function HRESULT(IDirectXVideoProcessorService *self, Guid* VideoProcDeviceGuid, DXVA2_VideoDesc* pVideoDesc, uint32* pCount, D3DFORMAT** pFormats) GetVideoProcessorRenderTargets;
			public function HRESULT(IDirectXVideoProcessorService *self, Guid* VideoProcDeviceGuid, DXVA2_VideoDesc* pVideoDesc, D3DFORMAT RenderTargetFormat, uint32* pCount, D3DFORMAT** pFormats) GetVideoProcessorSubStreamFormats;
			public function HRESULT(IDirectXVideoProcessorService *self, Guid* VideoProcDeviceGuid, DXVA2_VideoDesc* pVideoDesc, D3DFORMAT RenderTargetFormat, DXVA2_VideoProcessorCaps* pCaps) GetVideoProcessorCaps;
			public function HRESULT(IDirectXVideoProcessorService *self, Guid* VideoProcDeviceGuid, DXVA2_VideoDesc* pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 ProcAmpCap, DXVA2_ValueRange* pRange) GetProcAmpRange;
			public function HRESULT(IDirectXVideoProcessorService *self, Guid* VideoProcDeviceGuid, DXVA2_VideoDesc* pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 FilterSetting, DXVA2_ValueRange* pRange) GetFilterPropertyRange;
			public function HRESULT(IDirectXVideoProcessorService *self, Guid* VideoProcDeviceGuid, DXVA2_VideoDesc* pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 MaxNumSubStreams, IDirectXVideoProcessor** ppVidProcess) CreateVideoProcessor;
		}
		[CRepr]
		public struct IDirectXVideoDecoder : IUnknown
		{
			public const new Guid IID = .(0xf2b0810a, 0xfd00, 0x43c9, 0x91, 0x8c, 0xdf, 0x94, 0xe2, 0xd8, 0xef, 0x7d);
			
			public function HRESULT(IDirectXVideoDecoder *self, IDirectXVideoDecoderService** ppService) GetVideoDecoderService;
			public function HRESULT(IDirectXVideoDecoder *self, Guid* pDeviceGuid, DXVA2_VideoDesc* pVideoDesc, DXVA2_ConfigPictureDecode* pConfig, IDirect3DSurface9*** pDecoderRenderTargets, uint32* pNumSurfaces) GetCreationParameters;
			public function HRESULT(IDirectXVideoDecoder *self, DXVA2_BufferfType BufferType, void** ppBuffer, uint32* pBufferSize) GetBuffer;
			public function HRESULT(IDirectXVideoDecoder *self, uint32 BufferType) ReleaseBuffer;
			public function HRESULT(IDirectXVideoDecoder *self, IDirect3DSurface9* pRenderTarget, void* pvPVPData) BeginFrame;
			public function HRESULT(IDirectXVideoDecoder *self, HANDLE* pHandleComplete) EndFrame;
			public function HRESULT(IDirectXVideoDecoder *self, DXVA2_DecodeExecuteParams* pExecuteParams) Execute;
		}
		[CRepr]
		public struct IDirectXVideoProcessor : IUnknown
		{
			public const new Guid IID = .(0x8c3a39f0, 0x916e, 0x4690, 0x80, 0x4f, 0x4c, 0x80, 0x01, 0x35, 0x5d, 0x25);
			
			public function HRESULT(IDirectXVideoProcessor *self, IDirectXVideoProcessorService** ppService) GetVideoProcessorService;
			public function HRESULT(IDirectXVideoProcessor *self, Guid* pDeviceGuid, DXVA2_VideoDesc* pVideoDesc, D3DFORMAT* pRenderTargetFormat, uint32* pMaxNumSubStreams) GetCreationParameters;
			public function HRESULT(IDirectXVideoProcessor *self, DXVA2_VideoProcessorCaps* pCaps) GetVideoProcessorCaps;
			public function HRESULT(IDirectXVideoProcessor *self, uint32 ProcAmpCap, DXVA2_ValueRange* pRange) GetProcAmpRange;
			public function HRESULT(IDirectXVideoProcessor *self, uint32 FilterSetting, DXVA2_ValueRange* pRange) GetFilterPropertyRange;
			public function HRESULT(IDirectXVideoProcessor *self, IDirect3DSurface9* pRenderTarget, DXVA2_VideoProcessBltParams* pBltParams, DXVA2_VideoSample* pSamples, uint32 NumSamples, HANDLE* pHandleComplete) VideoProcessBlt;
		}
		[CRepr]
		public struct IDirectXVideoMemoryConfiguration : IUnknown
		{
			public const new Guid IID = .(0xb7f916dd, 0xdb3b, 0x49c1, 0x84, 0xd7, 0xe4, 0x5e, 0xf9, 0x9e, 0xc7, 0x26);
			
			public function HRESULT(IDirectXVideoMemoryConfiguration *self, uint32 dwTypeIndex, DXVA2_SurfaceType* pdwType) GetAvailableSurfaceTypeByIndex;
			public function HRESULT(IDirectXVideoMemoryConfiguration *self, DXVA2_SurfaceType dwType) SetSurfaceType;
		}
		[CRepr]
		public struct IOPMVideoOutput : IUnknown
		{
			public const new Guid IID = .(0x0a15159d, 0x41c7, 0x4456, 0x93, 0xe1, 0x28, 0x4c, 0xd6, 0x1d, 0x4e, 0x8d);
			
			public function HRESULT(IOPMVideoOutput *self, OPM_RANDOM_NUMBER* prnRandomNumber, uint8** ppbCertificate, uint32* pulCertificateLength) StartInitialization;
			public function HRESULT(IOPMVideoOutput *self, OPM_ENCRYPTED_INITIALIZATION_PARAMETERS* pParameters) FinishInitialization;
			public function HRESULT(IOPMVideoOutput *self, OPM_GET_INFO_PARAMETERS* pParameters, OPM_REQUESTED_INFORMATION* pRequestedInformation) GetInformation;
			public function HRESULT(IOPMVideoOutput *self, OPM_COPP_COMPATIBLE_GET_INFO_PARAMETERS* pParameters, OPM_REQUESTED_INFORMATION* pRequestedInformation) COPPCompatibleGetInformation;
			public function HRESULT(IOPMVideoOutput *self, OPM_CONFIGURE_PARAMETERS* pParameters, uint32 ulAdditionalParametersSize, uint8* pbAdditionalParameters) Configure;
		}
		[CRepr]
		public struct IMFAttributes : IUnknown
		{
			public const new Guid IID = .(0x2cd2d921, 0xc447, 0x44a7, 0xa1, 0x3c, 0x4a, 0xda, 0xbf, 0xc2, 0x47, 0xe3);
			
			public function HRESULT(IMFAttributes *self, Guid* guidKey, PROPVARIANT* pValue) GetItem;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, MF_ATTRIBUTE_TYPE* pType) GetItemType;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, PROPVARIANT* Value, BOOL* pbResult) CompareItem;
			public function HRESULT(IMFAttributes *self, IMFAttributes* pTheirs, MF_ATTRIBUTES_MATCH_TYPE MatchType, BOOL* pbResult) Compare;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, uint32* punValue) GetUINT32;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, uint64* punValue) GetUINT64;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, double* pfValue) GetDouble;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, Guid* pguidValue) GetGUID;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, uint32* pcchLength) GetStringLength;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, char16* pwszValue, uint32 cchBufSize, uint32* pcchLength) GetString;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, PWSTR* ppwszValue, uint32* pcchLength) GetAllocatedString;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, uint32* pcbBlobSize) GetBlobSize;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, uint8* pBuf, uint32 cbBufSize, uint32* pcbBlobSize) GetBlob;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, uint8** ppBuf, uint32* pcbSize) GetAllocatedBlob;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, Guid* riid, void** ppv) GetUnknown;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, PROPVARIANT* Value) SetItem;
			public function HRESULT(IMFAttributes *self, Guid* guidKey) DeleteItem;
			public function HRESULT(IMFAttributes *self) DeleteAllItems;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, uint32 unValue) SetUINT32;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, uint64 unValue) SetUINT64;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, double fValue) SetDouble;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, Guid* guidValue) SetGUID;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, PWSTR wszValue) SetString;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, uint8* pBuf, uint32 cbBufSize) SetBlob;
			public function HRESULT(IMFAttributes *self, Guid* guidKey, IUnknown* pUnknown) SetUnknown;
			public function HRESULT(IMFAttributes *self) LockStore;
			public function HRESULT(IMFAttributes *self) UnlockStore;
			public function HRESULT(IMFAttributes *self, uint32* pcItems) GetCount;
			public function HRESULT(IMFAttributes *self, uint32 unIndex, Guid* pguidKey, PROPVARIANT* pValue) GetItemByIndex;
			public function HRESULT(IMFAttributes *self, IMFAttributes* pDest) CopyAllItems;
		}
		[CRepr]
		public struct IMFMediaBuffer : IUnknown
		{
			public const new Guid IID = .(0x045fa593, 0x8799, 0x42b8, 0xbc, 0x8d, 0x89, 0x68, 0xc6, 0x45, 0x35, 0x07);
			
			public function HRESULT(IMFMediaBuffer *self, uint8** ppbBuffer, uint32* pcbMaxLength, uint32* pcbCurrentLength) Lock;
			public function HRESULT(IMFMediaBuffer *self) Unlock;
			public function HRESULT(IMFMediaBuffer *self, uint32* pcbCurrentLength) GetCurrentLength;
			public function HRESULT(IMFMediaBuffer *self, uint32 cbCurrentLength) SetCurrentLength;
			public function HRESULT(IMFMediaBuffer *self, uint32* pcbMaxLength) GetMaxLength;
		}
		[CRepr]
		public struct IMFSample : IMFAttributes
		{
			public const new Guid IID = .(0xc40a00f2, 0xb93a, 0x4d80, 0xae, 0x8c, 0x5a, 0x1c, 0x63, 0x4f, 0x58, 0xe4);
			
			public function HRESULT(IMFSample *self, uint32* pdwSampleFlags) GetSampleFlags;
			public function HRESULT(IMFSample *self, uint32 dwSampleFlags) SetSampleFlags;
			public function HRESULT(IMFSample *self, int64* phnsSampleTime) GetSampleTime;
			public function HRESULT(IMFSample *self, int64 hnsSampleTime) SetSampleTime;
			public function HRESULT(IMFSample *self, int64* phnsSampleDuration) GetSampleDuration;
			public function HRESULT(IMFSample *self, int64 hnsSampleDuration) SetSampleDuration;
			public function HRESULT(IMFSample *self, uint32* pdwBufferCount) GetBufferCount;
			public function HRESULT(IMFSample *self, uint32 dwIndex, IMFMediaBuffer** ppBuffer) GetBufferByIndex;
			public function HRESULT(IMFSample *self, IMFMediaBuffer** ppBuffer) ConvertToContiguousBuffer;
			public function HRESULT(IMFSample *self, IMFMediaBuffer* pBuffer) AddBuffer;
			public function HRESULT(IMFSample *self, uint32 dwIndex) RemoveBufferByIndex;
			public function HRESULT(IMFSample *self) RemoveAllBuffers;
			public function HRESULT(IMFSample *self, uint32* pcbTotalLength) GetTotalLength;
			public function HRESULT(IMFSample *self, IMFMediaBuffer* pBuffer) CopyToBuffer;
		}
		[CRepr]
		public struct IMF2DBuffer : IUnknown
		{
			public const new Guid IID = .(0x7dc9d5f9, 0x9ed9, 0x44ec, 0x9b, 0xbf, 0x06, 0x00, 0xbb, 0x58, 0x9f, 0xbb);
			
			public function HRESULT(IMF2DBuffer *self, uint8** ppbScanline0, int32* plPitch) Lock2D;
			public function HRESULT(IMF2DBuffer *self) Unlock2D;
			public function HRESULT(IMF2DBuffer *self, uint8** pbScanline0, int32* plPitch) GetScanline0AndPitch;
			public function HRESULT(IMF2DBuffer *self, BOOL* pfIsContiguous) IsContiguousFormat;
			public function HRESULT(IMF2DBuffer *self, uint32* pcbLength) GetContiguousLength;
			public function HRESULT(IMF2DBuffer *self, uint8* pbDestBuffer, uint32 cbDestBuffer) ContiguousCopyTo;
			public function HRESULT(IMF2DBuffer *self, uint8* pbSrcBuffer, uint32 cbSrcBuffer) ContiguousCopyFrom;
		}
		[CRepr]
		public struct IMF2DBuffer2 : IMF2DBuffer
		{
			public const new Guid IID = .(0x33ae5ea6, 0x4316, 0x436f, 0x8d, 0xdd, 0xd7, 0x3d, 0x22, 0xf8, 0x29, 0xec);
			
			public function HRESULT(IMF2DBuffer2 *self, MF2DBuffer_LockFlags lockFlags, uint8** ppbScanline0, int32* plPitch, uint8** ppbBufferStart, uint32* pcbBufferLength) Lock2DSize;
			public function HRESULT(IMF2DBuffer2 *self, IMF2DBuffer2* pDestBuffer) Copy2DTo;
		}
		[CRepr]
		public struct IMFDXGIBuffer : IUnknown
		{
			public const new Guid IID = .(0xe7174cfa, 0x1c9e, 0x48b1, 0x88, 0x66, 0x62, 0x62, 0x26, 0xbf, 0xc2, 0x58);
			
			public function HRESULT(IMFDXGIBuffer *self, Guid* riid, void** ppvObject) GetResource;
			public function HRESULT(IMFDXGIBuffer *self, uint32* puSubresource) GetSubresourceIndex;
			public function HRESULT(IMFDXGIBuffer *self, Guid* guid, Guid* riid, void** ppvObject) GetUnknown;
			public function HRESULT(IMFDXGIBuffer *self, Guid* guid, IUnknown* pUnkData) SetUnknown;
		}
		[CRepr]
		public struct IMFMediaType : IMFAttributes
		{
			public const new Guid IID = .(0x44ae0fa8, 0xea31, 0x4109, 0x8d, 0x2e, 0x4c, 0xae, 0x49, 0x97, 0xc5, 0x55);
			
			public function HRESULT(IMFMediaType *self, Guid* pguidMajorType) GetMajorType;
			public function HRESULT(IMFMediaType *self, BOOL* pfCompressed) IsCompressedFormat;
			public function HRESULT(IMFMediaType *self, IMFMediaType* pIMediaType, uint32* pdwFlags) IsEqual;
			public function HRESULT(IMFMediaType *self, Guid guidRepresentation, void** ppvRepresentation) GetRepresentation;
			public function HRESULT(IMFMediaType *self, Guid guidRepresentation, void* pvRepresentation) FreeRepresentation;
		}
		[CRepr]
		public struct IMFAudioMediaType : IMFMediaType
		{
			public const new Guid IID = .(0x26a0adc3, 0xce26, 0x4672, 0x93, 0x04, 0x69, 0x55, 0x2e, 0xdd, 0x3f, 0xaf);
			
			public function WAVEFORMATEX*(IMFAudioMediaType *self) GetAudioFormat;
		}
		[CRepr]
		public struct IMFVideoMediaType : IMFMediaType
		{
			public const new Guid IID = .(0xb99f381f, 0xa8f9, 0x47a2, 0xa5, 0xaf, 0xca, 0x3a, 0x22, 0x5a, 0x38, 0x90);
			
			public function MFVIDEOFORMAT*(IMFVideoMediaType *self) GetVideoFormat;
			public function HRESULT(IMFVideoMediaType *self, Guid guidRepresentation, void** ppvRepresentation, int32 lStride) GetVideoRepresentation;
		}
		[CRepr]
		public struct IMFAsyncResult : IUnknown
		{
			public const new Guid IID = .(0xac6b7889, 0x0740, 0x4d51, 0x86, 0x19, 0x90, 0x59, 0x94, 0xa5, 0x5c, 0xc6);
			
			public function HRESULT(IMFAsyncResult *self, IUnknown** ppunkState) GetState;
			public function HRESULT(IMFAsyncResult *self) GetStatus;
			public function HRESULT(IMFAsyncResult *self, HRESULT hrStatus) SetStatus;
			public function HRESULT(IMFAsyncResult *self, IUnknown** ppObject) GetObject;
			public function IUnknown*(IMFAsyncResult *self) GetStateNoAddRef;
		}
		[CRepr]
		public struct IMFAsyncCallback : IUnknown
		{
			public const new Guid IID = .(0xa27003cf, 0x2354, 0x4f2a, 0x8d, 0x6a, 0xab, 0x7c, 0xff, 0x15, 0x43, 0x7e);
			
			public function HRESULT(IMFAsyncCallback *self, uint32* pdwFlags, uint32* pdwQueue) GetParameters;
			public function HRESULT(IMFAsyncCallback *self, IMFAsyncResult* pAsyncResult) Invoke;
		}
		[CRepr]
		public struct IMFAsyncCallbackLogging : IMFAsyncCallback
		{
			public const new Guid IID = .(0xc7a4dca1, 0xf5f0, 0x47b6, 0xb9, 0x2b, 0xbf, 0x01, 0x06, 0xd2, 0x57, 0x91);
			
			public function void*(IMFAsyncCallbackLogging *self) GetObjectPointer;
			public function uint32(IMFAsyncCallbackLogging *self) GetObjectTag;
		}
		[CRepr]
		public struct IMFMediaEvent : IMFAttributes
		{
			public const new Guid IID = .(0xdf598932, 0xf10c, 0x4e39, 0xbb, 0xa2, 0xc3, 0x08, 0xf1, 0x01, 0xda, 0xa3);
			
			public function HRESULT(IMFMediaEvent *self, uint32* pmet) GetType;
			public function HRESULT(IMFMediaEvent *self, Guid* pguidExtendedType) GetExtendedType;
			public function HRESULT(IMFMediaEvent *self, HRESULT* phrStatus) GetStatus;
			public function HRESULT(IMFMediaEvent *self, PROPVARIANT* pvValue) GetValue;
		}
		[CRepr]
		public struct IMFMediaEventGenerator : IUnknown
		{
			public const new Guid IID = .(0x2cd0bd52, 0xbcd5, 0x4b89, 0xb6, 0x2c, 0xea, 0xdc, 0x0c, 0x03, 0x1e, 0x7d);
			
			public function HRESULT(IMFMediaEventGenerator *self, MEDIA_EVENT_GENERATOR_GET_EVENT_FLAGS dwFlags, IMFMediaEvent** ppEvent) GetEvent;
			public function HRESULT(IMFMediaEventGenerator *self, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginGetEvent;
			public function HRESULT(IMFMediaEventGenerator *self, IMFAsyncResult* pResult, IMFMediaEvent** ppEvent) EndGetEvent;
			public function HRESULT(IMFMediaEventGenerator *self, uint32 met, Guid* guidExtendedType, HRESULT hrStatus, PROPVARIANT* pvValue) QueueEvent;
		}
		[CRepr]
		public struct IMFRemoteAsyncCallback : IUnknown
		{
			public const new Guid IID = .(0xa27003d0, 0x2354, 0x4f2a, 0x8d, 0x6a, 0xab, 0x7c, 0xff, 0x15, 0x43, 0x7e);
			
			public function HRESULT(IMFRemoteAsyncCallback *self, HRESULT hr, IUnknown* pRemoteResult) Invoke;
		}
		[CRepr]
		public struct IMFByteStream : IUnknown
		{
			public const new Guid IID = .(0xad4c1b00, 0x4bf7, 0x422f, 0x91, 0x75, 0x75, 0x66, 0x93, 0xd9, 0x13, 0x0d);
			
			public function HRESULT(IMFByteStream *self, uint32* pdwCapabilities) GetCapabilities;
			public function HRESULT(IMFByteStream *self, uint64* pqwLength) GetLength;
			public function HRESULT(IMFByteStream *self, uint64 qwLength) SetLength;
			public function HRESULT(IMFByteStream *self, uint64* pqwPosition) GetCurrentPosition;
			public function HRESULT(IMFByteStream *self, uint64 qwPosition) SetCurrentPosition;
			public function HRESULT(IMFByteStream *self, BOOL* pfEndOfStream) IsEndOfStream;
			public function HRESULT(IMFByteStream *self, uint8* pb, uint32 cb, uint32* pcbRead) Read;
			public function HRESULT(IMFByteStream *self, uint8* pb, uint32 cb, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginRead;
			public function HRESULT(IMFByteStream *self, IMFAsyncResult* pResult, uint32* pcbRead) EndRead;
			public function HRESULT(IMFByteStream *self, uint8* pb, uint32 cb, uint32* pcbWritten) Write;
			public function HRESULT(IMFByteStream *self, uint8* pb, uint32 cb, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginWrite;
			public function HRESULT(IMFByteStream *self, IMFAsyncResult* pResult, uint32* pcbWritten) EndWrite;
			public function HRESULT(IMFByteStream *self, MFBYTESTREAM_SEEK_ORIGIN SeekOrigin, int64 llSeekOffset, uint32 dwSeekFlags, uint64* pqwCurrentPosition) Seek;
			public function HRESULT(IMFByteStream *self) Flush;
			public function HRESULT(IMFByteStream *self) Close;
		}
		[CRepr]
		public struct IMFByteStreamProxyClassFactory : IUnknown
		{
			public const new Guid IID = .(0xa6b43f84, 0x5c0a, 0x42e8, 0xa4, 0x4d, 0xb1, 0x85, 0x7a, 0x76, 0x99, 0x2f);
			
			public function HRESULT(IMFByteStreamProxyClassFactory *self, IMFByteStream* pByteStream, IMFAttributes* pAttributes, Guid* riid, void** ppvObject) CreateByteStreamProxy;
		}
		[CRepr]
		public struct IMFSampleOutputStream : IUnknown
		{
			public const new Guid IID = .(0x8feed468, 0x6f7e, 0x440d, 0x86, 0x9a, 0x49, 0xbd, 0xd2, 0x83, 0xad, 0x0d);
			
			public function HRESULT(IMFSampleOutputStream *self, IMFSample* pSample, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginWriteSample;
			public function HRESULT(IMFSampleOutputStream *self, IMFAsyncResult* pResult) EndWriteSample;
			public function HRESULT(IMFSampleOutputStream *self) Close;
		}
		[CRepr]
		public struct IMFCollection : IUnknown
		{
			public const new Guid IID = .(0x5bc8a76b, 0x869a, 0x46a3, 0x9b, 0x03, 0xfa, 0x21, 0x8a, 0x66, 0xae, 0xbe);
			
			public function HRESULT(IMFCollection *self, uint32* pcElements) GetElementCount;
			public function HRESULT(IMFCollection *self, uint32 dwElementIndex, IUnknown** ppUnkElement) GetElement;
			public function HRESULT(IMFCollection *self, IUnknown* pUnkElement) AddElement;
			public function HRESULT(IMFCollection *self, uint32 dwElementIndex, IUnknown** ppUnkElement) RemoveElement;
			public function HRESULT(IMFCollection *self, uint32 dwIndex, IUnknown* pUnknown) InsertElementAt;
			public function HRESULT(IMFCollection *self) RemoveAllElements;
		}
		[CRepr]
		public struct IMFMediaEventQueue : IUnknown
		{
			public const new Guid IID = .(0x36f846fc, 0x2256, 0x48b6, 0xb5, 0x8e, 0xe2, 0xb6, 0x38, 0x31, 0x65, 0x81);
			
			public function HRESULT(IMFMediaEventQueue *self, uint32 dwFlags, IMFMediaEvent** ppEvent) GetEvent;
			public function HRESULT(IMFMediaEventQueue *self, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginGetEvent;
			public function HRESULT(IMFMediaEventQueue *self, IMFAsyncResult* pResult, IMFMediaEvent** ppEvent) EndGetEvent;
			public function HRESULT(IMFMediaEventQueue *self, IMFMediaEvent* pEvent) QueueEvent;
			public function HRESULT(IMFMediaEventQueue *self, uint32 met, Guid* guidExtendedType, HRESULT hrStatus, PROPVARIANT* pvValue) QueueEventParamVar;
			public function HRESULT(IMFMediaEventQueue *self, uint32 met, Guid* guidExtendedType, HRESULT hrStatus, IUnknown* pUnk) QueueEventParamUnk;
			public function HRESULT(IMFMediaEventQueue *self) Shutdown;
		}
		[CRepr]
		public struct IMFActivate : IMFAttributes
		{
			public const new Guid IID = .(0x7fee9e9a, 0x4a89, 0x47a6, 0x89, 0x9c, 0xb6, 0xa5, 0x3a, 0x70, 0xfb, 0x67);
			
			public function HRESULT(IMFActivate *self, Guid* riid, void** ppv) ActivateObject;
			public function HRESULT(IMFActivate *self) ShutdownObject;
			public function HRESULT(IMFActivate *self) DetachObject;
		}
		[CRepr]
		public struct IMFPluginControl : IUnknown
		{
			public const new Guid IID = .(0x5c6c44bf, 0x1db6, 0x435b, 0x92, 0x49, 0xe8, 0xcd, 0x10, 0xfd, 0xec, 0x96);
			
			public function HRESULT(IMFPluginControl *self, uint32 pluginType, PWSTR selector, Guid* clsid) GetPreferredClsid;
			public function HRESULT(IMFPluginControl *self, uint32 pluginType, uint32 index, PWSTR* selector, Guid* clsid) GetPreferredClsidByIndex;
			public function HRESULT(IMFPluginControl *self, uint32 pluginType, PWSTR selector, Guid* clsid) SetPreferredClsid;
			public function HRESULT(IMFPluginControl *self, uint32 pluginType, Guid* clsid) IsDisabled;
			public function HRESULT(IMFPluginControl *self, uint32 pluginType, uint32 index, Guid* clsid) GetDisabledByIndex;
			public function HRESULT(IMFPluginControl *self, uint32 pluginType, Guid* clsid, BOOL disabled) SetDisabled;
		}
		[CRepr]
		public struct IMFPluginControl2 : IMFPluginControl
		{
			public const new Guid IID = .(0xc6982083, 0x3ddc, 0x45cb, 0xaf, 0x5e, 0x0f, 0x7a, 0x8c, 0xe4, 0xde, 0x77);
			
			public function HRESULT(IMFPluginControl2 *self, MF_PLUGIN_CONTROL_POLICY policy) SetPolicy;
		}
		[CRepr]
		public struct IMFDXGIDeviceManager : IUnknown
		{
			public const new Guid IID = .(0xeb533d5d, 0x2db6, 0x40f8, 0x97, 0xa9, 0x49, 0x46, 0x92, 0x01, 0x4f, 0x07);
			
			public function HRESULT(IMFDXGIDeviceManager *self, HANDLE hDevice) CloseDeviceHandle;
			public function HRESULT(IMFDXGIDeviceManager *self, HANDLE hDevice, Guid* riid, void** ppService) GetVideoService;
			public function HRESULT(IMFDXGIDeviceManager *self, HANDLE hDevice, Guid* riid, void** ppUnkDevice, BOOL fBlock) LockDevice;
			public function HRESULT(IMFDXGIDeviceManager *self, HANDLE* phDevice) OpenDeviceHandle;
			public function HRESULT(IMFDXGIDeviceManager *self, IUnknown* pUnkDevice, uint32 resetToken) ResetDevice;
			public function HRESULT(IMFDXGIDeviceManager *self, HANDLE hDevice) TestDevice;
			public function HRESULT(IMFDXGIDeviceManager *self, HANDLE hDevice, BOOL fSaveState) UnlockDevice;
		}
		[CRepr]
		public struct IMFMuxStreamAttributesManager : IUnknown
		{
			public const new Guid IID = .(0xce8bd576, 0xe440, 0x43b3, 0xbe, 0x34, 0x1e, 0x53, 0xf5, 0x65, 0xf7, 0xe8);
			
			public function HRESULT(IMFMuxStreamAttributesManager *self, uint32* pdwMuxStreamCount) GetStreamCount;
			public function HRESULT(IMFMuxStreamAttributesManager *self, uint32 dwMuxStreamIndex, IMFAttributes** ppStreamAttributes) GetAttributes;
		}
		[CRepr]
		public struct IMFMuxStreamMediaTypeManager : IUnknown
		{
			public const new Guid IID = .(0x505a2c72, 0x42f7, 0x4690, 0xae, 0xab, 0x8f, 0x51, 0x3d, 0x0f, 0xfd, 0xb8);
			
			public function HRESULT(IMFMuxStreamMediaTypeManager *self, uint32* pdwMuxStreamCount) GetStreamCount;
			public function HRESULT(IMFMuxStreamMediaTypeManager *self, uint32 dwMuxStreamIndex, IMFMediaType** ppMediaType) GetMediaType;
			public function HRESULT(IMFMuxStreamMediaTypeManager *self, uint32* pdwCount) GetStreamConfigurationCount;
			public function HRESULT(IMFMuxStreamMediaTypeManager *self, uint64 ullStreamMask) AddStreamConfiguration;
			public function HRESULT(IMFMuxStreamMediaTypeManager *self, uint64 ullStreamMask) RemoveStreamConfiguration;
			public function HRESULT(IMFMuxStreamMediaTypeManager *self, uint32 ulIndex, uint64* pullStreamMask) GetStreamConfiguration;
		}
		[CRepr]
		public struct IMFMuxStreamSampleManager : IUnknown
		{
			public const new Guid IID = .(0x74abbc19, 0xb1cc, 0x4e41, 0xbb, 0x8b, 0x9d, 0x9b, 0x86, 0xa8, 0xf6, 0xca);
			
			public function HRESULT(IMFMuxStreamSampleManager *self, uint32* pdwMuxStreamCount) GetStreamCount;
			public function HRESULT(IMFMuxStreamSampleManager *self, uint32 dwMuxStreamIndex, IMFSample** ppSample) GetSample;
			public function uint64(IMFMuxStreamSampleManager *self) GetStreamConfiguration;
		}
		[CRepr]
		public struct IMFSecureBuffer : IUnknown
		{
			public const new Guid IID = .(0xc1209904, 0xe584, 0x4752, 0xa2, 0xd6, 0x7f, 0x21, 0x69, 0x3f, 0x8b, 0x21);
			
			public function HRESULT(IMFSecureBuffer *self, Guid* pGuidIdentifier) GetIdentifier;
		}
		[CRepr]
		public struct IMFTransform : IUnknown
		{
			public const new Guid IID = .(0xbf94c121, 0x5b05, 0x4e6f, 0x80, 0x00, 0xba, 0x59, 0x89, 0x61, 0x41, 0x4d);
			
			public function HRESULT(IMFTransform *self, uint32* pdwInputMinimum, uint32* pdwInputMaximum, uint32* pdwOutputMinimum, uint32* pdwOutputMaximum) GetStreamLimits;
			public function HRESULT(IMFTransform *self, uint32* pcInputStreams, uint32* pcOutputStreams) GetStreamCount;
			public function HRESULT(IMFTransform *self, uint32 dwInputIDArraySize, uint32* pdwInputIDs, uint32 dwOutputIDArraySize, uint32* pdwOutputIDs) GetStreamIDs;
			public function HRESULT(IMFTransform *self, uint32 dwInputStreamID, MFT_INPUT_STREAM_INFO* pStreamInfo) GetInputStreamInfo;
			public function HRESULT(IMFTransform *self, uint32 dwOutputStreamID, MFT_OUTPUT_STREAM_INFO* pStreamInfo) GetOutputStreamInfo;
			public function HRESULT(IMFTransform *self, IMFAttributes** pAttributes) GetAttributes;
			public function HRESULT(IMFTransform *self, uint32 dwInputStreamID, IMFAttributes** pAttributes) GetInputStreamAttributes;
			public function HRESULT(IMFTransform *self, uint32 dwOutputStreamID, IMFAttributes** pAttributes) GetOutputStreamAttributes;
			public function HRESULT(IMFTransform *self, uint32 dwStreamID) DeleteInputStream;
			public function HRESULT(IMFTransform *self, uint32 cStreams, uint32* adwStreamIDs) AddInputStreams;
			public function HRESULT(IMFTransform *self, uint32 dwInputStreamID, uint32 dwTypeIndex, IMFMediaType** ppType) GetInputAvailableType;
			public function HRESULT(IMFTransform *self, uint32 dwOutputStreamID, uint32 dwTypeIndex, IMFMediaType** ppType) GetOutputAvailableType;
			public function HRESULT(IMFTransform *self, uint32 dwInputStreamID, IMFMediaType* pType, uint32 dwFlags) SetInputType;
			public function HRESULT(IMFTransform *self, uint32 dwOutputStreamID, IMFMediaType* pType, uint32 dwFlags) SetOutputType;
			public function HRESULT(IMFTransform *self, uint32 dwInputStreamID, IMFMediaType** ppType) GetInputCurrentType;
			public function HRESULT(IMFTransform *self, uint32 dwOutputStreamID, IMFMediaType** ppType) GetOutputCurrentType;
			public function HRESULT(IMFTransform *self, uint32 dwInputStreamID, uint32* pdwFlags) GetInputStatus;
			public function HRESULT(IMFTransform *self, uint32* pdwFlags) GetOutputStatus;
			public function HRESULT(IMFTransform *self, int64 hnsLowerBound, int64 hnsUpperBound) SetOutputBounds;
			public function HRESULT(IMFTransform *self, uint32 dwInputStreamID, IMFMediaEvent* pEvent) ProcessEvent;
			public function HRESULT(IMFTransform *self, MFT_MESSAGE_TYPE eMessage, uint ulParam) ProcessMessage;
			public function HRESULT(IMFTransform *self, uint32 dwInputStreamID, IMFSample* pSample, uint32 dwFlags) ProcessInput;
			public function HRESULT(IMFTransform *self, uint32 dwFlags, uint32 cOutputBufferCount, MFT_OUTPUT_DATA_BUFFER* pOutputSamples, uint32* pdwStatus) ProcessOutput;
		}
		[CRepr]
		public struct IMFMediaSession : IMFMediaEventGenerator
		{
			public const new Guid IID = .(0x90377834, 0x21d0, 0x4dee, 0x82, 0x14, 0xba, 0x2e, 0x3e, 0x6c, 0x11, 0x27);
			
			public function HRESULT(IMFMediaSession *self, uint32 dwSetTopologyFlags, IMFTopology* pTopology) SetTopology;
			public function HRESULT(IMFMediaSession *self) ClearTopologies;
			public function HRESULT(IMFMediaSession *self, Guid* pguidTimeFormat, PROPVARIANT* pvarStartPosition) Start;
			public function HRESULT(IMFMediaSession *self) Pause;
			public function HRESULT(IMFMediaSession *self) Stop;
			public function HRESULT(IMFMediaSession *self) Close;
			public function HRESULT(IMFMediaSession *self) Shutdown;
			public function HRESULT(IMFMediaSession *self, IMFClock** ppClock) GetClock;
			public function HRESULT(IMFMediaSession *self, uint32* pdwCaps) GetSessionCapabilities;
			public function HRESULT(IMFMediaSession *self, uint32 dwGetFullTopologyFlags, uint64 TopoId, IMFTopology** ppFullTopology) GetFullTopology;
		}
		[CRepr]
		public struct IMFSourceResolver : IUnknown
		{
			public const new Guid IID = .(0xfbe5a32d, 0xa497, 0x4b61, 0xbb, 0x85, 0x97, 0xb1, 0xa8, 0x48, 0xa6, 0xe3);
			
			public function HRESULT(IMFSourceResolver *self, PWSTR pwszURL, uint32 dwFlags, IPropertyStore* pProps, MF_OBJECT_TYPE* pObjectType, IUnknown** ppObject) CreateObjectFromURL;
			public function HRESULT(IMFSourceResolver *self, IMFByteStream* pByteStream, PWSTR pwszURL, uint32 dwFlags, IPropertyStore* pProps, MF_OBJECT_TYPE* pObjectType, IUnknown** ppObject) CreateObjectFromByteStream;
			public function HRESULT(IMFSourceResolver *self, PWSTR pwszURL, uint32 dwFlags, IPropertyStore* pProps, IUnknown** ppIUnknownCancelCookie, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginCreateObjectFromURL;
			public function HRESULT(IMFSourceResolver *self, IMFAsyncResult* pResult, MF_OBJECT_TYPE* pObjectType, IUnknown** ppObject) EndCreateObjectFromURL;
			public function HRESULT(IMFSourceResolver *self, IMFByteStream* pByteStream, PWSTR pwszURL, uint32 dwFlags, IPropertyStore* pProps, IUnknown** ppIUnknownCancelCookie, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginCreateObjectFromByteStream;
			public function HRESULT(IMFSourceResolver *self, IMFAsyncResult* pResult, MF_OBJECT_TYPE* pObjectType, IUnknown** ppObject) EndCreateObjectFromByteStream;
			public function HRESULT(IMFSourceResolver *self, IUnknown* pIUnknownCancelCookie) CancelObjectCreation;
		}
		[CRepr]
		public struct IMFMediaSource : IMFMediaEventGenerator
		{
			public const new Guid IID = .(0x279a808d, 0xaec7, 0x40c8, 0x9c, 0x6b, 0xa6, 0xb4, 0x92, 0xc7, 0x8a, 0x66);
			
			public function HRESULT(IMFMediaSource *self, uint32* pdwCharacteristics) GetCharacteristics;
			public function HRESULT(IMFMediaSource *self, IMFPresentationDescriptor** ppPresentationDescriptor) CreatePresentationDescriptor;
			public function HRESULT(IMFMediaSource *self, IMFPresentationDescriptor* pPresentationDescriptor, Guid* pguidTimeFormat, PROPVARIANT* pvarStartPosition) Start;
			public function HRESULT(IMFMediaSource *self) Stop;
			public function HRESULT(IMFMediaSource *self) Pause;
			public function HRESULT(IMFMediaSource *self) Shutdown;
		}
		[CRepr]
		public struct IMFMediaSourceEx : IMFMediaSource
		{
			public const new Guid IID = .(0x3c9b2eb9, 0x86d5, 0x4514, 0xa3, 0x94, 0xf5, 0x66, 0x64, 0xf9, 0xf0, 0xd8);
			
			public function HRESULT(IMFMediaSourceEx *self, IMFAttributes** ppAttributes) GetSourceAttributes;
			public function HRESULT(IMFMediaSourceEx *self, uint32 dwStreamIdentifier, IMFAttributes** ppAttributes) GetStreamAttributes;
			public function HRESULT(IMFMediaSourceEx *self, IUnknown* pManager) SetD3DManager;
		}
		[CRepr]
		public struct IMFClockConsumer : IUnknown
		{
			public const new Guid IID = .(0x6ef2a662, 0x47c0, 0x4666, 0xb1, 0x3d, 0xcb, 0xb7, 0x17, 0xf2, 0xfa, 0x2c);
			
			public function HRESULT(IMFClockConsumer *self, IMFPresentationClock* pPresentationClock) SetPresentationClock;
			public function HRESULT(IMFClockConsumer *self, IMFPresentationClock** ppPresentationClock) GetPresentationClock;
		}
		[CRepr]
		public struct IMFMediaStream : IMFMediaEventGenerator
		{
			public const new Guid IID = .(0xd182108f, 0x4ec6, 0x443f, 0xaa, 0x42, 0xa7, 0x11, 0x06, 0xec, 0x82, 0x5f);
			
			public function HRESULT(IMFMediaStream *self, IMFMediaSource** ppMediaSource) GetMediaSource;
			public function HRESULT(IMFMediaStream *self, IMFStreamDescriptor** ppStreamDescriptor) GetStreamDescriptor;
			public function HRESULT(IMFMediaStream *self, IUnknown* pToken) RequestSample;
		}
		[CRepr]
		public struct IMFMediaSink : IUnknown
		{
			public const new Guid IID = .(0x6ef2a660, 0x47c0, 0x4666, 0xb1, 0x3d, 0xcb, 0xb7, 0x17, 0xf2, 0xfa, 0x2c);
			
			public function HRESULT(IMFMediaSink *self, uint32* pdwCharacteristics) GetCharacteristics;
			public function HRESULT(IMFMediaSink *self, uint32 dwStreamSinkIdentifier, IMFMediaType* pMediaType, IMFStreamSink** ppStreamSink) AddStreamSink;
			public function HRESULT(IMFMediaSink *self, uint32 dwStreamSinkIdentifier) RemoveStreamSink;
			public function HRESULT(IMFMediaSink *self, uint32* pcStreamSinkCount) GetStreamSinkCount;
			public function HRESULT(IMFMediaSink *self, uint32 dwIndex, IMFStreamSink** ppStreamSink) GetStreamSinkByIndex;
			public function HRESULT(IMFMediaSink *self, uint32 dwStreamSinkIdentifier, IMFStreamSink** ppStreamSink) GetStreamSinkById;
			public function HRESULT(IMFMediaSink *self, IMFPresentationClock* pPresentationClock) SetPresentationClock;
			public function HRESULT(IMFMediaSink *self, IMFPresentationClock** ppPresentationClock) GetPresentationClock;
			public function HRESULT(IMFMediaSink *self) Shutdown;
		}
		[CRepr]
		public struct IMFStreamSink : IMFMediaEventGenerator
		{
			public const new Guid IID = .(0x0a97b3cf, 0x8e7c, 0x4a3d, 0x8f, 0x8c, 0x0c, 0x84, 0x3d, 0xc2, 0x47, 0xfb);
			
			public function HRESULT(IMFStreamSink *self, IMFMediaSink** ppMediaSink) GetMediaSink;
			public function HRESULT(IMFStreamSink *self, uint32* pdwIdentifier) GetIdentifier;
			public function HRESULT(IMFStreamSink *self, IMFMediaTypeHandler** ppHandler) GetMediaTypeHandler;
			public function HRESULT(IMFStreamSink *self, IMFSample* pSample) ProcessSample;
			public function HRESULT(IMFStreamSink *self, MFSTREAMSINK_MARKER_TYPE eMarkerType, PROPVARIANT* pvarMarkerValue, PROPVARIANT* pvarContextValue) PlaceMarker;
			public function HRESULT(IMFStreamSink *self) Flush;
		}
		[CRepr]
		public struct IMFVideoSampleAllocator : IUnknown
		{
			public const new Guid IID = .(0x86cbc910, 0xe533, 0x4751, 0x8e, 0x3b, 0xf1, 0x9b, 0x5b, 0x80, 0x6a, 0x03);
			
			public function HRESULT(IMFVideoSampleAllocator *self, IUnknown* pManager) SetDirectXManager;
			public function HRESULT(IMFVideoSampleAllocator *self) UninitializeSampleAllocator;
			public function HRESULT(IMFVideoSampleAllocator *self, uint32 cRequestedFrames, IMFMediaType* pMediaType) InitializeSampleAllocator;
			public function HRESULT(IMFVideoSampleAllocator *self, IMFSample** ppSample) AllocateSample;
		}
		[CRepr]
		public struct IMFVideoSampleAllocatorNotify : IUnknown
		{
			public const new Guid IID = .(0xa792cdbe, 0xc374, 0x4e89, 0x83, 0x35, 0x27, 0x8e, 0x7b, 0x99, 0x56, 0xa4);
			
			public function HRESULT(IMFVideoSampleAllocatorNotify *self) NotifyRelease;
		}
		[CRepr]
		public struct IMFVideoSampleAllocatorNotifyEx : IMFVideoSampleAllocatorNotify
		{
			public const new Guid IID = .(0x3978aa1a, 0x6d5b, 0x4b7f, 0xa3, 0x40, 0x90, 0x89, 0x91, 0x89, 0xae, 0x34);
			
			public function HRESULT(IMFVideoSampleAllocatorNotifyEx *self, IMFSample* __MIDL__IMFVideoSampleAllocatorNotifyEx0000) NotifyPrune;
		}
		[CRepr]
		public struct IMFVideoSampleAllocatorCallback : IUnknown
		{
			public const new Guid IID = .(0x992388b4, 0x3372, 0x4f67, 0x8b, 0x6f, 0xc8, 0x4c, 0x07, 0x1f, 0x47, 0x51);
			
			public function HRESULT(IMFVideoSampleAllocatorCallback *self, IMFVideoSampleAllocatorNotify* pNotify) SetCallback;
			public function HRESULT(IMFVideoSampleAllocatorCallback *self, int32* plSamples) GetFreeSampleCount;
		}
		[CRepr]
		public struct IMFVideoSampleAllocatorEx : IMFVideoSampleAllocator
		{
			public const new Guid IID = .(0x545b3a48, 0x3283, 0x4f62, 0x86, 0x6f, 0xa6, 0x2d, 0x8f, 0x59, 0x8f, 0x9f);
			
			public function HRESULT(IMFVideoSampleAllocatorEx *self, uint32 cInitialSamples, uint32 cMaximumSamples, IMFAttributes* pAttributes, IMFMediaType* pMediaType) InitializeSampleAllocatorEx;
		}
		[CRepr]
		public struct IMFDXGIDeviceManagerSource : IUnknown
		{
			public const new Guid IID = .(0x20bc074b, 0x7a8d, 0x4609, 0x8c, 0x3b, 0x64, 0xa0, 0xa3, 0xb5, 0xd7, 0xce);
			
			public function HRESULT(IMFDXGIDeviceManagerSource *self, IMFDXGIDeviceManager** ppManager) GetManager;
		}
		[CRepr]
		public struct IMFVideoProcessorControl : IUnknown
		{
			public const new Guid IID = .(0xa3f675d5, 0x6119, 0x4f7f, 0xa1, 0x00, 0x1d, 0x8b, 0x28, 0x0f, 0x0e, 0xfb);
			
			public function HRESULT(IMFVideoProcessorControl *self, MFARGB* pBorderColor) SetBorderColor;
			public function HRESULT(IMFVideoProcessorControl *self, RECT* pSrcRect) SetSourceRectangle;
			public function HRESULT(IMFVideoProcessorControl *self, RECT* pDstRect) SetDestinationRectangle;
			public function HRESULT(IMFVideoProcessorControl *self, MF_VIDEO_PROCESSOR_MIRROR eMirror) SetMirror;
			public function HRESULT(IMFVideoProcessorControl *self, MF_VIDEO_PROCESSOR_ROTATION eRotation) SetRotation;
			public function HRESULT(IMFVideoProcessorControl *self, SIZE* pConstrictionSize) SetConstrictionSize;
		}
		[CRepr]
		public struct IMFVideoProcessorControl2 : IMFVideoProcessorControl
		{
			public const new Guid IID = .(0xbde633d3, 0xe1dc, 0x4a7f, 0xa6, 0x93, 0xbb, 0xae, 0x39, 0x9c, 0x4a, 0x20);
			
			public function HRESULT(IMFVideoProcessorControl2 *self, uint32 uiRotation) SetRotationOverride;
			public function HRESULT(IMFVideoProcessorControl2 *self, BOOL fEnabled) EnableHardwareEffects;
			public function HRESULT(IMFVideoProcessorControl2 *self, uint32* puiSupport) GetSupportedHardwareEffects;
		}
		[CRepr]
		public struct IMFVideoProcessorControl3 : IMFVideoProcessorControl2
		{
			public const new Guid IID = .(0x2424b3f2, 0xeb23, 0x40f1, 0x91, 0xaa, 0x74, 0xbd, 0xde, 0xea, 0x08, 0x83);
			
			public function HRESULT(IMFVideoProcessorControl3 *self, IMFMediaType** ppType) GetNaturalOutputType;
			public function HRESULT(IMFVideoProcessorControl3 *self, BOOL fEnable, MFVideoSphericalFormat eFormat, MFVideoSphericalProjectionMode eProjectionMode) EnableSphericalVideoProcessing;
			public function HRESULT(IMFVideoProcessorControl3 *self, float X, float Y, float Z, float W, float fieldOfView) SetSphericalVideoProperties;
			public function HRESULT(IMFVideoProcessorControl3 *self, IUnknown* pOutputDevice) SetOutputDevice;
		}
		[CRepr]
		public struct IMFVideoRendererEffectControl : IUnknown
		{
			public const new Guid IID = .(0x604d33d7, 0xcf23, 0x41d5, 0x82, 0x24, 0x5b, 0xbb, 0xb1, 0xa8, 0x74, 0x75);
			
			public function HRESULT(IMFVideoRendererEffectControl *self, IUnknown* pAppServiceConnection) OnAppServiceConnectionEstablished;
		}
		[CRepr]
		public struct IMFTopology : IMFAttributes
		{
			public const new Guid IID = .(0x83cf873a, 0xf6da, 0x4bc8, 0x82, 0x3f, 0xba, 0xcf, 0xd5, 0x5d, 0xc4, 0x33);
			
			public function HRESULT(IMFTopology *self, uint64* pID) GetTopologyID;
			public function HRESULT(IMFTopology *self, IMFTopologyNode* pNode) AddNode;
			public function HRESULT(IMFTopology *self, IMFTopologyNode* pNode) RemoveNode;
			public function HRESULT(IMFTopology *self, uint16* pwNodes) GetNodeCount;
			public function HRESULT(IMFTopology *self, uint16 wIndex, IMFTopologyNode** ppNode) GetNode;
			public function HRESULT(IMFTopology *self) Clear;
			public function HRESULT(IMFTopology *self, IMFTopology* pTopology) CloneFrom;
			public function HRESULT(IMFTopology *self, uint64 qwTopoNodeID, IMFTopologyNode** ppNode) GetNodeByID;
			public function HRESULT(IMFTopology *self, IMFCollection** ppCollection) GetSourceNodeCollection;
			public function HRESULT(IMFTopology *self, IMFCollection** ppCollection) GetOutputNodeCollection;
		}
		[CRepr]
		public struct IMFTopologyNode : IMFAttributes
		{
			public const new Guid IID = .(0x83cf873a, 0xf6da, 0x4bc8, 0x82, 0x3f, 0xba, 0xcf, 0xd5, 0x5d, 0xc4, 0x30);
			
			public function HRESULT(IMFTopologyNode *self, IUnknown* pObject) SetObject;
			public function HRESULT(IMFTopologyNode *self, IUnknown** ppObject) GetObject;
			public function HRESULT(IMFTopologyNode *self, MF_TOPOLOGY_TYPE* pType) GetNodeType;
			public function HRESULT(IMFTopologyNode *self, uint64* pID) GetTopoNodeID;
			public function HRESULT(IMFTopologyNode *self, uint64 ullTopoID) SetTopoNodeID;
			public function HRESULT(IMFTopologyNode *self, uint32* pcInputs) GetInputCount;
			public function HRESULT(IMFTopologyNode *self, uint32* pcOutputs) GetOutputCount;
			public function HRESULT(IMFTopologyNode *self, uint32 dwOutputIndex, IMFTopologyNode* pDownstreamNode, uint32 dwInputIndexOnDownstreamNode) ConnectOutput;
			public function HRESULT(IMFTopologyNode *self, uint32 dwOutputIndex) DisconnectOutput;
			public function HRESULT(IMFTopologyNode *self, uint32 dwInputIndex, IMFTopologyNode** ppUpstreamNode, uint32* pdwOutputIndexOnUpstreamNode) GetInput;
			public function HRESULT(IMFTopologyNode *self, uint32 dwOutputIndex, IMFTopologyNode** ppDownstreamNode, uint32* pdwInputIndexOnDownstreamNode) GetOutput;
			public function HRESULT(IMFTopologyNode *self, uint32 dwOutputIndex, IMFMediaType* pType) SetOutputPrefType;
			public function HRESULT(IMFTopologyNode *self, uint32 dwOutputIndex, IMFMediaType** ppType) GetOutputPrefType;
			public function HRESULT(IMFTopologyNode *self, uint32 dwInputIndex, IMFMediaType* pType) SetInputPrefType;
			public function HRESULT(IMFTopologyNode *self, uint32 dwInputIndex, IMFMediaType** ppType) GetInputPrefType;
			public function HRESULT(IMFTopologyNode *self, IMFTopologyNode* pNode) CloneFrom;
		}
		[CRepr]
		public struct IMFGetService : IUnknown
		{
			public const new Guid IID = .(0xfa993888, 0x4383, 0x415a, 0xa9, 0x30, 0xdd, 0x47, 0x2a, 0x8c, 0xf6, 0xf7);
			
			public function HRESULT(IMFGetService *self, Guid* guidService, Guid* riid, void** ppvObject) GetService;
		}
		[CRepr]
		public struct IMFClock : IUnknown
		{
			public const new Guid IID = .(0x2eb1e945, 0x18b8, 0x4139, 0x9b, 0x1a, 0xd5, 0xd5, 0x84, 0x81, 0x85, 0x30);
			
			public function HRESULT(IMFClock *self, uint32* pdwCharacteristics) GetClockCharacteristics;
			public function HRESULT(IMFClock *self, uint32 dwReserved, int64* pllClockTime, int64* phnsSystemTime) GetCorrelatedTime;
			public function HRESULT(IMFClock *self, uint32* pdwContinuityKey) GetContinuityKey;
			public function HRESULT(IMFClock *self, uint32 dwReserved, MFCLOCK_STATE* peClockState) GetState;
			public function HRESULT(IMFClock *self, MFCLOCK_PROPERTIES* pClockProperties) GetProperties;
		}
		[CRepr]
		public struct IMFPresentationClock : IMFClock
		{
			public const new Guid IID = .(0x868ce85c, 0x8ea9, 0x4f55, 0xab, 0x82, 0xb0, 0x09, 0xa9, 0x10, 0xa8, 0x05);
			
			public function HRESULT(IMFPresentationClock *self, IMFPresentationTimeSource* pTimeSource) SetTimeSource;
			public function HRESULT(IMFPresentationClock *self, IMFPresentationTimeSource** ppTimeSource) GetTimeSource;
			public function HRESULT(IMFPresentationClock *self, int64* phnsClockTime) GetTime;
			public function HRESULT(IMFPresentationClock *self, IMFClockStateSink* pStateSink) AddClockStateSink;
			public function HRESULT(IMFPresentationClock *self, IMFClockStateSink* pStateSink) RemoveClockStateSink;
			public function HRESULT(IMFPresentationClock *self, int64 llClockStartOffset) Start;
			public function HRESULT(IMFPresentationClock *self) Stop;
			public function HRESULT(IMFPresentationClock *self) Pause;
		}
		[CRepr]
		public struct IMFPresentationTimeSource : IMFClock
		{
			public const new Guid IID = .(0x7ff12cce, 0xf76f, 0x41c2, 0x86, 0x3b, 0x16, 0x66, 0xc8, 0xe5, 0xe1, 0x39);
			
			public function HRESULT(IMFPresentationTimeSource *self, IMFClock** ppClock) GetUnderlyingClock;
		}
		[CRepr]
		public struct IMFClockStateSink : IUnknown
		{
			public const new Guid IID = .(0xf6696e82, 0x74f7, 0x4f3d, 0xa1, 0x78, 0x8a, 0x5e, 0x09, 0xc3, 0x65, 0x9f);
			
			public function HRESULT(IMFClockStateSink *self, int64 hnsSystemTime, int64 llClockStartOffset) OnClockStart;
			public function HRESULT(IMFClockStateSink *self, int64 hnsSystemTime) OnClockStop;
			public function HRESULT(IMFClockStateSink *self, int64 hnsSystemTime) OnClockPause;
			public function HRESULT(IMFClockStateSink *self, int64 hnsSystemTime) OnClockRestart;
			public function HRESULT(IMFClockStateSink *self, int64 hnsSystemTime, float flRate) OnClockSetRate;
		}
		[CRepr]
		public struct IMFPresentationDescriptor : IMFAttributes
		{
			public const new Guid IID = .(0x03cb2711, 0x24d7, 0x4db6, 0xa1, 0x7f, 0xf3, 0xa7, 0xa4, 0x79, 0xa5, 0x36);
			
			public function HRESULT(IMFPresentationDescriptor *self, uint32* pdwDescriptorCount) GetStreamDescriptorCount;
			public function HRESULT(IMFPresentationDescriptor *self, uint32 dwIndex, BOOL* pfSelected, IMFStreamDescriptor** ppDescriptor) GetStreamDescriptorByIndex;
			public function HRESULT(IMFPresentationDescriptor *self, uint32 dwDescriptorIndex) SelectStream;
			public function HRESULT(IMFPresentationDescriptor *self, uint32 dwDescriptorIndex) DeselectStream;
			public function HRESULT(IMFPresentationDescriptor *self, IMFPresentationDescriptor** ppPresentationDescriptor) Clone;
		}
		[CRepr]
		public struct IMFStreamDescriptor : IMFAttributes
		{
			public const new Guid IID = .(0x56c03d9c, 0x9dbb, 0x45f5, 0xab, 0x4b, 0xd8, 0x0f, 0x47, 0xc0, 0x59, 0x38);
			
			public function HRESULT(IMFStreamDescriptor *self, uint32* pdwStreamIdentifier) GetStreamIdentifier;
			public function HRESULT(IMFStreamDescriptor *self, IMFMediaTypeHandler** ppMediaTypeHandler) GetMediaTypeHandler;
		}
		[CRepr]
		public struct IMFMediaTypeHandler : IUnknown
		{
			public const new Guid IID = .(0xe93dcf6c, 0x4b07, 0x4e1e, 0x81, 0x23, 0xaa, 0x16, 0xed, 0x6e, 0xad, 0xf5);
			
			public function HRESULT(IMFMediaTypeHandler *self, IMFMediaType* pMediaType, IMFMediaType** ppMediaType) IsMediaTypeSupported;
			public function HRESULT(IMFMediaTypeHandler *self, uint32* pdwTypeCount) GetMediaTypeCount;
			public function HRESULT(IMFMediaTypeHandler *self, uint32 dwIndex, IMFMediaType** ppType) GetMediaTypeByIndex;
			public function HRESULT(IMFMediaTypeHandler *self, IMFMediaType* pMediaType) SetCurrentMediaType;
			public function HRESULT(IMFMediaTypeHandler *self, IMFMediaType** ppMediaType) GetCurrentMediaType;
			public function HRESULT(IMFMediaTypeHandler *self, Guid* pguidMajorType) GetMajorType;
		}
		[CRepr]
		public struct IMFTimer : IUnknown
		{
			public const new Guid IID = .(0xe56e4cbd, 0x8f70, 0x49d8, 0xa0, 0xf8, 0xed, 0xb3, 0xd6, 0xab, 0x9b, 0xf2);
			
			public function HRESULT(IMFTimer *self, uint32 dwFlags, int64 llClockTime, IMFAsyncCallback* pCallback, IUnknown* punkState, IUnknown** ppunkKey) SetTimer;
			public function HRESULT(IMFTimer *self, IUnknown* punkKey) CancelTimer;
		}
		[CRepr]
		public struct IMFShutdown : IUnknown
		{
			public const new Guid IID = .(0x97ec2ea4, 0x0e42, 0x4937, 0x97, 0xac, 0x9d, 0x6d, 0x32, 0x88, 0x24, 0xe1);
			
			public function HRESULT(IMFShutdown *self) Shutdown;
			public function HRESULT(IMFShutdown *self, MFSHUTDOWN_STATUS* pStatus) GetShutdownStatus;
		}
		[CRepr]
		public struct IMFTopoLoader : IUnknown
		{
			public const new Guid IID = .(0xde9a6157, 0xf660, 0x4643, 0xb5, 0x6a, 0xdf, 0x9f, 0x79, 0x98, 0xc7, 0xcd);
			
			public function HRESULT(IMFTopoLoader *self, IMFTopology* pInputTopo, IMFTopology** ppOutputTopo, IMFTopology* pCurrentTopo) Load;
		}
		[CRepr]
		public struct IMFContentProtectionManager : IUnknown
		{
			public const new Guid IID = .(0xacf92459, 0x6a61, 0x42bd, 0xb5, 0x7c, 0xb4, 0x3e, 0x51, 0x20, 0x3c, 0xb0);
			
			public function HRESULT(IMFContentProtectionManager *self, IMFActivate* pEnablerActivate, IMFTopology* pTopo, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginEnableContent;
			public function HRESULT(IMFContentProtectionManager *self, IMFAsyncResult* pResult) EndEnableContent;
		}
		[CRepr]
		public struct IMFContentEnabler : IUnknown
		{
			public const new Guid IID = .(0xd3c4ef59, 0x49ce, 0x4381, 0x90, 0x71, 0xd5, 0xbc, 0xd0, 0x44, 0xc7, 0x70);
			
			public function HRESULT(IMFContentEnabler *self, Guid* pType) GetEnableType;
			public function HRESULT(IMFContentEnabler *self, PWSTR* ppwszURL, uint32* pcchURL, MF_URL_TRUST_STATUS* pTrustStatus) GetEnableURL;
			public function HRESULT(IMFContentEnabler *self, uint8** ppbData, uint32* pcbData) GetEnableData;
			public function HRESULT(IMFContentEnabler *self, BOOL* pfAutomatic) IsAutomaticSupported;
			public function HRESULT(IMFContentEnabler *self) AutomaticEnable;
			public function HRESULT(IMFContentEnabler *self) MonitorEnable;
			public function HRESULT(IMFContentEnabler *self) Cancel;
		}
		[CRepr]
		public struct IMFMetadata : IUnknown
		{
			public const new Guid IID = .(0xf88cfb8c, 0xef16, 0x4991, 0xb4, 0x50, 0xcb, 0x8c, 0x69, 0xe5, 0x17, 0x04);
			
			public function HRESULT(IMFMetadata *self, PWSTR pwszRFC1766) SetLanguage;
			public function HRESULT(IMFMetadata *self, PWSTR* ppwszRFC1766) GetLanguage;
			public function HRESULT(IMFMetadata *self, PROPVARIANT* ppvLanguages) GetAllLanguages;
			public function HRESULT(IMFMetadata *self, PWSTR pwszName, PROPVARIANT* ppvValue) SetProperty;
			public function HRESULT(IMFMetadata *self, PWSTR pwszName, PROPVARIANT* ppvValue) GetProperty;
			public function HRESULT(IMFMetadata *self, PWSTR pwszName) DeleteProperty;
			public function HRESULT(IMFMetadata *self, PROPVARIANT* ppvNames) GetAllPropertyNames;
		}
		[CRepr]
		public struct IMFMetadataProvider : IUnknown
		{
			public const new Guid IID = .(0x56181d2d, 0xe221, 0x4adb, 0xb1, 0xc8, 0x3c, 0xee, 0x6a, 0x53, 0xf7, 0x6f);
			
			public function HRESULT(IMFMetadataProvider *self, IMFPresentationDescriptor* pPresentationDescriptor, uint32 dwStreamIdentifier, uint32 dwFlags, IMFMetadata** ppMFMetadata) GetMFMetadata;
		}
		[CRepr]
		public struct IMFRateSupport : IUnknown
		{
			public const new Guid IID = .(0x0a9ccdbc, 0xd797, 0x4563, 0x96, 0x67, 0x94, 0xec, 0x5d, 0x79, 0x29, 0x2d);
			
			public function HRESULT(IMFRateSupport *self, MFRATE_DIRECTION eDirection, BOOL fThin, float* pflRate) GetSlowestRate;
			public function HRESULT(IMFRateSupport *self, MFRATE_DIRECTION eDirection, BOOL fThin, float* pflRate) GetFastestRate;
			public function HRESULT(IMFRateSupport *self, BOOL fThin, float flRate, float* pflNearestSupportedRate) IsRateSupported;
		}
		[CRepr]
		public struct IMFRateControl : IUnknown
		{
			public const new Guid IID = .(0x88ddcd21, 0x03c3, 0x4275, 0x91, 0xed, 0x55, 0xee, 0x39, 0x29, 0x32, 0x8f);
			
			public function HRESULT(IMFRateControl *self, BOOL fThin, float flRate) SetRate;
			public function HRESULT(IMFRateControl *self, BOOL* pfThin, float* pflRate) GetRate;
		}
		[CRepr]
		public struct IMFTimecodeTranslate : IUnknown
		{
			public const new Guid IID = .(0xab9d8661, 0xf7e8, 0x4ef4, 0x98, 0x61, 0x89, 0xf3, 0x34, 0xf9, 0x4e, 0x74);
			
			public function HRESULT(IMFTimecodeTranslate *self, PROPVARIANT* pPropVarTimecode, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginConvertTimecodeToHNS;
			public function HRESULT(IMFTimecodeTranslate *self, IMFAsyncResult* pResult, int64* phnsTime) EndConvertTimecodeToHNS;
			public function HRESULT(IMFTimecodeTranslate *self, int64 hnsTime, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginConvertHNSToTimecode;
			public function HRESULT(IMFTimecodeTranslate *self, IMFAsyncResult* pResult, PROPVARIANT* pPropVarTimecode) EndConvertHNSToTimecode;
		}
		[CRepr]
		public struct IMFSeekInfo : IUnknown
		{
			public const new Guid IID = .(0x26afea53, 0xd9ed, 0x42b5, 0xab, 0x80, 0xe6, 0x4f, 0x9e, 0xe3, 0x47, 0x79);
			
			public function HRESULT(IMFSeekInfo *self, Guid* pguidTimeFormat, PROPVARIANT* pvarStartPosition, PROPVARIANT* pvarPreviousKeyFrame, PROPVARIANT* pvarNextKeyFrame) GetNearestKeyFrames;
		}
		[CRepr]
		public struct IMFSimpleAudioVolume : IUnknown
		{
			public const new Guid IID = .(0x089edf13, 0xcf71, 0x4338, 0x8d, 0x13, 0x9e, 0x56, 0x9d, 0xbd, 0xc3, 0x19);
			
			public function HRESULT(IMFSimpleAudioVolume *self, float fLevel) SetMasterVolume;
			public function HRESULT(IMFSimpleAudioVolume *self, float* pfLevel) GetMasterVolume;
			public function HRESULT(IMFSimpleAudioVolume *self, BOOL bMute) SetMute;
			public function HRESULT(IMFSimpleAudioVolume *self, BOOL* pbMute) GetMute;
		}
		[CRepr]
		public struct IMFAudioStreamVolume : IUnknown
		{
			public const new Guid IID = .(0x76b1bbdb, 0x4ec8, 0x4f36, 0xb1, 0x06, 0x70, 0xa9, 0x31, 0x6d, 0xf5, 0x93);
			
			public function HRESULT(IMFAudioStreamVolume *self, uint32* pdwCount) GetChannelCount;
			public function HRESULT(IMFAudioStreamVolume *self, uint32 dwIndex, float fLevel) SetChannelVolume;
			public function HRESULT(IMFAudioStreamVolume *self, uint32 dwIndex, float* pfLevel) GetChannelVolume;
			public function HRESULT(IMFAudioStreamVolume *self, uint32 dwCount, float* pfVolumes) SetAllVolumes;
			public function HRESULT(IMFAudioStreamVolume *self, uint32 dwCount, float* pfVolumes) GetAllVolumes;
		}
		[CRepr]
		public struct IMFAudioPolicy : IUnknown
		{
			public const new Guid IID = .(0xa0638c2b, 0x6465, 0x4395, 0x9a, 0xe7, 0xa3, 0x21, 0xa9, 0xfd, 0x28, 0x56);
			
			public function HRESULT(IMFAudioPolicy *self, Guid* rguidClass) SetGroupingParam;
			public function HRESULT(IMFAudioPolicy *self, Guid* pguidClass) GetGroupingParam;
			public function HRESULT(IMFAudioPolicy *self, PWSTR pszName) SetDisplayName;
			public function HRESULT(IMFAudioPolicy *self, PWSTR* pszName) GetDisplayName;
			public function HRESULT(IMFAudioPolicy *self, PWSTR pszPath) SetIconPath;
			public function HRESULT(IMFAudioPolicy *self, PWSTR* pszPath) GetIconPath;
		}
		[CRepr]
		public struct IMFSampleGrabberSinkCallback : IMFClockStateSink
		{
			public const new Guid IID = .(0x8c7b80bf, 0xee42, 0x4b59, 0xb1, 0xdf, 0x55, 0x66, 0x8e, 0x1b, 0xdc, 0xa8);
			
			public function HRESULT(IMFSampleGrabberSinkCallback *self, IMFPresentationClock* pPresentationClock) OnSetPresentationClock;
			public function HRESULT(IMFSampleGrabberSinkCallback *self, Guid* guidMajorMediaType, uint32 dwSampleFlags, int64 llSampleTime, int64 llSampleDuration, uint8* pSampleBuffer, uint32 dwSampleSize) OnProcessSample;
			public function HRESULT(IMFSampleGrabberSinkCallback *self) OnShutdown;
		}
		[CRepr]
		public struct IMFSampleGrabberSinkCallback2 : IMFSampleGrabberSinkCallback
		{
			public const new Guid IID = .(0xca86aa50, 0xc46e, 0x429e, 0xab, 0x27, 0x16, 0xd6, 0xac, 0x68, 0x44, 0xcb);
			
			public function HRESULT(IMFSampleGrabberSinkCallback2 *self, Guid* guidMajorMediaType, uint32 dwSampleFlags, int64 llSampleTime, int64 llSampleDuration, uint8* pSampleBuffer, uint32 dwSampleSize, IMFAttributes* pAttributes) OnProcessSampleEx;
		}
		[CRepr]
		public struct IMFWorkQueueServices : IUnknown
		{
			public const new Guid IID = .(0x35fe1bb8, 0xa3a9, 0x40fe, 0xbb, 0xec, 0xeb, 0x56, 0x9c, 0x9c, 0xcc, 0xa3);
			
			public function HRESULT(IMFWorkQueueServices *self, IMFAsyncCallback* pCallback, IUnknown* pState) BeginRegisterTopologyWorkQueuesWithMMCSS;
			public function HRESULT(IMFWorkQueueServices *self, IMFAsyncResult* pResult) EndRegisterTopologyWorkQueuesWithMMCSS;
			public function HRESULT(IMFWorkQueueServices *self, IMFAsyncCallback* pCallback, IUnknown* pState) BeginUnregisterTopologyWorkQueuesWithMMCSS;
			public function HRESULT(IMFWorkQueueServices *self, IMFAsyncResult* pResult) EndUnregisterTopologyWorkQueuesWithMMCSS;
			public function HRESULT(IMFWorkQueueServices *self, uint32 dwTopologyWorkQueueId, char16* pwszClass, uint32* pcchClass) GetTopologyWorkQueueMMCSSClass;
			public function HRESULT(IMFWorkQueueServices *self, uint32 dwTopologyWorkQueueId, uint32* pdwTaskId) GetTopologyWorkQueueMMCSSTaskId;
			public function HRESULT(IMFWorkQueueServices *self, uint32 dwPlatformWorkQueue, PWSTR wszClass, uint32 dwTaskId, IMFAsyncCallback* pCallback, IUnknown* pState) BeginRegisterPlatformWorkQueueWithMMCSS;
			public function HRESULT(IMFWorkQueueServices *self, IMFAsyncResult* pResult, uint32* pdwTaskId) EndRegisterPlatformWorkQueueWithMMCSS;
			public function HRESULT(IMFWorkQueueServices *self, uint32 dwPlatformWorkQueue, IMFAsyncCallback* pCallback, IUnknown* pState) BeginUnregisterPlatformWorkQueueWithMMCSS;
			public function HRESULT(IMFWorkQueueServices *self, IMFAsyncResult* pResult) EndUnregisterPlatformWorkQueueWithMMCSS;
			public function HRESULT(IMFWorkQueueServices *self, uint32 dwPlatformWorkQueueId, char16* pwszClass, uint32* pcchClass) GetPlaftormWorkQueueMMCSSClass;
			public function HRESULT(IMFWorkQueueServices *self, uint32 dwPlatformWorkQueueId, uint32* pdwTaskId) GetPlatformWorkQueueMMCSSTaskId;
		}
		[CRepr]
		public struct IMFWorkQueueServicesEx : IMFWorkQueueServices
		{
			public const new Guid IID = .(0x96bf961b, 0x40fe, 0x42f1, 0xba, 0x9d, 0x32, 0x02, 0x38, 0xb4, 0x97, 0x00);
			
			public function HRESULT(IMFWorkQueueServicesEx *self, uint32 dwTopologyWorkQueueId, int32* plPriority) GetTopologyWorkQueueMMCSSPriority;
			public function HRESULT(IMFWorkQueueServicesEx *self, uint32 dwPlatformWorkQueue, PWSTR wszClass, uint32 dwTaskId, int32 lPriority, IMFAsyncCallback* pCallback, IUnknown* pState) BeginRegisterPlatformWorkQueueWithMMCSSEx;
			public function HRESULT(IMFWorkQueueServicesEx *self, uint32 dwPlatformWorkQueueId, int32* plPriority) GetPlatformWorkQueueMMCSSPriority;
		}
		[CRepr]
		public struct IMFQualityManager : IUnknown
		{
			public const new Guid IID = .(0x8d009d86, 0x5b9f, 0x4115, 0xb1, 0xfc, 0x9f, 0x80, 0xd5, 0x2a, 0xb8, 0xab);
			
			public function HRESULT(IMFQualityManager *self, IMFTopology* pTopology) NotifyTopology;
			public function HRESULT(IMFQualityManager *self, IMFPresentationClock* pClock) NotifyPresentationClock;
			public function HRESULT(IMFQualityManager *self, IMFTopologyNode* pNode, int32 lInputIndex, IMFSample* pSample) NotifyProcessInput;
			public function HRESULT(IMFQualityManager *self, IMFTopologyNode* pNode, int32 lOutputIndex, IMFSample* pSample) NotifyProcessOutput;
			public function HRESULT(IMFQualityManager *self, IUnknown* pObject, IMFMediaEvent* pEvent) NotifyQualityEvent;
			public function HRESULT(IMFQualityManager *self) Shutdown;
		}
		[CRepr]
		public struct IMFQualityAdvise : IUnknown
		{
			public const new Guid IID = .(0xec15e2e9, 0xe36b, 0x4f7c, 0x87, 0x58, 0x77, 0xd4, 0x52, 0xef, 0x4c, 0xe7);
			
			public function HRESULT(IMFQualityAdvise *self, MF_QUALITY_DROP_MODE eDropMode) SetDropMode;
			public function HRESULT(IMFQualityAdvise *self, MF_QUALITY_LEVEL eQualityLevel) SetQualityLevel;
			public function HRESULT(IMFQualityAdvise *self, MF_QUALITY_DROP_MODE* peDropMode) GetDropMode;
			public function HRESULT(IMFQualityAdvise *self, MF_QUALITY_LEVEL* peQualityLevel) GetQualityLevel;
			public function HRESULT(IMFQualityAdvise *self, int64 hnsAmountToDrop) DropTime;
		}
		[CRepr]
		public struct IMFQualityAdvise2 : IMFQualityAdvise
		{
			public const new Guid IID = .(0xf3706f0d, 0x8ea2, 0x4886, 0x80, 0x00, 0x71, 0x55, 0xe9, 0xec, 0x2e, 0xae);
			
			public function HRESULT(IMFQualityAdvise2 *self, IMFMediaEvent* pEvent, uint32* pdwFlags) NotifyQualityEvent;
		}
		[CRepr]
		public struct IMFQualityAdviseLimits : IUnknown
		{
			public const new Guid IID = .(0xdfcd8e4d, 0x30b5, 0x4567, 0xac, 0xaa, 0x8e, 0xb5, 0xb7, 0x85, 0x3d, 0xc9);
			
			public function HRESULT(IMFQualityAdviseLimits *self, MF_QUALITY_DROP_MODE* peDropMode) GetMaximumDropMode;
			public function HRESULT(IMFQualityAdviseLimits *self, MF_QUALITY_LEVEL* peQualityLevel) GetMinimumQualityLevel;
		}
		[CRepr]
		public struct IMFRealTimeClient : IUnknown
		{
			public const new Guid IID = .(0x2347d60b, 0x3fb5, 0x480c, 0x88, 0x03, 0x8d, 0xf3, 0xad, 0xcd, 0x3e, 0xf0);
			
			public function HRESULT(IMFRealTimeClient *self, uint32 dwTaskIndex, PWSTR wszClass) RegisterThreads;
			public function HRESULT(IMFRealTimeClient *self) UnregisterThreads;
			public function HRESULT(IMFRealTimeClient *self, uint32 dwWorkQueueId) SetWorkQueue;
		}
		[CRepr]
		public struct IMFRealTimeClientEx : IUnknown
		{
			public const new Guid IID = .(0x03910848, 0xab16, 0x4611, 0xb1, 0x00, 0x17, 0xb8, 0x8a, 0xe2, 0xf2, 0x48);
			
			public function HRESULT(IMFRealTimeClientEx *self, uint32* pdwTaskIndex, PWSTR wszClassName, int32 lBasePriority) RegisterThreadsEx;
			public function HRESULT(IMFRealTimeClientEx *self) UnregisterThreads;
			public function HRESULT(IMFRealTimeClientEx *self, uint32 dwMultithreadedWorkQueueId, int32 lWorkItemBasePriority) SetWorkQueueEx;
		}
		[CRepr]
		public struct IMFSequencerSource : IUnknown
		{
			public const new Guid IID = .(0x197cd219, 0x19cb, 0x4de1, 0xa6, 0x4c, 0xac, 0xf2, 0xed, 0xcb, 0xe5, 0x9e);
			
			public function HRESULT(IMFSequencerSource *self, IMFTopology* pTopology, uint32 dwFlags, uint32* pdwId) AppendTopology;
			public function HRESULT(IMFSequencerSource *self, uint32 dwId) DeleteTopology;
			public function HRESULT(IMFSequencerSource *self, IMFPresentationDescriptor* pPD, uint32* pId, IMFTopology** ppTopology) GetPresentationContext;
			public function HRESULT(IMFSequencerSource *self, uint32 dwId, IMFTopology* pTopology) UpdateTopology;
			public function HRESULT(IMFSequencerSource *self, uint32 dwId, uint32 dwFlags) UpdateTopologyFlags;
		}
		[CRepr]
		public struct IMFMediaSourceTopologyProvider : IUnknown
		{
			public const new Guid IID = .(0x0e1d6009, 0xc9f3, 0x442d, 0x8c, 0x51, 0xa4, 0x2d, 0x2d, 0x49, 0x45, 0x2f);
			
			public function HRESULT(IMFMediaSourceTopologyProvider *self, IMFPresentationDescriptor* pPresentationDescriptor, IMFTopology** ppTopology) GetMediaSourceTopology;
		}
		[CRepr]
		public struct IMFMediaSourcePresentationProvider : IUnknown
		{
			public const new Guid IID = .(0x0e1d600a, 0xc9f3, 0x442d, 0x8c, 0x51, 0xa4, 0x2d, 0x2d, 0x49, 0x45, 0x2f);
			
			public function HRESULT(IMFMediaSourcePresentationProvider *self, IMFPresentationDescriptor* pPresentationDescriptor) ForceEndOfPresentation;
		}
		[CRepr]
		public struct IMFTopologyNodeAttributeEditor : IUnknown
		{
			public const new Guid IID = .(0x676aa6dd, 0x238a, 0x410d, 0xbb, 0x99, 0x65, 0x66, 0x8d, 0x01, 0x60, 0x5a);
			
			public function HRESULT(IMFTopologyNodeAttributeEditor *self, uint64 TopoId, uint32 cUpdates, MFTOPONODE_ATTRIBUTE_UPDATE* pUpdates) UpdateNodeAttributes;
		}
		[CRepr]
		public struct IMFByteStreamBuffering : IUnknown
		{
			public const new Guid IID = .(0x6d66d782, 0x1d4f, 0x4db7, 0x8c, 0x63, 0xcb, 0x8c, 0x77, 0xf1, 0xef, 0x5e);
			
			public function HRESULT(IMFByteStreamBuffering *self, MFBYTESTREAM_BUFFERING_PARAMS* pParams) SetBufferingParams;
			public function HRESULT(IMFByteStreamBuffering *self, BOOL fEnable) EnableBuffering;
			public function HRESULT(IMFByteStreamBuffering *self) StopBuffering;
		}
		[CRepr]
		public struct IMFByteStreamCacheControl : IUnknown
		{
			public const new Guid IID = .(0xf5042ea4, 0x7a96, 0x4a75, 0xaa, 0x7b, 0x2b, 0xe1, 0xef, 0x7f, 0x88, 0xd5);
			
			public function HRESULT(IMFByteStreamCacheControl *self) StopBackgroundTransfer;
		}
		[CRepr]
		public struct IMFByteStreamTimeSeek : IUnknown
		{
			public const new Guid IID = .(0x64976bfa, 0xfb61, 0x4041, 0x90, 0x69, 0x8c, 0x9a, 0x5f, 0x65, 0x9b, 0xeb);
			
			public function HRESULT(IMFByteStreamTimeSeek *self, BOOL* pfTimeSeekIsSupported) IsTimeSeekSupported;
			public function HRESULT(IMFByteStreamTimeSeek *self, uint64 qwTimePosition) TimeSeek;
			public function HRESULT(IMFByteStreamTimeSeek *self, uint64* pqwStartTime, uint64* pqwStopTime, uint64* pqwDuration) GetTimeSeekResult;
		}
		[CRepr]
		public struct IMFByteStreamCacheControl2 : IMFByteStreamCacheControl
		{
			public const new Guid IID = .(0x71ce469c, 0xf34b, 0x49ea, 0xa5, 0x6b, 0x2d, 0x2a, 0x10, 0xe5, 0x11, 0x49);
			
			public function HRESULT(IMFByteStreamCacheControl2 *self, uint32* pcRanges, MF_BYTE_STREAM_CACHE_RANGE** ppRanges) GetByteRanges;
			public function HRESULT(IMFByteStreamCacheControl2 *self, uint64 qwBytes) SetCacheLimit;
			public function HRESULT(IMFByteStreamCacheControl2 *self, BOOL* pfActive) IsBackgroundTransferActive;
		}
		[CRepr]
		public struct IMFNetCredential : IUnknown
		{
			public const new Guid IID = .(0x5b87ef6a, 0x7ed8, 0x434f, 0xba, 0x0e, 0x18, 0x4f, 0xac, 0x16, 0x28, 0xd1);
			
			public function HRESULT(IMFNetCredential *self, uint8* pbData, uint32 cbData, BOOL fDataIsEncrypted) SetUser;
			public function HRESULT(IMFNetCredential *self, uint8* pbData, uint32 cbData, BOOL fDataIsEncrypted) SetPassword;
			public function HRESULT(IMFNetCredential *self, uint8* pbData, uint32* pcbData, BOOL fEncryptData) GetUser;
			public function HRESULT(IMFNetCredential *self, uint8* pbData, uint32* pcbData, BOOL fEncryptData) GetPassword;
			public function HRESULT(IMFNetCredential *self, BOOL* pfLoggedOnUser) LoggedOnUser;
		}
		[CRepr]
		public struct IMFNetCredentialManager : IUnknown
		{
			public const new Guid IID = .(0x5b87ef6b, 0x7ed8, 0x434f, 0xba, 0x0e, 0x18, 0x4f, 0xac, 0x16, 0x28, 0xd1);
			
			public function HRESULT(IMFNetCredentialManager *self, MFNetCredentialManagerGetParam* pParam, IMFAsyncCallback* pCallback, IUnknown* pState) BeginGetCredentials;
			public function HRESULT(IMFNetCredentialManager *self, IMFAsyncResult* pResult, IMFNetCredential** ppCred) EndGetCredentials;
			public function HRESULT(IMFNetCredentialManager *self, IMFNetCredential* pCred, BOOL fGood) SetGood;
		}
		[CRepr]
		public struct IMFNetCredentialCache : IUnknown
		{
			public const new Guid IID = .(0x5b87ef6c, 0x7ed8, 0x434f, 0xba, 0x0e, 0x18, 0x4f, 0xac, 0x16, 0x28, 0xd1);
			
			public function HRESULT(IMFNetCredentialCache *self, PWSTR pszUrl, PWSTR pszRealm, uint32 dwAuthenticationFlags, IMFNetCredential** ppCred, uint32* pdwRequirementsFlags) GetCredential;
			public function HRESULT(IMFNetCredentialCache *self, IMFNetCredential* pCred, BOOL fGood) SetGood;
			public function HRESULT(IMFNetCredentialCache *self, IMFNetCredential* pCred, uint32 dwOptionsFlags) SetUserOptions;
		}
		[CRepr]
		public struct IMFSSLCertificateManager : IUnknown
		{
			public const new Guid IID = .(0x61f7d887, 0x1230, 0x4a8b, 0xae, 0xba, 0x8a, 0xd4, 0x34, 0xd1, 0xa6, 0x4d);
			
			public function HRESULT(IMFSSLCertificateManager *self, PWSTR pszURL, uint8** ppbData, uint32* pcbData) GetClientCertificate;
			public function HRESULT(IMFSSLCertificateManager *self, PWSTR pszURL, IMFAsyncCallback* pCallback, IUnknown* pState) BeginGetClientCertificate;
			public function HRESULT(IMFSSLCertificateManager *self, IMFAsyncResult* pResult, uint8** ppbData, uint32* pcbData) EndGetClientCertificate;
			public function HRESULT(IMFSSLCertificateManager *self, PWSTR pszURL, BOOL* pfOverrideAutomaticCheck, BOOL* pfClientCertificateAvailable) GetCertificatePolicy;
			public function HRESULT(IMFSSLCertificateManager *self, PWSTR pszURL, uint8* pbData, uint32 cbData, BOOL* pfIsGood) OnServerCertificate;
		}
		[CRepr]
		public struct IMFNetResourceFilter : IUnknown
		{
			public const new Guid IID = .(0x091878a3, 0xbf11, 0x4a5c, 0xbc, 0x9f, 0x33, 0x99, 0x5b, 0x06, 0xef, 0x2d);
			
			public function HRESULT(IMFNetResourceFilter *self, PWSTR pszUrl, int16* pvbCancel) OnRedirect;
			public function HRESULT(IMFNetResourceFilter *self, PWSTR pszUrl) OnSendingRequest;
		}
		[CRepr]
		public struct IMFSourceOpenMonitor : IUnknown
		{
			public const new Guid IID = .(0x059054b3, 0x027c, 0x494c, 0xa2, 0x7d, 0x91, 0x13, 0x29, 0x1c, 0xf8, 0x7f);
			
			public function HRESULT(IMFSourceOpenMonitor *self, IMFMediaEvent* pEvent) OnSourceEvent;
		}
		[CRepr]
		public struct IMFNetProxyLocator : IUnknown
		{
			public const new Guid IID = .(0xe9cd0383, 0xa268, 0x4bb4, 0x82, 0xde, 0x65, 0x8d, 0x53, 0x57, 0x4d, 0x41);
			
			public function HRESULT(IMFNetProxyLocator *self, PWSTR pszHost, PWSTR pszUrl, BOOL fReserved) FindFirstProxy;
			public function HRESULT(IMFNetProxyLocator *self) FindNextProxy;
			public function HRESULT(IMFNetProxyLocator *self, HRESULT hrOp) RegisterProxyResult;
			public function HRESULT(IMFNetProxyLocator *self, char16* pszStr, uint32* pcchStr) GetCurrentProxy;
			public function HRESULT(IMFNetProxyLocator *self, IMFNetProxyLocator** ppProxyLocator) Clone;
		}
		[CRepr]
		public struct IMFNetProxyLocatorFactory : IUnknown
		{
			public const new Guid IID = .(0xe9cd0384, 0xa268, 0x4bb4, 0x82, 0xde, 0x65, 0x8d, 0x53, 0x57, 0x4d, 0x41);
			
			public function HRESULT(IMFNetProxyLocatorFactory *self, PWSTR pszProtocol, IMFNetProxyLocator** ppProxyLocator) CreateProxyLocator;
		}
		[CRepr]
		public struct IMFSaveJob : IUnknown
		{
			public const new Guid IID = .(0xe9931663, 0x80bf, 0x4c6e, 0x98, 0xaf, 0x5d, 0xcf, 0x58, 0x74, 0x7d, 0x1f);
			
			public function HRESULT(IMFSaveJob *self, IMFByteStream* pStream, IMFAsyncCallback* pCallback, IUnknown* pState) BeginSave;
			public function HRESULT(IMFSaveJob *self, IMFAsyncResult* pResult) EndSave;
			public function HRESULT(IMFSaveJob *self) CancelSave;
			public function HRESULT(IMFSaveJob *self, uint32* pdwPercentComplete) GetProgress;
		}
		[CRepr]
		public struct IMFNetSchemeHandlerConfig : IUnknown
		{
			public const new Guid IID = .(0x7be19e73, 0xc9bf, 0x468a, 0xac, 0x5a, 0xa5, 0xe8, 0x65, 0x3b, 0xec, 0x87);
			
			public function HRESULT(IMFNetSchemeHandlerConfig *self, uint32* pcProtocols) GetNumberOfSupportedProtocols;
			public function HRESULT(IMFNetSchemeHandlerConfig *self, uint32 nProtocolIndex, MFNETSOURCE_PROTOCOL_TYPE* pnProtocolType) GetSupportedProtocolType;
			public function HRESULT(IMFNetSchemeHandlerConfig *self) ResetProtocolRolloverSettings;
		}
		[CRepr]
		public struct IMFSchemeHandler : IUnknown
		{
			public const new Guid IID = .(0x6d4c7b74, 0x52a0, 0x4bb7, 0xb0, 0xdb, 0x55, 0xf2, 0x9f, 0x47, 0xa6, 0x68);
			
			public function HRESULT(IMFSchemeHandler *self, PWSTR pwszURL, uint32 dwFlags, IPropertyStore* pProps, IUnknown** ppIUnknownCancelCookie, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginCreateObject;
			public function HRESULT(IMFSchemeHandler *self, IMFAsyncResult* pResult, MF_OBJECT_TYPE* pObjectType, IUnknown** ppObject) EndCreateObject;
			public function HRESULT(IMFSchemeHandler *self, IUnknown* pIUnknownCancelCookie) CancelObjectCreation;
		}
		[CRepr]
		public struct IMFByteStreamHandler : IUnknown
		{
			public const new Guid IID = .(0xbb420aa4, 0x765b, 0x4a1f, 0x91, 0xfe, 0xd6, 0xa8, 0xa1, 0x43, 0x92, 0x4c);
			
			public function HRESULT(IMFByteStreamHandler *self, IMFByteStream* pByteStream, PWSTR pwszURL, uint32 dwFlags, IPropertyStore* pProps, IUnknown** ppIUnknownCancelCookie, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginCreateObject;
			public function HRESULT(IMFByteStreamHandler *self, IMFAsyncResult* pResult, MF_OBJECT_TYPE* pObjectType, IUnknown** ppObject) EndCreateObject;
			public function HRESULT(IMFByteStreamHandler *self, IUnknown* pIUnknownCancelCookie) CancelObjectCreation;
			public function HRESULT(IMFByteStreamHandler *self, uint64* pqwBytes) GetMaxNumberOfBytesRequiredForResolution;
		}
		[CRepr]
		public struct IMFTrustedInput : IUnknown
		{
			public const new Guid IID = .(0x542612c4, 0xa1b8, 0x4632, 0xb5, 0x21, 0xde, 0x11, 0xea, 0x64, 0xa0, 0xb0);
			
			public function HRESULT(IMFTrustedInput *self, uint32 dwStreamID, Guid* riid, IUnknown** ppunkObject) GetInputTrustAuthority;
		}
		[CRepr]
		public struct IMFInputTrustAuthority : IUnknown
		{
			public const new Guid IID = .(0xd19f8e98, 0xb126, 0x4446, 0x89, 0x0c, 0x5d, 0xcb, 0x7a, 0xd7, 0x14, 0x53);
			
			public function HRESULT(IMFInputTrustAuthority *self, Guid* riid, void** ppv) GetDecrypter;
			public function HRESULT(IMFInputTrustAuthority *self, MFPOLICYMANAGER_ACTION Action, IMFActivate** ppContentEnablerActivate) RequestAccess;
			public function HRESULT(IMFInputTrustAuthority *self, MFPOLICYMANAGER_ACTION Action, IMFOutputPolicy** ppPolicy) GetPolicy;
			public function HRESULT(IMFInputTrustAuthority *self, MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS* pParam) BindAccess;
			public function HRESULT(IMFInputTrustAuthority *self, MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS* pParam) UpdateAccess;
			public function HRESULT(IMFInputTrustAuthority *self) Reset;
		}
		[CRepr]
		public struct IMFTrustedOutput : IUnknown
		{
			public const new Guid IID = .(0xd19f8e95, 0xb126, 0x4446, 0x89, 0x0c, 0x5d, 0xcb, 0x7a, 0xd7, 0x14, 0x53);
			
			public function HRESULT(IMFTrustedOutput *self, uint32* pcOutputTrustAuthorities) GetOutputTrustAuthorityCount;
			public function HRESULT(IMFTrustedOutput *self, uint32 dwIndex, IMFOutputTrustAuthority** ppauthority) GetOutputTrustAuthorityByIndex;
			public function HRESULT(IMFTrustedOutput *self, BOOL* pfIsFinal) IsFinal;
		}
		[CRepr]
		public struct IMFOutputTrustAuthority : IUnknown
		{
			public const new Guid IID = .(0xd19f8e94, 0xb126, 0x4446, 0x89, 0x0c, 0x5d, 0xcb, 0x7a, 0xd7, 0x14, 0x53);
			
			public function HRESULT(IMFOutputTrustAuthority *self, MFPOLICYMANAGER_ACTION* pAction) GetAction;
			public function HRESULT(IMFOutputTrustAuthority *self, IMFOutputPolicy** ppPolicy, uint32 nPolicy, uint8** ppbTicket, uint32* pcbTicket) SetPolicy;
		}
		[CRepr]
		public struct IMFOutputPolicy : IMFAttributes
		{
			public const new Guid IID = .(0x7f00f10a, 0xdaed, 0x41af, 0xab, 0x26, 0x5f, 0xdf, 0xa4, 0xdf, 0xba, 0x3c);
			
			public function HRESULT(IMFOutputPolicy *self, uint32 dwAttributes, Guid guidOutputSubType, Guid* rgGuidProtectionSchemasSupported, uint32 cProtectionSchemasSupported, IMFCollection** ppRequiredProtectionSchemas) GenerateRequiredSchemas;
			public function HRESULT(IMFOutputPolicy *self, Guid* pguidOriginatorID) GetOriginatorID;
			public function HRESULT(IMFOutputPolicy *self, uint32* pdwMinimumGRLVersion) GetMinimumGRLVersion;
		}
		[CRepr]
		public struct IMFOutputSchema : IMFAttributes
		{
			public const new Guid IID = .(0x7be0fc5b, 0xabd9, 0x44fb, 0xa5, 0xc8, 0xf5, 0x01, 0x36, 0xe7, 0x15, 0x99);
			
			public function HRESULT(IMFOutputSchema *self, Guid* pguidSchemaType) GetSchemaType;
			public function HRESULT(IMFOutputSchema *self, uint32* pdwVal) GetConfigurationData;
			public function HRESULT(IMFOutputSchema *self, Guid* pguidOriginatorID) GetOriginatorID;
		}
		[CRepr]
		public struct IMFSecureChannel : IUnknown
		{
			public const new Guid IID = .(0xd0ae555d, 0x3b12, 0x4d97, 0xb0, 0x60, 0x09, 0x90, 0xbc, 0x5a, 0xeb, 0x67);
			
			public function HRESULT(IMFSecureChannel *self, uint8** ppCert, uint32* pcbCert) GetCertificate;
			public function HRESULT(IMFSecureChannel *self, uint8* pbEncryptedSessionKey, uint32 cbSessionKey) SetupSession;
		}
		[CRepr]
		public struct IMFSampleProtection : IUnknown
		{
			public const new Guid IID = .(0x8e36395f, 0xc7b9, 0x43c4, 0xa5, 0x4d, 0x51, 0x2b, 0x4a, 0xf6, 0x3c, 0x95);
			
			public function HRESULT(IMFSampleProtection *self, uint32* pdwVersion) GetInputProtectionVersion;
			public function HRESULT(IMFSampleProtection *self, uint32* pdwVersion) GetOutputProtectionVersion;
			public function HRESULT(IMFSampleProtection *self, uint32 dwVersion, uint8** ppCert, uint32* pcbCert) GetProtectionCertificate;
			public function HRESULT(IMFSampleProtection *self, uint32 dwVersion, uint32 dwOutputId, uint8* pbCert, uint32 cbCert, uint8** ppbSeed, uint32* pcbSeed) InitOutputProtection;
			public function HRESULT(IMFSampleProtection *self, uint32 dwVersion, uint32 dwInputId, uint8* pbSeed, uint32 cbSeed) InitInputProtection;
		}
		[CRepr]
		public struct IMFMediaSinkPreroll : IUnknown
		{
			public const new Guid IID = .(0x5dfd4b2a, 0x7674, 0x4110, 0xa4, 0xe6, 0x8a, 0x68, 0xfd, 0x5f, 0x36, 0x88);
			
			public function HRESULT(IMFMediaSinkPreroll *self, int64 hnsUpcomingStartTime) NotifyPreroll;
		}
		[CRepr]
		public struct IMFFinalizableMediaSink : IMFMediaSink
		{
			public const new Guid IID = .(0xeaecb74a, 0x9a50, 0x42ce, 0x95, 0x41, 0x6a, 0x7f, 0x57, 0xaa, 0x4a, 0xd7);
			
			public function HRESULT(IMFFinalizableMediaSink *self, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginFinalize;
			public function HRESULT(IMFFinalizableMediaSink *self, IMFAsyncResult* pResult) EndFinalize;
		}
		[CRepr]
		public struct IMFStreamingSinkConfig : IUnknown
		{
			public const new Guid IID = .(0x9db7aa41, 0x3cc5, 0x40d4, 0x85, 0x09, 0x55, 0x58, 0x04, 0xad, 0x34, 0xcc);
			
			public function HRESULT(IMFStreamingSinkConfig *self, BOOL fSeekOffsetIsByteOffset, uint64 qwSeekOffset) StartStreaming;
		}
		[CRepr]
		public struct IMFRemoteProxy : IUnknown
		{
			public const new Guid IID = .(0x994e23ad, 0x1cc2, 0x493c, 0xb9, 0xfa, 0x46, 0xf1, 0xcb, 0x04, 0x0f, 0xa4);
			
			public function HRESULT(IMFRemoteProxy *self, Guid* riid, void** ppv) GetRemoteObject;
			public function HRESULT(IMFRemoteProxy *self, Guid* riid, void** ppv) GetRemoteHost;
		}
		[CRepr]
		public struct IMFObjectReferenceStream : IUnknown
		{
			public const new Guid IID = .(0x09ef5be3, 0xc8a7, 0x469e, 0x8b, 0x70, 0x73, 0xbf, 0x25, 0xbb, 0x19, 0x3f);
			
			public function HRESULT(IMFObjectReferenceStream *self, Guid* riid, IUnknown* pUnk) SaveReference;
			public function HRESULT(IMFObjectReferenceStream *self, Guid* riid, void** ppv) LoadReference;
		}
		[CRepr]
		public struct IMFPMPHost : IUnknown
		{
			public const new Guid IID = .(0xf70ca1a9, 0xfdc7, 0x4782, 0xb9, 0x94, 0xad, 0xff, 0xb1, 0xc9, 0x86, 0x06);
			
			public function HRESULT(IMFPMPHost *self) LockProcess;
			public function HRESULT(IMFPMPHost *self) UnlockProcess;
			public function HRESULT(IMFPMPHost *self, Guid* clsid, IStream* pStream, Guid* riid, void** ppv) CreateObjectByCLSID;
		}
		[CRepr]
		public struct IMFPMPClient : IUnknown
		{
			public const new Guid IID = .(0x6c4e655d, 0xead8, 0x4421, 0xb6, 0xb9, 0x54, 0xdc, 0xdb, 0xbd, 0xf8, 0x20);
			
			public function HRESULT(IMFPMPClient *self, IMFPMPHost* pPMPHost) SetPMPHost;
		}
		[CRepr]
		public struct IMFPMPServer : IUnknown
		{
			public const new Guid IID = .(0x994e23af, 0x1cc2, 0x493c, 0xb9, 0xfa, 0x46, 0xf1, 0xcb, 0x04, 0x0f, 0xa4);
			
			public function HRESULT(IMFPMPServer *self) LockProcess;
			public function HRESULT(IMFPMPServer *self) UnlockProcess;
			public function HRESULT(IMFPMPServer *self, Guid* clsid, Guid* riid, void** ppObject) CreateObjectByCLSID;
		}
		[CRepr]
		public struct IMFRemoteDesktopPlugin : IUnknown
		{
			public const new Guid IID = .(0x1cde6309, 0xcae0, 0x4940, 0x90, 0x7e, 0xc1, 0xec, 0x9c, 0x3d, 0x1d, 0x4a);
			
			public function HRESULT(IMFRemoteDesktopPlugin *self, IMFTopology* pTopology) UpdateTopology;
		}
		[CRepr]
		public struct IMFSAMIStyle : IUnknown
		{
			public const new Guid IID = .(0xa7e025dd, 0x5303, 0x4a62, 0x89, 0xd6, 0xe7, 0x47, 0xe1, 0xef, 0xac, 0x73);
			
			public function HRESULT(IMFSAMIStyle *self, uint32* pdwCount) GetStyleCount;
			public function HRESULT(IMFSAMIStyle *self, PROPVARIANT* pPropVarStyleArray) GetStyles;
			public function HRESULT(IMFSAMIStyle *self, PWSTR pwszStyle) SetSelectedStyle;
			public function HRESULT(IMFSAMIStyle *self, PWSTR* ppwszStyle) GetSelectedStyle;
		}
		[CRepr]
		public struct IMFTranscodeProfile : IUnknown
		{
			public const new Guid IID = .(0x4adfdba3, 0x7ab0, 0x4953, 0xa6, 0x2b, 0x46, 0x1e, 0x7f, 0xf3, 0xda, 0x1e);
			
			public function HRESULT(IMFTranscodeProfile *self, IMFAttributes* pAttrs) SetAudioAttributes;
			public function HRESULT(IMFTranscodeProfile *self, IMFAttributes** ppAttrs) GetAudioAttributes;
			public function HRESULT(IMFTranscodeProfile *self, IMFAttributes* pAttrs) SetVideoAttributes;
			public function HRESULT(IMFTranscodeProfile *self, IMFAttributes** ppAttrs) GetVideoAttributes;
			public function HRESULT(IMFTranscodeProfile *self, IMFAttributes* pAttrs) SetContainerAttributes;
			public function HRESULT(IMFTranscodeProfile *self, IMFAttributes** ppAttrs) GetContainerAttributes;
		}
		[CRepr]
		public struct IMFTranscodeSinkInfoProvider : IUnknown
		{
			public const new Guid IID = .(0x8cffcd2e, 0x5a03, 0x4a3a, 0xaf, 0xf7, 0xed, 0xcd, 0x10, 0x7c, 0x62, 0x0e);
			
			public function HRESULT(IMFTranscodeSinkInfoProvider *self, PWSTR pwszFileName) SetOutputFile;
			public function HRESULT(IMFTranscodeSinkInfoProvider *self, IMFActivate* pByteStreamActivate) SetOutputByteStream;
			public function HRESULT(IMFTranscodeSinkInfoProvider *self, IMFTranscodeProfile* pProfile) SetProfile;
			public function HRESULT(IMFTranscodeSinkInfoProvider *self, MF_TRANSCODE_SINK_INFO* pSinkInfo) GetSinkInfo;
		}
		[CRepr]
		public struct IMFFieldOfUseMFTUnlock : IUnknown
		{
			public const new Guid IID = .(0x508e71d3, 0xec66, 0x4fc3, 0x87, 0x75, 0xb4, 0xb9, 0xed, 0x6b, 0xa8, 0x47);
			
			public function HRESULT(IMFFieldOfUseMFTUnlock *self, IUnknown* pUnkMFT) Unlock;
		}
		[CRepr]
		public struct IMFLocalMFTRegistration : IUnknown
		{
			public const new Guid IID = .(0x149c4d73, 0xb4be, 0x4f8d, 0x8b, 0x87, 0x07, 0x9e, 0x92, 0x6b, 0x6a, 0xdd);
			
			public function HRESULT(IMFLocalMFTRegistration *self, MFT_REGISTRATION_INFO* pMFTs, uint32 cMFTs) RegisterMFTs;
		}
		[CRepr]
		public struct IMFCapturePhotoConfirmation : IUnknown
		{
			public const new Guid IID = .(0x19f68549, 0xca8a, 0x4706, 0xa4, 0xef, 0x48, 0x1d, 0xbc, 0x95, 0xe1, 0x2c);
			
			public function HRESULT(IMFCapturePhotoConfirmation *self, IMFAsyncCallback* pNotificationCallback) SetPhotoConfirmationCallback;
			public function HRESULT(IMFCapturePhotoConfirmation *self, Guid subtype) SetPixelFormat;
			public function HRESULT(IMFCapturePhotoConfirmation *self, Guid* subtype) GetPixelFormat;
		}
		[CRepr]
		public struct IMFPMPHostApp : IUnknown
		{
			public const new Guid IID = .(0x84d2054a, 0x3aa1, 0x4728, 0xa3, 0xb0, 0x44, 0x0a, 0x41, 0x8c, 0xf4, 0x9c);
			
			public function HRESULT(IMFPMPHostApp *self) LockProcess;
			public function HRESULT(IMFPMPHostApp *self) UnlockProcess;
			public function HRESULT(IMFPMPHostApp *self, PWSTR id, IStream* pStream, Guid* riid, void** ppv) ActivateClassById;
		}
		[CRepr]
		public struct IMFPMPClientApp : IUnknown
		{
			public const new Guid IID = .(0xc004f646, 0xbe2c, 0x48f3, 0x93, 0xa2, 0xa0, 0x98, 0x3e, 0xba, 0x11, 0x08);
			
			public function HRESULT(IMFPMPClientApp *self, IMFPMPHostApp* pPMPHost) SetPMPHost;
		}
		[CRepr]
		public struct IMFMediaStreamSourceSampleRequest : IUnknown
		{
			public const new Guid IID = .(0x380b9af9, 0xa85b, 0x4e78, 0xa2, 0xaf, 0xea, 0x5c, 0xe6, 0x45, 0xc6, 0xb4);
			
			public function HRESULT(IMFMediaStreamSourceSampleRequest *self, IMFSample* value) SetSample;
		}
		[CRepr]
		public struct IMFTrackedSample : IUnknown
		{
			public const new Guid IID = .(0x245bf8e9, 0x0755, 0x40f7, 0x88, 0xa5, 0xae, 0x0f, 0x18, 0xd5, 0x5e, 0x17);
			
			public function HRESULT(IMFTrackedSample *self, IMFAsyncCallback* pSampleAllocator, IUnknown* pUnkState) SetAllocator;
		}
		[CRepr]
		public struct IMFProtectedEnvironmentAccess : IUnknown
		{
			public const new Guid IID = .(0xef5dc845, 0xf0d9, 0x4ec9, 0xb0, 0x0c, 0xcb, 0x51, 0x83, 0xd3, 0x84, 0x34);
			
			public function HRESULT(IMFProtectedEnvironmentAccess *self, uint32 inputLength, uint8* input, uint32 outputLength, uint8* output) Call;
			public function HRESULT(IMFProtectedEnvironmentAccess *self, uint32* outputLength, uint8** output) ReadGRL;
		}
		[CRepr]
		public struct IMFSignedLibrary : IUnknown
		{
			public const new Guid IID = .(0x4a724bca, 0xff6a, 0x4c07, 0x8e, 0x0d, 0x7a, 0x35, 0x84, 0x21, 0xcf, 0x06);
			
			public function HRESULT(IMFSignedLibrary *self, PSTR name, void** address) GetProcedureAddress;
		}
		[CRepr]
		public struct IMFSystemId : IUnknown
		{
			public const new Guid IID = .(0xfff4af3a, 0x1fc1, 0x4ef9, 0xa2, 0x9b, 0xd2, 0x6c, 0x49, 0xe2, 0xf3, 0x1a);
			
			public function HRESULT(IMFSystemId *self, uint32* size, uint8** data) GetData;
			public function HRESULT(IMFSystemId *self, uint32 stage, uint32 cbIn, uint8* pbIn, uint32* pcbOut, uint8** ppbOut) Setup;
		}
		[CRepr]
		public struct IMFContentProtectionDevice : IUnknown
		{
			public const new Guid IID = .(0xe6257174, 0xa060, 0x4c9a, 0xa0, 0x88, 0x3b, 0x1b, 0x47, 0x1c, 0xad, 0x28);
			
			public function HRESULT(IMFContentProtectionDevice *self, uint32 FunctionId, uint32 InputBufferByteCount, uint8* InputBuffer, uint32* OutputBufferByteCount, uint8* OutputBuffer) InvokeFunction;
			public function HRESULT(IMFContentProtectionDevice *self, uint32* PrivateInputByteCount, uint32* PrivateOutputByteCount) GetPrivateDataByteCount;
		}
		[CRepr]
		public struct IMFContentDecryptorContext : IUnknown
		{
			public const new Guid IID = .(0x7ec4b1bd, 0x43fb, 0x4763, 0x85, 0xd2, 0x64, 0xfc, 0xb5, 0xc5, 0xf4, 0xcb);
			
			public function HRESULT(IMFContentDecryptorContext *self, uint32 InputPrivateDataByteCount, void* InputPrivateData, uint64* OutputPrivateData) InitializeHardwareKey;
		}
		[CRepr]
		public struct IMFNetCrossOriginSupport : IUnknown
		{
			public const new Guid IID = .(0xbc2b7d44, 0xa72d, 0x49d5, 0x83, 0x76, 0x14, 0x80, 0xde, 0xe5, 0x8b, 0x22);
			
			public function HRESULT(IMFNetCrossOriginSupport *self, MF_CROSS_ORIGIN_POLICY* pPolicy) GetCrossOriginPolicy;
			public function HRESULT(IMFNetCrossOriginSupport *self, PWSTR* wszSourceOrigin) GetSourceOrigin;
			public function HRESULT(IMFNetCrossOriginSupport *self, PWSTR wszURL, BOOL* pfIsSameOrigin) IsSameOrigin;
		}
		[CRepr]
		public struct IMFHttpDownloadRequest : IUnknown
		{
			public const new Guid IID = .(0xf779fddf, 0x26e7, 0x4270, 0x8a, 0x8b, 0xb9, 0x83, 0xd1, 0x85, 0x9d, 0xe0);
			
			public function HRESULT(IMFHttpDownloadRequest *self, PWSTR szHeader) AddHeader;
			public function HRESULT(IMFHttpDownloadRequest *self, uint8* pbPayload, uint32 cbPayload, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginSendRequest;
			public function HRESULT(IMFHttpDownloadRequest *self, IMFAsyncResult* pResult) EndSendRequest;
			public function HRESULT(IMFHttpDownloadRequest *self, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginReceiveResponse;
			public function HRESULT(IMFHttpDownloadRequest *self, IMFAsyncResult* pResult) EndReceiveResponse;
			public function HRESULT(IMFHttpDownloadRequest *self, uint8* pb, uint32 cb, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginReadPayload;
			public function HRESULT(IMFHttpDownloadRequest *self, IMFAsyncResult* pResult, uint64* pqwOffset, uint32* pcbRead) EndReadPayload;
			public function HRESULT(IMFHttpDownloadRequest *self, PWSTR szHeaderName, uint32 dwIndex, PWSTR* ppszHeaderValue) QueryHeader;
			public function HRESULT(IMFHttpDownloadRequest *self, PWSTR* ppszURL) GetURL;
			public function HRESULT(IMFHttpDownloadRequest *self, BOOL* pfNullSourceOrigin) HasNullSourceOrigin;
			public function HRESULT(IMFHttpDownloadRequest *self, uint64* pqwStartTime, uint64* pqwStopTime, uint64* pqwDuration) GetTimeSeekResult;
			public function HRESULT(IMFHttpDownloadRequest *self, uint32* pdwHttpStatus) GetHttpStatus;
			public function HRESULT(IMFHttpDownloadRequest *self, BOOL* pfAtEndOfPayload) GetAtEndOfPayload;
			public function HRESULT(IMFHttpDownloadRequest *self, uint64* pqwTotalLength) GetTotalLength;
			public function HRESULT(IMFHttpDownloadRequest *self, uint64* pqwRangeEnd) GetRangeEndOffset;
			public function HRESULT(IMFHttpDownloadRequest *self) Close;
		}
		[CRepr]
		public struct IMFHttpDownloadSession : IUnknown
		{
			public const new Guid IID = .(0x71fa9a2c, 0x53ce, 0x4662, 0xa1, 0x32, 0x1a, 0x7e, 0x8c, 0xbf, 0x62, 0xdb);
			
			public function HRESULT(IMFHttpDownloadSession *self, PWSTR szServerName, uint32 nPort) SetServer;
			public function HRESULT(IMFHttpDownloadSession *self, PWSTR szObjectName, BOOL fBypassProxyCache, BOOL fSecure, PWSTR szVerb, PWSTR szReferrer, IMFHttpDownloadRequest** ppRequest) CreateRequest;
			public function HRESULT(IMFHttpDownloadSession *self) Close;
		}
		[CRepr]
		public struct IMFHttpDownloadSessionProvider : IUnknown
		{
			public const new Guid IID = .(0x1b4cf4b9, 0x3a16, 0x4115, 0x83, 0x9d, 0x03, 0xcc, 0x5c, 0x99, 0xdf, 0x01);
			
			public function HRESULT(IMFHttpDownloadSessionProvider *self, PWSTR wszScheme, IMFHttpDownloadSession** ppDownloadSession) CreateHttpDownloadSession;
		}
		[CRepr]
		public struct IMFMediaSource2 : IMFMediaSourceEx
		{
			public const new Guid IID = .(0xfbb03414, 0xd13b, 0x4786, 0x83, 0x19, 0x5a, 0xc5, 0x1f, 0xc0, 0xa1, 0x36);
			
			public function HRESULT(IMFMediaSource2 *self, uint32 dwStreamID, IMFMediaType* pMediaType) SetMediaType;
		}
		[CRepr]
		public struct IMFMediaStream2 : IMFMediaStream
		{
			public const new Guid IID = .(0xc5bc37d6, 0x75c7, 0x46a1, 0xa1, 0x32, 0x81, 0xb5, 0xf7, 0x23, 0xc2, 0x0f);
			
			public function HRESULT(IMFMediaStream2 *self, MF_STREAM_STATE value) SetStreamState;
			public function HRESULT(IMFMediaStream2 *self, MF_STREAM_STATE* value) GetStreamState;
		}
		[CRepr]
		public struct IMFSensorDevice : IUnknown
		{
			public const new Guid IID = .(0xfb9f48f2, 0x2a18, 0x4e28, 0x97, 0x30, 0x78, 0x6f, 0x30, 0xf0, 0x4d, 0xc4);
			
			public function HRESULT(IMFSensorDevice *self, uint64* pDeviceId) GetDeviceId;
			public function HRESULT(IMFSensorDevice *self, MFSensorDeviceType* pType) GetDeviceType;
			public function HRESULT(IMFSensorDevice *self, uint64* pFlags) GetFlags;
			public function HRESULT(IMFSensorDevice *self, char16* SymbolicLink, int32 cchSymbolicLink, int32* pcchWritten) GetSymbolicLink;
			public function HRESULT(IMFSensorDevice *self, IMFAttributes** ppAttributes) GetDeviceAttributes;
			public function HRESULT(IMFSensorDevice *self, MFSensorStreamType eType, uint32* pdwCount) GetStreamAttributesCount;
			public function HRESULT(IMFSensorDevice *self, MFSensorStreamType eType, uint32 dwIndex, IMFAttributes** ppAttributes) GetStreamAttributes;
			public function HRESULT(IMFSensorDevice *self, MFSensorDeviceMode eMode) SetSensorDeviceMode;
			public function HRESULT(IMFSensorDevice *self, MFSensorDeviceMode* peMode) GetSensorDeviceMode;
		}
		[CRepr]
		public struct IMFSensorGroup : IUnknown
		{
			public const new Guid IID = .(0x4110243a, 0x9757, 0x461f, 0x89, 0xf1, 0xf2, 0x23, 0x45, 0xbc, 0xab, 0x4e);
			
			public function HRESULT(IMFSensorGroup *self, char16* SymbolicLink, int32 cchSymbolicLink, int32* pcchWritten) GetSymbolicLink;
			public function HRESULT(IMFSensorGroup *self, uint64* pFlags) GetFlags;
			public function HRESULT(IMFSensorGroup *self, IMFAttributes** ppAttributes) GetSensorGroupAttributes;
			public function HRESULT(IMFSensorGroup *self, uint32* pdwCount) GetSensorDeviceCount;
			public function HRESULT(IMFSensorGroup *self, uint32 dwIndex, IMFSensorDevice** ppDevice) GetSensorDevice;
			public function HRESULT(IMFSensorGroup *self, uint32 dwIndex) SetDefaultSensorDeviceIndex;
			public function HRESULT(IMFSensorGroup *self, uint32* pdwIndex) GetDefaultSensorDeviceIndex;
			public function HRESULT(IMFSensorGroup *self, IMFMediaSource** ppSource) CreateMediaSource;
		}
		[CRepr]
		public struct IMFSensorStream : IMFAttributes
		{
			public const new Guid IID = .(0xe9a42171, 0xc56e, 0x498a, 0x8b, 0x39, 0xed, 0xa5, 0xa0, 0x70, 0xb7, 0xfc);
			
			public function HRESULT(IMFSensorStream *self, uint32* pdwCount) GetMediaTypeCount;
			public function HRESULT(IMFSensorStream *self, uint32 dwIndex, IMFMediaType** ppMediaType) GetMediaType;
			public function HRESULT(IMFSensorStream *self, IMFSensorStream** ppStream) CloneSensorStream;
		}
		[CRepr]
		public struct IMFSensorTransformFactory : IUnknown
		{
			public const new Guid IID = .(0xeed9c2ee, 0x66b4, 0x4f18, 0xa6, 0x97, 0xac, 0x7d, 0x39, 0x60, 0x21, 0x5c);
			
			public function HRESULT(IMFSensorTransformFactory *self, IMFAttributes** ppAttributes) GetFactoryAttributes;
			public function HRESULT(IMFSensorTransformFactory *self, uint32 dwMaxTransformCount, IMFCollection* pSensorDevices, IMFAttributes* pAttributes) InitializeFactory;
			public function HRESULT(IMFSensorTransformFactory *self, uint32* pdwCount) GetTransformCount;
			public function HRESULT(IMFSensorTransformFactory *self, uint32 TransformIndex, Guid* pguidTransformId, IMFAttributes** ppAttributes, IMFCollection** ppStreamInformation) GetTransformInformation;
			public function HRESULT(IMFSensorTransformFactory *self, Guid* guidSensorTransformID, IMFAttributes* pAttributes, IMFDeviceTransform** ppDeviceMFT) CreateTransform;
		}
		[CRepr]
		public struct IMFSensorProfile : IUnknown
		{
			public const new Guid IID = .(0x22f765d1, 0x8dab, 0x4107, 0x84, 0x6d, 0x56, 0xba, 0xf7, 0x22, 0x15, 0xe7);
			
			public function HRESULT(IMFSensorProfile *self, SENSORPROFILEID* pId) GetProfileId;
			public function HRESULT(IMFSensorProfile *self, uint32 StreamId, PWSTR wzFilterSetString) AddProfileFilter;
			public function HRESULT(IMFSensorProfile *self, uint32 StreamId, IMFMediaType* pMediaType, BOOL* pfSupported) IsMediaTypeSupported;
			public function HRESULT(IMFSensorProfile *self, PWSTR wzBlockedControl) AddBlockedControl;
		}
		[CRepr]
		public struct IMFSensorProfileCollection : IUnknown
		{
			public const new Guid IID = .(0xc95ea55b, 0x0187, 0x48be, 0x93, 0x53, 0x8d, 0x25, 0x07, 0x66, 0x23, 0x51);
			
			public function uint32(IMFSensorProfileCollection *self) GetProfileCount;
			public function HRESULT(IMFSensorProfileCollection *self, uint32 Index, IMFSensorProfile** ppProfile) GetProfile;
			public function HRESULT(IMFSensorProfileCollection *self, IMFSensorProfile* pProfile) AddProfile;
			public function HRESULT(IMFSensorProfileCollection *self, SENSORPROFILEID* ProfileId, IMFSensorProfile** ppProfile) FindProfile;
			public function void(IMFSensorProfileCollection *self, uint32 Index) RemoveProfileByIndex;
			public function void(IMFSensorProfileCollection *self, SENSORPROFILEID* ProfileId) RemoveProfile;
		}
		[CRepr]
		public struct IMFSensorProcessActivity : IUnknown
		{
			public const new Guid IID = .(0x39dc7f4a, 0xb141, 0x4719, 0x81, 0x3c, 0xa7, 0xf4, 0x61, 0x62, 0xa2, 0xb8);
			
			public function HRESULT(IMFSensorProcessActivity *self, uint32* pPID) GetProcessId;
			public function HRESULT(IMFSensorProcessActivity *self, BOOL* pfStreaming) GetStreamingState;
			public function HRESULT(IMFSensorProcessActivity *self, MFSensorDeviceMode* pMode) GetStreamingMode;
			public function HRESULT(IMFSensorProcessActivity *self, FILETIME* pft) GetReportTime;
		}
		[CRepr]
		public struct IMFSensorActivityReport : IUnknown
		{
			public const new Guid IID = .(0x3e8c4be1, 0xa8c2, 0x4528, 0x90, 0xde, 0x28, 0x51, 0xbd, 0xe5, 0xfe, 0xad);
			
			public function HRESULT(IMFSensorActivityReport *self, char16* FriendlyName, uint32 cchFriendlyName, uint32* pcchWritten) GetFriendlyName;
			public function HRESULT(IMFSensorActivityReport *self, char16* SymbolicLink, uint32 cchSymbolicLink, uint32* pcchWritten) GetSymbolicLink;
			public function HRESULT(IMFSensorActivityReport *self, uint32* pcCount) GetProcessCount;
			public function HRESULT(IMFSensorActivityReport *self, uint32 Index, IMFSensorProcessActivity** ppProcessActivity) GetProcessActivity;
		}
		[CRepr]
		public struct IMFSensorActivitiesReport : IUnknown
		{
			public const new Guid IID = .(0x683f7a5e, 0x4a19, 0x43cd, 0xb1, 0xa9, 0xdb, 0xf4, 0xab, 0x3f, 0x77, 0x77);
			
			public function HRESULT(IMFSensorActivitiesReport *self, uint32* pcCount) GetCount;
			public function HRESULT(IMFSensorActivitiesReport *self, uint32 Index, IMFSensorActivityReport** sensorActivityReport) GetActivityReport;
			public function HRESULT(IMFSensorActivitiesReport *self, PWSTR SymbolicName, IMFSensorActivityReport** sensorActivityReport) GetActivityReportByDeviceName;
		}
		[CRepr]
		public struct IMFSensorActivitiesReportCallback : IUnknown
		{
			public const new Guid IID = .(0xde5072ee, 0xdbe3, 0x46dc, 0x8a, 0x87, 0xb6, 0xf6, 0x31, 0x19, 0x47, 0x51);
			
			public function HRESULT(IMFSensorActivitiesReportCallback *self, IMFSensorActivitiesReport* sensorActivitiesReport) OnActivitiesReport;
		}
		[CRepr]
		public struct IMFSensorActivityMonitor : IUnknown
		{
			public const new Guid IID = .(0xd0cef145, 0xb3f4, 0x4340, 0xa2, 0xe5, 0x7a, 0x50, 0x80, 0xca, 0x05, 0xcb);
			
			public function HRESULT(IMFSensorActivityMonitor *self) Start;
			public function HRESULT(IMFSensorActivityMonitor *self) Stop;
		}
		[CRepr]
		public struct IMFExtendedCameraIntrinsicModel : IUnknown
		{
			public const new Guid IID = .(0x5c595e64, 0x4630, 0x4231, 0x85, 0x5a, 0x12, 0x84, 0x2f, 0x73, 0x32, 0x45);
			
			public function HRESULT(IMFExtendedCameraIntrinsicModel *self, MFExtendedCameraIntrinsic_IntrinsicModel* pIntrinsicModel) GetModel;
			public function HRESULT(IMFExtendedCameraIntrinsicModel *self, MFExtendedCameraIntrinsic_IntrinsicModel* pIntrinsicModel) SetModel;
			public function HRESULT(IMFExtendedCameraIntrinsicModel *self, MFCameraIntrinsic_DistortionModelType* pDistortionModelType) GetDistortionModelType;
		}
		[CRepr]
		public struct IMFExtendedCameraIntrinsicsDistortionModel6KT : IUnknown
		{
			public const new Guid IID = .(0x74c2653b, 0x5f55, 0x4eb1, 0x9f, 0x0f, 0x18, 0xb8, 0xf6, 0x8b, 0x7d, 0x3d);
			
			public function HRESULT(IMFExtendedCameraIntrinsicsDistortionModel6KT *self, MFCameraIntrinsic_DistortionModel6KT* pDistortionModel) GetDistortionModel;
			public function HRESULT(IMFExtendedCameraIntrinsicsDistortionModel6KT *self, MFCameraIntrinsic_DistortionModel6KT* pDistortionModel) SetDistortionModel;
		}
		[CRepr]
		public struct IMFExtendedCameraIntrinsicsDistortionModelArcTan : IUnknown
		{
			public const new Guid IID = .(0x812d5f95, 0xb572, 0x45dc, 0xba, 0xfc, 0xae, 0x24, 0x19, 0x9d, 0xdd, 0xa8);
			
			public function HRESULT(IMFExtendedCameraIntrinsicsDistortionModelArcTan *self, MFCameraIntrinsic_DistortionModelArcTan* pDistortionModel) GetDistortionModel;
			public function HRESULT(IMFExtendedCameraIntrinsicsDistortionModelArcTan *self, MFCameraIntrinsic_DistortionModelArcTan* pDistortionModel) SetDistortionModel;
		}
		[CRepr]
		public struct IMFExtendedCameraIntrinsics : IUnknown
		{
			public const new Guid IID = .(0x687f6dac, 0x6987, 0x4750, 0xa1, 0x6a, 0x73, 0x4d, 0x1e, 0x7a, 0x10, 0xfe);
			
			public function HRESULT(IMFExtendedCameraIntrinsics *self, uint8* pbBuffer, uint32 dwBufferSize) InitializeFromBuffer;
			public function HRESULT(IMFExtendedCameraIntrinsics *self, uint32* pdwBufferSize) GetBufferSize;
			public function HRESULT(IMFExtendedCameraIntrinsics *self, uint8* pbBuffer, uint32* pdwBufferSize) SerializeToBuffer;
			public function HRESULT(IMFExtendedCameraIntrinsics *self, uint32* pdwCount) GetIntrinsicModelCount;
			public function HRESULT(IMFExtendedCameraIntrinsics *self, uint32 dwIndex, IMFExtendedCameraIntrinsicModel** ppIntrinsicModel) GetIntrinsicModelByIndex;
			public function HRESULT(IMFExtendedCameraIntrinsics *self, IMFExtendedCameraIntrinsicModel* pIntrinsicModel) AddIntrinsicModel;
		}
		[CRepr]
		public struct IMFExtendedCameraControl : IUnknown
		{
			public const new Guid IID = .(0x38e33520, 0xfca1, 0x4845, 0xa2, 0x7a, 0x68, 0xb7, 0xc6, 0xab, 0x37, 0x89);
			
			public function uint64(IMFExtendedCameraControl *self) GetCapabilities;
			public function HRESULT(IMFExtendedCameraControl *self, uint64 ulFlags) SetFlags;
			public function uint64(IMFExtendedCameraControl *self) GetFlags;
			public function HRESULT(IMFExtendedCameraControl *self, uint8** ppPayload, uint32* pulPayload) LockPayload;
			public function HRESULT(IMFExtendedCameraControl *self) UnlockPayload;
			public function HRESULT(IMFExtendedCameraControl *self) CommitSettings;
		}
		[CRepr]
		public struct IMFExtendedCameraController : IUnknown
		{
			public const new Guid IID = .(0xb91ebfee, 0xca03, 0x4af4, 0x8a, 0x82, 0xa3, 0x17, 0x52, 0xf4, 0xa0, 0xfc);
			
			public function HRESULT(IMFExtendedCameraController *self, uint32 dwStreamIndex, uint32 ulPropertyId, IMFExtendedCameraControl** ppControl) GetExtendedCameraControl;
		}
		[CRepr]
		public struct IMFRelativePanelReport : IUnknown
		{
			public const new Guid IID = .(0xf25362ea, 0x2c0e, 0x447f, 0x81, 0xe2, 0x75, 0x59, 0x14, 0xcd, 0xc0, 0xc3);
			
			public function HRESULT(IMFRelativePanelReport *self, uint32* panel) GetRelativePanel;
		}
		[CRepr]
		public struct IMFRelativePanelWatcher : IMFShutdown
		{
			public const new Guid IID = .(0x421af7f6, 0x573e, 0x4ad0, 0x8f, 0xda, 0x2e, 0x57, 0xce, 0xdb, 0x18, 0xc6);
			
			public function HRESULT(IMFRelativePanelWatcher *self, IMFAsyncCallback* pCallback, IUnknown* pState) BeginGetReport;
			public function HRESULT(IMFRelativePanelWatcher *self, IMFAsyncResult* pResult, IMFRelativePanelReport** ppRelativePanelReport) EndGetReport;
			public function HRESULT(IMFRelativePanelWatcher *self, IMFRelativePanelReport** ppRelativePanelReport) GetReport;
		}
		[CRepr]
		public struct IMFCameraOcclusionStateReport : IUnknown
		{
			public const new Guid IID = .(0x1640b2cf, 0x74da, 0x4462, 0xa4, 0x3b, 0xb7, 0x6d, 0x3b, 0xdc, 0x14, 0x34);
			
			public function HRESULT(IMFCameraOcclusionStateReport *self, uint32* occlusionState) GetOcclusionState;
		}
		[CRepr]
		public struct IMFCameraOcclusionStateReportCallback : IUnknown
		{
			public const new Guid IID = .(0x6e5841c7, 0x3889, 0x4019, 0x90, 0x35, 0x78, 0x3f, 0xb1, 0x9b, 0x59, 0x48);
			
			public function HRESULT(IMFCameraOcclusionStateReportCallback *self, IMFCameraOcclusionStateReport* occlusionStateReport) OnOcclusionStateReport;
		}
		[CRepr]
		public struct IMFCameraOcclusionStateMonitor : IUnknown
		{
			public const new Guid IID = .(0xcc692f46, 0xc697, 0x47e2, 0xa7, 0x2d, 0x7b, 0x06, 0x46, 0x17, 0x74, 0x9b);
			
			public function HRESULT(IMFCameraOcclusionStateMonitor *self) Start;
			public function HRESULT(IMFCameraOcclusionStateMonitor *self) Stop;
			public function uint32(IMFCameraOcclusionStateMonitor *self) GetSupportedStates;
		}
		[CRepr]
		public struct IMFVideoCaptureSampleAllocator : IMFVideoSampleAllocator
		{
			public const new Guid IID = .(0x725b77c7, 0xca9f, 0x4fe5, 0x9d, 0x72, 0x99, 0x46, 0xbf, 0x9b, 0x3c, 0x70);
			
			public function HRESULT(IMFVideoCaptureSampleAllocator *self, uint32 cbSampleSize, uint32 cbCaptureMetadataSize, uint32 cbAlignment, uint32 cMinimumSamples, IMFAttributes* pAttributes, IMFMediaType* pMediaType) InitializeCaptureSampleAllocator;
		}
		[CRepr]
		public struct IMFSampleAllocatorControl : IUnknown
		{
			public const new Guid IID = .(0xda62b958, 0x3a38, 0x4a97, 0xbd, 0x27, 0x14, 0x9c, 0x64, 0x0c, 0x07, 0x71);
			
			public function HRESULT(IMFSampleAllocatorControl *self, uint32 dwOutputStreamID, IUnknown* pAllocator) SetDefaultAllocator;
			public function HRESULT(IMFSampleAllocatorControl *self, uint32 dwOutputStreamID, uint32* pdwInputStreamID, MFSampleAllocatorUsage* peUsage) GetAllocatorUsage;
		}
		[CRepr]
		public struct IMFASFContentInfo : IUnknown
		{
			public const new Guid IID = .(0xb1dca5cd, 0xd5da, 0x4451, 0x8e, 0x9e, 0xdb, 0x5c, 0x59, 0x91, 0x4e, 0xad);
			
			public function HRESULT(IMFASFContentInfo *self, IMFMediaBuffer* pIStartOfContent, uint64* cbHeaderSize) GetHeaderSize;
			public function HRESULT(IMFASFContentInfo *self, IMFMediaBuffer* pIHeaderBuffer, uint64 cbOffsetWithinHeader) ParseHeader;
			public function HRESULT(IMFASFContentInfo *self, IMFMediaBuffer* pIHeader, uint32* pcbHeader) GenerateHeader;
			public function HRESULT(IMFASFContentInfo *self, IMFASFProfile** ppIProfile) GetProfile;
			public function HRESULT(IMFASFContentInfo *self, IMFASFProfile* pIProfile) SetProfile;
			public function HRESULT(IMFASFContentInfo *self, IMFPresentationDescriptor** ppIPresentationDescriptor) GeneratePresentationDescriptor;
			public function HRESULT(IMFASFContentInfo *self, uint16 wStreamNumber, IPropertyStore** ppIStore) GetEncodingConfigurationPropertyStore;
		}
		[CRepr]
		public struct IMFASFProfile : IMFAttributes
		{
			public const new Guid IID = .(0xd267bf6a, 0x028b, 0x4e0d, 0x90, 0x3d, 0x43, 0xf0, 0xef, 0x82, 0xd0, 0xd4);
			
			public function HRESULT(IMFASFProfile *self, uint32* pcStreams) GetStreamCount;
			public function HRESULT(IMFASFProfile *self, uint32 dwStreamIndex, uint16* pwStreamNumber, IMFASFStreamConfig** ppIStream) GetStream;
			public function HRESULT(IMFASFProfile *self, uint16 wStreamNumber, IMFASFStreamConfig** ppIStream) GetStreamByNumber;
			public function HRESULT(IMFASFProfile *self, IMFASFStreamConfig* pIStream) SetStream;
			public function HRESULT(IMFASFProfile *self, uint16 wStreamNumber) RemoveStream;
			public function HRESULT(IMFASFProfile *self, IMFMediaType* pIMediaType, IMFASFStreamConfig** ppIStream) CreateStream;
			public function HRESULT(IMFASFProfile *self, uint32* pcMutexs) GetMutualExclusionCount;
			public function HRESULT(IMFASFProfile *self, uint32 dwMutexIndex, IMFASFMutualExclusion** ppIMutex) GetMutualExclusion;
			public function HRESULT(IMFASFProfile *self, IMFASFMutualExclusion* pIMutex) AddMutualExclusion;
			public function HRESULT(IMFASFProfile *self, uint32 dwMutexIndex) RemoveMutualExclusion;
			public function HRESULT(IMFASFProfile *self, IMFASFMutualExclusion** ppIMutex) CreateMutualExclusion;
			public function HRESULT(IMFASFProfile *self, IMFASFStreamPrioritization** ppIStreamPrioritization) GetStreamPrioritization;
			public function HRESULT(IMFASFProfile *self, IMFASFStreamPrioritization* pIStreamPrioritization) AddStreamPrioritization;
			public function HRESULT(IMFASFProfile *self) RemoveStreamPrioritization;
			public function HRESULT(IMFASFProfile *self, IMFASFStreamPrioritization** ppIStreamPrioritization) CreateStreamPrioritization;
			public function HRESULT(IMFASFProfile *self, IMFASFProfile** ppIProfile) Clone;
		}
		[CRepr]
		public struct IMFASFStreamConfig : IMFAttributes
		{
			public const new Guid IID = .(0x9e8ae8d2, 0xdbbd, 0x4200, 0x9a, 0xca, 0x06, 0xe6, 0xdf, 0x48, 0x49, 0x13);
			
			public function HRESULT(IMFASFStreamConfig *self, Guid* pguidStreamType) GetStreamType;
			public function uint16(IMFASFStreamConfig *self) GetStreamNumber;
			public function HRESULT(IMFASFStreamConfig *self, uint16 wStreamNum) SetStreamNumber;
			public function HRESULT(IMFASFStreamConfig *self, IMFMediaType** ppIMediaType) GetMediaType;
			public function HRESULT(IMFASFStreamConfig *self, IMFMediaType* pIMediaType) SetMediaType;
			public function HRESULT(IMFASFStreamConfig *self, uint16* pcPayloadExtensions) GetPayloadExtensionCount;
			public function HRESULT(IMFASFStreamConfig *self, uint16 wPayloadExtensionNumber, Guid* pguidExtensionSystemID, uint16* pcbExtensionDataSize, uint8* pbExtensionSystemInfo, uint32* pcbExtensionSystemInfo) GetPayloadExtension;
			public function HRESULT(IMFASFStreamConfig *self, Guid guidExtensionSystemID, uint16 cbExtensionDataSize, uint8* pbExtensionSystemInfo, uint32 cbExtensionSystemInfo) AddPayloadExtension;
			public function HRESULT(IMFASFStreamConfig *self) RemoveAllPayloadExtensions;
			public function HRESULT(IMFASFStreamConfig *self, IMFASFStreamConfig** ppIStreamConfig) Clone;
		}
		[CRepr]
		public struct IMFASFMutualExclusion : IUnknown
		{
			public const new Guid IID = .(0x12558291, 0xe399, 0x11d5, 0xbc, 0x2a, 0x00, 0xb0, 0xd0, 0xf3, 0xf4, 0xab);
			
			public function HRESULT(IMFASFMutualExclusion *self, Guid* pguidType) GetType;
			public function HRESULT(IMFASFMutualExclusion *self, Guid* guidType) SetType;
			public function HRESULT(IMFASFMutualExclusion *self, uint32* pdwRecordCount) GetRecordCount;
			public function HRESULT(IMFASFMutualExclusion *self, uint32 dwRecordNumber, uint16* pwStreamNumArray, uint32* pcStreams) GetStreamsForRecord;
			public function HRESULT(IMFASFMutualExclusion *self, uint32 dwRecordNumber, uint16 wStreamNumber) AddStreamForRecord;
			public function HRESULT(IMFASFMutualExclusion *self, uint32 dwRecordNumber, uint16 wStreamNumber) RemoveStreamFromRecord;
			public function HRESULT(IMFASFMutualExclusion *self, uint32 dwRecordNumber) RemoveRecord;
			public function HRESULT(IMFASFMutualExclusion *self, uint32* pdwRecordNumber) AddRecord;
			public function HRESULT(IMFASFMutualExclusion *self, IMFASFMutualExclusion** ppIMutex) Clone;
		}
		[CRepr]
		public struct IMFASFStreamPrioritization : IUnknown
		{
			public const new Guid IID = .(0x699bdc27, 0xbbaf, 0x49ff, 0x8e, 0x38, 0x9c, 0x39, 0xc9, 0xb5, 0xe0, 0x88);
			
			public function HRESULT(IMFASFStreamPrioritization *self, uint32* pdwStreamCount) GetStreamCount;
			public function HRESULT(IMFASFStreamPrioritization *self, uint32 dwStreamIndex, uint16* pwStreamNumber, uint16* pwStreamFlags) GetStream;
			public function HRESULT(IMFASFStreamPrioritization *self, uint16 wStreamNumber, uint16 wStreamFlags) AddStream;
			public function HRESULT(IMFASFStreamPrioritization *self, uint32 dwStreamIndex) RemoveStream;
			public function HRESULT(IMFASFStreamPrioritization *self, IMFASFStreamPrioritization** ppIStreamPrioritization) Clone;
		}
		[CRepr]
		public struct IMFASFIndexer : IUnknown
		{
			public const new Guid IID = .(0x53590f48, 0xdc3b, 0x4297, 0x81, 0x3f, 0x78, 0x77, 0x61, 0xad, 0x7b, 0x3e);
			
			public function HRESULT(IMFASFIndexer *self, uint32 dwFlags) SetFlags;
			public function HRESULT(IMFASFIndexer *self, uint32* pdwFlags) GetFlags;
			public function HRESULT(IMFASFIndexer *self, IMFASFContentInfo* pIContentInfo) Initialize;
			public function HRESULT(IMFASFIndexer *self, IMFASFContentInfo* pIContentInfo, uint64* pcbIndexOffset) GetIndexPosition;
			public function HRESULT(IMFASFIndexer *self, IMFByteStream** ppIByteStreams, uint32 cByteStreams) SetIndexByteStreams;
			public function HRESULT(IMFASFIndexer *self, uint32* pcByteStreams) GetIndexByteStreamCount;
			public function HRESULT(IMFASFIndexer *self, ASF_INDEX_IDENTIFIER* pIndexIdentifier, BOOL* pfIsIndexed, uint8* pbIndexDescriptor, uint32* pcbIndexDescriptor) GetIndexStatus;
			public function HRESULT(IMFASFIndexer *self, uint8* pbIndexDescriptor, uint32 cbIndexDescriptor, BOOL fGenerateIndex) SetIndexStatus;
			public function HRESULT(IMFASFIndexer *self, PROPVARIANT* pvarValue, ASF_INDEX_IDENTIFIER* pIndexIdentifier, uint64* pcbOffsetWithinData, int64* phnsApproxTime, uint32* pdwPayloadNumberOfStreamWithinPacket) GetSeekPositionForValue;
			public function HRESULT(IMFASFIndexer *self, IMFSample* pIASFPacketSample) GenerateIndexEntries;
			public function HRESULT(IMFASFIndexer *self, IMFASFContentInfo* pIContentInfo) CommitIndex;
			public function HRESULT(IMFASFIndexer *self, uint64* pcbIndexWriteSpace) GetIndexWriteSpace;
			public function HRESULT(IMFASFIndexer *self, IMFMediaBuffer* pIIndexBuffer, uint64 cbOffsetWithinIndex) GetCompletedIndex;
		}
		[CRepr]
		public struct IMFASFSplitter : IUnknown
		{
			public const new Guid IID = .(0x12558295, 0xe399, 0x11d5, 0xbc, 0x2a, 0x00, 0xb0, 0xd0, 0xf3, 0xf4, 0xab);
			
			public function HRESULT(IMFASFSplitter *self, IMFASFContentInfo* pIContentInfo) Initialize;
			public function HRESULT(IMFASFSplitter *self, uint32 dwFlags) SetFlags;
			public function HRESULT(IMFASFSplitter *self, uint32* pdwFlags) GetFlags;
			public function HRESULT(IMFASFSplitter *self, uint16* pwStreamNumbers, uint16 wNumStreams) SelectStreams;
			public function HRESULT(IMFASFSplitter *self, uint16* pwStreamNumbers, uint16* pwNumStreams) GetSelectedStreams;
			public function HRESULT(IMFASFSplitter *self, IMFMediaBuffer* pIBuffer, uint32 cbBufferOffset, uint32 cbLength) ParseData;
			public function HRESULT(IMFASFSplitter *self, ASF_STATUSFLAGS* pdwStatusFlags, uint16* pwStreamNumber, IMFSample** ppISample) GetNextSample;
			public function HRESULT(IMFASFSplitter *self) Flush;
			public function HRESULT(IMFASFSplitter *self, uint32* pdwLastSendTime) GetLastSendTime;
		}
		[CRepr]
		public struct IMFASFMultiplexer : IUnknown
		{
			public const new Guid IID = .(0x57bdd80a, 0x9b38, 0x4838, 0xb7, 0x37, 0xc5, 0x8f, 0x67, 0x0d, 0x7d, 0x4f);
			
			public function HRESULT(IMFASFMultiplexer *self, IMFASFContentInfo* pIContentInfo) Initialize;
			public function HRESULT(IMFASFMultiplexer *self, uint32 dwFlags) SetFlags;
			public function HRESULT(IMFASFMultiplexer *self, uint32* pdwFlags) GetFlags;
			public function HRESULT(IMFASFMultiplexer *self, uint16 wStreamNumber, IMFSample* pISample, int64 hnsTimestampAdjust) ProcessSample;
			public function HRESULT(IMFASFMultiplexer *self, uint32* pdwStatusFlags, IMFSample** ppIPacket) GetNextPacket;
			public function HRESULT(IMFASFMultiplexer *self) Flush;
			public function HRESULT(IMFASFMultiplexer *self, IMFASFContentInfo* pIContentInfo) End;
			public function HRESULT(IMFASFMultiplexer *self, uint16 wStreamNumber, ASF_MUX_STATISTICS* pMuxStats) GetStatistics;
			public function HRESULT(IMFASFMultiplexer *self, uint32 msSyncTolerance) SetSyncTolerance;
		}
		[CRepr]
		public struct IMFASFStreamSelector : IUnknown
		{
			public const new Guid IID = .(0xd01bad4a, 0x4fa0, 0x4a60, 0x93, 0x49, 0xc2, 0x7e, 0x62, 0xda, 0x9d, 0x41);
			
			public function HRESULT(IMFASFStreamSelector *self, uint32* pcStreams) GetStreamCount;
			public function HRESULT(IMFASFStreamSelector *self, uint32* pcOutputs) GetOutputCount;
			public function HRESULT(IMFASFStreamSelector *self, uint32 dwOutputNum, uint32* pcStreams) GetOutputStreamCount;
			public function HRESULT(IMFASFStreamSelector *self, uint32 dwOutputNum, uint16* rgwStreamNumbers) GetOutputStreamNumbers;
			public function HRESULT(IMFASFStreamSelector *self, uint16 wStreamNum, uint32* pdwOutput) GetOutputFromStream;
			public function HRESULT(IMFASFStreamSelector *self, uint32 dwOutputNum, ASF_SELECTION_STATUS* pSelection) GetOutputOverride;
			public function HRESULT(IMFASFStreamSelector *self, uint32 dwOutputNum, ASF_SELECTION_STATUS Selection) SetOutputOverride;
			public function HRESULT(IMFASFStreamSelector *self, uint32 dwOutputNum, uint32* pcMutexes) GetOutputMutexCount;
			public function HRESULT(IMFASFStreamSelector *self, uint32 dwOutputNum, uint32 dwMutexNum, IUnknown** ppMutex) GetOutputMutex;
			public function HRESULT(IMFASFStreamSelector *self, uint32 dwOutputNum, uint32 dwMutexNum, uint16 wSelectedRecord) SetOutputMutexSelection;
			public function HRESULT(IMFASFStreamSelector *self, uint32* pcStepCount) GetBandwidthStepCount;
			public function HRESULT(IMFASFStreamSelector *self, uint32 dwStepNum, uint32* pdwBitrate, uint16* rgwStreamNumbers, ASF_SELECTION_STATUS* rgSelections) GetBandwidthStep;
			public function HRESULT(IMFASFStreamSelector *self, uint32 dwBitrate, uint32* pdwStepNum) BitrateToStepNumber;
			public function HRESULT(IMFASFStreamSelector *self, uint32 dwStreamSelectorFlags) SetStreamSelectorFlags;
		}
		[CRepr]
		public struct IMFDRMNetHelper : IUnknown
		{
			public const new Guid IID = .(0x3d1ff0ea, 0x679a, 0x4190, 0x8d, 0x46, 0x7f, 0xa6, 0x9e, 0x8c, 0x7e, 0x15);
			
			public function HRESULT(IMFDRMNetHelper *self, uint8* pLicenseRequest, uint32 cbLicenseRequest, uint8** ppLicenseResponse, uint32* pcbLicenseResponse, BSTR* pbstrKID) ProcessLicenseRequest;
			public function HRESULT(IMFDRMNetHelper *self, uint8** ppLicenseResponse, uint32* pcbLicenseResponse) GetChainedLicenseResponse;
		}
		[CRepr]
		public struct IMFCaptureEngineOnEventCallback : IUnknown
		{
			public const new Guid IID = .(0xaeda51c0, 0x9025, 0x4983, 0x90, 0x12, 0xde, 0x59, 0x7b, 0x88, 0xb0, 0x89);
			
			public function HRESULT(IMFCaptureEngineOnEventCallback *self, IMFMediaEvent* pEvent) OnEvent;
		}
		[CRepr]
		public struct IMFCaptureEngineOnSampleCallback : IUnknown
		{
			public const new Guid IID = .(0x52150b82, 0xab39, 0x4467, 0x98, 0x0f, 0xe4, 0x8b, 0xf0, 0x82, 0x2e, 0xcd);
			
			public function HRESULT(IMFCaptureEngineOnSampleCallback *self, IMFSample* pSample) OnSample;
		}
		[CRepr]
		public struct IMFCaptureSink : IUnknown
		{
			public const new Guid IID = .(0x72d6135b, 0x35e9, 0x412c, 0xb9, 0x26, 0xfd, 0x52, 0x65, 0xf2, 0xa8, 0x85);
			
			public function HRESULT(IMFCaptureSink *self, uint32 dwSinkStreamIndex, IMFMediaType** ppMediaType) GetOutputMediaType;
			public function HRESULT(IMFCaptureSink *self, uint32 dwSinkStreamIndex, Guid* rguidService, Guid* riid, IUnknown** ppUnknown) GetService;
			public function HRESULT(IMFCaptureSink *self, uint32 dwSourceStreamIndex, IMFMediaType* pMediaType, IMFAttributes* pAttributes, uint32* pdwSinkStreamIndex) AddStream;
			public function HRESULT(IMFCaptureSink *self) Prepare;
			public function HRESULT(IMFCaptureSink *self) RemoveAllStreams;
		}
		[CRepr]
		public struct IMFCaptureRecordSink : IMFCaptureSink
		{
			public const new Guid IID = .(0x3323b55a, 0xf92a, 0x4fe2, 0x8e, 0xdc, 0xe9, 0xbf, 0xc0, 0x63, 0x4d, 0x77);
			
			public function HRESULT(IMFCaptureRecordSink *self, IMFByteStream* pByteStream, Guid* guidContainerType) SetOutputByteStream;
			public function HRESULT(IMFCaptureRecordSink *self, PWSTR fileName) SetOutputFileName;
			public function HRESULT(IMFCaptureRecordSink *self, uint32 dwStreamSinkIndex, IMFCaptureEngineOnSampleCallback* pCallback) SetSampleCallback;
			public function HRESULT(IMFCaptureRecordSink *self, IMFMediaSink* pMediaSink) SetCustomSink;
			public function HRESULT(IMFCaptureRecordSink *self, uint32 dwStreamIndex, uint32* pdwRotationValue) GetRotation;
			public function HRESULT(IMFCaptureRecordSink *self, uint32 dwStreamIndex, uint32 dwRotationValue) SetRotation;
		}
		[CRepr]
		public struct IMFCapturePreviewSink : IMFCaptureSink
		{
			public const new Guid IID = .(0x77346cfd, 0x5b49, 0x4d73, 0xac, 0xe0, 0x5b, 0x52, 0xa8, 0x59, 0xf2, 0xe0);
			
			public function HRESULT(IMFCapturePreviewSink *self, HANDLE handle) SetRenderHandle;
			public function HRESULT(IMFCapturePreviewSink *self, IUnknown* pSurface) SetRenderSurface;
			public function HRESULT(IMFCapturePreviewSink *self, MFVideoNormalizedRect* pSrc, RECT* pDst, uint32* pBorderClr) UpdateVideo;
			public function HRESULT(IMFCapturePreviewSink *self, uint32 dwStreamSinkIndex, IMFCaptureEngineOnSampleCallback* pCallback) SetSampleCallback;
			public function HRESULT(IMFCapturePreviewSink *self, BOOL* pfMirrorState) GetMirrorState;
			public function HRESULT(IMFCapturePreviewSink *self, BOOL fMirrorState) SetMirrorState;
			public function HRESULT(IMFCapturePreviewSink *self, uint32 dwStreamIndex, uint32* pdwRotationValue) GetRotation;
			public function HRESULT(IMFCapturePreviewSink *self, uint32 dwStreamIndex, uint32 dwRotationValue) SetRotation;
			public function HRESULT(IMFCapturePreviewSink *self, IMFMediaSink* pMediaSink) SetCustomSink;
		}
		[CRepr]
		public struct IMFCapturePhotoSink : IMFCaptureSink
		{
			public const new Guid IID = .(0xd2d43cc8, 0x48bb, 0x4aa7, 0x95, 0xdb, 0x10, 0xc0, 0x69, 0x77, 0xe7, 0x77);
			
			public function HRESULT(IMFCapturePhotoSink *self, PWSTR fileName) SetOutputFileName;
			public function HRESULT(IMFCapturePhotoSink *self, IMFCaptureEngineOnSampleCallback* pCallback) SetSampleCallback;
			public function HRESULT(IMFCapturePhotoSink *self, IMFByteStream* pByteStream) SetOutputByteStream;
		}
		[CRepr]
		public struct IMFCaptureSource : IUnknown
		{
			public const new Guid IID = .(0x439a42a8, 0x0d2c, 0x4505, 0xbe, 0x83, 0xf7, 0x9b, 0x2a, 0x05, 0xd5, 0xc4);
			
			public function HRESULT(IMFCaptureSource *self, MF_CAPTURE_ENGINE_DEVICE_TYPE mfCaptureEngineDeviceType, IMFMediaSource** ppMediaSource) GetCaptureDeviceSource;
			public function HRESULT(IMFCaptureSource *self, MF_CAPTURE_ENGINE_DEVICE_TYPE mfCaptureEngineDeviceType, IMFActivate** ppActivate) GetCaptureDeviceActivate;
			public function HRESULT(IMFCaptureSource *self, Guid* rguidService, Guid* riid, IUnknown** ppUnknown) GetService;
			public function HRESULT(IMFCaptureSource *self, uint32 dwSourceStreamIndex, IUnknown* pUnknown) AddEffect;
			public function HRESULT(IMFCaptureSource *self, uint32 dwSourceStreamIndex, IUnknown* pUnknown) RemoveEffect;
			public function HRESULT(IMFCaptureSource *self, uint32 dwSourceStreamIndex) RemoveAllEffects;
			public function HRESULT(IMFCaptureSource *self, uint32 dwSourceStreamIndex, uint32 dwMediaTypeIndex, IMFMediaType** ppMediaType) GetAvailableDeviceMediaType;
			public function HRESULT(IMFCaptureSource *self, uint32 dwSourceStreamIndex, IMFMediaType* pMediaType) SetCurrentDeviceMediaType;
			public function HRESULT(IMFCaptureSource *self, uint32 dwSourceStreamIndex, IMFMediaType** ppMediaType) GetCurrentDeviceMediaType;
			public function HRESULT(IMFCaptureSource *self, uint32* pdwStreamCount) GetDeviceStreamCount;
			public function HRESULT(IMFCaptureSource *self, uint32 dwSourceStreamIndex, MF_CAPTURE_ENGINE_STREAM_CATEGORY* pStreamCategory) GetDeviceStreamCategory;
			public function HRESULT(IMFCaptureSource *self, uint32 dwStreamIndex, BOOL* pfMirrorState) GetMirrorState;
			public function HRESULT(IMFCaptureSource *self, uint32 dwStreamIndex, BOOL fMirrorState) SetMirrorState;
			public function HRESULT(IMFCaptureSource *self, uint32 uifriendlyName, uint32* pdwActualStreamIndex) GetStreamIndexFromFriendlyName;
		}
		[CRepr]
		public struct IMFCaptureEngine : IUnknown
		{
			public const new Guid IID = .(0xa6bba433, 0x176b, 0x48b2, 0xb3, 0x75, 0x53, 0xaa, 0x03, 0x47, 0x32, 0x07);
			
			public function HRESULT(IMFCaptureEngine *self, IMFCaptureEngineOnEventCallback* pEventCallback, IMFAttributes* pAttributes, IUnknown* pAudioSource, IUnknown* pVideoSource) Initialize;
			public function HRESULT(IMFCaptureEngine *self) StartPreview;
			public function HRESULT(IMFCaptureEngine *self) StopPreview;
			public function HRESULT(IMFCaptureEngine *self) StartRecord;
			public function HRESULT(IMFCaptureEngine *self, BOOL bFinalize, BOOL bFlushUnprocessedSamples) StopRecord;
			public function HRESULT(IMFCaptureEngine *self) TakePhoto;
			public function HRESULT(IMFCaptureEngine *self, MF_CAPTURE_ENGINE_SINK_TYPE mfCaptureEngineSinkType, IMFCaptureSink** ppSink) GetSink;
			public function HRESULT(IMFCaptureEngine *self, IMFCaptureSource** ppSource) GetSource;
		}
		[CRepr]
		public struct IMFCaptureEngineClassFactory : IUnknown
		{
			public const new Guid IID = .(0x8f02d140, 0x56fc, 0x4302, 0xa7, 0x05, 0x3a, 0x97, 0xc7, 0x8b, 0xe7, 0x79);
			
			public function HRESULT(IMFCaptureEngineClassFactory *self, Guid* clsid, Guid* riid, void** ppvObject) CreateInstance;
		}
		[CRepr]
		public struct IMFCaptureEngineOnSampleCallback2 : IMFCaptureEngineOnSampleCallback
		{
			public const new Guid IID = .(0xe37ceed7, 0x340f, 0x4514, 0x9f, 0x4d, 0x9c, 0x2a, 0xe0, 0x26, 0x10, 0x0b);
			
			public function HRESULT(IMFCaptureEngineOnSampleCallback2 *self, IMFMediaEvent* pEvent) OnSynchronizedEvent;
		}
		[CRepr]
		public struct IMFCaptureSink2 : IMFCaptureSink
		{
			public const new Guid IID = .(0xf9e4219e, 0x6197, 0x4b5e, 0xb8, 0x88, 0xbe, 0xe3, 0x10, 0xab, 0x2c, 0x59);
			
			public function HRESULT(IMFCaptureSink2 *self, uint32 dwStreamIndex, IMFMediaType* pMediaType, IMFAttributes* pEncodingAttributes) SetOutputMediaType;
		}
		[CRepr]
		public struct IMFD3D12SynchronizationObjectCommands : IUnknown
		{
			public const new Guid IID = .(0x09d0f835, 0x92ff, 0x4e53, 0x8e, 0xfa, 0x40, 0xfa, 0xa5, 0x51, 0xf2, 0x33);
			
			public function HRESULT(IMFD3D12SynchronizationObjectCommands *self, ID3D12CommandQueue* pProducerCommandQueue) EnqueueResourceReady;
			public function HRESULT(IMFD3D12SynchronizationObjectCommands *self, ID3D12CommandQueue* pConsumerCommandQueue) EnqueueResourceReadyWait;
			public function HRESULT(IMFD3D12SynchronizationObjectCommands *self, HANDLE hEvent) SignalEventOnResourceReady;
			public function HRESULT(IMFD3D12SynchronizationObjectCommands *self, ID3D12CommandQueue* pConsumerCommandQueue) EnqueueResourceRelease;
		}
		[CRepr]
		public struct IMFD3D12SynchronizationObject : IUnknown
		{
			public const new Guid IID = .(0x802302b0, 0x82de, 0x45e1, 0xb4, 0x21, 0xf1, 0x9e, 0xe5, 0xbd, 0xaf, 0x23);
			
			public function HRESULT(IMFD3D12SynchronizationObject *self, HANDLE hEvent) SignalEventOnFinalResourceRelease;
			public function HRESULT(IMFD3D12SynchronizationObject *self) Reset;
		}
		[CRepr]
		public struct MFASYNCRESULT : IMFAsyncResult
		{
		}
		[CRepr]
		public struct IMFMediaError : IUnknown
		{
			public const new Guid IID = .(0xfc0e10d2, 0xab2a, 0x4501, 0xa9, 0x51, 0x06, 0xbb, 0x10, 0x75, 0x18, 0x4c);
			
			public function uint16(IMFMediaError *self) GetErrorCode;
			public function HRESULT(IMFMediaError *self) GetExtendedErrorCode;
			public function HRESULT(IMFMediaError *self, MF_MEDIA_ENGINE_ERR error) SetErrorCode;
			public function HRESULT(IMFMediaError *self, HRESULT error) SetExtendedErrorCode;
		}
		[CRepr]
		public struct IMFMediaTimeRange : IUnknown
		{
			public const new Guid IID = .(0xdb71a2fc, 0x078a, 0x414e, 0x9d, 0xf9, 0x8c, 0x25, 0x31, 0xb0, 0xaa, 0x6c);
			
			public function uint32(IMFMediaTimeRange *self) GetLength;
			public function HRESULT(IMFMediaTimeRange *self, uint32 index, double* pStart) GetStart;
			public function HRESULT(IMFMediaTimeRange *self, uint32 index, double* pEnd) GetEnd;
			public function BOOL(IMFMediaTimeRange *self, double time) ContainsTime;
			public function HRESULT(IMFMediaTimeRange *self, double startTime, double endTime) AddRange;
			public function HRESULT(IMFMediaTimeRange *self) Clear;
		}
		[CRepr]
		public struct IMFMediaEngineNotify : IUnknown
		{
			public const new Guid IID = .(0xfee7c112, 0xe776, 0x42b5, 0x9b, 0xbf, 0x00, 0x48, 0x52, 0x4e, 0x2b, 0xd5);
			
			public function HRESULT(IMFMediaEngineNotify *self, uint32 event, uint param1, uint32 param2) EventNotify;
		}
		[CRepr]
		public struct IMFMediaEngineSrcElements : IUnknown
		{
			public const new Guid IID = .(0x7a5e5354, 0xb114, 0x4c72, 0xb9, 0x91, 0x31, 0x31, 0xd7, 0x50, 0x32, 0xea);
			
			public function uint32(IMFMediaEngineSrcElements *self) GetLength;
			public function HRESULT(IMFMediaEngineSrcElements *self, uint32 index, BSTR* pURL) GetURL;
			public function HRESULT(IMFMediaEngineSrcElements *self, uint32 index, BSTR* pType) GetType;
			public function HRESULT(IMFMediaEngineSrcElements *self, uint32 index, BSTR* pMedia) GetMedia;
			public function HRESULT(IMFMediaEngineSrcElements *self, BSTR pURL, BSTR pType, BSTR pMedia) AddElement;
			public function HRESULT(IMFMediaEngineSrcElements *self) RemoveAllElements;
		}
		[CRepr]
		public struct IMFMediaEngine : IUnknown
		{
			public const new Guid IID = .(0x98a1b0bb, 0x03eb, 0x4935, 0xae, 0x7c, 0x93, 0xc1, 0xfa, 0x0e, 0x1c, 0x93);
			
			public function HRESULT(IMFMediaEngine *self, IMFMediaError** ppError) GetError;
			public function HRESULT(IMFMediaEngine *self, MF_MEDIA_ENGINE_ERR error) SetErrorCode;
			public function HRESULT(IMFMediaEngine *self, IMFMediaEngineSrcElements* pSrcElements) SetSourceElements;
			public function HRESULT(IMFMediaEngine *self, BSTR pUrl) SetSource;
			public function HRESULT(IMFMediaEngine *self, BSTR* ppUrl) GetCurrentSource;
			public function uint16(IMFMediaEngine *self) GetNetworkState;
			public function MF_MEDIA_ENGINE_PRELOAD(IMFMediaEngine *self) GetPreload;
			public function HRESULT(IMFMediaEngine *self, MF_MEDIA_ENGINE_PRELOAD Preload) SetPreload;
			public function HRESULT(IMFMediaEngine *self, IMFMediaTimeRange** ppBuffered) GetBuffered;
			public function HRESULT(IMFMediaEngine *self) Load;
			public function HRESULT(IMFMediaEngine *self, BSTR type, MF_MEDIA_ENGINE_CANPLAY* pAnswer) CanPlayType;
			public function uint16(IMFMediaEngine *self) GetReadyState;
			public function BOOL(IMFMediaEngine *self) IsSeeking;
			public function double(IMFMediaEngine *self) GetCurrentTime;
			public function HRESULT(IMFMediaEngine *self, double seekTime) SetCurrentTime;
			public function double(IMFMediaEngine *self) GetStartTime;
			public function double(IMFMediaEngine *self) GetDuration;
			public function BOOL(IMFMediaEngine *self) IsPaused;
			public function double(IMFMediaEngine *self) GetDefaultPlaybackRate;
			public function HRESULT(IMFMediaEngine *self, double Rate) SetDefaultPlaybackRate;
			public function double(IMFMediaEngine *self) GetPlaybackRate;
			public function HRESULT(IMFMediaEngine *self, double Rate) SetPlaybackRate;
			public function HRESULT(IMFMediaEngine *self, IMFMediaTimeRange** ppPlayed) GetPlayed;
			public function HRESULT(IMFMediaEngine *self, IMFMediaTimeRange** ppSeekable) GetSeekable;
			public function BOOL(IMFMediaEngine *self) IsEnded;
			public function BOOL(IMFMediaEngine *self) GetAutoPlay;
			public function HRESULT(IMFMediaEngine *self, BOOL AutoPlay) SetAutoPlay;
			public function BOOL(IMFMediaEngine *self) GetLoop;
			public function HRESULT(IMFMediaEngine *self, BOOL Loop) SetLoop;
			public function HRESULT(IMFMediaEngine *self) Play;
			public function HRESULT(IMFMediaEngine *self) Pause;
			public function BOOL(IMFMediaEngine *self) GetMuted;
			public function HRESULT(IMFMediaEngine *self, BOOL Muted) SetMuted;
			public function double(IMFMediaEngine *self) GetVolume;
			public function HRESULT(IMFMediaEngine *self, double Volume) SetVolume;
			public function BOOL(IMFMediaEngine *self) HasVideo;
			public function BOOL(IMFMediaEngine *self) HasAudio;
			public function HRESULT(IMFMediaEngine *self, uint32* cx, uint32* cy) GetNativeVideoSize;
			public function HRESULT(IMFMediaEngine *self, uint32* cx, uint32* cy) GetVideoAspectRatio;
			public function HRESULT(IMFMediaEngine *self) Shutdown;
			public function HRESULT(IMFMediaEngine *self, IUnknown* pDstSurf, MFVideoNormalizedRect* pSrc, RECT* pDst, MFARGB* pBorderClr) TransferVideoFrame;
			public function HRESULT(IMFMediaEngine *self, int64* pPts) OnVideoStreamTick;
		}
		[CRepr]
		public struct IMFMediaEngineEx : IMFMediaEngine
		{
			public const new Guid IID = .(0x83015ead, 0xb1e6, 0x40d0, 0xa9, 0x8a, 0x37, 0x14, 0x5f, 0xfe, 0x1a, 0xd1);
			
			public function HRESULT(IMFMediaEngineEx *self, IMFByteStream* pByteStream, BSTR pURL) SetSourceFromByteStream;
			public function HRESULT(IMFMediaEngineEx *self, MF_MEDIA_ENGINE_STATISTIC StatisticID, PROPVARIANT* pStatistic) GetStatistics;
			public function HRESULT(IMFMediaEngineEx *self, MFVideoNormalizedRect* pSrc, RECT* pDst, MFARGB* pBorderClr) UpdateVideoStream;
			public function double(IMFMediaEngineEx *self) GetBalance;
			public function HRESULT(IMFMediaEngineEx *self, double balance) SetBalance;
			public function BOOL(IMFMediaEngineEx *self, double rate) IsPlaybackRateSupported;
			public function HRESULT(IMFMediaEngineEx *self, BOOL Forward) FrameStep;
			public function HRESULT(IMFMediaEngineEx *self, uint32* pCharacteristics) GetResourceCharacteristics;
			public function HRESULT(IMFMediaEngineEx *self, Guid* guidMFAttribute, PROPVARIANT* pvValue) GetPresentationAttribute;
			public function HRESULT(IMFMediaEngineEx *self, uint32* pdwStreamCount) GetNumberOfStreams;
			public function HRESULT(IMFMediaEngineEx *self, uint32 dwStreamIndex, Guid* guidMFAttribute, PROPVARIANT* pvValue) GetStreamAttribute;
			public function HRESULT(IMFMediaEngineEx *self, uint32 dwStreamIndex, BOOL* pEnabled) GetStreamSelection;
			public function HRESULT(IMFMediaEngineEx *self, uint32 dwStreamIndex, BOOL Enabled) SetStreamSelection;
			public function HRESULT(IMFMediaEngineEx *self) ApplyStreamSelections;
			public function HRESULT(IMFMediaEngineEx *self, BOOL* pProtected) IsProtected;
			public function HRESULT(IMFMediaEngineEx *self, IUnknown* pEffect, BOOL fOptional) InsertVideoEffect;
			public function HRESULT(IMFMediaEngineEx *self, IUnknown* pEffect, BOOL fOptional) InsertAudioEffect;
			public function HRESULT(IMFMediaEngineEx *self) RemoveAllEffects;
			public function HRESULT(IMFMediaEngineEx *self, double timeToFire) SetTimelineMarkerTimer;
			public function HRESULT(IMFMediaEngineEx *self, double* pTimeToFire) GetTimelineMarkerTimer;
			public function HRESULT(IMFMediaEngineEx *self) CancelTimelineMarkerTimer;
			public function BOOL(IMFMediaEngineEx *self) IsStereo3D;
			public function HRESULT(IMFMediaEngineEx *self, MF_MEDIA_ENGINE_S3D_PACKING_MODE* packMode) GetStereo3DFramePackingMode;
			public function HRESULT(IMFMediaEngineEx *self, MF_MEDIA_ENGINE_S3D_PACKING_MODE packMode) SetStereo3DFramePackingMode;
			public function HRESULT(IMFMediaEngineEx *self, MF3DVideoOutputType* outputType) GetStereo3DRenderMode;
			public function HRESULT(IMFMediaEngineEx *self, MF3DVideoOutputType outputType) SetStereo3DRenderMode;
			public function HRESULT(IMFMediaEngineEx *self, BOOL fEnable) EnableWindowlessSwapchainMode;
			public function HRESULT(IMFMediaEngineEx *self, HANDLE* phSwapchain) GetVideoSwapchainHandle;
			public function HRESULT(IMFMediaEngineEx *self, BOOL fEnable) EnableHorizontalMirrorMode;
			public function HRESULT(IMFMediaEngineEx *self, uint32* pCategory) GetAudioStreamCategory;
			public function HRESULT(IMFMediaEngineEx *self, uint32 category) SetAudioStreamCategory;
			public function HRESULT(IMFMediaEngineEx *self, uint32* pRole) GetAudioEndpointRole;
			public function HRESULT(IMFMediaEngineEx *self, uint32 role) SetAudioEndpointRole;
			public function HRESULT(IMFMediaEngineEx *self, BOOL* pfEnabled) GetRealTimeMode;
			public function HRESULT(IMFMediaEngineEx *self, BOOL fEnable) SetRealTimeMode;
			public function HRESULT(IMFMediaEngineEx *self, double seekTime, MF_MEDIA_ENGINE_SEEK_MODE seekMode) SetCurrentTimeEx;
			public function HRESULT(IMFMediaEngineEx *self, BOOL fEnableTimer) EnableTimeUpdateTimer;
		}
		[CRepr]
		public struct IMFMediaEngineAudioEndpointId : IUnknown
		{
			public const new Guid IID = .(0x7a3bac98, 0x0e76, 0x49fb, 0x8c, 0x20, 0x8a, 0x86, 0xfd, 0x98, 0xea, 0xf2);
			
			public function HRESULT(IMFMediaEngineAudioEndpointId *self, PWSTR pszEndpointId) SetAudioEndpointId;
			public function HRESULT(IMFMediaEngineAudioEndpointId *self, PWSTR* ppszEndpointId) GetAudioEndpointId;
		}
		[CRepr]
		public struct IMFMediaEngineExtension : IUnknown
		{
			public const new Guid IID = .(0x2f69d622, 0x20b5, 0x41e9, 0xaf, 0xdf, 0x89, 0xce, 0xd1, 0xdd, 0xa0, 0x4e);
			
			public function HRESULT(IMFMediaEngineExtension *self, BOOL AudioOnly, BSTR MimeType, MF_MEDIA_ENGINE_CANPLAY* pAnswer) CanPlayType;
			public function HRESULT(IMFMediaEngineExtension *self, BSTR bstrURL, IMFByteStream* pByteStream, MF_OBJECT_TYPE type, IUnknown** ppIUnknownCancelCookie, IMFAsyncCallback* pCallback, IUnknown* punkState) BeginCreateObject;
			public function HRESULT(IMFMediaEngineExtension *self, IUnknown* pIUnknownCancelCookie) CancelObjectCreation;
			public function HRESULT(IMFMediaEngineExtension *self, IMFAsyncResult* pResult, IUnknown** ppObject) EndCreateObject;
		}
		[CRepr]
		public struct IMFMediaEngineProtectedContent : IUnknown
		{
			public const new Guid IID = .(0x9f8021e8, 0x9c8c, 0x487e, 0xbb, 0x5c, 0x79, 0xaa, 0x47, 0x79, 0x93, 0x8c);
			
			public function HRESULT(IMFMediaEngineProtectedContent *self, IUnknown* pUnkDeviceContext) ShareResources;
			public function HRESULT(IMFMediaEngineProtectedContent *self, uint32* pFrameProtectionFlags) GetRequiredProtections;
			public function HRESULT(IMFMediaEngineProtectedContent *self, HWND hwnd) SetOPMWindow;
			public function HRESULT(IMFMediaEngineProtectedContent *self, IUnknown* pDstSurf, MFVideoNormalizedRect* pSrc, RECT* pDst, MFARGB* pBorderClr, uint32* pFrameProtectionFlags) TransferVideoFrame;
			public function HRESULT(IMFMediaEngineProtectedContent *self, IMFContentProtectionManager* pCPM) SetContentProtectionManager;
			public function HRESULT(IMFMediaEngineProtectedContent *self, uint8* pbBlob, uint32 cbBlob) SetApplicationCertificate;
		}
		[CRepr]
		public struct IAudioSourceProvider : IUnknown
		{
			public const new Guid IID = .(0xebbaf249, 0xafc2, 0x4582, 0x91, 0xc6, 0xb6, 0x0d, 0xf2, 0xe8, 0x49, 0x54);
			
			public function HRESULT(IAudioSourceProvider *self, uint32 dwSampleCount, uint32* pdwChannelCount, float* pInterleavedAudioData) ProvideInput;
		}
		[CRepr]
		public struct IMFMediaEngineWebSupport : IUnknown
		{
			public const new Guid IID = .(0xba2743a1, 0x07e0, 0x48ef, 0x84, 0xb6, 0x9a, 0x2e, 0xd0, 0x23, 0xca, 0x6c);
			
			public function BOOL(IMFMediaEngineWebSupport *self) ShouldDelayTheLoadEvent;
			public function HRESULT(IMFMediaEngineWebSupport *self, uint32 dwSampleRate, IAudioSourceProvider** ppSourceProvider) ConnectWebAudio;
			public function HRESULT(IMFMediaEngineWebSupport *self) DisconnectWebAudio;
		}
		[CRepr]
		public struct IMFMediaSourceExtensionNotify : IUnknown
		{
			public const new Guid IID = .(0xa7901327, 0x05dd, 0x4469, 0xa7, 0xb7, 0x0e, 0x01, 0x97, 0x9e, 0x36, 0x1d);
			
			public function void(IMFMediaSourceExtensionNotify *self) OnSourceOpen;
			public function void(IMFMediaSourceExtensionNotify *self) OnSourceEnded;
			public function void(IMFMediaSourceExtensionNotify *self) OnSourceClose;
		}
		[CRepr]
		public struct IMFBufferListNotify : IUnknown
		{
			public const new Guid IID = .(0x24cd47f7, 0x81d8, 0x4785, 0xad, 0xb2, 0xaf, 0x69, 0x7a, 0x96, 0x3c, 0xd2);
			
			public function void(IMFBufferListNotify *self) OnAddSourceBuffer;
			public function void(IMFBufferListNotify *self) OnRemoveSourceBuffer;
		}
		[CRepr]
		public struct IMFSourceBufferNotify : IUnknown
		{
			public const new Guid IID = .(0x87e47623, 0x2ceb, 0x45d6, 0x9b, 0x88, 0xd8, 0x52, 0x0c, 0x4d, 0xcb, 0xbc);
			
			public function void(IMFSourceBufferNotify *self) OnUpdateStart;
			public function void(IMFSourceBufferNotify *self) OnAbort;
			public function void(IMFSourceBufferNotify *self, HRESULT hr) OnError;
			public function void(IMFSourceBufferNotify *self) OnUpdate;
			public function void(IMFSourceBufferNotify *self) OnUpdateEnd;
		}
		[CRepr]
		public struct IMFSourceBuffer : IUnknown
		{
			public const new Guid IID = .(0xe2cd3a4b, 0xaf25, 0x4d3d, 0x91, 0x10, 0xda, 0x0e, 0x6f, 0x8e, 0xe8, 0x77);
			
			public function BOOL(IMFSourceBuffer *self) GetUpdating;
			public function HRESULT(IMFSourceBuffer *self, IMFMediaTimeRange** ppBuffered) GetBuffered;
			public function double(IMFSourceBuffer *self) GetTimeStampOffset;
			public function HRESULT(IMFSourceBuffer *self, double offset) SetTimeStampOffset;
			public function double(IMFSourceBuffer *self) GetAppendWindowStart;
			public function HRESULT(IMFSourceBuffer *self, double time) SetAppendWindowStart;
			public function double(IMFSourceBuffer *self) GetAppendWindowEnd;
			public function HRESULT(IMFSourceBuffer *self, double time) SetAppendWindowEnd;
			public function HRESULT(IMFSourceBuffer *self, uint8* pData, uint32 len) Append;
			public function HRESULT(IMFSourceBuffer *self, IMFByteStream* pStream, uint64* pMaxLen) AppendByteStream;
			public function HRESULT(IMFSourceBuffer *self) Abort;
			public function HRESULT(IMFSourceBuffer *self, double start, double end) Remove;
		}
		[CRepr]
		public struct IMFSourceBufferAppendMode : IUnknown
		{
			public const new Guid IID = .(0x19666fb4, 0xbabe, 0x4c55, 0xbc, 0x03, 0x0a, 0x07, 0x4d, 0xa3, 0x7e, 0x2a);
			
			public function MF_MSE_APPEND_MODE(IMFSourceBufferAppendMode *self) GetAppendMode;
			public function HRESULT(IMFSourceBufferAppendMode *self, MF_MSE_APPEND_MODE mode) SetAppendMode;
		}
		[CRepr]
		public struct IMFSourceBufferList : IUnknown
		{
			public const new Guid IID = .(0x249981f8, 0x8325, 0x41f3, 0xb8, 0x0c, 0x3b, 0x9e, 0x3a, 0xad, 0x0c, 0xbe);
			
			public function uint32(IMFSourceBufferList *self) GetLength;
			public function IMFSourceBuffer*(IMFSourceBufferList *self, uint32 index) GetSourceBuffer;
		}
		[CRepr]
		public struct IMFMediaSourceExtension : IUnknown
		{
			public const new Guid IID = .(0xe467b94e, 0xa713, 0x4562, 0xa8, 0x02, 0x81, 0x6a, 0x42, 0xe9, 0x00, 0x8a);
			
			public function IMFSourceBufferList*(IMFMediaSourceExtension *self) GetSourceBuffers;
			public function IMFSourceBufferList*(IMFMediaSourceExtension *self) GetActiveSourceBuffers;
			public function MF_MSE_READY(IMFMediaSourceExtension *self) GetReadyState;
			public function double(IMFMediaSourceExtension *self) GetDuration;
			public function HRESULT(IMFMediaSourceExtension *self, double duration) SetDuration;
			public function HRESULT(IMFMediaSourceExtension *self, BSTR type, IMFSourceBufferNotify* pNotify, IMFSourceBuffer** ppSourceBuffer) AddSourceBuffer;
			public function HRESULT(IMFMediaSourceExtension *self, IMFSourceBuffer* pSourceBuffer) RemoveSourceBuffer;
			public function HRESULT(IMFMediaSourceExtension *self, MF_MSE_ERROR error) SetEndOfStream;
			public function BOOL(IMFMediaSourceExtension *self, BSTR type) IsTypeSupported;
			public function IMFSourceBuffer*(IMFMediaSourceExtension *self, uint32 dwStreamIndex) GetSourceBuffer;
		}
		[CRepr]
		public struct IMFMediaSourceExtensionLiveSeekableRange : IUnknown
		{
			public const new Guid IID = .(0x5d1abfd6, 0x450a, 0x4d92, 0x9e, 0xfc, 0xd6, 0xb6, 0xcb, 0xc1, 0xf4, 0xda);
			
			public function HRESULT(IMFMediaSourceExtensionLiveSeekableRange *self, double start, double end) SetLiveSeekableRange;
			public function HRESULT(IMFMediaSourceExtensionLiveSeekableRange *self) ClearLiveSeekableRange;
		}
		[CRepr]
		public struct IMFMediaEngineEME : IUnknown
		{
			public const new Guid IID = .(0x50dc93e4, 0xba4f, 0x4275, 0xae, 0x66, 0x83, 0xe8, 0x36, 0xe5, 0x74, 0x69);
			
			public function HRESULT(IMFMediaEngineEME *self, IMFMediaKeys** keys) get_Keys;
			public function HRESULT(IMFMediaEngineEME *self, IMFMediaKeys* keys) SetMediaKeys;
		}
		[CRepr]
		public struct IMFMediaEngineSrcElementsEx : IMFMediaEngineSrcElements
		{
			public const new Guid IID = .(0x654a6bb3, 0xe1a3, 0x424a, 0x99, 0x08, 0x53, 0xa4, 0x3a, 0x0d, 0xfd, 0xa0);
			
			public function HRESULT(IMFMediaEngineSrcElementsEx *self, BSTR pURL, BSTR pType, BSTR pMedia, BSTR keySystem) AddElementEx;
			public function HRESULT(IMFMediaEngineSrcElementsEx *self, uint32 index, BSTR* pType) GetKeySystem;
		}
		[CRepr]
		public struct IMFMediaEngineNeedKeyNotify : IUnknown
		{
			public const new Guid IID = .(0x46a30204, 0xa696, 0x4b18, 0x88, 0x04, 0x24, 0x6b, 0x8f, 0x03, 0x1b, 0xb1);
			
			public function void(IMFMediaEngineNeedKeyNotify *self, uint8* initData, uint32 cb) NeedKey;
		}
		[CRepr]
		public struct IMFMediaKeys : IUnknown
		{
			public const new Guid IID = .(0x5cb31c05, 0x61ff, 0x418f, 0xaf, 0xda, 0xca, 0xaf, 0x41, 0x42, 0x1a, 0x38);
			
			public function HRESULT(IMFMediaKeys *self, BSTR mimeType, uint8* initData, uint32 cb, uint8* customData, uint32 cbCustomData, IMFMediaKeySessionNotify* notify, IMFMediaKeySession** ppSession) CreateSession;
			public function HRESULT(IMFMediaKeys *self, BSTR* keySystem) get_KeySystem;
			public function HRESULT(IMFMediaKeys *self) Shutdown;
			public function HRESULT(IMFMediaKeys *self, IMFCdmSuspendNotify** notify) GetSuspendNotify;
		}
		[CRepr]
		public struct IMFMediaKeySession : IUnknown
		{
			public const new Guid IID = .(0x24fa67d5, 0xd1d0, 0x4dc5, 0x99, 0x5c, 0xc0, 0xef, 0xdc, 0x19, 0x1f, 0xb5);
			
			public function HRESULT(IMFMediaKeySession *self, uint16* code, uint32* systemCode) GetError;
			public function HRESULT(IMFMediaKeySession *self, BSTR* keySystem) get_KeySystem;
			public function HRESULT(IMFMediaKeySession *self, BSTR* sessionId) get_SessionId;
			public function HRESULT(IMFMediaKeySession *self, uint8* key, uint32 cb) Update;
			public function HRESULT(IMFMediaKeySession *self) Close;
		}
		[CRepr]
		public struct IMFMediaKeySessionNotify : IUnknown
		{
			public const new Guid IID = .(0x6a0083f9, 0x8947, 0x4c1d, 0x9c, 0xe0, 0xcd, 0xee, 0x22, 0xb2, 0x31, 0x35);
			
			public function void(IMFMediaKeySessionNotify *self, BSTR destinationURL, uint8* message, uint32 cb) KeyMessage;
			public function void(IMFMediaKeySessionNotify *self) KeyAdded;
			public function void(IMFMediaKeySessionNotify *self, uint16 code, uint32 systemCode) KeyError;
		}
		[CRepr]
		public struct IMFCdmSuspendNotify : IUnknown
		{
			public const new Guid IID = .(0x7a5645d2, 0x43bd, 0x47fd, 0x87, 0xb7, 0xdc, 0xd2, 0x4c, 0xc7, 0xd6, 0x92);
			
			public function HRESULT(IMFCdmSuspendNotify *self) Begin;
			public function HRESULT(IMFCdmSuspendNotify *self) End;
		}
		[CRepr]
		public struct IMFHDCPStatus : IUnknown
		{
			public const new Guid IID = .(0xde400f54, 0x5bf1, 0x40cf, 0x89, 0x64, 0x0b, 0xea, 0x13, 0x6b, 0x1e, 0x3d);
			
			public function HRESULT(IMFHDCPStatus *self, MF_HDCP_STATUS* pStatus, BOOL* pfStatus) Query;
			public function HRESULT(IMFHDCPStatus *self, MF_HDCP_STATUS status) Set;
		}
		[CRepr]
		public struct IMFMediaEngineOPMInfo : IUnknown
		{
			public const new Guid IID = .(0x765763e6, 0x6c01, 0x4b01, 0xbb, 0x0f, 0xb8, 0x29, 0xf6, 0x0e, 0xd2, 0x8c);
			
			public function HRESULT(IMFMediaEngineOPMInfo *self, MF_MEDIA_ENGINE_OPM_STATUS* pStatus, BOOL* pConstricted) GetOPMInfo;
		}
		[CRepr]
		public struct IMFMediaEngineClassFactory : IUnknown
		{
			public const new Guid IID = .(0x4d645ace, 0x26aa, 0x4688, 0x9b, 0xe1, 0xdf, 0x35, 0x16, 0x99, 0x0b, 0x93);
			
			public function HRESULT(IMFMediaEngineClassFactory *self, uint32 dwFlags, IMFAttributes* pAttr, IMFMediaEngine** ppPlayer) CreateInstance;
			public function HRESULT(IMFMediaEngineClassFactory *self, IMFMediaTimeRange** ppTimeRange) CreateTimeRange;
			public function HRESULT(IMFMediaEngineClassFactory *self, IMFMediaError** ppError) CreateError;
		}
		[CRepr]
		public struct IMFMediaEngineClassFactoryEx : IMFMediaEngineClassFactory
		{
			public const new Guid IID = .(0xc56156c6, 0xea5b, 0x48a5, 0x9d, 0xf8, 0xfb, 0xe0, 0x35, 0xd0, 0x92, 0x9e);
			
			public function HRESULT(IMFMediaEngineClassFactoryEx *self, uint32 dwFlags, IMFAttributes* pAttr, IMFMediaSourceExtension** ppMSE) CreateMediaSourceExtension;
			public function HRESULT(IMFMediaEngineClassFactoryEx *self, BSTR keySystem, BSTR cdmStorePath, IMFMediaKeys** ppKeys) CreateMediaKeys;
			public function HRESULT(IMFMediaEngineClassFactoryEx *self, BSTR type, BSTR keySystem, BOOL* isSupported) IsTypeSupported;
		}
		[CRepr]
		public struct IMFMediaEngineClassFactory2 : IUnknown
		{
			public const new Guid IID = .(0x09083cef, 0x867f, 0x4bf6, 0x87, 0x76, 0xde, 0xe3, 0xa7, 0xb4, 0x2f, 0xca);
			
			public function HRESULT(IMFMediaEngineClassFactory2 *self, BSTR keySystem, BSTR defaultCdmStorePath, BSTR inprivateCdmStorePath, IMFMediaKeys** ppKeys) CreateMediaKeys2;
		}
		[CRepr]
		public struct IMFExtendedDRMTypeSupport : IUnknown
		{
			public const new Guid IID = .(0x332ec562, 0x3758, 0x468d, 0xa7, 0x84, 0xe3, 0x8f, 0x23, 0x55, 0x21, 0x28);
			
			public function HRESULT(IMFExtendedDRMTypeSupport *self, BSTR type, BSTR keySystem, MF_MEDIA_ENGINE_CANPLAY* pAnswer) IsTypeSupportedEx;
		}
		[CRepr]
		public struct IMFMediaEngineSupportsSourceTransfer : IUnknown
		{
			public const new Guid IID = .(0xa724b056, 0x1b2e, 0x4642, 0xa6, 0xf3, 0xdb, 0x94, 0x20, 0xc5, 0x29, 0x08);
			
			public function HRESULT(IMFMediaEngineSupportsSourceTransfer *self, BOOL* pfShouldTransfer) ShouldTransferSource;
			public function HRESULT(IMFMediaEngineSupportsSourceTransfer *self, IMFByteStream** ppByteStream, IMFMediaSource** ppMediaSource, IMFMediaSourceExtension** ppMSE) DetachMediaSource;
			public function HRESULT(IMFMediaEngineSupportsSourceTransfer *self, IMFByteStream* pByteStream, IMFMediaSource* pMediaSource, IMFMediaSourceExtension* pMSE) AttachMediaSource;
		}
		[CRepr]
		public struct IMFMediaEngineTransferSource : IUnknown
		{
			public const new Guid IID = .(0x24230452, 0xfe54, 0x40cc, 0x94, 0xf3, 0xfc, 0xc3, 0x94, 0xc3, 0x40, 0xd6);
			
			public function HRESULT(IMFMediaEngineTransferSource *self, IMFMediaEngine* destination) TransferSourceToMediaEngine;
		}
		[CRepr]
		public struct IMFTimedText : IUnknown
		{
			public const new Guid IID = .(0x1f2a94c9, 0xa3df, 0x430d, 0x9d, 0x0f, 0xac, 0xd8, 0x5d, 0xdc, 0x29, 0xaf);
			
			public function HRESULT(IMFTimedText *self, IMFTimedTextNotify* notify) RegisterNotifications;
			public function HRESULT(IMFTimedText *self, uint32 trackId, BOOL selected) SelectTrack;
			public function HRESULT(IMFTimedText *self, IMFByteStream* byteStream, PWSTR label, PWSTR language, MF_TIMED_TEXT_TRACK_KIND kind, BOOL isDefault, uint32* trackId) AddDataSource;
			public function HRESULT(IMFTimedText *self, PWSTR url, PWSTR label, PWSTR language, MF_TIMED_TEXT_TRACK_KIND kind, BOOL isDefault, uint32* trackId) AddDataSourceFromUrl;
			public function HRESULT(IMFTimedText *self, PWSTR label, PWSTR language, MF_TIMED_TEXT_TRACK_KIND kind, IMFTimedTextTrack** track) AddTrack;
			public function HRESULT(IMFTimedText *self, IMFTimedTextTrack* track) RemoveTrack;
			public function HRESULT(IMFTimedText *self, double* offset) GetCueTimeOffset;
			public function HRESULT(IMFTimedText *self, double offset) SetCueTimeOffset;
			public function HRESULT(IMFTimedText *self, IMFTimedTextTrackList** tracks) GetTracks;
			public function HRESULT(IMFTimedText *self, IMFTimedTextTrackList** activeTracks) GetActiveTracks;
			public function HRESULT(IMFTimedText *self, IMFTimedTextTrackList** textTracks) GetTextTracks;
			public function HRESULT(IMFTimedText *self, IMFTimedTextTrackList** metadataTracks) GetMetadataTracks;
			public function HRESULT(IMFTimedText *self, BOOL enabled) SetInBandEnabled;
			public function BOOL(IMFTimedText *self) IsInBandEnabled;
		}
		[CRepr]
		public struct IMFTimedTextNotify : IUnknown
		{
			public const new Guid IID = .(0xdf6b87b6, 0xce12, 0x45db, 0xab, 0xa7, 0x43, 0x2f, 0xe0, 0x54, 0xe5, 0x7d);
			
			public function void(IMFTimedTextNotify *self, uint32 trackId) TrackAdded;
			public function void(IMFTimedTextNotify *self, uint32 trackId) TrackRemoved;
			public function void(IMFTimedTextNotify *self, uint32 trackId, BOOL selected) TrackSelected;
			public function void(IMFTimedTextNotify *self, uint32 trackId) TrackReadyStateChanged;
			public function void(IMFTimedTextNotify *self, MF_TIMED_TEXT_ERROR_CODE errorCode, HRESULT extendedErrorCode, uint32 sourceTrackId) Error;
			public function void(IMFTimedTextNotify *self, MF_TIMED_TEXT_CUE_EVENT cueEvent, double currentTime, IMFTimedTextCue* cue) Cue;
			public function void(IMFTimedTextNotify *self) Reset;
		}
		[CRepr]
		public struct IMFTimedTextTrack : IUnknown
		{
			public const new Guid IID = .(0x8822c32d, 0x654e, 0x4233, 0xbf, 0x21, 0xd7, 0xf2, 0xe6, 0x7d, 0x30, 0xd4);
			
			public function uint32(IMFTimedTextTrack *self) GetId;
			public function HRESULT(IMFTimedTextTrack *self, PWSTR* label) GetLabel;
			public function HRESULT(IMFTimedTextTrack *self, PWSTR label) SetLabel;
			public function HRESULT(IMFTimedTextTrack *self, PWSTR* language) GetLanguage;
			public function MF_TIMED_TEXT_TRACK_KIND(IMFTimedTextTrack *self) GetTrackKind;
			public function BOOL(IMFTimedTextTrack *self) IsInBand;
			public function HRESULT(IMFTimedTextTrack *self, PWSTR* dispatchType) GetInBandMetadataTrackDispatchType;
			public function BOOL(IMFTimedTextTrack *self) IsActive;
			public function MF_TIMED_TEXT_ERROR_CODE(IMFTimedTextTrack *self) GetErrorCode;
			public function HRESULT(IMFTimedTextTrack *self) GetExtendedErrorCode;
			public function HRESULT(IMFTimedTextTrack *self, Guid* format) GetDataFormat;
			public function MF_TIMED_TEXT_TRACK_READY_STATE(IMFTimedTextTrack *self) GetReadyState;
			public function HRESULT(IMFTimedTextTrack *self, IMFTimedTextCueList** cues) GetCueList;
		}
		[CRepr]
		public struct IMFTimedTextTrackList : IUnknown
		{
			public const new Guid IID = .(0x23ff334c, 0x442c, 0x445f, 0xbc, 0xcc, 0xed, 0xc4, 0x38, 0xaa, 0x11, 0xe2);
			
			public function uint32(IMFTimedTextTrackList *self) GetLength;
			public function HRESULT(IMFTimedTextTrackList *self, uint32 index, IMFTimedTextTrack** track) GetTrack;
			public function HRESULT(IMFTimedTextTrackList *self, uint32 trackId, IMFTimedTextTrack** track) GetTrackById;
		}
		[CRepr]
		public struct IMFTimedTextCue : IUnknown
		{
			public const new Guid IID = .(0x1e560447, 0x9a2b, 0x43e1, 0xa9, 0x4c, 0xb0, 0xaa, 0xab, 0xfb, 0xfb, 0xc9);
			
			public function uint32(IMFTimedTextCue *self) GetId;
			public function HRESULT(IMFTimedTextCue *self, PWSTR* originalId) GetOriginalId;
			public function MF_TIMED_TEXT_TRACK_KIND(IMFTimedTextCue *self) GetCueKind;
			public function double(IMFTimedTextCue *self) GetStartTime;
			public function double(IMFTimedTextCue *self) GetDuration;
			public function uint32(IMFTimedTextCue *self) GetTrackId;
			public function HRESULT(IMFTimedTextCue *self, IMFTimedTextBinary** data) GetData;
			public function HRESULT(IMFTimedTextCue *self, IMFTimedTextRegion** region) GetRegion;
			public function HRESULT(IMFTimedTextCue *self, IMFTimedTextStyle** style) GetStyle;
			public function uint32(IMFTimedTextCue *self) GetLineCount;
			public function HRESULT(IMFTimedTextCue *self, uint32 index, IMFTimedTextFormattedText** line) GetLine;
		}
		[CRepr]
		public struct IMFTimedTextFormattedText : IUnknown
		{
			public const new Guid IID = .(0xe13af3c1, 0x4d47, 0x4354, 0xb1, 0xf5, 0xe8, 0x3a, 0xe0, 0xec, 0xae, 0x60);
			
			public function HRESULT(IMFTimedTextFormattedText *self, PWSTR* text) GetText;
			public function uint32(IMFTimedTextFormattedText *self) GetSubformattingCount;
			public function HRESULT(IMFTimedTextFormattedText *self, uint32 index, uint32* firstChar, uint32* charLength, IMFTimedTextStyle** style) GetSubformatting;
		}
		[CRepr]
		public struct IMFTimedTextStyle : IUnknown
		{
			public const new Guid IID = .(0x09b2455d, 0xb834, 0x4f01, 0xa3, 0x47, 0x90, 0x52, 0xe2, 0x1c, 0x45, 0x0e);
			
			public function HRESULT(IMFTimedTextStyle *self, PWSTR* name) GetName;
			public function BOOL(IMFTimedTextStyle *self) IsExternal;
			public function HRESULT(IMFTimedTextStyle *self, PWSTR* fontFamily) GetFontFamily;
			public function HRESULT(IMFTimedTextStyle *self, double* fontSize, MF_TIMED_TEXT_UNIT_TYPE* unitType) GetFontSize;
			public function HRESULT(IMFTimedTextStyle *self, MFARGB* color) GetColor;
			public function HRESULT(IMFTimedTextStyle *self, MFARGB* bgColor) GetBackgroundColor;
			public function HRESULT(IMFTimedTextStyle *self, BOOL* showBackgroundAlways) GetShowBackgroundAlways;
			public function HRESULT(IMFTimedTextStyle *self, MF_TIMED_TEXT_FONT_STYLE* fontStyle) GetFontStyle;
			public function HRESULT(IMFTimedTextStyle *self, BOOL* bold) GetBold;
			public function HRESULT(IMFTimedTextStyle *self, BOOL* rightToLeft) GetRightToLeft;
			public function HRESULT(IMFTimedTextStyle *self, MF_TIMED_TEXT_ALIGNMENT* textAlign) GetTextAlignment;
			public function HRESULT(IMFTimedTextStyle *self, uint32* textDecoration) GetTextDecoration;
			public function HRESULT(IMFTimedTextStyle *self, MFARGB* color, double* thickness, double* blurRadius, MF_TIMED_TEXT_UNIT_TYPE* unitType) GetTextOutline;
		}
		[CRepr]
		public struct IMFTimedTextRegion : IUnknown
		{
			public const new Guid IID = .(0xc8d22afc, 0xbc47, 0x4bdf, 0x9b, 0x04, 0x78, 0x7e, 0x49, 0xce, 0x3f, 0x58);
			
			public function HRESULT(IMFTimedTextRegion *self, PWSTR* name) GetName;
			public function HRESULT(IMFTimedTextRegion *self, double* pX, double* pY, MF_TIMED_TEXT_UNIT_TYPE* unitType) GetPosition;
			public function HRESULT(IMFTimedTextRegion *self, double* pWidth, double* pHeight, MF_TIMED_TEXT_UNIT_TYPE* unitType) GetExtent;
			public function HRESULT(IMFTimedTextRegion *self, MFARGB* bgColor) GetBackgroundColor;
			public function HRESULT(IMFTimedTextRegion *self, MF_TIMED_TEXT_WRITING_MODE* writingMode) GetWritingMode;
			public function HRESULT(IMFTimedTextRegion *self, MF_TIMED_TEXT_DISPLAY_ALIGNMENT* displayAlign) GetDisplayAlignment;
			public function HRESULT(IMFTimedTextRegion *self, double* pLineHeight, MF_TIMED_TEXT_UNIT_TYPE* unitType) GetLineHeight;
			public function HRESULT(IMFTimedTextRegion *self, BOOL* clipOverflow) GetClipOverflow;
			public function HRESULT(IMFTimedTextRegion *self, double* before, double* start, double* after, double* end, MF_TIMED_TEXT_UNIT_TYPE* unitType) GetPadding;
			public function HRESULT(IMFTimedTextRegion *self, BOOL* wrap) GetWrap;
			public function HRESULT(IMFTimedTextRegion *self, int32* zIndex) GetZIndex;
			public function HRESULT(IMFTimedTextRegion *self, MF_TIMED_TEXT_SCROLL_MODE* scrollMode) GetScrollMode;
		}
		[CRepr]
		public struct IMFTimedTextBinary : IUnknown
		{
			public const new Guid IID = .(0x4ae3a412, 0x0545, 0x43c4, 0xbf, 0x6f, 0x6b, 0x97, 0xa5, 0xc6, 0xc4, 0x32);
			
			public function HRESULT(IMFTimedTextBinary *self, uint8** data, uint32* length) GetData;
		}
		[CRepr]
		public struct IMFTimedTextCueList : IUnknown
		{
			public const new Guid IID = .(0xad128745, 0x211b, 0x40a0, 0x99, 0x81, 0xfe, 0x65, 0xf1, 0x66, 0xd0, 0xfd);
			
			public function uint32(IMFTimedTextCueList *self) GetLength;
			public function HRESULT(IMFTimedTextCueList *self, uint32 index, IMFTimedTextCue** cue) GetCueByIndex;
			public function HRESULT(IMFTimedTextCueList *self, uint32 id, IMFTimedTextCue** cue) GetCueById;
			public function HRESULT(IMFTimedTextCueList *self, PWSTR originalId, IMFTimedTextCue** cue) GetCueByOriginalId;
			public function HRESULT(IMFTimedTextCueList *self, double start, double duration, PWSTR text, IMFTimedTextCue** cue) AddTextCue;
			public function HRESULT(IMFTimedTextCueList *self, double start, double duration, uint8* data, uint32 dataSize, IMFTimedTextCue** cue) AddDataCue;
			public function HRESULT(IMFTimedTextCueList *self, IMFTimedTextCue* cue) RemoveCue;
		}
		[CRepr]
		public struct IMFTimedTextRuby : IUnknown
		{
			public const new Guid IID = .(0x76c6a6f5, 0x4955, 0x4de5, 0xb2, 0x7b, 0x14, 0xb7, 0x34, 0xcc, 0x14, 0xb4);
			
			public function HRESULT(IMFTimedTextRuby *self, PWSTR* rubyText) GetRubyText;
			public function HRESULT(IMFTimedTextRuby *self, MF_TIMED_TEXT_RUBY_POSITION* value) GetRubyPosition;
			public function HRESULT(IMFTimedTextRuby *self, MF_TIMED_TEXT_RUBY_ALIGN* value) GetRubyAlign;
			public function HRESULT(IMFTimedTextRuby *self, MF_TIMED_TEXT_RUBY_RESERVE* value) GetRubyReserve;
		}
		[CRepr]
		public struct IMFTimedTextBouten : IUnknown
		{
			public const new Guid IID = .(0x3c5f3e8a, 0x90c0, 0x464e, 0x81, 0x36, 0x89, 0x8d, 0x29, 0x75, 0xf8, 0x47);
			
			public function HRESULT(IMFTimedTextBouten *self, MF_TIMED_TEXT_BOUTEN_TYPE* value) GetBoutenType;
			public function HRESULT(IMFTimedTextBouten *self, MFARGB* value) GetBoutenColor;
			public function HRESULT(IMFTimedTextBouten *self, MF_TIMED_TEXT_BOUTEN_POSITION* value) GetBoutenPosition;
		}
		[CRepr]
		public struct IMFTimedTextStyle2 : IUnknown
		{
			public const new Guid IID = .(0xdb639199, 0xc809, 0x4c89, 0xbf, 0xca, 0xd0, 0xbb, 0xb9, 0x72, 0x9d, 0x6e);
			
			public function HRESULT(IMFTimedTextStyle2 *self, IMFTimedTextRuby** ruby) GetRuby;
			public function HRESULT(IMFTimedTextStyle2 *self, IMFTimedTextBouten** bouten) GetBouten;
			public function HRESULT(IMFTimedTextStyle2 *self, BOOL* value) IsTextCombined;
			public function HRESULT(IMFTimedTextStyle2 *self, double* value) GetFontAngleInDegrees;
		}
		[CRepr]
		public struct IMFMediaEngineEMENotify : IUnknown
		{
			public const new Guid IID = .(0x9e184d15, 0xcdb7, 0x4f86, 0xb4, 0x9e, 0x56, 0x66, 0x89, 0xf4, 0xa6, 0x01);
			
			public function void(IMFMediaEngineEMENotify *self, uint8* pbInitData, uint32 cb, BSTR bstrInitDataType) Encrypted;
			public function void(IMFMediaEngineEMENotify *self) WaitingForKey;
		}
		[CRepr]
		public struct IMFMediaKeySessionNotify2 : IMFMediaKeySessionNotify
		{
			public const new Guid IID = .(0xc3a9e92a, 0xda88, 0x46b0, 0xa1, 0x10, 0x6c, 0xf9, 0x53, 0x02, 0x6c, 0xb9);
			
			public function void(IMFMediaKeySessionNotify2 *self, MF_MEDIAKEYSESSION_MESSAGETYPE eMessageType, BSTR destinationURL, uint8* pbMessage, uint32 cbMessage) KeyMessage2;
			public function void(IMFMediaKeySessionNotify2 *self) KeyStatusChange;
		}
		[CRepr]
		public struct IMFMediaKeySystemAccess : IUnknown
		{
			public const new Guid IID = .(0xaec63fda, 0x7a97, 0x4944, 0xb3, 0x5c, 0x6c, 0x6d, 0xf8, 0x08, 0x5c, 0xc3);
			
			public function HRESULT(IMFMediaKeySystemAccess *self, IPropertyStore* pCdmCustomConfig, IMFMediaKeys2** ppKeys) CreateMediaKeys;
			public function HRESULT(IMFMediaKeySystemAccess *self, IPropertyStore** ppSupportedConfiguration) get_SupportedConfiguration;
			public function HRESULT(IMFMediaKeySystemAccess *self, BSTR* pKeySystem) get_KeySystem;
		}
		[CRepr]
		public struct IMFMediaEngineClassFactory3 : IUnknown
		{
			public const new Guid IID = .(0x3787614f, 0x65f7, 0x4003, 0xb6, 0x73, 0xea, 0xd8, 0x29, 0x3a, 0x0e, 0x60);
			
			public function HRESULT(IMFMediaEngineClassFactory3 *self, BSTR keySystem, IPropertyStore** ppSupportedConfigurationsArray, uint32 uSize, IMFMediaKeySystemAccess** ppKeyAccess) CreateMediaKeySystemAccess;
		}
		[CRepr]
		public struct IMFMediaKeys2 : IMFMediaKeys
		{
			public const new Guid IID = .(0x45892507, 0xad66, 0x4de2, 0x83, 0xa2, 0xac, 0xbb, 0x13, 0xcd, 0x8d, 0x43);
			
			public function HRESULT(IMFMediaKeys2 *self, MF_MEDIAKEYSESSION_TYPE eSessionType, IMFMediaKeySessionNotify2* pMFMediaKeySessionNotify2, IMFMediaKeySession2** ppSession) CreateSession2;
			public function HRESULT(IMFMediaKeys2 *self, uint8* pbServerCertificate, uint32 cb) SetServerCertificate;
			public function HRESULT(IMFMediaKeys2 *self, HRESULT systemCode, HRESULT* code) GetDOMException;
		}
		[CRepr]
		public struct IMFMediaKeySession2 : IMFMediaKeySession
		{
			public const new Guid IID = .(0xe9707e05, 0x6d55, 0x4636, 0xb1, 0x85, 0x3d, 0xe2, 0x12, 0x10, 0xbd, 0x75);
			
			public function HRESULT(IMFMediaKeySession2 *self, MFMediaKeyStatus** pKeyStatusesArray, uint32* puSize) get_KeyStatuses;
			public function HRESULT(IMFMediaKeySession2 *self, BSTR bstrSessionId, BOOL* pfLoaded) Load;
			public function HRESULT(IMFMediaKeySession2 *self, BSTR initDataType, uint8* pbInitData, uint32 cb) GenerateRequest;
			public function HRESULT(IMFMediaKeySession2 *self, double* dblExpiration) get_Expiration;
			public function HRESULT(IMFMediaKeySession2 *self) Remove;
			public function HRESULT(IMFMediaKeySession2 *self) Shutdown;
		}
		[CRepr]
		public struct IMFMediaEngineClassFactory4 : IUnknown
		{
			public const new Guid IID = .(0xfbe256c1, 0x43cf, 0x4a9b, 0x8c, 0xb8, 0xce, 0x86, 0x32, 0xa3, 0x41, 0x86);
			
			public function HRESULT(IMFMediaEngineClassFactory4 *self, PWSTR keySystem, Guid* riid, void** ppvObject) CreateContentDecryptionModuleFactory;
		}
		[CRepr]
		public struct IMFDLNASinkInit : IUnknown
		{
			public const new Guid IID = .(0x0c012799, 0x1b61, 0x4c10, 0xbd, 0xa9, 0x04, 0x44, 0x5b, 0xe5, 0xf5, 0x61);
			
			public function HRESULT(IMFDLNASinkInit *self, IMFByteStream* pByteStream, BOOL fPal) Initialize;
		}
		[CRepr]
		public struct IMFReadWriteClassFactory : IUnknown
		{
			public const new Guid IID = .(0xe7fe2e12, 0x661c, 0x40da, 0x92, 0xf9, 0x4f, 0x00, 0x2a, 0xb6, 0x76, 0x27);
			
			public function HRESULT(IMFReadWriteClassFactory *self, Guid* clsid, PWSTR pwszURL, IMFAttributes* pAttributes, Guid* riid, void** ppvObject) CreateInstanceFromURL;
			public function HRESULT(IMFReadWriteClassFactory *self, Guid* clsid, IUnknown* punkObject, IMFAttributes* pAttributes, Guid* riid, void** ppvObject) CreateInstanceFromObject;
		}
		[CRepr]
		public struct IMFSourceReader : IUnknown
		{
			public const new Guid IID = .(0x70ae66f2, 0xc809, 0x4e4f, 0x89, 0x15, 0xbd, 0xcb, 0x40, 0x6b, 0x79, 0x93);
			
			public function HRESULT(IMFSourceReader *self, uint32 dwStreamIndex, BOOL* pfSelected) GetStreamSelection;
			public function HRESULT(IMFSourceReader *self, uint32 dwStreamIndex, BOOL fSelected) SetStreamSelection;
			public function HRESULT(IMFSourceReader *self, uint32 dwStreamIndex, uint32 dwMediaTypeIndex, IMFMediaType** ppMediaType) GetNativeMediaType;
			public function HRESULT(IMFSourceReader *self, uint32 dwStreamIndex, IMFMediaType** ppMediaType) GetCurrentMediaType;
			public function HRESULT(IMFSourceReader *self, uint32 dwStreamIndex, uint32* pdwReserved, IMFMediaType* pMediaType) SetCurrentMediaType;
			public function HRESULT(IMFSourceReader *self, Guid* guidTimeFormat, PROPVARIANT* varPosition) SetCurrentPosition;
			public function HRESULT(IMFSourceReader *self, uint32 dwStreamIndex, uint32 dwControlFlags, uint32* pdwActualStreamIndex, uint32* pdwStreamFlags, int64* pllTimestamp, IMFSample** ppSample) ReadSample;
			public function HRESULT(IMFSourceReader *self, uint32 dwStreamIndex) Flush;
			public function HRESULT(IMFSourceReader *self, uint32 dwStreamIndex, Guid* guidService, Guid* riid, void** ppvObject) GetServiceForStream;
			public function HRESULT(IMFSourceReader *self, uint32 dwStreamIndex, Guid* guidAttribute, PROPVARIANT* pvarAttribute) GetPresentationAttribute;
		}
		[CRepr]
		public struct IMFSourceReaderEx : IMFSourceReader
		{
			public const new Guid IID = .(0x7b981cf0, 0x560e, 0x4116, 0x98, 0x75, 0xb0, 0x99, 0x89, 0x5f, 0x23, 0xd7);
			
			public function HRESULT(IMFSourceReaderEx *self, uint32 dwStreamIndex, IMFMediaType* pMediaType, uint32* pdwStreamFlags) SetNativeMediaType;
			public function HRESULT(IMFSourceReaderEx *self, uint32 dwStreamIndex, IUnknown* pTransformOrActivate) AddTransformForStream;
			public function HRESULT(IMFSourceReaderEx *self, uint32 dwStreamIndex) RemoveAllTransformsForStream;
			public function HRESULT(IMFSourceReaderEx *self, uint32 dwStreamIndex, uint32 dwTransformIndex, Guid* pGuidCategory, IMFTransform** ppTransform) GetTransformForStream;
		}
		[CRepr]
		public struct IMFSourceReaderCallback : IUnknown
		{
			public const new Guid IID = .(0xdeec8d99, 0xfa1d, 0x4d82, 0x84, 0xc2, 0x2c, 0x89, 0x69, 0x94, 0x48, 0x67);
			
			public function HRESULT(IMFSourceReaderCallback *self, HRESULT hrStatus, uint32 dwStreamIndex, uint32 dwStreamFlags, int64 llTimestamp, IMFSample* pSample) OnReadSample;
			public function HRESULT(IMFSourceReaderCallback *self, uint32 dwStreamIndex) OnFlush;
			public function HRESULT(IMFSourceReaderCallback *self, uint32 dwStreamIndex, IMFMediaEvent* pEvent) OnEvent;
		}
		[CRepr]
		public struct IMFSourceReaderCallback2 : IMFSourceReaderCallback
		{
			public const new Guid IID = .(0xcf839fe6, 0x8c2a, 0x4dd2, 0xb6, 0xea, 0xc2, 0x2d, 0x69, 0x61, 0xaf, 0x05);
			
			public function HRESULT(IMFSourceReaderCallback2 *self) OnTransformChange;
			public function HRESULT(IMFSourceReaderCallback2 *self, uint32 dwStreamIndex, HRESULT hrStatus) OnStreamError;
		}
		[CRepr]
		public struct IMFSinkWriter : IUnknown
		{
			public const new Guid IID = .(0x3137f1cd, 0xfe5e, 0x4805, 0xa5, 0xd8, 0xfb, 0x47, 0x74, 0x48, 0xcb, 0x3d);
			
			public function HRESULT(IMFSinkWriter *self, IMFMediaType* pTargetMediaType, uint32* pdwStreamIndex) AddStream;
			public function HRESULT(IMFSinkWriter *self, uint32 dwStreamIndex, IMFMediaType* pInputMediaType, IMFAttributes* pEncodingParameters) SetInputMediaType;
			public function HRESULT(IMFSinkWriter *self) BeginWriting;
			public function HRESULT(IMFSinkWriter *self, uint32 dwStreamIndex, IMFSample* pSample) WriteSample;
			public function HRESULT(IMFSinkWriter *self, uint32 dwStreamIndex, int64 llTimestamp) SendStreamTick;
			public function HRESULT(IMFSinkWriter *self, uint32 dwStreamIndex, void* pvContext) PlaceMarker;
			public function HRESULT(IMFSinkWriter *self, uint32 dwStreamIndex) NotifyEndOfSegment;
			public function HRESULT(IMFSinkWriter *self, uint32 dwStreamIndex) Flush;
			public function HRESULT(IMFSinkWriter *self) Finalize;
			public function HRESULT(IMFSinkWriter *self, uint32 dwStreamIndex, Guid* guidService, Guid* riid, void** ppvObject) GetServiceForStream;
			public function HRESULT(IMFSinkWriter *self, uint32 dwStreamIndex, MF_SINK_WRITER_STATISTICS* pStats) GetStatistics;
		}
		[CRepr]
		public struct IMFSinkWriterEx : IMFSinkWriter
		{
			public const new Guid IID = .(0x588d72ab, 0x5bc1, 0x496a, 0x87, 0x14, 0xb7, 0x06, 0x17, 0x14, 0x1b, 0x25);
			
			public function HRESULT(IMFSinkWriterEx *self, uint32 dwStreamIndex, uint32 dwTransformIndex, Guid* pGuidCategory, IMFTransform** ppTransform) GetTransformForStream;
		}
		[CRepr]
		public struct IMFSinkWriterEncoderConfig : IUnknown
		{
			public const new Guid IID = .(0x17c3779e, 0x3cde, 0x4ede, 0x8c, 0x60, 0x38, 0x99, 0xf5, 0xf5, 0x3a, 0xd6);
			
			public function HRESULT(IMFSinkWriterEncoderConfig *self, uint32 dwStreamIndex, IMFMediaType* pTargetMediaType, IMFAttributes* pEncodingParameters) SetTargetMediaType;
			public function HRESULT(IMFSinkWriterEncoderConfig *self, uint32 dwStreamIndex, IMFAttributes* pEncodingParameters) PlaceEncodingParameters;
		}
		[CRepr]
		public struct IMFSinkWriterCallback : IUnknown
		{
			public const new Guid IID = .(0x666f76de, 0x33d2, 0x41b9, 0xa4, 0x58, 0x29, 0xed, 0x0a, 0x97, 0x2c, 0x58);
			
			public function HRESULT(IMFSinkWriterCallback *self, HRESULT hrStatus) OnFinalize;
			public function HRESULT(IMFSinkWriterCallback *self, uint32 dwStreamIndex, void* pvContext) OnMarker;
		}
		[CRepr]
		public struct IMFSinkWriterCallback2 : IMFSinkWriterCallback
		{
			public const new Guid IID = .(0x2456bd58, 0xc067, 0x4513, 0x84, 0xfe, 0x8d, 0x0c, 0x88, 0xff, 0xdc, 0x61);
			
			public function HRESULT(IMFSinkWriterCallback2 *self) OnTransformChange;
			public function HRESULT(IMFSinkWriterCallback2 *self, uint32 dwStreamIndex, HRESULT hrStatus) OnStreamError;
		}
		[CRepr]
		public struct IMFVideoPositionMapper : IUnknown
		{
			public const new Guid IID = .(0x1f6a9f17, 0xe70b, 0x4e24, 0x8a, 0xe4, 0x0b, 0x2c, 0x3b, 0xa7, 0xa4, 0xae);
			
			public function HRESULT(IMFVideoPositionMapper *self, float xOut, float yOut, uint32 dwOutputStreamIndex, uint32 dwInputStreamIndex, float* pxIn, float* pyIn) MapOutputCoordinateToInputStream;
		}
		[CRepr]
		public struct IMFVideoDeviceID : IUnknown
		{
			public const new Guid IID = .(0xa38d9567, 0x5a9c, 0x4f3c, 0xb2, 0x93, 0x8e, 0xb4, 0x15, 0xb2, 0x79, 0xba);
			
			public function HRESULT(IMFVideoDeviceID *self, Guid* pDeviceID) GetDeviceID;
		}
		[CRepr]
		public struct IMFVideoDisplayControl : IUnknown
		{
			public const new Guid IID = .(0xa490b1e4, 0xab84, 0x4d31, 0xa1, 0xb2, 0x18, 0x1e, 0x03, 0xb1, 0x07, 0x7a);
			
			public function HRESULT(IMFVideoDisplayControl *self, SIZE* pszVideo, SIZE* pszARVideo) GetNativeVideoSize;
			public function HRESULT(IMFVideoDisplayControl *self, SIZE* pszMin, SIZE* pszMax) GetIdealVideoSize;
			public function HRESULT(IMFVideoDisplayControl *self, MFVideoNormalizedRect* pnrcSource, RECT* prcDest) SetVideoPosition;
			public function HRESULT(IMFVideoDisplayControl *self, MFVideoNormalizedRect* pnrcSource, RECT* prcDest) GetVideoPosition;
			public function HRESULT(IMFVideoDisplayControl *self, uint32 dwAspectRatioMode) SetAspectRatioMode;
			public function HRESULT(IMFVideoDisplayControl *self, uint32* pdwAspectRatioMode) GetAspectRatioMode;
			public function HRESULT(IMFVideoDisplayControl *self, HWND hwndVideo) SetVideoWindow;
			public function HRESULT(IMFVideoDisplayControl *self, HWND* phwndVideo) GetVideoWindow;
			public function HRESULT(IMFVideoDisplayControl *self) RepaintVideo;
			public function HRESULT(IMFVideoDisplayControl *self, BITMAPINFOHEADER* pBih, uint8** pDib, uint32* pcbDib, int64* pTimeStamp) GetCurrentImage;
			public function HRESULT(IMFVideoDisplayControl *self, uint32 Clr) SetBorderColor;
			public function HRESULT(IMFVideoDisplayControl *self, uint32* pClr) GetBorderColor;
			public function HRESULT(IMFVideoDisplayControl *self, uint32 dwRenderFlags) SetRenderingPrefs;
			public function HRESULT(IMFVideoDisplayControl *self, uint32* pdwRenderFlags) GetRenderingPrefs;
			public function HRESULT(IMFVideoDisplayControl *self, BOOL fFullscreen) SetFullscreen;
			public function HRESULT(IMFVideoDisplayControl *self, BOOL* pfFullscreen) GetFullscreen;
		}
		[CRepr]
		public struct IMFVideoPresenter : IMFClockStateSink
		{
			public const new Guid IID = .(0x29aff080, 0x182a, 0x4a5d, 0xaf, 0x3b, 0x44, 0x8f, 0x3a, 0x63, 0x46, 0xcb);
			
			public function HRESULT(IMFVideoPresenter *self, MFVP_MESSAGE_TYPE eMessage, uint ulParam) ProcessMessage;
			public function HRESULT(IMFVideoPresenter *self, IMFVideoMediaType** ppMediaType) GetCurrentMediaType;
		}
		[CRepr]
		public struct IMFDesiredSample : IUnknown
		{
			public const new Guid IID = .(0x56c294d0, 0x753e, 0x4260, 0x8d, 0x61, 0xa3, 0xd8, 0x82, 0x0b, 0x1d, 0x54);
			
			public function HRESULT(IMFDesiredSample *self, int64* phnsSampleTime, int64* phnsSampleDuration) GetDesiredSampleTimeAndDuration;
			public function void(IMFDesiredSample *self, int64 hnsSampleTime, int64 hnsSampleDuration) SetDesiredSampleTimeAndDuration;
			public function void(IMFDesiredSample *self) Clear;
		}
		[CRepr]
		public struct IMFVideoMixerControl : IUnknown
		{
			public const new Guid IID = .(0xa5c6c53f, 0xc202, 0x4aa5, 0x96, 0x95, 0x17, 0x5b, 0xa8, 0xc5, 0x08, 0xa5);
			
			public function HRESULT(IMFVideoMixerControl *self, uint32 dwStreamID, uint32 dwZ) SetStreamZOrder;
			public function HRESULT(IMFVideoMixerControl *self, uint32 dwStreamID, uint32* pdwZ) GetStreamZOrder;
			public function HRESULT(IMFVideoMixerControl *self, uint32 dwStreamID, MFVideoNormalizedRect* pnrcOutput) SetStreamOutputRect;
			public function HRESULT(IMFVideoMixerControl *self, uint32 dwStreamID, MFVideoNormalizedRect* pnrcOutput) GetStreamOutputRect;
		}
		[CRepr]
		public struct IMFVideoMixerControl2 : IMFVideoMixerControl
		{
			public const new Guid IID = .(0x8459616d, 0x966e, 0x4930, 0xb6, 0x58, 0x54, 0xfa, 0x7e, 0x5a, 0x16, 0xd3);
			
			public function HRESULT(IMFVideoMixerControl2 *self, uint32 dwMixFlags) SetMixingPrefs;
			public function HRESULT(IMFVideoMixerControl2 *self, uint32* pdwMixFlags) GetMixingPrefs;
		}
		[CRepr]
		public struct IMFVideoRenderer : IUnknown
		{
			public const new Guid IID = .(0xdfdfd197, 0xa9ca, 0x43d8, 0xb3, 0x41, 0x6a, 0xf3, 0x50, 0x37, 0x92, 0xcd);
			
			public function HRESULT(IMFVideoRenderer *self, IMFTransform* pVideoMixer, IMFVideoPresenter* pVideoPresenter) InitializeRenderer;
		}
		[CRepr]
		public struct IEVRFilterConfig : IUnknown
		{
			public const new Guid IID = .(0x83e91e85, 0x82c1, 0x4ea7, 0x80, 0x1d, 0x85, 0xdc, 0x50, 0xb7, 0x50, 0x86);
			
			public function HRESULT(IEVRFilterConfig *self, uint32 dwMaxStreams) SetNumberOfStreams;
			public function HRESULT(IEVRFilterConfig *self, uint32* pdwMaxStreams) GetNumberOfStreams;
		}
		[CRepr]
		public struct IEVRFilterConfigEx : IEVRFilterConfig
		{
			public const new Guid IID = .(0xaea36028, 0x796d, 0x454f, 0xbe, 0xee, 0xb4, 0x80, 0x71, 0xe2, 0x43, 0x04);
			
			public function HRESULT(IEVRFilterConfigEx *self, uint32 dwConfigFlags) SetConfigPrefs;
			public function HRESULT(IEVRFilterConfigEx *self, uint32* pdwConfigFlags) GetConfigPrefs;
		}
		[CRepr]
		public struct IMFTopologyServiceLookup : IUnknown
		{
			public const new Guid IID = .(0xfa993889, 0x4383, 0x415a, 0xa9, 0x30, 0xdd, 0x47, 0x2a, 0x8c, 0xf6, 0xf7);
			
			public function HRESULT(IMFTopologyServiceLookup *self, MF_SERVICE_LOOKUP_TYPE Type, uint32 dwIndex, Guid* guidService, Guid* riid, void** ppvObjects, uint32* pnObjects) LookupService;
		}
		[CRepr]
		public struct IMFTopologyServiceLookupClient : IUnknown
		{
			public const new Guid IID = .(0xfa99388a, 0x4383, 0x415a, 0xa9, 0x30, 0xdd, 0x47, 0x2a, 0x8c, 0xf6, 0xf7);
			
			public function HRESULT(IMFTopologyServiceLookupClient *self, IMFTopologyServiceLookup* pLookup) InitServicePointers;
			public function HRESULT(IMFTopologyServiceLookupClient *self) ReleaseServicePointers;
		}
		[CRepr]
		public struct IEVRTrustedVideoPlugin : IUnknown
		{
			public const new Guid IID = .(0x83a4ce40, 0x7710, 0x494b, 0xa8, 0x93, 0xa4, 0x72, 0x04, 0x9a, 0xf6, 0x30);
			
			public function HRESULT(IEVRTrustedVideoPlugin *self, BOOL* pYes) IsInTrustedVideoMode;
			public function HRESULT(IEVRTrustedVideoPlugin *self, BOOL* pYes) CanConstrict;
			public function HRESULT(IEVRTrustedVideoPlugin *self, uint32 dwKPix) SetConstriction;
			public function HRESULT(IEVRTrustedVideoPlugin *self, BOOL bDisable) DisableImageExport;
		}
		[CRepr]
		public struct IMFPMediaPlayer : IUnknown
		{
			public const new Guid IID = .(0xa714590a, 0x58af, 0x430a, 0x85, 0xbf, 0x44, 0xf5, 0xec, 0x83, 0x8d, 0x85);
			
			public function HRESULT(IMFPMediaPlayer *self) Play;
			public function HRESULT(IMFPMediaPlayer *self) Pause;
			public function HRESULT(IMFPMediaPlayer *self) Stop;
			public function HRESULT(IMFPMediaPlayer *self) FrameStep;
			public function HRESULT(IMFPMediaPlayer *self, Guid* guidPositionType, PROPVARIANT* pvPositionValue) SetPosition;
			public function HRESULT(IMFPMediaPlayer *self, Guid* guidPositionType, PROPVARIANT* pvPositionValue) GetPosition;
			public function HRESULT(IMFPMediaPlayer *self, Guid* guidPositionType, PROPVARIANT* pvDurationValue) GetDuration;
			public function HRESULT(IMFPMediaPlayer *self, float flRate) SetRate;
			public function HRESULT(IMFPMediaPlayer *self, float* pflRate) GetRate;
			public function HRESULT(IMFPMediaPlayer *self, BOOL fForwardDirection, float* pflSlowestRate, float* pflFastestRate) GetSupportedRates;
			public function HRESULT(IMFPMediaPlayer *self, MFP_MEDIAPLAYER_STATE* peState) GetState;
			public function HRESULT(IMFPMediaPlayer *self, PWSTR pwszURL, BOOL fSync, uint dwUserData, IMFPMediaItem** ppMediaItem) CreateMediaItemFromURL;
			public function HRESULT(IMFPMediaPlayer *self, IUnknown* pIUnknownObj, BOOL fSync, uint dwUserData, IMFPMediaItem** ppMediaItem) CreateMediaItemFromObject;
			public function HRESULT(IMFPMediaPlayer *self, IMFPMediaItem* pIMFPMediaItem) SetMediaItem;
			public function HRESULT(IMFPMediaPlayer *self) ClearMediaItem;
			public function HRESULT(IMFPMediaPlayer *self, IMFPMediaItem** ppIMFPMediaItem) GetMediaItem;
			public function HRESULT(IMFPMediaPlayer *self, float* pflVolume) GetVolume;
			public function HRESULT(IMFPMediaPlayer *self, float flVolume) SetVolume;
			public function HRESULT(IMFPMediaPlayer *self, float* pflBalance) GetBalance;
			public function HRESULT(IMFPMediaPlayer *self, float flBalance) SetBalance;
			public function HRESULT(IMFPMediaPlayer *self, BOOL* pfMute) GetMute;
			public function HRESULT(IMFPMediaPlayer *self, BOOL fMute) SetMute;
			public function HRESULT(IMFPMediaPlayer *self, SIZE* pszVideo, SIZE* pszARVideo) GetNativeVideoSize;
			public function HRESULT(IMFPMediaPlayer *self, SIZE* pszMin, SIZE* pszMax) GetIdealVideoSize;
			public function HRESULT(IMFPMediaPlayer *self, MFVideoNormalizedRect* pnrcSource) SetVideoSourceRect;
			public function HRESULT(IMFPMediaPlayer *self, MFVideoNormalizedRect* pnrcSource) GetVideoSourceRect;
			public function HRESULT(IMFPMediaPlayer *self, uint32 dwAspectRatioMode) SetAspectRatioMode;
			public function HRESULT(IMFPMediaPlayer *self, uint32* pdwAspectRatioMode) GetAspectRatioMode;
			public function HRESULT(IMFPMediaPlayer *self, HWND* phwndVideo) GetVideoWindow;
			public function HRESULT(IMFPMediaPlayer *self) UpdateVideo;
			public function HRESULT(IMFPMediaPlayer *self, uint32 Clr) SetBorderColor;
			public function HRESULT(IMFPMediaPlayer *self, uint32* pClr) GetBorderColor;
			public function HRESULT(IMFPMediaPlayer *self, IUnknown* pEffect, BOOL fOptional) InsertEffect;
			public function HRESULT(IMFPMediaPlayer *self, IUnknown* pEffect) RemoveEffect;
			public function HRESULT(IMFPMediaPlayer *self) RemoveAllEffects;
			public function HRESULT(IMFPMediaPlayer *self) Shutdown;
		}
		[CRepr]
		public struct IMFPMediaItem : IUnknown
		{
			public const new Guid IID = .(0x90eb3e6b, 0xecbf, 0x45cc, 0xb1, 0xda, 0xc6, 0xfe, 0x3e, 0xa7, 0x0d, 0x57);
			
			public function HRESULT(IMFPMediaItem *self, IMFPMediaPlayer** ppMediaPlayer) GetMediaPlayer;
			public function HRESULT(IMFPMediaItem *self, PWSTR* ppwszURL) GetURL;
			public function HRESULT(IMFPMediaItem *self, IUnknown** ppIUnknown) GetObject;
			public function HRESULT(IMFPMediaItem *self, uint* pdwUserData) GetUserData;
			public function HRESULT(IMFPMediaItem *self, uint dwUserData) SetUserData;
			public function HRESULT(IMFPMediaItem *self, Guid* pguidStartPositionType, PROPVARIANT* pvStartValue, Guid* pguidStopPositionType, PROPVARIANT* pvStopValue) GetStartStopPosition;
			public function HRESULT(IMFPMediaItem *self, Guid* pguidStartPositionType, PROPVARIANT* pvStartValue, Guid* pguidStopPositionType, PROPVARIANT* pvStopValue) SetStartStopPosition;
			public function HRESULT(IMFPMediaItem *self, BOOL* pfHasVideo, BOOL* pfSelected) HasVideo;
			public function HRESULT(IMFPMediaItem *self, BOOL* pfHasAudio, BOOL* pfSelected) HasAudio;
			public function HRESULT(IMFPMediaItem *self, BOOL* pfProtected) IsProtected;
			public function HRESULT(IMFPMediaItem *self, Guid* guidPositionType, PROPVARIANT* pvDurationValue) GetDuration;
			public function HRESULT(IMFPMediaItem *self, uint32* pdwStreamCount) GetNumberOfStreams;
			public function HRESULT(IMFPMediaItem *self, uint32 dwStreamIndex, BOOL* pfEnabled) GetStreamSelection;
			public function HRESULT(IMFPMediaItem *self, uint32 dwStreamIndex, BOOL fEnabled) SetStreamSelection;
			public function HRESULT(IMFPMediaItem *self, uint32 dwStreamIndex, Guid* guidMFAttribute, PROPVARIANT* pvValue) GetStreamAttribute;
			public function HRESULT(IMFPMediaItem *self, Guid* guidMFAttribute, PROPVARIANT* pvValue) GetPresentationAttribute;
			public function HRESULT(IMFPMediaItem *self, uint32* pCharacteristics) GetCharacteristics;
			public function HRESULT(IMFPMediaItem *self, uint32 dwStreamIndex, IUnknown* pMediaSink) SetStreamSink;
			public function HRESULT(IMFPMediaItem *self, IPropertyStore** ppMetadataStore) GetMetadata;
		}
		[CRepr]
		public struct IMFPMediaPlayerCallback : IUnknown
		{
			public const new Guid IID = .(0x766c8ffb, 0x5fdb, 0x4fea, 0xa2, 0x8d, 0xb9, 0x12, 0x99, 0x6f, 0x51, 0xbd);
			
			public function void(IMFPMediaPlayerCallback *self, MFP_EVENT_HEADER* pEventHeader) OnMediaPlayerEvent;
		}
		[CRepr]
		public struct IMFSharingEngineClassFactory : IUnknown
		{
			public const new Guid IID = .(0x2ba61f92, 0x8305, 0x413b, 0x97, 0x33, 0xfa, 0xf1, 0x5f, 0x25, 0x93, 0x84);
			
			public function HRESULT(IMFSharingEngineClassFactory *self, uint32 dwFlags, IMFAttributes* pAttr, IUnknown** ppEngine) CreateInstance;
		}
		[CRepr]
		public struct IMFMediaSharingEngine : IMFMediaEngine
		{
			public const new Guid IID = .(0x8d3ce1bf, 0x2367, 0x40e0, 0x9e, 0xee, 0x40, 0xd3, 0x77, 0xcc, 0x1b, 0x46);
			
			public function HRESULT(IMFMediaSharingEngine *self, DEVICE_INFO* pDevice) GetDevice;
		}
		[CRepr]
		public struct IMFMediaSharingEngineClassFactory : IUnknown
		{
			public const new Guid IID = .(0x524d2bc4, 0xb2b1, 0x4fe5, 0x8f, 0xac, 0xfa, 0x4e, 0x45, 0x12, 0xb4, 0xe0);
			
			public function HRESULT(IMFMediaSharingEngineClassFactory *self, uint32 dwFlags, IMFAttributes* pAttr, IMFMediaSharingEngine** ppEngine) CreateInstance;
		}
		[CRepr]
		public struct IMFImageSharingEngine : IUnknown
		{
			public const new Guid IID = .(0xcfa0ae8e, 0x7e1c, 0x44d2, 0xae, 0x68, 0xfc, 0x4c, 0x14, 0x8a, 0x63, 0x54);
			
			public function HRESULT(IMFImageSharingEngine *self, IUnknown* pStream) SetSource;
			public function HRESULT(IMFImageSharingEngine *self, DEVICE_INFO* pDevice) GetDevice;
			public function HRESULT(IMFImageSharingEngine *self) Shutdown;
		}
		[CRepr]
		public struct IMFImageSharingEngineClassFactory : IUnknown
		{
			public const new Guid IID = .(0x1fc55727, 0xa7fb, 0x4fc8, 0x83, 0xae, 0x8a, 0xf0, 0x24, 0x99, 0x0a, 0xf1);
			
			public function HRESULT(IMFImageSharingEngineClassFactory *self, BSTR pUniqueDeviceName, IMFImageSharingEngine** ppEngine) CreateInstanceFromUDN;
		}
		[CRepr]
		public struct IPlayToControl : IUnknown
		{
			public const new Guid IID = .(0x607574eb, 0xf4b6, 0x45c1, 0xb0, 0x8c, 0xcb, 0x71, 0x51, 0x22, 0x90, 0x1d);
			
			public function HRESULT(IPlayToControl *self, IMFSharingEngineClassFactory* pFactory) Connect;
			public function HRESULT(IPlayToControl *self) Disconnect;
		}
		[CRepr]
		public struct IPlayToControlWithCapabilities : IPlayToControl
		{
			public const new Guid IID = .(0xaa9dd80f, 0xc50a, 0x4220, 0x91, 0xc1, 0x33, 0x22, 0x87, 0xf8, 0x2a, 0x34);
			
			public function HRESULT(IPlayToControlWithCapabilities *self, PLAYTO_SOURCE_CREATEFLAGS* pCapabilities) GetCapabilities;
		}
		[CRepr]
		public struct IPlayToSourceClassFactory : IUnknown
		{
			public const new Guid IID = .(0x842b32a3, 0x9b9b, 0x4d1c, 0xb3, 0xf3, 0x49, 0x19, 0x32, 0x48, 0xa5, 0x54);
			
			public function HRESULT(IPlayToSourceClassFactory *self, uint32 dwFlags, IPlayToControl* pControl, IInspectable** ppSource) CreateInstance;
		}
		[CRepr]
		public struct IEVRVideoStreamControl : IUnknown
		{
			public const new Guid IID = .(0xd0cfe38b, 0x93e7, 0x4772, 0x89, 0x57, 0x04, 0x00, 0xc4, 0x9a, 0x44, 0x85);
			
			public function HRESULT(IEVRVideoStreamControl *self, BOOL fActive) SetStreamActiveState;
			public function HRESULT(IEVRVideoStreamControl *self, BOOL* lpfActive) GetStreamActiveState;
		}
		[CRepr]
		public struct IMFVideoProcessor : IUnknown
		{
			public const new Guid IID = .(0x6ab0000c, 0xfece, 0x4d1f, 0xa2, 0xac, 0xa9, 0x57, 0x35, 0x30, 0x65, 0x6e);
			
			public function HRESULT(IMFVideoProcessor *self, uint32* lpdwNumProcessingModes, Guid** ppVideoProcessingModes) GetAvailableVideoProcessorModes;
			public function HRESULT(IMFVideoProcessor *self, Guid* lpVideoProcessorMode, DXVA2_VideoProcessorCaps* lpVideoProcessorCaps) GetVideoProcessorCaps;
			public function HRESULT(IMFVideoProcessor *self, Guid* lpMode) GetVideoProcessorMode;
			public function HRESULT(IMFVideoProcessor *self, Guid* lpMode) SetVideoProcessorMode;
			public function HRESULT(IMFVideoProcessor *self, uint32 dwProperty, DXVA2_ValueRange* pPropRange) GetProcAmpRange;
			public function HRESULT(IMFVideoProcessor *self, uint32 dwFlags, DXVA2_ProcAmpValues* Values) GetProcAmpValues;
			public function HRESULT(IMFVideoProcessor *self, uint32 dwFlags, DXVA2_ProcAmpValues* pValues) SetProcAmpValues;
			public function HRESULT(IMFVideoProcessor *self, uint32 dwProperty, DXVA2_ValueRange* pPropRange) GetFilteringRange;
			public function HRESULT(IMFVideoProcessor *self, uint32 dwProperty, DXVA2_Fixed32* pValue) GetFilteringValue;
			public function HRESULT(IMFVideoProcessor *self, uint32 dwProperty, DXVA2_Fixed32* pValue) SetFilteringValue;
			public function HRESULT(IMFVideoProcessor *self, uint32* lpClrBkg) GetBackgroundColor;
			public function HRESULT(IMFVideoProcessor *self, uint32 ClrBkg) SetBackgroundColor;
		}
		[CRepr]
		public struct IMFVideoMixerBitmap : IUnknown
		{
			public const new Guid IID = .(0x814c7b20, 0x0fdb, 0x4eec, 0xaf, 0x8f, 0xf9, 0x57, 0xc8, 0xf6, 0x9e, 0xdc);
			
			public function HRESULT(IMFVideoMixerBitmap *self, MFVideoAlphaBitmap* pBmpParms) SetAlphaBitmap;
			public function HRESULT(IMFVideoMixerBitmap *self) ClearAlphaBitmap;
			public function HRESULT(IMFVideoMixerBitmap *self, MFVideoAlphaBitmapParams* pBmpParms) UpdateAlphaBitmapParameters;
			public function HRESULT(IMFVideoMixerBitmap *self, MFVideoAlphaBitmapParams* pBmpParms) GetAlphaBitmapParameters;
		}
		[CRepr]
		public struct IAdvancedMediaCaptureInitializationSettings : IUnknown
		{
			public const new Guid IID = .(0x3de21209, 0x8ba6, 0x4f2a, 0xa5, 0x77, 0x28, 0x19, 0xb5, 0x6f, 0xf1, 0x4d);
			
			public function HRESULT(IAdvancedMediaCaptureInitializationSettings *self, IMFDXGIDeviceManager* value) SetDirectxDeviceManager;
		}
		[CRepr]
		public struct IAdvancedMediaCaptureSettings : IUnknown
		{
			public const new Guid IID = .(0x24e0485f, 0xa33e, 0x4aa1, 0xb5, 0x64, 0x60, 0x19, 0xb1, 0xd1, 0x4f, 0x65);
			
			public function HRESULT(IAdvancedMediaCaptureSettings *self, IMFDXGIDeviceManager** value) GetDirectxDeviceManager;
		}
		[CRepr]
		public struct IAdvancedMediaCapture : IUnknown
		{
			public const new Guid IID = .(0xd0751585, 0xd216, 0x4344, 0xb5, 0xbf, 0x46, 0x3b, 0x68, 0xf9, 0x77, 0xbb);
			
			public function HRESULT(IAdvancedMediaCapture *self, IAdvancedMediaCaptureSettings** value) GetAdvancedMediaCaptureSettings;
		}
		[CRepr]
		public struct IMFSpatialAudioObjectBuffer : IMFMediaBuffer
		{
			public const new Guid IID = .(0xd396ec8c, 0x605e, 0x4249, 0x97, 0x8d, 0x72, 0xad, 0x1c, 0x31, 0x28, 0x72);
			
			public function HRESULT(IMFSpatialAudioObjectBuffer *self, uint32 u32ID) SetID;
			public function HRESULT(IMFSpatialAudioObjectBuffer *self, uint32* pu32ID) GetID;
			public function HRESULT(IMFSpatialAudioObjectBuffer *self, AudioObjectType type) SetType;
			public function HRESULT(IMFSpatialAudioObjectBuffer *self, AudioObjectType* pType) GetType;
			public function HRESULT(IMFSpatialAudioObjectBuffer *self, ISpatialAudioMetadataItems** ppMetadataItems) GetMetadataItems;
		}
		[CRepr]
		public struct IMFSpatialAudioSample : IMFSample
		{
			public const new Guid IID = .(0xabf28a9b, 0x3393, 0x4290, 0xba, 0x79, 0x5f, 0xfc, 0x46, 0xd9, 0x86, 0xb2);
			
			public function HRESULT(IMFSpatialAudioSample *self, uint32* pdwObjectCount) GetObjectCount;
			public function HRESULT(IMFSpatialAudioSample *self, IMFSpatialAudioObjectBuffer* pAudioObjBuffer) AddSpatialAudioObject;
			public function HRESULT(IMFSpatialAudioSample *self, uint32 dwIndex, IMFSpatialAudioObjectBuffer** ppAudioObjBuffer) GetSpatialAudioObjectByIndex;
		}
		[CRepr]
		public struct IMFContentDecryptionModuleSession : IUnknown
		{
			public const new Guid IID = .(0x4e233efd, 0x1dd2, 0x49e8, 0xb5, 0x77, 0xd6, 0x3e, 0xee, 0x4c, 0x0d, 0x33);
			
			public function HRESULT(IMFContentDecryptionModuleSession *self, PWSTR* sessionId) GetSessionId;
			public function HRESULT(IMFContentDecryptionModuleSession *self, double* expiration) GetExpiration;
			public function HRESULT(IMFContentDecryptionModuleSession *self, MFMediaKeyStatus** keyStatuses, uint32* numKeyStatuses) GetKeyStatuses;
			public function HRESULT(IMFContentDecryptionModuleSession *self, PWSTR sessionId, BOOL* loaded) Load;
			public function HRESULT(IMFContentDecryptionModuleSession *self, PWSTR initDataType, uint8* initData, uint32 initDataSize) GenerateRequest;
			public function HRESULT(IMFContentDecryptionModuleSession *self, uint8* response, uint32 responseSize) Update;
			public function HRESULT(IMFContentDecryptionModuleSession *self) Close;
			public function HRESULT(IMFContentDecryptionModuleSession *self) Remove;
		}
		[CRepr]
		public struct IMFContentDecryptionModuleSessionCallbacks : IUnknown
		{
			public const new Guid IID = .(0x3f96ee40, 0xad81, 0x4096, 0x84, 0x70, 0x59, 0xa4, 0xb7, 0x70, 0xf8, 0x9a);
			
			public function HRESULT(IMFContentDecryptionModuleSessionCallbacks *self, MF_MEDIAKEYSESSION_MESSAGETYPE messageType, uint8* message, uint32 messageSize, PWSTR destinationURL) KeyMessage;
			public function HRESULT(IMFContentDecryptionModuleSessionCallbacks *self) KeyStatusChanged;
		}
		[CRepr]
		public struct IMFContentDecryptionModule : IUnknown
		{
			public const new Guid IID = .(0x87be986c, 0x10be, 0x4943, 0xbf, 0x48, 0x4b, 0x54, 0xce, 0x19, 0x83, 0xa2);
			
			public function HRESULT(IMFContentDecryptionModule *self, IMFContentEnabler* contentEnabler, IMFAsyncResult* result) SetContentEnabler;
			public function HRESULT(IMFContentDecryptionModule *self, IMFCdmSuspendNotify** notify) GetSuspendNotify;
			public function HRESULT(IMFContentDecryptionModule *self, IMFPMPHostApp* pmpHostApp) SetPMPHostApp;
			public function HRESULT(IMFContentDecryptionModule *self, MF_MEDIAKEYSESSION_TYPE sessionType, IMFContentDecryptionModuleSessionCallbacks* callbacks, IMFContentDecryptionModuleSession** session) CreateSession;
			public function HRESULT(IMFContentDecryptionModule *self, uint8* certificate, uint32 certificateSize) SetServerCertificate;
			public function HRESULT(IMFContentDecryptionModule *self, uint8* contentInitData, uint32 contentInitDataSize, IMFTrustedInput** trustedInput) CreateTrustedInput;
			public function HRESULT(IMFContentDecryptionModule *self, Guid** systemIds, uint32* count) GetProtectionSystemIds;
		}
		[CRepr]
		public struct IMFContentDecryptionModuleAccess : IUnknown
		{
			public const new Guid IID = .(0xa853d1f4, 0xe2a0, 0x4303, 0x9e, 0xdc, 0xf1, 0xa6, 0x8e, 0xe4, 0x31, 0x36);
			
			public function HRESULT(IMFContentDecryptionModuleAccess *self, IPropertyStore* contentDecryptionModuleProperties, IMFContentDecryptionModule** contentDecryptionModule) CreateContentDecryptionModule;
			public function HRESULT(IMFContentDecryptionModuleAccess *self, IPropertyStore** configuration) GetConfiguration;
			public function HRESULT(IMFContentDecryptionModuleAccess *self, PWSTR* keySystem) GetKeySystem;
		}
		[CRepr]
		public struct IMFContentDecryptionModuleFactory : IUnknown
		{
			public const new Guid IID = .(0x7d5abf16, 0x4cbb, 0x4e08, 0xb9, 0x77, 0x9b, 0xa5, 0x90, 0x49, 0x94, 0x3e);
			
			public function BOOL(IMFContentDecryptionModuleFactory *self, PWSTR keySystem, PWSTR contentType) IsTypeSupported;
			public function HRESULT(IMFContentDecryptionModuleFactory *self, PWSTR keySystem, IPropertyStore** configurations, uint32 numConfigurations, IMFContentDecryptionModuleAccess** contentDecryptionModuleAccess) CreateContentDecryptionModuleAccess;
		}
		[CRepr]
		public struct IMFCameraSyncObject : IUnknown
		{
			public const new Guid IID = .(0x6338b23a, 0x3042, 0x49d2, 0xa3, 0xea, 0xec, 0x0f, 0xed, 0x81, 0x54, 0x07);
			
			public function HRESULT(IMFCameraSyncObject *self, uint32 timeOutInMs) WaitOnSignal;
			public function void(IMFCameraSyncObject *self) Shutdown;
		}
		[CRepr]
		public struct IMFVirtualCamera : IMFAttributes
		{
			public const new Guid IID = .(0x1c08a864, 0xef6c, 0x4c75, 0xaf, 0x59, 0x5f, 0x2d, 0x68, 0xda, 0x95, 0x63);
			
			public function HRESULT(IMFVirtualCamera *self, PWSTR DeviceSourceInfo) AddDeviceSourceInfo;
			public function HRESULT(IMFVirtualCamera *self, DEVPROPKEY* pKey, uint32 Type, uint8* pbData, uint32 cbData) AddProperty;
			public function HRESULT(IMFVirtualCamera *self, PWSTR EntryName, PWSTR SubkeyPath, uint32 dwRegType, uint8* pbData, uint32 cbData) AddRegistryEntry;
			public function HRESULT(IMFVirtualCamera *self, IMFAsyncCallback* pCallback) Start;
			public function HRESULT(IMFVirtualCamera *self) Stop;
			public function HRESULT(IMFVirtualCamera *self) Remove;
			public function HRESULT(IMFVirtualCamera *self, IMFMediaSource** ppMediaSource) GetMediaSource;
			public function HRESULT(IMFVirtualCamera *self, Guid* propertySet, uint32 propertyId, uint32 propertyFlags, void* propertyPayload, uint32 propertyPayloadLength, void* data, uint32 dataLength, uint32* dataWritten) SendCameraProperty;
			public function HRESULT(IMFVirtualCamera *self, Guid* kseventSet, uint32 kseventId, uint32 kseventFlags, HANDLE eventHandle, IMFCameraSyncObject** cameraSyncObject) CreateSyncEvent;
			public function HRESULT(IMFVirtualCamera *self, Guid* kseventSet, uint32 kseventId, uint32 kseventFlags, HANDLE semaphoreHandle, int32 semaphoreAdjustment, IMFCameraSyncObject** cameraSyncObject) CreateSyncSemaphore;
			public function HRESULT(IMFVirtualCamera *self) Shutdown;
		}
		
		// --- Functions ---
		
		[Import("dxva2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DXVAHD_CreateDevice(IDirect3DDevice9Ex* pD3DDevice, DXVAHD_CONTENT_DESC* pContentDesc, DXVAHD_DEVICE_USAGE Usage, PDXVAHDSW_Plugin pPlugin, IDXVAHD_Device** ppDevice);
		[Import("dxva2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DXVA2CreateDirect3DDeviceManager9(uint32* pResetToken, IDirect3DDeviceManager9** ppDeviceManager);
		[Import("dxva2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DXVA2CreateVideoService(IDirect3DDevice9* pDD, Guid* riid, void** ppService);
		[Import("dxva2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OPMGetVideoOutputsFromHMONITOR(HMONITOR hMonitor, OPM_VIDEO_OUTPUT_SEMANTICS vos, uint32* pulNumVideoOutputs, IOPMVideoOutput*** pppOPMVideoOutputArray);
		[Import("dxva2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OPMGetVideoOutputForTarget(LUID* pAdapterLuid, uint32 VidPnTarget, OPM_VIDEO_OUTPUT_SEMANTICS vos, IOPMVideoOutput** ppOPMVideoOutput);
		[Import("dxva2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OPMGetVideoOutputsFromIDirect3DDevice9Object(IDirect3DDevice9* pDirect3DDevice9, OPM_VIDEO_OUTPUT_SEMANTICS vos, uint32* pulNumVideoOutputs, IOPMVideoOutput*** pppOPMVideoOutputArray);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFSerializeAttributesToStream(IMFAttributes* pAttr, uint32 dwOptions, IStream* pStm);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFDeserializeAttributesFromStream(IMFAttributes* pAttr, uint32 dwOptions, IStream* pStm);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTransformActivate(IMFActivate** ppActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaSession(IMFAttributes* pConfiguration, IMFMediaSession** ppMediaSession);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreatePMPMediaSession(uint32 dwCreationFlags, IMFAttributes* pConfiguration, IMFMediaSession** ppMediaSession, IMFActivate** ppEnablerActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSourceResolver(IMFSourceResolver** ppISourceResolver);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreatePropertyStore(IPropertyStore** ppStore);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetSupportedSchemes(PROPVARIANT* pPropVarSchemeArray);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetSupportedMimeTypes(PROPVARIANT* pPropVarMimeTypeArray);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTopology(IMFTopology** ppTopo);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTopologyNode(MF_TOPOLOGY_TYPE NodeType, IMFTopologyNode** ppNode);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetTopoNodeCurrentType(IMFTopologyNode* pNode, uint32 dwStreamIndex, BOOL fOutput, IMFMediaType** ppType);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetService(IUnknown* punkObject, Guid* guidService, Guid* riid, void** ppvObject);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int64 MFGetSystemTime();
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreatePresentationClock(IMFPresentationClock** ppPresentationClock);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSystemTimeSource(IMFPresentationTimeSource** ppSystemTimeSource);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreatePresentationDescriptor(uint32 cStreamDescriptors, IMFStreamDescriptor** apStreamDescriptors, IMFPresentationDescriptor** ppPresentationDescriptor);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFRequireProtectedEnvironment(IMFPresentationDescriptor* pPresentationDescriptor);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFSerializePresentationDescriptor(IMFPresentationDescriptor* pPD, uint32* pcbData, uint8** ppbData);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFDeserializePresentationDescriptor(uint32 cbData, uint8* pbData, IMFPresentationDescriptor** ppPD);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateStreamDescriptor(uint32 dwStreamIdentifier, uint32 cMediaTypes, IMFMediaType** apMediaTypes, IMFStreamDescriptor** ppDescriptor);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSimpleTypeHandler(IMFMediaTypeHandler** ppHandler);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFShutdownObject(IUnknown* pUnk);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAudioRenderer(IMFAttributes* pAudioAttributes, IMFMediaSink** ppSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAudioRendererActivate(IMFActivate** ppActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoRendererActivate(HWND hwndVideo, IMFActivate** ppActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMPEG4MediaSink(IMFByteStream* pIByteStream, IMFMediaType* pVideoMediaType, IMFMediaType* pAudioMediaType, IMFMediaSink** ppIMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreate3GPMediaSink(IMFByteStream* pIByteStream, IMFMediaType* pVideoMediaType, IMFMediaType* pAudioMediaType, IMFMediaSink** ppIMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMP3MediaSink(IMFByteStream* pTargetByteStream, IMFMediaSink** ppMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAC3MediaSink(IMFByteStream* pTargetByteStream, IMFMediaType* pAudioMediaType, IMFMediaSink** ppMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateADTSMediaSink(IMFByteStream* pTargetByteStream, IMFMediaType* pAudioMediaType, IMFMediaSink** ppMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMuxSink(Guid guidOutputSubType, IMFAttributes* pOutputAttributes, IMFByteStream* pOutputByteStream, IMFMediaSink** ppMuxSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateFMPEG4MediaSink(IMFByteStream* pIByteStream, IMFMediaType* pVideoMediaType, IMFMediaType* pAudioMediaType, IMFMediaSink** ppIMediaSink);
		[Import("mfsrcsnk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAVIMediaSink(IMFByteStream* pIByteStream, IMFMediaType* pVideoMediaType, IMFMediaType* pAudioMediaType, IMFMediaSink** ppIMediaSink);
		[Import("mfsrcsnk.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateWAVEMediaSink(IMFByteStream* pTargetByteStream, IMFMediaType* pAudioMediaType, IMFMediaSink** ppMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTopoLoader(IMFTopoLoader** ppObj);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSampleGrabberSinkActivate(IMFMediaType* pIMFMediaType, IMFSampleGrabberSinkCallback* pIMFSampleGrabberSinkCallback, IMFActivate** ppIActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateStandardQualityManager(IMFQualityManager** ppQualityManager);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSequencerSource(IUnknown* pReserved, IMFSequencerSource** ppSequencerSource);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSequencerSegmentOffset(uint32 dwId, int64 hnsOffset, PROPVARIANT* pvarSegmentOffset);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAggregateSource(IMFCollection* pSourceCollection, IMFMediaSource** ppAggSource);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateCredentialCache(IMFNetCredentialCache** ppCache);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateProxyLocator(PWSTR pszProtocol, IPropertyStore* pProxyConfig, IMFNetProxyLocator** ppProxyLocator);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateNetSchemePlugin(Guid* riid, void** ppvHandler);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreatePMPServer(uint32 dwCreationFlags, IMFPMPServer** ppPMPServer);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateRemoteDesktopPlugin(IMFRemoteDesktopPlugin** ppPlugin);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateNamedPropertyStore(INamedPropertyStore** ppStore);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSampleCopierMFT(IMFTransform** ppCopierMFT);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTranscodeProfile(IMFTranscodeProfile** ppTranscodeProfile);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTranscodeTopology(IMFMediaSource* pSrc, PWSTR pwszOutputFilePath, IMFTranscodeProfile* pProfile, IMFTopology** ppTranscodeTopo);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTranscodeTopologyFromByteStream(IMFMediaSource* pSrc, IMFByteStream* pOutputStream, IMFTranscodeProfile* pProfile, IMFTopology** ppTranscodeTopo);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTranscodeGetAudioOutputAvailableTypes(Guid* guidSubType, uint32 dwMFTFlags, IMFAttributes* pCodecConfig, IMFCollection** ppAvailableTypes);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTranscodeSinkActivate(IMFActivate** ppActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTrackedSample(IMFTrackedSample** ppMFSample);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMFByteStreamOnStream(IStream* pStream, IMFByteStream** ppByteStream);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateStreamOnMFByteStream(IMFByteStream* pByteStream, IStream** ppStream);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMFByteStreamOnStreamEx(IUnknown* punkStream, IMFByteStream** ppByteStream);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateStreamOnMFByteStreamEx(IMFByteStream* pByteStream, Guid* riid, void** ppv);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaTypeFromProperties(IUnknown* punkStream, IMFMediaType** ppMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreatePropertiesFromMediaType(IMFMediaType* pMediaType, Guid* riid, void** ppv);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFEnumDeviceSources(IMFAttributes* pAttributes, IMFActivate*** pppSourceActivate, uint32* pcSourceActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateDeviceSource(IMFAttributes* pAttributes, IMFMediaSource** ppSource);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateDeviceSourceActivate(IMFAttributes* pAttributes, IMFActivate** ppActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateProtectedEnvironmentAccess(IMFProtectedEnvironmentAccess** ppAccess);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFLoadSignedLibrary(PWSTR pszName, IMFSignedLibrary** ppLib);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetSystemId(IMFSystemId** ppId);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetLocalId(uint8* verifier, uint32 size, PWSTR* id);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateContentProtectionDevice(Guid* ProtectionSystemId, IMFContentProtectionDevice** ContentProtectionDevice);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFIsContentProtectionDeviceSupported(Guid* ProtectionSystemId, BOOL* isSupported);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateContentDecryptorContext(Guid* guidMediaProtectionSystemId, IMFDXGIDeviceManager* pD3DManager, IMFContentProtectionDevice* pContentProtectionDevice, IMFContentDecryptorContext** ppContentDecryptorContext);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSensorGroup(PWSTR SensorGroupSymbolicLink, IMFSensorGroup** ppSensorGroup);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSensorStream(uint32 StreamId, IMFAttributes* pAttributes, IMFCollection* pMediaTypeCollection, IMFSensorStream** ppStream);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSensorProfile(Guid* ProfileType, uint32 ProfileIndex, PWSTR Constraints, IMFSensorProfile** ppProfile);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSensorProfileCollection(IMFSensorProfileCollection** ppSensorProfile);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSensorActivityMonitor(IMFSensorActivitiesReportCallback* pCallback, IMFSensorActivityMonitor** ppActivityMonitor);
		[Import("mfcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateExtendedCameraIntrinsics(IMFExtendedCameraIntrinsics** ppExtendedCameraIntrinsics);
		[Import("mfcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateExtendedCameraIntrinsicModel(MFCameraIntrinsic_DistortionModelType distortionModelType, IMFExtendedCameraIntrinsicModel** ppExtendedCameraIntrinsicModel);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateRelativePanelWatcher(PWSTR videoDeviceId, PWSTR displayMonitorDeviceId, IMFRelativePanelWatcher** ppRelativePanelWatcher);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateCameraOcclusionStateMonitor(PWSTR symbolicLink, IMFCameraOcclusionStateReportCallback* callback, IMFCameraOcclusionStateMonitor** occlusionStateMonitor);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFContentInfo(IMFASFContentInfo** ppIContentInfo);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFIndexer(IMFASFIndexer** ppIIndexer);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFIndexerByteStream(IMFByteStream* pIContentByteStream, uint64 cbIndexStartOffset, IMFByteStream** pIIndexByteStream);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFSplitter(IMFASFSplitter** ppISplitter);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFProfile(IMFASFProfile** ppIProfile);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFProfileFromPresentationDescriptor(IMFPresentationDescriptor* pIPD, IMFASFProfile** ppIProfile);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreatePresentationDescriptorFromASFProfile(IMFASFProfile* pIProfile, IMFPresentationDescriptor** ppIPD);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFMultiplexer(IMFASFMultiplexer** ppIMultiplexer);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFStreamSelector(IMFASFProfile* pIASFProfile, IMFASFStreamSelector** ppSelector);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFMediaSink(IMFByteStream* pIByteStream, IMFMediaSink** ppIMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFMediaSinkActivate(PWSTR pwszFileName, IMFASFContentInfo* pContentInfo, IMFActivate** ppIActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateWMVEncoderActivate(IMFMediaType* pMediaType, IPropertyStore* pEncodingConfigurationProperties, IMFActivate** ppActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateWMAEncoderActivate(IMFMediaType* pMediaType, IPropertyStore* pEncodingConfigurationProperties, IMFActivate** ppActivate);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFStreamingMediaSink(IMFByteStream* pIByteStream, IMFMediaSink** ppIMediaSink);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateASFStreamingMediaSinkActivate(IMFActivate* pByteStreamActivate, IMFASFContentInfo* pContentInfo, IMFActivate** ppIActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateD3D12SynchronizationObject(ID3D12Device* pDevice, Guid* riid, void** ppvSyncObject);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFStartup(uint32 Version, uint32 dwFlags);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFShutdown();
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFLockPlatform();
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFUnlockPlatform();
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFPutWorkItem(uint32 dwQueue, IMFAsyncCallback* pCallback, IUnknown* pState);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFPutWorkItem2(uint32 dwQueue, int32 Priority, IMFAsyncCallback* pCallback, IUnknown* pState);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFPutWorkItemEx(uint32 dwQueue, IMFAsyncResult* pResult);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFPutWorkItemEx2(uint32 dwQueue, int32 Priority, IMFAsyncResult* pResult);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFPutWaitingWorkItem(HANDLE hEvent, int32 Priority, IMFAsyncResult* pResult, uint64* pKey);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFAllocateSerialWorkQueue(uint32 dwWorkQueue, uint32* pdwWorkQueue);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFScheduleWorkItemEx(IMFAsyncResult* pResult, int64 Timeout, uint64* pKey);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFScheduleWorkItem(IMFAsyncCallback* pCallback, IUnknown* pState, int64 Timeout, uint64* pKey);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCancelWorkItem(uint64 Key);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetTimerPeriodicity(uint32* Periodicity);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFAddPeriodicCallback(MFPERIODICCALLBACK Callback, IUnknown* pContext, uint32* pdwKey);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFRemovePeriodicCallback(uint32 dwKey);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFAllocateWorkQueueEx(MFASYNC_WORKQUEUE_TYPE WorkQueueType, uint32* pdwWorkQueue);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFAllocateWorkQueue(uint32* pdwWorkQueue);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFLockWorkQueue(uint32 dwWorkQueue);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFUnlockWorkQueue(uint32 dwWorkQueue);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFBeginRegisterWorkQueueWithMMCSS(uint32 dwWorkQueueId, PWSTR wszClass, uint32 dwTaskId, IMFAsyncCallback* pDoneCallback, IUnknown* pDoneState);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFBeginRegisterWorkQueueWithMMCSSEx(uint32 dwWorkQueueId, PWSTR wszClass, uint32 dwTaskId, int32 lPriority, IMFAsyncCallback* pDoneCallback, IUnknown* pDoneState);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFEndRegisterWorkQueueWithMMCSS(IMFAsyncResult* pResult, uint32* pdwTaskId);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFBeginUnregisterWorkQueueWithMMCSS(uint32 dwWorkQueueId, IMFAsyncCallback* pDoneCallback, IUnknown* pDoneState);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFEndUnregisterWorkQueueWithMMCSS(IMFAsyncResult* pResult);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetWorkQueueMMCSSClass(uint32 dwWorkQueueId, char16* pwszClass, uint32* pcchClass);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetWorkQueueMMCSSTaskId(uint32 dwWorkQueueId, uint32* pdwTaskId);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFRegisterPlatformWithMMCSS(PWSTR wszClass, uint32* pdwTaskId, int32 lPriority);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFUnregisterPlatformFromMMCSS();
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFLockSharedWorkQueue(PWSTR wszClass, int32 BasePriority, uint32* pdwTaskId, uint32* pID);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetWorkQueueMMCSSPriority(uint32 dwWorkQueueId, int32* lPriority);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAsyncResult(IUnknown* punkObject, IMFAsyncCallback* pCallback, IUnknown* punkState, IMFAsyncResult** ppAsyncResult);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInvokeCallback(IMFAsyncResult* pAsyncResult);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateFile(MF_FILE_ACCESSMODE AccessMode, MF_FILE_OPENMODE OpenMode, MF_FILE_FLAGS fFlags, PWSTR pwszFileURL, IMFByteStream** ppIByteStream);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateTempFile(MF_FILE_ACCESSMODE AccessMode, MF_FILE_OPENMODE OpenMode, MF_FILE_FLAGS fFlags, IMFByteStream** ppIByteStream);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFBeginCreateFile(MF_FILE_ACCESSMODE AccessMode, MF_FILE_OPENMODE OpenMode, MF_FILE_FLAGS fFlags, PWSTR pwszFilePath, IMFAsyncCallback* pCallback, IUnknown* pState, IUnknown** ppCancelCookie);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFEndCreateFile(IMFAsyncResult* pResult, IMFByteStream** ppFile);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCancelCreateFile(IUnknown* pCancelCookie);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMemoryBuffer(uint32 cbMaxLength, IMFMediaBuffer** ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaBufferWrapper(IMFMediaBuffer* pBuffer, uint32 cbOffset, uint32 dwLength, IMFMediaBuffer** ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateLegacyMediaBufferOnMFMediaBuffer(IMFSample* pSample, IMFMediaBuffer* pMFMediaBuffer, uint32 cbOffset, IMediaBuffer** ppMediaBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern DXGI_FORMAT MFMapDX9FormatToDXGIFormat(uint32 dx9);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MFMapDXGIFormatToDX9Format(DXGI_FORMAT dx11);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFLockDXGIDeviceManager(uint32* pResetToken, IMFDXGIDeviceManager** ppManager);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFUnlockDXGIDeviceManager();
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateDXSurfaceBuffer(Guid* riid, IUnknown* punkSurface, BOOL fBottomUpWhenLinear, IMFMediaBuffer** ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateWICBitmapBuffer(Guid* riid, IUnknown* punkSurface, IMFMediaBuffer** ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateDXGISurfaceBuffer(Guid* riid, IUnknown* punkSurface, uint32 uSubresourceIndex, BOOL fBottomUpWhenLinear, IMFMediaBuffer** ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoSampleAllocatorEx(Guid* riid, void** ppSampleAllocator);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateDXGIDeviceManager(uint32* resetToken, IMFDXGIDeviceManager** ppDeviceManager);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAlignedMemoryBuffer(uint32 cbMaxLength, uint32 cbAligment, IMFMediaBuffer** ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaEvent(uint32 met, Guid* guidExtendedType, HRESULT hrStatus, PROPVARIANT* pvValue, IMFMediaEvent** ppEvent);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateEventQueue(IMFMediaEventQueue** ppMediaEventQueue);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSample(IMFSample** ppIMFSample);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAttributes(IMFAttributes** ppMFAttributes, uint32 cInitialSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitAttributesFromBlob(IMFAttributes* pAttributes, uint8* pBuf, uint32 cbBufSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetAttributesAsBlobSize(IMFAttributes* pAttributes, uint32* pcbBufSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetAttributesAsBlob(IMFAttributes* pAttributes, uint8* pBuf, uint32 cbBufSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTRegister(Guid clsidMFT, Guid guidCategory, PWSTR pszName, uint32 Flags, uint32 cInputTypes, MFT_REGISTER_TYPE_INFO* pInputTypes, uint32 cOutputTypes, MFT_REGISTER_TYPE_INFO* pOutputTypes, IMFAttributes* pAttributes);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTUnregister(Guid clsidMFT);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTRegisterLocal(IClassFactory* pClassFactory, Guid* guidCategory, PWSTR pszName, uint32 Flags, uint32 cInputTypes, MFT_REGISTER_TYPE_INFO* pInputTypes, uint32 cOutputTypes, MFT_REGISTER_TYPE_INFO* pOutputTypes);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTUnregisterLocal(IClassFactory* pClassFactory);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTRegisterLocalByCLSID(Guid* clisdMFT, Guid* guidCategory, PWSTR pszName, uint32 Flags, uint32 cInputTypes, MFT_REGISTER_TYPE_INFO* pInputTypes, uint32 cOutputTypes, MFT_REGISTER_TYPE_INFO* pOutputTypes);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTUnregisterLocalByCLSID(Guid clsidMFT);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTEnum(Guid guidCategory, uint32 Flags, MFT_REGISTER_TYPE_INFO* pInputType, MFT_REGISTER_TYPE_INFO* pOutputType, IMFAttributes* pAttributes, Guid** ppclsidMFT, uint32* pcMFTs);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTEnumEx(Guid guidCategory, uint32 Flags, MFT_REGISTER_TYPE_INFO* pInputType, MFT_REGISTER_TYPE_INFO* pOutputType, IMFActivate*** pppMFTActivate, uint32* pnumMFTActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTEnum2(Guid guidCategory, uint32 Flags, MFT_REGISTER_TYPE_INFO* pInputType, MFT_REGISTER_TYPE_INFO* pOutputType, IMFAttributes* pAttributes, IMFActivate*** pppMFTActivate, uint32* pnumMFTActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFTGetInfo(Guid clsidMFT, PWSTR* pszName, MFT_REGISTER_TYPE_INFO** ppInputTypes, uint32* pcInputTypes, MFT_REGISTER_TYPE_INFO** ppOutputTypes, uint32* pcOutputTypes, IMFAttributes** ppAttributes);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetPluginControl(IMFPluginControl** ppPluginControl);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetMFTMerit(IUnknown* pMFT, uint32 cbVerifier, uint8* verifier, uint32* merit);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFRegisterLocalSchemeHandler(PWSTR szScheme, IMFActivate* pActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFRegisterLocalByteStreamHandler(PWSTR szFileExtension, PWSTR szMimeType, IMFActivate* pActivate);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMFByteStreamWrapper(IMFByteStream* pStream, IMFByteStream** ppStreamWrapper);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaExtensionActivate(PWSTR szActivatableClassId, IUnknown* pConfiguration, Guid* riid, void** ppvObject);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMuxStreamAttributes(IMFCollection* pAttributesToMux, IMFAttributes** ppMuxAttribs);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMuxStreamMediaType(IMFCollection* pMediaTypesToMux, IMFMediaType** ppMuxMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMuxStreamSample(IMFCollection* pSamplesToMux, IMFSample** ppMuxSample);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFValidateMediaTypeSize(Guid FormatType, uint8* pBlock, uint32 cbSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaType(IMFMediaType** ppMFType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMFVideoFormatFromMFMediaType(IMFMediaType* pMFType, MFVIDEOFORMAT** ppMFVF, uint32* pcbSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateWaveFormatExFromMFMediaType(IMFMediaType* pMFType, WAVEFORMATEX** ppWF, uint32* pcbSize, uint32 Flags);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromVideoInfoHeader(IMFMediaType* pMFType, VIDEOINFOHEADER* pVIH, uint32 cbBufSize, Guid* pSubtype);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromVideoInfoHeader2(IMFMediaType* pMFType, VIDEOINFOHEADER2* pVIH2, uint32 cbBufSize, Guid* pSubtype);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromMPEG1VideoInfo(IMFMediaType* pMFType, MPEG1VIDEOINFO* pMP1VI, uint32 cbBufSize, Guid* pSubtype);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromMPEG2VideoInfo(IMFMediaType* pMFType, MPEG2VIDEOINFO* pMP2VI, uint32 cbBufSize, Guid* pSubtype);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCalculateBitmapImageSize(BITMAPINFOHEADER* pBMIH, uint32 cbBufSize, uint32* pcbImageSize, BOOL* pbKnown);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCalculateImageSize(Guid* guidSubtype, uint32 unWidth, uint32 unHeight, uint32* pcbImageSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFFrameRateToAverageTimePerFrame(uint32 unNumerator, uint32 unDenominator, uint64* punAverageTimePerFrame);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFAverageTimePerFrameToFrameRate(uint64 unAverageTimePerFrame, uint32* punNumerator, uint32* punDenominator);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromMFVideoFormat(IMFMediaType* pMFType, MFVIDEOFORMAT* pMFVF, uint32 cbBufSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromWaveFormatEx(IMFMediaType* pMFType, WAVEFORMATEX* pWaveFormat, uint32 cbBufSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitMediaTypeFromAMMediaType(IMFMediaType* pMFType, AM_MEDIA_TYPE* pAMType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitAMMediaTypeFromMFMediaType(IMFMediaType* pMFType, Guid guidFormatBlockType, AM_MEDIA_TYPE* pAMType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAMMediaTypeFromMFMediaType(IMFMediaType* pMFType, Guid guidFormatBlockType, AM_MEDIA_TYPE** ppAMType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MFCompareFullToPartialMediaType(IMFMediaType* pMFTypeFull, IMFMediaType* pMFTypePartial);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFWrapMediaType(IMFMediaType* pOrig, Guid* MajorType, Guid* SubType, IMFMediaType** ppWrap);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFUnwrapMediaType(IMFMediaType* pWrap, IMFMediaType** ppOrig);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoMediaType(MFVIDEOFORMAT* pVideoFormat, IMFVideoMediaType** ppIVideoMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoMediaTypeFromSubtype(Guid* pAMSubtype, IMFVideoMediaType** ppIVideoMediaType);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MFIsFormatYUV(uint32 Format);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoMediaTypeFromBitMapInfoHeader(BITMAPINFOHEADER* pbmihBitMapInfoHeader, uint32 dwPixelAspectRatioX, uint32 dwPixelAspectRatioY, MFVideoInterlaceMode InterlaceMode, uint64 VideoFlags, uint64 qwFramesPerSecondNumerator, uint64 qwFramesPerSecondDenominator, uint32 dwMaxBitRate, IMFVideoMediaType** ppIVideoMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetStrideForBitmapInfoHeader(uint32 format, uint32 dwWidth, int32* pStride);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetPlaneSize(uint32 format, uint32 dwWidth, uint32 dwHeight, uint32* pdwPlaneSize);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoMediaTypeFromBitMapInfoHeaderEx(BITMAPINFOHEADER* pbmihBitMapInfoHeader, uint32 cbBitMapInfoHeader, uint32 dwPixelAspectRatioX, uint32 dwPixelAspectRatioY, MFVideoInterlaceMode InterlaceMode, uint64 VideoFlags, uint32 dwFramesPerSecondNumerator, uint32 dwFramesPerSecondDenominator, uint32 dwMaxBitRate, IMFVideoMediaType** ppIVideoMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaTypeFromRepresentation(Guid guidRepresentation, void* pvRepresentation, IMFMediaType** ppIMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateAudioMediaType(WAVEFORMATEX* pAudioFormat, IMFAudioMediaType** ppIAudioMediaType);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MFGetUncompressedVideoFormat(MFVIDEOFORMAT* pVideoFormat);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitVideoFormat(MFVIDEOFORMAT* pVideoFormat, MFStandardVideoFormat type);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFInitVideoFormat_RGB(MFVIDEOFORMAT* pVideoFormat, uint32 dwWidth, uint32 dwHeight, uint32 D3Dfmt);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFConvertColorInfoToDXVA(uint32* pdwToDXVA, MFVIDEOFORMAT* pFromFormat);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFConvertColorInfoFromDXVA(MFVIDEOFORMAT* pToFormat, uint32 dwFromDXVA);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCopyImage(uint8* pDest, int32 lDestStride, uint8* pSrc, int32 lSrcStride, uint32 dwWidthInBytes, uint32 dwLines);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFConvertFromFP16Array(float* pDest, uint16* pSrc, uint32 dwCount);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFConvertToFP16Array(uint16* pDest, float* pSrc, uint32 dwCount);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreate2DMediaBuffer(uint32 dwWidth, uint32 dwHeight, uint32 dwFourCC, BOOL fBottomUp, IMFMediaBuffer** ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateMediaBufferFromMediaType(IMFMediaType* pMediaType, int64 llDuration, uint32 dwMinLength, uint32 dwMinAlignment, IMFMediaBuffer** ppBuffer);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateCollection(IMFCollection** ppIMFCollection);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* MFHeapAlloc(uint nSize, uint32 dwFlags, PSTR pszFile, int32 line, EAllocationType eat);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void MFHeapFree(void* pv);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int64 MFllMulDiv(int64 a, int64 b, int64 c, int64 d);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFGetContentProtectionSystemCLSID(Guid* guidProtectionSystemID, Guid* pclsid);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCombineSamples(IMFSample* pSample, IMFSample* pSampleToAdd, uint32 dwMaxMergedDurationInMS, BOOL* pMerged);
		[Import("mfplat.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFSplitSample(IMFSample* pSample, IMFSample** pOutputSamples, uint32 dwOutputSampleMaxCount, uint32* pdwOutputSampleCount);
		[Import("mfreadwrite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSourceReaderFromURL(PWSTR pwszURL, IMFAttributes* pAttributes, IMFSourceReader** ppSourceReader);
		[Import("mfreadwrite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSourceReaderFromByteStream(IMFByteStream* pByteStream, IMFAttributes* pAttributes, IMFSourceReader** ppSourceReader);
		[Import("mfreadwrite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSourceReaderFromMediaSource(IMFMediaSource* pMediaSource, IMFAttributes* pAttributes, IMFSourceReader** ppSourceReader);
		[Import("mfreadwrite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSinkWriterFromURL(PWSTR pwszOutputURL, IMFByteStream* pByteStream, IMFAttributes* pAttributes, IMFSinkWriter** ppSinkWriter);
		[Import("mfreadwrite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateSinkWriterFromMediaSink(IMFMediaSink* pMediaSink, IMFAttributes* pAttributes, IMFSinkWriter** ppSinkWriter);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoPresenter(IUnknown* pOwner, Guid* riidDevice, Guid* riid, void** ppVideoPresenter);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoMixer(IUnknown* pOwner, Guid* riidDevice, Guid* riid, void** ppv);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoMixerAndPresenter(IUnknown* pMixerOwner, IUnknown* pPresenterOwner, Guid* riidMixer, void** ppvVideoMixer, Guid* riidPresenter, void** ppvVideoPresenter);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoRenderer(Guid* riidRenderer, void** ppVideoRenderer);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoSampleFromSurface(IUnknown* pUnkSurface, IMFSample** ppSample);
		[Import("evr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVideoSampleAllocator(Guid* riid, void** ppSampleAllocator);
		[Import("mfplay.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFPCreateMediaPlayer(PWSTR pwszURL, BOOL fStartPlayback, MFP_CREATION_OPTIONS creationOptions, IMFPMediaPlayerCallback* pCallback, HWND hWnd, IMFPMediaPlayer** ppMediaPlayer);
		[Import("mf.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateEncryptedMediaExtensionsStoreActivate(IMFPMPHostApp* pmpHost, IStream* objectStream, PWSTR classId, IMFActivate** activate);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFCreateVirtualCamera(__MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0001 type, __MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0002 lifetime, __MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0003 access, PWSTR friendlyName, PWSTR sourceId, Guid* categories, uint32 categoryCount, IMFVirtualCamera** virtualCamera);
		[Import("mfsensorgroup.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MFIsVirtualCameraTypeSupported(__MIDL___MIDL_itf_mfvirtualcamera_0000_0000_0001 type, BOOL* supported);
		[Import("opmxbox.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OPMXboxEnableHDCP(OPM_HDCP_TYPE HDCPType);
		[Import("opmxbox.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OPMXboxGetHDCPStatus(OPM_HDCP_STATUS* pHDCPStatus);
		[Import("opmxbox.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OPMXboxGetHDCPStatusAndType(OPM_HDCP_STATUS* pHDCPStatus, OPM_HDCP_TYPE* pHDCPType);
		
	}
}
