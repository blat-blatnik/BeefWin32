using System;

// namespace Media.Audio.DirectMusic
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DMUS_MAX_DESCRIPTION = 128;
		public const uint32 DMUS_MAX_DRIVER = 128;
		public const uint32 DMUS_EFFECT_NONE = 0;
		public const uint32 DMUS_EFFECT_REVERB = 1;
		public const uint32 DMUS_EFFECT_CHORUS = 2;
		public const uint32 DMUS_EFFECT_DELAY = 4;
		public const uint32 DMUS_PC_INPUTCLASS = 0;
		public const uint32 DMUS_PC_OUTPUTCLASS = 1;
		public const uint32 DMUS_PC_DLS = 1;
		public const uint32 DMUS_PC_EXTERNAL = 2;
		public const uint32 DMUS_PC_SOFTWARESYNTH = 4;
		public const uint32 DMUS_PC_MEMORYSIZEFIXED = 8;
		public const uint32 DMUS_PC_GMINHARDWARE = 16;
		public const uint32 DMUS_PC_GSINHARDWARE = 32;
		public const uint32 DMUS_PC_XGINHARDWARE = 64;
		public const uint32 DMUS_PC_DIRECTSOUND = 128;
		public const uint32 DMUS_PC_SHAREABLE = 256;
		public const uint32 DMUS_PC_DLS2 = 512;
		public const uint32 DMUS_PC_AUDIOPATH = 1024;
		public const uint32 DMUS_PC_WAVE = 2048;
		public const uint32 DMUS_PC_SYSTEMMEMORY = 2147483647;
		public const uint32 DMUS_PORT_WINMM_DRIVER = 0;
		public const uint32 DMUS_PORT_USER_MODE_SYNTH = 1;
		public const uint32 DMUS_PORT_KERNEL_MODE = 2;
		public const uint32 DMUS_PORTPARAMS_VOICES = 1;
		public const uint32 DMUS_PORTPARAMS_CHANNELGROUPS = 2;
		public const uint32 DMUS_PORTPARAMS_AUDIOCHANNELS = 4;
		public const uint32 DMUS_PORTPARAMS_SAMPLERATE = 8;
		public const uint32 DMUS_PORTPARAMS_EFFECTS = 32;
		public const uint32 DMUS_PORTPARAMS_SHARE = 64;
		public const uint32 DMUS_PORTPARAMS_FEATURES = 128;
		public const uint32 DMUS_PORT_FEATURE_AUDIOPATH = 1;
		public const uint32 DMUS_PORT_FEATURE_STREAMING = 2;
		public const uint32 DMUS_SYNTHSTATS_VOICES = 1;
		public const uint32 DMUS_SYNTHSTATS_TOTAL_CPU = 2;
		public const uint32 DMUS_SYNTHSTATS_CPU_PER_VOICE = 4;
		public const uint32 DMUS_SYNTHSTATS_LOST_NOTES = 8;
		public const uint32 DMUS_SYNTHSTATS_PEAK_VOLUME = 16;
		public const uint32 DMUS_SYNTHSTATS_FREE_MEMORY = 32;
		public const uint32 DMUS_SYNTHSTATS_SYSTEMMEMORY = 2147483647;
		public const uint32 DMUS_CLOCKF_GLOBAL = 1;
		public const uint32 DSBUSID_FIRST_SPKR_LOC = 0;
		public const uint32 DSBUSID_FRONT_LEFT = 0;
		public const uint32 DSBUSID_LEFT = 0;
		public const uint32 DSBUSID_FRONT_RIGHT = 1;
		public const uint32 DSBUSID_RIGHT = 1;
		public const uint32 DSBUSID_FRONT_CENTER = 2;
		public const uint32 DSBUSID_LOW_FREQUENCY = 3;
		public const uint32 DSBUSID_BACK_LEFT = 4;
		public const uint32 DSBUSID_BACK_RIGHT = 5;
		public const uint32 DSBUSID_FRONT_LEFT_OF_CENTER = 6;
		public const uint32 DSBUSID_FRONT_RIGHT_OF_CENTER = 7;
		public const uint32 DSBUSID_BACK_CENTER = 8;
		public const uint32 DSBUSID_SIDE_LEFT = 9;
		public const uint32 DSBUSID_SIDE_RIGHT = 10;
		public const uint32 DSBUSID_TOP_CENTER = 11;
		public const uint32 DSBUSID_TOP_FRONT_LEFT = 12;
		public const uint32 DSBUSID_TOP_FRONT_CENTER = 13;
		public const uint32 DSBUSID_TOP_FRONT_RIGHT = 14;
		public const uint32 DSBUSID_TOP_BACK_LEFT = 15;
		public const uint32 DSBUSID_TOP_BACK_CENTER = 16;
		public const uint32 DSBUSID_TOP_BACK_RIGHT = 17;
		public const uint32 DSBUSID_LAST_SPKR_LOC = 17;
		public const uint32 DSBUSID_REVERB_SEND = 64;
		public const uint32 DSBUSID_CHORUS_SEND = 65;
		public const uint32 DSBUSID_DYNAMIC_0 = 512;
		public const uint32 DSBUSID_NULL = 4294967295;
		public const uint32 DAUD_CRITICAL_VOICE_PRIORITY = 4026531840;
		public const uint32 DAUD_HIGH_VOICE_PRIORITY = 3221225472;
		public const uint32 DAUD_STANDARD_VOICE_PRIORITY = 2147483648;
		public const uint32 DAUD_LOW_VOICE_PRIORITY = 1073741824;
		public const uint32 DAUD_PERSIST_VOICE_PRIORITY = 268435456;
		public const uint32 DAUD_CHAN1_VOICE_PRIORITY_OFFSET = 14;
		public const uint32 DAUD_CHAN2_VOICE_PRIORITY_OFFSET = 13;
		public const uint32 DAUD_CHAN3_VOICE_PRIORITY_OFFSET = 12;
		public const uint32 DAUD_CHAN4_VOICE_PRIORITY_OFFSET = 11;
		public const uint32 DAUD_CHAN5_VOICE_PRIORITY_OFFSET = 10;
		public const uint32 DAUD_CHAN6_VOICE_PRIORITY_OFFSET = 9;
		public const uint32 DAUD_CHAN7_VOICE_PRIORITY_OFFSET = 8;
		public const uint32 DAUD_CHAN8_VOICE_PRIORITY_OFFSET = 7;
		public const uint32 DAUD_CHAN9_VOICE_PRIORITY_OFFSET = 6;
		public const uint32 DAUD_CHAN10_VOICE_PRIORITY_OFFSET = 15;
		public const uint32 DAUD_CHAN11_VOICE_PRIORITY_OFFSET = 5;
		public const uint32 DAUD_CHAN12_VOICE_PRIORITY_OFFSET = 4;
		public const uint32 DAUD_CHAN13_VOICE_PRIORITY_OFFSET = 3;
		public const uint32 DAUD_CHAN14_VOICE_PRIORITY_OFFSET = 2;
		public const uint32 DAUD_CHAN15_VOICE_PRIORITY_OFFSET = 1;
		public const uint32 DAUD_CHAN16_VOICE_PRIORITY_OFFSET = 0;
		public const Guid CLSID_DirectMusic = .(0x636b9f10, 0x0c7d, 0x11d1, 0x95, 0xb2, 0x00, 0x20, 0xaf, 0xdc, 0x74, 0x21);
		public const Guid CLSID_DirectMusicCollection = .(0x480ff4b0, 0x28b2, 0x11d1, 0xbe, 0xf7, 0x00, 0xc0, 0x4f, 0xbf, 0x8f, 0xef);
		public const Guid CLSID_DirectMusicSynth = .(0x58c2b4d0, 0x46e7, 0x11d1, 0x89, 0xac, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x29);
		public const Guid GUID_DMUS_PROP_GM_Hardware = .(0x178f2f24, 0xc364, 0x11d1, 0xa7, 0x60, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid GUID_DMUS_PROP_GS_Hardware = .(0x178f2f25, 0xc364, 0x11d1, 0xa7, 0x60, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid GUID_DMUS_PROP_XG_Hardware = .(0x178f2f26, 0xc364, 0x11d1, 0xa7, 0x60, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid GUID_DMUS_PROP_XG_Capable = .(0x6496aba1, 0x61b0, 0x11d2, 0xaf, 0xa6, 0x00, 0xaa, 0x00, 0x24, 0xd8, 0xb6);
		public const Guid GUID_DMUS_PROP_GS_Capable = .(0x6496aba2, 0x61b0, 0x11d2, 0xaf, 0xa6, 0x00, 0xaa, 0x00, 0x24, 0xd8, 0xb6);
		public const Guid GUID_DMUS_PROP_DLS1 = .(0x178f2f27, 0xc364, 0x11d1, 0xa7, 0x60, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid GUID_DMUS_PROP_DLS2 = .(0xf14599e5, 0x4689, 0x11d2, 0xaf, 0xa6, 0x00, 0xaa, 0x00, 0x24, 0xd8, 0xb6);
		public const Guid GUID_DMUS_PROP_INSTRUMENT2 = .(0x865fd372, 0x9f67, 0x11d2, 0x87, 0x2a, 0x00, 0x60, 0x08, 0x93, 0xb1, 0xbd);
		public const Guid GUID_DMUS_PROP_SynthSink_DSOUND = .(0x0aa97844, 0xc877, 0x11d1, 0x87, 0x0c, 0x00, 0x60, 0x08, 0x93, 0xb1, 0xbd);
		public const Guid GUID_DMUS_PROP_SynthSink_WAVE = .(0x0aa97845, 0xc877, 0x11d1, 0x87, 0x0c, 0x00, 0x60, 0x08, 0x93, 0xb1, 0xbd);
		public const Guid GUID_DMUS_PROP_SampleMemorySize = .(0x178f2f28, 0xc364, 0x11d1, 0xa7, 0x60, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid GUID_DMUS_PROP_SamplePlaybackRate = .(0x2a91f713, 0xa4bf, 0x11d2, 0xbb, 0xdf, 0x00, 0x60, 0x08, 0x33, 0xdb, 0xd8);
		public const Guid GUID_DMUS_PROP_WriteLatency = .(0x268a0fa0, 0x60f2, 0x11d2, 0xaf, 0xa6, 0x00, 0xaa, 0x00, 0x24, 0xd8, 0xb6);
		public const Guid GUID_DMUS_PROP_WritePeriod = .(0x268a0fa1, 0x60f2, 0x11d2, 0xaf, 0xa6, 0x00, 0xaa, 0x00, 0x24, 0xd8, 0xb6);
		public const Guid GUID_DMUS_PROP_MemorySize = .(0x178f2f28, 0xc364, 0x11d1, 0xa7, 0x60, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid GUID_DMUS_PROP_WavesReverb = .(0x04cb5622, 0x32e5, 0x11d2, 0xaf, 0xa6, 0x00, 0xaa, 0x00, 0x24, 0xd8, 0xb6);
		public const Guid GUID_DMUS_PROP_Effects = .(0xcda8d611, 0x684a, 0x11d2, 0x87, 0x1e, 0x00, 0x60, 0x08, 0x93, 0xb1, 0xbd);
		public const Guid GUID_DMUS_PROP_LegacyCaps = .(0xcfa7cdc2, 0x00a1, 0x11d2, 0xaa, 0xd5, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid GUID_DMUS_PROP_Volume = .(0xfedfae25, 0xe46e, 0x11d1, 0xaa, 0xce, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const uint32 DMUS_VOLUME_MAX = 2000;
		public const int32 DMUS_VOLUME_MIN = -20000;
		public const uint32 DMUS_EVENT_STRUCTURED = 1;
		public const uint32 DMUS_DOWNLOADINFO_INSTRUMENT = 1;
		public const uint32 DMUS_DOWNLOADINFO_WAVE = 2;
		public const uint32 DMUS_DOWNLOADINFO_INSTRUMENT2 = 3;
		public const uint32 DMUS_DOWNLOADINFO_WAVEARTICULATION = 4;
		public const uint32 DMUS_DOWNLOADINFO_STREAMINGWAVE = 5;
		public const uint32 DMUS_DOWNLOADINFO_ONESHOTWAVE = 6;
		public const uint32 DMUS_DEFAULT_SIZE_OFFSETTABLE = 1;
		public const uint32 DMUS_INSTRUMENT_GM_INSTRUMENT = 1;
		public const uint32 DMUS_MIN_DATA_SIZE = 4;
		public const uint32 CONN_SRC_NONE = 0;
		public const uint32 CONN_SRC_LFO = 1;
		public const uint32 CONN_SRC_KEYONVELOCITY = 2;
		public const uint32 CONN_SRC_KEYNUMBER = 3;
		public const uint32 CONN_SRC_EG1 = 4;
		public const uint32 CONN_SRC_EG2 = 5;
		public const uint32 CONN_SRC_PITCHWHEEL = 6;
		public const uint32 CONN_SRC_CC1 = 129;
		public const uint32 CONN_SRC_CC7 = 135;
		public const uint32 CONN_SRC_CC10 = 138;
		public const uint32 CONN_SRC_CC11 = 139;
		public const uint32 CONN_DST_NONE = 0;
		public const uint32 CONN_DST_ATTENUATION = 1;
		public const uint32 CONN_DST_PITCH = 3;
		public const uint32 CONN_DST_PAN = 4;
		public const uint32 CONN_DST_LFO_FREQUENCY = 260;
		public const uint32 CONN_DST_LFO_STARTDELAY = 261;
		public const uint32 CONN_DST_EG1_ATTACKTIME = 518;
		public const uint32 CONN_DST_EG1_DECAYTIME = 519;
		public const uint32 CONN_DST_EG1_RELEASETIME = 521;
		public const uint32 CONN_DST_EG1_SUSTAINLEVEL = 522;
		public const uint32 CONN_DST_EG2_ATTACKTIME = 778;
		public const uint32 CONN_DST_EG2_DECAYTIME = 779;
		public const uint32 CONN_DST_EG2_RELEASETIME = 781;
		public const uint32 CONN_DST_EG2_SUSTAINLEVEL = 782;
		public const uint32 CONN_TRN_NONE = 0;
		public const uint32 CONN_TRN_CONCAVE = 1;
		public const uint32 F_INSTRUMENT_DRUMS = 2147483648;
		public const uint32 F_RGN_OPTION_SELFNONEXCLUSIVE = 1;
		public const int32 WAVELINK_CHANNEL_LEFT = 1;
		public const int32 WAVELINK_CHANNEL_RIGHT = 2;
		public const uint32 F_WAVELINK_PHASE_MASTER = 1;
		public const int32 POOL_CUE_NULL = -1;
		public const int32 F_WSMP_NO_TRUNCATION = 1;
		public const int32 F_WSMP_NO_COMPRESSION = 2;
		public const uint32 WLOOP_TYPE_FORWARD = 0;
		public const uint32 CONN_SRC_POLYPRESSURE = 7;
		public const uint32 CONN_SRC_CHANNELPRESSURE = 8;
		public const uint32 CONN_SRC_VIBRATO = 9;
		public const uint32 CONN_SRC_MONOPRESSURE = 10;
		public const uint32 CONN_SRC_CC91 = 219;
		public const uint32 CONN_SRC_CC93 = 221;
		public const uint32 CONN_DST_GAIN = 1;
		public const uint32 CONN_DST_KEYNUMBER = 5;
		public const uint32 CONN_DST_LEFT = 16;
		public const uint32 CONN_DST_RIGHT = 17;
		public const uint32 CONN_DST_CENTER = 18;
		public const uint32 CONN_DST_LEFTREAR = 19;
		public const uint32 CONN_DST_RIGHTREAR = 20;
		public const uint32 CONN_DST_LFE_CHANNEL = 21;
		public const uint32 CONN_DST_CHORUS = 128;
		public const uint32 CONN_DST_REVERB = 129;
		public const uint32 CONN_DST_VIB_FREQUENCY = 276;
		public const uint32 CONN_DST_VIB_STARTDELAY = 277;
		public const uint32 CONN_DST_EG1_DELAYTIME = 523;
		public const uint32 CONN_DST_EG1_HOLDTIME = 524;
		public const uint32 CONN_DST_EG1_SHUTDOWNTIME = 525;
		public const uint32 CONN_DST_EG2_DELAYTIME = 783;
		public const uint32 CONN_DST_EG2_HOLDTIME = 784;
		public const uint32 CONN_DST_FILTER_CUTOFF = 1280;
		public const uint32 CONN_DST_FILTER_Q = 1281;
		public const uint32 CONN_TRN_CONVEX = 2;
		public const uint32 CONN_TRN_SWITCH = 3;
		public const uint32 DLS_CDL_AND = 1;
		public const uint32 DLS_CDL_OR = 2;
		public const uint32 DLS_CDL_XOR = 3;
		public const uint32 DLS_CDL_ADD = 4;
		public const uint32 DLS_CDL_SUBTRACT = 5;
		public const uint32 DLS_CDL_MULTIPLY = 6;
		public const uint32 DLS_CDL_DIVIDE = 7;
		public const uint32 DLS_CDL_LOGICAL_AND = 8;
		public const uint32 DLS_CDL_LOGICAL_OR = 9;
		public const uint32 DLS_CDL_LT = 10;
		public const uint32 DLS_CDL_LE = 11;
		public const uint32 DLS_CDL_GT = 12;
		public const uint32 DLS_CDL_GE = 13;
		public const uint32 DLS_CDL_EQ = 14;
		public const uint32 DLS_CDL_NOT = 15;
		public const uint32 DLS_CDL_CONST = 16;
		public const uint32 DLS_CDL_QUERY = 17;
		public const uint32 DLS_CDL_QUERYSUPPORTED = 18;
		public const uint32 WLOOP_TYPE_RELEASE = 2;
		public const uint32 F_WAVELINK_MULTICHANNEL = 2;
		public const Guid DLSID_GMInHardware = .(0x178f2f24, 0xc364, 0x11d1, 0xa7, 0x60, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid DLSID_GSInHardware = .(0x178f2f25, 0xc364, 0x11d1, 0xa7, 0x60, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid DLSID_XGInHardware = .(0x178f2f26, 0xc364, 0x11d1, 0xa7, 0x60, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid DLSID_SupportsDLS1 = .(0x178f2f27, 0xc364, 0x11d1, 0xa7, 0x60, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid DLSID_SupportsDLS2 = .(0xf14599e5, 0x4689, 0x11d2, 0xaf, 0xa6, 0x00, 0xaa, 0x00, 0x24, 0xd8, 0xb6);
		public const Guid DLSID_SampleMemorySize = .(0x178f2f28, 0xc364, 0x11d1, 0xa7, 0x60, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid DLSID_ManufacturersID = .(0xb03e1181, 0x8095, 0x11d2, 0xa1, 0xef, 0x00, 0x60, 0x08, 0x33, 0xdb, 0xd8);
		public const Guid DLSID_ProductID = .(0xb03e1182, 0x8095, 0x11d2, 0xa1, 0xef, 0x00, 0x60, 0x08, 0x33, 0xdb, 0xd8);
		public const Guid DLSID_SamplePlaybackRate = .(0x2a91f713, 0xa4bf, 0x11d2, 0xbb, 0xdf, 0x00, 0x60, 0x08, 0x33, 0xdb, 0xd8);
		public const uint32 REFRESH_F_LASTBUFFER = 1;
		public const Guid CLSID_DirectMusicSynthSink = .(0xaec17ce3, 0xa514, 0x11d1, 0xaf, 0xa6, 0x00, 0xaa, 0x00, 0x24, 0xd8, 0xb6);
		public const Guid GUID_DMUS_PROP_SetSynthSink = .(0x0a3a5ba5, 0x37b6, 0x11d2, 0xb9, 0xf9, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid GUID_DMUS_PROP_SinkUsesDSound = .(0xbe208857, 0x8952, 0x11d2, 0xba, 0x1c, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
		public const Guid CLSID_DirectSoundPrivate = .(0x11ab3ec0, 0x25ec, 0x11d1, 0xa4, 0xd8, 0x00, 0xc0, 0x4f, 0xc2, 0x8a, 0xca);
		public const Guid DSPROPSETID_DirectSoundDevice = .(0x84624f82, 0x25ec, 0x11d1, 0xa4, 0xd8, 0x00, 0xc0, 0x4f, 0xc2, 0x8a, 0xca);
		public const int32 DV_DVSD_NTSC_FRAMESIZE = 120000;
		public const int32 DV_DVSD_PAL_FRAMESIZE = 144000;
		public const uint32 DV_SMCHN = 57344;
		public const uint32 DV_AUDIOMODE = 3840;
		public const uint32 DV_AUDIOSMP = 939524096;
		public const uint32 DV_AUDIOQU = 117440512;
		public const uint32 DV_NTSCPAL = 2097152;
		public const uint32 DV_STYPE = 2031616;
		public const uint32 DV_NTSC = 0;
		public const uint32 DV_PAL = 1;
		public const uint32 DV_SD = 0;
		public const uint32 DV_HD = 1;
		public const uint32 DV_SL = 2;
		public const uint32 DV_CAP_AUD16Bits = 0;
		public const uint32 DV_CAP_AUD12Bits = 1;
		public const uint32 SIZE_DVINFO = 32;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum DMUS_CLOCKTYPE : int32
		{
			DMUS_CLOCK_SYSTEM = 0,
			DMUS_CLOCK_WAVE = 1,
		}
		[AllowDuplicates]
		public enum DSPROPERTY_DIRECTSOUNDDEVICE : int32
		{
			DSPROPERTY_DIRECTSOUNDDEVICE_WAVEDEVICEMAPPING_A = 1,
			DSPROPERTY_DIRECTSOUNDDEVICE_DESCRIPTION_1 = 2,
			DSPROPERTY_DIRECTSOUNDDEVICE_ENUMERATE_1 = 3,
			DSPROPERTY_DIRECTSOUNDDEVICE_WAVEDEVICEMAPPING_W = 4,
			DSPROPERTY_DIRECTSOUNDDEVICE_DESCRIPTION_A = 5,
			DSPROPERTY_DIRECTSOUNDDEVICE_DESCRIPTION_W = 6,
			DSPROPERTY_DIRECTSOUNDDEVICE_ENUMERATE_A = 7,
			DSPROPERTY_DIRECTSOUNDDEVICE_ENUMERATE_W = 8,
		}
		[AllowDuplicates]
		public enum DIRECTSOUNDDEVICE_TYPE : int32
		{
			DIRECTSOUNDDEVICE_TYPE_EMULATED = 0,
			DIRECTSOUNDDEVICE_TYPE_VXD = 1,
			DIRECTSOUNDDEVICE_TYPE_WDM = 2,
		}
		[AllowDuplicates]
		public enum DIRECTSOUNDDEVICE_DATAFLOW : int32
		{
			DIRECTSOUNDDEVICE_DATAFLOW_RENDER = 0,
			DIRECTSOUNDDEVICE_DATAFLOW_CAPTURE = 1,
		}
		
		// --- Function Pointers ---
		
		public function BOOL LPFNDIRECTSOUNDDEVICEENUMERATECALLBACK1(DSPROPERTY_DIRECTSOUNDDEVICE_DESCRIPTION_1_DATA* param0, void* param1);
		public function BOOL LPFNDIRECTSOUNDDEVICEENUMERATECALLBACKA(DSPROPERTY_DIRECTSOUNDDEVICE_DESCRIPTION_A_DATA* param0, void* param1);
		public function BOOL LPFNDIRECTSOUNDDEVICEENUMERATECALLBACKW(DSPROPERTY_DIRECTSOUNDDEVICE_DESCRIPTION_W_DATA* param0, void* param1);
		
		// --- Structs ---
		
		[CRepr]
		public struct DLSID
		{
			public uint32 ulData1;
			public uint16 usData2;
			public uint16 usData3;
			public uint8[8] abData4;
		}
		[CRepr]
		public struct DLSVERSION
		{
			public uint32 dwVersionMS;
			public uint32 dwVersionLS;
		}
		[CRepr]
		public struct CONNECTION
		{
			public uint16 usSource;
			public uint16 usControl;
			public uint16 usDestination;
			public uint16 usTransform;
			public int32 lScale;
		}
		[CRepr]
		public struct CONNECTIONLIST
		{
			public uint32 cbSize;
			public uint32 cConnections;
		}
		[CRepr]
		public struct RGNRANGE
		{
			public uint16 usLow;
			public uint16 usHigh;
		}
		[CRepr]
		public struct MIDILOCALE
		{
			public uint32 ulBank;
			public uint32 ulInstrument;
		}
		[CRepr]
		public struct RGNHEADER
		{
			public RGNRANGE RangeKey;
			public RGNRANGE RangeVelocity;
			public uint16 fusOptions;
			public uint16 usKeyGroup;
		}
		[CRepr]
		public struct INSTHEADER
		{
			public uint32 cRegions;
			public MIDILOCALE Locale;
		}
		[CRepr]
		public struct DLSHEADER
		{
			public uint32 cInstruments;
		}
		[CRepr]
		public struct WAVELINK
		{
			public uint16 fusOptions;
			public uint16 usPhaseGroup;
			public uint32 ulChannel;
			public uint32 ulTableIndex;
		}
		[CRepr]
		public struct POOLCUE
		{
			public uint32 ulOffset;
		}
		[CRepr]
		public struct POOLTABLE
		{
			public uint32 cbSize;
			public uint32 cCues;
		}
		[CRepr]
		public struct _rwsmp
		{
			public uint32 cbSize;
			public uint16 usUnityNote;
			public int16 sFineTune;
			public int32 lAttenuation;
			public uint32 fulOptions;
			public uint32 cSampleLoops;
		}
		[CRepr]
		public struct _rloop
		{
			public uint32 cbSize;
			public uint32 ulType;
			public uint32 ulStart;
			public uint32 ulLength;
		}
		[CRepr]
		public struct DMUS_DOWNLOADINFO
		{
			public uint32 dwDLType;
			public uint32 dwDLId;
			public uint32 dwNumOffsetTableEntries;
			public uint32 cbSize;
		}
		[CRepr]
		public struct DMUS_OFFSETTABLE
		{
			public uint32[] ulOffsetTable;
		}
		[CRepr]
		public struct DMUS_INSTRUMENT
		{
			public uint32 ulPatch;
			public uint32 ulFirstRegionIdx;
			public uint32 ulGlobalArtIdx;
			public uint32 ulFirstExtCkIdx;
			public uint32 ulCopyrightIdx;
			public uint32 ulFlags;
		}
		[CRepr]
		public struct DMUS_REGION
		{
			public RGNRANGE RangeKey;
			public RGNRANGE RangeVelocity;
			public uint16 fusOptions;
			public uint16 usKeyGroup;
			public uint32 ulRegionArtIdx;
			public uint32 ulNextRegionIdx;
			public uint32 ulFirstExtCkIdx;
			public WAVELINK WaveLink;
			public _rwsmp WSMP;
			public _rloop[] WLOOP;
		}
		[CRepr]
		public struct DMUS_LFOPARAMS
		{
			public int32 pcFrequency;
			public int32 tcDelay;
			public int32 gcVolumeScale;
			public int32 pcPitchScale;
			public int32 gcMWToVolume;
			public int32 pcMWToPitch;
		}
		[CRepr]
		public struct DMUS_VEGPARAMS
		{
			public int32 tcAttack;
			public int32 tcDecay;
			public int32 ptSustain;
			public int32 tcRelease;
			public int32 tcVel2Attack;
			public int32 tcKey2Decay;
		}
		[CRepr]
		public struct DMUS_PEGPARAMS
		{
			public int32 tcAttack;
			public int32 tcDecay;
			public int32 ptSustain;
			public int32 tcRelease;
			public int32 tcVel2Attack;
			public int32 tcKey2Decay;
			public int32 pcRange;
		}
		[CRepr]
		public struct DMUS_MSCPARAMS
		{
			public int32 ptDefaultPan;
		}
		[CRepr]
		public struct DMUS_ARTICPARAMS
		{
			public DMUS_LFOPARAMS LFO;
			public DMUS_VEGPARAMS VolEG;
			public DMUS_PEGPARAMS PitchEG;
			public DMUS_MSCPARAMS Misc;
		}
		[CRepr]
		public struct DMUS_ARTICULATION
		{
			public uint32 ulArt1Idx;
			public uint32 ulFirstExtCkIdx;
		}
		[CRepr]
		public struct DMUS_ARTICULATION2
		{
			public uint32 ulArtIdx;
			public uint32 ulFirstExtCkIdx;
			public uint32 ulNextArtIdx;
		}
		[CRepr]
		public struct DMUS_EXTENSIONCHUNK
		{
			public uint32 cbSize;
			public uint32 ulNextExtCkIdx;
			public uint32 ExtCkID;
			public uint8[4] byExtCk;
		}
		[CRepr]
		public struct DMUS_COPYRIGHT
		{
			public uint32 cbSize;
			public uint8[4] byCopyright;
		}
		[CRepr]
		public struct DMUS_WAVEDATA
		{
			public uint32 cbSize;
			public uint8[4] byData;
		}
		[CRepr]
		public struct DMUS_WAVE
		{
			public uint32 ulFirstExtCkIdx;
			public uint32 ulCopyrightIdx;
			public uint32 ulWaveDataIdx;
			public WAVEFORMATEX WaveformatEx;
		}
		[CRepr]
		public struct DMUS_NOTERANGE
		{
			public uint32 dwLowNote;
			public uint32 dwHighNote;
		}
		[CRepr]
		public struct DMUS_WAVEARTDL
		{
			public uint32 ulDownloadIdIdx;
			public uint32 ulBus;
			public uint32 ulBuffers;
			public uint32 ulMasterDLId;
			public uint16 usOptions;
		}
		[CRepr]
		public struct DMUS_WAVEDL
		{
			public uint32 cbWaveData;
		}
		[CRepr]
		public struct DMUS_EVENTHEADER
		{
			public uint32 cbEvent;
			public uint32 dwChannelGroup;
			public int64 rtDelta;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct DMUS_BUFFERDESC
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public Guid guidBufferFormat;
			public uint32 cbBuffer;
		}
		[CRepr]
		public struct DMUS_PORTCAPS
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public Guid guidPort;
			public uint32 dwClass;
			public uint32 dwType;
			public uint32 dwMemorySize;
			public uint32 dwMaxChannelGroups;
			public uint32 dwMaxVoices;
			public uint32 dwMaxAudioChannels;
			public uint32 dwEffectFlags;
			public char16[128] wszDescription;
		}
		[CRepr]
		public struct _DMUS_PORTPARAMS
		{
			public uint32 dwSize;
			public uint32 dwValidParams;
			public uint32 dwVoices;
			public uint32 dwChannelGroups;
			public uint32 dwAudioChannels;
			public uint32 dwSampleRate;
			public uint32 dwEffectFlags;
			public BOOL fShare;
		}
		[CRepr]
		public struct DMUS_PORTPARAMS8
		{
			public uint32 dwSize;
			public uint32 dwValidParams;
			public uint32 dwVoices;
			public uint32 dwChannelGroups;
			public uint32 dwAudioChannels;
			public uint32 dwSampleRate;
			public uint32 dwEffectFlags;
			public BOOL fShare;
			public uint32 dwFeatures;
		}
		[CRepr]
		public struct DMUS_SYNTHSTATS
		{
			public uint32 dwSize;
			public uint32 dwValidStats;
			public uint32 dwVoices;
			public uint32 dwTotalCPU;
			public uint32 dwCPUPerVoice;
			public uint32 dwLostNotes;
			public uint32 dwFreeMemory;
			public int32 lPeakVolume;
		}
		[CRepr]
		public struct DMUS_SYNTHSTATS8
		{
			public uint32 dwSize;
			public uint32 dwValidStats;
			public uint32 dwVoices;
			public uint32 dwTotalCPU;
			public uint32 dwCPUPerVoice;
			public uint32 dwLostNotes;
			public uint32 dwFreeMemory;
			public int32 lPeakVolume;
			public uint32 dwSynthMemUse;
		}
		[CRepr]
		public struct DMUS_WAVES_REVERB_PARAMS
		{
			public float fInGain;
			public float fReverbMix;
			public float fReverbTime;
			public float fHighFreqRTRatio;
		}
		[CRepr]
		public struct DMUS_CLOCKINFO7
		{
			public uint32 dwSize;
			public DMUS_CLOCKTYPE ctType;
			public Guid guidClock;
			public char16[128] wszDescription;
		}
		[CRepr]
		public struct DMUS_CLOCKINFO8
		{
			public uint32 dwSize;
			public DMUS_CLOCKTYPE ctType;
			public Guid guidClock;
			public char16[128] wszDescription;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct DMUS_VOICE_STATE
		{
			public BOOL bExists;
			public uint64 spPosition;
		}
		[CRepr]
		public struct DSPROPERTY_DIRECTSOUNDDEVICE_WAVEDEVICEMAPPING_A_DATA
		{
			public PSTR DeviceName;
			public DIRECTSOUNDDEVICE_DATAFLOW DataFlow;
			public Guid DeviceId;
		}
		[CRepr]
		public struct DSPROPERTY_DIRECTSOUNDDEVICE_WAVEDEVICEMAPPING_W_DATA
		{
			public PWSTR DeviceName;
			public DIRECTSOUNDDEVICE_DATAFLOW DataFlow;
			public Guid DeviceId;
		}
		[CRepr]
		public struct DSPROPERTY_DIRECTSOUNDDEVICE_DESCRIPTION_1_DATA
		{
			public Guid DeviceId;
			public CHAR[256] DescriptionA;
			public char16[256] DescriptionW;
			public CHAR[260] ModuleA;
			public char16[260] ModuleW;
			public DIRECTSOUNDDEVICE_TYPE Type;
			public DIRECTSOUNDDEVICE_DATAFLOW DataFlow;
			public uint32 WaveDeviceId;
			public uint32 Devnode;
		}
		[CRepr]
		public struct DSPROPERTY_DIRECTSOUNDDEVICE_DESCRIPTION_A_DATA
		{
			public DIRECTSOUNDDEVICE_TYPE Type;
			public DIRECTSOUNDDEVICE_DATAFLOW DataFlow;
			public Guid DeviceId;
			public PSTR Description;
			public PSTR Module;
			public PSTR Interface;
			public uint32 WaveDeviceId;
		}
		[CRepr]
		public struct DSPROPERTY_DIRECTSOUNDDEVICE_DESCRIPTION_W_DATA
		{
			public DIRECTSOUNDDEVICE_TYPE Type;
			public DIRECTSOUNDDEVICE_DATAFLOW DataFlow;
			public Guid DeviceId;
			public PWSTR Description;
			public PWSTR Module;
			public PWSTR Interface;
			public uint32 WaveDeviceId;
		}
		[CRepr]
		public struct DSPROPERTY_DIRECTSOUNDDEVICE_ENUMERATE_1_DATA
		{
			public LPFNDIRECTSOUNDDEVICEENUMERATECALLBACK1 Callback;
			public void* Context;
		}
		[CRepr]
		public struct DSPROPERTY_DIRECTSOUNDDEVICE_ENUMERATE_A_DATA
		{
			public LPFNDIRECTSOUNDDEVICEENUMERATECALLBACKA Callback;
			public void* Context;
		}
		[CRepr]
		public struct DSPROPERTY_DIRECTSOUNDDEVICE_ENUMERATE_W_DATA
		{
			public LPFNDIRECTSOUNDDEVICEENUMERATECALLBACKW Callback;
			public void* Context;
		}
		[CRepr]
		public struct Tag_DVAudInfo
		{
			public uint8[2] bAudStyle;
			public uint8[2] bAudQu;
			public uint8 bNumAudPin;
			public uint16[2] wAvgSamplesPerPinPerFrm;
			public uint16 wBlkMode;
			public uint16 wDIFMode;
			public uint16 wBlkDiv;
		}
		[CRepr]
		public struct MDEVICECAPSEX
		{
			public uint32 cbSize;
			public void* pCaps;
		}
		[CRepr]
		public struct MIDIOPENDESC
		{
			public HMIDI hMidi;
			public uint dwCallback;
			public uint dwInstance;
			public uint dnDevNode;
			public uint32 cIds;
			public MIDIOPENSTRMID[] rgIds;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDirectMusic : IUnknown
		{
			public const new Guid IID = .(0x6536115a, 0x7b2d, 0x11d2, 0xba, 0x18, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumPort(uint32 dwIndex, DMUS_PORTCAPS* pPortCaps) mut
			{
				return VT.EnumPort(&this, dwIndex, pPortCaps);
			}
			public HRESULT CreateMusicBuffer(DMUS_BUFFERDESC* pBufferDesc, IDirectMusicBuffer** ppBuffer, IUnknown* pUnkOuter) mut
			{
				return VT.CreateMusicBuffer(&this, pBufferDesc, ppBuffer, pUnkOuter);
			}
			public HRESULT CreatePort(Guid* rclsidPort, DMUS_PORTPARAMS8* pPortParams, IDirectMusicPort** ppPort, IUnknown* pUnkOuter) mut
			{
				return VT.CreatePort(&this, rclsidPort, pPortParams, ppPort, pUnkOuter);
			}
			public HRESULT EnumMasterClock(uint32 dwIndex, DMUS_CLOCKINFO8* lpClockInfo) mut
			{
				return VT.EnumMasterClock(&this, dwIndex, lpClockInfo);
			}
			public HRESULT GetMasterClock(Guid* pguidClock, IReferenceClock** ppReferenceClock) mut
			{
				return VT.GetMasterClock(&this, pguidClock, ppReferenceClock);
			}
			public HRESULT SetMasterClock(Guid* rguidClock) mut
			{
				return VT.SetMasterClock(&this, rguidClock);
			}
			public HRESULT Activate(BOOL fEnable) mut
			{
				return VT.Activate(&this, fEnable);
			}
			public HRESULT GetDefaultPort(Guid* pguidPort) mut
			{
				return VT.GetDefaultPort(&this, pguidPort);
			}
			public HRESULT SetDirectSound(IDirectSound* pDirectSound, HWND hWnd) mut
			{
				return VT.SetDirectSound(&this, pDirectSound, hWnd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectMusic *self, uint32 dwIndex, DMUS_PORTCAPS* pPortCaps) EnumPort;
				public new function HRESULT(IDirectMusic *self, DMUS_BUFFERDESC* pBufferDesc, IDirectMusicBuffer** ppBuffer, IUnknown* pUnkOuter) CreateMusicBuffer;
				public new function HRESULT(IDirectMusic *self, Guid* rclsidPort, DMUS_PORTPARAMS8* pPortParams, IDirectMusicPort** ppPort, IUnknown* pUnkOuter) CreatePort;
				public new function HRESULT(IDirectMusic *self, uint32 dwIndex, DMUS_CLOCKINFO8* lpClockInfo) EnumMasterClock;
				public new function HRESULT(IDirectMusic *self, Guid* pguidClock, IReferenceClock** ppReferenceClock) GetMasterClock;
				public new function HRESULT(IDirectMusic *self, Guid* rguidClock) SetMasterClock;
				public new function HRESULT(IDirectMusic *self, BOOL fEnable) Activate;
				public new function HRESULT(IDirectMusic *self, Guid* pguidPort) GetDefaultPort;
				public new function HRESULT(IDirectMusic *self, IDirectSound* pDirectSound, HWND hWnd) SetDirectSound;
			}
		}
		[CRepr]
		public struct IDirectMusic8 : IDirectMusic
		{
			public const new Guid IID = .(0x2d3629f7, 0x813d, 0x4939, 0x85, 0x08, 0xf0, 0x5c, 0x6b, 0x75, 0xfd, 0x97);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetExternalMasterClock(IReferenceClock* pClock) mut
			{
				return VT.SetExternalMasterClock(&this, pClock);
			}
			[CRepr]
			public struct VTable : IDirectMusic.VTable
			{
				public new function HRESULT(IDirectMusic8 *self, IReferenceClock* pClock) SetExternalMasterClock;
			}
		}
		[CRepr]
		public struct IDirectMusicBuffer : IUnknown
		{
			public const new Guid IID = .(0xd2ac2878, 0xb39b, 0x11d1, 0x87, 0x04, 0x00, 0x60, 0x08, 0x93, 0xb1, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Flush() mut
			{
				return VT.Flush(&this);
			}
			public HRESULT TotalTime(int64* prtTime) mut
			{
				return VT.TotalTime(&this, prtTime);
			}
			public HRESULT PackStructured(int64 rt, uint32 dwChannelGroup, uint32 dwChannelMessage) mut
			{
				return VT.PackStructured(&this, rt, dwChannelGroup, dwChannelMessage);
			}
			public HRESULT PackUnstructured(int64 rt, uint32 dwChannelGroup, uint32 cb, uint8* lpb) mut
			{
				return VT.PackUnstructured(&this, rt, dwChannelGroup, cb, lpb);
			}
			public HRESULT ResetReadPtr() mut
			{
				return VT.ResetReadPtr(&this);
			}
			public HRESULT GetNextEvent(int64* prt, uint32* pdwChannelGroup, uint32* pdwLength, uint8** ppData) mut
			{
				return VT.GetNextEvent(&this, prt, pdwChannelGroup, pdwLength, ppData);
			}
			public HRESULT GetRawBufferPtr(uint8** ppData) mut
			{
				return VT.GetRawBufferPtr(&this, ppData);
			}
			public HRESULT GetStartTime(int64* prt) mut
			{
				return VT.GetStartTime(&this, prt);
			}
			public HRESULT GetUsedBytes(uint32* pcb) mut
			{
				return VT.GetUsedBytes(&this, pcb);
			}
			public HRESULT GetMaxBytes(uint32* pcb) mut
			{
				return VT.GetMaxBytes(&this, pcb);
			}
			public HRESULT GetBufferFormat(Guid* pGuidFormat) mut
			{
				return VT.GetBufferFormat(&this, pGuidFormat);
			}
			public HRESULT SetStartTime(int64 rt) mut
			{
				return VT.SetStartTime(&this, rt);
			}
			public HRESULT SetUsedBytes(uint32 cb) mut
			{
				return VT.SetUsedBytes(&this, cb);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectMusicBuffer *self) Flush;
				public new function HRESULT(IDirectMusicBuffer *self, int64* prtTime) TotalTime;
				public new function HRESULT(IDirectMusicBuffer *self, int64 rt, uint32 dwChannelGroup, uint32 dwChannelMessage) PackStructured;
				public new function HRESULT(IDirectMusicBuffer *self, int64 rt, uint32 dwChannelGroup, uint32 cb, uint8* lpb) PackUnstructured;
				public new function HRESULT(IDirectMusicBuffer *self) ResetReadPtr;
				public new function HRESULT(IDirectMusicBuffer *self, int64* prt, uint32* pdwChannelGroup, uint32* pdwLength, uint8** ppData) GetNextEvent;
				public new function HRESULT(IDirectMusicBuffer *self, uint8** ppData) GetRawBufferPtr;
				public new function HRESULT(IDirectMusicBuffer *self, int64* prt) GetStartTime;
				public new function HRESULT(IDirectMusicBuffer *self, uint32* pcb) GetUsedBytes;
				public new function HRESULT(IDirectMusicBuffer *self, uint32* pcb) GetMaxBytes;
				public new function HRESULT(IDirectMusicBuffer *self, Guid* pGuidFormat) GetBufferFormat;
				public new function HRESULT(IDirectMusicBuffer *self, int64 rt) SetStartTime;
				public new function HRESULT(IDirectMusicBuffer *self, uint32 cb) SetUsedBytes;
			}
		}
		[CRepr]
		public struct IDirectMusicInstrument : IUnknown
		{
			public const new Guid IID = .(0xd2ac287d, 0xb39b, 0x11d1, 0x87, 0x04, 0x00, 0x60, 0x08, 0x93, 0xb1, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPatch(uint32* pdwPatch) mut
			{
				return VT.GetPatch(&this, pdwPatch);
			}
			public HRESULT SetPatch(uint32 dwPatch) mut
			{
				return VT.SetPatch(&this, dwPatch);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectMusicInstrument *self, uint32* pdwPatch) GetPatch;
				public new function HRESULT(IDirectMusicInstrument *self, uint32 dwPatch) SetPatch;
			}
		}
		[CRepr]
		public struct IDirectMusicDownloadedInstrument : IUnknown
		{
			public const new Guid IID = .(0xd2ac287e, 0xb39b, 0x11d1, 0x87, 0x04, 0x00, 0x60, 0x08, 0x93, 0xb1, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct IDirectMusicCollection : IUnknown
		{
			public const new Guid IID = .(0xd2ac287c, 0xb39b, 0x11d1, 0x87, 0x04, 0x00, 0x60, 0x08, 0x93, 0xb1, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInstrument(uint32 dwPatch, IDirectMusicInstrument** ppInstrument) mut
			{
				return VT.GetInstrument(&this, dwPatch, ppInstrument);
			}
			public HRESULT EnumInstrument(uint32 dwIndex, uint32* pdwPatch, PWSTR pwszName, uint32 dwNameLen) mut
			{
				return VT.EnumInstrument(&this, dwIndex, pdwPatch, pwszName, dwNameLen);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectMusicCollection *self, uint32 dwPatch, IDirectMusicInstrument** ppInstrument) GetInstrument;
				public new function HRESULT(IDirectMusicCollection *self, uint32 dwIndex, uint32* pdwPatch, PWSTR pwszName, uint32 dwNameLen) EnumInstrument;
			}
		}
		[CRepr]
		public struct IDirectMusicDownload : IUnknown
		{
			public const new Guid IID = .(0xd2ac287b, 0xb39b, 0x11d1, 0x87, 0x04, 0x00, 0x60, 0x08, 0x93, 0xb1, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBuffer(void** ppvBuffer, uint32* pdwSize) mut
			{
				return VT.GetBuffer(&this, ppvBuffer, pdwSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectMusicDownload *self, void** ppvBuffer, uint32* pdwSize) GetBuffer;
			}
		}
		[CRepr]
		public struct IDirectMusicPortDownload : IUnknown
		{
			public const new Guid IID = .(0xd2ac287a, 0xb39b, 0x11d1, 0x87, 0x04, 0x00, 0x60, 0x08, 0x93, 0xb1, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBuffer(uint32 dwDLId, IDirectMusicDownload** ppIDMDownload) mut
			{
				return VT.GetBuffer(&this, dwDLId, ppIDMDownload);
			}
			public HRESULT AllocateBuffer(uint32 dwSize, IDirectMusicDownload** ppIDMDownload) mut
			{
				return VT.AllocateBuffer(&this, dwSize, ppIDMDownload);
			}
			public HRESULT GetDLId(uint32* pdwStartDLId, uint32 dwCount) mut
			{
				return VT.GetDLId(&this, pdwStartDLId, dwCount);
			}
			public HRESULT GetAppend(uint32* pdwAppend) mut
			{
				return VT.GetAppend(&this, pdwAppend);
			}
			public HRESULT Download(IDirectMusicDownload* pIDMDownload) mut
			{
				return VT.Download(&this, pIDMDownload);
			}
			public HRESULT Unload(IDirectMusicDownload* pIDMDownload) mut
			{
				return VT.Unload(&this, pIDMDownload);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectMusicPortDownload *self, uint32 dwDLId, IDirectMusicDownload** ppIDMDownload) GetBuffer;
				public new function HRESULT(IDirectMusicPortDownload *self, uint32 dwSize, IDirectMusicDownload** ppIDMDownload) AllocateBuffer;
				public new function HRESULT(IDirectMusicPortDownload *self, uint32* pdwStartDLId, uint32 dwCount) GetDLId;
				public new function HRESULT(IDirectMusicPortDownload *self, uint32* pdwAppend) GetAppend;
				public new function HRESULT(IDirectMusicPortDownload *self, IDirectMusicDownload* pIDMDownload) Download;
				public new function HRESULT(IDirectMusicPortDownload *self, IDirectMusicDownload* pIDMDownload) Unload;
			}
		}
		[CRepr]
		public struct IDirectMusicPort : IUnknown
		{
			public const new Guid IID = .(0x08f2d8c9, 0x37c2, 0x11d2, 0xb9, 0xf9, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PlayBuffer(IDirectMusicBuffer* pBuffer) mut
			{
				return VT.PlayBuffer(&this, pBuffer);
			}
			public HRESULT SetReadNotificationHandle(HANDLE hEvent) mut
			{
				return VT.SetReadNotificationHandle(&this, hEvent);
			}
			public HRESULT Read(IDirectMusicBuffer* pBuffer) mut
			{
				return VT.Read(&this, pBuffer);
			}
			public HRESULT DownloadInstrument(IDirectMusicInstrument* pInstrument, IDirectMusicDownloadedInstrument** ppDownloadedInstrument, DMUS_NOTERANGE* pNoteRanges, uint32 dwNumNoteRanges) mut
			{
				return VT.DownloadInstrument(&this, pInstrument, ppDownloadedInstrument, pNoteRanges, dwNumNoteRanges);
			}
			public HRESULT UnloadInstrument(IDirectMusicDownloadedInstrument* pDownloadedInstrument) mut
			{
				return VT.UnloadInstrument(&this, pDownloadedInstrument);
			}
			public HRESULT GetLatencyClock(IReferenceClock** ppClock) mut
			{
				return VT.GetLatencyClock(&this, ppClock);
			}
			public HRESULT GetRunningStats(DMUS_SYNTHSTATS* pStats) mut
			{
				return VT.GetRunningStats(&this, pStats);
			}
			public HRESULT Compact() mut
			{
				return VT.Compact(&this);
			}
			public HRESULT GetCaps(DMUS_PORTCAPS* pPortCaps) mut
			{
				return VT.GetCaps(&this, pPortCaps);
			}
			public HRESULT DeviceIoControl(uint32 dwIoControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned, OVERLAPPED* lpOverlapped) mut
			{
				return VT.DeviceIoControl(&this, dwIoControlCode, lpInBuffer, nInBufferSize, lpOutBuffer, nOutBufferSize, lpBytesReturned, lpOverlapped);
			}
			public HRESULT SetNumChannelGroups(uint32 dwChannelGroups) mut
			{
				return VT.SetNumChannelGroups(&this, dwChannelGroups);
			}
			public HRESULT GetNumChannelGroups(uint32* pdwChannelGroups) mut
			{
				return VT.GetNumChannelGroups(&this, pdwChannelGroups);
			}
			public HRESULT Activate(BOOL fActive) mut
			{
				return VT.Activate(&this, fActive);
			}
			public HRESULT SetChannelPriority(uint32 dwChannelGroup, uint32 dwChannel, uint32 dwPriority) mut
			{
				return VT.SetChannelPriority(&this, dwChannelGroup, dwChannel, dwPriority);
			}
			public HRESULT GetChannelPriority(uint32 dwChannelGroup, uint32 dwChannel, uint32* pdwPriority) mut
			{
				return VT.GetChannelPriority(&this, dwChannelGroup, dwChannel, pdwPriority);
			}
			public HRESULT SetDirectSound(IDirectSound* pDirectSound, IDirectSoundBuffer* pDirectSoundBuffer) mut
			{
				return VT.SetDirectSound(&this, pDirectSound, pDirectSoundBuffer);
			}
			public HRESULT GetFormat(WAVEFORMATEX* pWaveFormatEx, uint32* pdwWaveFormatExSize, uint32* pdwBufferSize) mut
			{
				return VT.GetFormat(&this, pWaveFormatEx, pdwWaveFormatExSize, pdwBufferSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectMusicPort *self, IDirectMusicBuffer* pBuffer) PlayBuffer;
				public new function HRESULT(IDirectMusicPort *self, HANDLE hEvent) SetReadNotificationHandle;
				public new function HRESULT(IDirectMusicPort *self, IDirectMusicBuffer* pBuffer) Read;
				public new function HRESULT(IDirectMusicPort *self, IDirectMusicInstrument* pInstrument, IDirectMusicDownloadedInstrument** ppDownloadedInstrument, DMUS_NOTERANGE* pNoteRanges, uint32 dwNumNoteRanges) DownloadInstrument;
				public new function HRESULT(IDirectMusicPort *self, IDirectMusicDownloadedInstrument* pDownloadedInstrument) UnloadInstrument;
				public new function HRESULT(IDirectMusicPort *self, IReferenceClock** ppClock) GetLatencyClock;
				public new function HRESULT(IDirectMusicPort *self, DMUS_SYNTHSTATS* pStats) GetRunningStats;
				public new function HRESULT(IDirectMusicPort *self) Compact;
				public new function HRESULT(IDirectMusicPort *self, DMUS_PORTCAPS* pPortCaps) GetCaps;
				public new function HRESULT(IDirectMusicPort *self, uint32 dwIoControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned, OVERLAPPED* lpOverlapped) DeviceIoControl;
				public new function HRESULT(IDirectMusicPort *self, uint32 dwChannelGroups) SetNumChannelGroups;
				public new function HRESULT(IDirectMusicPort *self, uint32* pdwChannelGroups) GetNumChannelGroups;
				public new function HRESULT(IDirectMusicPort *self, BOOL fActive) Activate;
				public new function HRESULT(IDirectMusicPort *self, uint32 dwChannelGroup, uint32 dwChannel, uint32 dwPriority) SetChannelPriority;
				public new function HRESULT(IDirectMusicPort *self, uint32 dwChannelGroup, uint32 dwChannel, uint32* pdwPriority) GetChannelPriority;
				public new function HRESULT(IDirectMusicPort *self, IDirectSound* pDirectSound, IDirectSoundBuffer* pDirectSoundBuffer) SetDirectSound;
				public new function HRESULT(IDirectMusicPort *self, WAVEFORMATEX* pWaveFormatEx, uint32* pdwWaveFormatExSize, uint32* pdwBufferSize) GetFormat;
			}
		}
		[CRepr]
		public struct IDirectMusicThru : IUnknown
		{
			public const new Guid IID = .(0xced153e7, 0x3606, 0x11d2, 0xb9, 0xf9, 0x00, 0x00, 0xf8, 0x75, 0xac, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ThruChannel(uint32 dwSourceChannelGroup, uint32 dwSourceChannel, uint32 dwDestinationChannelGroup, uint32 dwDestinationChannel, IDirectMusicPort* pDestinationPort) mut
			{
				return VT.ThruChannel(&this, dwSourceChannelGroup, dwSourceChannel, dwDestinationChannelGroup, dwDestinationChannel, pDestinationPort);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectMusicThru *self, uint32 dwSourceChannelGroup, uint32 dwSourceChannel, uint32 dwDestinationChannelGroup, uint32 dwDestinationChannel, IDirectMusicPort* pDestinationPort) ThruChannel;
			}
		}
		[CRepr]
		public struct IDirectMusicSynth : IUnknown
		{
			public const new Guid IID = .(0x09823661, 0x5c85, 0x11d2, 0xaf, 0xa6, 0x00, 0xaa, 0x00, 0x24, 0xd8, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(DMUS_PORTPARAMS8* pPortParams) mut
			{
				return VT.Open(&this, pPortParams);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT SetNumChannelGroups(uint32 dwGroups) mut
			{
				return VT.SetNumChannelGroups(&this, dwGroups);
			}
			public HRESULT Download(HANDLE* phDownload, void* pvData, int32* pbFree) mut
			{
				return VT.Download(&this, phDownload, pvData, pbFree);
			}
			public HRESULT Unload(HANDLE hDownload, int lpFreeHandle, HANDLE hUserData) mut
			{
				return VT.Unload(&this, hDownload, lpFreeHandle, hUserData);
			}
			public HRESULT PlayBuffer(int64 rt, uint8* pbBuffer, uint32 cbBuffer) mut
			{
				return VT.PlayBuffer(&this, rt, pbBuffer, cbBuffer);
			}
			public HRESULT GetRunningStats(DMUS_SYNTHSTATS* pStats) mut
			{
				return VT.GetRunningStats(&this, pStats);
			}
			public HRESULT GetPortCaps(DMUS_PORTCAPS* pCaps) mut
			{
				return VT.GetPortCaps(&this, pCaps);
			}
			public HRESULT SetMasterClock(IReferenceClock* pClock) mut
			{
				return VT.SetMasterClock(&this, pClock);
			}
			public HRESULT GetLatencyClock(IReferenceClock** ppClock) mut
			{
				return VT.GetLatencyClock(&this, ppClock);
			}
			public HRESULT Activate(BOOL fEnable) mut
			{
				return VT.Activate(&this, fEnable);
			}
			public HRESULT SetSynthSink(IDirectMusicSynthSink* pSynthSink) mut
			{
				return VT.SetSynthSink(&this, pSynthSink);
			}
			public HRESULT Render(int16* pBuffer, uint32 dwLength, int64 llPosition) mut
			{
				return VT.Render(&this, pBuffer, dwLength, llPosition);
			}
			public HRESULT SetChannelPriority(uint32 dwChannelGroup, uint32 dwChannel, uint32 dwPriority) mut
			{
				return VT.SetChannelPriority(&this, dwChannelGroup, dwChannel, dwPriority);
			}
			public HRESULT GetChannelPriority(uint32 dwChannelGroup, uint32 dwChannel, uint32* pdwPriority) mut
			{
				return VT.GetChannelPriority(&this, dwChannelGroup, dwChannel, pdwPriority);
			}
			public HRESULT GetFormat(WAVEFORMATEX* pWaveFormatEx, uint32* pdwWaveFormatExSize) mut
			{
				return VT.GetFormat(&this, pWaveFormatEx, pdwWaveFormatExSize);
			}
			public HRESULT GetAppend(uint32* pdwAppend) mut
			{
				return VT.GetAppend(&this, pdwAppend);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectMusicSynth *self, DMUS_PORTPARAMS8* pPortParams) Open;
				public new function HRESULT(IDirectMusicSynth *self) Close;
				public new function HRESULT(IDirectMusicSynth *self, uint32 dwGroups) SetNumChannelGroups;
				public new function HRESULT(IDirectMusicSynth *self, HANDLE* phDownload, void* pvData, int32* pbFree) Download;
				public new function HRESULT(IDirectMusicSynth *self, HANDLE hDownload, int lpFreeHandle, HANDLE hUserData) Unload;
				public new function HRESULT(IDirectMusicSynth *self, int64 rt, uint8* pbBuffer, uint32 cbBuffer) PlayBuffer;
				public new function HRESULT(IDirectMusicSynth *self, DMUS_SYNTHSTATS* pStats) GetRunningStats;
				public new function HRESULT(IDirectMusicSynth *self, DMUS_PORTCAPS* pCaps) GetPortCaps;
				public new function HRESULT(IDirectMusicSynth *self, IReferenceClock* pClock) SetMasterClock;
				public new function HRESULT(IDirectMusicSynth *self, IReferenceClock** ppClock) GetLatencyClock;
				public new function HRESULT(IDirectMusicSynth *self, BOOL fEnable) Activate;
				public new function HRESULT(IDirectMusicSynth *self, IDirectMusicSynthSink* pSynthSink) SetSynthSink;
				public new function HRESULT(IDirectMusicSynth *self, int16* pBuffer, uint32 dwLength, int64 llPosition) Render;
				public new function HRESULT(IDirectMusicSynth *self, uint32 dwChannelGroup, uint32 dwChannel, uint32 dwPriority) SetChannelPriority;
				public new function HRESULT(IDirectMusicSynth *self, uint32 dwChannelGroup, uint32 dwChannel, uint32* pdwPriority) GetChannelPriority;
				public new function HRESULT(IDirectMusicSynth *self, WAVEFORMATEX* pWaveFormatEx, uint32* pdwWaveFormatExSize) GetFormat;
				public new function HRESULT(IDirectMusicSynth *self, uint32* pdwAppend) GetAppend;
			}
		}
		[CRepr]
		public struct IDirectMusicSynth8 : IDirectMusicSynth
		{
			public const new Guid IID = .(0x53cab625, 0x2711, 0x4c9f, 0x9d, 0xe7, 0x1b, 0x7f, 0x92, 0x5f, 0x6f, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PlayVoice(int64 rt, uint32 dwVoiceId, uint32 dwChannelGroup, uint32 dwChannel, uint32 dwDLId, int32 prPitch, int32 vrVolume, uint64 stVoiceStart, uint64 stLoopStart, uint64 stLoopEnd) mut
			{
				return VT.PlayVoice(&this, rt, dwVoiceId, dwChannelGroup, dwChannel, dwDLId, prPitch, vrVolume, stVoiceStart, stLoopStart, stLoopEnd);
			}
			public HRESULT StopVoice(int64 rt, uint32 dwVoiceId) mut
			{
				return VT.StopVoice(&this, rt, dwVoiceId);
			}
			public HRESULT GetVoiceState(uint32* dwVoice, uint32 cbVoice, DMUS_VOICE_STATE* dwVoiceState) mut
			{
				return VT.GetVoiceState(&this, dwVoice, cbVoice, dwVoiceState);
			}
			public HRESULT Refresh(uint32 dwDownloadID, uint32 dwFlags) mut
			{
				return VT.Refresh(&this, dwDownloadID, dwFlags);
			}
			public HRESULT AssignChannelToBuses(uint32 dwChannelGroup, uint32 dwChannel, uint32* pdwBuses, uint32 cBuses) mut
			{
				return VT.AssignChannelToBuses(&this, dwChannelGroup, dwChannel, pdwBuses, cBuses);
			}
			[CRepr]
			public struct VTable : IDirectMusicSynth.VTable
			{
				public new function HRESULT(IDirectMusicSynth8 *self, int64 rt, uint32 dwVoiceId, uint32 dwChannelGroup, uint32 dwChannel, uint32 dwDLId, int32 prPitch, int32 vrVolume, uint64 stVoiceStart, uint64 stLoopStart, uint64 stLoopEnd) PlayVoice;
				public new function HRESULT(IDirectMusicSynth8 *self, int64 rt, uint32 dwVoiceId) StopVoice;
				public new function HRESULT(IDirectMusicSynth8 *self, uint32* dwVoice, uint32 cbVoice, DMUS_VOICE_STATE* dwVoiceState) GetVoiceState;
				public new function HRESULT(IDirectMusicSynth8 *self, uint32 dwDownloadID, uint32 dwFlags) Refresh;
				public new function HRESULT(IDirectMusicSynth8 *self, uint32 dwChannelGroup, uint32 dwChannel, uint32* pdwBuses, uint32 cBuses) AssignChannelToBuses;
			}
		}
		[CRepr]
		public struct IDirectMusicSynthSink : IUnknown
		{
			public const new Guid IID = .(0x09823663, 0x5c85, 0x11d2, 0xaf, 0xa6, 0x00, 0xaa, 0x00, 0x24, 0xd8, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(IDirectMusicSynth* pSynth) mut
			{
				return VT.Init(&this, pSynth);
			}
			public HRESULT SetMasterClock(IReferenceClock* pClock) mut
			{
				return VT.SetMasterClock(&this, pClock);
			}
			public HRESULT GetLatencyClock(IReferenceClock** ppClock) mut
			{
				return VT.GetLatencyClock(&this, ppClock);
			}
			public HRESULT Activate(BOOL fEnable) mut
			{
				return VT.Activate(&this, fEnable);
			}
			public HRESULT SampleToRefTime(int64 llSampleTime, int64* prfTime) mut
			{
				return VT.SampleToRefTime(&this, llSampleTime, prfTime);
			}
			public HRESULT RefTimeToSample(int64 rfTime, int64* pllSampleTime) mut
			{
				return VT.RefTimeToSample(&this, rfTime, pllSampleTime);
			}
			public HRESULT SetDirectSound(IDirectSound* pDirectSound, IDirectSoundBuffer* pDirectSoundBuffer) mut
			{
				return VT.SetDirectSound(&this, pDirectSound, pDirectSoundBuffer);
			}
			public HRESULT GetDesiredBufferSize(uint32* pdwBufferSizeInSamples) mut
			{
				return VT.GetDesiredBufferSize(&this, pdwBufferSizeInSamples);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectMusicSynthSink *self, IDirectMusicSynth* pSynth) Init;
				public new function HRESULT(IDirectMusicSynthSink *self, IReferenceClock* pClock) SetMasterClock;
				public new function HRESULT(IDirectMusicSynthSink *self, IReferenceClock** ppClock) GetLatencyClock;
				public new function HRESULT(IDirectMusicSynthSink *self, BOOL fEnable) Activate;
				public new function HRESULT(IDirectMusicSynthSink *self, int64 llSampleTime, int64* prfTime) SampleToRefTime;
				public new function HRESULT(IDirectMusicSynthSink *self, int64 rfTime, int64* pllSampleTime) RefTimeToSample;
				public new function HRESULT(IDirectMusicSynthSink *self, IDirectSound* pDirectSound, IDirectSoundBuffer* pDirectSoundBuffer) SetDirectSound;
				public new function HRESULT(IDirectMusicSynthSink *self, uint32* pdwBufferSizeInSamples) GetDesiredBufferSize;
			}
		}
		
	}
}
