using System;

// namespace Media.DirectShow
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 EC_SND_DEVICE_ERROR_BASE = 512;
		public const uint32 EC_SNDDEV_IN_ERROR = 512;
		public const uint32 EC_SNDDEV_OUT_ERROR = 513;
		public const uint32 EC_SYSTEMBASE = 0;
		public const uint32 EC_USER = 32768;
		public const uint32 EC_COMPLETE = 1;
		public const uint32 EC_USERABORT = 2;
		public const uint32 EC_ERRORABORT = 3;
		public const uint32 EC_TIME = 4;
		public const uint32 EC_REPAINT = 5;
		public const uint32 EC_STREAM_ERROR_STOPPED = 6;
		public const uint32 EC_STREAM_ERROR_STILLPLAYING = 7;
		public const uint32 EC_ERROR_STILLPLAYING = 8;
		public const uint32 EC_PALETTE_CHANGED = 9;
		public const uint32 EC_VIDEO_SIZE_CHANGED = 10;
		public const uint32 EC_QUALITY_CHANGE = 11;
		public const uint32 EC_SHUTTING_DOWN = 12;
		public const uint32 EC_CLOCK_CHANGED = 13;
		public const uint32 EC_PAUSED = 14;
		public const uint32 EC_OPENING_FILE = 16;
		public const uint32 EC_BUFFERING_DATA = 17;
		public const uint32 EC_FULLSCREEN_LOST = 18;
		public const uint32 EC_ACTIVATE = 19;
		public const uint32 EC_NEED_RESTART = 20;
		public const uint32 EC_WINDOW_DESTROYED = 21;
		public const uint32 EC_DISPLAY_CHANGED = 22;
		public const uint32 EC_STARVATION = 23;
		public const uint32 EC_OLE_EVENT = 24;
		public const uint32 EC_NOTIFY_WINDOW = 25;
		public const uint32 EC_STREAM_CONTROL_STOPPED = 26;
		public const uint32 EC_STREAM_CONTROL_STARTED = 27;
		public const uint32 EC_END_OF_SEGMENT = 28;
		public const uint32 EC_SEGMENT_STARTED = 29;
		public const uint32 EC_LENGTH_CHANGED = 30;
		public const uint32 EC_DEVICE_LOST = 31;
		public const uint32 EC_SAMPLE_NEEDED = 32;
		public const uint32 EC_PROCESSING_LATENCY = 33;
		public const uint32 EC_SAMPLE_LATENCY = 34;
		public const uint32 EC_SCRUB_TIME = 35;
		public const uint32 EC_STEP_COMPLETE = 36;
		public const uint32 EC_TIMECODE_AVAILABLE = 48;
		public const uint32 EC_EXTDEVICE_MODE_CHANGE = 49;
		public const uint32 EC_STATE_CHANGE = 50;
		public const uint32 EC_GRAPH_CHANGED = 80;
		public const uint32 EC_CLOCK_UNSET = 81;
		public const uint32 EC_VMR_RENDERDEVICE_SET = 83;
		public const uint32 VMR_RENDER_DEVICE_OVERLAY = 1;
		public const uint32 VMR_RENDER_DEVICE_VIDMEM = 2;
		public const uint32 VMR_RENDER_DEVICE_SYSMEM = 4;
		public const uint32 EC_VMR_SURFACE_FLIPPED = 84;
		public const uint32 EC_VMR_RECONNECTION_FAILED = 85;
		public const uint32 EC_PREPROCESS_COMPLETE = 86;
		public const uint32 EC_CODECAPI_EVENT = 87;
		public const uint32 EC_WMT_EVENT_BASE = 593;
		public const uint32 EC_WMT_INDEX_EVENT = 593;
		public const uint32 EC_WMT_EVENT = 594;
		public const uint32 EC_BUILT = 768;
		public const uint32 EC_UNBUILT = 769;
		public const uint32 EC_SKIP_FRAMES = 37;
		public const uint32 EC_PLEASE_REOPEN = 64;
		public const uint32 EC_STATUS = 65;
		public const uint32 EC_MARKER_HIT = 66;
		public const uint32 EC_LOADSTATUS = 67;
		public const uint32 EC_FILE_CLOSED = 68;
		public const uint32 EC_ERRORABORTEX = 69;
		public const uint32 AM_LOADSTATUS_CLOSED = 0;
		public const uint32 AM_LOADSTATUS_LOADINGDESCR = 1;
		public const uint32 AM_LOADSTATUS_LOADINGMCAST = 2;
		public const uint32 AM_LOADSTATUS_LOCATING = 3;
		public const uint32 AM_LOADSTATUS_CONNECTING = 4;
		public const uint32 AM_LOADSTATUS_OPENING = 5;
		public const uint32 AM_LOADSTATUS_OPEN = 6;
		public const uint32 EC_NEW_PIN = 32;
		public const uint32 EC_RENDER_FINISHED = 33;
		public const uint32 EC_EOS_SOON = 70;
		public const uint32 EC_CONTENTPROPERTY_CHANGED = 71;
		public const uint32 AM_CONTENTPROPERTY_TITLE = 1;
		public const uint32 AM_CONTENTPROPERTY_AUTHOR = 2;
		public const uint32 AM_CONTENTPROPERTY_COPYRIGHT = 4;
		public const uint32 AM_CONTENTPROPERTY_DESCRIPTION = 8;
		public const uint32 EC_BANDWIDTHCHANGE = 72;
		public const uint32 EC_VIDEOFRAMEREADY = 73;
		public const uint32 EC_DVDBASE = 256;
		public const uint32 EC_DVD_DOMAIN_CHANGE = 257;
		public const uint32 EC_DVD_TITLE_CHANGE = 258;
		public const uint32 EC_DVD_CHAPTER_START = 259;
		public const uint32 EC_DVD_AUDIO_STREAM_CHANGE = 260;
		public const uint32 EC_DVD_SUBPICTURE_STREAM_CHANGE = 261;
		public const uint32 EC_DVD_ANGLE_CHANGE = 262;
		public const uint32 EC_DVD_BUTTON_CHANGE = 263;
		public const uint32 EC_DVD_VALID_UOPS_CHANGE = 264;
		public const uint32 EC_DVD_STILL_ON = 265;
		public const uint32 EC_DVD_STILL_OFF = 266;
		public const uint32 EC_DVD_CURRENT_TIME = 267;
		public const uint32 EC_DVD_ERROR = 268;
		public const uint32 EC_DVD_WARNING = 269;
		public const uint32 EC_DVD_CHAPTER_AUTOSTOP = 270;
		public const uint32 EC_DVD_NO_FP_PGC = 271;
		public const uint32 EC_DVD_PLAYBACK_RATE_CHANGE = 272;
		public const uint32 EC_DVD_PARENTAL_LEVEL_CHANGE = 273;
		public const uint32 EC_DVD_PLAYBACK_STOPPED = 274;
		public const uint32 EC_DVD_ANGLES_AVAILABLE = 275;
		public const uint32 EC_DVD_PLAYPERIOD_AUTOSTOP = 276;
		public const uint32 EC_DVD_BUTTON_AUTO_ACTIVATED = 277;
		public const uint32 EC_DVD_CMD_START = 278;
		public const uint32 EC_DVD_CMD_END = 279;
		public const uint32 EC_DVD_DISC_EJECTED = 280;
		public const uint32 EC_DVD_DISC_INSERTED = 281;
		public const uint32 EC_DVD_CURRENT_HMSF_TIME = 282;
		public const uint32 EC_DVD_KARAOKE_MODE = 283;
		public const uint32 EC_DVD_PROGRAM_CELL_CHANGE = 284;
		public const uint32 EC_DVD_TITLE_SET_CHANGE = 285;
		public const uint32 EC_DVD_PROGRAM_CHAIN_CHANGE = 286;
		public const uint32 EC_DVD_VOBU_Offset = 287;
		public const uint32 EC_DVD_VOBU_Timestamp = 288;
		public const uint32 EC_DVD_GPRM_Change = 289;
		public const uint32 EC_DVD_SPRM_Change = 290;
		public const uint32 EC_DVD_BeginNavigationCommands = 291;
		public const uint32 EC_DVD_NavigationCommand = 292;
		public const uint32 AM_AC3_ALTERNATE_AUDIO_1 = 1;
		public const uint32 AM_AC3_ALTERNATE_AUDIO_2 = 2;
		public const uint32 AM_AC3_ALTERNATE_AUDIO_BOTH = 3;
		public const uint32 AM_AC3_SERVICE_MAIN_AUDIO = 0;
		public const uint32 AM_AC3_SERVICE_NO_DIALOG = 1;
		public const uint32 AM_AC3_SERVICE_VISUALLY_IMPAIRED = 2;
		public const uint32 AM_AC3_SERVICE_HEARING_IMPAIRED = 3;
		public const uint32 AM_AC3_SERVICE_DIALOG_ONLY = 4;
		public const uint32 AM_AC3_SERVICE_COMMENTARY = 5;
		public const uint32 AM_AC3_SERVICE_EMERGENCY_FLASH = 6;
		public const uint32 AM_AC3_SERVICE_VOICE_OVER = 7;
		public const uint32 AM_UseNewCSSKey = 1;
		public const uint32 AM_ReverseBlockStart = 2;
		public const uint32 AM_ReverseBlockEnd = 4;
		public const uint32 AM_DVD_CGMS_RESERVED_MASK = 120;
		public const uint32 AM_DVD_CGMS_COPY_PROTECT_MASK = 24;
		public const uint32 AM_DVD_CGMS_COPY_PERMITTED = 0;
		public const uint32 AM_DVD_CGMS_COPY_ONCE = 16;
		public const uint32 AM_DVD_CGMS_NO_COPY = 24;
		public const uint32 AM_DVD_COPYRIGHT_MASK = 64;
		public const uint32 AM_DVD_NOT_COPYRIGHTED = 0;
		public const uint32 AM_DVD_COPYRIGHTED = 64;
		public const uint32 AM_DVD_SECTOR_PROTECT_MASK = 32;
		public const uint32 AM_DVD_SECTOR_NOT_PROTECTED = 0;
		public const uint32 AM_DVD_SECTOR_PROTECTED = 32;
		public const uint32 AMINTERLACE_IsInterlaced = 1;
		public const uint32 AMINTERLACE_1FieldPerSample = 2;
		public const uint32 AMINTERLACE_Field1First = 4;
		public const uint32 AMINTERLACE_UNUSED = 8;
		public const uint32 AMINTERLACE_FieldPatternMask = 48;
		public const uint32 AMINTERLACE_FieldPatField1Only = 0;
		public const uint32 AMINTERLACE_FieldPatField2Only = 16;
		public const uint32 AMINTERLACE_FieldPatBothRegular = 32;
		public const uint32 AMINTERLACE_FieldPatBothIrregular = 48;
		public const uint32 AMINTERLACE_DisplayModeMask = 192;
		public const uint32 AMINTERLACE_DisplayModeBobOnly = 0;
		public const uint32 AMINTERLACE_DisplayModeWeaveOnly = 64;
		public const uint32 AMINTERLACE_DisplayModeBobOrWeave = 128;
		public const uint32 AMCOPYPROTECT_RestrictDuplication = 1;
		public const uint32 AMCONTROL_USED = 1;
		public const uint32 AMCONTROL_PAD_TO_4x3 = 2;
		public const uint32 AMCONTROL_PAD_TO_16x9 = 4;
		public const uint32 AMCONTROL_COLORINFO_PRESENT = 128;
		public const int32 AM_VIDEO_FLAG_FIELD_MASK = 3;
		public const int32 AM_VIDEO_FLAG_INTERLEAVED_FRAME = 0;
		public const int32 AM_VIDEO_FLAG_FIELD1 = 1;
		public const int32 AM_VIDEO_FLAG_FIELD2 = 2;
		public const int32 AM_VIDEO_FLAG_FIELD1FIRST = 4;
		public const int32 AM_VIDEO_FLAG_WEAVE = 8;
		public const int32 AM_VIDEO_FLAG_IPB_MASK = 48;
		public const int32 AM_VIDEO_FLAG_I_SAMPLE = 0;
		public const int32 AM_VIDEO_FLAG_P_SAMPLE = 16;
		public const int32 AM_VIDEO_FLAG_B_SAMPLE = 32;
		public const int32 AM_VIDEO_FLAG_REPEAT_FIELD = 64;
		public const uint32 AVIF_HASINDEX = 16;
		public const uint32 AVIF_MUSTUSEINDEX = 32;
		public const uint32 AVIF_ISINTERLEAVED = 256;
		public const uint32 AVIF_TRUSTCKTYPE = 2048;
		public const uint32 AVIF_WASCAPTUREFILE = 65536;
		public const uint32 AVIF_COPYRIGHTED = 131072;
		public const uint32 AVI_HEADERSIZE = 2048;
		public const uint32 AVISF_DISABLED = 1;
		public const uint32 AVISF_VIDEO_PALCHANGES = 65536;
		public const int32 AVIIF_LIST = 1;
		public const int32 AVIIF_KEYFRAME = 16;
		public const int32 AVIIF_FIRSTPART = 32;
		public const int32 AVIIF_LASTPART = 64;
		public const int32 AVIIF_NOTIME = 256;
		public const int32 AVIIF_COMPUSE = 268369920;
		public const uint32 AVIIF_NO_TIME = 256;
		public const uint32 AVIIF_COMPRESSOR = 268369920;
		public const uint32 TIMECODE_RATE_30DROP = 0;
		public const uint32 TIMECODE_SMPTE_BINARY_GROUP = 7;
		public const uint32 TIMECODE_SMPTE_COLOR_FRAME = 8;
		public const uint32 AVI_INDEX_OF_INDEXES = 0;
		public const uint32 AVI_INDEX_OF_CHUNKS = 1;
		public const uint32 AVI_INDEX_OF_TIMED_CHUNKS = 2;
		public const uint32 AVI_INDEX_OF_SUB_2FIELD = 3;
		public const uint32 AVI_INDEX_IS_DATA = 128;
		public const uint32 AVI_INDEX_SUB_DEFAULT = 0;
		public const uint32 AVI_INDEX_SUB_2FIELD = 1;
		public const uint32 STDINDEXSIZE = 16384;
		public const uint32 AVISTDINDEX_DELTAFRAME = 2147483648;
		public const uint32 AMVA_TYPEINDEX_OUTPUTFRAME = 4294967295;
		public const uint32 AMVA_QUERYRENDERSTATUSF_READ = 1;
		public const uint32 MIN_DIMENSION = 1;
		public const int32 BDA_PLP_ID_NOT_SET = -1;
		public const uint32 CDEF_CLASS_DEFAULT = 1;
		public const uint32 CDEF_BYPASS_CLASS_MANAGER = 2;
		public const uint32 CDEF_MERIT_ABOVE_DO_NOT_USE = 8;
		public const uint32 CDEF_DEVMON_CMGR_DEVICE = 16;
		public const uint32 CDEF_DEVMON_DMO = 32;
		public const uint32 CDEF_DEVMON_PNP_DEVICE = 64;
		public const uint32 CDEF_DEVMON_FILTER = 128;
		public const uint32 CDEF_DEVMON_SELECTIVE_MASK = 240;
		public const uint32 CHARS_IN_GUID = 39;
		public const uint32 MAX_PIN_NAME = 128;
		public const uint32 MAX_FILTER_NAME = 128;
		public const uint32 AM_GBF_PREVFRAMESKIPPED = 1;
		public const uint32 AM_GBF_NOTASYNCPOINT = 2;
		public const uint32 AM_GBF_NOWAIT = 4;
		public const uint32 AM_GBF_NODDSURFACELOCK = 8;
		public const double AMF_AUTOMATICGAIN = -1;
		public const uint32 AnalogVideo_NTSC_Mask = 7;
		public const uint32 AnalogVideo_PAL_Mask = 1052656;
		public const uint32 AnalogVideo_SECAM_Mask = 1044480;
		public const uint32 MPEG2_PROGRAM_STREAM_MAP = 0;
		public const uint32 MPEG2_PROGRAM_ELEMENTARY_STREAM = 1;
		public const uint32 MPEG2_PROGRAM_DIRECTORY_PES_PACKET = 2;
		public const uint32 MPEG2_PROGRAM_PACK_HEADER = 3;
		public const uint32 MPEG2_PROGRAM_PES_STREAM = 4;
		public const uint32 MPEG2_PROGRAM_SYSTEM_HEADER = 5;
		public const uint32 SUBSTREAM_FILTER_VAL_NONE = 268435456;
		public const uint32 AM_GETDECODERCAP_QUERY_VMR_SUPPORT = 1;
		public const uint32 VMR_NOTSUPPORTED = 0;
		public const uint32 VMR_SUPPORTED = 1;
		public const uint32 AM_QUERY_DECODER_VMR_SUPPORT = 1;
		public const uint32 AM_QUERY_DECODER_DXVA_1_SUPPORT = 2;
		public const uint32 AM_QUERY_DECODER_DVD_SUPPORT = 3;
		public const uint32 AM_QUERY_DECODER_ATSC_SD_SUPPORT = 4;
		public const uint32 AM_QUERY_DECODER_ATSC_HD_SUPPORT = 5;
		public const uint32 AM_GETDECODERCAP_QUERY_VMR9_SUPPORT = 6;
		public const uint32 AM_GETDECODERCAP_QUERY_EVR_SUPPORT = 7;
		public const uint32 DECODER_CAP_NOTSUPPORTED = 0;
		public const uint32 DECODER_CAP_SUPPORTED = 1;
		public const uint32 VMRBITMAP_DISABLE = 1;
		public const uint32 VMRBITMAP_HDC = 2;
		public const uint32 VMRBITMAP_ENTIREDDS = 4;
		public const uint32 VMRBITMAP_SRCCOLORKEY = 8;
		public const uint32 VMRBITMAP_SRCRECT = 16;
		public const uint32 DVD_TITLE_MENU = 0;
		public const uint32 DVD_STREAM_DATA_CURRENT = 2048;
		public const uint32 DVD_STREAM_DATA_VMGM = 1024;
		public const uint32 DVD_STREAM_DATA_VTSM = 1025;
		public const uint32 DVD_DEFAULT_AUDIO_STREAM = 15;
		public const uint32 DVD_AUDIO_CAPS_AC3 = 1;
		public const uint32 DVD_AUDIO_CAPS_MPEG2 = 2;
		public const uint32 DVD_AUDIO_CAPS_LPCM = 4;
		public const uint32 DVD_AUDIO_CAPS_DTS = 8;
		public const uint32 DVD_AUDIO_CAPS_SDDS = 16;
		public const Guid MEDIATYPE_MPEG2_PACK = .(0x36523b13, 0x8ee5, 0x11d1, 0x8c, 0xa3, 0x00, 0x60, 0xb0, 0x57, 0x66, 0x4a);
		public const Guid PBDA_AUX_CONNECTOR_TYPE_SVideo = .(0xa0e905f4, 0x24c9, 0x4a54, 0xb7, 0x61, 0x21, 0x33, 0x55, 0xef, 0xc1, 0x3a);
		public const Guid PBDA_AUX_CONNECTOR_TYPE_Composite = .(0xf6298b4c, 0xc725, 0x4d42, 0x84, 0x9b, 0x41, 0x0b, 0xbb, 0x14, 0xea, 0x62);
		public const Guid CLSID_PBDA_AUX_DATA_TYPE = .(0xfd456373, 0x3323, 0x4090, 0xad, 0xca, 0x8e, 0xd4, 0x5f, 0x55, 0xcf, 0x10);
		public const Guid CLSID_PBDA_Encoder_DATA_TYPE = .(0x728fd6bc, 0x5546, 0x4716, 0xb1, 0x03, 0xf8, 0x99, 0xf5, 0xa1, 0xfa, 0x68);
		public const uint32 PBDA_Encoder_Audio_AlgorithmType_MPEG1LayerII = 0;
		public const uint32 PBDA_Encoder_Audio_AlgorithmType_AC3 = 1;
		public const uint32 PBDA_Encoder_Video_MPEG2PartII = 0;
		public const uint32 PBDA_Encoder_Video_MPEG4Part10 = 1;
		public const uint32 PBDA_Encoder_Video_AVC = 1;
		public const uint32 PBDA_Encoder_Video_H264 = 1;
		public const uint32 PBDA_Encoder_BitrateMode_Constant = 1;
		public const uint32 PBDA_Encoder_BitrateMode_Variable = 2;
		public const uint32 PBDA_Encoder_BitrateMode_Average = 3;
		public const Guid CLSID_PBDA_FDC_DATA_TYPE = .(0xe7dbf9a0, 0x22ab, 0x4047, 0x8e, 0x67, 0xef, 0x9a, 0xd5, 0x04, 0xe7, 0x29);
		public const Guid CLSID_PBDA_GDDS_DATA_TYPE = .(0xc80c0df3, 0x6052, 0x4c16, 0x9f, 0x56, 0xc4, 0x4c, 0x21, 0xf7, 0x3c, 0x45);
		public const Guid LIBID_QuartzNetTypeLib = .(0x56a868b1, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
		public const Guid LIBID_QuartzTypeLib = .(0x56a868b0, 0x0ad4, 0x11ce, 0xb0, 0x3a, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
		public const Guid CLSID_AMMultiMediaStream = .(0x49c47ce5, 0x9ba4, 0x11d0, 0x82, 0x12, 0x00, 0xc0, 0x4f, 0xc3, 0x2c, 0x45);
		public const Guid CLSID_AMDirectDrawStream = .(0x49c47ce4, 0x9ba4, 0x11d0, 0x82, 0x12, 0x00, 0xc0, 0x4f, 0xc3, 0x2c, 0x45);
		public const Guid CLSID_AMAudioStream = .(0x8496e040, 0xaf4c, 0x11d0, 0x82, 0x12, 0x00, 0xc0, 0x4f, 0xc3, 0x2c, 0x45);
		public const Guid CLSID_AMAudioData = .(0xf2468580, 0xaf8a, 0x11d0, 0x82, 0x12, 0x00, 0xc0, 0x4f, 0xc3, 0x2c, 0x45);
		public const Guid CLSID_AMMediaTypeStream = .(0xcf0f2f7c, 0xf7bf, 0x11d0, 0x90, 0x0d, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
		public const uint32 AMDDS_NONE = 0;
		public const uint32 AMDDS_DCIPS = 1;
		public const uint32 AMDDS_PS = 2;
		public const uint32 AMDDS_RGBOVR = 4;
		public const uint32 AMDDS_YUVOVR = 8;
		public const uint32 AMDDS_RGBOFF = 16;
		public const uint32 AMDDS_YUVOFF = 32;
		public const uint32 AMDDS_RGBFLP = 64;
		public const uint32 AMDDS_YUVFLP = 128;
		public const uint32 AMDDS_ALL = 255;
		public const uint32 AMDDS_DEFAULT = 255;
		public const uint32 MAX_SIZE_MPEG1_SEQUENCE_INFO = 140;
		public const Guid CLSID_DMOWrapperFilter = .(0x94297043, 0xbd82, 0x4dfd, 0xb0, 0xde, 0x81, 0x77, 0x73, 0x9c, 0x6d, 0x20);
		public const Guid CLSID_DMOFilterCategory = .(0xbcd5796c, 0xbd52, 0x4d30, 0xab, 0x76, 0x70, 0xf9, 0x75, 0xb8, 0x91, 0x99);
		public const uint32 AM_MPEG_AUDIO_DUAL_MERGE = 0;
		public const uint32 AM_MPEG_AUDIO_DUAL_LEFT = 1;
		public const uint32 AM_MPEG_AUDIO_DUAL_RIGHT = 2;
		public const uint32 VFW_FIRST_CODE = 512;
		public const uint32 MAX_ERROR_TEXT_LEN = 160;
		public const uint32 MPBOOL_TRUE = 1;
		public const uint32 MPBOOL_FALSE = 0;
		public const int32 DWORD_ALLPARAMS = -1;
		public const Guid GUID_TIME_REFERENCE = .(0x93ad712b, 0xdaa0, 0x4ffe, 0xbc, 0x81, 0xb0, 0xce, 0x50, 0x0f, 0xcd, 0xd9);
		public const Guid GUID_TIME_MUSIC = .(0x0574c49d, 0x5b04, 0x4b15, 0xa5, 0x42, 0xae, 0x28, 0x20, 0x30, 0x11, 0x7b);
		public const Guid GUID_TIME_SAMPLES = .(0xa8593d05, 0x0c43, 0x4984, 0x9a, 0x63, 0x97, 0xaf, 0x9e, 0x02, 0xc4, 0xc0);
		public const uint32 MPF_ENVLP_STANDARD = 0;
		public const uint32 MPF_ENVLP_BEGIN_CURRENTVAL = 1;
		public const uint32 MPF_ENVLP_BEGIN_NEUTRALVAL = 2;
		public const uint32 MPF_PUNCHIN_REFTIME = 0;
		public const uint32 MPF_PUNCHIN_NOW = 1;
		public const uint32 MPF_PUNCHIN_STOPPED = 2;
		public const Guid MSPID_PrimaryVideo = .(0xa35ff56a, 0x9fda, 0x11d0, 0x8f, 0xdf, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
		public const Guid MSPID_PrimaryAudio = .(0xa35ff56b, 0x9fda, 0x11d0, 0x8f, 0xdf, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0x9d);
		public const HRESULT VFW_E_INVALIDMEDIATYPE = -2147220992;
		public const HRESULT VFW_E_INVALIDSUBTYPE = -2147220991;
		public const HRESULT VFW_E_NEED_OWNER = -2147220990;
		public const HRESULT VFW_E_ENUM_OUT_OF_SYNC = -2147220989;
		public const HRESULT VFW_E_ALREADY_CONNECTED = -2147220988;
		public const HRESULT VFW_E_FILTER_ACTIVE = -2147220987;
		public const HRESULT VFW_E_NO_TYPES = -2147220986;
		public const HRESULT VFW_E_NO_ACCEPTABLE_TYPES = -2147220985;
		public const HRESULT VFW_E_INVALID_DIRECTION = -2147220984;
		public const HRESULT VFW_E_NOT_CONNECTED = -2147220983;
		public const HRESULT VFW_E_NO_ALLOCATOR = -2147220982;
		public const HRESULT VFW_E_RUNTIME_ERROR = -2147220981;
		public const HRESULT VFW_E_BUFFER_NOTSET = -2147220980;
		public const HRESULT VFW_E_BUFFER_OVERFLOW = -2147220979;
		public const HRESULT VFW_E_BADALIGN = -2147220978;
		public const HRESULT VFW_E_ALREADY_COMMITTED = -2147220977;
		public const HRESULT VFW_E_BUFFERS_OUTSTANDING = -2147220976;
		public const HRESULT VFW_E_NOT_COMMITTED = -2147220975;
		public const HRESULT VFW_E_SIZENOTSET = -2147220974;
		public const HRESULT VFW_E_NO_CLOCK = -2147220973;
		public const HRESULT VFW_E_NO_SINK = -2147220972;
		public const HRESULT VFW_E_NO_INTERFACE = -2147220971;
		public const HRESULT VFW_E_NOT_FOUND = -2147220970;
		public const HRESULT VFW_E_CANNOT_CONNECT = -2147220969;
		public const HRESULT VFW_E_CANNOT_RENDER = -2147220968;
		public const HRESULT VFW_E_CHANGING_FORMAT = -2147220967;
		public const HRESULT VFW_E_NO_COLOR_KEY_SET = -2147220966;
		public const HRESULT VFW_E_NOT_OVERLAY_CONNECTION = -2147220965;
		public const HRESULT VFW_E_NOT_SAMPLE_CONNECTION = -2147220964;
		public const HRESULT VFW_E_PALETTE_SET = -2147220963;
		public const HRESULT VFW_E_COLOR_KEY_SET = -2147220962;
		public const HRESULT VFW_E_NO_COLOR_KEY_FOUND = -2147220961;
		public const HRESULT VFW_E_NO_PALETTE_AVAILABLE = -2147220960;
		public const HRESULT VFW_E_NO_DISPLAY_PALETTE = -2147220959;
		public const HRESULT VFW_E_TOO_MANY_COLORS = -2147220958;
		public const HRESULT VFW_E_STATE_CHANGED = -2147220957;
		public const HRESULT VFW_E_NOT_STOPPED = -2147220956;
		public const HRESULT VFW_E_NOT_PAUSED = -2147220955;
		public const HRESULT VFW_E_NOT_RUNNING = -2147220954;
		public const HRESULT VFW_E_WRONG_STATE = -2147220953;
		public const HRESULT VFW_E_START_TIME_AFTER_END = -2147220952;
		public const HRESULT VFW_E_INVALID_RECT = -2147220951;
		public const HRESULT VFW_E_TYPE_NOT_ACCEPTED = -2147220950;
		public const HRESULT VFW_E_SAMPLE_REJECTED = -2147220949;
		public const HRESULT VFW_E_SAMPLE_REJECTED_EOS = -2147220948;
		public const HRESULT VFW_E_DUPLICATE_NAME = -2147220947;
		public const HRESULT VFW_S_DUPLICATE_NAME = 262701;
		public const HRESULT VFW_E_TIMEOUT = -2147220946;
		public const HRESULT VFW_E_INVALID_FILE_FORMAT = -2147220945;
		public const HRESULT VFW_E_ENUM_OUT_OF_RANGE = -2147220944;
		public const HRESULT VFW_E_CIRCULAR_GRAPH = -2147220943;
		public const HRESULT VFW_E_NOT_ALLOWED_TO_SAVE = -2147220942;
		public const HRESULT VFW_E_TIME_ALREADY_PASSED = -2147220941;
		public const HRESULT VFW_E_ALREADY_CANCELLED = -2147220940;
		public const HRESULT VFW_E_CORRUPT_GRAPH_FILE = -2147220939;
		public const HRESULT VFW_E_ADVISE_ALREADY_SET = -2147220938;
		public const HRESULT VFW_S_STATE_INTERMEDIATE = 262711;
		public const HRESULT VFW_E_NO_MODEX_AVAILABLE = -2147220936;
		public const HRESULT VFW_E_NO_ADVISE_SET = -2147220935;
		public const HRESULT VFW_E_NO_FULLSCREEN = -2147220934;
		public const HRESULT VFW_E_IN_FULLSCREEN_MODE = -2147220933;
		public const HRESULT VFW_E_UNKNOWN_FILE_TYPE = -2147220928;
		public const HRESULT VFW_E_CANNOT_LOAD_SOURCE_FILTER = -2147220927;
		public const HRESULT VFW_S_PARTIAL_RENDER = 262722;
		public const HRESULT VFW_E_FILE_TOO_SHORT = -2147220925;
		public const HRESULT VFW_E_INVALID_FILE_VERSION = -2147220924;
		public const HRESULT VFW_S_SOME_DATA_IGNORED = 262725;
		public const HRESULT VFW_S_CONNECTIONS_DEFERRED = 262726;
		public const HRESULT VFW_E_INVALID_CLSID = -2147220921;
		public const HRESULT VFW_E_INVALID_MEDIA_TYPE = -2147220920;
		public const HRESULT VFW_E_BAD_KEY = -2147220494;
		public const HRESULT VFW_S_NO_MORE_ITEMS = 262403;
		public const HRESULT VFW_E_SAMPLE_TIME_NOT_SET = -2147220919;
		public const HRESULT VFW_S_RESOURCE_NOT_NEEDED = 262736;
		public const HRESULT VFW_E_MEDIA_TIME_NOT_SET = -2147220911;
		public const HRESULT VFW_E_NO_TIME_FORMAT_SET = -2147220910;
		public const HRESULT VFW_E_MONO_AUDIO_HW = -2147220909;
		public const HRESULT VFW_S_MEDIA_TYPE_IGNORED = 262740;
		public const HRESULT VFW_E_NO_DECOMPRESSOR = -2147220907;
		public const HRESULT VFW_E_NO_AUDIO_HARDWARE = -2147220906;
		public const HRESULT VFW_S_VIDEO_NOT_RENDERED = 262743;
		public const HRESULT VFW_S_AUDIO_NOT_RENDERED = 262744;
		public const HRESULT VFW_E_RPZA = -2147220903;
		public const HRESULT VFW_S_RPZA = 262746;
		public const HRESULT VFW_E_PROCESSOR_NOT_SUITABLE = -2147220901;
		public const HRESULT VFW_E_UNSUPPORTED_AUDIO = -2147220900;
		public const HRESULT VFW_E_UNSUPPORTED_VIDEO = -2147220899;
		public const HRESULT VFW_E_MPEG_NOT_CONSTRAINED = -2147220898;
		public const HRESULT VFW_E_NOT_IN_GRAPH = -2147220897;
		public const HRESULT VFW_S_ESTIMATED = 262752;
		public const HRESULT VFW_E_NO_TIME_FORMAT = -2147220895;
		public const HRESULT VFW_E_READ_ONLY = -2147220894;
		public const HRESULT VFW_S_RESERVED = 262755;
		public const HRESULT VFW_E_BUFFER_UNDERFLOW = -2147220892;
		public const HRESULT VFW_E_UNSUPPORTED_STREAM = -2147220891;
		public const HRESULT VFW_E_NO_TRANSPORT = -2147220890;
		public const HRESULT VFW_S_STREAM_OFF = 262759;
		public const HRESULT VFW_S_CANT_CUE = 262760;
		public const HRESULT VFW_E_BAD_VIDEOCD = -2147220887;
		public const HRESULT VFW_S_NO_STOP_TIME = 262768;
		public const HRESULT VFW_E_OUT_OF_VIDEO_MEMORY = -2147220879;
		public const HRESULT VFW_E_VP_NEGOTIATION_FAILED = -2147220878;
		public const HRESULT VFW_E_DDRAW_CAPS_NOT_SUITABLE = -2147220877;
		public const HRESULT VFW_E_NO_VP_HARDWARE = -2147220876;
		public const HRESULT VFW_E_NO_CAPTURE_HARDWARE = -2147220875;
		public const HRESULT VFW_E_DVD_OPERATION_INHIBITED = -2147220874;
		public const HRESULT VFW_E_DVD_INVALIDDOMAIN = -2147220873;
		public const HRESULT VFW_E_DVD_NO_BUTTON = -2147220872;
		public const HRESULT VFW_E_DVD_GRAPHNOTREADY = -2147220871;
		public const HRESULT VFW_E_DVD_RENDERFAIL = -2147220870;
		public const HRESULT VFW_E_DVD_DECNOTENOUGH = -2147220869;
		public const HRESULT VFW_E_DDRAW_VERSION_NOT_SUITABLE = -2147220868;
		public const HRESULT VFW_E_COPYPROT_FAILED = -2147220867;
		public const HRESULT VFW_S_NOPREVIEWPIN = 262782;
		public const HRESULT VFW_E_TIME_EXPIRED = -2147220865;
		public const HRESULT VFW_S_DVD_NON_ONE_SEQUENTIAL = 262784;
		public const HRESULT VFW_E_DVD_WRONG_SPEED = -2147220863;
		public const HRESULT VFW_E_DVD_MENU_DOES_NOT_EXIST = -2147220862;
		public const HRESULT VFW_E_DVD_CMD_CANCELLED = -2147220861;
		public const HRESULT VFW_E_DVD_STATE_WRONG_VERSION = -2147220860;
		public const HRESULT VFW_E_DVD_STATE_CORRUPT = -2147220859;
		public const HRESULT VFW_E_DVD_STATE_WRONG_DISC = -2147220858;
		public const HRESULT VFW_E_DVD_INCOMPATIBLE_REGION = -2147220857;
		public const HRESULT VFW_E_DVD_NO_ATTRIBUTES = -2147220856;
		public const HRESULT VFW_E_DVD_NO_GOUP_PGC = -2147220855;
		public const HRESULT VFW_E_DVD_LOW_PARENTAL_LEVEL = -2147220854;
		public const HRESULT VFW_E_DVD_NOT_IN_KARAOKE_MODE = -2147220853;
		public const HRESULT VFW_S_DVD_CHANNEL_CONTENTS_NOT_AVAILABLE = 262796;
		public const HRESULT VFW_S_DVD_NOT_ACCURATE = 262797;
		public const HRESULT VFW_E_FRAME_STEP_UNSUPPORTED = -2147220850;
		public const HRESULT VFW_E_DVD_STREAM_DISABLED = -2147220849;
		public const HRESULT VFW_E_DVD_TITLE_UNKNOWN = -2147220848;
		public const HRESULT VFW_E_DVD_INVALID_DISC = -2147220847;
		public const HRESULT VFW_E_DVD_NO_RESUME_INFORMATION = -2147220846;
		public const HRESULT VFW_E_PIN_ALREADY_BLOCKED_ON_THIS_THREAD = -2147220845;
		public const HRESULT VFW_E_PIN_ALREADY_BLOCKED = -2147220844;
		public const HRESULT VFW_E_CERTIFICATION_FAILURE = -2147220843;
		public const HRESULT VFW_E_VMR_NOT_IN_MIXER_MODE = -2147220842;
		public const HRESULT VFW_E_VMR_NO_AP_SUPPLIED = -2147220841;
		public const HRESULT VFW_E_VMR_NO_DEINTERLACE_HW = -2147220840;
		public const HRESULT VFW_E_VMR_NO_PROCAMP_HW = -2147220839;
		public const HRESULT VFW_E_DVD_VMR9_INCOMPATIBLEDEC = -2147220838;
		public const HRESULT VFW_E_NO_COPP_HW = -2147220837;
		public const HRESULT VFW_E_DVD_NONBLOCKING = -2147220836;
		public const HRESULT VFW_E_DVD_TOO_MANY_RENDERERS_IN_FILTER_GRAPH = -2147220835;
		public const HRESULT VFW_E_DVD_NON_EVR_RENDERER_IN_FILTER_GRAPH = -2147220834;
		public const HRESULT VFW_E_DVD_RESOLUTION_ERROR = -2147220833;
		public const HRESULT E_PROP_SET_UNSUPPORTED = -2147023726;
		public const HRESULT E_PROP_ID_UNSUPPORTED = -2147023728;
		public const HRESULT VFW_E_CODECAPI_LINEAR_RANGE = -2147220720;
		public const HRESULT VFW_E_CODECAPI_ENUMERATED = -2147220719;
		public const HRESULT VFW_E_CODECAPI_NO_DEFAULT = -2147220717;
		public const HRESULT VFW_E_CODECAPI_NO_CURRENT_VALUE = -2147220716;
		public const HRESULT VFW_E_DVD_CHAPTER_DOES_NOT_EXIST = -2147220715;
		public const HRESULT VFW_S_DVD_RENDER_STATUS = 262944;
		public const Guid DXVA_ModeNone = .(0x1b81be00, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH261_A = .(0x1b81be01, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH261_B = .(0x1b81be02, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH263_A = .(0x1b81be03, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH263_B = .(0x1b81be04, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH263_C = .(0x1b81be05, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH263_D = .(0x1b81be06, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH263_E = .(0x1b81be07, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH263_F = .(0x1b81be08, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeMPEG1_A = .(0x1b81be09, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeMPEG1_VLD = .(0x6f3ec719, 0x3735, 0x42cc, 0x80, 0x63, 0x65, 0xcc, 0x3c, 0xb3, 0x66, 0x16);
		public const Guid DXVA_ModeMPEG2_A = .(0x1b81be0a, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeMPEG2_B = .(0x1b81be0b, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeMPEG2_C = .(0x1b81be0c, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeMPEG2_D = .(0x1b81be0d, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeMPEG2and1_VLD = .(0x86695f12, 0x340e, 0x4f04, 0x9f, 0xd3, 0x92, 0x53, 0xdd, 0x32, 0x74, 0x60);
		public const Guid DXVA_ModeH264_A = .(0x1b81be64, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH264_B = .(0x1b81be65, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH264_C = .(0x1b81be66, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH264_D = .(0x1b81be67, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH264_E = .(0x1b81be68, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH264_F = .(0x1b81be69, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeH264_VLD_WithFMOASO_NoFGT = .(0xd5f04ff9, 0x3418, 0x45d8, 0x95, 0x61, 0x32, 0xa7, 0x6a, 0xae, 0x2d, 0xdd);
		public const Guid DXVA_ModeH264_VLD_Stereo_Progressive_NoFGT = .(0xd79be8da, 0x0cf1, 0x4c81, 0xb8, 0x2a, 0x69, 0xa4, 0xe2, 0x36, 0xf4, 0x3d);
		public const Guid DXVA_ModeH264_VLD_Stereo_NoFGT = .(0xf9aaccbb, 0xc2b6, 0x4cfc, 0x87, 0x79, 0x57, 0x07, 0xb1, 0x76, 0x05, 0x52);
		public const Guid DXVA_ModeH264_VLD_Multiview_NoFGT = .(0x705b9d82, 0x76cf, 0x49d6, 0xb7, 0xe6, 0xac, 0x88, 0x72, 0xdb, 0x01, 0x3c);
		public const Guid DXVA_ModeWMV8_A = .(0x1b81be80, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeWMV8_B = .(0x1b81be81, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeWMV9_A = .(0x1b81be90, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeWMV9_B = .(0x1b81be91, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeWMV9_C = .(0x1b81be94, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeVC1_A = .(0x1b81bea0, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeVC1_B = .(0x1b81bea1, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeVC1_C = .(0x1b81bea2, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeVC1_D = .(0x1b81bea3, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeVC1_D2010 = .(0x1b81bea4, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const Guid DXVA_ModeMPEG4pt2_VLD_Simple = .(0xefd64d74, 0xc9e8, 0x41d7, 0xa5, 0xe9, 0xe9, 0xb0, 0xe3, 0x9f, 0xa3, 0x19);
		public const Guid DXVA_ModeMPEG4pt2_VLD_AdvSimple_NoGMC = .(0xed418a9f, 0x010d, 0x4eda, 0x9a, 0xe3, 0x9a, 0x65, 0x35, 0x8d, 0x8d, 0x2e);
		public const Guid DXVA_ModeMPEG4pt2_VLD_AdvSimple_GMC = .(0xab998b5b, 0x4258, 0x44a9, 0x9f, 0xeb, 0x94, 0xe5, 0x97, 0xa6, 0xba, 0xae);
		public const Guid DXVA_ModeHEVC_VLD_Main = .(0x5b11d51b, 0x2f4c, 0x4452, 0xbc, 0xc3, 0x09, 0xf2, 0xa1, 0x16, 0x0c, 0xc0);
		public const Guid DXVA_ModeHEVC_VLD_Main10 = .(0x107af0e0, 0xef1a, 0x4d19, 0xab, 0xa8, 0x67, 0xa1, 0x63, 0x07, 0x3d, 0x13);
		public const Guid DXVA_ModeVP9_VLD_Profile0 = .(0x463707f8, 0xa1d0, 0x4585, 0x87, 0x6d, 0x83, 0xaa, 0x6d, 0x60, 0xb8, 0x9e);
		public const Guid DXVA_ModeVP9_VLD_10bit_Profile2 = .(0xa4c749ef, 0x6ecf, 0x48aa, 0x84, 0x48, 0x50, 0xa7, 0xa1, 0x16, 0x5f, 0xf7);
		public const Guid DXVA_ModeVP8_VLD = .(0x90b899ea, 0x3a62, 0x4705, 0x88, 0xb3, 0x8d, 0xf0, 0x4b, 0x27, 0x44, 0xe7);
		public const Guid DXVA_ModeAV1_VLD_Profile0 = .(0xb8be4ccb, 0xcf53, 0x46ba, 0x8d, 0x59, 0xd6, 0xb8, 0xa6, 0xda, 0x5d, 0x2a);
		public const Guid DXVA_ModeAV1_VLD_Profile1 = .(0x6936ff0f, 0x45b1, 0x4163, 0x9c, 0xc1, 0x64, 0x6e, 0xf6, 0x94, 0x61, 0x08);
		public const Guid DXVA_ModeAV1_VLD_Profile2 = .(0x0c5f2aa1, 0xe541, 0x4089, 0xbb, 0x7b, 0x98, 0x11, 0x0a, 0x19, 0xd7, 0xc8);
		public const Guid DXVA_ModeAV1_VLD_12bit_Profile2 = .(0x17127009, 0xa00f, 0x4ce1, 0x99, 0x4e, 0xbf, 0x40, 0x81, 0xf6, 0xf3, 0xf0);
		public const Guid DXVA_ModeAV1_VLD_12bit_Profile2_420 = .(0x2d80bed6, 0x9cac, 0x4835, 0x9e, 0x91, 0x32, 0x7b, 0xbc, 0x4f, 0x9e, 0xe8);
		public const Guid DXVA_NoEncrypt = .(0x1b81bed0, 0xa0c7, 0x11d3, 0xb9, 0x84, 0x00, 0xc0, 0x4f, 0x2e, 0x73, 0xc5);
		public const uint32 DXVA_RESTRICTED_MODE_UNRESTRICTED = 65535;
		public const uint32 DXVA_RESTRICTED_MODE_H261_A = 1;
		public const uint32 DXVA_RESTRICTED_MODE_H261_B = 2;
		public const uint32 DXVA_RESTRICTED_MODE_H263_A = 3;
		public const uint32 DXVA_RESTRICTED_MODE_H263_B = 4;
		public const uint32 DXVA_RESTRICTED_MODE_H263_C = 5;
		public const uint32 DXVA_RESTRICTED_MODE_H263_D = 6;
		public const uint32 DXVA_RESTRICTED_MODE_H263_E = 7;
		public const uint32 DXVA_RESTRICTED_MODE_H263_F = 8;
		public const uint32 DXVA_RESTRICTED_MODE_MPEG1_A = 9;
		public const uint32 DXVA_RESTRICTED_MODE_MPEG2_A = 10;
		public const uint32 DXVA_RESTRICTED_MODE_MPEG2_B = 11;
		public const uint32 DXVA_RESTRICTED_MODE_MPEG2_C = 12;
		public const uint32 DXVA_RESTRICTED_MODE_MPEG2_D = 13;
		public const uint32 DXVA_RESTRICTED_MODE_MPEG1_VLD = 16;
		public const uint32 DXVA_RESTRICTED_MODE_MPEG2and1_VLD = 17;
		public const uint32 DXVA_RESTRICTED_MODE_H264_A = 100;
		public const uint32 DXVA_RESTRICTED_MODE_H264_B = 101;
		public const uint32 DXVA_RESTRICTED_MODE_H264_C = 102;
		public const uint32 DXVA_RESTRICTED_MODE_H264_D = 103;
		public const uint32 DXVA_RESTRICTED_MODE_H264_E = 104;
		public const uint32 DXVA_RESTRICTED_MODE_H264_F = 105;
		public const uint32 DXVA_RESTRICTED_MODE_H264_VLD_WITHFMOASO_NOFGT = 112;
		public const uint32 DXVA_RESTRICTED_MODE_H264_VLD_STEREO_PROGRESSIVE_NOFGT = 113;
		public const uint32 DXVA_RESTRICTED_MODE_H264_VLD_STEREO_NOFGT = 114;
		public const uint32 DXVA_RESTRICTED_MODE_H264_VLD_MULTIVIEW_NOFGT = 115;
		public const uint32 DXVA_RESTRICTED_MODE_WMV8_A = 128;
		public const uint32 DXVA_RESTRICTED_MODE_WMV8_B = 129;
		public const uint32 DXVA_RESTRICTED_MODE_WMV9_A = 144;
		public const uint32 DXVA_RESTRICTED_MODE_WMV9_B = 145;
		public const uint32 DXVA_RESTRICTED_MODE_WMV9_C = 148;
		public const uint32 DXVA_RESTRICTED_MODE_VC1_A = 160;
		public const uint32 DXVA_RESTRICTED_MODE_VC1_B = 161;
		public const uint32 DXVA_RESTRICTED_MODE_VC1_C = 162;
		public const uint32 DXVA_RESTRICTED_MODE_VC1_D = 163;
		public const uint32 DXVA_RESTRICTED_MODE_VC1_D2010 = 164;
		public const uint32 DXVA_RESTRICTED_MODE_MPEG4PT2_VLD_SIMPLE = 176;
		public const uint32 DXVA_RESTRICTED_MODE_MPEG4PT2_VLD_ADV_SIMPLE_NOGMC = 177;
		public const uint32 DXVA_RESTRICTED_MODE_MPEG4PT2_VLD_ADV_SIMPLE_GMC = 178;
		public const uint32 DXVA_RESTRICTED_MODE_WMV8_POSTPROC = 128;
		public const uint32 DXVA_RESTRICTED_MODE_WMV8_MOCOMP = 129;
		public const uint32 DXVA_RESTRICTED_MODE_WMV9_POSTPROC = 144;
		public const uint32 DXVA_RESTRICTED_MODE_WMV9_MOCOMP = 145;
		public const uint32 DXVA_RESTRICTED_MODE_WMV9_IDCT = 148;
		public const uint32 DXVA_RESTRICTED_MODE_VC1_POSTPROC = 160;
		public const uint32 DXVA_RESTRICTED_MODE_VC1_MOCOMP = 161;
		public const uint32 DXVA_RESTRICTED_MODE_VC1_IDCT = 162;
		public const uint32 DXVA_RESTRICTED_MODE_VC1_VLD = 163;
		public const uint32 DXVA_RESTRICTED_MODE_H264_MOCOMP_NOFGT = 100;
		public const uint32 DXVA_RESTRICTED_MODE_H264_MOCOMP_FGT = 101;
		public const uint32 DXVA_RESTRICTED_MODE_H264_IDCT_NOFGT = 102;
		public const uint32 DXVA_RESTRICTED_MODE_H264_IDCT_FGT = 103;
		public const uint32 DXVA_RESTRICTED_MODE_H264_VLD_NOFGT = 104;
		public const uint32 DXVA_RESTRICTED_MODE_H264_VLD_FGT = 105;
		public const uint32 DXVA_COMPBUFFER_TYPE_THAT_IS_NOT_USED = 0;
		public const uint32 DXVA_PICTURE_DECODE_BUFFER = 1;
		public const uint32 DXVA_MACROBLOCK_CONTROL_BUFFER = 2;
		public const uint32 DXVA_RESIDUAL_DIFFERENCE_BUFFER = 3;
		public const uint32 DXVA_DEBLOCKING_CONTROL_BUFFER = 4;
		public const uint32 DXVA_INVERSE_QUANTIZATION_MATRIX_BUFFER = 5;
		public const uint32 DXVA_SLICE_CONTROL_BUFFER = 6;
		public const uint32 DXVA_BITSTREAM_DATA_BUFFER = 7;
		public const uint32 DXVA_AYUV_BUFFER = 8;
		public const uint32 DXVA_IA44_SURFACE_BUFFER = 9;
		public const uint32 DXVA_DPXD_SURFACE_BUFFER = 10;
		public const uint32 DXVA_HIGHLIGHT_BUFFER = 11;
		public const uint32 DXVA_DCCMD_SURFACE_BUFFER = 12;
		public const uint32 DXVA_ALPHA_BLEND_COMBINATION_BUFFER = 13;
		public const uint32 DXVA_PICTURE_RESAMPLE_BUFFER = 14;
		public const uint32 DXVA_READ_BACK_BUFFER = 15;
		public const uint32 DXVA_MOTION_VECTOR_BUFFER = 16;
		public const uint32 DXVA_FILM_GRAIN_BUFFER = 17;
		public const uint32 DXVA_NUM_TYPES_COMP_BUFFERS = 18;
		public const uint32 DXVA_PICTURE_DECODING_FUNCTION = 1;
		public const uint32 DXVA_ALPHA_BLEND_DATA_LOAD_FUNCTION = 2;
		public const uint32 DXVA_ALPHA_BLEND_COMBINATION_FUNCTION = 3;
		public const uint32 DXVA_PICTURE_RESAMPLE_FUNCTION = 4;
		public const uint32 DXVA_DEBLOCKING_FILTER_FUNCTION = 5;
		public const uint32 DXVA_FILM_GRAIN_SYNTHESIS_FUNCTION = 6;
		public const uint32 DXVA_STATUS_REPORTING_FUNCTION = 7;
		public const uint32 DXVA_EXECUTE_RETURN_OK = 0;
		public const uint32 DXVA_EXECUTE_RETURN_DATA_ERROR_MINOR = 1;
		public const uint32 DXVA_EXECUTE_RETURN_DATA_ERROR_SIGNIF = 2;
		public const uint32 DXVA_EXECUTE_RETURN_DATA_ERROR_SEVERE = 3;
		public const uint32 DXVA_EXECUTE_RETURN_OTHER_ERROR_SEVERE = 4;
		public const uint32 DXVA_QUERYORREPLYFUNCFLAG_DECODER_PROBE_QUERY = 16777201;
		public const uint32 DXVA_QUERYORREPLYFUNCFLAG_DECODER_LOCK_QUERY = 16777205;
		public const uint32 DXVA_QUERYORREPLYFUNCFLAG_ACCEL_PROBE_OK_COPY = 16777208;
		public const uint32 DXVA_QUERYORREPLYFUNCFLAG_ACCEL_PROBE_OK_PLUS = 16777209;
		public const uint32 DXVA_QUERYORREPLYFUNCFLAG_ACCEL_LOCK_OK_COPY = 16777212;
		public const uint32 DXVA_QUERYORREPLYFUNCFLAG_ACCEL_PROBE_FALSE_PLUS = 16777211;
		public const uint32 DXVA_QUERYORREPLYFUNCFLAG_ACCEL_LOCK_FALSE_PLUS = 16777215;
		public const uint32 DXVA_ENCRYPTPROTOCOLFUNCFLAG_HOST = 16776960;
		public const uint32 DXVA_ENCRYPTPROTOCOLFUNCFLAG_ACCEL = 16776968;
		public const uint32 DXVA_CHROMA_FORMAT_420 = 1;
		public const uint32 DXVA_CHROMA_FORMAT_422 = 2;
		public const uint32 DXVA_CHROMA_FORMAT_444 = 3;
		public const uint32 DXVA_PICTURE_STRUCTURE_TOP_FIELD = 1;
		public const uint32 DXVA_PICTURE_STRUCTURE_BOTTOM_FIELD = 2;
		public const uint32 DXVA_PICTURE_STRUCTURE_FRAME = 3;
		public const uint32 DXVA_BIDIRECTIONAL_AVERAGING_MPEG2_ROUND = 0;
		public const uint32 DXVA_BIDIRECTIONAL_AVERAGING_H263_TRUNC = 1;
		public const uint32 DXVA_MV_PRECISION_AND_CHROMA_RELATION_MPEG2 = 0;
		public const uint32 DXVA_MV_PRECISION_AND_CHROMA_RELATION_H263 = 1;
		public const uint32 DXVA_MV_PRECISION_AND_CHROMA_RELATION_H261 = 2;
		public const uint32 DXVA_SCAN_METHOD_ZIG_ZAG = 0;
		public const uint32 DXVA_SCAN_METHOD_ALTERNATE_VERTICAL = 1;
		public const uint32 DXVA_SCAN_METHOD_ALTERNATE_HORIZONTAL = 2;
		public const uint32 DXVA_SCAN_METHOD_ARBITRARY = 3;
		public const uint32 DXVA_BITSTREAM_CONCEALMENT_NEED_UNLIKELY = 0;
		public const uint32 DXVA_BITSTREAM_CONCEALMENT_NEED_MILD = 1;
		public const uint32 DXVA_BITSTREAM_CONCEALMENT_NEED_LIKELY = 2;
		public const uint32 DXVA_BITSTREAM_CONCEALMENT_NEED_SEVERE = 3;
		public const uint32 DXVA_BITSTREAM_CONCEALMENT_METHOD_UNSPECIFIED = 0;
		public const uint32 DXVA_BITSTREAM_CONCEALMENT_METHOD_INTRA = 1;
		public const uint32 DXVA_BITSTREAM_CONCEALMENT_METHOD_FORWARD = 2;
		public const uint32 DXVA_BITSTREAM_CONCEALMENT_METHOD_BACKWARD = 3;
		public const uint32 DXVA_USUAL_BLOCK_WIDTH = 8;
		public const uint32 DXVA_USUAL_BLOCK_HEIGHT = 8;
		public const uint32 DXVA_NumMV_OBMC_off_BinPBwith4MV_off = 4;
		public const uint32 DXVA_NumMV_OBMC_off_BinPBwith4MV_on = 5;
		public const uint32 DXVA_NumMV_OBMC_on__BinPB_off = 10;
		public const uint32 DXVA_NumMV_OBMC_on__BinPB_on = 11;
		public const uint32 DXVA_CONFIG_DATA_TYPE_IA44 = 0;
		public const uint32 DXVA_CONFIG_DATA_TYPE_AI44 = 1;
		public const uint32 DXVA_CONFIG_DATA_TYPE_DPXD = 2;
		public const uint32 DXVA_CONFIG_DATA_TYPE_AYUV = 3;
		public const uint32 DXVA_CONFIG_BLEND_TYPE_FRONT_BUFFER = 0;
		public const uint32 DXVA_CONFIG_BLEND_TYPE_BACK_HARDWARE = 1;
		public const uint32 DXVA_ExtColorData_ShiftBase = 8;
		public const Guid DXVA_DeinterlaceBobDevice = .(0x335aa36e, 0x7884, 0x43a4, 0x9c, 0x91, 0x7f, 0x87, 0xfa, 0xf3, 0xe3, 0x7e);
		public const Guid DXVA_DeinterlaceContainerDevice = .(0x0e85cb93, 0x3046, 0x4ff0, 0xae, 0xcc, 0xd5, 0x8c, 0xb5, 0xf0, 0x35, 0xfd);
		public const uint32 MAX_DEINTERLACE_SURFACES = 32;
		public const uint32 DXVA_DeinterlaceBltFnCode = 1;
		public const uint32 DXVA_DeinterlaceBltExFnCode = 2;
		public const uint32 MAX_DEINTERLACE_DEVICE_GUIDS = 32;
		public const uint32 DXVA_DeinterlaceQueryAvailableModesFnCode = 1;
		public const uint32 DXVA_DeinterlaceQueryModeCapsFnCode = 2;
		public const Guid DXVA_ProcAmpControlDevice = .(0x9f200913, 0x2ffd, 0x4056, 0x9f, 0x1e, 0xe1, 0xb5, 0x08, 0xf2, 0x2d, 0xcf);
		public const uint32 DXVA_ProcAmpControlQueryCapsFnCode = 3;
		public const uint32 DXVA_ProcAmpControlQueryRangeFnCode = 4;
		public const uint32 DXVA_ProcAmpControlBltFnCode = 1;
		public const Guid DXVA_COPPDevice = .(0xd2457add, 0x8999, 0x45ed, 0x8a, 0x8a, 0xd1, 0xaa, 0x04, 0x7b, 0xa4, 0xd5);
		public const uint32 DXVA_COPPGetCertificateLengthFnCode = 1;
		public const uint32 DXVA_COPPKeyExchangeFnCode = 2;
		public const uint32 DXVA_COPPSequenceStartFnCode = 3;
		public const uint32 DXVA_COPPCommandFnCode = 4;
		public const Guid DXVA_COPPSetProtectionLevel = .(0x9bb9327c, 0x4eb5, 0x4727, 0x9f, 0x00, 0xb4, 0x2b, 0x09, 0x19, 0xc0, 0xda);
		public const int32 COPP_NoProtectionLevelAvailable = -1;
		public const uint32 COPP_DefaultProtectionLevel = 0;
		public const Guid DXVA_COPPSetSignaling = .(0x09a631a5, 0xd684, 0x4c60, 0x8e, 0x4d, 0xd3, 0xbb, 0x0f, 0x0b, 0xe3, 0xee);
		public const uint32 COPP_ImageAspectRatio_EN300294_Mask = 7;
		public const uint32 DXVA_COPPQueryStatusFnCode = 5;
		public const Guid DXVA_COPPQueryConnectorType = .(0x81d0bfd5, 0x6afe, 0x48c2, 0x99, 0xc0, 0x95, 0xa0, 0x8f, 0x97, 0xc5, 0xda);
		public const Guid DXVA_COPPQueryProtectionType = .(0x38f2a801, 0x9a6c, 0x48bb, 0x91, 0x07, 0xb6, 0x69, 0x6e, 0x6f, 0x17, 0x97);
		public const Guid DXVA_COPPQueryLocalProtectionLevel = .(0xb2075857, 0x3eda, 0x4d5d, 0x88, 0xdb, 0x74, 0x8f, 0x8c, 0x1a, 0x05, 0x49);
		public const Guid DXVA_COPPQueryGlobalProtectionLevel = .(0x1957210a, 0x7766, 0x452a, 0xb9, 0x9a, 0xd2, 0x7a, 0xed, 0x54, 0xf0, 0x3a);
		public const Guid DXVA_COPPQueryDisplayData = .(0xd7bf1ba3, 0xad13, 0x4f8e, 0xaf, 0x98, 0x0d, 0xcb, 0x3c, 0xa2, 0x04, 0xcc);
		public const Guid DXVA_COPPQueryHDCPKeyData = .(0x0db59d74, 0xa992, 0x492e, 0xa0, 0xbd, 0xc2, 0x3f, 0xda, 0x56, 0x4e, 0x00);
		public const Guid DXVA_COPPQueryBusData = .(0xc6f4d673, 0x6174, 0x4184, 0x8e, 0x35, 0xf6, 0xdb, 0x52, 0x00, 0xbc, 0xba);
		public const Guid DXVA_COPPQuerySignaling = .(0x6629a591, 0x3b79, 0x4cf3, 0x92, 0x4a, 0x11, 0xe8, 0xe7, 0x81, 0x16, 0x71);
		public const Guid DXVA2Trace_Control = .(0xa0386e75, 0xf70c, 0x464c, 0xa9, 0xce, 0x33, 0xc4, 0x4e, 0x09, 0x16, 0x23);
		public const Guid DXVA2Trace_DecodeDevCreated = .(0xb4de17a1, 0xc5b2, 0x44fe, 0x86, 0xd5, 0xd9, 0x7a, 0x64, 0x81, 0x14, 0xff);
		public const Guid DXVA2Trace_DecodeDevDestroyed = .(0x853ebdf2, 0x4160, 0x421d, 0x88, 0x93, 0x63, 0xdc, 0xea, 0x4f, 0x18, 0xbb);
		public const Guid DXVA2Trace_DecodeDevBeginFrame = .(0x9fd1acf6, 0x44cb, 0x4637, 0xbc, 0x62, 0x2c, 0x11, 0xa9, 0x60, 0x8f, 0x90);
		public const Guid DXVA2Trace_DecodeDevExecute = .(0x850aeb4c, 0xd19a, 0x4609, 0xb3, 0xb4, 0xbc, 0xbf, 0x0e, 0x22, 0x12, 0x1e);
		public const Guid DXVA2Trace_DecodeDevGetBuffer = .(0x57b128fb, 0x72cb, 0x4137, 0xa5, 0x75, 0xd9, 0x1f, 0xa3, 0x16, 0x08, 0x97);
		public const Guid DXVA2Trace_DecodeDevEndFrame = .(0x9fb3cb33, 0x47dc, 0x4899, 0x98, 0xc8, 0xc0, 0xc6, 0xcd, 0x7c, 0xd3, 0xcb);
		public const Guid DXVA2Trace_VideoProcessDevCreated = .(0x895508c6, 0x540d, 0x4c87, 0x98, 0xf8, 0x8d, 0xcb, 0xf2, 0xda, 0xbb, 0x2a);
		public const Guid DXVA2Trace_VideoProcessDevDestroyed = .(0xf97f30b1, 0xfb49, 0x42c7, 0x8e, 0xe8, 0x88, 0xbd, 0xfa, 0x92, 0xd4, 0xe2);
		public const Guid DXVA2Trace_VideoProcessBlt = .(0x69089cc0, 0x71ab, 0x42d0, 0x95, 0x3a, 0x28, 0x87, 0xbf, 0x05, 0xa8, 0xaf);
		public const uint32 DTV_CardStatus_Inserted = 0;
		public const uint32 DTV_CardStatus_Removed = 1;
		public const uint32 DTV_CardStatus_Error = 2;
		public const uint32 DTV_CardStatus_FirmwareDownload = 3;
		public const uint32 OCUR_PAIRING_PROTOCOL_VERSION = 2;
		public const uint32 PBDA_PAIRING_PROTOCOL_VERSION = 3;
		public const uint32 DTV_MMIMessage_Open = 0;
		public const uint32 DTV_MMIMessage_Close = 1;
		public const uint32 DTV_Entitlement_CanDecrypt = 0;
		public const uint32 DTV_Entitlement_NotEntitled = 1;
		public const uint32 DTV_Entitlement_TechnicalFailure = 2;
		public const uint32 AudioType_Standard = 0;
		public const uint32 AudioType_Music_And_Effects = 1;
		public const uint32 AudioType_Visually_Impaired = 2;
		public const uint32 AudioType_Hearing_Impaired = 3;
		public const uint32 AudioType_Dialogue = 4;
		public const uint32 AudioType_Commentary = 5;
		public const uint32 AudioType_Emergency = 6;
		public const uint32 AudioType_Voiceover = 7;
		public const int32 AudioType_Reserved = -1;
		public const uint32 MAX_COUNTRY_CODE_STRING = 3;
		public const uint32 PARENTAL_CONTROL_TIME_RANGE = 1;
		public const uint32 REQUIRED_PARENTAL_CONTROL_TIME_RANGE = 2;
		public const uint32 PARENTAL_CONTROL_CONTENT_RATING = 256;
		public const uint32 PARENTAL_CONTROL_ATTRIB_VIOLENCE = 512;
		public const uint32 PARENTAL_CONTROL_ATTRIB_LANGUAGE = 513;
		public const uint32 PARENTAL_CONTROL_ATTRIB_SEXUAL = 514;
		public const uint32 PARENTAL_CONTROL_ATTRIB_DIALOGUE = 515;
		public const uint32 PARENTAL_CONTROL_ATTRIB_FANTASY = 516;
		public const uint32 PARENTAL_CONTROL_VALUE_UNDEFINED = 0;
		public const uint32 MPEG2_FILTER_VERSION_1_SIZE = 124;
		public const uint32 MPEG2_FILTER_VERSION_2_SIZE = 133;
		public const Guid SID_MSVidCtl_CurrentAudioEndpoint = .(0xcf9a88f4, 0xabcf, 0x4ed8, 0x9b, 0x74, 0x7d, 0xb3, 0x34, 0x45, 0x45, 0x9e);
		public const uint32 STREAMBUFFER_EC_BASE = 806;
		public const Guid EVENTID_SBE2RecControlStarted = .(0x8966a89e, 0xf83e, 0x4c0e, 0xbc, 0x3b, 0xbf, 0xa7, 0x64, 0x9e, 0x04, 0xcb);
		public const Guid EVENTID_SBE2RecControlStopped = .(0x454b1ec8, 0x0c9b, 0x4caa, 0xb1, 0xa1, 0x1e, 0x7a, 0x26, 0x66, 0xf6, 0xc3);
		public const Guid SBE2_STREAM_DESC_EVENT = .(0x2313a4ed, 0xbf2d, 0x454f, 0xad, 0x8a, 0xd9, 0x5b, 0xa7, 0xf9, 0x1f, 0xee);
		public const Guid SBE2_V1_STREAMS_CREATION_EVENT = .(0x000fcf09, 0x97f5, 0x46ac, 0x97, 0x69, 0x7a, 0x83, 0xb3, 0x53, 0x84, 0xfb);
		public const Guid SBE2_V2_STREAMS_CREATION_EVENT = .(0xa72530a3, 0x0344, 0x4cab, 0xa2, 0xd0, 0xfe, 0x93, 0x7d, 0xbd, 0xca, 0xb3);
		public const uint32 SBE2_STREAM_DESC_VERSION = 1;
		public const Guid SID_DRMSecureServiceChannel = .(0xc4c4c4c4, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid CLSID_ETFilterEncProperties = .(0xc4c4c481, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid CLSID_ETFilterTagProperties = .(0xc4c4c491, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid CLSID_PTFilter = .(0x9cd31617, 0xb303, 0x4f96, 0x83, 0x30, 0x2e, 0xb1, 0x73, 0xea, 0x4d, 0xc6);
		public const Guid CLSID_DTFilterEncProperties = .(0xc4c4c482, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid CLSID_DTFilterTagProperties = .(0xc4c4c492, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid CLSID_XDSCodecProperties = .(0xc4c4c483, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid CLSID_XDSCodecTagProperties = .(0xc4c4c493, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid CLSID_CPCAFiltersCategory = .(0xc4c4c4fc, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_XDSCodecNewXDSRating = .(0xc4c4c4e0, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_XDSCodecDuplicateXDSRating = .(0xc4c4c4df, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_XDSCodecNewXDSPacket = .(0xc4c4c4e1, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_DTFilterRatingChange = .(0xc4c4c4e2, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_DTFilterRatingsBlock = .(0xc4c4c4e3, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_DTFilterRatingsUnblock = .(0xc4c4c4e4, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_DTFilterXDSPacket = .(0xc4c4c4e5, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_ETFilterEncryptionOn = .(0xc4c4c4e6, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_ETFilterEncryptionOff = .(0xc4c4c4e7, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_DTFilterCOPPUnblock = .(0xc4c4c4e8, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_EncDecFilterError = .(0xc4c4c4e9, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_DTFilterCOPPBlock = .(0xc4c4c4ea, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_ETFilterCopyOnce = .(0xc4c4c4eb, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_ETFilterCopyNever = .(0xc4c4c4f0, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_DTFilterDataFormatOK = .(0xc4c4c4ec, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_DTFilterDataFormatFailure = .(0xc4c4c4ed, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_ETDTFilterLicenseOK = .(0xc4c4c4ee, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid EVENTID_ETDTFilterLicenseFailure = .(0xc4c4c4ef, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid MEDIASUBTYPE_ETDTFilter_Tagged = .(0xc4c4c4d0, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid FORMATTYPE_ETDTFilter_Tagged = .(0xc4c4c4d1, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid MEDIASUBTYPE_CPFilters_Processed = .(0x46adbd28, 0x6fd0, 0x4796, 0x93, 0xb2, 0x15, 0x5c, 0x51, 0xdc, 0x04, 0x8d);
		public const Guid FORMATTYPE_CPFilters_Processed = .(0x6739b36f, 0x1d5f, 0x4ac2, 0x81, 0x92, 0x28, 0xbb, 0x0e, 0x73, 0xd1, 0x6a);
		public const Guid EVENTID_EncDecFilterEvent = .(0x4a1b465b, 0x0fb9, 0x4159, 0xaf, 0xbd, 0xe3, 0x30, 0x06, 0xa0, 0xf9, 0xf4);
		public const Guid EVENTID_FormatNotSupportedEvent = .(0x24b2280a, 0xb2aa, 0x4777, 0xbf, 0x65, 0x63, 0xf3, 0x5e, 0x7b, 0x02, 0x4a);
		public const Guid EVENTID_DemultiplexerFilterDiscontinuity = .(0x16155770, 0xaed5, 0x475c, 0xbb, 0x98, 0x95, 0xa3, 0x30, 0x70, 0xdf, 0x0c);
		public const Guid DSATTRIB_WMDRMProtectionInfo = .(0x40749583, 0x6b9d, 0x4eec, 0xb4, 0x3c, 0x67, 0xa1, 0x80, 0x1e, 0x1a, 0x9b);
		public const Guid DSATTRIB_BadSampleInfo = .(0xe4846dda, 0x5838, 0x42b4, 0xb8, 0x97, 0x6f, 0x7e, 0x5f, 0xaa, 0x2f, 0x2f);
		public const uint32 MPEG_PAT_PID = 0;
		public const uint32 MPEG_PAT_TID = 0;
		public const uint32 MPEG_CAT_PID = 1;
		public const uint32 MPEG_CAT_TID = 1;
		public const uint32 MPEG_PMT_TID = 2;
		public const uint32 MPEG_TSDT_PID = 2;
		public const uint32 MPEG_TSDT_TID = 3;
		public const uint32 ATSC_MGT_PID = 8187;
		public const uint32 ATSC_MGT_TID = 199;
		public const uint32 ATSC_VCT_PID = 8187;
		public const uint32 ATSC_VCT_TERR_TID = 200;
		public const uint32 ATSC_VCT_CABL_TID = 201;
		public const uint32 ATSC_EIT_TID = 203;
		public const uint32 ATSC_ETT_TID = 204;
		public const uint32 ATSC_RRT_TID = 202;
		public const uint32 ATSC_RRT_PID = 8187;
		public const uint32 ATSC_STT_PID = 8187;
		public const uint32 ATSC_STT_TID = 205;
		public const uint32 ATSC_PIT_TID = 208;
		public const uint32 DVB_NIT_PID = 16;
		public const uint32 DVB_NIT_ACTUAL_TID = 64;
		public const uint32 DVB_NIT_OTHER_TID = 65;
		public const uint32 DVB_SDT_PID = 17;
		public const uint32 DVB_SDT_ACTUAL_TID = 66;
		public const uint32 DVB_SDT_OTHER_TID = 70;
		public const uint32 DVB_BAT_PID = 17;
		public const uint32 DVB_BAT_TID = 74;
		public const uint32 DVB_EIT_PID = 18;
		public const uint32 DVB_EIT_ACTUAL_TID = 78;
		public const uint32 DVB_EIT_OTHER_TID = 79;
		public const uint32 DVB_RST_PID = 19;
		public const uint32 DVB_RST_TID = 113;
		public const uint32 DVB_TDT_PID = 20;
		public const uint32 DVB_TDT_TID = 112;
		public const uint32 DVB_ST_PID_16 = 16;
		public const uint32 DVB_ST_PID_17 = 17;
		public const uint32 DVB_ST_PID_18 = 18;
		public const uint32 DVB_ST_PID_19 = 19;
		public const uint32 DVB_ST_PID_20 = 20;
		public const uint32 DVB_ST_TID = 114;
		public const uint32 ISDB_ST_TID = 114;
		public const uint32 DVB_TOT_PID = 20;
		public const uint32 DVB_TOT_TID = 115;
		public const uint32 DVB_DIT_PID = 30;
		public const uint32 DVB_DIT_TID = 126;
		public const uint32 DVB_SIT_PID = 31;
		public const uint32 DVB_SIT_TID = 127;
		public const uint32 ISDB_EMM_TID = 133;
		public const uint32 ISDB_BIT_PID = 36;
		public const uint32 ISDB_BIT_TID = 196;
		public const uint32 ISDB_NBIT_PID = 37;
		public const uint32 ISDB_NBIT_MSG_TID = 197;
		public const uint32 ISDB_NBIT_REF_TID = 198;
		public const uint32 ISDB_LDT_PID = 37;
		public const uint32 ISDB_LDT_TID = 199;
		public const uint32 ISDB_SDTT_PID = 35;
		public const uint32 ISDB_SDTT_ALT_PID = 40;
		public const uint32 ISDB_SDTT_TID = 195;
		public const uint32 ISDB_CDT_PID = 41;
		public const uint32 ISDB_CDT_TID = 200;
		public const uint32 SCTE_EAS_TID = 216;
		public const uint32 SCTE_EAS_IB_PID = 8187;
		public const uint32 SCTE_EAS_OOB_PID = 8188;
		public const Guid CLSID_Mpeg2TableFilter = .(0x752845f1, 0x758f, 0x4c83, 0xa0, 0x43, 0x42, 0x70, 0xc5, 0x93, 0x30, 0x8e);
		public const uint32 ATSC_ETM_LOCATION_NOT_PRESENT = 0;
		public const uint32 ATSC_ETM_LOCATION_IN_PTC_FOR_PSIP = 1;
		public const uint32 ATSC_ETM_LOCATION_IN_PTC_FOR_EVENT = 2;
		public const uint32 ATSC_ETM_LOCATION_RESERVED = 3;
		public const uint32 SAMPLE_SEQ_SEQUENCE_HEADER = 1;
		public const uint32 SAMPLE_SEQ_GOP_HEADER = 2;
		public const uint32 SAMPLE_SEQ_PICTURE_HEADER = 3;
		public const uint32 SAMPLE_SEQ_SEQUENCE_START = 1;
		public const uint32 SAMPLE_SEQ_SEEK_POINT = 2;
		public const uint32 SAMPLE_SEQ_FRAME_START = 3;
		public const uint32 SAMPLE_SEQ_CONTENT_UNKNOWN = 0;
		public const uint32 SAMPLE_SEQ_CONTENT_I_FRAME = 1;
		public const uint32 SAMPLE_SEQ_CONTENT_P_FRAME = 2;
		public const uint32 SAMPLE_SEQ_CONTENT_B_FRAME = 3;
		public const uint32 SAMPLE_SEQ_CONTENT_STANDALONE_FRAME = 1;
		public const uint32 SAMPLE_SEQ_CONTENT_REF_FRAME = 2;
		public const uint32 SAMPLE_SEQ_CONTENT_NONREF_FRAME = 3;
		public const uint32 COMPONENT_TAG_CAPTION_MIN = 48;
		public const uint32 COMPONENT_TAG_CAPTION_MAX = 55;
		public const uint32 COMPONENT_TAG_SUPERIMPOSE_MIN = 56;
		public const uint32 COMPONENT_TAG_SUPERIMPOSE_MAX = 63;
		public const uint32 DVBS_SCAN_TABLE_MAX_SIZE = 400;
		public const String g_wszExcludeScriptStreamDeliverySynchronization = "ExcludeScriptStreamDeliverySynchronization";
		public const uint32 MPEG2_BASE = 512;
		public const HRESULT MPEG2_S_MORE_DATA_AVAILABLE = 262656;
		public const HRESULT MPEG2_S_NO_MORE_DATA_AVAILABLE = 262657;
		public const HRESULT MPEG2_S_SG_INFO_FOUND = 262658;
		public const HRESULT MPEG2_S_SG_INFO_NOT_FOUND = 262659;
		public const HRESULT MPEG2_S_MPE_INFO_FOUND = 262660;
		public const HRESULT MPEG2_S_MPE_INFO_NOT_FOUND = 262661;
		public const HRESULT MPEG2_S_NEW_MODULE_VERSION = 262662;
		public const HRESULT MPEG2_E_UNINITIALIZED = -2147220992;
		public const HRESULT MPEG2_E_ALREADY_INITIALIZED = -2147220991;
		public const HRESULT MPEG2_E_OUT_OF_BOUNDS = -2147220990;
		public const HRESULT MPEG2_E_MALFORMED_TABLE = -2147220989;
		public const HRESULT MPEG2_E_UNDEFINED = -2147220988;
		public const HRESULT MPEG2_E_NOT_PRESENT = -2147220987;
		public const HRESULT MPEG2_E_SECTION_NOT_FOUND = -2147220986;
		public const HRESULT MPEG2_E_TX_STREAM_UNAVAILABLE = -2147220985;
		public const HRESULT MPEG2_E_SERVICE_ID_NOT_FOUND = -2147220984;
		public const HRESULT MPEG2_E_SERVICE_PMT_NOT_FOUND = -2147220983;
		public const HRESULT MPEG2_E_DSI_NOT_FOUND = -2147220982;
		public const HRESULT MPEG2_E_SERVER_UNAVAILABLE = -2147220981;
		public const HRESULT MPEG2_E_INVALID_CAROUSEL_ID = -2147220980;
		public const HRESULT MPEG2_E_MALFORMED_DSMCC_MESSAGE = -2147220979;
		public const HRESULT MPEG2_E_INVALID_SG_OBJECT_KIND = -2147220978;
		public const HRESULT MPEG2_E_OBJECT_NOT_FOUND = -2147220977;
		public const HRESULT MPEG2_E_OBJECT_KIND_NOT_A_DIRECTORY = -2147220976;
		public const HRESULT MPEG2_E_OBJECT_KIND_NOT_A_FILE = -2147220975;
		public const HRESULT MPEG2_E_FILE_OFFSET_TOO_BIG = -2147220974;
		public const HRESULT MPEG2_E_STREAM_STOPPED = -2147220973;
		public const HRESULT MPEG2_E_REGISTRY_ACCESS_FAILED = -2147220972;
		public const HRESULT MPEG2_E_INVALID_UDP_PORT = -2147220971;
		public const HRESULT MPEG2_E_DATA_SOURCE_FAILED = -2147220970;
		public const HRESULT MPEG2_E_DII_NOT_FOUND = -2147220969;
		public const HRESULT MPEG2_E_DSHOW_PIN_NOT_FOUND = -2147220968;
		public const HRESULT MPEG2_E_BUFFER_TOO_SMALL = -2147220967;
		public const HRESULT MPEG2_E_MISSING_SECTIONS = -2147220966;
		public const HRESULT MPEG2_E_TOO_MANY_SECTIONS = -2147220965;
		public const HRESULT MPEG2_E_NEXT_TABLE_OPS_NOT_AVAILABLE = -2147220964;
		public const HRESULT MPEG2_E_INCORRECT_DESCRIPTOR_TAG = -2147220963;
		public const HRESULT MSDRI_S_MMI_PENDING = 2;
		public const HRESULT MSDRI_S_PENDING = 1;
		public const HRESULT BDA_E_FAILURE = -1073479679;
		public const HRESULT BDA_E_NOT_IMPLEMENTED = -1073479678;
		public const HRESULT BDA_E_NO_SUCH_COMMAND = -1073479677;
		public const HRESULT BDA_E_OUT_OF_BOUNDS = -1073479676;
		public const HRESULT BDA_E_INVALID_SCHEMA = -1073479675;
		public const HRESULT BDA_E_INVALID_HANDLE = -1073479674;
		public const HRESULT BDA_E_INVALID_TYPE = -1073479673;
		public const HRESULT BDA_E_READ_ONLY = -1073479672;
		public const HRESULT BDA_E_ACCESS_DENIED = -1073479671;
		public const HRESULT BDA_E_NOT_FOUND = -1073479670;
		public const HRESULT BDA_E_BUFFER_TOO_SMALL = -1073479669;
		public const HRESULT BDA_E_OUT_OF_RESOURCES = -1073479668;
		public const HRESULT BDA_E_OUT_OF_MEMORY = -1073479667;
		public const HRESULT BDA_E_DISABLED = -1073479666;
		public const HRESULT BDA_E_NO_HANDLER = -1073479665;
		public const HRESULT BDA_E_INVALID_LANGUAGE = -1073479664;
		public const HRESULT BDA_E_TIMEOUT_ELAPSED = -1073479663;
		public const HRESULT BDA_E_NO_MORE_EVENTS = -1073475583;
		public const HRESULT BDA_E_NO_MORE_DATA = -1073475582;
		public const HRESULT BDA_E_TUNER_INITIALIZING = -1073467391;
		public const HRESULT BDA_E_TUNER_REQUIRED = -1073467390;
		public const HRESULT BDA_E_TUNER_CONFLICT = -1073467389;
		public const HRESULT BDA_E_INVALID_TUNE_REQUEST = -1073467388;
		public const HRESULT BDA_E_INVALID_ENTITLEMENT_TOKEN = -1073463295;
		public const HRESULT BDA_E_INVALID_CAPTURE_TOKEN = -1073463294;
		public const HRESULT BDA_E_WOULD_DISRUPT_STREAMING = -1073463293;
		public const HRESULT BDA_E_INVALID_PURCHASE_TOKEN = -1073463292;
		public const HRESULT BDA_E_IPNETWORK_ERROR = -1073459199;
		public const HRESULT BDA_E_IPNETWORK_ADDRESS_NOT_FOUND = -1073459198;
		public const HRESULT BDA_E_IPNETWORK_TIMEOUT = -1073459197;
		public const HRESULT BDA_E_IPNETWORK_UNAVAILABLE = -1073459196;
		public const HRESULT BDA_E_TUNE_FAILED_SDV01 = -1073455103;
		public const HRESULT BDA_E_TUNE_FAILED_SDV02 = -1073455102;
		public const HRESULT BDA_E_TUNE_FAILED_SDV03 = -1073455101;
		public const HRESULT BDA_E_TUNE_FAILED_SDV04 = -1073455100;
		public const HRESULT BDA_E_TUNE_FAILED_SDV05 = -1073455099;
		public const HRESULT BDA_E_TUNE_FAILED_SDV06 = -1073455098;
		public const HRESULT BDA_E_TUNE_FAILED_SDV07 = -1073455097;
		public const HRESULT BDA_E_TUNE_FAILED_SDV08 = -1073455096;
		public const HRESULT BDA_E_TUNE_FAILED_SDVFF = -1073454849;
		public const HRESULT BDA_E_WMDRM_INVALID_SIGNATURE = -1073418239;
		public const HRESULT BDA_E_WMDRM_INVALID_CERTIFICATE = -1073418238;
		public const HRESULT BDA_E_WMDRM_INVALID_VERSION = -1073418236;
		public const HRESULT BDA_E_WMDRM_INVALID_DATE = -1073418235;
		public const HRESULT BDA_E_WMDRM_INVALID_PROXIMITY = -1073418234;
		public const HRESULT BDA_E_WMDRM_KEY_ID_NOT_FOUND = -1073418232;
		public const Guid SPECIFYPAGES_STATISTICS = .(0x4c437b92, 0x6e9e, 0x11d1, 0xa7, 0x04, 0x00, 0x60, 0x97, 0xc4, 0xe4, 0x76);
		public const String g_wszStreamBufferRecordingDuration = "Duration";
		public const String g_wszStreamBufferRecordingBitrate = "Bitrate";
		public const String g_wszStreamBufferRecordingSeekable = "Seekable";
		public const String g_wszStreamBufferRecordingStridable = "Stridable";
		public const String g_wszStreamBufferRecordingBroadcast = "Broadcast";
		public const String g_wszStreamBufferRecordingProtected = "Is_Protected";
		public const String g_wszStreamBufferRecordingTrusted = "Is_Trusted";
		public const String g_wszStreamBufferRecordingSignature_Name = "Signature_Name";
		public const String g_wszStreamBufferRecordingHasAudio = "HasAudio";
		public const String g_wszStreamBufferRecordingHasImage = "HasImage";
		public const String g_wszStreamBufferRecordingHasScript = "HasScript";
		public const String g_wszStreamBufferRecordingHasVideo = "HasVideo";
		public const String g_wszStreamBufferRecordingCurrentBitrate = "CurrentBitrate";
		public const String g_wszStreamBufferRecordingOptimalBitrate = "OptimalBitrate";
		public const String g_wszStreamBufferRecordingHasAttachedImages = "HasAttachedImages";
		public const String g_wszStreamBufferRecordingSkipBackward = "Can_Skip_Backward";
		public const String g_wszStreamBufferRecordingSkipForward = "Can_Skip_Forward";
		public const String g_wszStreamBufferRecordingNumberOfFrames = "NumberOfFrames";
		public const String g_wszStreamBufferRecordingFileSize = "FileSize";
		public const String g_wszStreamBufferRecordingHasArbitraryDataStream = "HasArbitraryDataStream";
		public const String g_wszStreamBufferRecordingHasFileTransferStream = "HasFileTransferStream";
		public const String g_wszStreamBufferRecordingTitle = "Title";
		public const String g_wszStreamBufferRecordingAuthor = "Author";
		public const String g_wszStreamBufferRecordingDescription = "Description";
		public const String g_wszStreamBufferRecordingRating = "Rating";
		public const String g_wszStreamBufferRecordingCopyright = "Copyright";
		public const String g_wszStreamBufferRecordingUse_DRM = "Use_DRM";
		public const String g_wszStreamBufferRecordingDRM_Flags = "DRM_Flags";
		public const String g_wszStreamBufferRecordingDRM_Level = "DRM_Level";
		public const String g_wszStreamBufferRecordingAlbumTitle = "WM/AlbumTitle";
		public const String g_wszStreamBufferRecordingTrack = "WM/Track";
		public const String g_wszStreamBufferRecordingPromotionURL = "WM/PromotionURL";
		public const String g_wszStreamBufferRecordingAlbumCoverURL = "WM/AlbumCoverURL";
		public const String g_wszStreamBufferRecordingGenre = "WM/Genre";
		public const String g_wszStreamBufferRecordingYear = "WM/Year";
		public const String g_wszStreamBufferRecordingGenreID = "WM/GenreID";
		public const String g_wszStreamBufferRecordingMCDI = "WM/MCDI";
		public const String g_wszStreamBufferRecordingComposer = "WM/Composer";
		public const String g_wszStreamBufferRecordingLyrics = "WM/Lyrics";
		public const String g_wszStreamBufferRecordingTrackNumber = "WM/TrackNumber";
		public const String g_wszStreamBufferRecordingToolName = "WM/ToolName";
		public const String g_wszStreamBufferRecordingToolVersion = "WM/ToolVersion";
		public const String g_wszStreamBufferRecordingIsVBR = "IsVBR";
		public const String g_wszStreamBufferRecordingAlbumArtist = "WM/AlbumArtist";
		public const String g_wszStreamBufferRecordingBannerImageType = "BannerImageType";
		public const String g_wszStreamBufferRecordingBannerImageData = "BannerImageData";
		public const String g_wszStreamBufferRecordingBannerImageURL = "BannerImageURL";
		public const String g_wszStreamBufferRecordingCopyrightURL = "CopyrightURL";
		public const String g_wszStreamBufferRecordingAspectRatioX = "AspectRatioX";
		public const String g_wszStreamBufferRecordingAspectRatioY = "AspectRatioY";
		public const String g_wszStreamBufferRecordingNSCName = "NSC_Name";
		public const String g_wszStreamBufferRecordingNSCAddress = "NSC_Address";
		public const String g_wszStreamBufferRecordingNSCPhone = "NSC_Phone";
		public const String g_wszStreamBufferRecordingNSCEmail = "NSC_Email";
		public const String g_wszStreamBufferRecordingNSCDescription = "NSC_Description";
		public const int32 STREAMBUFFER_EC_TIMEHOLE = 806;
		public const int32 STREAMBUFFER_EC_STALE_DATA_READ = 807;
		public const int32 STREAMBUFFER_EC_STALE_FILE_DELETED = 808;
		public const int32 STREAMBUFFER_EC_CONTENT_BECOMING_STALE = 809;
		public const int32 STREAMBUFFER_EC_WRITE_FAILURE = 810;
		public const int32 STREAMBUFFER_EC_WRITE_FAILURE_CLEAR = 811;
		public const int32 STREAMBUFFER_EC_READ_FAILURE = 812;
		public const int32 STREAMBUFFER_EC_RATE_CHANGED = 813;
		public const int32 STREAMBUFFER_EC_PRIMARY_AUDIO = 814;
		public const int32 STREAMBUFFER_EC_RATE_CHANGING_FOR_SETPOSITIONS = 815;
		public const int32 STREAMBUFFER_EC_SETPOSITIONS_EVENTS_DONE = 816;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum OA_BOOL : int32
		{
			OATRUE = -1,
			OAFALSE = 0,
		}
		[AllowDuplicates]
		public enum MPEG2VIDEOINFO_FLAGS : uint32
		{
			AMMPEG2_DoPanScan = 1,
			AMMPEG2_DVDLine21Field1 = 2,
			AMMPEG2_DVDLine21Field2 = 4,
			AMMPEG2_SourceIsLetterboxed = 8,
			AMMPEG2_FilmCameraMode = 16,
			AMMPEG2_LetterboxAnalogOut = 32,
			AMMPEG2_DSS_UserData = 64,
			AMMPEG2_DVB_UserData = 128,
			AMMPEG2_27MhzTimebase = 256,
			AMMPEG2_WidescreenAnalogOut = 512,
		}
		[AllowDuplicates]
		public enum MPEGLAYER3WAVEFORMAT_FLAGS : uint32
		{
			MPEGLAYER3_FLAG_PADDING_ISO = 0,
			MPEGLAYER3_FLAG_PADDING_ON = 1,
			MPEGLAYER3_FLAG_PADDING_OFF = 2,
		}
		[AllowDuplicates]
		public enum AMVP_SELECT_FORMAT_BY : int32
		{
			AMVP_DO_NOT_CARE = 0,
			AMVP_BEST_BANDWIDTH = 1,
			AMVP_INPUT_SAME_AS_OUTPUT = 2,
		}
		[AllowDuplicates]
		public enum AMVP_MODE : int32
		{
			AMVP_MODE_WEAVE = 0,
			AMVP_MODE_BOBINTERLEAVED = 1,
			AMVP_MODE_BOBNONINTERLEAVED = 2,
			AMVP_MODE_SKIPEVEN = 3,
			AMVP_MODE_SKIPODD = 4,
		}
		[AllowDuplicates]
		public enum PIN_DIRECTION : int32
		{
			PINDIR_INPUT = 0,
			PINDIR_OUTPUT = 1,
		}
		[AllowDuplicates]
		public enum FILTER_STATE : int32
		{
			State_Stopped = 0,
			State_Paused = 1,
			State_Running = 2,
		}
		[AllowDuplicates]
		public enum AM_SAMPLE_PROPERTY_FLAGS : int32
		{
			AM_SAMPLE_SPLICEPOINT = 1,
			AM_SAMPLE_PREROLL = 2,
			AM_SAMPLE_DATADISCONTINUITY = 4,
			AM_SAMPLE_TYPECHANGED = 8,
			AM_SAMPLE_TIMEVALID = 16,
			AM_SAMPLE_TIMEDISCONTINUITY = 64,
			AM_SAMPLE_FLUSH_ON_PAUSE = 128,
			AM_SAMPLE_STOPVALID = 256,
			AM_SAMPLE_ENDOFSTREAM = 512,
			AM_STREAM_MEDIA = 0,
			AM_STREAM_CONTROL = 1,
		}
		[AllowDuplicates]
		public enum AM_SEEKING_SeekingFlags : int32
		{
			AM_SEEKING_NoPositioning = 0,
			AM_SEEKING_AbsolutePositioning = 1,
			AM_SEEKING_RelativePositioning = 2,
			AM_SEEKING_IncrementalPositioning = 3,
			AM_SEEKING_PositioningBitsMask = 3,
			AM_SEEKING_SeekToKeyFrame = 4,
			AM_SEEKING_ReturnTime = 8,
			AM_SEEKING_Segment = 16,
			AM_SEEKING_NoFlush = 32,
		}
		[AllowDuplicates]
		public enum AM_SEEKING_SEEKING_CAPABILITIES : int32
		{
			AM_SEEKING_CanSeekAbsolute = 1,
			AM_SEEKING_CanSeekForwards = 2,
			AM_SEEKING_CanSeekBackwards = 4,
			AM_SEEKING_CanGetCurrentPos = 8,
			AM_SEEKING_CanGetStopPos = 16,
			AM_SEEKING_CanGetDuration = 32,
			AM_SEEKING_CanPlayBackwards = 64,
			AM_SEEKING_CanDoSegments = 128,
			AM_SEEKING_Source = 256,
		}
		[AllowDuplicates]
		public enum AM_MEDIAEVENT_FLAGS : int32
		{
			AM_MEDIAEVENT_NONOTIFY = 1,
		}
		[AllowDuplicates]
		public enum IFILTERMAPPER_MERIT : int32
		{
			MERIT_PREFERRED = 8388608,
			MERIT_NORMAL = 6291456,
			MERIT_UNLIKELY = 4194304,
			MERIT_DO_NOT_USE = 2097152,
			MERIT_SW_COMPRESSOR = 1048576,
			MERIT_HW_COMPRESSOR = 1048656,
		}
		[AllowDuplicates]
		public enum REG_PINFLAG : uint32
		{
			REG_PINFLAG_B_ZERO = 1,
			REG_PINFLAG_B_RENDERER = 2,
			REG_PINFLAG_B_MANY = 4,
			REG_PINFLAG_B_OUTPUT = 8,
		}
		[AllowDuplicates]
		public enum QualityMessageType : int32
		{
			Famine = 0,
			Flood = 1,
		}
		[AllowDuplicates]
		public enum COLORKEY_TYPE : int32
		{
			CK_NOCOLORKEY = 0,
			CK_INDEX = 1,
			CK_RGB = 2,
		}
		[AllowDuplicates]
		public enum ADVISE_TYPE : uint32
		{
			ADVISE_NONE = 0,
			ADVISE_CLIPPING = 1,
			ADVISE_PALETTE = 2,
			ADVISE_COLORKEY = 4,
			ADVISE_POSITION = 8,
			ADVISE_DISPLAY_CHANGE = 16,
		}
		[AllowDuplicates]
		public enum AM_FILESINK_FLAGS : int32
		{
			AM_FILE_OVERWRITE = 1,
		}
		[AllowDuplicates]
		public enum _AM_RENSDEREXFLAGS : int32
		{
			AM_RENDEREX_RENDERTOEXISTINGRENDERERS = 1,
		}
		[AllowDuplicates]
		public enum AM_STREAM_INFO_FLAGS : int32
		{
			AM_STREAM_INFO_START_DEFINED = 1,
			AM_STREAM_INFO_STOP_DEFINED = 2,
			AM_STREAM_INFO_DISCARDING = 4,
			AM_STREAM_INFO_STOP_SEND_EXTRA = 16,
		}
		[AllowDuplicates]
		public enum InterleavingMode : int32
		{
			INTERLEAVE_NONE = 0,
			INTERLEAVE_CAPTURE = 1,
			INTERLEAVE_FULL = 2,
			INTERLEAVE_NONE_BUFFERED = 3,
		}
		[AllowDuplicates]
		public enum CompressionCaps : int32
		{
			CompressionCaps_CanQuality = 1,
			CompressionCaps_CanCrunch = 2,
			CompressionCaps_CanKeyFrame = 4,
			CompressionCaps_CanBFrame = 8,
			CompressionCaps_CanWindow = 16,
		}
		[AllowDuplicates]
		public enum VfwCaptureDialogs : int32
		{
			VfwCaptureDialog_Source = 1,
			VfwCaptureDialog_Format = 2,
			VfwCaptureDialog_Display = 4,
		}
		[AllowDuplicates]
		public enum VfwCompressDialogs : int32
		{
			VfwCompressDialog_Config = 1,
			VfwCompressDialog_About = 2,
			VfwCompressDialog_QueryConfig = 4,
			VfwCompressDialog_QueryAbout = 8,
		}
		[AllowDuplicates]
		public enum AnalogVideoStandard : int32
		{
			AnalogVideo_None = 0,
			AnalogVideo_NTSC_M = 1,
			AnalogVideo_NTSC_M_J = 2,
			AnalogVideo_NTSC_433 = 4,
			AnalogVideo_PAL_B = 16,
			AnalogVideo_PAL_D = 32,
			AnalogVideo_PAL_G = 64,
			AnalogVideo_PAL_H = 128,
			AnalogVideo_PAL_I = 256,
			AnalogVideo_PAL_M = 512,
			AnalogVideo_PAL_N = 1024,
			AnalogVideo_PAL_60 = 2048,
			AnalogVideo_SECAM_B = 4096,
			AnalogVideo_SECAM_D = 8192,
			AnalogVideo_SECAM_G = 16384,
			AnalogVideo_SECAM_H = 32768,
			AnalogVideo_SECAM_K = 65536,
			AnalogVideo_SECAM_K1 = 131072,
			AnalogVideo_SECAM_L = 262144,
			AnalogVideo_SECAM_L1 = 524288,
			AnalogVideo_PAL_N_COMBO = 1048576,
			AnalogVideoMask_MCE_NTSC = 1052167,
			AnalogVideoMask_MCE_PAL = 496,
			AnalogVideoMask_MCE_SECAM = 1044480,
		}
		[AllowDuplicates]
		public enum TunerInputType : int32
		{
			TunerInputCable = 0,
			TunerInputAntenna = 1,
		}
		[AllowDuplicates]
		public enum VideoCopyProtectionType : int32
		{
			VideoCopyProtectionMacrovisionBasic = 0,
			VideoCopyProtectionMacrovisionCBI = 1,
		}
		[AllowDuplicates]
		public enum PhysicalConnectorType : int32
		{
			PhysConn_Video_Tuner = 1,
			PhysConn_Video_Composite = 2,
			PhysConn_Video_SVideo = 3,
			PhysConn_Video_RGB = 4,
			PhysConn_Video_YRYBY = 5,
			PhysConn_Video_SerialDigital = 6,
			PhysConn_Video_ParallelDigital = 7,
			PhysConn_Video_SCSI = 8,
			PhysConn_Video_AUX = 9,
			PhysConn_Video_1394 = 10,
			PhysConn_Video_USB = 11,
			PhysConn_Video_VideoDecoder = 12,
			PhysConn_Video_VideoEncoder = 13,
			PhysConn_Video_SCART = 14,
			PhysConn_Video_Black = 15,
			PhysConn_Audio_Tuner = 4096,
			PhysConn_Audio_Line = 4097,
			PhysConn_Audio_Mic = 4098,
			PhysConn_Audio_AESDigital = 4099,
			PhysConn_Audio_SPDIFDigital = 4100,
			PhysConn_Audio_SCSI = 4101,
			PhysConn_Audio_AUX = 4102,
			PhysConn_Audio_1394 = 4103,
			PhysConn_Audio_USB = 4104,
			PhysConn_Audio_AudioDecoder = 4105,
		}
		[AllowDuplicates]
		public enum VideoProcAmpProperty : int32
		{
			VideoProcAmp_Brightness = 0,
			VideoProcAmp_Contrast = 1,
			VideoProcAmp_Hue = 2,
			VideoProcAmp_Saturation = 3,
			VideoProcAmp_Sharpness = 4,
			VideoProcAmp_Gamma = 5,
			VideoProcAmp_ColorEnable = 6,
			VideoProcAmp_WhiteBalance = 7,
			VideoProcAmp_BacklightCompensation = 8,
			VideoProcAmp_Gain = 9,
		}
		[AllowDuplicates]
		public enum VideoProcAmpFlags : int32
		{
			VideoProcAmp_Flags_Auto = 1,
			VideoProcAmp_Flags_Manual = 2,
		}
		[AllowDuplicates]
		public enum CameraControlProperty : int32
		{
			CameraControl_Pan = 0,
			CameraControl_Tilt = 1,
			CameraControl_Roll = 2,
			CameraControl_Zoom = 3,
			CameraControl_Exposure = 4,
			CameraControl_Iris = 5,
			CameraControl_Focus = 6,
		}
		[AllowDuplicates]
		public enum CameraControlFlags : int32
		{
			CameraControl_Flags_Auto = 1,
			CameraControl_Flags_Manual = 2,
		}
		[AllowDuplicates]
		public enum VideoControlFlags : int32
		{
			VideoControlFlag_FlipHorizontal = 1,
			VideoControlFlag_FlipVertical = 2,
			VideoControlFlag_ExternalTriggerEnable = 4,
			VideoControlFlag_Trigger = 8,
		}
		[AllowDuplicates]
		public enum AMTunerSubChannel : int32
		{
			AMTUNER_SUBCHAN_NO_TUNE = -2,
			AMTUNER_SUBCHAN_DEFAULT = -1,
		}
		[AllowDuplicates]
		public enum AMTunerSignalStrength : int32
		{
			AMTUNER_HASNOSIGNALSTRENGTH = -1,
			AMTUNER_NOSIGNAL = 0,
			AMTUNER_SIGNALPRESENT = 1,
		}
		[AllowDuplicates]
		public enum AMTunerModeType : int32
		{
			AMTUNER_MODE_DEFAULT = 0,
			AMTUNER_MODE_TV = 1,
			AMTUNER_MODE_FM_RADIO = 2,
			AMTUNER_MODE_AM_RADIO = 4,
			AMTUNER_MODE_DSS = 8,
		}
		[AllowDuplicates]
		public enum AMTunerEventType : int32
		{
			AMTUNER_EVENT_CHANGED = 1,
		}
		[AllowDuplicates]
		public enum TVAudioMode : int32
		{
			AMTVAUDIO_MODE_MONO = 1,
			AMTVAUDIO_MODE_STEREO = 2,
			AMTVAUDIO_MODE_LANG_A = 16,
			AMTVAUDIO_MODE_LANG_B = 32,
			AMTVAUDIO_MODE_LANG_C = 64,
			AMTVAUDIO_PRESET_STEREO = 512,
			AMTVAUDIO_PRESET_LANG_A = 4096,
			AMTVAUDIO_PRESET_LANG_B = 8192,
			AMTVAUDIO_PRESET_LANG_C = 16384,
		}
		[AllowDuplicates]
		public enum AMTVAudioEventType : int32
		{
			AMTVAUDIO_EVENT_CHANGED = 1,
		}
		[AllowDuplicates]
		public enum AMPROPERTY_PIN : int32
		{
			AMPROPERTY_PIN_CATEGORY = 0,
			AMPROPERTY_PIN_MEDIUM = 1,
		}
		[AllowDuplicates]
		public enum _AMSTREAMSELECTINFOFLAGS : int32
		{
			AMSTREAMSELECTINFO_ENABLED = 1,
			AMSTREAMSELECTINFO_EXCLUSIVE = 2,
		}
		[AllowDuplicates]
		public enum _AMSTREAMSELECTENABLEFLAGS : int32
		{
			AMSTREAMSELECTENABLE_ENABLE = 1,
			AMSTREAMSELECTENABLE_ENABLEALL = 2,
		}
		[AllowDuplicates]
		public enum _AMRESCTL_RESERVEFLAGS : int32
		{
			AMRESCTL_RESERVEFLAGS_RESERVE = 0,
			AMRESCTL_RESERVEFLAGS_UNRESERVE = 1,
		}
		[AllowDuplicates]
		public enum _AM_FILTER_MISC_FLAGS : int32
		{
			AM_FILTER_MISC_FLAGS_IS_RENDERER = 1,
			AM_FILTER_MISC_FLAGS_IS_SOURCE = 2,
		}
		[AllowDuplicates]
		public enum DECIMATION_USAGE : int32
		{
			DECIMATION_LEGACY = 0,
			DECIMATION_USE_DECODER_ONLY = 1,
			DECIMATION_USE_VIDEOPORT_ONLY = 2,
			DECIMATION_USE_OVERLAY_ONLY = 3,
			DECIMATION_DEFAULT = 4,
		}
		[AllowDuplicates]
		public enum _AM_PUSHSOURCE_FLAGS : int32
		{
			AM_PUSHSOURCECAPS_INTERNAL_RM = 1,
			AM_PUSHSOURCECAPS_NOT_LIVE = 2,
			AM_PUSHSOURCECAPS_PRIVATE_CLOCK = 4,
			AM_PUSHSOURCEREQS_USE_STREAM_CLOCK = 65536,
			AM_PUSHSOURCEREQS_USE_CLOCK_CHAIN = 131072,
		}
		[AllowDuplicates]
		public enum _DVENCODERRESOLUTION : int32
		{
			DVENCODERRESOLUTION_720x480 = 2012,
			DVENCODERRESOLUTION_360x240 = 2013,
			DVENCODERRESOLUTION_180x120 = 2014,
			DVENCODERRESOLUTION_88x60 = 2015,
		}
		[AllowDuplicates]
		public enum _DVENCODERVIDEOFORMAT : int32
		{
			DVENCODERVIDEOFORMAT_NTSC = 2000,
			DVENCODERVIDEOFORMAT_PAL = 2001,
		}
		[AllowDuplicates]
		public enum _DVENCODERFORMAT : int32
		{
			DVENCODERFORMAT_DVSD = 2007,
			DVENCODERFORMAT_DVHD = 2008,
			DVENCODERFORMAT_DVSL = 2009,
		}
		[AllowDuplicates]
		public enum _DVDECODERRESOLUTION : int32
		{
			DVDECODERRESOLUTION_720x480 = 1000,
			DVDECODERRESOLUTION_360x240 = 1001,
			DVDECODERRESOLUTION_180x120 = 1002,
			DVDECODERRESOLUTION_88x60 = 1003,
		}
		[AllowDuplicates]
		public enum _DVRESOLUTION : int32
		{
			DVRESOLUTION_FULL = 1000,
			DVRESOLUTION_HALF = 1001,
			DVRESOLUTION_QUARTER = 1002,
			DVRESOLUTION_DC = 1003,
		}
		[AllowDuplicates]
		public enum _AM_AUDIO_RENDERER_STAT_PARAM : int32
		{
			AM_AUDREND_STAT_PARAM_BREAK_COUNT = 1,
			AM_AUDREND_STAT_PARAM_SLAVE_MODE = 2,
			AM_AUDREND_STAT_PARAM_SILENCE_DUR = 3,
			AM_AUDREND_STAT_PARAM_LAST_BUFFER_DUR = 4,
			AM_AUDREND_STAT_PARAM_DISCONTINUITIES = 5,
			AM_AUDREND_STAT_PARAM_SLAVE_RATE = 6,
			AM_AUDREND_STAT_PARAM_SLAVE_DROPWRITE_DUR = 7,
			AM_AUDREND_STAT_PARAM_SLAVE_HIGHLOWERROR = 8,
			AM_AUDREND_STAT_PARAM_SLAVE_LASTHIGHLOWERROR = 9,
			AM_AUDREND_STAT_PARAM_SLAVE_ACCUMERROR = 10,
			AM_AUDREND_STAT_PARAM_BUFFERFULLNESS = 11,
			AM_AUDREND_STAT_PARAM_JITTER = 12,
		}
		[AllowDuplicates]
		public enum _AM_INTF_SEARCH_FLAGS : int32
		{
			AM_INTF_SEARCH_INPUT_PIN = 1,
			AM_INTF_SEARCH_OUTPUT_PIN = 2,
			AM_INTF_SEARCH_FILTER = 4,
		}
		[AllowDuplicates]
		public enum AMOVERLAYFX : int32
		{
			AMOVERFX_NOFX = 0,
			AMOVERFX_MIRRORLEFTRIGHT = 2,
			AMOVERFX_MIRRORUPDOWN = 4,
			AMOVERFX_DEINTERLACE = 8,
		}
		[AllowDuplicates]
		public enum _AM_PIN_FLOW_CONTROL_BLOCK_FLAGS : int32
		{
			AM_PIN_FLOW_CONTROL_BLOCK = 1,
		}
		[AllowDuplicates]
		public enum AM_GRAPH_CONFIG_RECONNECT_FLAGS : int32
		{
			AM_GRAPH_CONFIG_RECONNECT_DIRECTCONNECT = 1,
			AM_GRAPH_CONFIG_RECONNECT_CACHE_REMOVED_FILTERS = 2,
			AM_GRAPH_CONFIG_RECONNECT_USE_ONLY_CACHED_FILTERS = 4,
		}
		[AllowDuplicates]
		public enum _REM_FILTER_FLAGS : int32
		{
			REMFILTERF_LEAVECONNECTED = 1,
		}
		[AllowDuplicates]
		public enum AM_FILTER_FLAGS : int32
		{
			AM_FILTER_FLAGS_REMOVABLE = 1,
		}
		[AllowDuplicates]
		public enum VMRPresentationFlags : int32
		{
			VMRSample_SyncPoint = 1,
			VMRSample_Preroll = 2,
			VMRSample_Discontinuity = 4,
			VMRSample_TimeValid = 8,
			VMRSample_SrcDstRectsValid = 16,
		}
		[AllowDuplicates]
		public enum VMRSurfaceAllocationFlags : int32
		{
			AMAP_PIXELFORMAT_VALID = 1,
			AMAP_3D_TARGET = 2,
			AMAP_ALLOW_SYSMEM = 4,
			AMAP_FORCE_SYSMEM = 8,
			AMAP_DIRECTED_FLIP = 16,
			AMAP_DXVA_TARGET = 32,
		}
		[AllowDuplicates]
		public enum VMR_ASPECT_RATIO_MODE : int32
		{
			VMR_ARMODE_NONE = 0,
			VMR_ARMODE_LETTER_BOX = 1,
		}
		[AllowDuplicates]
		public enum VMRMixerPrefs : int32
		{
			MixerPref_NoDecimation = 1,
			MixerPref_DecimateOutput = 2,
			MixerPref_ARAdjustXorY = 4,
			MixerPref_DecimationReserved = 8,
			MixerPref_DecimateMask = 15,
			MixerPref_BiLinearFiltering = 16,
			MixerPref_PointFiltering = 32,
			MixerPref_FilteringMask = 240,
			MixerPref_RenderTargetRGB = 256,
			MixerPref_RenderTargetYUV = 4096,
			MixerPref_RenderTargetYUV420 = 512,
			MixerPref_RenderTargetYUV422 = 1024,
			MixerPref_RenderTargetYUV444 = 2048,
			MixerPref_RenderTargetReserved = 57344,
			MixerPref_RenderTargetMask = 65280,
			MixerPref_DynamicSwitchToBOB = 65536,
			MixerPref_DynamicDecimateBy2 = 131072,
			MixerPref_DynamicReserved = 786432,
			MixerPref_DynamicMask = 983040,
		}
		[AllowDuplicates]
		public enum VMRRenderPrefs : int32
		{
			RenderPrefs_RestrictToInitialMonitor = 0,
			RenderPrefs_ForceOffscreen = 1,
			RenderPrefs_ForceOverlays = 2,
			RenderPrefs_AllowOverlays = 0,
			RenderPrefs_AllowOffscreen = 0,
			RenderPrefs_DoNotRenderColorKeyAndBorder = 8,
			RenderPrefs_Reserved = 16,
			RenderPrefs_PreferAGPMemWhenMixing = 32,
			RenderPrefs_Mask = 63,
		}
		[AllowDuplicates]
		public enum VMRMode : int32
		{
			VMRMode_Windowed = 1,
			VMRMode_Windowless = 2,
			VMRMode_Renderless = 4,
			VMRMode_Mask = 7,
		}
		[AllowDuplicates]
		public enum STREAMIF_CONSTANTS : int32
		{
			MAX_NUMBER_OF_STREAMS = 16,
		}
		[AllowDuplicates]
		public enum VMRDeinterlacePrefs : int32
		{
			DeinterlacePref_NextBest = 1,
			DeinterlacePref_BOB = 2,
			DeinterlacePref_Weave = 4,
			DeinterlacePref_Mask = 7,
		}
		[AllowDuplicates]
		public enum VMRDeinterlaceTech : int32
		{
			DeinterlaceTech_Unknown = 0,
			DeinterlaceTech_BOBLineReplicate = 1,
			DeinterlaceTech_BOBVerticalStretch = 2,
			DeinterlaceTech_MedianFiltering = 4,
			DeinterlaceTech_EdgeFiltering = 16,
			DeinterlaceTech_FieldAdaptive = 32,
			DeinterlaceTech_PixelAdaptive = 64,
			DeinterlaceTech_MotionVectorSteered = 128,
		}
		[AllowDuplicates]
		public enum DVD_DOMAIN : int32
		{
			DVD_DOMAIN_FirstPlay = 1,
			DVD_DOMAIN_VideoManagerMenu = 2,
			DVD_DOMAIN_VideoTitleSetMenu = 3,
			DVD_DOMAIN_Title = 4,
			DVD_DOMAIN_Stop = 5,
		}
		[AllowDuplicates]
		public enum DVD_MENU_ID : int32
		{
			DVD_MENU_Title = 2,
			DVD_MENU_Root = 3,
			DVD_MENU_Subpicture = 4,
			DVD_MENU_Audio = 5,
			DVD_MENU_Angle = 6,
			DVD_MENU_Chapter = 7,
		}
		[AllowDuplicates]
		public enum DVD_DISC_SIDE : int32
		{
			DVD_SIDE_A = 1,
			DVD_SIDE_B = 2,
		}
		[AllowDuplicates]
		public enum DVD_PREFERRED_DISPLAY_MODE : int32
		{
			DISPLAY_CONTENT_DEFAULT = 0,
			DISPLAY_16x9 = 1,
			DISPLAY_4x3_PANSCAN_PREFERRED = 2,
			DISPLAY_4x3_LETTERBOX_PREFERRED = 3,
		}
		[AllowDuplicates]
		public enum DVD_FRAMERATE : int32
		{
			DVD_FPS_25 = 1,
			DVD_FPS_30NonDrop = 3,
		}
		[AllowDuplicates]
		public enum DVD_NavCmdType : int32
		{
			DVD_NavCmdType_Pre = 1,
			DVD_NavCmdType_Post = 2,
			DVD_NavCmdType_Cell = 3,
			DVD_NavCmdType_Button = 4,
		}
		[AllowDuplicates]
		public enum DVD_TIMECODE_FLAGS : int32
		{
			DVD_TC_FLAG_25fps = 1,
			DVD_TC_FLAG_30fps = 2,
			DVD_TC_FLAG_DropFrame = 4,
			DVD_TC_FLAG_Interpolated = 8,
		}
		[AllowDuplicates]
		public enum VALID_UOP_FLAG : int32
		{
			UOP_FLAG_Play_Title_Or_AtTime = 1,
			UOP_FLAG_Play_Chapter = 2,
			UOP_FLAG_Play_Title = 4,
			UOP_FLAG_Stop = 8,
			UOP_FLAG_ReturnFromSubMenu = 16,
			UOP_FLAG_Play_Chapter_Or_AtTime = 32,
			UOP_FLAG_PlayPrev_Or_Replay_Chapter = 64,
			UOP_FLAG_PlayNext_Chapter = 128,
			UOP_FLAG_Play_Forwards = 256,
			UOP_FLAG_Play_Backwards = 512,
			UOP_FLAG_ShowMenu_Title = 1024,
			UOP_FLAG_ShowMenu_Root = 2048,
			UOP_FLAG_ShowMenu_SubPic = 4096,
			UOP_FLAG_ShowMenu_Audio = 8192,
			UOP_FLAG_ShowMenu_Angle = 16384,
			UOP_FLAG_ShowMenu_Chapter = 32768,
			UOP_FLAG_Resume = 65536,
			UOP_FLAG_Select_Or_Activate_Button = 131072,
			UOP_FLAG_Still_Off = 262144,
			UOP_FLAG_Pause_On = 524288,
			UOP_FLAG_Select_Audio_Stream = 1048576,
			UOP_FLAG_Select_SubPic_Stream = 2097152,
			UOP_FLAG_Select_Angle = 4194304,
			UOP_FLAG_Select_Karaoke_Audio_Presentation_Mode = 8388608,
			UOP_FLAG_Select_Video_Mode_Preference = 16777216,
		}
		[AllowDuplicates]
		public enum DVD_CMD_FLAGS : int32
		{
			DVD_CMD_FLAG_None = 0,
			DVD_CMD_FLAG_Flush = 1,
			DVD_CMD_FLAG_SendEvents = 2,
			DVD_CMD_FLAG_Block = 4,
			DVD_CMD_FLAG_StartWhenRendered = 8,
			DVD_CMD_FLAG_EndAfterRendered = 16,
		}
		[AllowDuplicates]
		public enum DVD_OPTION_FLAG : int32
		{
			DVD_ResetOnStop = 1,
			DVD_NotifyParentalLevelChange = 2,
			DVD_HMSF_TimeCodeEvents = 3,
			DVD_AudioDuringFFwdRew = 4,
			DVD_EnableNonblockingAPIs = 5,
			DVD_CacheSizeInMB = 6,
			DVD_EnablePortableBookmarks = 7,
			DVD_EnableExtendedCopyProtectErrors = 8,
			DVD_NotifyPositionChange = 9,
			DVD_IncreaseOutputControl = 10,
			DVD_EnableStreaming = 11,
			DVD_EnableESOutput = 12,
			DVD_EnableTitleLength = 13,
			DVD_DisableStillThrottle = 14,
			DVD_EnableLoggingEvents = 15,
			DVD_MaxReadBurstInKB = 16,
			DVD_ReadBurstPeriodInMS = 17,
			DVD_RestartDisc = 18,
			DVD_EnableCC = 19,
		}
		[AllowDuplicates]
		public enum DVD_RELATIVE_BUTTON : int32
		{
			DVD_Relative_Upper = 1,
			DVD_Relative_Lower = 2,
			DVD_Relative_Left = 3,
			DVD_Relative_Right = 4,
		}
		[AllowDuplicates]
		public enum DVD_PARENTAL_LEVEL : int32
		{
			DVD_PARENTAL_LEVEL_8 = 32768,
			DVD_PARENTAL_LEVEL_7 = 16384,
			DVD_PARENTAL_LEVEL_6 = 8192,
			DVD_PARENTAL_LEVEL_5 = 4096,
			DVD_PARENTAL_LEVEL_4 = 2048,
			DVD_PARENTAL_LEVEL_3 = 1024,
			DVD_PARENTAL_LEVEL_2 = 512,
			DVD_PARENTAL_LEVEL_1 = 256,
		}
		[AllowDuplicates]
		public enum DVD_AUDIO_LANG_EXT : int32
		{
			DVD_AUD_EXT_NotSpecified = 0,
			DVD_AUD_EXT_Captions = 1,
			DVD_AUD_EXT_VisuallyImpaired = 2,
			DVD_AUD_EXT_DirectorComments1 = 3,
			DVD_AUD_EXT_DirectorComments2 = 4,
		}
		[AllowDuplicates]
		public enum DVD_SUBPICTURE_LANG_EXT : int32
		{
			DVD_SP_EXT_NotSpecified = 0,
			DVD_SP_EXT_Caption_Normal = 1,
			DVD_SP_EXT_Caption_Big = 2,
			DVD_SP_EXT_Caption_Children = 3,
			DVD_SP_EXT_CC_Normal = 5,
			DVD_SP_EXT_CC_Big = 6,
			DVD_SP_EXT_CC_Children = 7,
			DVD_SP_EXT_Forced = 9,
			DVD_SP_EXT_DirectorComments_Normal = 13,
			DVD_SP_EXT_DirectorComments_Big = 14,
			DVD_SP_EXT_DirectorComments_Children = 15,
		}
		[AllowDuplicates]
		public enum DVD_AUDIO_APPMODE : int32
		{
			DVD_AudioMode_None = 0,
			DVD_AudioMode_Karaoke = 1,
			DVD_AudioMode_Surround = 2,
			DVD_AudioMode_Other = 3,
		}
		[AllowDuplicates]
		public enum DVD_AUDIO_FORMAT : int32
		{
			DVD_AudioFormat_AC3 = 0,
			DVD_AudioFormat_MPEG1 = 1,
			DVD_AudioFormat_MPEG1_DRC = 2,
			DVD_AudioFormat_MPEG2 = 3,
			DVD_AudioFormat_MPEG2_DRC = 4,
			DVD_AudioFormat_LPCM = 5,
			DVD_AudioFormat_DTS = 6,
			DVD_AudioFormat_SDDS = 7,
			DVD_AudioFormat_Other = 8,
		}
		[AllowDuplicates]
		public enum DVD_KARAOKE_DOWNMIX : int32
		{
			DVD_Mix_0to0 = 1,
			DVD_Mix_1to0 = 2,
			DVD_Mix_2to0 = 4,
			DVD_Mix_3to0 = 8,
			DVD_Mix_4to0 = 16,
			DVD_Mix_Lto0 = 32,
			DVD_Mix_Rto0 = 64,
			DVD_Mix_0to1 = 256,
			DVD_Mix_1to1 = 512,
			DVD_Mix_2to1 = 1024,
			DVD_Mix_3to1 = 2048,
			DVD_Mix_4to1 = 4096,
			DVD_Mix_Lto1 = 8192,
			DVD_Mix_Rto1 = 16384,
		}
		[AllowDuplicates]
		public enum DVD_KARAOKE_CONTENTS : int32
		{
			DVD_Karaoke_GuideVocal1 = 1,
			DVD_Karaoke_GuideVocal2 = 2,
			DVD_Karaoke_GuideMelody1 = 4,
			DVD_Karaoke_GuideMelody2 = 8,
			DVD_Karaoke_GuideMelodyA = 16,
			DVD_Karaoke_GuideMelodyB = 32,
			DVD_Karaoke_SoundEffectA = 64,
			DVD_Karaoke_SoundEffectB = 128,
		}
		[AllowDuplicates]
		public enum DVD_KARAOKE_ASSIGNMENT : int32
		{
			DVD_Assignment_reserved0 = 0,
			DVD_Assignment_reserved1 = 1,
			DVD_Assignment_LR = 2,
			DVD_Assignment_LRM = 3,
			DVD_Assignment_LR1 = 4,
			DVD_Assignment_LRM1 = 5,
			DVD_Assignment_LR12 = 6,
			DVD_Assignment_LRM12 = 7,
		}
		[AllowDuplicates]
		public enum DVD_VIDEO_COMPRESSION : int32
		{
			DVD_VideoCompression_Other = 0,
			DVD_VideoCompression_MPEG1 = 1,
			DVD_VideoCompression_MPEG2 = 2,
		}
		[AllowDuplicates]
		public enum DVD_SUBPICTURE_TYPE : int32
		{
			DVD_SPType_NotSpecified = 0,
			DVD_SPType_Language = 1,
			DVD_SPType_Other = 2,
		}
		[AllowDuplicates]
		public enum DVD_SUBPICTURE_CODING : int32
		{
			DVD_SPCoding_RunLength = 0,
			DVD_SPCoding_Extended = 1,
			DVD_SPCoding_Other = 2,
		}
		[AllowDuplicates]
		public enum DVD_TITLE_APPMODE : int32
		{
			DVD_AppMode_Not_Specified = 0,
			DVD_AppMode_Karaoke = 1,
			DVD_AppMode_Other = 3,
		}
		[AllowDuplicates]
		public enum DVD_TextStringType : int32
		{
			DVD_Struct_Volume = 1,
			DVD_Struct_Title = 2,
			DVD_Struct_ParentalID = 3,
			DVD_Struct_PartOfTitle = 4,
			DVD_Struct_Cell = 5,
			DVD_Stream_Audio = 16,
			DVD_Stream_Subpicture = 17,
			DVD_Stream_Angle = 18,
			DVD_Channel_Audio = 32,
			DVD_General_Name = 48,
			DVD_General_Comments = 49,
			DVD_Title_Series = 56,
			DVD_Title_Movie = 57,
			DVD_Title_Video = 58,
			DVD_Title_Album = 59,
			DVD_Title_Song = 60,
			DVD_Title_Other = 63,
			DVD_Title_Sub_Series = 64,
			DVD_Title_Sub_Movie = 65,
			DVD_Title_Sub_Video = 66,
			DVD_Title_Sub_Album = 67,
			DVD_Title_Sub_Song = 68,
			DVD_Title_Sub_Other = 71,
			DVD_Title_Orig_Series = 72,
			DVD_Title_Orig_Movie = 73,
			DVD_Title_Orig_Video = 74,
			DVD_Title_Orig_Album = 75,
			DVD_Title_Orig_Song = 76,
			DVD_Title_Orig_Other = 79,
			DVD_Other_Scene = 80,
			DVD_Other_Cut = 81,
			DVD_Other_Take = 82,
		}
		[AllowDuplicates]
		public enum DVD_TextCharSet : int32
		{
			DVD_CharSet_Unicode = 0,
			DVD_CharSet_ISO646 = 1,
			DVD_CharSet_JIS_Roman_Kanji = 2,
			DVD_CharSet_ISO8859_1 = 3,
			DVD_CharSet_ShiftJIS_Kanji_Roman_Katakana = 4,
		}
		[AllowDuplicates]
		public enum AM_DVD_GRAPH_FLAGS : int32
		{
			AM_DVD_HWDEC_PREFER = 1,
			AM_DVD_HWDEC_ONLY = 2,
			AM_DVD_SWDEC_PREFER = 4,
			AM_DVD_SWDEC_ONLY = 8,
			AM_DVD_NOVPE = 256,
			AM_DVD_DO_NOT_CLEAR = 512,
			AM_DVD_VMR9_ONLY = 2048,
			AM_DVD_EVR_ONLY = 4096,
			AM_DVD_EVR_QOS = 8192,
			AM_DVD_ADAPT_GRAPH = 16384,
			AM_DVD_MASK = 65535,
		}
		[AllowDuplicates]
		public enum AM_DVD_STREAM_FLAGS : int32
		{
			AM_DVD_STREAM_VIDEO = 1,
			AM_DVD_STREAM_AUDIO = 2,
			AM_DVD_STREAM_SUBPIC = 4,
		}
		[AllowDuplicates]
		public enum _AM_OVERLAY_NOTIFY_FLAGS : int32
		{
			AM_OVERLAY_NOTIFY_VISIBLE_CHANGE = 1,
			AM_OVERLAY_NOTIFY_SOURCE_CHANGE = 2,
			AM_OVERLAY_NOTIFY_DEST_CHANGE = 4,
		}
		[AllowDuplicates]
		public enum BDA_EVENT_ID : int32
		{
			BDA_EVENT_SIGNAL_LOSS = 0,
			BDA_EVENT_SIGNAL_LOCK = 1,
			BDA_EVENT_DATA_START = 2,
			BDA_EVENT_DATA_STOP = 3,
			BDA_EVENT_CHANNEL_ACQUIRED = 4,
			BDA_EVENT_CHANNEL_LOST = 5,
			BDA_EVENT_CHANNEL_SOURCE_CHANGED = 6,
			BDA_EVENT_CHANNEL_ACTIVATED = 7,
			BDA_EVENT_CHANNEL_DEACTIVATED = 8,
			BDA_EVENT_SUBCHANNEL_ACQUIRED = 9,
			BDA_EVENT_SUBCHANNEL_LOST = 10,
			BDA_EVENT_SUBCHANNEL_SOURCE_CHANGED = 11,
			BDA_EVENT_SUBCHANNEL_ACTIVATED = 12,
			BDA_EVENT_SUBCHANNEL_DEACTIVATED = 13,
			BDA_EVENT_ACCESS_GRANTED = 14,
			BDA_EVENT_ACCESS_DENIED = 15,
			BDA_EVENT_OFFER_EXTENDED = 16,
			BDA_EVENT_PURCHASE_COMPLETED = 17,
			BDA_EVENT_SMART_CARD_INSERTED = 18,
			BDA_EVENT_SMART_CARD_REMOVED = 19,
		}
		[AllowDuplicates]
		public enum BDA_MULTICAST_MODE : int32
		{
			BDA_PROMISCUOUS_MULTICAST = 0,
			BDA_FILTERED_MULTICAST = 1,
			BDA_NO_MULTICAST = 2,
		}
		[AllowDuplicates]
		public enum BDA_SIGNAL_STATE : int32
		{
			BDA_SIGNAL_UNAVAILABLE = 0,
			BDA_SIGNAL_INACTIVE = 1,
			BDA_SIGNAL_ACTIVE = 2,
		}
		[AllowDuplicates]
		public enum BDA_CHANGE_STATE : int32
		{
			BDA_CHANGES_COMPLETE = 0,
			BDA_CHANGES_PENDING = 1,
		}
		[AllowDuplicates]
		public enum MEDIA_SAMPLE_CONTENT : int32
		{
			MEDIA_TRANSPORT_PACKET = 0,
			MEDIA_ELEMENTARY_STREAM = 1,
			MEDIA_MPEG2_PSI = 2,
			MEDIA_TRANSPORT_PAYLOAD = 3,
		}
		[AllowDuplicates]
		public enum ISDBCAS_REQUEST_ID : int32
		{
			ISDBCAS_REQUEST_ID_EMG = 56,
			ISDBCAS_REQUEST_ID_EMD = 58,
		}
		[AllowDuplicates]
		public enum MUX_PID_TYPE : int32
		{
			PID_OTHER = -1,
			PID_ELEMENTARY_STREAM = 0,
			PID_MPEG2_SECTION_PSI_SI = 1,
		}
		[AllowDuplicates]
		public enum DVBSystemType : int32
		{
			DVB_Cable = 0,
			DVB_Terrestrial = 1,
			DVB_Satellite = 2,
			ISDB_Terrestrial = 3,
			ISDB_Satellite = 4,
		}
		[AllowDuplicates]
		public enum BDA_Channel : int32
		{
			BDA_UNDEFINED_CHANNEL = -1,
		}
		[AllowDuplicates]
		public enum ComponentCategory : int32
		{
			CategoryNotSet = -1,
			CategoryOther = 0,
			CategoryVideo = 1,
			CategoryAudio = 2,
			CategoryText = 3,
			CategorySubtitles = 4,
			CategoryCaptions = 5,
			CategorySuperimpose = 6,
			CategoryData = 7,
			CATEGORY_COUNT = 8,
		}
		[AllowDuplicates]
		public enum ComponentStatus : int32
		{
			StatusActive = 0,
			StatusInactive = 1,
			StatusUnavailable = 2,
		}
		[AllowDuplicates]
		public enum MPEG2StreamType : int32
		{
			BDA_UNITIALIZED_MPEG2STREAMTYPE = -1,
			Reserved1 = 0,
			ISO_IEC_11172_2_VIDEO = 1,
			ISO_IEC_13818_2_VIDEO = 2,
			ISO_IEC_11172_3_AUDIO = 3,
			ISO_IEC_13818_3_AUDIO = 4,
			ISO_IEC_13818_1_PRIVATE_SECTION = 5,
			ISO_IEC_13818_1_PES = 6,
			ISO_IEC_13522_MHEG = 7,
			ANNEX_A_DSM_CC = 8,
			ITU_T_REC_H_222_1 = 9,
			ISO_IEC_13818_6_TYPE_A = 10,
			ISO_IEC_13818_6_TYPE_B = 11,
			ISO_IEC_13818_6_TYPE_C = 12,
			ISO_IEC_13818_6_TYPE_D = 13,
			ISO_IEC_13818_1_AUXILIARY = 14,
			ISO_IEC_13818_7_AUDIO = 15,
			ISO_IEC_14496_2_VISUAL = 16,
			ISO_IEC_14496_3_AUDIO = 17,
			ISO_IEC_14496_1_IN_PES = 18,
			ISO_IEC_14496_1_IN_SECTION = 19,
			ISO_IEC_13818_6_DOWNLOAD = 20,
			METADATA_IN_PES = 21,
			METADATA_IN_SECTION = 22,
			METADATA_IN_DATA_CAROUSEL = 23,
			METADATA_IN_OBJECT_CAROUSEL = 24,
			METADATA_IN_DOWNLOAD_PROTOCOL = 25,
			IRPM_STREAMM = 26,
			ITU_T_H264 = 27,
			ISO_IEC_13818_1_RESERVED = 28,
			USER_PRIVATE = 16,
			HEVC_VIDEO_OR_TEMPORAL_VIDEO = 36,
			HEVC_TEMPORAL_VIDEO_SUBSET = 37,
			ISO_IEC_USER_PRIVATE = 128,
			DOLBY_AC3_AUDIO = 129,
			DOLBY_DIGITAL_PLUS_AUDIO_ATSC = 135,
		}
		[AllowDuplicates]
		public enum ATSCComponentTypeFlags : int32
		{
			ATSCCT_AC3 = 1,
		}
		[AllowDuplicates]
		public enum BinaryConvolutionCodeRate : int32
		{
			BDA_BCC_RATE_NOT_SET = -1,
			BDA_BCC_RATE_NOT_DEFINED = 0,
			BDA_BCC_RATE_1_2 = 1,
			BDA_BCC_RATE_2_3 = 2,
			BDA_BCC_RATE_3_4 = 3,
			BDA_BCC_RATE_3_5 = 4,
			BDA_BCC_RATE_4_5 = 5,
			BDA_BCC_RATE_5_6 = 6,
			BDA_BCC_RATE_5_11 = 7,
			BDA_BCC_RATE_7_8 = 8,
			BDA_BCC_RATE_1_4 = 9,
			BDA_BCC_RATE_1_3 = 10,
			BDA_BCC_RATE_2_5 = 11,
			BDA_BCC_RATE_6_7 = 12,
			BDA_BCC_RATE_8_9 = 13,
			BDA_BCC_RATE_9_10 = 14,
			BDA_BCC_RATE_MAX = 15,
		}
		[AllowDuplicates]
		public enum FECMethod : int32
		{
			BDA_FEC_METHOD_NOT_SET = -1,
			BDA_FEC_METHOD_NOT_DEFINED = 0,
			BDA_FEC_VITERBI = 1,
			BDA_FEC_RS_204_188 = 2,
			BDA_FEC_LDPC = 3,
			BDA_FEC_BCH = 4,
			BDA_FEC_RS_147_130 = 5,
			BDA_FEC_MAX = 6,
		}
		[AllowDuplicates]
		public enum ModulationType : int32
		{
			BDA_MOD_NOT_SET = -1,
			BDA_MOD_NOT_DEFINED = 0,
			BDA_MOD_16QAM = 1,
			BDA_MOD_32QAM = 2,
			BDA_MOD_64QAM = 3,
			BDA_MOD_80QAM = 4,
			BDA_MOD_96QAM = 5,
			BDA_MOD_112QAM = 6,
			BDA_MOD_128QAM = 7,
			BDA_MOD_160QAM = 8,
			BDA_MOD_192QAM = 9,
			BDA_MOD_224QAM = 10,
			BDA_MOD_256QAM = 11,
			BDA_MOD_320QAM = 12,
			BDA_MOD_384QAM = 13,
			BDA_MOD_448QAM = 14,
			BDA_MOD_512QAM = 15,
			BDA_MOD_640QAM = 16,
			BDA_MOD_768QAM = 17,
			BDA_MOD_896QAM = 18,
			BDA_MOD_1024QAM = 19,
			BDA_MOD_QPSK = 20,
			BDA_MOD_BPSK = 21,
			BDA_MOD_OQPSK = 22,
			BDA_MOD_8VSB = 23,
			BDA_MOD_16VSB = 24,
			BDA_MOD_ANALOG_AMPLITUDE = 25,
			BDA_MOD_ANALOG_FREQUENCY = 26,
			BDA_MOD_8PSK = 27,
			BDA_MOD_RF = 28,
			BDA_MOD_16APSK = 29,
			BDA_MOD_32APSK = 30,
			BDA_MOD_NBC_QPSK = 31,
			BDA_MOD_NBC_8PSK = 32,
			BDA_MOD_DIRECTV = 33,
			BDA_MOD_ISDB_T_TMCC = 34,
			BDA_MOD_ISDB_S_TMCC = 35,
			BDA_MOD_MAX = 36,
		}
		[AllowDuplicates]
		public enum ScanModulationTypes : int32
		{
			BDA_SCAN_MOD_16QAM = 1,
			BDA_SCAN_MOD_32QAM = 2,
			BDA_SCAN_MOD_64QAM = 4,
			BDA_SCAN_MOD_80QAM = 8,
			BDA_SCAN_MOD_96QAM = 16,
			BDA_SCAN_MOD_112QAM = 32,
			BDA_SCAN_MOD_128QAM = 64,
			BDA_SCAN_MOD_160QAM = 128,
			BDA_SCAN_MOD_192QAM = 256,
			BDA_SCAN_MOD_224QAM = 512,
			BDA_SCAN_MOD_256QAM = 1024,
			BDA_SCAN_MOD_320QAM = 2048,
			BDA_SCAN_MOD_384QAM = 4096,
			BDA_SCAN_MOD_448QAM = 8192,
			BDA_SCAN_MOD_512QAM = 16384,
			BDA_SCAN_MOD_640QAM = 32768,
			BDA_SCAN_MOD_768QAM = 65536,
			BDA_SCAN_MOD_896QAM = 131072,
			BDA_SCAN_MOD_1024QAM = 262144,
			BDA_SCAN_MOD_QPSK = 524288,
			BDA_SCAN_MOD_BPSK = 1048576,
			BDA_SCAN_MOD_OQPSK = 2097152,
			BDA_SCAN_MOD_8VSB = 4194304,
			BDA_SCAN_MOD_16VSB = 8388608,
			BDA_SCAN_MOD_AM_RADIO = 16777216,
			BDA_SCAN_MOD_FM_RADIO = 33554432,
			BDA_SCAN_MOD_8PSK = 67108864,
			BDA_SCAN_MOD_RF = 134217728,
			ScanModulationTypesMask_MCE_DigitalCable = 11,
			ScanModulationTypesMask_MCE_TerrestrialATSC = 23,
			ScanModulationTypesMask_MCE_AnalogTv = 28,
			ScanModulationTypesMask_MCE_All_TV = -1,
			ScanModulationTypesMask_DVBC = 75,
			BDA_SCAN_MOD_16APSK = 268435456,
			BDA_SCAN_MOD_32APSK = 536870912,
		}
		[AllowDuplicates]
		public enum SpectralInversion : int32
		{
			BDA_SPECTRAL_INVERSION_NOT_SET = -1,
			BDA_SPECTRAL_INVERSION_NOT_DEFINED = 0,
			BDA_SPECTRAL_INVERSION_AUTOMATIC = 1,
			BDA_SPECTRAL_INVERSION_NORMAL = 2,
			BDA_SPECTRAL_INVERSION_INVERTED = 3,
			BDA_SPECTRAL_INVERSION_MAX = 4,
		}
		[AllowDuplicates]
		public enum Polarisation : int32
		{
			BDA_POLARISATION_NOT_SET = -1,
			BDA_POLARISATION_NOT_DEFINED = 0,
			BDA_POLARISATION_LINEAR_H = 1,
			BDA_POLARISATION_LINEAR_V = 2,
			BDA_POLARISATION_CIRCULAR_L = 3,
			BDA_POLARISATION_CIRCULAR_R = 4,
			BDA_POLARISATION_MAX = 5,
		}
		[AllowDuplicates]
		public enum LNB_Source : int32
		{
			BDA_LNB_SOURCE_NOT_SET = -1,
			BDA_LNB_SOURCE_NOT_DEFINED = 0,
			BDA_LNB_SOURCE_A = 1,
			BDA_LNB_SOURCE_B = 2,
			BDA_LNB_SOURCE_C = 3,
			BDA_LNB_SOURCE_D = 4,
			BDA_LNB_SOURCE_MAX = 5,
		}
		[AllowDuplicates]
		public enum GuardInterval : int32
		{
			BDA_GUARD_NOT_SET = -1,
			BDA_GUARD_NOT_DEFINED = 0,
			BDA_GUARD_1_32 = 1,
			BDA_GUARD_1_16 = 2,
			BDA_GUARD_1_8 = 3,
			BDA_GUARD_1_4 = 4,
			BDA_GUARD_1_128 = 5,
			BDA_GUARD_19_128 = 6,
			BDA_GUARD_19_256 = 7,
			BDA_GUARD_MAX = 8,
		}
		[AllowDuplicates]
		public enum HierarchyAlpha : int32
		{
			BDA_HALPHA_NOT_SET = -1,
			BDA_HALPHA_NOT_DEFINED = 0,
			BDA_HALPHA_1 = 1,
			BDA_HALPHA_2 = 2,
			BDA_HALPHA_4 = 3,
			BDA_HALPHA_MAX = 4,
		}
		[AllowDuplicates]
		public enum TransmissionMode : int32
		{
			BDA_XMIT_MODE_NOT_SET = -1,
			BDA_XMIT_MODE_NOT_DEFINED = 0,
			BDA_XMIT_MODE_2K = 1,
			BDA_XMIT_MODE_8K = 2,
			BDA_XMIT_MODE_4K = 3,
			BDA_XMIT_MODE_2K_INTERLEAVED = 4,
			BDA_XMIT_MODE_4K_INTERLEAVED = 5,
			BDA_XMIT_MODE_1K = 6,
			BDA_XMIT_MODE_16K = 7,
			BDA_XMIT_MODE_32K = 8,
			BDA_XMIT_MODE_MAX = 9,
		}
		[AllowDuplicates]
		public enum RollOff : int32
		{
			BDA_ROLL_OFF_NOT_SET = -1,
			BDA_ROLL_OFF_NOT_DEFINED = 0,
			BDA_ROLL_OFF_20 = 1,
			BDA_ROLL_OFF_25 = 2,
			BDA_ROLL_OFF_35 = 3,
			BDA_ROLL_OFF_MAX = 4,
		}
		[AllowDuplicates]
		public enum Pilot : int32
		{
			BDA_PILOT_NOT_SET = -1,
			BDA_PILOT_NOT_DEFINED = 0,
			BDA_PILOT_OFF = 1,
			BDA_PILOT_ON = 2,
			BDA_PILOT_MAX = 3,
		}
		[AllowDuplicates]
		public enum BDA_Frequency : int32
		{
			BDA_FREQUENCY_NOT_SET = -1,
			BDA_FREQUENCY_NOT_DEFINED = 0,
		}
		[AllowDuplicates]
		public enum BDA_Range : int32
		{
			BDA_RANGE_NOT_SET = -1,
			BDA_RANGE_NOT_DEFINED = 0,
		}
		[AllowDuplicates]
		public enum BDA_Channel_Bandwidth : int32
		{
			BDA_CHAN_BANDWITH_NOT_SET = -1,
			BDA_CHAN_BANDWITH_NOT_DEFINED = 0,
		}
		[AllowDuplicates]
		public enum BDA_Frequency_Multiplier : int32
		{
			BDA_FREQUENCY_MULTIPLIER_NOT_SET = -1,
			BDA_FREQUENCY_MULTIPLIER_NOT_DEFINED = 0,
		}
		[AllowDuplicates]
		public enum BDA_Comp_Flags : int32
		{
			BDACOMP_NOT_DEFINED = 0,
			BDACOMP_EXCLUDE_TS_FROM_TR = 1,
			BDACOMP_INCLUDE_LOCATOR_IN_TR = 2,
			BDACOMP_INCLUDE_COMPONENTS_IN_TR = 4,
		}
		[AllowDuplicates]
		public enum ApplicationTypeType : int32
		{
			SCTE28_ConditionalAccess = 0,
			SCTE28_POD_Host_Binding_Information = 1,
			SCTE28_IPService = 2,
			SCTE28_NetworkInterface_SCTE55_2 = 3,
			SCTE28_NetworkInterface_SCTE55_1 = 4,
			SCTE28_CopyProtection = 5,
			SCTE28_Diagnostic = 6,
			SCTE28_Undesignated = 7,
			SCTE28_Reserved = 8,
		}
		[AllowDuplicates]
		public enum BDA_CONDITIONALACCESS_REQUESTTYPE : int32
		{
			CONDITIONALACCESS_ACCESS_UNSPECIFIED = 0,
			CONDITIONALACCESS_ACCESS_NOT_POSSIBLE = 1,
			CONDITIONALACCESS_ACCESS_POSSIBLE = 2,
			CONDITIONALACCESS_ACCESS_POSSIBLE_NO_STREAMING_DISRUPTION = 3,
		}
		[AllowDuplicates]
		public enum BDA_CONDITIONALACCESS_MMICLOSEREASON : int32
		{
			CONDITIONALACCESS_UNSPECIFIED = 0,
			CONDITIONALACCESS_CLOSED_ITSELF = 1,
			CONDITIONALACCESS_TUNER_REQUESTED_CLOSE = 2,
			CONDITIONALACCESS_DIALOG_TIMEOUT = 3,
			CONDITIONALACCESS_DIALOG_FOCUS_CHANGE = 4,
			CONDITIONALACCESS_DIALOG_USER_DISMISSED = 5,
			CONDITIONALACCESS_DIALOG_USER_NOT_AVAILABLE = 6,
		}
		[AllowDuplicates]
		public enum BDA_CONDITIONALACCESS_SESSION_RESULT : int32
		{
			CONDITIONALACCESS_SUCCESSFULL = 0,
			CONDITIONALACCESS_ENDED_NOCHANGE = 1,
			CONDITIONALACCESS_ABORTED = 2,
		}
		[AllowDuplicates]
		public enum BDA_DISCOVERY_STATE : int32
		{
			BDA_DISCOVERY_UNSPECIFIED = 0,
			BDA_DISCOVERY_REQUIRED = 1,
			BDA_DISCOVERY_COMPLETE = 2,
		}
		[AllowDuplicates]
		public enum SmartCardStatusType : int32
		{
			CardInserted = 0,
			CardRemoved = 1,
			CardError = 2,
			CardDataChanged = 3,
			CardFirmwareUpgrade = 4,
		}
		[AllowDuplicates]
		public enum SmartCardAssociationType : int32
		{
			NotAssociated = 0,
			Associated = 1,
			AssociationUnknown = 2,
		}
		[AllowDuplicates]
		public enum LocationCodeSchemeType : int32
		{
			SCTE_18 = 0,
		}
		[AllowDuplicates]
		public enum EntitlementType : int32
		{
			Entitled = 0,
			NotEntitled = 1,
			TechnicalFailure = 2,
		}
		[AllowDuplicates]
		public enum UICloseReasonType : int32
		{
			NotReady = 0,
			UserClosed = 1,
			SystemClosed = 2,
			DeviceClosed = 3,
			ErrorClosed = 4,
		}
		[AllowDuplicates]
		public enum BDA_DrmPairingError : int32
		{
			BDA_DrmPairing_Succeeded = 0,
			BDA_DrmPairing_HardwareFailure = 1,
			BDA_DrmPairing_NeedRevocationData = 2,
			BDA_DrmPairing_NeedIndiv = 3,
			BDA_DrmPairing_Other = 4,
			BDA_DrmPairing_DrmInitFailed = 5,
			BDA_DrmPairing_DrmNotPaired = 6,
			BDA_DrmPairing_DrmRePairSoon = 7,
			BDA_DrmPairing_Aborted = 8,
			BDA_DrmPairing_NeedSDKUpdate = 9,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_IPSINK : uint32
		{
			KSPROPERTY_IPSINK_MULTICASTLIST = 0,
			KSPROPERTY_IPSINK_ADAPTER_DESCRIPTION = 1,
			KSPROPERTY_IPSINK_ADAPTER_ADDRESS = 2,
		}
		[AllowDuplicates]
		public enum AMExtendedSeekingCapabilities : int32
		{
			AM_EXSEEK_CANSEEK = 1,
			AM_EXSEEK_CANSCAN = 2,
			AM_EXSEEK_MARKERSEEK = 4,
			AM_EXSEEK_SCANWITHOUTCLOCK = 8,
			AM_EXSEEK_NOSTANDARDREPAINT = 16,
			AM_EXSEEK_BUFFERING = 32,
			AM_EXSEEK_SENDS_VIDEOFRAMEREADY = 64,
		}
		[AllowDuplicates]
		public enum AM_LINE21_CCLEVEL : int32
		{
			AM_L21_CCLEVEL_TC2 = 0,
		}
		[AllowDuplicates]
		public enum AM_LINE21_CCSERVICE : int32
		{
			AM_L21_CCSERVICE_None = 0,
			AM_L21_CCSERVICE_Caption1 = 1,
			AM_L21_CCSERVICE_Caption2 = 2,
			AM_L21_CCSERVICE_Text1 = 3,
			AM_L21_CCSERVICE_Text2 = 4,
			AM_L21_CCSERVICE_XDS = 5,
			AM_L21_CCSERVICE_DefChannel = 10,
			AM_L21_CCSERVICE_Invalid = 11,
		}
		[AllowDuplicates]
		public enum AM_LINE21_CCSTATE : int32
		{
			AM_L21_CCSTATE_Off = 0,
			AM_L21_CCSTATE_On = 1,
		}
		[AllowDuplicates]
		public enum AM_LINE21_CCSTYLE : int32
		{
			AM_L21_CCSTYLE_None = 0,
			AM_L21_CCSTYLE_PopOn = 1,
			AM_L21_CCSTYLE_PaintOn = 2,
			AM_L21_CCSTYLE_RollUp = 3,
		}
		[AllowDuplicates]
		public enum AM_LINE21_DRAWBGMODE : int32
		{
			AM_L21_DRAWBGMODE_Opaque = 0,
			AM_L21_DRAWBGMODE_Transparent = 1,
		}
		[AllowDuplicates]
		public enum AM_WST_LEVEL : int32
		{
			AM_WST_LEVEL_1_5 = 0,
		}
		[AllowDuplicates]
		public enum AM_WST_SERVICE : int32
		{
			AM_WST_SERVICE_None = 0,
			AM_WST_SERVICE_Text = 1,
			AM_WST_SERVICE_IDS = 2,
			AM_WST_SERVICE_Invalid = 3,
		}
		[AllowDuplicates]
		public enum AM_WST_STATE : int32
		{
			AM_WST_STATE_Off = 0,
			AM_WST_STATE_On = 1,
		}
		[AllowDuplicates]
		public enum AM_WST_STYLE : int32
		{
			AM_WST_STYLE_None = 0,
			AM_WST_STYLE_Invers = 1,
		}
		[AllowDuplicates]
		public enum AM_WST_DRAWBGMODE : int32
		{
			AM_WST_DRAWBGMODE_Opaque = 0,
			AM_WST_DRAWBGMODE_Transparent = 1,
		}
		[AllowDuplicates]
		public enum STREAM_TYPE : int32
		{
			STREAMTYPE_READ = 0,
			STREAMTYPE_WRITE = 1,
			STREAMTYPE_TRANSFORM = 2,
		}
		[AllowDuplicates]
		public enum STREAM_STATE : int32
		{
			STREAMSTATE_STOP = 0,
			STREAMSTATE_RUN = 1,
		}
		[AllowDuplicates]
		public enum COMPLETION_STATUS_FLAGS : int32
		{
			COMPSTAT_NOUPDATEOK = 1,
			COMPSTAT_WAIT = 2,
			COMPSTAT_ABORT = 4,
		}
		[AllowDuplicates]
		public enum MMSSF_GET_INFORMATION_FLAGS : uint32
		{
			MMSSF_HASCLOCK = 1,
			MMSSF_SUPPORTSEEK = 2,
			MMSSF_ASYNCHRONOUS = 4,
		}
		[AllowDuplicates]
		public enum SSUPDATE_TYPE : int32
		{
			SSUPDATE_ASYNC = 1,
			SSUPDATE_CONTINUOUS = 2,
		}
		[AllowDuplicates]
		public enum DDSFF_FLAGS : uint32
		{
			DDSFF_PROGRESSIVERENDER = 1,
		}
		[AllowDuplicates]
		public enum AMMSF_MMS_INIT_FLAGS : uint32
		{
			AMMSF_NOGRAPHTHREAD = 1,
		}
		[AllowDuplicates]
		public enum AMMSF_MS_FLAGS : uint32
		{
			AMMSF_ADDDEFAULTRENDERER = 1,
			AMMSF_CREATEPEER = 2,
			AMMSF_STOPIFNOSAMPLES = 4,
			AMMSF_NOSTALL = 8,
		}
		[AllowDuplicates]
		public enum AMMSF_RENDER_FLAGS : uint32
		{
			AMMSF_RENDERTYPEMASK = 3,
			AMMSF_RENDERTOEXISTING = 0,
			AMMSF_RENDERALLSTREAMS = 1,
			AMMSF_NORENDER = 2,
			AMMSF_NOCLOCK = 4,
			AMMSF_RUN = 8,
		}
		[AllowDuplicates]
		public enum OUTPUT_STATE : uint32
		{
			Disabled = 0,
			ReadData = 1,
			RenderData = 2,
		}
		[AllowDuplicates]
		public enum AM_PROPERTY_FRAMESTEP : int32
		{
			AM_PROPERTY_FRAMESTEP_STEP = 1,
			AM_PROPERTY_FRAMESTEP_CANCEL = 2,
			AM_PROPERTY_FRAMESTEP_CANSTEP = 3,
			AM_PROPERTY_FRAMESTEP_CANSTEPMULTIPLE = 4,
		}
		[AllowDuplicates]
		public enum AM_ASPECT_RATIO_MODE : int32
		{
			AM_ARMODE_STRETCHED = 0,
			AM_ARMODE_LETTER_BOX = 1,
			AM_ARMODE_CROP = 2,
			AM_ARMODE_STRETCHED_AS_PRIMARY = 3,
		}
		[AllowDuplicates]
		public enum VMR9PresentationFlags : int32
		{
			VMR9Sample_SyncPoint = 1,
			VMR9Sample_Preroll = 2,
			VMR9Sample_Discontinuity = 4,
			VMR9Sample_TimeValid = 8,
			VMR9Sample_SrcDstRectsValid = 16,
		}
		[AllowDuplicates]
		public enum VMR9SurfaceAllocationFlags : int32
		{
			VMR9AllocFlag_3DRenderTarget = 1,
			VMR9AllocFlag_DXVATarget = 2,
			VMR9AllocFlag_TextureSurface = 4,
			VMR9AllocFlag_OffscreenSurface = 8,
			VMR9AllocFlag_RGBDynamicSwitch = 16,
			VMR9AllocFlag_UsageReserved = 224,
			VMR9AllocFlag_UsageMask = 255,
		}
		[AllowDuplicates]
		public enum VMR9AspectRatioMode : int32
		{
			VMR9ARMode_None = 0,
			VMR9ARMode_LetterBox = 1,
		}
		[AllowDuplicates]
		public enum VMR9MixerPrefs : int32
		{
			MixerPref9_NoDecimation = 1,
			MixerPref9_DecimateOutput = 2,
			MixerPref9_ARAdjustXorY = 4,
			MixerPref9_NonSquareMixing = 8,
			MixerPref9_DecimateMask = 15,
			MixerPref9_BiLinearFiltering = 16,
			MixerPref9_PointFiltering = 32,
			MixerPref9_AnisotropicFiltering = 64,
			MixerPref9_PyramidalQuadFiltering = 128,
			MixerPref9_GaussianQuadFiltering = 256,
			MixerPref9_FilteringReserved = 3584,
			MixerPref9_FilteringMask = 4080,
			MixerPref9_RenderTargetRGB = 4096,
			MixerPref9_RenderTargetYUV = 8192,
			MixerPref9_RenderTargetReserved = 1032192,
			MixerPref9_RenderTargetMask = 1044480,
			MixerPref9_DynamicSwitchToBOB = 1048576,
			MixerPref9_DynamicDecimateBy2 = 2097152,
			MixerPref9_DynamicReserved = 12582912,
			MixerPref9_DynamicMask = 15728640,
		}
		[AllowDuplicates]
		public enum VMR9ProcAmpControlFlags : int32
		{
			ProcAmpControl9_Brightness = 1,
			ProcAmpControl9_Contrast = 2,
			ProcAmpControl9_Hue = 4,
			ProcAmpControl9_Saturation = 8,
			ProcAmpControl9_Mask = 15,
		}
		[AllowDuplicates]
		public enum VMR9AlphaBitmapFlags : int32
		{
			VMR9AlphaBitmap_Disable = 1,
			VMR9AlphaBitmap_hDC = 2,
			VMR9AlphaBitmap_EntireDDS = 4,
			VMR9AlphaBitmap_SrcColorKey = 8,
			VMR9AlphaBitmap_SrcRect = 16,
			VMR9AlphaBitmap_FilterMode = 32,
		}
		[AllowDuplicates]
		public enum VMR9RenderPrefs : int32
		{
			RenderPrefs9_DoNotRenderBorder = 1,
			RenderPrefs9_Mask = 1,
		}
		[AllowDuplicates]
		public enum VMR9Mode : int32
		{
			VMR9Mode_Windowed = 1,
			VMR9Mode_Windowless = 2,
			VMR9Mode_Renderless = 4,
			VMR9Mode_Mask = 7,
		}
		[AllowDuplicates]
		public enum VMR9DeinterlacePrefs : int32
		{
			DeinterlacePref9_NextBest = 1,
			DeinterlacePref9_BOB = 2,
			DeinterlacePref9_Weave = 4,
			DeinterlacePref9_Mask = 7,
		}
		[AllowDuplicates]
		public enum VMR9DeinterlaceTech : int32
		{
			DeinterlaceTech9_Unknown = 0,
			DeinterlaceTech9_BOBLineReplicate = 1,
			DeinterlaceTech9_BOBVerticalStretch = 2,
			DeinterlaceTech9_MedianFiltering = 4,
			DeinterlaceTech9_EdgeFiltering = 16,
			DeinterlaceTech9_FieldAdaptive = 32,
			DeinterlaceTech9_PixelAdaptive = 64,
			DeinterlaceTech9_MotionVectorSteered = 128,
		}
		[AllowDuplicates]
		public enum VMR9_SampleFormat : int32
		{
			VMR9_SampleReserved = 1,
			VMR9_SampleProgressiveFrame = 2,
			VMR9_SampleFieldInterleavedEvenFirst = 3,
			VMR9_SampleFieldInterleavedOddFirst = 4,
			VMR9_SampleFieldSingleEven = 5,
			VMR9_SampleFieldSingleOdd = 6,
		}
		[AllowDuplicates]
		public enum AM_PROPERTY_AC3 : int32
		{
			AM_PROPERTY_AC3_ERROR_CONCEALMENT = 1,
			AM_PROPERTY_AC3_ALTERNATE_AUDIO = 2,
			AM_PROPERTY_AC3_DOWNMIX = 3,
			AM_PROPERTY_AC3_BIT_STREAM_MODE = 4,
			AM_PROPERTY_AC3_DIALOGUE_LEVEL = 5,
			AM_PROPERTY_AC3_LANGUAGE_CODE = 6,
			AM_PROPERTY_AC3_ROOM_TYPE = 7,
		}
		[AllowDuplicates]
		public enum AM_PROPERTY_DVDSUBPIC : int32
		{
			AM_PROPERTY_DVDSUBPIC_PALETTE = 0,
			AM_PROPERTY_DVDSUBPIC_HLI = 1,
			AM_PROPERTY_DVDSUBPIC_COMPOSIT_ON = 2,
		}
		[AllowDuplicates]
		public enum AM_PROPERTY_DVDCOPYPROT : int32
		{
			AM_PROPERTY_DVDCOPY_CHLG_KEY = 1,
			AM_PROPERTY_DVDCOPY_DVD_KEY1 = 2,
			AM_PROPERTY_DVDCOPY_DEC_KEY2 = 3,
			AM_PROPERTY_DVDCOPY_TITLE_KEY = 4,
			AM_PROPERTY_COPY_MACROVISION = 5,
			AM_PROPERTY_DVDCOPY_REGION = 6,
			AM_PROPERTY_DVDCOPY_SET_COPY_STATE = 7,
			AM_PROPERTY_COPY_ANALOG_COMPONENT = 8,
			AM_PROPERTY_COPY_DIGITAL_CP = 9,
			AM_PROPERTY_COPY_DVD_SRM = 10,
			AM_PROPERTY_DVDCOPY_SUPPORTS_NEW_KEYCOUNT = 11,
			AM_PROPERTY_DVDCOPY_DISC_KEY = 128,
		}
		[AllowDuplicates]
		public enum AM_DIGITAL_CP : int32
		{
			AM_DIGITAL_CP_OFF = 0,
			AM_DIGITAL_CP_ON = 1,
			AM_DIGITAL_CP_DVD_COMPLIANT = 2,
		}
		[AllowDuplicates]
		public enum AM_DVDCOPYSTATE : int32
		{
			AM_DVDCOPYSTATE_INITIALIZE = 0,
			AM_DVDCOPYSTATE_INITIALIZE_TITLE = 1,
			AM_DVDCOPYSTATE_AUTHENTICATION_NOT_REQUIRED = 2,
			AM_DVDCOPYSTATE_AUTHENTICATION_REQUIRED = 3,
			AM_DVDCOPYSTATE_DONE = 4,
		}
		[AllowDuplicates]
		public enum AM_COPY_MACROVISION_LEVEL : int32
		{
			AM_MACROVISION_DISABLED = 0,
			AM_MACROVISION_LEVEL1 = 1,
			AM_MACROVISION_LEVEL2 = 2,
			AM_MACROVISION_LEVEL3 = 3,
		}
		[AllowDuplicates]
		public enum AM_MPEG2Level : int32
		{
			AM_MPEG2Level_Low = 1,
			AM_MPEG2Level_Main = 2,
			AM_MPEG2Level_High1440 = 3,
			AM_MPEG2Level_High = 4,
		}
		[AllowDuplicates]
		public enum AM_MPEG2Profile : int32
		{
			AM_MPEG2Profile_Simple = 1,
			AM_MPEG2Profile_Main = 2,
			AM_MPEG2Profile_SNRScalable = 3,
			AM_MPEG2Profile_SpatiallyScalable = 4,
			AM_MPEG2Profile_High = 5,
		}
		[AllowDuplicates]
		public enum AM_PROPERTY_DVDKARAOKE : int32
		{
			AM_PROPERTY_DVDKARAOKE_ENABLE = 0,
			AM_PROPERTY_DVDKARAOKE_DATA = 1,
		}
		[AllowDuplicates]
		public enum AM_PROPERTY_TS_RATE_CHANGE : int32
		{
			AM_RATE_SimpleRateChange = 1,
			AM_RATE_ExactRateChange = 2,
			AM_RATE_MaxFullDataRate = 3,
			AM_RATE_Step = 4,
			AM_RATE_UseRateVersion = 5,
			AM_RATE_QueryFullFrameRate = 6,
			AM_RATE_QueryLastRateSegPTS = 7,
			AM_RATE_CorrectTS = 8,
			AM_RATE_ReverseMaxFullDataRate = 9,
			AM_RATE_ResetOnTimeDisc = 10,
			AM_RATE_QueryMapping = 11,
		}
		[AllowDuplicates]
		public enum AM_PROPERTY_DVD_RATE_CHANGE : int32
		{
			AM_RATE_ChangeRate = 1,
			AM_RATE_FullDataRateMax = 2,
			AM_RATE_ReverseDecode = 3,
			AM_RATE_DecoderPosition = 4,
			AM_RATE_DecoderVersion = 5,
		}
		[AllowDuplicates]
		public enum DVD_PLAY_DIRECTION : int32
		{
			DVD_DIR_FORWARD = 0,
			DVD_DIR_BACKWARD = 1,
		}
		[AllowDuplicates]
		public enum DVD_ERROR : int32
		{
			DVD_ERROR_Unexpected = 1,
			DVD_ERROR_CopyProtectFail = 2,
			DVD_ERROR_InvalidDVD1_0Disc = 3,
			DVD_ERROR_InvalidDiscRegion = 4,
			DVD_ERROR_LowParentalLevel = 5,
			DVD_ERROR_MacrovisionFail = 6,
			DVD_ERROR_IncompatibleSystemAndDecoderRegions = 7,
			DVD_ERROR_IncompatibleDiscAndDecoderRegions = 8,
			DVD_ERROR_CopyProtectOutputFail = 9,
			DVD_ERROR_CopyProtectOutputNotSupported = 10,
		}
		[AllowDuplicates]
		public enum DVD_WARNING : int32
		{
			DVD_WARNING_InvalidDVD1_0Disc = 1,
			DVD_WARNING_FormatNotSupported = 2,
			DVD_WARNING_IllegalNavCommand = 3,
			DVD_WARNING_Open = 4,
			DVD_WARNING_Seek = 5,
			DVD_WARNING_Read = 6,
		}
		[AllowDuplicates]
		public enum DVD_PB_STOPPED : int32
		{
			DVD_PB_STOPPED_Other = 0,
			DVD_PB_STOPPED_NoBranch = 1,
			DVD_PB_STOPPED_NoFirstPlayDomain = 2,
			DVD_PB_STOPPED_StopCommand = 3,
			DVD_PB_STOPPED_Reset = 4,
			DVD_PB_STOPPED_DiscEjected = 5,
			DVD_PB_STOPPED_IllegalNavCommand = 6,
			DVD_PB_STOPPED_PlayPeriodAutoStop = 7,
			DVD_PB_STOPPED_PlayChapterAutoStop = 8,
			DVD_PB_STOPPED_ParentalFailure = 9,
			DVD_PB_STOPPED_RegionFailure = 10,
			DVD_PB_STOPPED_MacrovisionFailure = 11,
			DVD_PB_STOPPED_DiscReadError = 12,
			DVD_PB_STOPPED_CopyProtectFailure = 13,
			DVD_PB_STOPPED_CopyProtectOutputFailure = 14,
			DVD_PB_STOPPED_CopyProtectOutputNotSupported = 15,
		}
		[AllowDuplicates]
		public enum SNDDEV_ERR : int32
		{
			SNDDEV_ERROR_Open = 1,
			SNDDEV_ERROR_Close = 2,
			SNDDEV_ERROR_GetCaps = 3,
			SNDDEV_ERROR_PrepareHeader = 4,
			SNDDEV_ERROR_UnprepareHeader = 5,
			SNDDEV_ERROR_Reset = 6,
			SNDDEV_ERROR_Restart = 7,
			SNDDEV_ERROR_GetPosition = 8,
			SNDDEV_ERROR_Write = 9,
			SNDDEV_ERROR_Pause = 10,
			SNDDEV_ERROR_Stop = 11,
			SNDDEV_ERROR_Start = 12,
			SNDDEV_ERROR_AddBuffer = 13,
			SNDDEV_ERROR_Query = 14,
		}
		[AllowDuplicates]
		public enum MP_TYPE : int32
		{
			MPT_INT = 0,
			MPT_FLOAT = 1,
			MPT_BOOL = 2,
			MPT_ENUM = 3,
			MPT_MAX = 4,
		}
		[AllowDuplicates]
		public enum MP_CURVE_TYPE : int32
		{
			MP_CURVE_JUMP = 1,
			MP_CURVE_LINEAR = 2,
			MP_CURVE_SQUARE = 4,
			MP_CURVE_INVSQUARE = 8,
			MP_CURVE_SINE = 16,
		}
		[AllowDuplicates]
		public enum DXVA2_SampleFlags : int32
		{
			DXVA2_SampleFlag_Palette_Changed = 1,
			DXVA2_SampleFlag_SrcRect_Changed = 2,
			DXVA2_SampleFlag_DstRect_Changed = 4,
			DXVA2_SampleFlag_ColorData_Changed = 8,
			DXVA2_SampleFlag_PlanarAlpha_Changed = 16,
			DXVA2_SampleFlag_RFF = 65536,
			DXVA2_SampleFlag_TFF = 131072,
			DXVA2_SampleFlag_RFF_TFF_Present = 262144,
			DXVA2_SampleFlagsMask = -65505,
		}
		[AllowDuplicates]
		public enum DXVA2_DestinationFlags : int32
		{
			DXVA2_DestinationFlag_Background_Changed = 1,
			DXVA2_DestinationFlag_TargetRect_Changed = 2,
			DXVA2_DestinationFlag_ColorData_Changed = 4,
			DXVA2_DestinationFlag_Alpha_Changed = 8,
			DXVA2_DestinationFlag_RFF = 65536,
			DXVA2_DestinationFlag_TFF = 131072,
			DXVA2_DestinationFlag_RFF_TFF_Present = 262144,
			DXVA2_DestinationFlagMask = -65521,
		}
		[AllowDuplicates]
		public enum AMPlayListItemFlags : int32
		{
			AMPLAYLISTITEM_CANSKIP = 1,
			AMPLAYLISTITEM_CANBIND = 2,
		}
		[AllowDuplicates]
		public enum AMPlayListFlags : int32
		{
			AMPLAYLIST_STARTINSCANMODE = 1,
			AMPLAYLIST_FORCEBANNER = 2,
		}
		[AllowDuplicates]
		public enum AMPlayListEventFlags : int32
		{
			AMPLAYLISTEVENT_RESUME = 0,
			AMPLAYLISTEVENT_BREAK = 1,
			AMPLAYLISTEVENT_NEXT = 2,
			AMPLAYLISTEVENT_MASK = 15,
			AMPLAYLISTEVENT_REFRESH = 16,
		}
		[AllowDuplicates]
		public enum DISPID_TUNER : int32
		{
			DISPID_TUNER_TS_UNIQUENAME = 1,
			DISPID_TUNER_TS_FRIENDLYNAME = 2,
			DISPID_TUNER_TS_CLSID = 3,
			DISPID_TUNER_TS_NETWORKTYPE = 4,
			DISPID_TUNER_TS__NETWORKTYPE = 5,
			DISPID_TUNER_TS_CREATETUNEREQUEST = 6,
			DISPID_TUNER_TS_ENUMCATEGORYGUIDS = 7,
			DISPID_TUNER_TS_ENUMDEVICEMONIKERS = 8,
			DISPID_TUNER_TS_DEFAULTPREFERREDCOMPONENTTYPES = 9,
			DISPID_TUNER_TS_FREQMAP = 10,
			DISPID_TUNER_TS_DEFLOCATOR = 11,
			DISPID_TUNER_TS_CLONE = 12,
			DISPID_TUNER_TR_TUNINGSPACE = 1,
			DISPID_TUNER_TR_COMPONENTS = 2,
			DISPID_TUNER_TR_CLONE = 3,
			DISPID_TUNER_TR_LOCATOR = 4,
			DISPID_TUNER_CT_CATEGORY = 1,
			DISPID_TUNER_CT_MEDIAMAJORTYPE = 2,
			DISPID_TUNER_CT__MEDIAMAJORTYPE = 3,
			DISPID_TUNER_CT_MEDIASUBTYPE = 4,
			DISPID_TUNER_CT__MEDIASUBTYPE = 5,
			DISPID_TUNER_CT_MEDIAFORMATTYPE = 6,
			DISPID_TUNER_CT__MEDIAFORMATTYPE = 7,
			DISPID_TUNER_CT_MEDIATYPE = 8,
			DISPID_TUNER_CT_CLONE = 9,
			DISPID_TUNER_LCT_LANGID = 100,
			DISPID_TUNER_MP2CT_TYPE = 200,
			DISPID_TUNER_ATSCCT_FLAGS = 300,
			DISPID_TUNER_L_CARRFREQ = 1,
			DISPID_TUNER_L_INNERFECMETHOD = 2,
			DISPID_TUNER_L_INNERFECRATE = 3,
			DISPID_TUNER_L_OUTERFECMETHOD = 4,
			DISPID_TUNER_L_OUTERFECRATE = 5,
			DISPID_TUNER_L_MOD = 6,
			DISPID_TUNER_L_SYMRATE = 7,
			DISPID_TUNER_L_CLONE = 8,
			DISPID_TUNER_L_ATSC_PHYS_CHANNEL = 201,
			DISPID_TUNER_L_ATSC_TSID = 202,
			DISPID_TUNER_L_ATSC_MP2_PROGNO = 203,
			DISPID_TUNER_L_DVBT_BANDWIDTH = 301,
			DISPID_TUNER_L_DVBT_LPINNERFECMETHOD = 302,
			DISPID_TUNER_L_DVBT_LPINNERFECRATE = 303,
			DISPID_TUNER_L_DVBT_GUARDINTERVAL = 304,
			DISPID_TUNER_L_DVBT_HALPHA = 305,
			DISPID_TUNER_L_DVBT_TRANSMISSIONMODE = 306,
			DISPID_TUNER_L_DVBT_INUSE = 307,
			DISPID_TUNER_L_DVBT2_PHYSICALLAYERPIPEID = 351,
			DISPID_TUNER_L_DVBS_POLARISATION = 401,
			DISPID_TUNER_L_DVBS_WEST = 402,
			DISPID_TUNER_L_DVBS_ORBITAL = 403,
			DISPID_TUNER_L_DVBS_AZIMUTH = 404,
			DISPID_TUNER_L_DVBS_ELEVATION = 405,
			DISPID_TUNER_L_DVBS2_DISEQ_LNB_SOURCE = 406,
			DISPID_TUNER_TS_DVBS2_LOW_OSC_FREQ_OVERRIDE = 407,
			DISPID_TUNER_TS_DVBS2_HI_OSC_FREQ_OVERRIDE = 408,
			DISPID_TUNER_TS_DVBS2_LNB_SWITCH_FREQ_OVERRIDE = 409,
			DISPID_TUNER_TS_DVBS2_SPECTRAL_INVERSION_OVERRIDE = 410,
			DISPID_TUNER_L_DVBS2_ROLLOFF = 411,
			DISPID_TUNER_L_DVBS2_PILOT = 412,
			DISPID_TUNER_L_ANALOG_STANDARD = 601,
			DISPID_TUNER_L_DTV_O_MAJOR_CHANNEL = 701,
			DISPID_TUNER_C_TYPE = 1,
			DISPID_TUNER_C_STATUS = 2,
			DISPID_TUNER_C_LANGID = 3,
			DISPID_TUNER_C_DESCRIPTION = 4,
			DISPID_TUNER_C_CLONE = 5,
			DISPID_TUNER_C_MP2_PID = 101,
			DISPID_TUNER_C_MP2_PCRPID = 102,
			DISPID_TUNER_C_MP2_PROGNO = 103,
			DISPID_TUNER_C_ANALOG_AUDIO = 201,
			DISPID_TUNER_TS_DVB_SYSTEMTYPE = 101,
			DISPID_TUNER_TS_DVB2_NETWORK_ID = 102,
			DISPID_TUNER_TS_DVBS_LOW_OSC_FREQ = 1001,
			DISPID_TUNER_TS_DVBS_HI_OSC_FREQ = 1002,
			DISPID_TUNER_TS_DVBS_LNB_SWITCH_FREQ = 1003,
			DISPID_TUNER_TS_DVBS_INPUT_RANGE = 1004,
			DISPID_TUNER_TS_DVBS_SPECTRAL_INVERSION = 1005,
			DISPID_TUNER_TS_AR_MINFREQUENCY = 101,
			DISPID_TUNER_TS_AR_MAXFREQUENCY = 102,
			DISPID_TUNER_TS_AR_STEP = 103,
			DISPID_TUNER_TS_AR_COUNTRYCODE = 104,
			DISPID_TUNER_TS_AUX_COUNTRYCODE = 101,
			DISPID_TUNER_TS_ATV_MINCHANNEL = 101,
			DISPID_TUNER_TS_ATV_MAXCHANNEL = 102,
			DISPID_TUNER_TS_ATV_INPUTTYPE = 103,
			DISPID_TUNER_TS_ATV_COUNTRYCODE = 104,
			DISPID_TUNER_TS_ATSC_MINMINORCHANNEL = 201,
			DISPID_TUNER_TS_ATSC_MAXMINORCHANNEL = 202,
			DISPID_TUNER_TS_ATSC_MINPHYSCHANNEL = 203,
			DISPID_TUNER_TS_ATSC_MAXPHYSCHANNEL = 204,
			DISPID_TUNER_TS_DC_MINMAJORCHANNEL = 301,
			DISPID_TUNER_TS_DC_MAXMAJORCHANNEL = 302,
			DISPID_TUNER_TS_DC_MINSOURCEID = 303,
			DISPID_TUNER_TS_DC_MAXSOURCEID = 304,
			DISPID_CHTUNER_ATVAC_CHANNEL = 101,
			DISPID_CHTUNER_ATVDC_SYSTEM = 101,
			DISPID_CHTUNER_ATVDC_CONTENT = 102,
			DISPID_CHTUNER_CIDTR_CHANNELID = 101,
			DISPID_CHTUNER_CTR_CHANNEL = 101,
			DISPID_CHTUNER_ACTR_MINOR_CHANNEL = 201,
			DISPID_CHTUNER_DCTR_MAJOR_CHANNEL = 301,
			DISPID_CHTUNER_DCTR_SRCID = 302,
			DISPID_DVBTUNER_DVBC_ATTRIBUTESVALID = 101,
			DISPID_DVBTUNER_DVBC_PID = 102,
			DISPID_DVBTUNER_DVBC_TAG = 103,
			DISPID_DVBTUNER_DVBC_COMPONENTTYPE = 104,
			DISPID_DVBTUNER_ONID = 101,
			DISPID_DVBTUNER_TSID = 102,
			DISPID_DVBTUNER_SID = 103,
			DISPID_MP2TUNER_TSID = 101,
			DISPID_MP2TUNER_PROGNO = 102,
			DISPID_MP2TUNERFACTORY_CREATETUNEREQUEST = 1,
		}
		[AllowDuplicates]
		public enum EnTvRat_System : int32
		{
			MPAA = 0,
			US_TV = 1,
			Canadian_English = 2,
			Canadian_French = 3,
			Reserved4 = 4,
			System5 = 5,
			System6 = 6,
			Reserved7 = 7,
			PBDA = 8,
			AgeBased = 9,
			TvRat_kSystems = 10,
			TvRat_SystemDontKnow = 255,
		}
		[AllowDuplicates]
		public enum EnTvRat_GenericLevel : int32
		{
			TvRat_0 = 0,
			TvRat_1 = 1,
			TvRat_2 = 2,
			TvRat_3 = 3,
			TvRat_4 = 4,
			TvRat_5 = 5,
			TvRat_6 = 6,
			TvRat_7 = 7,
			TvRat_8 = 8,
			TvRat_9 = 9,
			TvRat_10 = 10,
			TvRat_11 = 11,
			TvRat_12 = 12,
			TvRat_13 = 13,
			TvRat_14 = 14,
			TvRat_15 = 15,
			TvRat_16 = 16,
			TvRat_17 = 17,
			TvRat_18 = 18,
			TvRat_19 = 19,
			TvRat_20 = 20,
			TvRat_21 = 21,
			TvRat_kLevels = 22,
			TvRat_Unblock = -1,
			TvRat_LevelDontKnow = 255,
		}
		[AllowDuplicates]
		public enum EnTvRat_MPAA : int32
		{
			MPAA_NotApplicable = 0,
			MPAA_G = 1,
			MPAA_PG = 2,
			MPAA_PG13 = 3,
			MPAA_R = 4,
			MPAA_NC17 = 5,
			MPAA_X = 6,
			MPAA_NotRated = 7,
		}
		[AllowDuplicates]
		public enum EnTvRat_US_TV : int32
		{
			US_TV_None = 0,
			US_TV_Y = 1,
			US_TV_Y7 = 2,
			US_TV_G = 3,
			US_TV_PG = 4,
			US_TV_14 = 5,
			US_TV_MA = 6,
			US_TV_None7 = 7,
		}
		[AllowDuplicates]
		public enum EnTvRat_CAE_TV : int32
		{
			CAE_TV_Exempt = 0,
			CAE_TV_C = 1,
			CAE_TV_C8 = 2,
			CAE_TV_G = 3,
			CAE_TV_PG = 4,
			CAE_TV_14 = 5,
			CAE_TV_18 = 6,
			CAE_TV_Reserved = 7,
		}
		[AllowDuplicates]
		public enum EnTvRat_CAF_TV : int32
		{
			CAF_TV_Exempt = 0,
			CAF_TV_G = 1,
			CAF_TV_8 = 2,
			CAF_TV_13 = 3,
			CAF_TV_16 = 4,
			CAF_TV_18 = 5,
			CAF_TV_Reserved6 = 6,
			CAF_TV_Reserved = 7,
		}
		[AllowDuplicates]
		public enum BfEnTvRat_GenericAttributes : int32
		{
			BfAttrNone = 0,
			BfIsBlocked = 1,
			BfIsAttr_1 = 2,
			BfIsAttr_2 = 4,
			BfIsAttr_3 = 8,
			BfIsAttr_4 = 16,
			BfIsAttr_5 = 32,
			BfIsAttr_6 = 64,
			BfIsAttr_7 = 128,
			BfValidAttrSubmask = 255,
		}
		[AllowDuplicates]
		public enum BfEnTvRat_Attributes_US_TV : int32
		{
			US_TV_IsBlocked = 1,
			US_TV_IsViolent = 2,
			US_TV_IsSexualSituation = 4,
			US_TV_IsAdultLanguage = 8,
			US_TV_IsSexuallySuggestiveDialog = 16,
			US_TV_ValidAttrSubmask = 31,
		}
		[AllowDuplicates]
		public enum BfEnTvRat_Attributes_MPAA : int32
		{
			MPAA_IsBlocked = 1,
			MPAA_ValidAttrSubmask = 1,
		}
		[AllowDuplicates]
		public enum BfEnTvRat_Attributes_CAE_TV : int32
		{
			CAE_IsBlocked = 1,
			CAE_ValidAttrSubmask = 1,
		}
		[AllowDuplicates]
		public enum BfEnTvRat_Attributes_CAF_TV : int32
		{
			CAF_IsBlocked = 1,
			CAF_ValidAttrSubmask = 1,
		}
		[AllowDuplicates]
		public enum FormatNotSupportedEvents : int32
		{
			FORMATNOTSUPPORTED_CLEAR = 0,
			FORMATNOTSUPPORTED_NOTSUPPORTED = 1,
		}
		[AllowDuplicates]
		public enum ProtType : int32
		{
			PROT_COPY_FREE = 1,
			PROT_COPY_ONCE = 2,
			PROT_COPY_NEVER = 3,
			PROT_COPY_NEVER_REALLY = 4,
			PROT_COPY_NO_MORE = 5,
			PROT_COPY_FREE_CIT = 6,
			PROT_COPY_BF = 7,
			PROT_COPY_CN_RECORDING_STOP = 8,
			PROT_COPY_FREE_SECURE = 9,
			PROT_COPY_INVALID = 50,
		}
		[AllowDuplicates]
		public enum EncDecEvents : int32
		{
			ENCDEC_CPEVENT = 0,
			ENCDEC_RECORDING_STATUS = 1,
		}
		[AllowDuplicates]
		public enum CPRecordingStatus : int32
		{
			RECORDING_STOPPED = 0,
			RECORDING_STARTED = 1,
		}
		[AllowDuplicates]
		public enum CPEventBitShift : int32
		{
			CPEVENT_BITSHIFT_RATINGS = 0,
			CPEVENT_BITSHIFT_COPP = 1,
			CPEVENT_BITSHIFT_LICENSE = 2,
			CPEVENT_BITSHIFT_ROLLBACK = 3,
			CPEVENT_BITSHIFT_SAC = 4,
			CPEVENT_BITSHIFT_DOWNRES = 5,
			CPEVENT_BITSHIFT_STUBLIB = 6,
			CPEVENT_BITSHIFT_UNTRUSTEDGRAPH = 7,
			CPEVENT_BITSHIFT_PENDING_CERTIFICATE = 8,
			CPEVENT_BITSHIFT_NO_PLAYREADY = 9,
		}
		[AllowDuplicates]
		public enum CPEvents : int32
		{
			CPEVENT_NONE = 0,
			CPEVENT_RATINGS = 1,
			CPEVENT_COPP = 2,
			CPEVENT_LICENSE = 3,
			CPEVENT_ROLLBACK = 4,
			CPEVENT_SAC = 5,
			CPEVENT_DOWNRES = 6,
			CPEVENT_STUBLIB = 7,
			CPEVENT_UNTRUSTEDGRAPH = 8,
			CPEVENT_PROTECTWINDOWED = 9,
		}
		[AllowDuplicates]
		public enum RevokedComponent : int32
		{
			REVOKED_COPP = 0,
			REVOKED_SAC = 1,
			REVOKED_APP_STUB = 2,
			REVOKED_SECURE_PIPELINE = 3,
			REVOKED_MAX_TYPES = 4,
		}
		[AllowDuplicates]
		public enum EnTag_Mode : int32
		{
			EnTag_Remove = 0,
			EnTag_Once = 1,
			EnTag_Repeat = 2,
		}
		[AllowDuplicates]
		public enum COPPEventBlockReason : int32
		{
			COPP_Unknown = -1,
			COPP_BadDriver = 0,
			COPP_NoCardHDCPSupport = 1,
			COPP_NoMonitorHDCPSupport = 2,
			COPP_BadCertificate = 3,
			COPP_InvalidBusProtection = 4,
			COPP_AeroGlassOff = 5,
			COPP_RogueApp = 6,
			COPP_ForbiddenVideo = 7,
			COPP_Activate = 8,
			COPP_DigitalAudioUnprotected = 9,
		}
		[AllowDuplicates]
		public enum LicenseEventBlockReason : int32
		{
			LIC_BadLicense = 0,
			LIC_NeedIndiv = 1,
			LIC_Expired = 2,
			LIC_NeedActivation = 3,
			LIC_ExtenderBlocked = 4,
		}
		[AllowDuplicates]
		public enum DownResEventParam : int32
		{
			DOWNRES_Always = 0,
			DOWNRES_InWindowOnly = 1,
			DOWNRES_Undefined = 2,
		}
		[AllowDuplicates]
		public enum SegDispidList : int32
		{
			dispidName = 0,
			dispidStatus = 1,
			dispidDevImageSourceWidth = 2,
			dispidDevImageSourceHeight = 3,
			dispidDevCountryCode = 4,
			dispidDevOverScan = 5,
			dispidSegment = 6,
			dispidDevVolume = 7,
			dispidDevBalance = 8,
			dispidDevPower = 9,
			dispidTuneChan = 10,
			dispidDevVideoSubchannel = 11,
			dispidDevAudioSubchannel = 12,
			dispidChannelAvailable = 13,
			dispidDevVideoFrequency = 14,
			dispidDevAudioFrequency = 15,
			dispidCount = 16,
			dispidDevFileName = 17,
			dispidVisible = 18,
			dispidOwner = 19,
			dispidMessageDrain = 20,
			dispidViewable = 21,
			dispidDevView = 22,
			dispidKSCat = 23,
			dispidCLSID = 24,
			dispid_KSCat = 25,
			dispid_CLSID = 26,
			dispidTune = 27,
			dispidTS = 28,
			dispidDevSAP = 29,
			dispidClip = 30,
			dispidRequestedClipRect = 31,
			dispidClippedSourceRect = 32,
			dispidAvailableSourceRect = 33,
			dispidMediaPosition = 34,
			dispidDevRun = 35,
			dispidDevPause = 36,
			dispidDevStop = 37,
			dispidCCEnable = 38,
			dispidDevStep = 39,
			dispidDevCanStep = 40,
			dispidSourceSize = 41,
			dispid_playtitle = 42,
			dispid_playchapterintitle = 43,
			dispid_playchapter = 44,
			dispid_playchaptersautostop = 45,
			dispid_playattime = 46,
			dispid_playattimeintitle = 47,
			dispid_playperiodintitleautostop = 48,
			dispid_replaychapter = 49,
			dispid_playprevchapter = 50,
			dispid_playnextchapter = 51,
			dispid_playforwards = 52,
			dispid_playbackwards = 53,
			dispid_stilloff = 54,
			dispid_audiolanguage = 55,
			dispid_showmenu = 56,
			dispid_resume = 57,
			dispid_returnfromsubmenu = 58,
			dispid_buttonsavailable = 59,
			dispid_currentbutton = 60,
			dispid_SelectAndActivateButton = 61,
			dispid_ActivateButton = 62,
			dispid_SelectRightButton = 63,
			dispid_SelectLeftButton = 64,
			dispid_SelectLowerButton = 65,
			dispid_SelectUpperButton = 66,
			dispid_ActivateAtPosition = 67,
			dispid_SelectAtPosition = 68,
			dispid_ButtonAtPosition = 69,
			dispid_NumberOfChapters = 70,
			dispid_TotalTitleTime = 71,
			dispid_TitlesAvailable = 72,
			dispid_VolumesAvailable = 73,
			dispid_CurrentVolume = 74,
			dispid_CurrentDiscSide = 75,
			dispid_CurrentDomain = 76,
			dispid_CurrentChapter = 77,
			dispid_CurrentTitle = 78,
			dispid_CurrentTime = 79,
			dispid_FramesPerSecond = 80,
			dispid_DVDTimeCode2bstr = 81,
			dispid_DVDDirectory = 82,
			dispid_IsSubpictureStreamEnabled = 83,
			dispid_IsAudioStreamEnabled = 84,
			dispid_CurrentSubpictureStream = 85,
			dispid_SubpictureLanguage = 86,
			dispid_CurrentAudioStream = 87,
			dispid_AudioStreamsAvailable = 88,
			dispid_AnglesAvailable = 89,
			dispid_CurrentAngle = 90,
			dispid_CCActive = 91,
			dispid_CurrentCCService = 92,
			dispid_SubpictureStreamsAvailable = 93,
			dispid_SubpictureOn = 94,
			dispid_DVDUniqueID = 95,
			dispid_EnableResetOnStop = 96,
			dispid_AcceptParentalLevelChange = 97,
			dispid_NotifyParentalLevelChange = 98,
			dispid_SelectParentalCountry = 99,
			dispid_SelectParentalLevel = 100,
			dispid_TitleParentalLevels = 101,
			dispid_PlayerParentalCountry = 102,
			dispid_PlayerParentalLevel = 103,
			dispid_Eject = 104,
			dispid_UOPValid = 105,
			dispid_SPRM = 106,
			dispid_GPRM = 107,
			dispid_DVDTextStringType = 108,
			dispid_DVDTextString = 109,
			dispid_DVDTextNumberOfStrings = 110,
			dispid_DVDTextNumberOfLanguages = 111,
			dispid_DVDTextLanguageLCID = 112,
			dispid_RegionChange = 113,
			dispid_DVDAdm = 114,
			dispid_DeleteBookmark = 115,
			dispid_RestoreBookmark = 116,
			dispid_SaveBookmark = 117,
			dispid_SelectDefaultAudioLanguage = 118,
			dispid_SelectDefaultSubpictureLanguage = 119,
			dispid_PreferredSubpictureStream = 120,
			dispid_DefaultMenuLanguage = 121,
			dispid_DefaultSubpictureLanguage = 122,
			dispid_DefaultAudioLanguage = 123,
			dispid_DefaultSubpictureLanguageExt = 124,
			dispid_DefaultAudioLanguageExt = 125,
			dispid_LanguageFromLCID = 126,
			dispid_KaraokeAudioPresentationMode = 127,
			dispid_KaraokeChannelContent = 128,
			dispid_KaraokeChannelAssignment = 129,
			dispid_RestorePreferredSettings = 130,
			dispid_ButtonRect = 131,
			dispid_DVDScreenInMouseCoordinates = 132,
			dispid_CustomCompositorClass = 133,
			dispidCustomCompositorClass = 134,
			dispid_CustomCompositor = 135,
			dispidMixerBitmap = 136,
			dispid_MixerBitmap = 137,
			dispidMixerBitmapOpacity = 138,
			dispidMixerBitmapRect = 139,
			dispidSetupMixerBitmap = 140,
			dispidUsingOverlay = 141,
			dispidDisplayChange = 142,
			dispidRePaint = 143,
			dispid_IsEqualDevice = 144,
			dispidrate = 145,
			dispidposition = 146,
			dispidpositionmode = 147,
			dispidlength = 148,
			dispidChangePassword = 149,
			dispidSaveParentalLevel = 150,
			dispidSaveParentalCountry = 151,
			dispidConfirmPassword = 152,
			dispidGetParentalLevel = 153,
			dispidGetParentalCountry = 154,
			dispidDefaultAudioLCID = 155,
			dispidDefaultSubpictureLCID = 156,
			dispidDefaultMenuLCID = 157,
			dispidBookmarkOnStop = 158,
			dispidMaxVidRect = 159,
			dispidMinVidRect = 160,
			dispidCapture = 161,
			dispid_DecimateInput = 162,
			dispidAlloctor = 163,
			dispid_Allocator = 164,
			dispidAllocPresentID = 165,
			dispidSetAllocator = 166,
			dispid_SetAllocator = 167,
			dispidStreamBufferSinkName = 168,
			dispidStreamBufferSourceName = 169,
			dispidStreamBufferContentRecording = 170,
			dispidStreamBufferReferenceRecording = 171,
			dispidstarttime = 172,
			dispidstoptime = 173,
			dispidrecordingstopped = 174,
			dispidrecordingstarted = 175,
			dispidNameSetLock = 176,
			dispidrecordingtype = 177,
			dispidstart = 178,
			dispidRecordingAttribute = 179,
			dispid_RecordingAttribute = 180,
			dispidSBEConfigure = 181,
			dispid_CurrentRatings = 182,
			dispid_MaxRatingsLevel = 183,
			dispid_audioencoderint = 184,
			dispid_videoencoderint = 185,
			dispidService = 186,
			dispid_BlockUnrated = 187,
			dispid_UnratedDelay = 188,
			dispid_SuppressEffects = 189,
			dispidsbesource = 190,
			dispidSetSinkFilter = 191,
			dispid_SinkStreams = 192,
			dispidTVFormats = 193,
			dispidModes = 194,
			dispidAuxInputs = 195,
			dispidTeleTextFilter = 196,
			dispid_channelchangeint = 197,
			dispidUnlockProfile = 198,
			dispid_AddFilter = 199,
			dispidSetMinSeek = 200,
			dispidRateEx = 201,
			dispidaudiocounter = 202,
			dispidvideocounter = 203,
			dispidcccounter = 204,
			dispidwstcounter = 205,
			dispid_audiocounter = 206,
			dispid_videocounter = 207,
			dispid_cccounter = 208,
			dispid_wstcounter = 209,
			dispidaudioanalysis = 210,
			dispidvideoanalysis = 211,
			dispiddataanalysis = 212,
			dispidaudio_analysis = 213,
			dispidvideo_analysis = 214,
			dispiddata_analysis = 215,
			dispid_resetFilterList = 216,
			dispidDevicePath = 217,
			dispid_SourceFilter = 218,
			dispid__SourceFilter = 219,
			dispidUserEvent = 220,
			dispid_Bookmark = 221,
			LastReservedDeviceDispid = 16383,
		}
		[AllowDuplicates]
		public enum SegEventidList : int32
		{
			eventidStateChange = 0,
			eventidOnTuneChanged = 1,
			eventidEndOfMedia = 2,
			eventidDVDNotify = 3,
			eventidPlayForwards = 4,
			eventidPlayBackwards = 5,
			eventidShowMenu = 6,
			eventidResume = 7,
			eventidSelectOrActivateButton = 8,
			eventidStillOff = 9,
			eventidPauseOn = 10,
			eventidChangeCurrentAudioStream = 11,
			eventidChangeCurrentSubpictureStream = 12,
			eventidChangeCurrentAngle = 13,
			eventidPlayAtTimeInTitle = 14,
			eventidPlayAtTime = 15,
			eventidPlayChapterInTitle = 16,
			eventidPlayChapter = 17,
			eventidReplayChapter = 18,
			eventidPlayNextChapter = 19,
			eventidStop = 20,
			eventidReturnFromSubmenu = 21,
			eventidPlayTitle = 22,
			eventidPlayPrevChapter = 23,
			eventidChangeKaraokePresMode = 24,
			eventidChangeVideoPresMode = 25,
			eventidOverlayUnavailable = 26,
			eventidSinkCertificateFailure = 27,
			eventidSinkCertificateSuccess = 28,
			eventidSourceCertificateFailure = 29,
			eventidSourceCertificateSuccess = 30,
			eventidRatingsBlocked = 31,
			eventidRatingsUnlocked = 32,
			eventidRatingsChanged = 33,
			eventidWriteFailure = 34,
			eventidTimeHole = 35,
			eventidStaleDataRead = 36,
			eventidContentBecomingStale = 37,
			eventidStaleFileDeleted = 38,
			eventidEncryptionOn = 39,
			eventidEncryptionOff = 40,
			eventidRateChange = 41,
			eventidLicenseChange = 42,
			eventidCOPPBlocked = 43,
			eventidCOPPUnblocked = 44,
			dispidlicenseerrorcode = 45,
			eventidBroadcastEvent = 46,
			eventidBroadcastEventEx = 47,
			eventidContentPrimarilyAudio = 48,
			dispidAVDecAudioDualMonoEvent = 49,
			dispidAVAudioSampleRateEvent = 50,
			dispidAVAudioChannelConfigEvent = 51,
			dispidAVAudioChannelCountEvent = 52,
			dispidAVDecCommonMeanBitRateEvent = 53,
			dispidAVDDSurroundModeEvent = 54,
			dispidAVDecCommonInputFormatEvent = 55,
			dispidAVDecCommonOutputFormatEvent = 56,
			eventidWriteFailureClear = 57,
			LastReservedDeviceEvent = 16383,
		}
		[AllowDuplicates]
		public enum PositionModeList : int32
		{
			FrameMode = 0,
			TenthsSecondsMode = 1,
		}
		[AllowDuplicates]
		public enum RecordingType : int32
		{
			CONTENT = 0,
			REFERENCE = 1,
		}
		[AllowDuplicates]
		public enum MSVidCCService : int32
		{
			None = 0,
			Caption1 = 1,
			Caption2 = 2,
			Text1 = 3,
			Text2 = 4,
			XDS = 5,
		}
		[AllowDuplicates]
		public enum MSVidSinkStreams : int32
		{
			MSVidSink_Video = 1,
			MSVidSink_Audio = 2,
			MSVidSink_Other = 4,
		}
		[AllowDuplicates]
		public enum MSVidSegmentType : int32
		{
			MSVidSEG_SOURCE = 0,
			MSVidSEG_XFORM = 1,
			MSVidSEG_DEST = 2,
		}
		[AllowDuplicates]
		public enum MSVidCtlButtonstate : int32
		{
			MSVIDCTL_LEFT_BUTTON = 1,
			MSVIDCTL_RIGHT_BUTTON = 2,
			MSVIDCTL_MIDDLE_BUTTON = 4,
			MSVIDCTL_X_BUTTON1 = 8,
			MSVIDCTL_X_BUTTON2 = 16,
			MSVIDCTL_SHIFT = 1,
			MSVIDCTL_CTRL = 2,
			MSVIDCTL_ALT = 4,
		}
		[AllowDuplicates]
		public enum DVDMenuIDConstants : int32
		{
			dvdMenu_Title = 2,
			dvdMenu_Root = 3,
			dvdMenu_Subpicture = 4,
			dvdMenu_Audio = 5,
			dvdMenu_Angle = 6,
			dvdMenu_Chapter = 7,
		}
		[AllowDuplicates]
		public enum DVDFilterState : int32
		{
			dvdState_Undefined = -2,
			dvdState_Unitialized = -1,
			dvdState_Stopped = 0,
			dvdState_Paused = 1,
			dvdState_Running = 2,
		}
		[AllowDuplicates]
		public enum DVDTextStringType : int32
		{
			dvdStruct_Volume = 1,
			dvdStruct_Title = 2,
			dvdStruct_ParentalID = 3,
			dvdStruct_PartOfTitle = 4,
			dvdStruct_Cell = 5,
			dvdStream_Audio = 16,
			dvdStream_Subpicture = 17,
			dvdStream_Angle = 18,
			dvdChannel_Audio = 32,
			dvdGeneral_Name = 48,
			dvdGeneral_Comments = 49,
			dvdTitle_Series = 56,
			dvdTitle_Movie = 57,
			dvdTitle_Video = 58,
			dvdTitle_Album = 59,
			dvdTitle_Song = 60,
			dvdTitle_Other = 63,
			dvdTitle_Sub_Series = 64,
			dvdTitle_Sub_Movie = 65,
			dvdTitle_Sub_Video = 66,
			dvdTitle_Sub_Album = 67,
			dvdTitle_Sub_Song = 68,
			dvdTitle_Sub_Other = 71,
			dvdTitle_Orig_Series = 72,
			dvdTitle_Orig_Movie = 73,
			dvdTitle_Orig_Video = 74,
			dvdTitle_Orig_Album = 75,
			dvdTitle_Orig_Song = 76,
			dvdTitle_Orig_Other = 79,
			dvdOther_Scene = 80,
			dvdOther_Cut = 81,
			dvdOther_Take = 82,
		}
		[AllowDuplicates]
		public enum DVDSPExt : int32
		{
			dvdSPExt_NotSpecified = 0,
			dvdSPExt_Caption_Normal = 1,
			dvdSPExt_Caption_Big = 2,
			dvdSPExt_Caption_Children = 3,
			dvdSPExt_CC_Normal = 5,
			dvdSPExt_CC_Big = 6,
			dvdSPExt_CC_Children = 7,
			dvdSPExt_Forced = 9,
			dvdSPExt_DirectorComments_Normal = 13,
			dvdSPExt_DirectorComments_Big = 14,
			dvdSPExt_DirectorComments_Children = 15,
		}
		[AllowDuplicates]
		public enum SourceSizeList : int32
		{
			sslFullSize = 0,
			sslClipByOverScan = 1,
			sslClipByClipRect = 2,
		}
		[AllowDuplicates]
		public enum MSViddispidList : int32
		{
			dispidInputs = 0,
			dispidOutputs = 1,
			dispid_Inputs = 2,
			dispid_Outputs = 3,
			dispidVideoRenderers = 4,
			dispidAudioRenderers = 5,
			dispidFeatures = 6,
			dispidInput = 7,
			dispidOutput = 8,
			dispidVideoRenderer = 9,
			dispidAudioRenderer = 10,
			dispidSelectedFeatures = 11,
			dispidView = 12,
			dispidBuild = 13,
			dispidPause = 14,
			dispidRun = 15,
			dispidStop = 16,
			dispidDecompose = 17,
			dispidDisplaySize = 18,
			dispidMaintainAspectRatio = 19,
			dispidColorKey = 20,
			dispidStateChange = 21,
			dispidgetState = 22,
			dispidunbind = 23,
			dispidbind = 24,
			dispidDisableVideo = 25,
			dispidDisableAudio = 26,
			dispidViewNext = 27,
			dispidServiceP = 28,
		}
		[AllowDuplicates]
		public enum DisplaySizeList : int32
		{
			dslDefaultSize = 0,
			dslSourceSize = 0,
			dslHalfSourceSize = 1,
			dslDoubleSourceSize = 2,
			dslFullScreen = 3,
			dslHalfScreen = 4,
			dslQuarterScreen = 5,
			dslSixteenthScreen = 6,
		}
		[AllowDuplicates]
		public enum MSVidCtlStateList : int32
		{
			STATE_UNBUILT = -1,
			STATE_STOP = 0,
			STATE_PAUSE = 1,
			STATE_PLAY = 2,
		}
		[AllowDuplicates]
		public enum RECORDING_TYPE : int32
		{
			RECORDING_TYPE_CONTENT = 0,
			RECORDING_TYPE_REFERENCE = 1,
		}
		[AllowDuplicates]
		public enum STREAMBUFFER_ATTR_DATATYPE : int32
		{
			STREAMBUFFER_TYPE_DWORD = 0,
			STREAMBUFFER_TYPE_STRING = 1,
			STREAMBUFFER_TYPE_BINARY = 2,
			STREAMBUFFER_TYPE_BOOL = 3,
			STREAMBUFFER_TYPE_QWORD = 4,
			STREAMBUFFER_TYPE_WORD = 5,
			STREAMBUFFER_TYPE_GUID = 6,
		}
		[AllowDuplicates]
		public enum CROSSBAR_DEFAULT_FLAGS : int32
		{
			DEF_MODE_PROFILE = 1,
			DEF_MODE_STREAMS = 2,
		}
		[AllowDuplicates]
		public enum MPEG_CURRENT_NEXT_BIT : int32
		{
			MPEG_SECTION_IS_NEXT = 0,
			MPEG_SECTION_IS_CURRENT = 1,
		}
		[AllowDuplicates]
		public enum MPEG_CONTEXT_TYPE : int32
		{
			MPEG_CONTEXT_BCS_DEMUX = 0,
			MPEG_CONTEXT_WINSOCK = 1,
		}
		[AllowDuplicates]
		public enum MPEG_REQUEST_TYPE : int32
		{
			MPEG_RQST_UNKNOWN = 0,
			MPEG_RQST_GET_SECTION = 1,
			MPEG_RQST_GET_SECTION_ASYNC = 2,
			MPEG_RQST_GET_TABLE = 3,
			MPEG_RQST_GET_TABLE_ASYNC = 4,
			MPEG_RQST_GET_SECTIONS_STREAM = 5,
			MPEG_RQST_GET_PES_STREAM = 6,
			MPEG_RQST_GET_TS_STREAM = 7,
			MPEG_RQST_START_MPE_STREAM = 8,
		}
		[AllowDuplicates]
		public enum VA_VIDEO_FORMAT : int32
		{
			VA_VIDEO_COMPONENT = 0,
			VA_VIDEO_PAL = 1,
			VA_VIDEO_NTSC = 2,
			VA_VIDEO_SECAM = 3,
			VA_VIDEO_MAC = 4,
			VA_VIDEO_UNSPECIFIED = 5,
		}
		[AllowDuplicates]
		public enum VA_COLOR_PRIMARIES : int32
		{
			VA_PRIMARIES_ITU_R_BT_709 = 1,
			VA_PRIMARIES_UNSPECIFIED = 2,
			VA_PRIMARIES_ITU_R_BT_470_SYSTEM_M = 4,
			VA_PRIMARIES_ITU_R_BT_470_SYSTEM_B_G = 5,
			VA_PRIMARIES_SMPTE_170M = 6,
			VA_PRIMARIES_SMPTE_240M = 7,
			VA_PRIMARIES_H264_GENERIC_FILM = 8,
		}
		[AllowDuplicates]
		public enum VA_TRANSFER_CHARACTERISTICS : int32
		{
			VA_TRANSFER_CHARACTERISTICS_ITU_R_BT_709 = 1,
			VA_TRANSFER_CHARACTERISTICS_UNSPECIFIED = 2,
			VA_TRANSFER_CHARACTERISTICS_ITU_R_BT_470_SYSTEM_M = 4,
			VA_TRANSFER_CHARACTERISTICS_ITU_R_BT_470_SYSTEM_B_G = 5,
			VA_TRANSFER_CHARACTERISTICS_SMPTE_170M = 6,
			VA_TRANSFER_CHARACTERISTICS_SMPTE_240M = 7,
			VA_TRANSFER_CHARACTERISTICS_LINEAR = 8,
			VA_TRANSFER_CHARACTERISTICS_H264_LOG_100_TO_1 = 9,
			VA_TRANSFER_CHARACTERISTICS_H264_LOG_316_TO_1 = 10,
		}
		[AllowDuplicates]
		public enum VA_MATRIX_COEFFICIENTS : int32
		{
			VA_MATRIX_COEFF_H264_RGB = 0,
			VA_MATRIX_COEFF_ITU_R_BT_709 = 1,
			VA_MATRIX_COEFF_UNSPECIFIED = 2,
			VA_MATRIX_COEFF_FCC = 4,
			VA_MATRIX_COEFF_ITU_R_BT_470_SYSTEM_B_G = 5,
			VA_MATRIX_COEFF_SMPTE_170M = 6,
			VA_MATRIX_COEFF_SMPTE_240M = 7,
			VA_MATRIX_COEFF_H264_YCgCo = 8,
		}
		[AllowDuplicates]
		public enum DVB_STRCONV_MODE : int32
		{
			STRCONV_MODE_DVB = 0,
			STRCONV_MODE_DVB_EMPHASIS = 1,
			STRCONV_MODE_DVB_WITHOUT_EMPHASIS = 2,
			STRCONV_MODE_ISDB = 3,
		}
		[AllowDuplicates]
		public enum CRID_LOCATION : int32
		{
			CRID_LOCATION_IN_DESCRIPTOR = 0,
			CRID_LOCATION_IN_CIT = 1,
			CRID_LOCATION_DVB_RESERVED1 = 2,
			CRID_LOCATION_DVB_RESERVED2 = 3,
		}
		[AllowDuplicates]
		public enum DESC_LINKAGE_TYPE : int32
		{
			DESC_LINKAGE_RESERVED0 = 0,
			DESC_LINKAGE_INFORMATION = 1,
			DESC_LINKAGE_EPG = 2,
			DESC_LINKAGE_CA_REPLACEMENT = 3,
			DESC_LINKAGE_COMPLETE_NET_BOUQUET_SI = 4,
			DESC_LINKAGE_REPLACEMENT = 5,
			DESC_LINKAGE_DATA = 6,
			DESC_LINKAGE_RESERVED1 = 7,
			DESC_LINKAGE_USER = 8,
			DESC_LINKAGE_RESERVED2 = 255,
		}
		[AllowDuplicates]
		public enum ChannelChangeSpanningEvent_State : int32
		{
			ChannelChangeSpanningEvent_Start = 0,
			ChannelChangeSpanningEvent_End = 2,
		}
		[AllowDuplicates]
		public enum ChannelType : int32
		{
			ChannelTypeNone = 0,
			ChannelTypeOther = 1,
			ChannelTypeVideo = 2,
			ChannelTypeAudio = 4,
			ChannelTypeText = 8,
			ChannelTypeSubtitles = 16,
			ChannelTypeCaptions = 32,
			ChannelTypeSuperimpose = 64,
			ChannelTypeData = 128,
		}
		[AllowDuplicates]
		public enum SignalAndServiceStatusSpanningEvent_State : int32
		{
			SignalAndServiceStatusSpanningEvent_None = -1,
			SignalAndServiceStatusSpanningEvent_Clear = 0,
			SignalAndServiceStatusSpanningEvent_NoTVSignal = 1,
			SignalAndServiceStatusSpanningEvent_ServiceOffAir = 2,
			SignalAndServiceStatusSpanningEvent_WeakTVSignal = 3,
			SignalAndServiceStatusSpanningEvent_NoSubscription = 4,
			SignalAndServiceStatusSpanningEvent_AllAVScrambled = 5,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_ETHERNET_FILTER : int32
		{
			KSPROPERTY_BDA_ETHERNET_FILTER_MULTICAST_LIST_SIZE = 0,
			KSPROPERTY_BDA_ETHERNET_FILTER_MULTICAST_LIST = 1,
			KSPROPERTY_BDA_ETHERNET_FILTER_MULTICAST_MODE = 2,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_IPv4_FILTER : int32
		{
			KSPROPERTY_BDA_IPv4_FILTER_MULTICAST_LIST_SIZE = 0,
			KSPROPERTY_BDA_IPv4_FILTER_MULTICAST_LIST = 1,
			KSPROPERTY_BDA_IPv4_FILTER_MULTICAST_MODE = 2,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_IPv6_FILTER : int32
		{
			KSPROPERTY_BDA_IPv6_FILTER_MULTICAST_LIST_SIZE = 0,
			KSPROPERTY_BDA_IPv6_FILTER_MULTICAST_LIST = 1,
			KSPROPERTY_BDA_IPv6_FILTER_MULTICAST_MODE = 2,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_SIGNAL_STATS : int32
		{
			KSPROPERTY_BDA_SIGNAL_STRENGTH = 0,
			KSPROPERTY_BDA_SIGNAL_QUALITY = 1,
			KSPROPERTY_BDA_SIGNAL_PRESENT = 2,
			KSPROPERTY_BDA_SIGNAL_LOCKED = 3,
			KSPROPERTY_BDA_SAMPLE_TIME = 4,
			KSPROPERTY_BDA_SIGNAL_LOCK_CAPS = 5,
			KSPROPERTY_BDA_SIGNAL_LOCK_TYPE = 6,
		}
		[AllowDuplicates]
		public enum BDA_LockType : int32
		{
			Bda_LockType_None = 0,
			Bda_LockType_PLL = 1,
			Bda_LockType_DecoderDemod = 2,
			Bda_LockType_Complete = 128,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_CHANGE_SYNC : int32
		{
			KSMETHOD_BDA_START_CHANGES = 0,
			KSMETHOD_BDA_CHECK_CHANGES = 1,
			KSMETHOD_BDA_COMMIT_CHANGES = 2,
			KSMETHOD_BDA_GET_CHANGE_STATE = 3,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_DEVICE_CONFIGURATION : int32
		{
			KSMETHOD_BDA_CREATE_PIN_FACTORY = 0,
			KSMETHOD_BDA_DELETE_PIN_FACTORY = 1,
			KSMETHOD_BDA_CREATE_TOPOLOGY = 2,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_TOPOLOGY : int32
		{
			KSPROPERTY_BDA_NODE_TYPES = 0,
			KSPROPERTY_BDA_PIN_TYPES = 1,
			KSPROPERTY_BDA_TEMPLATE_CONNECTIONS = 2,
			KSPROPERTY_BDA_NODE_METHODS = 3,
			KSPROPERTY_BDA_NODE_PROPERTIES = 4,
			KSPROPERTY_BDA_NODE_EVENTS = 5,
			KSPROPERTY_BDA_CONTROLLING_PIN_ID = 6,
			KSPROPERTY_BDA_NODE_DESCRIPTORS = 7,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_PIN_CONTROL : int32
		{
			KSPROPERTY_BDA_PIN_ID = 0,
			KSPROPERTY_BDA_PIN_TYPE = 1,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_PIN_EVENT : int32
		{
			KSEVENT_BDA_PIN_CONNECTED = 0,
			KSEVENT_BDA_PIN_DISCONNECTED = 1,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_VOID_TRANSFORM : int32
		{
			KSPROPERTY_BDA_VOID_TRANSFORM_START = 0,
			KSPROPERTY_BDA_VOID_TRANSFORM_STOP = 1,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_NULL_TRANSFORM : int32
		{
			KSPROPERTY_BDA_NULL_TRANSFORM_START = 0,
			KSPROPERTY_BDA_NULL_TRANSFORM_STOP = 1,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_FREQUENCY_FILTER : int32
		{
			KSPROPERTY_BDA_RF_TUNER_FREQUENCY = 0,
			KSPROPERTY_BDA_RF_TUNER_POLARITY = 1,
			KSPROPERTY_BDA_RF_TUNER_RANGE = 2,
			KSPROPERTY_BDA_RF_TUNER_TRANSPONDER = 3,
			KSPROPERTY_BDA_RF_TUNER_BANDWIDTH = 4,
			KSPROPERTY_BDA_RF_TUNER_FREQUENCY_MULTIPLIER = 5,
			KSPROPERTY_BDA_RF_TUNER_CAPS = 6,
			KSPROPERTY_BDA_RF_TUNER_SCAN_STATUS = 7,
			KSPROPERTY_BDA_RF_TUNER_STANDARD = 8,
			KSPROPERTY_BDA_RF_TUNER_STANDARD_MODE = 9,
		}
		[AllowDuplicates]
		public enum BDA_SignalType : int32
		{
			Bda_SignalType_Unknown = 0,
			Bda_SignalType_Analog = 1,
			Bda_SignalType_Digital = 2,
		}
		[AllowDuplicates]
		public enum BDA_DigitalSignalStandard : int32
		{
			Bda_DigitalStandard_None = 0,
			Bda_DigitalStandard_DVB_T = 1,
			Bda_DigitalStandard_DVB_S = 2,
			Bda_DigitalStandard_DVB_C = 4,
			Bda_DigitalStandard_ATSC = 8,
			Bda_DigitalStandard_ISDB_T = 16,
			Bda_DigitalStandard_ISDB_S = 32,
			Bda_DigitalStandard_ISDB_C = 64,
		}
		[AllowDuplicates]
		public enum KSEVENT_BDA_TUNER : int32
		{
			KSEVENT_BDA_TUNER_SCAN = 0,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_LNB_INFO : int32
		{
			KSPROPERTY_BDA_LNB_LOF_LOW_BAND = 0,
			KSPROPERTY_BDA_LNB_LOF_HIGH_BAND = 1,
			KSPROPERTY_BDA_LNB_SWITCH_FREQUENCY = 2,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_DISEQC_COMMAND : int32
		{
			KSPROPERTY_BDA_DISEQC_ENABLE = 0,
			KSPROPERTY_BDA_DISEQC_LNB_SOURCE = 1,
			KSPROPERTY_BDA_DISEQC_USETONEBURST = 2,
			KSPROPERTY_BDA_DISEQC_REPEATS = 3,
			KSPROPERTY_BDA_DISEQC_SEND = 4,
			KSPROPERTY_BDA_DISEQC_RESPONSE = 5,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_DISEQC_EVENT : int32
		{
			KSEVENT_BDA_DISEQC_DATA_RECEIVED = 0,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_DIGITAL_DEMODULATOR : int32
		{
			KSPROPERTY_BDA_MODULATION_TYPE = 0,
			KSPROPERTY_BDA_INNER_FEC_TYPE = 1,
			KSPROPERTY_BDA_INNER_FEC_RATE = 2,
			KSPROPERTY_BDA_OUTER_FEC_TYPE = 3,
			KSPROPERTY_BDA_OUTER_FEC_RATE = 4,
			KSPROPERTY_BDA_SYMBOL_RATE = 5,
			KSPROPERTY_BDA_SPECTRAL_INVERSION = 6,
			KSPROPERTY_BDA_GUARD_INTERVAL = 7,
			KSPROPERTY_BDA_TRANSMISSION_MODE = 8,
			KSPROPERTY_BDA_ROLL_OFF = 9,
			KSPROPERTY_BDA_PILOT = 10,
			KSPROPERTY_BDA_SIGNALTIMEOUTS = 11,
			KSPROPERTY_BDA_PLP_NUMBER = 12,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_AUTODEMODULATE : int32
		{
			KSPROPERTY_BDA_AUTODEMODULATE_START = 0,
			KSPROPERTY_BDA_AUTODEMODULATE_STOP = 1,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_IDS_BDA_TABLE : int32
		{
			KSPROPERTY_BDA_TABLE_SECTION = 0,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_PIDFILTER : int32
		{
			KSPROPERTY_BDA_PIDFILTER_MAP_PIDS = 0,
			KSPROPERTY_BDA_PIDFILTER_UNMAP_PIDS = 1,
			KSPROPERTY_BDA_PIDFILTER_LIST_PIDS = 2,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_CA : int32
		{
			KSPROPERTY_BDA_ECM_MAP_STATUS = 0,
			KSPROPERTY_BDA_CA_MODULE_STATUS = 1,
			KSPROPERTY_BDA_CA_SMART_CARD_STATUS = 2,
			KSPROPERTY_BDA_CA_MODULE_UI = 3,
			KSPROPERTY_BDA_CA_SET_PROGRAM_PIDS = 4,
			KSPROPERTY_BDA_CA_REMOVE_PROGRAM = 5,
		}
		[AllowDuplicates]
		public enum KSPROPERTY_BDA_CA_EVENT : int32
		{
			KSEVENT_BDA_PROGRAM_FLOW_STATUS_CHANGED = 0,
			KSEVENT_BDA_CA_MODULE_STATUS_CHANGED = 1,
			KSEVENT_BDA_CA_SMART_CARD_STATUS_CHANGED = 2,
			KSEVENT_BDA_CA_MODULE_UI_REQUESTED = 3,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_DRM : int32
		{
			KSMETHOD_BDA_DRM_CURRENT = 0,
			KSMETHOD_BDA_DRM_DRMSTATUS = 1,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_WMDRM : int32
		{
			KSMETHOD_BDA_WMDRM_STATUS = 0,
			KSMETHOD_BDA_WMDRM_REVINFO = 1,
			KSMETHOD_BDA_WMDRM_CRL = 2,
			KSMETHOD_BDA_WMDRM_MESSAGE = 3,
			KSMETHOD_BDA_WMDRM_REISSUELICENSE = 4,
			KSMETHOD_BDA_WMDRM_RENEWLICENSE = 5,
			KSMETHOD_BDA_WMDRM_LICENSE = 6,
			KSMETHOD_BDA_WMDRM_KEYINFO = 7,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_WMDRM_TUNER : int32
		{
			KSMETHOD_BDA_WMDRMTUNER_CANCELCAPTURETOKEN = 0,
			KSMETHOD_BDA_WMDRMTUNER_SETPIDPROTECTION = 1,
			KSMETHOD_BDA_WMDRMTUNER_GETPIDPROTECTION = 2,
			KSMETHOD_BDA_WMDRMTUNER_SETSYNCVALUE = 3,
			KSMETHOD_BDA_WMDRMTUNER_STARTCODEPROFILE = 4,
			KSMETHOD_BDA_WMDRMTUNER_PURCHASE_ENTITLEMENT = 5,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_EVENTING_SERVICE : int32
		{
			KSMETHOD_BDA_EVENT_DATA = 0,
			KSMETHOD_BDA_EVENT_COMPLETE = 1,
		}
		[AllowDuplicates]
		public enum KSEVENT_BDA_EVENT_TYPE : int32
		{
			KSEVENT_BDA_EVENT_PENDINGEVENT = 0,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_DEBUG_SERVICE : int32
		{
			KSMETHOD_BDA_DEBUG_LEVEL = 0,
			KSMETHOD_BDA_DEBUG_DATA = 1,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_TUNER_SERVICE : int32
		{
			KSMETHOD_BDA_TUNER_SETTUNER = 0,
			KSMETHOD_BDA_TUNER_GETTUNERSTATE = 1,
			KSMETHOD_BDA_TUNER_SIGNALNOISERATIO = 2,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_GPNV_SERVICE : int32
		{
			KSMETHOD_BDA_GPNV_GETVALUE = 0,
			KSMETHOD_BDA_GPNV_SETVALUE = 1,
			KSMETHOD_BDA_GPNV_NAMEFROMINDEX = 2,
			KSMETHOD_BDA_GPNV_GETVALUEUPDATENAME = 3,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_MUX_SERVICE : int32
		{
			KSMETHOD_BDA_MUX_GETPIDLIST = 0,
			KSMETHOD_BDA_MUX_SETPIDLIST = 1,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_SCAN_SERVICE : int32
		{
			KSMETHOD_BDA_SCAN_CAPABILTIES = 0,
			KSMETHOD_BDA_SCANNING_STATE = 1,
			KSMETHOD_BDA_SCAN_FILTER = 2,
			KSMETHOD_BDA_SCAN_START = 3,
			KSMETHOD_BDA_SCAN_RESUME = 4,
			KSMETHOD_BDA_SCAN_STOP = 5,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_GDDS_SERVICE : int32
		{
			KSMETHOD_BDA_GDDS_DATATYPE = 0,
			KSMETHOD_BDA_GDDS_DATA = 1,
			KSMETHOD_BDA_GDDS_TUNEXMLFROMIDX = 2,
			KSMETHOD_BDA_GDDS_GETSERVICES = 3,
			KSMETHOD_BDA_GDDS_SERVICEFROMTUNEXML = 4,
			KSMETHOD_BDA_GDDS_DATAUPDATE = 5,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_CAS_SERVICE : int32
		{
			KSMETHOD_BDA_CAS_CHECKENTITLEMENTTOKEN = 0,
			KSMETHOD_BDA_CAS_SETCAPTURETOKEN = 1,
			KSMETHOD_BDA_CAS_OPENBROADCASTMMI = 2,
			KSMETHOD_BDA_CAS_CLOSEMMIDIALOG = 3,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_ISDB_CAS : int32
		{
			KSMETHOD_BDA_ISDBCAS_SETREQUEST = 0,
			KSMETHOD_BDA_ISDBCAS_RESPONSEDATA = 1,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_TS_SELECTOR : int32
		{
			KSMETHOD_BDA_TS_SELECTOR_SETTSID = 0,
			KSMETHOD_BDA_TS_SELECTOR_GETTSINFORMATION = 1,
		}
		[AllowDuplicates]
		public enum KSMETHOD_BDA_USERACTIVITY_SERVICE : int32
		{
			KSMETHOD_BDA_USERACTIVITY_USEREASON = 0,
			KSMETHOD_BDA_USERACTIVITY_INTERVAL = 1,
			KSMETHOD_BDA_USERACTIVITY_DETECTED = 2,
		}
		[AllowDuplicates]
		public enum VIDEOENCODER_BITRATE_MODE : int32
		{
			ConstantBitRate = 0,
			VariableBitRateAverage = 1,
			VariableBitRatePeak = 2,
		}
		[AllowDuplicates]
		public enum COPP_HDCP_Protection_Level : int32
		{
			COPP_HDCP_Level0 = 0,
			COPP_HDCP_LevelMin = 0,
			COPP_HDCP_Level1 = 1,
			COPP_HDCP_LevelMax = 1,
			COPP_HDCP_ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum COPP_CGMSA_Protection_Level : int32
		{
			COPP_CGMSA_Disabled = 0,
			COPP_CGMSA_LevelMin = 0,
			COPP_CGMSA_CopyFreely = 1,
			COPP_CGMSA_CopyNoMore = 2,
			COPP_CGMSA_CopyOneGeneration = 3,
			COPP_CGMSA_CopyNever = 4,
			COPP_CGMSA_RedistributionControlRequired = 8,
			COPP_CGMSA_LevelMax = 12,
			COPP_CGMSA_ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum COPP_ACP_Protection_Level : int32
		{
			COPP_ACP_Level0 = 0,
			COPP_ACP_LevelMin = 0,
			COPP_ACP_Level1 = 1,
			COPP_ACP_Level2 = 2,
			COPP_ACP_Level3 = 3,
			COPP_ACP_LevelMax = 3,
			COPP_ACP_ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum COPP_TVProtectionStandard : int32
		{
			COPP_ProtectionStandard_Unknown = -2147483648,
			COPP_ProtectionStandard_None = 0,
			COPP_ProtectionStandard_IEC61880_525i = 1,
			COPP_ProtectionStandard_IEC61880_2_525i = 2,
			COPP_ProtectionStandard_IEC62375_625p = 4,
			COPP_ProtectionStandard_EIA608B_525 = 8,
			COPP_ProtectionStandard_EN300294_625i = 16,
			COPP_ProtectionStandard_CEA805A_TypeA_525p = 32,
			COPP_ProtectionStandard_CEA805A_TypeA_750p = 64,
			COPP_ProtectionStandard_CEA805A_TypeA_1125i = 128,
			COPP_ProtectionStandard_CEA805A_TypeB_525p = 256,
			COPP_ProtectionStandard_CEA805A_TypeB_750p = 512,
			COPP_ProtectionStandard_CEA805A_TypeB_1125i = 1024,
			COPP_ProtectionStandard_ARIBTRB15_525i = 2048,
			COPP_ProtectionStandard_ARIBTRB15_525p = 4096,
			COPP_ProtectionStandard_ARIBTRB15_750p = 8192,
			COPP_ProtectionStandard_ARIBTRB15_1125i = 16384,
			COPP_ProtectionStandard_Mask = -2147450881,
			COPP_ProtectionStandard_Reserved = 2147450880,
		}
		[AllowDuplicates]
		public enum COPP_ImageAspectRatio_EN300294 : int32
		{
			COPP_AspectRatio_EN300294_FullFormat4by3 = 0,
			COPP_AspectRatio_EN300294_Box14by9Center = 1,
			COPP_AspectRatio_EN300294_Box14by9Top = 2,
			COPP_AspectRatio_EN300294_Box16by9Center = 3,
			COPP_AspectRatio_EN300294_Box16by9Top = 4,
			COPP_AspectRatio_EN300294_BoxGT16by9Center = 5,
			COPP_AspectRatio_EN300294_FullFormat4by3ProtectedCenter = 6,
			COPP_AspectRatio_EN300294_FullFormat16by9Anamorphic = 7,
			COPP_AspectRatio_ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum COPP_StatusFlags : int32
		{
			COPP_StatusNormal = 0,
			COPP_LinkLost = 1,
			COPP_RenegotiationRequired = 2,
			COPP_StatusFlagsReserved = -4,
		}
		[AllowDuplicates]
		public enum COPP_StatusHDCPFlags : int32
		{
			COPP_HDCPRepeater = 1,
			COPP_HDCPFlagsReserved = -2,
		}
		[AllowDuplicates]
		public enum COPP_ConnectorType : int32
		{
			COPP_ConnectorType_Unknown = -1,
			COPP_ConnectorType_VGA = 0,
			COPP_ConnectorType_SVideo = 1,
			COPP_ConnectorType_CompositeVideo = 2,
			COPP_ConnectorType_ComponentVideo = 3,
			COPP_ConnectorType_DVI = 4,
			COPP_ConnectorType_HDMI = 5,
			COPP_ConnectorType_LVDS = 6,
			COPP_ConnectorType_TMDS = 7,
			COPP_ConnectorType_D_JPN = 8,
			COPP_ConnectorType_Internal = -2147483648,
			COPP_ConnectorType_ForceDWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum COPP_BusType : int32
		{
			COPP_BusType_Unknown = 0,
			COPP_BusType_PCI = 1,
			COPP_BusType_PCIX = 2,
			COPP_BusType_PCIExpress = 3,
			COPP_BusType_AGP = 4,
			COPP_BusType_Integrated = -2147483648,
			COPP_BusType_ForceDWORD = 2147483647,
		}
		
		// --- Function Pointers ---
		
		public function BOOL AMGETERRORTEXTPROCA(HRESULT param0, PSTR param1, uint32 param2);
		public function BOOL AMGETERRORTEXTPROCW(HRESULT param0, PWSTR param1, uint32 param2);
		public function HRESULT PDXVA2SW_GETVIDEOPROCESSORRENDERTARGETCOUNT(DXVA2_VideoDesc* pVideoDesc, uint32* pCount);
		public function HRESULT PDXVA2SW_GETVIDEOPROCESSORRENDERTARGETS(DXVA2_VideoDesc* pVideoDesc, uint32 Count, D3DFORMAT* pFormats);
		public function HRESULT PDXVA2SW_GETVIDEOPROCESSORCAPS(DXVA2_VideoDesc* pVideoDesc, D3DFORMAT RenderTargetFormat, DXVA2_VideoProcessorCaps* pCaps);
		public function HRESULT PDXVA2SW_GETVIDEOPROCESSORSUBSTREAMFORMATCOUNT(DXVA2_VideoDesc* pVideoDesc, D3DFORMAT RenderTargetFormat, uint32* pCount);
		public function HRESULT PDXVA2SW_GETVIDEOPROCESSORSUBSTREAMFORMATS(DXVA2_VideoDesc* pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 Count, D3DFORMAT* pFormats);
		public function HRESULT PDXVA2SW_GETPROCAMPRANGE(DXVA2_VideoDesc* pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 ProcAmpCap, DXVA2_ValueRange* pRange);
		public function HRESULT PDXVA2SW_GETFILTERPROPERTYRANGE(DXVA2_VideoDesc* pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 FilterSetting, DXVA2_ValueRange* pRange);
		public function HRESULT PDXVA2SW_CREATEVIDEOPROCESSDEVICE(IDirect3DDevice9 pD3DD9, DXVA2_VideoDesc* pVideoDesc, D3DFORMAT RenderTargetFormat, uint32 MaxSubStreams, HANDLE* phDevice);
		public function HRESULT PDXVA2SW_DESTROYVIDEOPROCESSDEVICE(HANDLE hDevice);
		public function HRESULT PDXVA2SW_VIDEOPROCESSBEGINFRAME(HANDLE hDevice);
		public function HRESULT PDXVA2SW_VIDEOPROCESSENDFRAME(HANDLE hDevice, HANDLE* pHandleComplete);
		public function HRESULT PDXVA2SW_VIDEOPROCESSSETRENDERTARGET(HANDLE hDevice, IDirect3DSurface9 pRenderTarget);
		public function HRESULT PDXVA2SW_VIDEOPROCESSBLT(HANDLE hDevice, DXVA2_VIDEOPROCESSBLT* pBlt);
		
		// --- Structs ---
		
		[CRepr]
		public struct AMVPSIZE
		{
			public uint32 dwWidth;
			public uint32 dwHeight;
		}
		[CRepr]
		public struct AMVPDIMINFO
		{
			public uint32 dwFieldWidth;
			public uint32 dwFieldHeight;
			public uint32 dwVBIWidth;
			public uint32 dwVBIHeight;
			public RECT rcValidRegion;
		}
		[CRepr]
		public struct AMVPDATAINFO
		{
			public uint32 dwSize;
			public uint32 dwMicrosecondsPerField;
			public AMVPDIMINFO amvpDimInfo;
			public uint32 dwPictAspectRatioX;
			public uint32 dwPictAspectRatioY;
			public BOOL bEnableDoubleClock;
			public BOOL bEnableVACT;
			public BOOL bDataIsInterlaced;
			public int32 lHalfLinesOdd;
			public BOOL bFieldPolarityInverted;
			public uint32 dwNumLinesInVREF;
			public int32 lHalfLinesEven;
			public uint32 dwReserved1;
		}
		[CRepr]
		public struct AM_MEDIA_TYPE
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
		public struct ALLOCATOR_PROPERTIES
		{
			public int32 cBuffers;
			public int32 cbBuffer;
			public int32 cbAlign;
			public int32 cbPrefix;
		}
		[CRepr]
		public struct PIN_INFO
		{
			public IBaseFilter pFilter;
			public PIN_DIRECTION dir;
			public char16[128] achName;
		}
		[CRepr]
		public struct FILTER_INFO
		{
			public char16[128] achName;
			public IFilterGraph pGraph;
		}
		[CRepr]
		public struct AM_SAMPLE2_PROPERTIES
		{
			public uint32 cbData;
			public uint32 dwTypeSpecificFlags;
			public uint32 dwSampleFlags;
			public int32 lActual;
			public int64 tStart;
			public int64 tStop;
			public uint32 dwStreamId;
			public AM_MEDIA_TYPE* pMediaType;
			public uint8* pbBuffer;
			public int32 cbBuffer;
		}
		[CRepr]
		public struct REGFILTER
		{
			public Guid Clsid;
			public PWSTR Name;
		}
		[CRepr]
		public struct REGPINTYPES
		{
			public Guid* clsMajorType;
			public Guid* clsMinorType;
		}
		[CRepr]
		public struct REGFILTERPINS
		{
			public PWSTR strName;
			public BOOL bRendered;
			public BOOL bOutput;
			public BOOL bZero;
			public BOOL bMany;
			public Guid* clsConnectsToFilter;
			public PWSTR strConnectsToPin;
			public uint32 nMediaTypes;
			public REGPINTYPES* lpMediaType;
		}
		[CRepr]
		public struct REGPINMEDIUM
		{
			public Guid clsMedium;
			public uint32 dw1;
			public uint32 dw2;
		}
		[CRepr]
		public struct REGFILTERPINS2
		{
			public uint32 dwFlags;
			public uint32 cInstances;
			public uint32 nMediaTypes;
			public REGPINTYPES* lpMediaType;
			public uint32 nMediums;
			public REGPINMEDIUM* lpMedium;
			public Guid* clsPinCategory;
		}
		[CRepr]
		public struct REGFILTER2
		{
			public uint32 dwVersion;
			public uint32 dwMerit;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous1_e__Struct Anonymous1;
				public _Anonymous2_e__Struct Anonymous2;
				
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public uint32 cPins;
					public REGFILTERPINS* rgPins;
				}
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public uint32 cPins2;
					public REGFILTERPINS2* rgPins2;
				}
			}
		}
		[CRepr]
		public struct Quality
		{
			public QualityMessageType Type;
			public int32 Proportion;
			public int64 Late;
			public int64 TimeStamp;
		}
		[CRepr]
		public struct COLORKEY
		{
			public uint32 KeyType;
			public uint32 PaletteIndex;
			public uint32 LowColorValue;
			public uint32 HighColorValue;
		}
		[CRepr]
		public struct AM_STREAM_INFO
		{
			public int64 tStart;
			public int64 tStop;
			public uint32 dwStartCookie;
			public uint32 dwStopCookie;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct VIDEO_STREAM_CONFIG_CAPS
		{
			public Guid guid;
			public uint32 VideoStandard;
			public SIZE InputSize;
			public SIZE MinCroppingSize;
			public SIZE MaxCroppingSize;
			public int32 CropGranularityX;
			public int32 CropGranularityY;
			public int32 CropAlignX;
			public int32 CropAlignY;
			public SIZE MinOutputSize;
			public SIZE MaxOutputSize;
			public int32 OutputGranularityX;
			public int32 OutputGranularityY;
			public int32 StretchTapsX;
			public int32 StretchTapsY;
			public int32 ShrinkTapsX;
			public int32 ShrinkTapsY;
			public int64 MinFrameInterval;
			public int64 MaxFrameInterval;
			public int32 MinBitsPerSecond;
			public int32 MaxBitsPerSecond;
		}
		[CRepr]
		public struct AUDIO_STREAM_CONFIG_CAPS
		{
			public Guid guid;
			public uint32 MinimumChannels;
			public uint32 MaximumChannels;
			public uint32 ChannelsGranularity;
			public uint32 MinimumBitsPerSample;
			public uint32 MaximumBitsPerSample;
			public uint32 BitsPerSampleGranularity;
			public uint32 MinimumSampleFrequency;
			public uint32 MaximumSampleFrequency;
			public uint32 SampleFrequencyGranularity;
		}
		[CRepr]
		public struct DVINFO
		{
			public uint32 dwDVAAuxSrc;
			public uint32 dwDVAAuxCtl;
			public uint32 dwDVAAuxSrc1;
			public uint32 dwDVAAuxCtl1;
			public uint32 dwDVVAuxSrc;
			public uint32 dwDVVAuxCtl;
			public uint32[2] dwDVReserved;
		}
		[CRepr]
		public struct STREAM_ID_MAP
		{
			public uint32 stream_id;
			public uint32 dwMediaSampleContent;
			public uint32 ulSubstreamFilterValue;
			public int32 iDataOffset;
		}
		[CRepr]
		public struct AMCOPPSignature
		{
			public uint8[256] Signature;
		}
		[CRepr]
		public struct AMCOPPCommand
		{
			public Guid macKDI;
			public Guid guidCommandID;
			public uint32 dwSequence;
			public uint32 cbSizeData;
			public uint8[4056] CommandData;
		}
		[CRepr]
		public struct AMCOPPStatusInput
		{
			public Guid rApp;
			public Guid guidStatusRequestID;
			public uint32 dwSequence;
			public uint32 cbSizeData;
			public uint8[4056] StatusData;
		}
		[CRepr]
		public struct AMCOPPStatusOutput
		{
			public Guid macKDI;
			public uint32 cbSizeData;
			public uint8[4076] COPPStatus;
		}
		[CRepr]
		public struct VMRPRESENTATIONINFO
		{
			public uint32 dwFlags;
			public IDirectDrawSurface7 lpSurf;
			public int64 rtStart;
			public int64 rtEnd;
			public SIZE szAspectRatio;
			public RECT rcSrc;
			public RECT rcDst;
			public uint32 dwTypeSpecificFlags;
			public uint32 dwInterlaceFlags;
		}
		[CRepr]
		public struct VMRALLOCATIONINFO
		{
			public uint32 dwFlags;
			public BITMAPINFOHEADER* lpHdr;
			public DDPIXELFORMAT* lpPixFmt;
			public SIZE szAspectRatio;
			public uint32 dwMinBuffers;
			public uint32 dwMaxBuffers;
			public uint32 dwInterlaceFlags;
			public SIZE szNativeSize;
		}
		[CRepr]
		public struct NORMALIZEDRECT
		{
			public float left;
			public float top;
			public float right;
			public float bottom;
		}
		[CRepr]
		public struct VMRGUID
		{
			public Guid* pGUID;
			public Guid GUID;
		}
		[CRepr]
		public struct VMRMONITORINFO
		{
			public VMRGUID guid;
			public RECT rcMonitor;
			public HMONITOR hMon;
			public uint32 dwFlags;
			public char16[32] szDevice;
			public char16[256] szDescription;
			public LARGE_INTEGER liDriverVersion;
			public uint32 dwVendorId;
			public uint32 dwDeviceId;
			public uint32 dwSubSysId;
			public uint32 dwRevision;
		}
		[CRepr]
		public struct VMRFrequency
		{
			public uint32 dwNumerator;
			public uint32 dwDenominator;
		}
		[CRepr]
		public struct VMRVideoDesc
		{
			public uint32 dwSize;
			public uint32 dwSampleWidth;
			public uint32 dwSampleHeight;
			public BOOL SingleFieldPerSample;
			public uint32 dwFourCC;
			public VMRFrequency InputSampleFreq;
			public VMRFrequency OutputFrameFreq;
		}
		[CRepr]
		public struct VMRDeinterlaceCaps
		{
			public uint32 dwSize;
			public uint32 dwNumPreviousOutputFrames;
			public uint32 dwNumForwardRefSamples;
			public uint32 dwNumBackwardRefSamples;
			public VMRDeinterlaceTech DeinterlaceTechnology;
		}
		[CRepr]
		public struct VMRALPHABITMAP
		{
			public uint32 dwFlags;
			public HDC hdc;
			public IDirectDrawSurface7 pDDS;
			public RECT rSrc;
			public NORMALIZEDRECT rDest;
			public float fAlpha;
			public uint32 clrSrcKey;
		}
		[CRepr]
		public struct VMRVIDEOSTREAMINFO
		{
			public IDirectDrawSurface7 pddsVideoSurface;
			public uint32 dwWidth;
			public uint32 dwHeight;
			public uint32 dwStrmID;
			public float fAlpha;
			public DDCOLORKEY ddClrKey;
			public NORMALIZEDRECT rNormal;
		}
		[CRepr]
		public struct DVD_ATR
		{
			public uint32 ulCAT;
			public uint8[768] pbATRI;
		}
		[CRepr]
		public struct DVD_TIMECODE
		{
			public uint32 _bitfield;
		}
		[CRepr]
		public struct DVD_HMSF_TIMECODE
		{
			public uint8 bHours;
			public uint8 bMinutes;
			public uint8 bSeconds;
			public uint8 bFrames;
		}
		[CRepr]
		public struct DVD_PLAYBACK_LOCATION2
		{
			public uint32 TitleNum;
			public uint32 ChapterNum;
			public DVD_HMSF_TIMECODE TimeCode;
			public uint32 TimeCodeFlags;
		}
		[CRepr]
		public struct DVD_PLAYBACK_LOCATION
		{
			public uint32 TitleNum;
			public uint32 ChapterNum;
			public uint32 TimeCode;
		}
		[CRepr]
		public struct DVD_AudioAttributes
		{
			public DVD_AUDIO_APPMODE AppMode;
			public uint8 AppModeData;
			public DVD_AUDIO_FORMAT AudioFormat;
			public uint32 Language;
			public DVD_AUDIO_LANG_EXT LanguageExtension;
			public BOOL fHasMultichannelInfo;
			public uint32 dwFrequency;
			public uint8 bQuantization;
			public uint8 bNumberOfChannels;
			public uint32[2] dwReserved;
		}
		[CRepr]
		public struct DVD_MUA_MixingInfo
		{
			public BOOL fMixTo0;
			public BOOL fMixTo1;
			public BOOL fMix0InPhase;
			public BOOL fMix1InPhase;
			public uint32 dwSpeakerPosition;
		}
		[CRepr]
		public struct DVD_MUA_Coeff
		{
			public double log2_alpha;
			public double log2_beta;
		}
		[CRepr]
		public struct DVD_MultichannelAudioAttributes
		{
			public DVD_MUA_MixingInfo[8] Info;
			public DVD_MUA_Coeff[8] Coeff;
		}
		[CRepr]
		public struct DVD_KaraokeAttributes
		{
			public uint8 bVersion;
			public BOOL fMasterOfCeremoniesInGuideVocal1;
			public BOOL fDuet;
			public DVD_KARAOKE_ASSIGNMENT ChannelAssignment;
			public uint16[8] wChannelContents;
		}
		[CRepr]
		public struct DVD_VideoAttributes
		{
			public BOOL fPanscanPermitted;
			public BOOL fLetterboxPermitted;
			public uint32 ulAspectX;
			public uint32 ulAspectY;
			public uint32 ulFrameRate;
			public uint32 ulFrameHeight;
			public DVD_VIDEO_COMPRESSION Compression;
			public BOOL fLine21Field1InGOP;
			public BOOL fLine21Field2InGOP;
			public uint32 ulSourceResolutionX;
			public uint32 ulSourceResolutionY;
			public BOOL fIsSourceLetterboxed;
			public BOOL fIsFilmMode;
		}
		[CRepr]
		public struct DVD_SubpictureAttributes
		{
			public DVD_SUBPICTURE_TYPE Type;
			public DVD_SUBPICTURE_CODING CodingMode;
			public uint32 Language;
			public DVD_SUBPICTURE_LANG_EXT LanguageExtension;
		}
		[CRepr]
		public struct DVD_TitleAttributes
		{
			public _Anonymous_e__Union Anonymous;
			public DVD_VideoAttributes VideoAttributes;
			public uint32 ulNumberOfAudioStreams;
			public DVD_AudioAttributes[8] AudioAttributes;
			public DVD_MultichannelAudioAttributes[8] MultichannelAudioAttributes;
			public uint32 ulNumberOfSubpictureStreams;
			public DVD_SubpictureAttributes[32] SubpictureAttributes;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public DVD_TITLE_APPMODE AppMode;
				public DVD_HMSF_TIMECODE TitleLength;
			}
		}
		[CRepr]
		public struct DVD_MenuAttributes
		{
			public BOOL[8] fCompatibleRegion;
			public DVD_VideoAttributes VideoAttributes;
			public BOOL fAudioPresent;
			public DVD_AudioAttributes AudioAttributes;
			public BOOL fSubpicturePresent;
			public DVD_SubpictureAttributes SubpictureAttributes;
		}
		[CRepr]
		public struct DVD_DECODER_CAPS
		{
			public uint32 dwSize;
			public uint32 dwAudioCaps;
			public double dFwdMaxRateVideo;
			public double dFwdMaxRateAudio;
			public double dFwdMaxRateSP;
			public double dBwdMaxRateVideo;
			public double dBwdMaxRateAudio;
			public double dBwdMaxRateSP;
			public uint32 dwRes1;
			public uint32 dwRes2;
			public uint32 dwRes3;
			public uint32 dwRes4;
		}
		[CRepr]
		public struct AM_DVD_RENDERSTATUS
		{
			public HRESULT hrVPEStatus;
			public BOOL bDvdVolInvalid;
			public BOOL bDvdVolUnknown;
			public BOOL bNoLine21In;
			public BOOL bNoLine21Out;
			public int32 iNumStreams;
			public int32 iNumStreamsFailed;
			public uint32 dwFailedStreamsFlag;
		}
		[CRepr]
		public struct BDA_TEMPLATE_CONNECTION
		{
			public uint32 FromNodeType;
			public uint32 FromNodePinType;
			public uint32 ToNodeType;
			public uint32 ToNodePinType;
		}
		[CRepr]
		public struct BDA_TEMPLATE_PIN_JOINT
		{
			public uint32 uliTemplateConnection;
			public uint32 ulcInstancesMax;
		}
		[CRepr]
		public struct KS_BDA_FRAME_INFO
		{
			public uint32 ExtendedHeaderSize;
			public uint32 dwFrameFlags;
			public uint32 ulEvent;
			public uint32 ulChannelNumber;
			public uint32 ulSubchannelNumber;
			public uint32 ulReason;
		}
		[CRepr]
		public struct BDA_ETHERNET_ADDRESS
		{
			public uint8[6] rgbAddress;
		}
		[CRepr]
		public struct BDA_ETHERNET_ADDRESS_LIST
		{
			public uint32 ulcAddresses;
			public BDA_ETHERNET_ADDRESS[] rgAddressl;
		}
		[CRepr]
		public struct BDA_IPv4_ADDRESS
		{
			public uint8[4] rgbAddress;
		}
		[CRepr]
		public struct BDA_IPv4_ADDRESS_LIST
		{
			public uint32 ulcAddresses;
			public BDA_IPv4_ADDRESS[] rgAddressl;
		}
		[CRepr]
		public struct BDA_IPv6_ADDRESS
		{
			public uint8[6] rgbAddress;
		}
		[CRepr]
		public struct BDA_IPv6_ADDRESS_LIST
		{
			public uint32 ulcAddresses;
			public BDA_IPv6_ADDRESS[] rgAddressl;
		}
		[CRepr]
		public struct BDANODE_DESCRIPTOR
		{
			public uint32 ulBdaNodeType;
			public Guid guidFunction;
			public Guid guidName;
		}
		[CRepr]
		public struct BDA_TABLE_SECTION
		{
			public uint32 ulPrimarySectionId;
			public uint32 ulSecondarySectionId;
			public uint32 ulcbSectionLength;
			public uint32[] argbSectionData;
		}
		[CRepr]
		public struct BDA_DISEQC_SEND
		{
			public uint32 ulRequestId;
			public uint32 ulPacketLength;
			public uint8[8] argbPacketData;
		}
		[CRepr]
		public struct BDA_DISEQC_RESPONSE
		{
			public uint32 ulRequestId;
			public uint32 ulPacketLength;
			public uint8[8] argbPacketData;
		}
		[CRepr]
		public struct PID_MAP
		{
			public uint32 ulPID;
			public MEDIA_SAMPLE_CONTENT MediaSampleContent;
		}
		[CRepr]
		public struct BDA_PID_MAP
		{
			public MEDIA_SAMPLE_CONTENT MediaSampleContent;
			public uint32 ulcPIDs;
			public uint32[] aulPIDs;
		}
		[CRepr]
		public struct BDA_PID_UNMAP
		{
			public uint32 ulcPIDs;
			public uint32[] aulPIDs;
		}
		[CRepr]
		public struct BDA_CA_MODULE_UI
		{
			public uint32 ulFormat;
			public uint32 ulbcDesc;
			public uint32[] ulDesc;
		}
		[CRepr]
		public struct BDA_PROGRAM_PID_LIST
		{
			public uint32 ulProgramNumber;
			public uint32 ulcPIDs;
			public uint32[] ulPID;
		}
		[CRepr]
		public struct BDA_DRM_DRMSTATUS
		{
			public int32 lResult;
			public Guid DRMuuid;
			public uint32 ulDrmUuidListStringSize;
			public Guid[] argbDrmUuidListString;
		}
		[CRepr]
		public struct BDA_WMDRM_STATUS
		{
			public int32 lResult;
			public uint32 ulMaxCaptureTokenSize;
			public uint32 uMaxStreamingPid;
			public uint32 ulMaxLicense;
			public uint32 ulMinSecurityLevel;
			public uint32 ulRevInfoSequenceNumber;
			public uint64 ulRevInfoIssuedTime;
			public uint32 ulRevListVersion;
			public uint32 ulRevInfoTTL;
			public uint32 ulState;
		}
		[CRepr]
		public struct BDA_WMDRM_KEYINFOLIST
		{
			public int32 lResult;
			public uint32 ulKeyuuidBufferLen;
			public Guid[] argKeyuuidBuffer;
		}
		[CRepr]
		public struct BDA_BUFFER
		{
			public int32 lResult;
			public uint32 ulBufferSize;
			public uint8[] argbBuffer;
		}
		[CRepr]
		public struct BDA_WMDRM_RENEWLICENSE
		{
			public int32 lResult;
			public uint32 ulDescrambleStatus;
			public uint32 ulXmrLicenseOutputLength;
			public uint8[] argbXmrLicenceOutputBuffer;
		}
		[CRepr]
		public struct BDA_WMDRMTUNER_PIDPROTECTION
		{
			public int32 lResult;
			public Guid uuidKeyID;
		}
		[CRepr]
		public struct BDA_WMDRMTUNER_PURCHASEENTITLEMENT
		{
			public int32 lResult;
			public uint32 ulDescrambleStatus;
			public uint32 ulCaptureTokenLength;
			public uint8[] argbCaptureTokenBuffer;
		}
		[CRepr]
		public struct BDA_TUNER_TUNERSTATE
		{
			public int32 lResult;
			public uint32 ulTuneLength;
			public uint8[] argbTuneData;
		}
		[CRepr]
		public struct BDA_TUNER_DIAGNOSTICS
		{
			public int32 lResult;
			public uint32 ulSignalLevel;
			public uint32 ulSignalLevelQuality;
			public uint32 ulSignalNoiseRatio;
		}
		[CRepr]
		public struct BDA_STRING
		{
			public int32 lResult;
			public uint32 ulStringSize;
			public uint8[] argbString;
		}
		[CRepr]
		public struct BDA_SCAN_CAPABILTIES
		{
			public int32 lResult;
			public uint64 ul64AnalogStandardsSupported;
		}
		[CRepr]
		public struct BDA_SCAN_STATE
		{
			public int32 lResult;
			public uint32 ulSignalLock;
			public uint32 ulSecondsLeft;
			public uint32 ulCurrentFrequency;
		}
		[CRepr]
		public struct BDA_SCAN_START
		{
			public int32 lResult;
			public uint32 LowerFrequency;
			public uint32 HigerFrequency;
		}
		[CRepr]
		public struct BDA_GDDS_DATATYPE
		{
			public int32 lResult;
			public Guid uuidDataType;
		}
		[CRepr]
		public struct BDA_GDDS_DATA
		{
			public int32 lResult;
			public uint32 ulDataLength;
			public uint32 ulPercentageProgress;
			public uint8[] argbData;
		}
		[CRepr]
		public struct BDA_USERACTIVITY_INTERVAL
		{
			public int32 lResult;
			public uint32 ulActivityInterval;
		}
		[CRepr]
		public struct BDA_CAS_CHECK_ENTITLEMENTTOKEN
		{
			public int32 lResult;
			public uint32 ulDescrambleStatus;
		}
		[CRepr]
		public struct BDA_CAS_CLOSE_MMIDIALOG
		{
			public int32 lResult;
			public uint32 SessionResult;
		}
		[CRepr]
		public struct BDA_CAS_REQUESTTUNERDATA
		{
			public uint8 ucRequestPriority;
			public uint8 ucRequestReason;
			public uint8 ucRequestConsequences;
			public uint32 ulEstimatedTime;
		}
		[CRepr]
		public struct BDA_CAS_OPENMMIDATA
		{
			public uint32 ulDialogNumber;
			public uint32 ulDialogRequest;
			public Guid uuidDialogType;
			public uint16 usDialogDataLength;
			public uint8[] argbDialogData;
		}
		[CRepr]
		public struct BDA_CAS_CLOSEMMIDATA
		{
			public uint32 ulDialogNumber;
		}
		[CRepr]
		public struct BDA_ISDBCAS_REQUESTHEADER
		{
			public uint8 bInstruction;
			public uint8[3] bReserved;
			public uint32 ulDataLength;
			public uint8[] argbIsdbCommand;
		}
		[CRepr]
		public struct BDA_ISDBCAS_RESPONSEDATA
		{
			public int32 lResult;
			public uint32 ulRequestID;
			public uint32 ulIsdbStatus;
			public uint32 ulIsdbDataSize;
			public uint8[] argbIsdbCommandData;
		}
		[CRepr]
		public struct BDA_ISDBCAS_EMG_REQ
		{
			public uint8 bCLA;
			public uint8 bINS;
			public uint8 bP1;
			public uint8 bP2;
			public uint8 bLC;
			public uint8[6] bCardId;
			public uint8 bProtocol;
			public uint8 bCABroadcasterGroupId;
			public uint8 bMessageControl;
			public uint8[] bMessageCode;
		}
		[CRepr]
		public struct BDA_MUX_PIDLISTITEM
		{
			public uint16 usPIDNumber;
			public uint16 usProgramNumber;
			public MUX_PID_TYPE ePIDType;
		}
		[CRepr]
		public struct BDA_TS_SELECTORINFO
		{
			public uint8 bTSInfolength;
			public uint8[2] bReserved;
			public Guid guidNetworkType;
			public uint8 bTSIDCount;
			public uint16[] usTSID;
		}
		[CRepr]
		public struct BDA_TS_SELECTORINFO_ISDBS_EXT
		{
			public uint8[48] bTMCC;
		}
		[CRepr]
		public struct BDA_DVBT2_L1_SIGNALLING_DATA
		{
			public uint8 L1Pre_TYPE;
			public uint8 L1Pre_BWT_S1_S2;
			public uint8 L1Pre_REPETITION_GUARD_PAPR;
			public uint8 L1Pre_MOD_COD_FEC;
			public uint8[5] L1Pre_POSTSIZE_INFO_PILOT;
			public uint8 L1Pre_TX_ID_AVAIL;
			public uint8[2] L1Pre_CELL_ID;
			public uint8[2] L1Pre_NETWORK_ID;
			public uint8[2] L1Pre_T2SYSTEM_ID;
			public uint8 L1Pre_NUM_T2_FRAMES;
			public uint8[2] L1Pre_NUM_DATA_REGENFLAG_L1POSTEXT;
			public uint8[2] L1Pre_NUMRF_CURRENTRF_RESERVED;
			public uint8[4] L1Pre_CRC32;
			public uint8[] L1PostData;
		}
		[CRepr]
		public struct BDA_RATING_PINRESET
		{
			public uint8 bPinLength;
			public uint8[] argbNewPin;
		}
		[CRepr]
		public struct MPEG2_TRANSPORT_STRIDE
		{
			public uint32 dwOffset;
			public uint32 dwPacketLength;
			public uint32 dwStride;
		}
		[CRepr]
		public struct BDA_SIGNAL_TIMEOUTS
		{
			public uint32 ulCarrierTimeoutMs;
			public uint32 ulScanningTimeoutMs;
			public uint32 ulTuningTimeoutMs;
		}
		[CRepr]
		public struct EALocationCodeType
		{
			public LocationCodeSchemeType LocationCodeScheme;
			public uint8 state_code;
			public uint8 county_subdivision;
			public uint16 county_code;
		}
		[CRepr]
		public struct SmartCardApplication
		{
			public ApplicationTypeType ApplicationType;
			public uint16 ApplicationVersion;
			public BSTR pbstrApplicationName;
			public BSTR pbstrApplicationURL;
		}
		[CRepr]
		public struct AMVAUncompBufferInfo
		{
			public uint32 dwMinNumSurfaces;
			public uint32 dwMaxNumSurfaces;
			public DDPIXELFORMAT ddUncompPixelFormat;
		}
		[CRepr]
		public struct AMVAUncompDataInfo
		{
			public uint32 dwUncompWidth;
			public uint32 dwUncompHeight;
			public DDPIXELFORMAT ddUncompPixelFormat;
		}
		[CRepr]
		public struct AMVAInternalMemInfo
		{
			public uint32 dwScratchMemAlloc;
		}
		[CRepr]
		public struct AMVACompBufferInfo
		{
			public uint32 dwNumCompBuffers;
			public uint32 dwWidthToCreate;
			public uint32 dwHeightToCreate;
			public uint32 dwBytesToAllocate;
			public DDSCAPS2 ddCompCaps;
			public DDPIXELFORMAT ddPixelFormat;
		}
		[CRepr]
		public struct AMVABeginFrameInfo
		{
			public uint32 dwDestSurfaceIndex;
			public void* pInputData;
			public uint32 dwSizeInputData;
			public void* pOutputData;
			public uint32 dwSizeOutputData;
		}
		[CRepr]
		public struct AMVAEndFrameInfo
		{
			public uint32 dwSizeMiscData;
			public void* pMiscData;
		}
		[CRepr]
		public struct AMVABUFFERINFO
		{
			public uint32 dwTypeIndex;
			public uint32 dwBufferIndex;
			public uint32 dwDataOffset;
			public uint32 dwDataSize;
		}
		[CRepr]
		public struct AM_WST_PAGE
		{
			public uint32 dwPageNr;
			public uint32 dwSubPageNr;
			public uint8* pucPageData;
		}
		[CRepr]
		public struct TRUECOLORINFO
		{
			public uint32[3] dwBitMasks;
			public RGBQUAD[256] bmiColors;
		}
		[CRepr]
		public struct VIDEOINFOHEADER
		{
			public RECT rcSource;
			public RECT rcTarget;
			public uint32 dwBitRate;
			public uint32 dwBitErrorRate;
			public int64 AvgTimePerFrame;
			public BITMAPINFOHEADER bmiHeader;
		}
		[CRepr]
		public struct VIDEOINFO
		{
			public RECT rcSource;
			public RECT rcTarget;
			public uint32 dwBitRate;
			public uint32 dwBitErrorRate;
			public int64 AvgTimePerFrame;
			public BITMAPINFOHEADER bmiHeader;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public RGBQUAD[256] bmiColors;
				public uint32[3] dwBitMasks;
				public TRUECOLORINFO TrueColorInfo;
			}
		}
		[CRepr]
		public struct MPEG1VIDEOINFO
		{
			public VIDEOINFOHEADER hdr;
			public uint32 dwStartTimeCode;
			public uint32 cbSequenceHeader;
			public uint8[] bSequenceHeader;
		}
		[CRepr]
		public struct ANALOGVIDEOINFO
		{
			public RECT rcSource;
			public RECT rcTarget;
			public uint32 dwActiveWidth;
			public uint32 dwActiveHeight;
			public int64 AvgTimePerFrame;
		}
		[CRepr]
		public struct AM_FRAMESTEP_STEP
		{
			public uint32 dwFramesToStep;
		}
		[CRepr]
		public struct AM_MPEGSTREAMTYPE
		{
			public uint32 dwStreamId;
			public uint32 dwReserved;
			public AM_MEDIA_TYPE mt;
			public uint8[] bFormat;
		}
		[CRepr]
		public struct AM_MPEGSYSTEMTYPE
		{
			public uint32 dwBitRate;
			public uint32 cStreams;
			public AM_MPEGSTREAMTYPE[] Streams;
		}
		[CRepr]
		public struct VMR9PresentationInfo
		{
			public uint32 dwFlags;
			public IDirect3DSurface9 lpSurf;
			public int64 rtStart;
			public int64 rtEnd;
			public SIZE szAspectRatio;
			public RECT rcSrc;
			public RECT rcDst;
			public uint32 dwReserved1;
			public uint32 dwReserved2;
		}
		[CRepr]
		public struct VMR9AllocationInfo
		{
			public uint32 dwFlags;
			public uint32 dwWidth;
			public uint32 dwHeight;
			public D3DFORMAT Format;
			public D3DPOOL Pool;
			public uint32 MinBuffers;
			public SIZE szAspectRatio;
			public SIZE szNativeSize;
		}
		[CRepr]
		public struct VMR9NormalizedRect
		{
			public float left;
			public float top;
			public float right;
			public float bottom;
		}
		[CRepr]
		public struct VMR9ProcAmpControl
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public float Brightness;
			public float Contrast;
			public float Hue;
			public float Saturation;
		}
		[CRepr]
		public struct VMR9ProcAmpControlRange
		{
			public uint32 dwSize;
			public VMR9ProcAmpControlFlags dwProperty;
			public float MinValue;
			public float MaxValue;
			public float DefaultValue;
			public float StepSize;
		}
		[CRepr]
		public struct VMR9AlphaBitmap
		{
			public uint32 dwFlags;
			public HDC hdc;
			public IDirect3DSurface9 pDDS;
			public RECT rSrc;
			public VMR9NormalizedRect rDest;
			public float fAlpha;
			public uint32 clrSrcKey;
			public uint32 dwFilterMode;
		}
		[CRepr]
		public struct VMR9MonitorInfo
		{
			public uint32 uDevID;
			public RECT rcMonitor;
			public HMONITOR hMon;
			public uint32 dwFlags;
			public char16[32] szDevice;
			public char16[512] szDescription;
			public LARGE_INTEGER liDriverVersion;
			public uint32 dwVendorId;
			public uint32 dwDeviceId;
			public uint32 dwSubSysId;
			public uint32 dwRevision;
		}
		[CRepr]
		public struct VMR9Frequency
		{
			public uint32 dwNumerator;
			public uint32 dwDenominator;
		}
		[CRepr]
		public struct VMR9VideoDesc
		{
			public uint32 dwSize;
			public uint32 dwSampleWidth;
			public uint32 dwSampleHeight;
			public VMR9_SampleFormat SampleFormat;
			public uint32 dwFourCC;
			public VMR9Frequency InputSampleFreq;
			public VMR9Frequency OutputFrameFreq;
		}
		[CRepr]
		public struct VMR9DeinterlaceCaps
		{
			public uint32 dwSize;
			public uint32 dwNumPreviousOutputFrames;
			public uint32 dwNumForwardRefSamples;
			public uint32 dwNumBackwardRefSamples;
			public VMR9DeinterlaceTech DeinterlaceTechnology;
		}
		[CRepr]
		public struct VMR9VideoStreamInfo
		{
			public IDirect3DSurface9 pddsVideoSurface;
			public uint32 dwWidth;
			public uint32 dwHeight;
			public uint32 dwStrmID;
			public float fAlpha;
			public VMR9NormalizedRect rNormal;
			public int64 rtStart;
			public int64 rtEnd;
			public VMR9_SampleFormat SampleFormat;
		}
		[CRepr]
		public struct RIFFCHUNK
		{
			public uint32 fcc;
			public uint32 cb;
		}
		[CRepr]
		public struct RIFFLIST
		{
			public uint32 fcc;
			public uint32 cb;
			public uint32 fccListType;
		}
		[CRepr]
		public struct AVIMAINHEADER
		{
			public uint32 fcc;
			public uint32 cb;
			public uint32 dwMicroSecPerFrame;
			public uint32 dwMaxBytesPerSec;
			public uint32 dwPaddingGranularity;
			public uint32 dwFlags;
			public uint32 dwTotalFrames;
			public uint32 dwInitialFrames;
			public uint32 dwStreams;
			public uint32 dwSuggestedBufferSize;
			public uint32 dwWidth;
			public uint32 dwHeight;
			public uint32[4] dwReserved;
		}
		[CRepr]
		public struct AVIEXTHEADER
		{
			public uint32 fcc;
			public uint32 cb;
			public uint32 dwGrandFrames;
			public uint32[61] dwFuture;
		}
		[CRepr]
		public struct AVISTREAMHEADER
		{
			public uint32 fcc;
			public uint32 cb;
			public uint32 fccType;
			public uint32 fccHandler;
			public uint32 dwFlags;
			public uint16 wPriority;
			public uint16 wLanguage;
			public uint32 dwInitialFrames;
			public uint32 dwScale;
			public uint32 dwRate;
			public uint32 dwStart;
			public uint32 dwLength;
			public uint32 dwSuggestedBufferSize;
			public uint32 dwQuality;
			public uint32 dwSampleSize;
			public _rcFrame_e__Struct rcFrame;
			
			[CRepr]
			public struct _rcFrame_e__Struct
			{
				public int16 left;
				public int16 top;
				public int16 right;
				public int16 bottom;
			}
		}
		[CRepr]
		public struct AVIOLDINDEX
		{
			public uint32 fcc;
			public uint32 cb;
			public _avioldindex_entry[] aIndex;
			
			[CRepr]
			public struct _avioldindex_entry
			{
				public uint32 dwChunkId;
				public uint32 dwFlags;
				public uint32 dwOffset;
				public uint32 dwSize;
			}
		}
		[CRepr]
		public struct TIMECODEDATA
		{
			public TIMECODE time;
			public uint32 dwSMPTEflags;
			public uint32 dwUser;
		}
		[CRepr]
		public struct AVIMETAINDEX
		{
			public uint32 fcc;
			public uint32 cb;
			public uint16 wLongsPerEntry;
			public uint8 bIndexSubType;
			public uint8 bIndexType;
			public uint32 nEntriesInUse;
			public uint32 dwChunkId;
			public uint32[3] dwReserved;
			public uint32[] adwIndex;
		}
		[CRepr]
		public struct AVISUPERINDEX
		{
			public uint32 fcc;
			public uint32 cb;
			public uint16 wLongsPerEntry;
			public uint8 bIndexSubType;
			public uint8 bIndexType;
			public uint32 nEntriesInUse;
			public uint32 dwChunkId;
			public uint32[3] dwReserved;
			public _avisuperindex_entry[1022] aIndex;
			
			[CRepr]
			public struct _avisuperindex_entry
			{
				public uint64 qwOffset;
				public uint32 dwSize;
				public uint32 dwDuration;
			}
		}
		[CRepr]
		public struct AVISTDINDEX_ENTRY
		{
			public uint32 dwOffset;
			public uint32 dwSize;
		}
		[CRepr]
		public struct AVISTDINDEX
		{
			public uint32 fcc;
			public uint32 cb;
			public uint16 wLongsPerEntry;
			public uint8 bIndexSubType;
			public uint8 bIndexType;
			public uint32 nEntriesInUse;
			public uint32 dwChunkId;
			public uint64 qwBaseOffset;
			public uint32 dwReserved_3;
			public AVISTDINDEX_ENTRY[2044] aIndex;
		}
		[CRepr]
		public struct AVITIMEDINDEX_ENTRY
		{
			public uint32 dwOffset;
			public uint32 dwSize;
			public uint32 dwDuration;
		}
		[CRepr]
		public struct _avitimedindex
		{
			public uint32 fcc;
			public uint32 cb;
			public uint16 wLongsPerEntry;
			public uint8 bIndexSubType;
			public uint8 bIndexType;
			public uint32 nEntriesInUse;
			public uint32 dwChunkId;
			public uint64 qwBaseOffset;
			public uint32 dwReserved_3;
			public AVITIMEDINDEX_ENTRY[1362] aIndex;
			public uint32[2734] adwTrailingFill;
		}
		[CRepr]
		public struct AVITIMECODEINDEX
		{
			public uint32 fcc;
			public uint32 cb;
			public uint16 wLongsPerEntry;
			public uint8 bIndexSubType;
			public uint8 bIndexType;
			public uint32 nEntriesInUse;
			public uint32 dwChunkId;
			public uint32[3] dwReserved;
			public TIMECODEDATA[1022] aIndex;
		}
		[CRepr]
		public struct AVITCDLINDEX_ENTRY
		{
			public uint32 dwTick;
			public TIMECODE time;
			public uint32 dwSMPTEflags;
			public uint32 dwUser;
			public int8[12] szReelId;
		}
		[CRepr]
		public struct _avitcdlindex
		{
			public uint32 fcc;
			public uint32 cb;
			public uint16 wLongsPerEntry;
			public uint8 bIndexSubType;
			public uint8 bIndexType;
			public uint32 nEntriesInUse;
			public uint32 dwChunkId;
			public uint32[3] dwReserved;
			public AVITCDLINDEX_ENTRY[584] aIndex;
			public uint32[3512] adwTrailingFill;
		}
		[CRepr]
		public struct AVIFIELDINDEX
		{
			public uint32 fcc;
			public uint32 cb;
			public uint16 wLongsPerEntry;
			public uint8 bIndexSubType;
			public uint8 bIndexType;
			public uint32 nEntriesInUse;
			public uint32 dwChunkId;
			public uint64 qwBaseOffset;
			public uint32 dwReserved3;
			public _avifieldindex_entry[] aIndex;
			
			[CRepr]
			public struct _avifieldindex_entry
			{
				public uint32 dwOffset;
				public uint32 dwSize;
				public uint32 dwOffsetField2;
			}
		}
		[CRepr]
		public struct MainAVIHeader
		{
			public uint32 dwMicroSecPerFrame;
			public uint32 dwMaxBytesPerSec;
			public uint32 dwPaddingGranularity;
			public uint32 dwFlags;
			public uint32 dwTotalFrames;
			public uint32 dwInitialFrames;
			public uint32 dwStreams;
			public uint32 dwSuggestedBufferSize;
			public uint32 dwWidth;
			public uint32 dwHeight;
			public uint32[4] dwReserved;
		}
		[CRepr]
		public struct AVIStreamHeader
		{
			public uint32 fccType;
			public uint32 fccHandler;
			public uint32 dwFlags;
			public uint16 wPriority;
			public uint16 wLanguage;
			public uint32 dwInitialFrames;
			public uint32 dwScale;
			public uint32 dwRate;
			public uint32 dwStart;
			public uint32 dwLength;
			public uint32 dwSuggestedBufferSize;
			public uint32 dwQuality;
			public uint32 dwSampleSize;
			public RECT rcFrame;
		}
		[CRepr]
		public struct AVIINDEXENTRY
		{
			public uint32 ckid;
			public uint32 dwFlags;
			public uint32 dwChunkOffset;
			public uint32 dwChunkLength;
		}
		[CRepr]
		public struct AVIPALCHANGE
		{
			public uint8 bFirstEntry;
			public uint8 bNumEntries;
			public uint16 wFlags;
			public PALETTEENTRY[] peNew;
		}
		[CRepr]
		public struct AM_AC3_ERROR_CONCEALMENT
		{
			public BOOL fRepeatPreviousBlock;
			public BOOL fErrorInCurrentBlock;
		}
		[CRepr]
		public struct AM_AC3_ALTERNATE_AUDIO
		{
			public BOOL fStereo;
			public uint32 DualMode;
		}
		[CRepr]
		public struct AM_AC3_DOWNMIX
		{
			public BOOL fDownMix;
			public BOOL fDolbySurround;
		}
		[CRepr]
		public struct AM_AC3_BIT_STREAM_MODE
		{
			public int32 BitStreamMode;
		}
		[CRepr]
		public struct AM_AC3_DIALOGUE_LEVEL
		{
			public uint32 DialogueLevel;
		}
		[CRepr]
		public struct AM_AC3_ROOM_TYPE
		{
			public BOOL fLargeRoom;
		}
		[CRepr]
		public struct AM_DVD_YUV
		{
			public uint8 Reserved;
			public uint8 Y;
			public uint8 U;
			public uint8 V;
		}
		[CRepr]
		public struct AM_PROPERTY_SPPAL
		{
			public AM_DVD_YUV[16] sppal;
		}
		[CRepr]
		public struct AM_COLCON
		{
			public uint8 _bitfield1;
			public uint8 _bitfield2;
			public uint8 _bitfield3;
			public uint8 _bitfield4;
		}
		[CRepr]
		public struct AM_PROPERTY_SPHLI
		{
			public uint16 HLISS;
			public uint16 Reserved;
			public uint32 StartPTM;
			public uint32 EndPTM;
			public uint16 StartX;
			public uint16 StartY;
			public uint16 StopX;
			public uint16 StopY;
			public AM_COLCON ColCon;
		}
		[CRepr]
		public struct AM_DVDCOPY_CHLGKEY
		{
			public uint8[10] ChlgKey;
			public uint8[2] Reserved;
		}
		[CRepr]
		public struct AM_DVDCOPY_BUSKEY
		{
			public uint8[5] BusKey;
			public uint8[] Reserved;
		}
		[CRepr]
		public struct AM_DVDCOPY_DISCKEY
		{
			public uint8[2048] DiscKey;
		}
		[CRepr]
		public struct AM_DVDCOPY_TITLEKEY
		{
			public uint32 KeyFlags;
			public uint32[2] Reserved1;
			public uint8[6] TitleKey;
			public uint8[2] Reserved2;
		}
		[CRepr]
		public struct AM_COPY_MACROVISION
		{
			public uint32 MACROVISIONLevel;
		}
		[CRepr]
		public struct AM_DVDCOPY_SET_COPY_STATE
		{
			public uint32 DVDCopyState;
		}
		[CRepr]
		public struct DVD_REGION
		{
			public uint8 CopySystem;
			public uint8 RegionData;
			public uint8 SystemRegion;
			public uint8 ResetCount;
		}
		[CRepr]
		public struct VIDEOINFOHEADER2
		{
			public RECT rcSource;
			public RECT rcTarget;
			public uint32 dwBitRate;
			public uint32 dwBitErrorRate;
			public int64 AvgTimePerFrame;
			public uint32 dwInterlaceFlags;
			public uint32 dwCopyProtectFlags;
			public uint32 dwPictAspectRatioX;
			public uint32 dwPictAspectRatioY;
			public _Anonymous_e__Union Anonymous;
			public uint32 dwReserved2;
			public BITMAPINFOHEADER bmiHeader;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 dwControlFlags;
				public uint32 dwReserved1;
			}
		}
		[CRepr]
		public struct MPEG2VIDEOINFO
		{
			public VIDEOINFOHEADER2 hdr;
			public uint32 dwStartTimeCode;
			public uint32 cbSequenceHeader;
			public uint32 dwProfile;
			public uint32 dwLevel;
			public MPEG2VIDEOINFO_FLAGS dwFlags;
			public uint32[] dwSequenceHeader;
		}
		[CRepr]
		public struct AM_DvdKaraokeData
		{
			public uint32 dwDownmix;
			public uint32 dwSpeakerAssignment;
		}
		[CRepr]
		public struct AM_SimpleRateChange
		{
			public int64 StartTime;
			public int32 Rate;
		}
		[CRepr]
		public struct AM_QueryRate
		{
			public int32 lMaxForwardFullFrame;
			public int32 lMaxReverseFullFrame;
		}
		[CRepr]
		public struct AM_ExactRateChange
		{
			public int64 OutputZeroTime;
			public int32 Rate;
		}
		[CRepr]
		public struct AM_DVD_ChangeRate
		{
			public int64 StartInTime;
			public int64 StartOutTime;
			public int32 Rate;
		}
		[CRepr]
		public struct MP_PARAMINFO
		{
			public MP_TYPE mpType;
			public uint32 mopCaps;
			public float mpdMinValue;
			public float mpdMaxValue;
			public float mpdNeutralValue;
			public char16[32] szUnitText;
			public char16[32] szLabel;
		}
		[CRepr]
		public struct MP_ENVELOPE_SEGMENT
		{
			public int64 rtStart;
			public int64 rtEnd;
			public float valStart;
			public float valEnd;
			public MP_CURVE_TYPE iCurve;
			public uint32 flags;
		}
		[CRepr]
		public struct VFW_FILTERLIST
		{
			public uint32 cFilters;
			public Guid[] aClsId;
		}
		[CRepr]
		public struct DXVA2_VIDEOSAMPLE
		{
			public int64 Start;
			public int64 End;
			public DXVA2_ExtendedFormat SampleFormat;
			public uint32 SampleFlags;
			public void* SrcResource;
			public RECT SrcRect;
			public RECT DstRect;
			public DXVA2_AYUVSample8[16] Pal;
			public DXVA2_Fixed32 PlanarAlpha;
		}
		[CRepr]
		public struct DXVA2_VIDEOPROCESSBLT
		{
			public int64 TargetFrame;
			public RECT TargetRect;
			public SIZE ConstrictionSize;
			public uint32 StreamingFlags;
			public DXVA2_AYUVSample16 BackgroundColor;
			public DXVA2_ExtendedFormat DestFormat;
			public uint32 DestFlags;
			public DXVA2_ProcAmpValues ProcAmpValues;
			public DXVA2_Fixed32 Alpha;
			public DXVA2_FilterValues NoiseFilterLuma;
			public DXVA2_FilterValues NoiseFilterChroma;
			public DXVA2_FilterValues DetailFilterLuma;
			public DXVA2_FilterValues DetailFilterChroma;
			public DXVA2_VIDEOSAMPLE* pSrcSurfaces;
			public uint32 NumSrcSurfaces;
		}
		[CRepr]
		public struct DXVA2SW_CALLBACKS
		{
			public uint32 Size;
			public PDXVA2SW_GETVIDEOPROCESSORRENDERTARGETCOUNT GetVideoProcessorRenderTargetCount;
			public PDXVA2SW_GETVIDEOPROCESSORRENDERTARGETS GetVideoProcessorRenderTargets;
			public PDXVA2SW_GETVIDEOPROCESSORCAPS GetVideoProcessorCaps;
			public PDXVA2SW_GETVIDEOPROCESSORSUBSTREAMFORMATCOUNT GetVideoProcessorSubStreamFormatCount;
			public PDXVA2SW_GETVIDEOPROCESSORSUBSTREAMFORMATS GetVideoProcessorSubStreamFormats;
			public PDXVA2SW_GETPROCAMPRANGE GetProcAmpRange;
			public PDXVA2SW_GETFILTERPROPERTYRANGE GetFilterPropertyRange;
			public PDXVA2SW_CREATEVIDEOPROCESSDEVICE CreateVideoProcessDevice;
			public PDXVA2SW_DESTROYVIDEOPROCESSDEVICE DestroyVideoProcessDevice;
			public PDXVA2SW_VIDEOPROCESSBEGINFRAME VideoProcessBeginFrame;
			public PDXVA2SW_VIDEOPROCESSENDFRAME VideoProcessEndFrame;
			public PDXVA2SW_VIDEOPROCESSSETRENDERTARGET VideoProcessSetRenderTarget;
			public PDXVA2SW_VIDEOPROCESSBLT VideoProcessBlt;
		}
		[CRepr]
		public struct DXVA2Trace_DecodeDevCreatedData
		{
			public EVENT_TRACE_HEADER wmiHeader;
			public uint64 pObject;
			public uint64 pD3DDevice;
			public Guid DeviceGuid;
			public uint32 Width;
			public uint32 Height;
			public BOOL Enter;
		}
		[CRepr]
		public struct DXVA2Trace_DecodeDeviceData
		{
			public EVENT_TRACE_HEADER wmiHeader;
			public uint64 pObject;
			public BOOL Enter;
		}
		[CRepr]
		public struct DXVA2Trace_DecodeDevBeginFrameData
		{
			public EVENT_TRACE_HEADER wmiHeader;
			public uint64 pObject;
			public uint64 pRenderTarget;
			public BOOL Enter;
		}
		[CRepr]
		public struct DXVA2Trace_DecodeDevGetBufferData
		{
			public EVENT_TRACE_HEADER wmiHeader;
			public uint64 pObject;
			public uint32 BufferType;
			public BOOL Enter;
		}
		[CRepr]
		public struct DXVA2Trace_VideoProcessDevCreatedData
		{
			public EVENT_TRACE_HEADER wmiHeader;
			public uint64 pObject;
			public uint64 pD3DDevice;
			public Guid DeviceGuid;
			public uint32 RTFourCC;
			public uint32 Width;
			public uint32 Height;
			public BOOL Enter;
		}
		[CRepr]
		public struct DXVA2Trace_VideoProcessDeviceData
		{
			public EVENT_TRACE_HEADER wmiHeader;
			public uint64 pObject;
			public BOOL Enter;
		}
		[CRepr]
		public struct DXVA2TraceVideoProcessBltData
		{
			public EVENT_TRACE_HEADER wmiHeader;
			public uint64 pObject;
			public uint64 pRenderTarget;
			public uint64 TargetFrameTime;
			public RECT TargetRect;
			public BOOL Enter;
		}
		[CRepr]
		public struct WMDRMProtectionInfo
		{
			public uint16[25] wszKID;
			public uint64 qwCounter;
			public uint64 qwIndex;
			public uint8 bOffset;
		}
		[CRepr]
		public struct BadSampleInfo
		{
			public HRESULT hrReason;
		}
		[CRepr]
		public struct STREAMBUFFER_ATTRIBUTE
		{
			public PWSTR pszName;
			public STREAMBUFFER_ATTR_DATATYPE StreamBufferAttributeType;
			public uint8* pbAttribute;
			public uint16 cbLength;
		}
		[CRepr]
		public struct SBE_PIN_DATA
		{
			public uint64 cDataBytes;
			public uint64 cSamplesProcessed;
			public uint64 cDiscontinuities;
			public uint64 cSyncPoints;
			public uint64 cTimestamps;
		}
		[CRepr]
		public struct SBE2_STREAM_DESC
		{
			public uint32 Version;
			public uint32 StreamId;
			public uint32 Default;
			public uint32 Reserved;
		}
		[CRepr]
		public struct DVR_STREAM_DESC
		{
			public uint32 Version;
			public uint32 StreamId;
			public BOOL Default;
			public BOOL Creation;
			public uint32 Reserved;
			public Guid guidSubMediaType;
			public Guid guidFormatType;
			public AM_MEDIA_TYPE MediaType;
		}
		[CRepr]
		public struct PID_BITS_MIDL
		{
			public uint16 Bits;
		}
		[CRepr]
		public struct MPEG_HEADER_BITS_MIDL
		{
			public uint16 Bits;
		}
		[CRepr]
		public struct MPEG_HEADER_VERSION_BITS_MIDL
		{
			public uint8 Bits;
		}
		[CRepr]
		public struct TID_EXTENSION
		{
			public uint16 wTidExt;
			public uint16 wCount;
		}
		[CRepr]
		public struct SECTION
		{
			public uint8 TableId;
			public _Header_e__Union Header;
			public uint8[] SectionData;
			
			[CRepr, Union]
			public struct _Header_e__Union
			{
				public MPEG_HEADER_BITS_MIDL S;
				public uint16 W;
			}
		}
		[CRepr]
		public struct LONG_SECTION
		{
			public uint8 TableId;
			public _Header_e__Union Header;
			public uint16 TableIdExtension;
			public _Version_e__Union Version;
			public uint8 SectionNumber;
			public uint8 LastSectionNumber;
			public uint8[] RemainingData;
			
			[CRepr, Union]
			public struct _Header_e__Union
			{
				public MPEG_HEADER_BITS_MIDL S;
				public uint16 W;
			}
			[CRepr, Union]
			public struct _Version_e__Union
			{
				public MPEG_HEADER_VERSION_BITS_MIDL S;
				public uint8 B;
			}
		}
		[CRepr]
		public struct DSMCC_SECTION
		{
			public uint8 TableId;
			public _Header_e__Union Header;
			public uint16 TableIdExtension;
			public _Version_e__Union Version;
			public uint8 SectionNumber;
			public uint8 LastSectionNumber;
			public uint8 ProtocolDiscriminator;
			public uint8 DsmccType;
			public uint16 MessageId;
			public uint32 TransactionId;
			public uint8 Reserved;
			public uint8 AdaptationLength;
			public uint16 MessageLength;
			public uint8[] RemainingData;
			
			[CRepr, Union]
			public struct _Header_e__Union
			{
				public MPEG_HEADER_BITS_MIDL S;
				public uint16 W;
			}
			[CRepr, Union]
			public struct _Version_e__Union
			{
				public MPEG_HEADER_VERSION_BITS_MIDL S;
				public uint8 B;
			}
		}
		[CRepr]
		public struct MPEG_RQST_PACKET
		{
			public uint32 dwLength;
			public SECTION* pSection;
		}
		[CRepr]
		public struct MPEG_PACKET_LIST
		{
			public uint16 wPacketCount;
			public MPEG_RQST_PACKET*[] PacketList;
		}
		[CRepr]
		public struct DSMCC_FILTER_OPTIONS
		{
			public BOOL fSpecifyProtocol;
			public uint8 Protocol;
			public BOOL fSpecifyType;
			public uint8 Type;
			public BOOL fSpecifyMessageId;
			public uint16 MessageId;
			public BOOL fSpecifyTransactionId;
			public BOOL fUseTrxIdMessageIdMask;
			public uint32 TransactionId;
			public BOOL fSpecifyModuleVersion;
			public uint8 ModuleVersion;
			public BOOL fSpecifyBlockNumber;
			public uint16 BlockNumber;
			public BOOL fGetModuleCall;
			public uint16 NumberOfBlocksInModule;
		}
		[CRepr]
		public struct ATSC_FILTER_OPTIONS
		{
			public BOOL fSpecifyEtmId;
			public uint32 EtmId;
		}
		[CRepr]
		public struct DVB_EIT_FILTER_OPTIONS
		{
			public BOOL fSpecifySegment;
			public uint8 bSegment;
		}
		[CRepr]
		public struct MPEG2_FILTER
		{
			public uint8 bVersionNumber;
			public uint16 wFilterSize;
			public BOOL fUseRawFilteringBits;
			public uint8[16] Filter;
			public uint8[16] Mask;
			public BOOL fSpecifyTableIdExtension;
			public uint16 TableIdExtension;
			public BOOL fSpecifyVersion;
			public uint8 Version;
			public BOOL fSpecifySectionNumber;
			public uint8 SectionNumber;
			public BOOL fSpecifyCurrentNext;
			public BOOL fNext;
			public BOOL fSpecifyDsmccOptions;
			public DSMCC_FILTER_OPTIONS Dsmcc;
			public BOOL fSpecifyAtscOptions;
			public ATSC_FILTER_OPTIONS Atsc;
		}
		[CRepr]
		public struct MPEG2_FILTER2
		{
			public _Anonymous_e__Union Anonymous;
			public BOOL fSpecifyDvbEitOptions;
			public DVB_EIT_FILTER_OPTIONS DvbEit;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint8[124] bVersion1Bytes;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint8 bVersionNumber;
					public uint16 wFilterSize;
					public BOOL fUseRawFilteringBits;
					public uint8[16] Filter;
					public uint8[16] Mask;
					public BOOL fSpecifyTableIdExtension;
					public uint16 TableIdExtension;
					public BOOL fSpecifyVersion;
					public uint8 Version;
					public BOOL fSpecifySectionNumber;
					public uint8 SectionNumber;
					public BOOL fSpecifyCurrentNext;
					public BOOL fNext;
					public BOOL fSpecifyDsmccOptions;
					public DSMCC_FILTER_OPTIONS Dsmcc;
					public BOOL fSpecifyAtscOptions;
					public ATSC_FILTER_OPTIONS Atsc;
				}
			}
		}
		[CRepr]
		public struct MPEG_STREAM_BUFFER
		{
			public HRESULT hr;
			public uint32 dwDataBufferSize;
			public uint32 dwSizeOfDataRead;
			public uint8* pDataBuffer;
		}
		[CRepr]
		public struct MPEG_TIME
		{
			public uint8 Hours;
			public uint8 Minutes;
			public uint8 Seconds;
		}
		[CRepr]
		public struct MPEG_DATE
		{
			public uint8 Date;
			public uint8 Month;
			public uint16 Year;
		}
		[CRepr]
		public struct MPEG_DATE_AND_TIME
		{
			public MPEG_DATE D;
			public MPEG_TIME T;
		}
		[CRepr]
		public struct MPEG_BCS_DEMUX
		{
			public uint32 AVMGraphId;
		}
		[CRepr]
		public struct MPEG_WINSOCK
		{
			public uint32 AVMGraphId;
		}
		[CRepr]
		public struct MPEG_CONTEXT
		{
			public MPEG_CONTEXT_TYPE Type;
			public _U_e__Union U;
			
			[CRepr, Union]
			public struct _U_e__Union
			{
				public MPEG_BCS_DEMUX Demux;
				public MPEG_WINSOCK Winsock;
			}
		}
		[CRepr]
		public struct MPEG_SERVICE_REQUEST
		{
			public MPEG_REQUEST_TYPE Type;
			public MPEG_CONTEXT Context;
			public uint16 Pid;
			public uint8 TableId;
			public MPEG2_FILTER Filter;
			public uint32 Flags;
		}
		[CRepr]
		public struct MPEG_SERVICE_RESPONSE
		{
			public uint32 IPAddress;
			public uint16 Port;
		}
		[CRepr]
		public struct DSMCC_ELEMENT
		{
			public uint16 pid;
			public uint8 bComponentTag;
			public uint32 dwCarouselId;
			public uint32 dwTransactionId;
			public DSMCC_ELEMENT* pNext;
		}
		[CRepr]
		public struct MPE_ELEMENT
		{
			public uint16 pid;
			public uint8 bComponentTag;
			public MPE_ELEMENT* pNext;
		}
		[CRepr]
		public struct MPEG_STREAM_FILTER
		{
			public uint16 wPidValue;
			public uint32 dwFilterSize;
			public BOOL fCrcEnabled;
			public uint8[16] rgchFilter;
			public uint8[16] rgchMask;
		}
		[CRepr]
		public struct Mpeg2TableSampleHdr
		{
			public uint8 SectionCount;
			public uint8[3] Reserved;
			public int32[] SectionOffsets;
		}
		[CRepr]
		public struct ProgramElement
		{
			public uint16 wProgramNumber;
			public uint16 wProgramMapPID;
		}
		[CRepr]
		public struct UDCR_TAG
		{
			public uint8 bVersion;
			public uint8[25] KID;
			public uint64 ullBaseCounter;
			public uint64 ullBaseCounterRange;
			public BOOL fScrambled;
			public uint8 bStreamMark;
			public uint32 dwReserved1;
			public uint32 dwReserved2;
		}
		[CRepr]
		public struct PIC_SEQ_SAMPLE
		{
			public uint32 _bitfield;
		}
		[CRepr]
		public struct SAMPLE_SEQ_OFFSET
		{
			public uint32 _bitfield;
		}
		[CRepr]
		public struct VA_OPTIONAL_VIDEO_PROPERTIES
		{
			public uint16 dwPictureHeight;
			public uint16 dwPictureWidth;
			public uint16 dwAspectRatioX;
			public uint16 dwAspectRatioY;
			public VA_VIDEO_FORMAT VAVideoFormat;
			public VA_COLOR_PRIMARIES VAColorPrimaries;
			public VA_TRANSFER_CHARACTERISTICS VATransferCharacteristics;
			public VA_MATRIX_COEFFICIENTS VAMatrixCoefficients;
		}
		[CRepr]
		public struct TRANSPORT_PROPERTIES
		{
			public uint32 PID;
			public int64 PCR;
			public _Fields_e__Union Fields;
			
			[CRepr, Union]
			public struct _Fields_e__Union
			{
				public _Others Others;
				public int64 Value;
				
				[CRepr]
				public struct _Others
				{
					public int64 _bitfield;
				}
			}
		}
		[CRepr]
		public struct PBDA_TAG_ATTRIBUTE
		{
			public Guid TableUUId;
			public uint8 TableId;
			public uint16 VersionNo;
			public uint32 TableDataSize;
			public uint8[] TableData;
		}
		[CRepr]
		public struct CAPTURE_STREAMTIME
		{
			public int64 StreamTime;
		}
		[CRepr]
		public struct DSHOW_STREAM_DESC
		{
			public uint32 VersionNo;
			public uint32 StreamId;
			public BOOL Default;
			public BOOL Creation;
			public uint32 Reserved;
		}
		[CRepr]
		public struct SAMPLE_LIVE_STREAM_TIME
		{
			public uint64 qwStreamTime;
			public uint64 qwLiveTime;
		}
		[CRepr]
		public struct KSP_BDA_NODE_PIN
		{
			public KSIDENTIFIER Property;
			public uint32 ulNodeType;
			public uint32 ulInputPinId;
			public uint32 ulOutputPinId;
		}
		[CRepr]
		public struct KSM_BDA_PIN
		{
			public KSIDENTIFIER Method;
			public _Anonymous_e__Union Anonymous;
			public uint32 Reserved;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 PinId;
				public uint32 PinType;
			}
		}
		[CRepr]
		public struct KSM_BDA_PIN_PAIR
		{
			public KSIDENTIFIER Method;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint32 InputPinId;
				public uint32 InputPinType;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 OutputPinId;
				public uint32 OutputPinType;
			}
		}
		[CRepr]
		public struct KSP_NODE_ESPID
		{
			public KSP_NODE Property;
			public uint32 EsPid;
		}
		[CRepr]
		public struct KSM_BDA_DEBUG_LEVEL
		{
			public KSIDENTIFIER Method;
			public uint8 ucDebugLevel;
			public uint32 ulDebugStringSize;
			public uint8[] argbDebugString;
		}
		[CRepr]
		public struct BDA_DEBUG_DATA
		{
			public int32 lResult;
			public Guid uuidDebugDataType;
			public uint32 ulDataSize;
			public uint8[] argbDebugData;
		}
		[CRepr]
		public struct BDA_EVENT_DATA
		{
			public int32 lResult;
			public uint32 ulEventID;
			public Guid uuidEventType;
			public uint32 ulEventDataLength;
			public uint8[] argbEventData;
		}
		[CRepr]
		public struct KSM_BDA_EVENT_COMPLETE
		{
			public KSIDENTIFIER Method;
			public uint32 ulEventID;
			public uint32 ulEventResult;
		}
		[CRepr]
		public struct KSM_BDA_DRM_SETDRM
		{
			public KSM_NODE NodeMethod;
			public Guid NewDRMuuid;
		}
		[CRepr]
		public struct KSM_BDA_BUFFER
		{
			public KSM_NODE NodeMethod;
			public uint32 ulBufferSize;
			public uint8[] argbBuffer;
		}
		[CRepr]
		public struct KSM_BDA_WMDRM_LICENSE
		{
			public KSM_NODE NodeMethod;
			public Guid uuidKeyID;
		}
		[CRepr]
		public struct KSM_BDA_WMDRM_RENEWLICENSE
		{
			public KSM_NODE NodeMethod;
			public uint32 ulXMRLicenseLength;
			public uint32 ulEntitlementTokenLength;
			public uint8[] argbDataBuffer;
		}
		[CRepr]
		public struct KSM_BDA_WMDRMTUNER_PURCHASEENTITLEMENT
		{
			public KSM_NODE NodeMethod;
			public uint32 ulDialogRequest;
			public CHAR[12] cLanguage;
			public uint32 ulPurchaseTokenLength;
			public uint8[] argbDataBuffer;
		}
		[CRepr]
		public struct KSM_BDA_WMDRMTUNER_SETPIDPROTECTION
		{
			public KSM_NODE NodeMethod;
			public uint32 ulPID;
			public Guid uuidKeyID;
		}
		[CRepr]
		public struct KSM_BDA_WMDRMTUNER_GETPIDPROTECTION
		{
			public KSM_NODE NodeMethod;
			public uint32 ulPID;
		}
		[CRepr]
		public struct KSM_BDA_WMDRMTUNER_SYNCVALUE
		{
			public KSM_NODE NodeMethod;
			public uint32 ulSyncValue;
		}
		[CRepr]
		public struct KSM_BDA_TUNER_TUNEREQUEST
		{
			public KSIDENTIFIER Method;
			public uint32 ulTuneLength;
			public uint8[] argbTuneData;
		}
		[CRepr]
		public struct KSM_BDA_GPNV_GETVALUE
		{
			public KSIDENTIFIER Method;
			public uint32 ulNameLength;
			public CHAR[12] cLanguage;
			public uint8[] argbData;
		}
		[CRepr]
		public struct KSM_BDA_GPNV_SETVALUE
		{
			public KSIDENTIFIER Method;
			public uint32 ulDialogRequest;
			public CHAR[12] cLanguage;
			public uint32 ulNameLength;
			public uint32 ulValueLength;
			public uint8[] argbName;
		}
		[CRepr]
		public struct KSM_BDA_GPNV_NAMEINDEX
		{
			public KSIDENTIFIER Method;
			public uint32 ulValueNameIndex;
		}
		[CRepr]
		public struct KSM_BDA_SCAN_CAPABILTIES
		{
			public KSIDENTIFIER Method;
			public Guid uuidBroadcastStandard;
		}
		[CRepr]
		public struct KSM_BDA_SCAN_FILTER
		{
			public KSIDENTIFIER Method;
			public uint32 ulScanModulationTypeSize;
			public uint64 AnalogVideoStandards;
			public uint8[] argbScanModulationTypes;
		}
		[CRepr]
		public struct KSM_BDA_SCAN_START
		{
			public KSIDENTIFIER Method;
			public uint32 LowerFrequency;
			public uint32 HigherFrequency;
		}
		[CRepr]
		public struct KSM_BDA_GDDS_TUNEXMLFROMIDX
		{
			public KSIDENTIFIER Method;
			public uint64 ulIdx;
		}
		[CRepr]
		public struct KSM_BDA_GDDS_SERVICEFROMTUNEXML
		{
			public KSIDENTIFIER Method;
			public uint32 ulTuneXmlLength;
			public uint8[] argbTuneXml;
		}
		[CRepr]
		public struct KSM_BDA_USERACTIVITY_USEREASON
		{
			public KSIDENTIFIER Method;
			public uint32 ulUseReason;
		}
		[CRepr]
		public struct KSM_BDA_CAS_ENTITLEMENTTOKEN
		{
			public KSM_NODE NodeMethod;
			public uint32 ulDialogRequest;
			public CHAR[12] cLanguage;
			public uint32 ulRequestType;
			public uint32 ulEntitlementTokenLen;
			public uint8[] argbEntitlementToken;
		}
		[CRepr]
		public struct KSM_BDA_CAS_CAPTURETOKEN
		{
			public KSM_NODE NodeMethod;
			public uint32 ulTokenLength;
			public uint8[] argbToken;
		}
		[CRepr]
		public struct KSM_BDA_CAS_OPENBROADCASTMMI
		{
			public KSM_NODE NodeMethod;
			public uint32 ulDialogRequest;
			public CHAR[12] cLanguage;
			public uint32 ulEventId;
		}
		[CRepr]
		public struct KSM_BDA_CAS_CLOSEMMIDIALOG
		{
			public KSM_NODE NodeMethod;
			public uint32 ulDialogRequest;
			public CHAR[12] cLanguage;
			public uint32 ulDialogNumber;
			public uint32 ulReason;
		}
		[CRepr]
		public struct KSM_BDA_ISDBCAS_REQUEST
		{
			public KSM_NODE NodeMethod;
			public uint32 ulRequestID;
			public uint32 ulIsdbCommandSize;
			public uint8[] argbIsdbCommandData;
		}
		[CRepr]
		public struct KSM_BDA_TS_SELECTOR_SETTSID
		{
			public KSM_NODE NodeMethod;
			public uint16 usTSID;
		}
		[CRepr]
		public struct KS_DATARANGE_BDA_ANTENNA
		{
			public KSDATAFORMAT DataRange;
		}
		[CRepr]
		public struct BDA_TRANSPORT_INFO
		{
			public uint32 ulcbPhyiscalPacket;
			public uint32 ulcbPhyiscalFrame;
			public uint32 ulcbPhyiscalFrameAlignment;
			public int64 AvgTimePerFrame;
		}
		[CRepr]
		public struct KS_DATARANGE_BDA_TRANSPORT
		{
			public KSDATAFORMAT DataRange;
			public BDA_TRANSPORT_INFO BdaTransportInfo;
		}
		[CRepr]
		public struct ChannelChangeInfo
		{
			public ChannelChangeSpanningEvent_State state;
			public uint64 TimeStamp;
		}
		[CRepr]
		public struct ChannelTypeInfo
		{
			public ChannelType channelType;
			public uint64 timeStamp;
		}
		[CRepr]
		public struct ChannelInfo
		{
			public int32 lFrequency;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _DVB_e__Struct DVB;
				public _DC_e__Struct DC;
				public _ATSC_e__Struct ATSC;
				
				[CRepr]
				public struct _DC_e__Struct
				{
					public int32 lProgNumber;
				}
				[CRepr]
				public struct _DVB_e__Struct
				{
					public int32 lONID;
					public int32 lTSID;
					public int32 lSID;
				}
				[CRepr]
				public struct _ATSC_e__Struct
				{
					public int32 lProgNumber;
				}
			}
		}
		[CRepr]
		public struct SpanningEventDescriptor
		{
			public uint16 wDataLen;
			public uint16 wProgNumber;
			public uint16 wSID;
			public uint8[] bDescriptor;
		}
		[CRepr]
		public struct DVBScramblingControlSpanningEvent
		{
			public uint32 ulPID;
			public BOOL fScrambled;
		}
		[CRepr]
		public struct SpanningEventEmmMessage
		{
			public uint8 bCAbroadcasterGroupId;
			public uint8 bMessageControl;
			public uint16 wServiceId;
			public uint16 wTableIdExtension;
			public uint8 bDeletionStatus;
			public uint8 bDisplayingDuration1;
			public uint8 bDisplayingDuration2;
			public uint8 bDisplayingDuration3;
			public uint8 bDisplayingCycle;
			public uint8 bFormatVersion;
			public uint8 bDisplayPosition;
			public uint16 wMessageLength;
			public char16[] szMessageArea;
		}
		[CRepr]
		public struct LanguageInfo
		{
			public uint16 LangID;
			public int32 lISOLangCode;
		}
		[CRepr]
		public struct DualMonoInfo
		{
			public uint16 LangID1;
			public uint16 LangID2;
			public int32 lISOLangCode1;
			public int32 lISOLangCode2;
		}
		[CRepr]
		public struct PIDListSpanningEvent
		{
			public uint16 wPIDCount;
			public uint32[] pulPIDs;
		}
		[CRepr]
		public struct RATING_ATTRIBUTE
		{
			public uint32 rating_attribute_id;
			public uint32 rating_attribute_value;
		}
		[CRepr]
		public struct RATING_SYSTEM
		{
			public Guid rating_system_id;
			public uint8 _bitfield;
			public uint8[3] country_code;
			public uint32 rating_attribute_count;
			public RATING_ATTRIBUTE* lpratingattrib;
		}
		[CRepr]
		public struct RATING_INFO
		{
			public uint32 rating_system_count;
			public RATING_SYSTEM* lpratingsystem;
		}
		[CRepr]
		public struct PBDAParentalControl
		{
			public uint32 rating_system_count;
			public RATING_SYSTEM* rating_systems;
		}
		[CRepr]
		public struct DvbParentalRatingParam
		{
			public CHAR[4] szCountryCode;
			public uint8 bRating;
		}
		[CRepr]
		public struct DvbParentalRatingDescriptor
		{
			public uint32 ulNumParams;
			public DvbParentalRatingParam[] pParams;
		}
		[CRepr]
		public struct KSPROPERTY_BDA_RF_TUNER_CAPS_S
		{
			public KSP_NODE Property;
			public uint32 Mode;
			public uint32 AnalogStandardsSupported;
			public uint32 DigitalStandardsSupported;
			public uint32 MinFrequency;
			public uint32 MaxFrequency;
			public uint32 SettlingTime;
			public uint32 AnalogSensingRange;
			public uint32 DigitalSensingRange;
			public uint32 MilliSecondsPerMHz;
		}
		[CRepr]
		public struct KSPROPERTY_BDA_RF_TUNER_SCAN_STATUS_S
		{
			public KSP_NODE Property;
			public uint32 CurrentFrequency;
			public uint32 FrequencyRangeMin;
			public uint32 FrequencyRangeMax;
			public uint32 MilliSecondsLeft;
		}
		[CRepr]
		public struct KSPROPERTY_BDA_RF_TUNER_STANDARD_S
		{
			public KSP_NODE Property;
			public BDA_SignalType SignalType;
			public uint32 SignalStandard;
		}
		[CRepr]
		public struct KSPROPERTY_BDA_RF_TUNER_STANDARD_MODE_S
		{
			public KSP_NODE Property;
			public BOOL AutoDetect;
		}
		[CRepr]
		public struct KSEVENTDATA_BDA_RF_TUNER_SCAN_S
		{
			public KSEVENTDATA EventData;
			public uint32 StartFrequency;
			public uint32 EndFrequency;
			public BDA_LockType LockRequested;
		}
		[CRepr]
		public struct PID_BITS
		{
			public uint16 _bitfield;
		}
		[CRepr]
		public struct MPEG_HEADER_BITS
		{
			public uint16 _bitfield;
		}
		[CRepr]
		public struct MPEG_HEADER_VERSION_BITS
		{
			public uint8 _bitfield;
		}
		[CRepr]
		public struct MPEG1WAVEFORMAT
		{
			public WAVEFORMATEX wfx;
			public uint16 fwHeadLayer;
			public uint32 dwHeadBitrate;
			public uint16 fwHeadMode;
			public uint16 fwHeadModeExt;
			public uint16 wHeadEmphasis;
			public uint16 fwHeadFlags;
			public uint32 dwPTSLow;
			public uint32 dwPTSHigh;
		}
		[CRepr]
		public struct MPEGLAYER3WAVEFORMAT
		{
			public WAVEFORMATEX wfx;
			public uint16 wID;
			public MPEGLAYER3WAVEFORMAT_FLAGS fdwFlags;
			public uint16 nBlockSize;
			public uint16 nFramesPerBlock;
			public uint16 nCodecDelay;
		}
		[CRepr]
		public struct HEAACWAVEINFO
		{
			public WAVEFORMATEX wfx;
			public uint16 wPayloadType;
			public uint16 wAudioProfileLevelIndication;
			public uint16 wStructType;
			public uint16 wReserved1;
			public uint32 dwReserved2;
		}
		[CRepr]
		public struct HEAACWAVEFORMAT
		{
			public HEAACWAVEINFO wfInfo;
			public uint8[] pbAudioSpecificConfig;
		}
		[CRepr]
		public struct DXVA_COPPSetProtectionLevelCmdData
		{
			public uint32 ProtType;
			public uint32 ProtLevel;
			public uint32 ExtendedInfoChangeMask;
			public uint32 ExtendedInfoData;
		}
		[CRepr]
		public struct DXVA_COPPSetSignalingCmdData
		{
			public uint32 ActiveTVProtectionStandard;
			public uint32 AspectRatioChangeMask1;
			public uint32 AspectRatioData1;
			public uint32 AspectRatioChangeMask2;
			public uint32 AspectRatioData2;
			public uint32 AspectRatioChangeMask3;
			public uint32 AspectRatioData3;
			public uint32[4] ExtendedInfoChangeMask;
			public uint32[4] ExtendedInfoData;
			public uint32 Reserved;
		}
		[CRepr]
		public struct DXVA_COPPStatusData
		{
			public Guid rApp;
			public uint32 dwFlags;
			public uint32 dwData;
			public uint32 ExtendedInfoValidMask;
			public uint32 ExtendedInfoData;
		}
		[CRepr]
		public struct DXVA_COPPStatusDisplayData
		{
			public Guid rApp;
			public uint32 dwFlags;
			public uint32 DisplayWidth;
			public uint32 DisplayHeight;
			public uint32 Format;
			public uint32 d3dFormat;
			public uint32 FreqNumerator;
			public uint32 FreqDenominator;
		}
		[CRepr]
		public struct DXVA_COPPStatusHDCPKeyData
		{
			public Guid rApp;
			public uint32 dwFlags;
			public uint32 dwHDCPFlags;
			public Guid BKey;
			public Guid Reserved1;
			public Guid Reserved2;
		}
		[CRepr]
		public struct DXVA_COPPStatusSignalingCmdData
		{
			public Guid rApp;
			public uint32 dwFlags;
			public uint32 AvailableTVProtectionStandards;
			public uint32 ActiveTVProtectionStandard;
			public uint32 TVType;
			public uint32 AspectRatioValidMask1;
			public uint32 AspectRatioData1;
			public uint32 AspectRatioValidMask2;
			public uint32 AspectRatioData2;
			public uint32 AspectRatioValidMask3;
			public uint32 AspectRatioData3;
			public uint32[4] ExtendedInfoValidMask;
			public uint32[4] ExtendedInfoData;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_FilgraphManager = .(0xe436ebb3, 0x524f, 0x11ce, 0x9f, 0x53, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
		public const Guid CLSID_SystemTuningSpaces = .(0xd02aac50, 0x027e, 0x11d3, 0x9d, 0x8e, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
		public const Guid CLSID_TuningSpace = .(0x5ffdc5e6, 0xb83a, 0x4b55, 0xb6, 0xe8, 0xc6, 0x9e, 0x76, 0x5f, 0xe9, 0xdb);
		public const Guid CLSID_ChannelIDTuningSpace = .(0xcc829a2f, 0x3365, 0x463f, 0xaf, 0x13, 0x81, 0xdb, 0xb6, 0xf3, 0xa5, 0x55);
		public const Guid CLSID_ATSCTuningSpace = .(0xa2e30750, 0x6c3d, 0x11d3, 0xb6, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_DigitalCableTuningSpace = .(0xd9bb4cee, 0xb87a, 0x47f1, 0xac, 0x92, 0xb0, 0x8d, 0x9c, 0x78, 0x13, 0xfc);
		public const Guid CLSID_AnalogRadioTuningSpace = .(0x8a674b4c, 0x1f63, 0x11d3, 0xb6, 0x4c, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_AuxInTuningSpace = .(0xf9769a06, 0x7aca, 0x4e39, 0x9c, 0xfb, 0x97, 0xbb, 0x35, 0xf0, 0xe7, 0x7e);
		public const Guid CLSID_AnalogTVTuningSpace = .(0x8a674b4d, 0x1f63, 0x11d3, 0xb6, 0x4c, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_DVBTuningSpace = .(0xc6b14b32, 0x76aa, 0x4a86, 0xa7, 0xac, 0x5c, 0x79, 0xaa, 0xf5, 0x8d, 0xa7);
		public const Guid CLSID_DVBSTuningSpace = .(0xb64016f3, 0xc9a2, 0x4066, 0x96, 0xf0, 0xbd, 0x95, 0x63, 0x31, 0x47, 0x26);
		public const Guid CLSID_ComponentTypes = .(0xa1a2b1c4, 0x0e3a, 0x11d3, 0x9d, 0x8e, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
		public const Guid CLSID_ComponentType = .(0x823535a0, 0x0318, 0x11d3, 0x9d, 0x8e, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
		public const Guid CLSID_LanguageComponentType = .(0x1be49f30, 0x0e1b, 0x11d3, 0x9d, 0x8e, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
		public const Guid CLSID_MPEG2ComponentType = .(0x418008f3, 0xcf67, 0x4668, 0x96, 0x28, 0x10, 0xdc, 0x52, 0xbe, 0x1d, 0x08);
		public const Guid CLSID_ATSCComponentType = .(0xa8dcf3d5, 0x0780, 0x4ef4, 0x8a, 0x83, 0x2c, 0xff, 0xaa, 0xcb, 0x8a, 0xce);
		public const Guid CLSID_Components = .(0x809b6661, 0x94c4, 0x49e6, 0xb6, 0xec, 0x3f, 0x0f, 0x86, 0x22, 0x15, 0xaa);
		public const Guid CLSID_Component = .(0x59dc47a8, 0x116c, 0x11d3, 0x9d, 0x8e, 0x00, 0xc0, 0x4f, 0x72, 0xd9, 0x80);
		public const Guid CLSID_MPEG2Component = .(0x055cb2d7, 0x2969, 0x45cd, 0x91, 0x4b, 0x76, 0x89, 0x07, 0x22, 0xf1, 0x12);
		public const Guid CLSID_AnalogAudioComponentType = .(0x28ab0005, 0xe845, 0x4ffa, 0xaa, 0x9b, 0xf4, 0x66, 0x52, 0x36, 0x14, 0x1c);
		public const Guid CLSID_TuneRequest = .(0xb46e0d38, 0xab35, 0x4a06, 0xa1, 0x37, 0x70, 0x57, 0x6b, 0x01, 0xb3, 0x9f);
		public const Guid CLSID_ChannelIDTuneRequest = .(0x3a9428a7, 0x31a4, 0x45e9, 0x9e, 0xfb, 0xe0, 0x55, 0xbf, 0x7b, 0xb3, 0xdb);
		public const Guid CLSID_ChannelTuneRequest = .(0x0369b4e5, 0x45b6, 0x11d3, 0xb6, 0x50, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_ATSCChannelTuneRequest = .(0x0369b4e6, 0x45b6, 0x11d3, 0xb6, 0x50, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_DigitalCableTuneRequest = .(0x26ec0b63, 0xaa90, 0x458a, 0x8d, 0xf4, 0x56, 0x59, 0xf2, 0xc8, 0xa1, 0x8a);
		public const Guid CLSID_MPEG2TuneRequest = .(0x0955ac62, 0xbf2e, 0x4cba, 0xa2, 0xb9, 0xa6, 0x3f, 0x77, 0x2d, 0x46, 0xcf);
		public const Guid CLSID_MPEG2TuneRequestFactory = .(0x2c63e4eb, 0x4cea, 0x41b8, 0x91, 0x9c, 0xe9, 0x47, 0xea, 0x19, 0xa7, 0x7c);
		public const Guid CLSID_Locator = .(0x0888c883, 0xac4f, 0x4943, 0xb5, 0x16, 0x2c, 0x38, 0xd9, 0xb3, 0x45, 0x62);
		public const Guid CLSID_DigitalLocator = .(0x6e50cc0d, 0xc19b, 0x4bf6, 0x81, 0x0b, 0x5b, 0xd6, 0x07, 0x61, 0xf5, 0xcc);
		public const Guid CLSID_AnalogLocator = .(0x49638b91, 0x48ab, 0x48b7, 0xa4, 0x7a, 0x7d, 0x0e, 0x75, 0xa0, 0x8e, 0xde);
		public const Guid CLSID_ATSCLocator = .(0x8872ff1b, 0x98fa, 0x4d7a, 0x8d, 0x93, 0xc9, 0xf1, 0x05, 0x5f, 0x85, 0xbb);
		public const Guid CLSID_DigitalCableLocator = .(0x03c06416, 0xd127, 0x407a, 0xab, 0x4c, 0xfd, 0xd2, 0x79, 0xab, 0xbe, 0x5d);
		public const Guid CLSID_DVBTLocator = .(0x9cd64701, 0xbdf3, 0x4d14, 0x8e, 0x03, 0xf1, 0x29, 0x83, 0xd8, 0x66, 0x64);
		public const Guid CLSID_DVBTLocator2 = .(0xefe3fa02, 0x45d7, 0x4920, 0xbe, 0x96, 0x53, 0xfa, 0x7f, 0x35, 0xb0, 0xe6);
		public const Guid CLSID_DVBSLocator = .(0x1df7d126, 0x4050, 0x47f0, 0xa7, 0xcf, 0x4c, 0x4c, 0xa9, 0x24, 0x13, 0x33);
		public const Guid CLSID_DVBCLocator = .(0xc531d9fd, 0x9685, 0x4028, 0x8b, 0x68, 0x6e, 0x12, 0x32, 0x07, 0x9f, 0x1e);
		public const Guid CLSID_ISDBSLocator = .(0x6504afed, 0xa629, 0x455c, 0xa7, 0xf1, 0x04, 0x96, 0x4d, 0xea, 0x5c, 0xc4);
		public const Guid CLSID_DVBTuneRequest = .(0x15d6504a, 0x5494, 0x499c, 0x88, 0x6c, 0x97, 0x3c, 0x9e, 0x53, 0xb9, 0xf1);
		public const Guid CLSID_CreatePropBagOnRegKey = .(0x8a674b49, 0x1f63, 0x11d3, 0xb6, 0x4c, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_BroadcastEventService = .(0x0b3ffb92, 0x0919, 0x4934, 0x9d, 0x5b, 0x61, 0x9c, 0x71, 0x9d, 0x02, 0x02);
		public const Guid CLSID_TunerMarshaler = .(0x6438570b, 0x0c08, 0x4a25, 0x95, 0x04, 0x80, 0x12, 0xbb, 0x4d, 0x50, 0xcf);
		public const Guid CLSID_PersistTuneXmlUtility = .(0xe77026b0, 0xb97f, 0x4cbb, 0xb7, 0xfb, 0xf4, 0xf0, 0x3a, 0xd6, 0x9f, 0x11);
		public const Guid CLSID_ESEventService = .(0xc20447fc, 0xec60, 0x475e, 0x81, 0x3f, 0xd2, 0xb0, 0xa6, 0xde, 0xce, 0xfe);
		public const Guid CLSID_ESEventFactory = .(0x8e8a07da, 0x71f8, 0x40c1, 0xa9, 0x29, 0x5e, 0x3a, 0x86, 0x8a, 0xc2, 0xc6);
		public const Guid CLSID_XDSToRat = .(0xc5c5c5f0, 0x3abc, 0x11d6, 0xb2, 0x5b, 0x00, 0xc0, 0x4f, 0xa0, 0xc0, 0x26);
		public const Guid CLSID_EvalRat = .(0xc5c5c5f1, 0x3abc, 0x11d6, 0xb2, 0x5b, 0x00, 0xc0, 0x4f, 0xa0, 0xc0, 0x26);
		public const Guid CLSID_ETFilter = .(0xc4c4c4f1, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid CLSID_DTFilter = .(0xc4c4c4f2, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid CLSID_XDSCodec = .(0xc4c4c4f3, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid CLSID_CXDSData = .(0xc4c4c4f4, 0x0049, 0x4e2b, 0x98, 0xfb, 0x95, 0x37, 0xf6, 0xce, 0x51, 0x6d);
		public const Guid CLSID_MSVidAnalogTunerDevice = .(0x1c15d484, 0x911d, 0x11d2, 0xb6, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidBDATunerDevice = .(0xa2e3074e, 0x6c3d, 0x11d3, 0xb6, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidFilePlaybackDevice = .(0x37b0353c, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidWebDVD = .(0x011b3619, 0xfe63, 0x4814, 0x8a, 0x84, 0x15, 0xa1, 0x94, 0xce, 0x9c, 0xe3);
		public const Guid CLSID_MSVidWebDVDAdm = .(0xfa7c375b, 0x66a7, 0x4280, 0x87, 0x9d, 0xfd, 0x45, 0x9c, 0x84, 0xbb, 0x02);
		public const Guid CLSID_MSVidVideoRenderer = .(0x37b03543, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidVMR9 = .(0x24dc3975, 0x09bf, 0x4231, 0x86, 0x55, 0x3e, 0xe7, 0x1f, 0x43, 0x83, 0x7d);
		public const Guid CLSID_MSVidEVR = .(0xc45268a2, 0xfa81, 0x4e19, 0xb1, 0xe3, 0x72, 0xed, 0xbd, 0x60, 0xae, 0xda);
		public const Guid CLSID_MSVidAudioRenderer = .(0x37b03544, 0xa4c8, 0x11d2, 0xb6, 0x34, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidGenericSink = .(0x4a5869cf, 0x929d, 0x4040, 0xae, 0x03, 0xfc, 0xaf, 0xc5, 0xb9, 0xcd, 0x42);
		public const Guid CLSID_MSVidStreamBufferSink = .(0x9e77aac4, 0x35e5, 0x42a1, 0xbd, 0xc2, 0x8f, 0x3f, 0xf3, 0x99, 0x84, 0x7c);
		public const Guid CLSID_MSVidStreamBufferSource = .(0xad8e510d, 0x217f, 0x409b, 0x80, 0x76, 0x29, 0xc5, 0xe7, 0x3b, 0x98, 0xe8);
		public const Guid CLSID_MSVidStreamBufferV2Source = .(0xfd351ea1, 0x4173, 0x4af4, 0x82, 0x1d, 0x80, 0xd4, 0xae, 0x97, 0x90, 0x48);
		public const Guid CLSID_MSVidEncoder = .(0xbb530c63, 0xd9df, 0x4b49, 0x94, 0x39, 0x63, 0x45, 0x39, 0x62, 0xe5, 0x98);
		public const Guid CLSID_MSVidITVCapture = .(0x5740a302, 0xef0b, 0x45ce, 0xbf, 0x3b, 0x44, 0x70, 0xa1, 0x4a, 0x89, 0x80);
		public const Guid CLSID_MSVidITVPlayback = .(0x9e797ed0, 0x5253, 0x4243, 0xa9, 0xb7, 0xbd, 0x06, 0xc5, 0x8f, 0x8e, 0xf3);
		public const Guid CLSID_MSVidCCA = .(0x86151827, 0xe47b, 0x45ee, 0x84, 0x21, 0xd1, 0x0e, 0x6e, 0x69, 0x09, 0x79);
		public const Guid CLSID_MSVidClosedCaptioning = .(0x7f9cb14d, 0x48e4, 0x43b6, 0x93, 0x46, 0x1a, 0xeb, 0xc3, 0x9c, 0x64, 0xd3);
		public const Guid CLSID_MSVidClosedCaptioningSI = .(0x92ed88bf, 0x879e, 0x448f, 0xb6, 0xb6, 0xa3, 0x85, 0xbc, 0xeb, 0x84, 0x6d);
		public const Guid CLSID_MSVidDataServices = .(0x334125c0, 0x77e5, 0x11d3, 0xb6, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidXDS = .(0x0149eedf, 0xd08f, 0x4142, 0x8d, 0x73, 0xd2, 0x39, 0x03, 0xd2, 0x1e, 0x90);
		public const Guid CLSID_MSVidAnalogCaptureToDataServices = .(0xc5702cd6, 0x9b79, 0x11d3, 0xb6, 0x54, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidDataServicesToStreamBufferSink = .(0x38f03426, 0xe83b, 0x4e68, 0xb6, 0x5b, 0xdc, 0xae, 0x73, 0x30, 0x48, 0x38);
		public const Guid CLSID_MSVidDataServicesToXDS = .(0x0429ec6e, 0x1144, 0x4bed, 0xb8, 0x8b, 0x2f, 0xb9, 0x89, 0x9a, 0x4a, 0x3d);
		public const Guid CLSID_MSVidAnalogCaptureToXDS = .(0x3540d440, 0x5b1d, 0x49cb, 0x82, 0x1a, 0xe8, 0x4b, 0x8c, 0xf0, 0x65, 0xa7);
		public const Guid CLSID_MSVidCtl = .(0xb0edf163, 0x910a, 0x11d2, 0xb6, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidInputDevices = .(0xc5702ccc, 0x9b79, 0x11d3, 0xb6, 0x54, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidOutputDevices = .(0xc5702ccd, 0x9b79, 0x11d3, 0xb6, 0x54, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidVideoRendererDevices = .(0xc5702cce, 0x9b79, 0x11d3, 0xb6, 0x54, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidAudioRendererDevices = .(0xc5702ccf, 0x9b79, 0x11d3, 0xb6, 0x54, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidFeatures = .(0xc5702cd0, 0x9b79, 0x11d3, 0xb6, 0x54, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidGenericComposite = .(0x2764bce5, 0xcc39, 0x11d2, 0xb6, 0x39, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidAnalogCaptureToOverlayMixer = .(0xe18af75a, 0x08af, 0x11d3, 0xb6, 0x4a, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_MSVidWebDVDToVideoRenderer = .(0x267db0b3, 0x55e3, 0x4902, 0x94, 0x9b, 0xdf, 0x8f, 0x5c, 0xec, 0x01, 0x91);
		public const Guid CLSID_MSVidWebDVDToAudioRenderer = .(0x8d04238e, 0x9fd1, 0x41c6, 0x8d, 0xe3, 0x9e, 0x1e, 0xe3, 0x09, 0xe9, 0x35);
		public const Guid CLSID_MSVidMPEG2DecoderToClosedCaptioning = .(0x6ad28ee1, 0x5002, 0x4e71, 0xaa, 0xf7, 0xbd, 0x07, 0x79, 0x07, 0xb1, 0xa4);
		public const Guid CLSID_MSVidAnalogCaptureToStreamBufferSink = .(0x9f50e8b1, 0x9530, 0x4ddc, 0x82, 0x5e, 0x1a, 0xf8, 0x1d, 0x47, 0xae, 0xd6);
		public const Guid CLSID_MSVidDigitalCaptureToStreamBufferSink = .(0xabe40035, 0x27c3, 0x4a2f, 0x81, 0x53, 0x66, 0x24, 0x47, 0x16, 0x08, 0xaf);
		public const Guid CLSID_MSVidITVToStreamBufferSink = .(0x92b94828, 0x1af7, 0x4e6e, 0x9e, 0xbf, 0x77, 0x06, 0x57, 0xf7, 0x7a, 0xf5);
		public const Guid CLSID_MSVidCCAToStreamBufferSink = .(0x3ef76d68, 0x8661, 0x4843, 0x8b, 0x8f, 0xc3, 0x71, 0x63, 0xd8, 0xc9, 0xce);
		public const Guid CLSID_MSVidEncoderToStreamBufferSink = .(0xa0b9b497, 0xafbc, 0x45ad, 0xa8, 0xa6, 0x9b, 0x07, 0x7c, 0x40, 0xd4, 0xf2);
		public const Guid CLSID_MSVidFilePlaybackToVideoRenderer = .(0xb401c5eb, 0x8457, 0x427f, 0x84, 0xea, 0xa4, 0xd2, 0x36, 0x33, 0x64, 0xb0);
		public const Guid CLSID_MSVidFilePlaybackToAudioRenderer = .(0xcc23f537, 0x18d4, 0x4ece, 0x93, 0xbd, 0x20, 0x7a, 0x84, 0x72, 0x69, 0x79);
		public const Guid CLSID_MSVidAnalogTVToEncoder = .(0x28953661, 0x0231, 0x41db, 0x89, 0x86, 0x21, 0xff, 0x43, 0x88, 0xee, 0x9b);
		public const Guid CLSID_MSVidStreamBufferSourceToVideoRenderer = .(0x3c4708dc, 0xb181, 0x46a8, 0x8d, 0xa8, 0x4a, 0xb0, 0x37, 0x17, 0x58, 0xcd);
		public const Guid CLSID_MSVidAnalogCaptureToCCA = .(0x942b7909, 0xa28e, 0x49a1, 0xa2, 0x07, 0x34, 0xeb, 0xcb, 0xcb, 0x4b, 0x3b);
		public const Guid CLSID_MSVidDigitalCaptureToCCA = .(0x73d14237, 0xb9db, 0x4efa, 0xa6, 0xdd, 0x84, 0x35, 0x04, 0x21, 0xfb, 0x2f);
		public const Guid CLSID_MSVidDigitalCaptureToITV = .(0x5d8e73f7, 0x4989, 0x4ac8, 0x8a, 0x98, 0x39, 0xba, 0x0d, 0x32, 0x53, 0x02);
		public const Guid CLSID_MSVidSBESourceToITV = .(0x2291478c, 0x5ee3, 0x4bef, 0xab, 0x5d, 0xb5, 0xff, 0x2c, 0xf5, 0x83, 0x52);
		public const Guid CLSID_MSVidSBESourceToCC = .(0x9193a8f9, 0x0cba, 0x400e, 0xaa, 0x97, 0xeb, 0x47, 0x09, 0x16, 0x45, 0x76);
		public const Guid CLSID_MSVidSBESourceToGenericSink = .(0x991da7e5, 0x953f, 0x435b, 0xbe, 0x5e, 0xb9, 0x2a, 0x05, 0xed, 0xfc, 0x42);
		public const Guid CLSID_MSVidCCToVMR = .(0xc4bf2784, 0xae00, 0x41ba, 0x98, 0x28, 0x9c, 0x95, 0x3b, 0xd3, 0xc5, 0x4a);
		public const Guid CLSID_MSVidCCToAR = .(0xd76334ca, 0xd89e, 0x4baf, 0x86, 0xab, 0xdd, 0xb5, 0x93, 0x72, 0xaf, 0xc2);
		public const Guid CLSID_MSEventBinder = .(0x577faa18, 0x4518, 0x445e, 0x8f, 0x70, 0x14, 0x73, 0xf8, 0xcf, 0x4b, 0xa4);
		public const Guid CLSID_MSVidStreamBufferRecordingControl = .(0xcaafdd83, 0xcefc, 0x4e3d, 0xba, 0x03, 0x17, 0x5f, 0x17, 0xa2, 0x4f, 0x91);
		public const Guid CLSID_MSVidRect = .(0xcb4276e6, 0x7d5f, 0x4cf1, 0x97, 0x27, 0x62, 0x9c, 0x5e, 0x6d, 0xb6, 0xae);
		public const Guid CLSID_MSVidDevice = .(0x6e40476f, 0x9c49, 0x4c3e, 0x8b, 0xb9, 0x85, 0x87, 0x95, 0x8e, 0xff, 0x74);
		public const Guid CLSID_MSVidDevice2 = .(0x30997f7d, 0xb3b5, 0x4a1c, 0x98, 0x3a, 0x1f, 0xe8, 0x09, 0x8c, 0xb7, 0x7d);
		public const Guid CLSID_MSVidInputDevice = .(0xac1972f2, 0x138a, 0x4ca3, 0x90, 0xda, 0xae, 0x51, 0x11, 0x2e, 0xda, 0x28);
		public const Guid CLSID_MSVidVideoInputDevice = .(0x95f4820b, 0xbb3a, 0x4e2d, 0xbc, 0x64, 0x5b, 0x81, 0x7b, 0xc2, 0xc3, 0x0e);
		public const Guid CLSID_MSVidVideoPlaybackDevice = .(0x1990d634, 0x1a5e, 0x4071, 0xa3, 0x4a, 0x53, 0xaa, 0xff, 0xce, 0x9f, 0x36);
		public const Guid CLSID_MSVidFeature = .(0x7748530b, 0xc08a, 0x47ea, 0xb2, 0x4c, 0xbe, 0x86, 0x95, 0xff, 0x40, 0x5f);
		public const Guid CLSID_MSVidOutput = .(0x87eb890d, 0x03ad, 0x4e9d, 0x98, 0x66, 0x37, 0x6e, 0x5e, 0xc5, 0x72, 0xed);
		public const Guid CLSID_SectionList = .(0x73da5d04, 0x4347, 0x45d3, 0xa9, 0xdc, 0xfa, 0xe9, 0xdd, 0xbe, 0x55, 0x8d);
		public const Guid CLSID_Mpeg2Stream = .(0xf91d96c7, 0x8509, 0x4d0b, 0xab, 0x26, 0xa0, 0xdd, 0x10, 0x90, 0x4b, 0xb7);
		public const Guid CLSID_Mpeg2Data = .(0xc666e115, 0xbb62, 0x4027, 0xa1, 0x13, 0x82, 0xd6, 0x43, 0xfe, 0x2d, 0x99);
		public const Guid CLSID_Mpeg2DataLib = .(0xdbaf6c1b, 0xb6a4, 0x4898, 0xae, 0x65, 0x20, 0x4f, 0x0d, 0x95, 0x09, 0xa1);
		public const Guid CLSID_TIFLoad = .(0x14eb8748, 0x1753, 0x4393, 0x95, 0xae, 0x4f, 0x7e, 0x7a, 0x87, 0xaa, 0xd6);
		public const Guid CLSID_EVENTID_TuningChanging = .(0x83183c03, 0xc09e, 0x45c4, 0xa7, 0x19, 0x80, 0x7a, 0x94, 0x95, 0x2b, 0xf9);
		public const Guid CLSID_EVENTID_TuningChanged = .(0x9d7e6235, 0x4b7d, 0x425d, 0xa6, 0xd1, 0xd7, 0x17, 0xc3, 0x3b, 0x9c, 0x4c);
		public const Guid CLSID_EVENTID_CandidatePostTuneData = .(0x9f02d3d0, 0x9f06, 0x4369, 0x9f, 0x1e, 0x3a, 0xd6, 0xca, 0x19, 0x80, 0x7e);
		public const Guid CLSID_EVENTID_CADenialCountChanged = .(0x2a65c528, 0x2249, 0x4070, 0xac, 0x16, 0x00, 0x39, 0x0c, 0xdf, 0xb2, 0xdd);
		public const Guid CLSID_EVENTID_SignalStatusChanged = .(0x6d9cfaf2, 0x702d, 0x4b01, 0x8d, 0xff, 0x68, 0x92, 0xad, 0x20, 0xd1, 0x91);
		public const Guid CLSID_EVENTID_NewSignalAcquired = .(0xc87ec52d, 0xcd18, 0x404a, 0xa0, 0x76, 0xc0, 0x2a, 0x27, 0x3d, 0x3d, 0xe7);
		public const Guid CLSID_EVENTID_EASMessageReceived = .(0xd10df9d5, 0xc261, 0x4b85, 0x9e, 0x8a, 0x51, 0x7b, 0x32, 0x99, 0xca, 0xb2);
		public const Guid CLSID_EVENTID_PSITable = .(0x1b9c3703, 0xd447, 0x4e16, 0x97, 0xbb, 0x01, 0x79, 0x9f, 0xc0, 0x31, 0xed);
		public const Guid CLSID_EVENTID_ServiceTerminated = .(0x0a1d591c, 0xe0d2, 0x4f8e, 0x89, 0x60, 0x23, 0x35, 0xbe, 0xf4, 0x5c, 0xcb);
		public const Guid CLSID_EVENTID_CardStatusChanged = .(0xa265faea, 0xf874, 0x4b38, 0x9f, 0xf7, 0xc5, 0x3d, 0x02, 0x96, 0x99, 0x96);
		public const Guid CLSID_EVENTID_DRMParingStatusChanged = .(0x000906f5, 0xf0d1, 0x41d6, 0xa7, 0xdf, 0x40, 0x28, 0x69, 0x76, 0x69, 0xf6);
		public const Guid CLSID_EVENTID_DRMParingStepComplete = .(0x5b2ebf78, 0xb752, 0x4420, 0xb4, 0x1e, 0xa4, 0x72, 0xdc, 0x95, 0x82, 0x8e);
		public const Guid CLSID_EVENTID_MMIMessage = .(0x052c29af, 0x09a4, 0x4b93, 0x89, 0x0f, 0xbd, 0x6a, 0x34, 0x89, 0x68, 0xa4);
		public const Guid CLSID_EVENTID_EntitlementChanged = .(0x9071ad5d, 0x2359, 0x4c95, 0x86, 0x94, 0xaf, 0xa8, 0x1d, 0x70, 0xbf, 0xd5);
		public const Guid CLSID_EVENTID_STBChannelNumber = .(0x17c4d730, 0xd0f0, 0x413a, 0x8c, 0x99, 0x50, 0x04, 0x69, 0xde, 0x35, 0xad);
		public const Guid CLSID_EVENTID_BDAEventingServicePendingEvent = .(0x5ca51711, 0x5ddc, 0x41a6, 0x94, 0x30, 0xe4, 0x1b, 0x8b, 0x3b, 0xbc, 0x5b);
		public const Guid CLSID_EVENTID_BDAConditionalAccessTAG = .(0xefc3a459, 0xae8b, 0x4b4a, 0x8f, 0xe9, 0x79, 0xa0, 0xd0, 0x97, 0xf3, 0xea);
		public const Guid CLSID_EVENTTYPE_CASDescrambleFailureEvent = .(0xb2127d42, 0x7be5, 0x4f4b, 0x91, 0x30, 0x66, 0x79, 0x89, 0x9f, 0x4f, 0x4b);
		public const Guid CLSID_EVENTID_CASFailureSpanningEvent = .(0xead831ae, 0x5529, 0x4d1f, 0xaf, 0xce, 0x0d, 0x8c, 0xd1, 0x25, 0x7d, 0x30);
		public const Guid CLSID_EVENTID_ChannelChangeSpanningEvent = .(0x9067c5e5, 0x4c5c, 0x4205, 0x86, 0xc8, 0x7a, 0xfe, 0x20, 0xfe, 0x1e, 0xfa);
		public const Guid CLSID_EVENTID_ChannelTypeSpanningEvent = .(0x72ab1d51, 0x87d2, 0x489b, 0xba, 0x11, 0x0e, 0x08, 0xdc, 0x21, 0x02, 0x43);
		public const Guid CLSID_EVENTID_ChannelInfoSpanningEvent = .(0x41f36d80, 0x4132, 0x4cc2, 0xb1, 0x21, 0x01, 0xa4, 0x32, 0x19, 0xd8, 0x1b);
		public const Guid CLSID_EVENTID_RRTSpanningEvent = .(0xf6cfc8f4, 0xda93, 0x4f2f, 0xbf, 0xf8, 0xba, 0x1e, 0xe6, 0xfc, 0xa3, 0xa2);
		public const Guid CLSID_EVENTID_CSDescriptorSpanningEvent = .(0xefe779d9, 0x97f0, 0x4786, 0x80, 0x0d, 0x95, 0xcf, 0x50, 0x5d, 0xdc, 0x66);
		public const Guid CLSID_EVENTID_CtxADescriptorSpanningEvent = .(0x3ab4a2e6, 0x4247, 0x4b34, 0x89, 0x6c, 0x30, 0xaf, 0xa5, 0xd2, 0x1c, 0x24);
		public const Guid CLSID_EVENTID_DVBScramblingControlSpanningEvent = .(0x4bd4e1c4, 0x90a1, 0x4109, 0x82, 0x36, 0x27, 0xf0, 0x0e, 0x7d, 0xcc, 0x5b);
		public const Guid CLSID_EVENTID_SignalAndServiceStatusSpanningEvent = .(0x8068c5cb, 0x3c04, 0x492b, 0xb4, 0x7d, 0x03, 0x08, 0x82, 0x0d, 0xce, 0x51);
		public const Guid CLSID_EVENTID_EmmMessageSpanningEvent = .(0x6bf00268, 0x4f7e, 0x4294, 0xaa, 0x87, 0xe9, 0xe9, 0x53, 0xe4, 0x3f, 0x14);
		public const Guid CLSID_EVENTID_AudioTypeSpanningEvent = .(0x501cbfbe, 0xb849, 0x42ce, 0x9b, 0xe9, 0x3d, 0xb8, 0x69, 0xfb, 0x82, 0xb3);
		public const Guid CLSID_EVENTID_StreamTypeSpanningEvent = .(0x82af2ebc, 0x30a6, 0x4264, 0xa8, 0x0b, 0xad, 0x2e, 0x13, 0x72, 0xac, 0x60);
		public const Guid CLSID_EVENTID_ARIBcontentSpanningEvent = .(0x3a954083, 0x93d0, 0x463e, 0x90, 0xb2, 0x07, 0x42, 0xc4, 0x96, 0xed, 0xf0);
		public const Guid CLSID_EVENTID_LanguageSpanningEvent = .(0xe292666d, 0x9c02, 0x448d, 0xaa, 0x8d, 0x78, 0x1a, 0x93, 0xfd, 0xc3, 0x95);
		public const Guid CLSID_EVENTID_DualMonoSpanningEvent = .(0xa9a29b56, 0xa84b, 0x488c, 0x89, 0xd5, 0x0d, 0x4e, 0x76, 0x57, 0xc8, 0xce);
		public const Guid CLSID_EVENTID_PIDListSpanningEvent = .(0x47fc8f65, 0xe2bb, 0x4634, 0x9c, 0xef, 0xfd, 0xbf, 0xe6, 0x26, 0x1d, 0x5c);
		public const Guid CLSID_EVENTID_AudioDescriptorSpanningEvent = .(0x107bd41c, 0xa6da, 0x4691, 0x83, 0x69, 0x11, 0xb2, 0xcd, 0xaa, 0x28, 0x8e);
		public const Guid CLSID_EVENTID_SubtitleSpanningEvent = .(0x5dcec048, 0xd0b9, 0x4163, 0x87, 0x2c, 0x4f, 0x32, 0x22, 0x3b, 0xe8, 0x8a);
		public const Guid CLSID_EVENTID_TeletextSpanningEvent = .(0x9599d950, 0x5f33, 0x4617, 0xaf, 0x7c, 0x1e, 0x54, 0xb5, 0x10, 0xda, 0xa3);
		public const Guid CLSID_EVENTID_StreamIDSpanningEvent = .(0xcaf1ab68, 0xe153, 0x4d41, 0xa6, 0xb3, 0xa7, 0xc9, 0x98, 0xdb, 0x75, 0xee);
		public const Guid CLSID_EVENTID_PBDAParentalControlEvent = .(0xf947aa85, 0xfb52, 0x48e8, 0xb9, 0xc5, 0xe1, 0xe1, 0xf4, 0x11, 0xa5, 0x1a);
		public const Guid CLSID_EVENTID_TuneFailureEvent = .(0xd97287b2, 0x2dfd, 0x436a, 0x94, 0x85, 0x99, 0xd7, 0xd4, 0xab, 0x5a, 0x69);
		public const Guid CLSID_EVENTID_TuneFailureSpanningEvent = .(0x6f8aa455, 0x5ee1, 0x48ab, 0xa2, 0x7c, 0x4c, 0x8d, 0x70, 0xb9, 0xae, 0xba);
		public const Guid CLSID_EVENTID_DvbParentalRatingDescriptor = .(0x2a67a58d, 0xeca5, 0x4eac, 0xab, 0xcb, 0xe7, 0x34, 0xd3, 0x77, 0x6d, 0x0a);
		public const Guid CLSID_EVENTID_DFNWithNoActualAVData = .(0xf5689ffe, 0x55f9, 0x4bb3, 0x96, 0xbe, 0xae, 0x97, 0x1c, 0x63, 0xba, 0xe0);
		public const Guid CLSID_KSDATAFORMAT_TYPE_BDA_ANTENNA = .(0x71985f41, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSDATAFORMAT_SUBTYPE_BDA_MPEG2_TRANSPORT = .(0xf4aeb342, 0x0329, 0x4fdd, 0xa8, 0xfd, 0x4a, 0xff, 0x49, 0x26, 0xc9, 0x78);
		public const Guid CLSID_KSDATAFORMAT_SPECIFIER_BDA_TRANSPORT = .(0x8deda6fd, 0xac5f, 0x4334, 0x8e, 0xcf, 0xa4, 0xba, 0x8f, 0xa7, 0xd0, 0xf0);
		public const Guid CLSID_KSDATAFORMAT_TYPE_BDA_IF_SIGNAL = .(0x61be0b47, 0xa5eb, 0x499b, 0x9a, 0x85, 0x5b, 0x16, 0xc0, 0x7f, 0x12, 0x58);
		public const Guid CLSID_KSDATAFORMAT_TYPE_MPEG2_SECTIONS = .(0x455f176c, 0x4b06, 0x47ce, 0x9a, 0xef, 0x8c, 0xae, 0xf7, 0x3d, 0xf7, 0xb5);
		public const Guid CLSID_KSDATAFORMAT_SUBTYPE_ATSC_SI = .(0xb3c7397c, 0xd303, 0x414d, 0xb3, 0x3c, 0x4e, 0xd2, 0xc9, 0xd2, 0x97, 0x33);
		public const Guid CLSID_KSDATAFORMAT_SUBTYPE_DVB_SI = .(0xe9dd31a3, 0x221d, 0x4adb, 0x85, 0x32, 0x9a, 0xf3, 0x09, 0xc1, 0xa4, 0x08);
		public const Guid CLSID_KSDATAFORMAT_SUBTYPE_BDA_OPENCABLE_PSIP = .(0x762e3f66, 0x336f, 0x48d1, 0xbf, 0x83, 0x2b, 0x00, 0x35, 0x2c, 0x11, 0xf0);
		public const Guid CLSID_KSDATAFORMAT_SUBTYPE_BDA_OPENCABLE_OOB_PSIP = .(0x951727db, 0xd2ce, 0x4528, 0x96, 0xf6, 0x33, 0x01, 0xfa, 0xbb, 0x2d, 0xe0);
		public const Guid CLSID_KSDATAFORMAT_SUBTYPE_ISDB_SI = .(0x4a2eeb99, 0x6458, 0x4538, 0xb1, 0x87, 0x04, 0x01, 0x7c, 0x41, 0x41, 0x3f);
		public const Guid CLSID_KSDATAFORMAT_SUBTYPE_PBDA_TRANSPORT_RAW = .(0x0d7aed42, 0xcb9a, 0x11db, 0x97, 0x05, 0x00, 0x50, 0x56, 0xc0, 0x00, 0x08);
		public const Guid CLSID_PINNAME_BDA_TRANSPORT = .(0x78216a81, 0xcfa8, 0x493e, 0x97, 0x11, 0x36, 0xa6, 0x1c, 0x08, 0xbd, 0x9d);
		public const Guid CLSID_PINNAME_BDA_ANALOG_VIDEO = .(0x5c0c8281, 0x5667, 0x486c, 0x84, 0x82, 0x63, 0xe3, 0x1f, 0x01, 0xa6, 0xe9);
		public const Guid CLSID_PINNAME_BDA_ANALOG_AUDIO = .(0xd28a580a, 0x9b1f, 0x4b0c, 0x9c, 0x33, 0x9b, 0xf0, 0xa8, 0xea, 0x63, 0x6b);
		public const Guid CLSID_PINNAME_BDA_FM_RADIO = .(0xd2855fed, 0xb2d3, 0x4eeb, 0x9b, 0xd0, 0x19, 0x34, 0x36, 0xa2, 0xf8, 0x90);
		public const Guid CLSID_PINNAME_BDA_IF_PIN = .(0x1a9d4a42, 0xf3cd, 0x48a1, 0x9a, 0xea, 0x71, 0xde, 0x13, 0x3c, 0xbe, 0x14);
		public const Guid CLSID_PINNAME_BDA_OPENCABLE_PSIP_PIN = .(0x297bb104, 0xe5c9, 0x4ace, 0xb1, 0x23, 0x95, 0xc3, 0xcb, 0xb2, 0x4d, 0x4f);
		public const Guid CLSID_KSPROPSETID_BdaEthernetFilter = .(0x71985f43, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSPROPSETID_BdaIPv4Filter = .(0x71985f44, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSPROPSETID_BdaIPv6Filter = .(0xe1785a74, 0x2a23, 0x4fb3, 0x92, 0x45, 0xa8, 0xf8, 0x80, 0x17, 0xef, 0x33);
		public const Guid CLSID_KSPROPSETID_BdaSignalStats = .(0x1347d106, 0xcf3a, 0x428a, 0xa5, 0xcb, 0xac, 0x0d, 0x9a, 0x2a, 0x43, 0x38);
		public const Guid CLSID_KSMETHODSETID_BdaChangeSync = .(0xfd0a5af3, 0xb41d, 0x11d2, 0x9c, 0x95, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSMETHODSETID_BdaDeviceConfiguration = .(0x71985f45, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSPROPSETID_BdaTopology = .(0xa14ee835, 0x0a23, 0x11d3, 0x9c, 0xc7, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSPROPSETID_BdaPinControl = .(0x0ded49d5, 0xa8b7, 0x4d5d, 0x97, 0xa1, 0x12, 0xb0, 0xc1, 0x95, 0x87, 0x4d);
		public const Guid CLSID_KSEVENTSETID_BdaPinEvent = .(0x104781cd, 0x50bd, 0x40d5, 0x95, 0xfb, 0x08, 0x7e, 0x0e, 0x86, 0xa5, 0x91);
		public const Guid CLSID_KSPROPSETID_BdaVoidTransform = .(0x71985f46, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSPROPSETID_BdaNullTransform = .(0xddf15b0d, 0xbd25, 0x11d2, 0x9c, 0xa0, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSPROPSETID_BdaFrequencyFilter = .(0x71985f47, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSEVENTSETID_BdaTunerEvent = .(0xaab59e17, 0x01c9, 0x4ebf, 0x93, 0xf2, 0xfc, 0x3b, 0x79, 0xb4, 0x6f, 0x91);
		public const Guid CLSID_KSPROPSETID_BdaLNBInfo = .(0x992cf102, 0x49f9, 0x4719, 0xa6, 0x64, 0xc4, 0xf2, 0x3e, 0x24, 0x08, 0xf4);
		public const Guid CLSID_KSPROPSETID_BdaDiseqCommand = .(0xf84e2ab0, 0x3c6b, 0x45e3, 0xa0, 0xfc, 0x86, 0x69, 0xd4, 0xb8, 0x1f, 0x11);
		public const Guid CLSID_KSEVENTSETID_BdaDiseqCEvent = .(0x8b19bbf0, 0x4184, 0x43ac, 0xad, 0x3c, 0x0c, 0x88, 0x9b, 0xe4, 0xc2, 0x12);
		public const Guid CLSID_KSPROPSETID_BdaDigitalDemodulator = .(0xef30f379, 0x985b, 0x4d10, 0xb6, 0x40, 0xa7, 0x9d, 0x5e, 0x04, 0xe1, 0xe0);
		public const Guid CLSID_KSPROPSETID_BdaAutodemodulate = .(0xddf15b12, 0xbd25, 0x11d2, 0x9c, 0xa0, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSPROPSETID_BdaTableSection = .(0x516b99c5, 0x971c, 0x4aaf, 0xb3, 0xf3, 0xd9, 0xfd, 0xa8, 0xa1, 0x5e, 0x16);
		public const Guid CLSID_KSPROPSETID_BdaPIDFilter = .(0xd0a67d65, 0x08df, 0x4fec, 0x85, 0x33, 0xe5, 0xb5, 0x50, 0x41, 0x0b, 0x85);
		public const Guid CLSID_KSPROPSETID_BdaCA = .(0xb0693766, 0x5278, 0x4ec6, 0xb9, 0xe1, 0x3c, 0xe4, 0x05, 0x60, 0xef, 0x5a);
		public const Guid CLSID_KSEVENTSETID_BdaCAEvent = .(0x488c4ccc, 0xb768, 0x4129, 0x8e, 0xb1, 0xb0, 0x0a, 0x07, 0x1f, 0x90, 0x68);
		public const Guid CLSID_KSMETHODSETID_BdaDrmService = .(0xbff6b5bb, 0xb0ae, 0x484c, 0x9d, 0xca, 0x73, 0x52, 0x8f, 0xb0, 0xb4, 0x6e);
		public const Guid CLSID_KSMETHODSETID_BdaWmdrmSession = .(0x4be6fa3d, 0x07cd, 0x4139, 0x8b, 0x80, 0x8c, 0x18, 0xba, 0x3a, 0xec, 0x88);
		public const Guid CLSID_KSMETHODSETID_BdaWmdrmTuner = .(0x86d979cf, 0xa8a7, 0x4f94, 0xb5, 0xfb, 0x14, 0xc0, 0xac, 0xa6, 0x8f, 0xe6);
		public const Guid CLSID_KSMETHODSETID_BdaEventing = .(0xf99492da, 0x6193, 0x4eb0, 0x86, 0x90, 0x66, 0x86, 0xcb, 0xff, 0x71, 0x3e);
		public const Guid CLSID_KSEVENTSETID_BdaEvent = .(0xae7e55b2, 0x96d7, 0x4e29, 0x90, 0x8f, 0x62, 0xf9, 0x5b, 0x2a, 0x16, 0x79);
		public const Guid CLSID_KSMETHODSETID_BdaDebug = .(0x0d4a90ec, 0xc69d, 0x4ee2, 0x8c, 0x5a, 0xfb, 0x1f, 0x63, 0xa5, 0x0d, 0xa1);
		public const Guid CLSID_KSMETHODSETID_BdaTuner = .(0xb774102f, 0xac07, 0x478a, 0x82, 0x28, 0x27, 0x42, 0xd9, 0x61, 0xfa, 0x7e);
		public const Guid CLSID_KSMETHODSETID_BdaNameValueA = .(0x0c24096d, 0x5ff5, 0x47de, 0xa8, 0x56, 0x06, 0x2e, 0x58, 0x7e, 0x37, 0x27);
		public const Guid CLSID_KSMETHODSETID_BdaNameValue = .(0x36e07304, 0x9f0d, 0x4e88, 0x91, 0x18, 0xac, 0x0b, 0xa3, 0x17, 0xb7, 0xf2);
		public const Guid CLSID_KSMETHODSETID_BdaMux = .(0x942aafec, 0x4c05, 0x4c74, 0xb8, 0xeb, 0x87, 0x06, 0xc2, 0xa4, 0x94, 0x3f);
		public const Guid CLSID_KSMETHODSETID_BdaScanning = .(0x12eb49df, 0x6249, 0x47f3, 0xb1, 0x90, 0xe2, 0x1e, 0x6e, 0x2f, 0x8a, 0x9c);
		public const Guid CLSID_KSMETHODSETID_BdaGuideDataDeliveryService = .(0x8d9d5562, 0x1589, 0x417d, 0x99, 0xce, 0xac, 0x53, 0x1d, 0xda, 0x19, 0xf9);
		public const Guid CLSID_KSMETHODSETID_BdaConditionalAccessService = .(0x10ced3b4, 0x320b, 0x41bf, 0x98, 0x24, 0x1b, 0x2e, 0x68, 0xe7, 0x1e, 0xb9);
		public const Guid CLSID_KSMETHODSETID_BdaIsdbConditionalAccess = .(0x5e68c627, 0x16c2, 0x4e6c, 0xb1, 0xe2, 0xd0, 0x01, 0x70, 0xcd, 0xaa, 0x0f);
		public const Guid CLSID_KSMETHODSETID_BdaTSSelector = .(0x1dcfafe9, 0xb45e, 0x41b3, 0xbb, 0x2a, 0x56, 0x1e, 0xb1, 0x29, 0xae, 0x98);
		public const Guid CLSID_KSMETHODSETID_BdaUserActivity = .(0xeda5c834, 0x4531, 0x483c, 0xbe, 0x0a, 0x94, 0xe6, 0xc9, 0x6f, 0xf3, 0x96);
		public const Guid CLSID_KSCATEGORY_BDA_RECEIVER_COMPONENT = .(0xfd0a5af4, 0xb41d, 0x11d2, 0x9c, 0x95, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSCATEGORY_BDA_NETWORK_TUNER = .(0x71985f48, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSCATEGORY_BDA_NETWORK_EPG = .(0x71985f49, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSCATEGORY_BDA_IP_SINK = .(0x71985f4a, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSCATEGORY_BDA_NETWORK_PROVIDER = .(0x71985f4b, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSCATEGORY_BDA_TRANSPORT_INFORMATION = .(0xa2e3074f, 0x6c3d, 0x11d3, 0xb6, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0x49, 0x8e);
		public const Guid CLSID_KSNODE_BDA_RF_TUNER = .(0x71985f4c, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSNODE_BDA_ANALOG_DEMODULATOR = .(0x634db199, 0x27dd, 0x46b8, 0xac, 0xfb, 0xec, 0xc9, 0x8e, 0x61, 0xa2, 0xad);
		public const Guid CLSID_KSNODE_BDA_QAM_DEMODULATOR = .(0x71985f4d, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSNODE_BDA_QPSK_DEMODULATOR = .(0x6390c905, 0x27c1, 0x4d67, 0xbd, 0xb7, 0x77, 0xc5, 0x0d, 0x07, 0x93, 0x00);
		public const Guid CLSID_KSNODE_BDA_8VSB_DEMODULATOR = .(0x71985f4f, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSNODE_BDA_COFDM_DEMODULATOR = .(0x2dac6e05, 0xedbe, 0x4b9c, 0xb3, 0x87, 0x1b, 0x6f, 0xad, 0x7d, 0x64, 0x95);
		public const Guid CLSID_KSNODE_BDA_8PSK_DEMODULATOR = .(0xe957a0e7, 0xdd98, 0x4a3c, 0x81, 0x0b, 0x35, 0x25, 0x15, 0x7a, 0xb6, 0x2e);
		public const Guid CLSID_KSNODE_BDA_ISDB_T_DEMODULATOR = .(0xfcea3ae3, 0x2cb2, 0x464d, 0x8f, 0x5d, 0x30, 0x5c, 0x0b, 0xb7, 0x78, 0xa2);
		public const Guid CLSID_KSNODE_BDA_ISDB_S_DEMODULATOR = .(0xedde230a, 0x9086, 0x432d, 0xb8, 0xa5, 0x66, 0x70, 0x26, 0x38, 0x07, 0xe9);
		public const Guid CLSID_KSNODE_BDA_OPENCABLE_POD = .(0x345812a0, 0xfb7c, 0x4790, 0xaa, 0x7e, 0xb1, 0xdb, 0x88, 0xac, 0x19, 0xc9);
		public const Guid CLSID_KSNODE_BDA_COMMON_CA_POD = .(0xd83ef8fc, 0xf3b8, 0x45ab, 0x8b, 0x71, 0xec, 0xf7, 0xc3, 0x39, 0xde, 0xb4);
		public const Guid CLSID_KSNODE_BDA_PID_FILTER = .(0xf5412789, 0xb0a0, 0x44e1, 0xae, 0x4f, 0xee, 0x99, 0x9b, 0x1b, 0x7f, 0xbe);
		public const Guid CLSID_KSNODE_BDA_IP_SINK = .(0x71985f4e, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		public const Guid CLSID_KSNODE_BDA_VIDEO_ENCODER = .(0xd98429e3, 0x65c9, 0x4ac4, 0x93, 0xaa, 0x76, 0x67, 0x82, 0x83, 0x3b, 0x7a);
		public const Guid CLSID_KSNODE_BDA_PBDA_CAS = .(0xc026869f, 0x7129, 0x4e71, 0x86, 0x96, 0xec, 0x8f, 0x75, 0x29, 0x9b, 0x77);
		public const Guid CLSID_KSNODE_BDA_PBDA_ISDBCAS = .(0xf2cf2ab3, 0x5b9d, 0x40ae, 0xab, 0x7c, 0x4e, 0x7a, 0xd0, 0xbd, 0x1c, 0x52);
		public const Guid CLSID_KSNODE_BDA_PBDA_TUNER = .(0xaa5e8286, 0x593c, 0x4979, 0x94, 0x94, 0x46, 0xa2, 0xa9, 0xdf, 0xe0, 0x76);
		public const Guid CLSID_KSNODE_BDA_PBDA_MUX = .(0xf88c7787, 0x6678, 0x4f4b, 0xa1, 0x3e, 0xda, 0x09, 0x86, 0x1d, 0x68, 0x2b);
		public const Guid CLSID_KSNODE_BDA_PBDA_DRM = .(0x9eeebd03, 0xeea1, 0x450f, 0x96, 0xae, 0x63, 0x3e, 0x6d, 0xe6, 0x3c, 0xce);
		public const Guid CLSID_KSNODE_BDA_DRI_DRM = .(0x4f95ad74, 0xcefb, 0x42d2, 0x94, 0xa9, 0x68, 0xc5, 0xb2, 0xc1, 0xaa, 0xbe);
		public const Guid CLSID_KSNODE_BDA_TS_SELECTOR = .(0x5eddf185, 0xfed1, 0x4f45, 0x96, 0x85, 0xbb, 0xb7, 0x3c, 0x32, 0x3c, 0xfc);
		public const Guid CLSID_PINNAME_IPSINK_INPUT = .(0x3fdffa70, 0xac9a, 0x11d2, 0x8f, 0x17, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe2);
		public const Guid CLSID_KSDATAFORMAT_TYPE_BDA_IP = .(0xe25f7b8e, 0xcccc, 0x11d2, 0x8f, 0x25, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe2);
		public const Guid CLSID_KSDATAFORMAT_SUBTYPE_BDA_IP = .(0x5a9a213c, 0xdb08, 0x11d2, 0x8f, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe2);
		public const Guid CLSID_KSDATAFORMAT_SPECIFIER_BDA_IP = .(0x6b891420, 0xdb09, 0x11d2, 0x8f, 0x32, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe2);
		public const Guid CLSID_KSDATAFORMAT_TYPE_BDA_IP_CONTROL = .(0xdadd5799, 0x7d5b, 0x4b63, 0x80, 0xfb, 0xd1, 0x44, 0x2f, 0x26, 0xb6, 0x21);
		public const Guid CLSID_KSDATAFORMAT_SUBTYPE_BDA_IP_CONTROL = .(0x499856e8, 0xe85b, 0x48ed, 0x9b, 0xea, 0x41, 0x0d, 0x0d, 0xd4, 0xef, 0x81);
		public const Guid CLSID_PINNAME_MPE = .(0xc1b06d73, 0x1dbb, 0x11d3, 0x8f, 0x46, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe2);
		public const Guid CLSID_KSDATAFORMAT_TYPE_MPE = .(0x455f176c, 0x4b06, 0x47ce, 0x9a, 0xef, 0x8c, 0xae, 0xf7, 0x3d, 0xf7, 0xb5);
		public const Guid CLSID_DIGITAL_CABLE_NETWORK_TYPE = .(0x143827ab, 0xf77b, 0x498d, 0x81, 0xca, 0x5a, 0x00, 0x7a, 0xec, 0x28, 0xbf);
		public const Guid CLSID_ANALOG_TV_NETWORK_TYPE = .(0xb820d87e, 0xe0e3, 0x478f, 0x8a, 0x38, 0x4e, 0x13, 0xf7, 0xb3, 0xdf, 0x42);
		public const Guid CLSID_ANALOG_AUXIN_NETWORK_TYPE = .(0x742ef867, 0x09e1, 0x40a3, 0x82, 0xd3, 0x96, 0x69, 0xba, 0x35, 0x32, 0x5f);
		public const Guid CLSID_ANALOG_FM_NETWORK_TYPE = .(0x7728087b, 0x2bb9, 0x4e30, 0x80, 0x78, 0x44, 0x94, 0x76, 0xe5, 0x9d, 0xbb);
		public const Guid CLSID_ISDB_TERRESTRIAL_TV_NETWORK_TYPE = .(0x95037f6f, 0x3ac7, 0x4452, 0xb6, 0xc4, 0x45, 0xa9, 0xce, 0x92, 0x92, 0xa2);
		public const Guid CLSID_ISDB_T_NETWORK_TYPE = .(0xfc3855a6, 0xc901, 0x4f2e, 0xab, 0xa8, 0x90, 0x81, 0x5a, 0xfc, 0x6c, 0x83);
		public const Guid CLSID_ISDB_SATELLITE_TV_NETWORK_TYPE = .(0xb0a4e6a0, 0x6a1a, 0x4b83, 0xbb, 0x5b, 0x90, 0x3e, 0x1d, 0x90, 0xe6, 0xb6);
		public const Guid CLSID_ISDB_S_NETWORK_TYPE = .(0xa1e78202, 0x1459, 0x41b1, 0x9c, 0xa9, 0x2a, 0x92, 0x58, 0x7a, 0x42, 0xcc);
		public const Guid CLSID_ISDB_CABLE_TV_NETWORK_TYPE = .(0xc974ddb5, 0x41fe, 0x4b25, 0x97, 0x41, 0x92, 0xf0, 0x49, 0xf1, 0xd5, 0xd1);
		public const Guid CLSID_DIRECT_TV_SATELLITE_TV_NETWORK_TYPE = .(0x93b66fb5, 0x93d4, 0x4323, 0x92, 0x1c, 0xc1, 0xf5, 0x2d, 0xf6, 0x1d, 0x3f);
		public const Guid CLSID_ECHOSTAR_SATELLITE_TV_NETWORK_TYPE = .(0xc4f6b31b, 0xc6bf, 0x4759, 0x88, 0x6f, 0xa7, 0x38, 0x6d, 0xca, 0x27, 0xa0);
		public const Guid CLSID_ATSC_TERRESTRIAL_TV_NETWORK_TYPE = .(0x0dad2fdd, 0x5fd7, 0x11d3, 0x8f, 0x50, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe2);
		public const Guid CLSID_DVB_TERRESTRIAL_TV_NETWORK_TYPE = .(0x216c62df, 0x6d7f, 0x4e9a, 0x85, 0x71, 0x05, 0xf1, 0x4e, 0xdb, 0x76, 0x6a);
		public const Guid CLSID_BSKYB_TERRESTRIAL_TV_NETWORK_TYPE = .(0x9e9e46c6, 0x3aba, 0x4f08, 0xad, 0x0e, 0xcc, 0x5a, 0xc8, 0x14, 0x8c, 0x2b);
		public const Guid CLSID_DVB_SATELLITE_TV_NETWORK_TYPE = .(0xfa4b375a, 0x45b4, 0x4d45, 0x84, 0x40, 0x26, 0x39, 0x57, 0xb1, 0x16, 0x23);
		public const Guid CLSID_DVB_CABLE_TV_NETWORK_TYPE = .(0xdc0c0fe7, 0x0485, 0x4266, 0xb9, 0x3f, 0x68, 0xfb, 0xf8, 0x0e, 0xd8, 0x34);
		public const Guid CLSID_BDA_DEBUG_DATA_AVAILABLE = .(0x69c24f54, 0x9983, 0x497e, 0xb4, 0x15, 0x28, 0x2b, 0xe4, 0xc5, 0x55, 0xfb);
		public const Guid CLSID_BDA_DEBUG_DATA_TYPE_STRING = .(0xa806e767, 0xde5c, 0x430c, 0x80, 0xbf, 0xa2, 0x1e, 0xbe, 0x06, 0xc7, 0x48);
		public const Guid CLSID_EVENTID_BDA_IsdbCASResponse = .(0xd4cb1966, 0x41bc, 0x4ced, 0x9a, 0x20, 0xfd, 0xce, 0xac, 0x78, 0xf7, 0x0d);
		public const Guid CLSID_EVENTID_BDA_CASRequestTuner = .(0xcf39a9d8, 0xf5d3, 0x4685, 0xbe, 0x57, 0xed, 0x81, 0xdb, 0xa4, 0x6b, 0x27);
		public const Guid CLSID_EVENTID_BDA_CASReleaseTuner = .(0x20c1a16b, 0x441f, 0x49a5, 0xbb, 0x5c, 0xe9, 0xa0, 0x44, 0x95, 0xc6, 0xc1);
		public const Guid CLSID_EVENTID_BDA_CASOpenMMI = .(0x85dac915, 0xe593, 0x410d, 0x84, 0x71, 0xd6, 0x81, 0x21, 0x05, 0xf2, 0x8e);
		public const Guid CLSID_EVENTID_BDA_CASCloseMMI = .(0x5d0f550f, 0xde2e, 0x479d, 0x83, 0x45, 0xec, 0x0e, 0x95, 0x57, 0xe8, 0xa2);
		public const Guid CLSID_EVENTID_BDA_CASBroadcastMMI = .(0x676876f0, 0x1132, 0x404c, 0xa7, 0xca, 0xe7, 0x20, 0x69, 0xa9, 0xd5, 0x4f);
		public const Guid CLSID_EVENTID_BDA_TunerSignalLock = .(0x1872e740, 0xf573, 0x429b, 0xa0, 0x0e, 0xd9, 0xc1, 0xe4, 0x08, 0xaf, 0x09);
		public const Guid CLSID_EVENTID_BDA_TunerNoSignal = .(0xe29b382b, 0x1edd, 0x4930, 0xbc, 0x46, 0x68, 0x2f, 0xd7, 0x2d, 0x2d, 0xfb);
		public const Guid CLSID_EVENTID_BDA_GPNVValueUpdate = .(0xff75c68c, 0xf416, 0x4e7e, 0xbf, 0x17, 0x6d, 0x55, 0xc5, 0xdf, 0x15, 0x75);
		public const Guid CLSID_EVENTID_BDA_UpdateDrmStatus = .(0x65a6f681, 0x1462, 0x473b, 0x88, 0xce, 0xcb, 0x73, 0x14, 0x27, 0xbd, 0xb5);
		public const Guid CLSID_EVENTID_BDA_UpdateScanState = .(0x55702b50, 0x7b49, 0x42b8, 0xa8, 0x2f, 0x4a, 0xfb, 0x69, 0x1b, 0x06, 0x28);
		public const Guid CLSID_EVENTID_BDA_GuideDataAvailable = .(0x98db717a, 0x478a, 0x4cd4, 0x92, 0xd0, 0x95, 0xf6, 0x6b, 0x89, 0xe5, 0xb1);
		public const Guid CLSID_EVENTID_BDA_GuideServiceInformationUpdated = .(0xa1c3ea2b, 0x175f, 0x4458, 0xb7, 0x35, 0x50, 0x7d, 0x22, 0xdb, 0x23, 0xa6);
		public const Guid CLSID_EVENTID_BDA_GuideDataError = .(0xac33c448, 0x6f73, 0x4fd7, 0xb3, 0x41, 0x59, 0x4c, 0x36, 0x0d, 0x8d, 0x74);
		public const Guid CLSID_EVENTID_BDA_DiseqCResponseAvailable = .(0xefa628f8, 0x1f2c, 0x4b67, 0x9e, 0xa5, 0xac, 0xf6, 0xfa, 0x9a, 0x1f, 0x36);
		public const Guid CLSID_EVENTID_BDA_LbigsOpenConnection = .(0x356207b2, 0x6f31, 0x4eb0, 0xa2, 0x71, 0xb3, 0xfa, 0x6b, 0xb7, 0x68, 0x0f);
		public const Guid CLSID_EVENTID_BDA_LbigsSendData = .(0x1123277b, 0xf1c6, 0x4154, 0x8b, 0x0d, 0x48, 0xe6, 0x15, 0x70, 0x59, 0xaa);
		public const Guid CLSID_EVENTID_BDA_LbigsCloseConnectionHandle = .(0xc2f08b99, 0x65ef, 0x4314, 0x96, 0x71, 0xe9, 0x9d, 0x4c, 0xce, 0x0b, 0xae);
		public const Guid CLSID_EVENTID_BDA_EncoderSignalLock = .(0x5ec90eb9, 0x39fa, 0x4cfc, 0xb9, 0x3f, 0x00, 0xbb, 0x11, 0x07, 0x7f, 0x5e);
		public const Guid CLSID_EVENTID_BDA_FdcStatus = .(0x05f25366, 0xd0eb, 0x43d2, 0xbc, 0x3c, 0x68, 0x2b, 0x86, 0x3d, 0xf1, 0x42);
		public const Guid CLSID_EVENTID_BDA_FdcTableSection = .(0x6a0cd757, 0x4ce3, 0x4e5b, 0x94, 0x44, 0x71, 0x87, 0xb8, 0x71, 0x52, 0xc5);
		public const Guid CLSID_EVENTID_BDA_TransprtStreamSelectorInfo = .(0xc40f9f85, 0x09d0, 0x489c, 0x9e, 0x9c, 0x0a, 0xbb, 0xb5, 0x69, 0x51, 0xb0);
		public const Guid CLSID_EVENTID_BDA_RatingPinReset = .(0xc6e048c0, 0xc574, 0x4c26, 0xbc, 0xda, 0x2f, 0x4d, 0x35, 0xeb, 0x5e, 0x85);
		public const Guid CLSID_PBDA_ALWAYS_TUNE_IN_MUX = .(0x1e1d7141, 0x583f, 0x4ac2, 0xb0, 0x19, 0x1f, 0x43, 0x0e, 0xda, 0x0f, 0x4c);
		public const Guid CLSID_BDANETWORKTYPE_ATSC = .(0x71985f51, 0x1ca1, 0x11d3, 0x9c, 0xc8, 0x00, 0xc0, 0x4f, 0x79, 0x71, 0xe0);
		
		// --- COM Interfaces ---
		
		public struct ICreateDevEnum {}
		public struct IPin {}
		public struct IEnumPins {}
		public struct IEnumMediaTypes {}
		public struct IFilterGraph {}
		public struct IEnumFilters {}
		public struct IMediaFilter {}
		public struct IBaseFilter {}
		public struct IMediaSample {}
		public struct IMediaSample2 {}
		public struct IMediaSample2Config {}
		public struct IMemAllocator {}
		public struct IMemAllocatorCallbackTemp {}
		public struct IMemAllocatorNotifyCallbackTemp {}
		public struct IMemInputPin {}
		public struct IAMovieSetup {}
		public struct IMediaSeeking {}
		public struct IEnumRegFilters {}
		public struct IFilterMapper {}
		public struct IFilterMapper2 {}
		public struct IFilterMapper3 {}
		public struct IQualityControl {}
		public struct IOverlayNotify {}
		public struct IOverlayNotify2 {}
		public struct IOverlay {}
		public struct IMediaEventSink {}
		public struct IFileSourceFilter {}
		public struct IFileSinkFilter {}
		public struct IFileSinkFilter2 {}
		public struct IGraphBuilder {}
		public struct ICaptureGraphBuilder {}
		public struct IAMCopyCaptureFileProgress {}
		public struct ICaptureGraphBuilder2 {}
		public struct IFilterGraph2 {}
		public struct IFilterGraph3 {}
		public struct IStreamBuilder {}
		public struct IAsyncReader {}
		public struct IGraphVersion {}
		public struct IResourceConsumer {}
		public struct IResourceManager {}
		public struct IDistributorNotify {}
		public struct IAMStreamControl {}
		public struct ISeekingPassThru {}
		public struct IAMStreamConfig {}
		public struct IConfigInterleaving {}
		public struct IConfigAviMux {}
		public struct IAMVideoCompression {}
		public struct IAMVfwCaptureDialogs {}
		public struct IAMVfwCompressDialogs {}
		public struct IAMDroppedFrames {}
		public struct IAMAudioInputMixer {}
		public struct IAMBufferNegotiation {}
		public struct IAMAnalogVideoDecoder {}
		public struct IAMVideoProcAmp {}
		public struct IAMCameraControl {}
		public struct IAMVideoControl {}
		public struct IAMCrossbar {}
		public struct IAMTuner {}
		public struct IAMTunerNotification {}
		public struct IAMTVTuner {}
		public struct IBPCSatelliteTuner {}
		public struct IAMTVAudio {}
		public struct IAMTVAudioNotification {}
		public struct IAMAnalogVideoEncoder {}
		public struct IMediaPropertyBag {}
		public struct IPersistMediaPropertyBag {}
		public struct IAMPhysicalPinInfo {}
		public struct IAMExtDevice {}
		public struct IAMExtTransport {}
		public struct IAMTimecodeReader {}
		public struct IAMTimecodeGenerator {}
		public struct IAMTimecodeDisplay {}
		public struct IAMDevMemoryAllocator {}
		public struct IAMDevMemoryControl {}
		public struct IAMStreamSelect {}
		public struct IAMResourceControl {}
		public struct IAMClockAdjust {}
		public struct IAMFilterMiscFlags {}
		public struct IDrawVideoImage {}
		public struct IDecimateVideoImage {}
		public struct IAMVideoDecimationProperties {}
		public struct IVideoFrameStep {}
		public struct IAMLatency {}
		public struct IAMPushSource {}
		public struct IAMDeviceRemoval {}
		public struct IDVEnc {}
		public struct IIPDVDec {}
		public struct IDVRGB219 {}
		public struct IDVSplitter {}
		public struct IAMAudioRendererStats {}
		public struct IAMGraphStreams {}
		public struct IAMOverlayFX {}
		public struct IAMOpenProgress {}
		public struct IMpeg2Demultiplexer {}
		public struct IEnumStreamIdMap {}
		public struct IMPEG2StreamIdMap {}
		public struct IRegisterServiceProvider {}
		public struct IAMClockSlave {}
		public struct IAMGraphBuilderCallback {}
		public struct IAMFilterGraphCallback {}
		public struct IGetCapabilitiesKey {}
		public struct IEncoderAPI {}
		public struct IVideoEncoder {}
		public struct IAMDecoderCaps {}
		public struct IAMCertifiedOutputProtection {}
		public struct IAMAsyncReaderTimestampScaling {}
		public struct IAMPluginControl {}
		public struct IPinConnection {}
		public struct IPinFlowControl {}
		public struct IGraphConfig {}
		public struct IGraphConfigCallback {}
		public struct IFilterChain {}
		public struct IVMRImagePresenter {}
		public struct IVMRSurfaceAllocator {}
		public struct IVMRSurfaceAllocatorNotify {}
		public struct IVMRWindowlessControl {}
		public struct IVMRMixerControl {}
		public struct IVMRMonitorConfig {}
		public struct IVMRFilterConfig {}
		public struct IVMRAspectRatioControl {}
		public struct IVMRDeinterlaceControl {}
		public struct IVMRMixerBitmap {}
		public struct IVMRImageCompositor {}
		public struct IVMRVideoStreamControl {}
		public struct IVMRSurface {}
		public struct IVMRImagePresenterConfig {}
		public struct IVMRImagePresenterExclModeConfig {}
		public struct IVPManager {}
		public struct IDvdControl {}
		public struct IDvdInfo {}
		public struct IDvdCmd {}
		public struct IDvdState {}
		public struct IDvdControl2 {}
		public struct IDvdInfo2 {}
		public struct IDvdGraphBuilder {}
		public struct IDDrawExclModeVideo {}
		public struct IDDrawExclModeVideoCallback {}
		public struct IBDA_NetworkProvider {}
		public struct IBDA_EthernetFilter {}
		public struct IBDA_IPV4Filter {}
		public struct IBDA_IPV6Filter {}
		public struct IBDA_DeviceControl {}
		public struct IBDA_PinControl {}
		public struct IBDA_SignalProperties {}
		public struct IBDA_SignalStatistics {}
		public struct IBDA_Topology {}
		public struct IBDA_VoidTransform {}
		public struct IBDA_NullTransform {}
		public struct IBDA_FrequencyFilter {}
		public struct IBDA_LNBInfo {}
		public struct IBDA_DiseqCommand {}
		public struct IBDA_AutoDemodulate {}
		public struct IBDA_AutoDemodulateEx {}
		public struct IBDA_DigitalDemodulator {}
		public struct IBDA_DigitalDemodulator2 {}
		public struct IBDA_DigitalDemodulator3 {}
		public struct ICCSubStreamFiltering {}
		public struct IBDA_IPSinkControl {}
		public struct IBDA_IPSinkInfo {}
		public struct IEnumPIDMap {}
		public struct IMPEG2PIDMap {}
		public struct IFrequencyMap {}
		public struct IBDA_EasMessage {}
		public struct IBDA_TransportStreamInfo {}
		public struct IBDA_ConditionalAccess {}
		public struct IBDA_DiagnosticProperties {}
		public struct IBDA_DRM {}
		public struct IBDA_NameValueService {}
		public struct IBDA_ConditionalAccessEx {}
		public struct IBDA_ISDBConditionalAccess {}
		public struct IBDA_EventingService {}
		public struct IBDA_AUX {}
		public struct IBDA_Encoder {}
		public struct IBDA_FDC {}
		public struct IBDA_GuideDataDeliveryService {}
		public struct IBDA_DRMService {}
		public struct IBDA_WMDRMSession {}
		public struct IBDA_WMDRMTuner {}
		public struct IBDA_DRIDRMService {}
		public struct IBDA_DRIWMDRMSession {}
		public struct IBDA_MUX {}
		public struct IBDA_TransportStreamSelector {}
		public struct IBDA_UserActivityService {}
		public struct IESEvent {}
		public struct IESEvents {}
		public struct IBroadcastEvent {}
		public struct IBroadcastEventEx {}
		public struct IAMNetShowConfig {}
		public struct IAMChannelInfo {}
		public struct IAMNetworkStatus {}
		public struct IAMExtendedSeeking {}
		public struct IAMNetShowExProps {}
		public struct IAMExtendedErrorInfo {}
		public struct IAMMediaContent {}
		public struct IAMMediaContent2 {}
		public struct IAMNetShowPreroll {}
		public struct IDShowPlugin {}
		public struct IAMDirectSound {}
		public struct IAMLine21Decoder {}
		public struct IAMParse {}
		public struct IAMCollection {}
		public struct IMediaControl {}
		public struct IMediaEvent {}
		public struct IMediaEventEx {}
		public struct IMediaPosition {}
		public struct IBasicAudio {}
		public struct IVideoWindow {}
		public struct IBasicVideo {}
		public struct IBasicVideo2 {}
		public struct IDeferredCommand {}
		public struct IQueueCommand {}
		public struct IFilterInfo {}
		public struct IRegFilterInfo {}
		public struct IMediaTypeInfo {}
		public struct IPinInfo {}
		public struct IAMStats {}
		public struct IAMVideoAcceleratorNotify {}
		public struct IAMVideoAccelerator {}
		public struct IAMWstDecoder {}
		public struct IKsTopologyInfo {}
		public struct ISelector {}
		public struct ICameraControl {}
		public struct IVideoProcAmp {}
		public struct IKsNodeControl {}
		public struct IConfigAsfWriter {}
		public struct IConfigAsfWriter2 {}
		public struct IMultiMediaStream {}
		public struct IMediaStream {}
		public struct IStreamSample {}
		public struct IDirectDrawMediaStream {}
		public struct IDirectDrawStreamSample {}
		public struct IAudioMediaStream {}
		public struct IAudioStreamSample {}
		public struct IMemoryData {}
		public struct IAudioData {}
		public struct IAMMultiMediaStream {}
		public struct IAMMediaStream {}
		public struct IMediaStreamFilter {}
		public struct IDirectDrawMediaSampleAllocator {}
		public struct IDirectDrawMediaSample {}
		public struct IAMMediaTypeStream {}
		public struct IAMMediaTypeSample {}
		public struct IDirectDrawVideo {}
		public struct IQualProp {}
		public struct IFullScreenVideo {}
		public struct IFullScreenVideoEx {}
		public struct IBaseVideoMixer {}
		public struct IDMOWrapperFilter {}
		public struct IMixerOCXNotify {}
		public struct IMixerOCX {}
		public struct IMixerPinConfig {}
		public struct IMixerPinConfig2 {}
		public struct IMpegAudioDecoder {}
		public struct IVMRImagePresenter9 {}
		public struct IVMRSurfaceAllocator9 {}
		public struct IVMRSurfaceAllocatorEx9 {}
		public struct IVMRSurfaceAllocatorNotify9 {}
		public struct IVMRWindowlessControl9 {}
		public struct IVMRMixerControl9 {}
		public struct IVMRMixerBitmap9 {}
		public struct IVMRSurface9 {}
		public struct IVMRImagePresenterConfig9 {}
		public struct IVMRVideoStreamControl9 {}
		public struct IVMRFilterConfig9 {}
		public struct IVMRAspectRatioControl9 {}
		public struct IVMRMonitorConfig9 {}
		public struct IVMRDeinterlaceControl9 {}
		public struct IVMRImageCompositor9 {}
		public struct IVPBaseConfig {}
		public struct IVPConfig {}
		public struct IVPVBIConfig {}
		public struct IVPBaseNotify {}
		public struct IVPNotify {}
		public struct IVPNotify2 {}
		public struct IVPVBINotify {}
		public struct IMediaParamInfo {}
		public struct IMediaParams {}
		public struct IAMPlayListItem {}
		public struct IAMPlayList {}
		public struct ISpecifyParticularPages {}
		public struct IAMRebuild {}
		public struct IBufferingTime {}
		public struct ICreatePropBagOnRegKey {}
		public struct ITuningSpaces {}
		public struct ITuningSpaceContainer {}
		public struct ITuningSpace {}
		public struct IEnumTuningSpaces {}
		public struct IDVBTuningSpace {}
		public struct IDVBTuningSpace2 {}
		public struct IDVBSTuningSpace {}
		public struct IAuxInTuningSpace {}
		public struct IAuxInTuningSpace2 {}
		public struct IAnalogTVTuningSpace {}
		public struct IATSCTuningSpace {}
		public struct IDigitalCableTuningSpace {}
		public struct IAnalogRadioTuningSpace {}
		public struct IAnalogRadioTuningSpace2 {}
		public struct ITuneRequest {}
		public struct IChannelIDTuneRequest {}
		public struct IChannelTuneRequest {}
		public struct IATSCChannelTuneRequest {}
		public struct IDigitalCableTuneRequest {}
		public struct IDVBTuneRequest {}
		public struct IMPEG2TuneRequest {}
		public struct IMPEG2TuneRequestFactory {}
		public struct IMPEG2TuneRequestSupport {}
		public struct ITunerCap {}
		public struct ITunerCapEx {}
		public struct ITuner {}
		public struct IScanningTuner {}
		public struct IScanningTunerEx {}
		public struct IComponentType {}
		public struct ILanguageComponentType {}
		public struct IMPEG2ComponentType {}
		public struct IATSCComponentType {}
		public struct IEnumComponentTypes {}
		public struct IComponentTypes {}
		public struct IComponent {}
		public struct IAnalogAudioComponentType {}
		public struct IMPEG2Component {}
		public struct IEnumComponents {}
		public struct IComponents {}
		public struct IComponentsOld {}
		public struct ILocator {}
		public struct IAnalogLocator {}
		public struct IDigitalLocator {}
		public struct IATSCLocator {}
		public struct IATSCLocator2 {}
		public struct IDigitalCableLocator {}
		public struct IDVBTLocator {}
		public struct IDVBTLocator2 {}
		public struct IDVBSLocator {}
		public struct IDVBSLocator2 {}
		public struct IDVBCLocator {}
		public struct IISDBSLocator {}
		public struct IESOpenMmiEvent {}
		public struct IESCloseMmiEvent {}
		public struct IESValueUpdatedEvent {}
		public struct IESRequestTunerEvent {}
		public struct IESIsdbCasResponseEvent {}
		public struct IGpnvsCommonBase {}
		public struct IESEventFactory {}
		public struct IESLicenseRenewalResultEvent {}
		public struct IESFileExpiryDateEvent {}
		public struct IESEventService {}
		public struct IESEventServiceConfiguration {}
		public struct IRegisterTuner {}
		public struct IBDAComparable {}
		public struct IPersistTuneXml {}
		public struct IPersistTuneXmlUtility {}
		public struct IPersistTuneXmlUtility2 {}
		public struct IBDACreateTuneRequestEx {}
		public struct IETFilterConfig {}
		public struct IDTFilterConfig {}
		public struct IXDSCodecConfig {}
		public struct IDTFilterLicenseRenewal {}
		public struct IPTFilterLicenseRenewal {}
		public struct IMceBurnerControl {}
		public struct IETFilter {}
		public struct IETFilterEvents {}
		public struct IDTFilter {}
		public struct IDTFilter2 {}
		public struct IDTFilter3 {}
		public struct IDTFilterEvents {}
		public struct IXDSCodec {}
		public struct IXDSCodecEvents {}
		public struct IXDSToRat {}
		public struct IEvalRat {}
		public struct IMSVidRect {}
		public struct IMSVidGraphSegmentContainer {}
		public struct IMSVidGraphSegment {}
		public struct IMSVidGraphSegmentUserInput {}
		public struct IMSVidCompositionSegment {}
		public struct IEnumMSVidGraphSegment {}
		public struct IMSVidVRGraphSegment {}
		public struct IMSVidDevice {}
		public struct IMSVidDevice2 {}
		public struct IMSVidInputDevice {}
		public struct IMSVidDeviceEvent {}
		public struct IMSVidInputDeviceEvent {}
		public struct IMSVidVideoInputDevice {}
		public struct IMSVidPlayback {}
		public struct IMSVidPlaybackEvent {}
		public struct IMSVidTuner {}
		public struct IMSVidTunerEvent {}
		public struct IMSVidAnalogTuner {}
		public struct IMSVidAnalogTuner2 {}
		public struct IMSVidAnalogTunerEvent {}
		public struct IMSVidFilePlayback {}
		public struct IMSVidFilePlayback2 {}
		public struct IMSVidFilePlaybackEvent {}
		public struct IMSVidWebDVD {}
		public struct IMSVidWebDVD2 {}
		public struct IMSVidWebDVDEvent {}
		public struct IMSVidWebDVDAdm {}
		public struct IMSVidOutputDevice {}
		public struct IMSVidOutputDeviceEvent {}
		public struct IMSVidFeature {}
		public struct IMSVidFeatureEvent {}
		public struct IMSVidEncoder {}
		public struct IMSVidClosedCaptioning {}
		public struct IMSVidClosedCaptioning2 {}
		public struct IMSVidClosedCaptioning3 {}
		public struct IMSVidXDS {}
		public struct IMSVidXDSEvent {}
		public struct IMSVidDataServices {}
		public struct IMSVidDataServicesEvent {}
		public struct IMSVidVideoRenderer {}
		public struct IMSVidVideoRendererEvent {}
		public struct IMSVidGenericSink {}
		public struct IMSVidGenericSink2 {}
		public struct IMSVidStreamBufferRecordingControl {}
		public struct IMSVidStreamBufferSink {}
		public struct IMSVidStreamBufferSink2 {}
		public struct IMSVidStreamBufferSink3 {}
		public struct IMSVidStreamBufferSinkEvent {}
		public struct IMSVidStreamBufferSinkEvent2 {}
		public struct IMSVidStreamBufferSinkEvent3 {}
		public struct IMSVidStreamBufferSinkEvent4 {}
		public struct IMSVidStreamBufferSource {}
		public struct IMSVidStreamBufferSource2 {}
		public struct IMSVidStreamBufferSourceEvent {}
		public struct IMSVidStreamBufferSourceEvent2 {}
		public struct IMSVidStreamBufferSourceEvent3 {}
		public struct IMSVidStreamBufferV2SourceEvent {}
		public struct IMSVidVideoRenderer2 {}
		public struct IMSVidVideoRendererEvent2 {}
		public struct IMSVidVMR9 {}
		public struct IMSVidEVR {}
		public struct IMSVidEVREvent {}
		public struct IMSVidAudioRenderer {}
		public struct IMSVidAudioRendererEvent {}
		public struct IMSVidAudioRendererEvent2 {}
		public struct IMSVidInputDevices {}
		public struct IMSVidOutputDevices {}
		public struct IMSVidVideoRendererDevices {}
		public struct IMSVidAudioRendererDevices {}
		public struct IMSVidFeatures {}
		public struct IMSVidCtl {}
		public struct IMSEventBinder {}
		public struct _IMSVidCtlEvents {}
		public struct IStreamBufferInitialize {}
		public struct IStreamBufferSink {}
		public struct IStreamBufferSink2 {}
		public struct IStreamBufferSink3 {}
		public struct IStreamBufferSource {}
		public struct IStreamBufferRecordControl {}
		public struct IStreamBufferRecComp {}
		public struct IStreamBufferRecordingAttribute {}
		public struct IEnumStreamBufferRecordingAttrib {}
		public struct IStreamBufferConfigure {}
		public struct IStreamBufferConfigure2 {}
		public struct IStreamBufferConfigure3 {}
		public struct IStreamBufferMediaSeeking {}
		public struct IStreamBufferMediaSeeking2 {}
		public struct IStreamBufferDataCounters {}
		public struct ISBE2GlobalEvent {}
		public struct ISBE2GlobalEvent2 {}
		public struct ISBE2SpanningEvent {}
		public struct ISBE2Crossbar {}
		public struct ISBE2StreamMap {}
		public struct ISBE2EnumStream {}
		public struct ISBE2MediaTypeProfile {}
		public struct ISBE2FileScan {}
		public struct IMpeg2TableFilter {}
		public struct IMpeg2Data {}
		public struct ISectionList {}
		public struct IMpeg2Stream {}
		public struct IGenericDescriptor {}
		public struct IGenericDescriptor2 {}
		public struct IPAT {}
		public struct ICAT {}
		public struct IPMT {}
		public struct ITSDT {}
		public struct IPSITables {}
		public struct IAtscPsipParser {}
		public struct IATSC_MGT {}
		public struct IATSC_VCT {}
		public struct IATSC_EIT {}
		public struct IATSC_ETT {}
		public struct IATSC_STT {}
		public struct ISCTE_EAS {}
		public struct IAtscContentAdvisoryDescriptor {}
		public struct ICaptionServiceDescriptor {}
		public struct IServiceLocationDescriptor {}
		public struct IAttributeSet {}
		public struct IAttributeGet {}
		public struct IDvbSiParser {}
		public struct IDvbSiParser2 {}
		public struct IIsdbSiParser2 {}
		public struct IDVB_NIT {}
		public struct IDVB_SDT {}
		public struct IISDB_SDT {}
		public struct IDVB_EIT {}
		public struct IDVB_EIT2 {}
		public struct IDVB_BAT {}
		public struct IDVB_RST {}
		public struct IDVB_ST {}
		public struct IDVB_TDT {}
		public struct IDVB_TOT {}
		public struct IDVB_DIT {}
		public struct IDVB_SIT {}
		public struct IISDB_BIT {}
		public struct IISDB_NBIT {}
		public struct IISDB_LDT {}
		public struct IISDB_SDTT {}
		public struct IISDB_CDT {}
		public struct IISDB_EMM {}
		public struct IDvbServiceAttributeDescriptor {}
		public struct IDvbContentIdentifierDescriptor {}
		public struct IDvbDefaultAuthorityDescriptor {}
		public struct IDvbSatelliteDeliverySystemDescriptor {}
		public struct IDvbCableDeliverySystemDescriptor {}
		public struct IDvbTerrestrialDeliverySystemDescriptor {}
		public struct IDvbTerrestrial2DeliverySystemDescriptor {}
		public struct IDvbFrequencyListDescriptor {}
		public struct IDvbPrivateDataSpecifierDescriptor {}
		public struct IDvbLogicalChannelDescriptor {}
		public struct IDvbLogicalChannelDescriptor2 {}
		public struct IDvbLogicalChannel2Descriptor {}
		public struct IDvbHDSimulcastLogicalChannelDescriptor {}
		public struct IDvbDataBroadcastIDDescriptor {}
		public struct IDvbDataBroadcastDescriptor {}
		public struct IDvbLinkageDescriptor {}
		public struct IDvbTeletextDescriptor {}
		public struct IDvbSubtitlingDescriptor {}
		public struct IDvbServiceDescriptor {}
		public struct IDvbServiceDescriptor2 {}
		public struct IDvbServiceListDescriptor {}
		public struct IDvbMultilingualServiceNameDescriptor {}
		public struct IDvbNetworkNameDescriptor {}
		public struct IDvbShortEventDescriptor {}
		public struct IDvbExtendedEventDescriptor {}
		public struct IDvbComponentDescriptor {}
		public struct IDvbContentDescriptor {}
		public struct IDvbParentalRatingDescriptor {}
		public struct IIsdbTerrestrialDeliverySystemDescriptor {}
		public struct IIsdbTSInformationDescriptor {}
		public struct IIsdbDigitalCopyControlDescriptor {}
		public struct IIsdbAudioComponentDescriptor {}
		public struct IIsdbDataContentDescriptor {}
		public struct IIsdbCAContractInformationDescriptor {}
		public struct IIsdbEventGroupDescriptor {}
		public struct IIsdbComponentGroupDescriptor {}
		public struct IIsdbSeriesDescriptor {}
		public struct IIsdbDownloadContentDescriptor {}
		public struct IIsdbLogoTransmissionDescriptor {}
		public struct IIsdbSIParameterDescriptor {}
		public struct IIsdbEmergencyInformationDescriptor {}
		public struct IIsdbCADescriptor {}
		public struct IIsdbCAServiceDescriptor {}
		public struct IIsdbHierarchicalTransmissionDescriptor {}
		public struct IPBDASiParser {}
		public struct IPBDA_EIT {}
		public struct IPBDA_Services {}
		public struct IPBDAEntitlementDescriptor {}
		public struct IPBDAAttributesDescriptor {}
		public struct IBDA_TIF_REGISTRATION {}
		public struct IMPEG2_TIF_CONTROL {}
		public struct ITuneRequestInfo {}
		public struct ITuneRequestInfoEx {}
		public struct ISIInbandEPGEvent {}
		public struct ISIInbandEPG {}
		public struct IGuideDataEvent {}
		public struct IGuideDataProperty {}
		public struct IEnumGuideDataProperties {}
		public struct IEnumTuneRequests {}
		public struct IGuideData {}
		public struct IGuideDataLoader {}
		
		// --- Functions ---
		
		[Import("quartz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 AMGetErrorTextA(HRESULT hr, uint8* pbuffer, uint32 MaxLen);
		[Import("quartz.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 AMGetErrorTextW(HRESULT hr, char16* pbuffer, uint32 MaxLen);
		
	}
}
